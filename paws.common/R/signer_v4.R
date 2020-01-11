#' @include credentials.R
#' @include struct.R
NULL

# AWS Signature Version 4 signing process.
# See https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.

AUTH_HEADER_PREFIX <- "AWS4-HMAC-SHA256"
TIME_FORMAT <- "%Y%m%dT%H%M%SZ" # "20060102T150405Z"
SHORT_TIME_FORMAT <- "%Y%m%d" # "20060102"
EMPTY_STRING_SHA256 <- "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

IGNORED_HEADERS <- c(
  "Authorization",
  "User-Agent",
  "X-Amzn-Trace-Id"
)

REQUIRED_SIGNED_HEADERS <- c(
  "Cache-Control",
  "Content-Disposition",
  "Content-Encoding",
  "Content-Language",
  "Content-Md5",
  "Content-Type",
  "Expires",
  "If-Match",
  "If-Modified-Since",
  "If-None-Match",
  "If-Unmodified-Since",
  "Range",
  "X-Amz-Acl",
  "X-Amz-Copy-Source",
  "X-Amz-Copy-Source-If-Match",
  "X-Amz-Copy-Source-If-Modified-Since",
  "X-Amz-Copy-Source-If-None-Match",
  "X-Amz-Copy-Source-If-Unmodified-Since",
  "X-Amz-Copy-Source-Range",
  "X-Amz-Copy-Source-Server-Side-Encryption-Customer-Algorithm",
  "X-Amz-Copy-Source-Server-Side-Encryption-Customer-Key",
  "X-Amz-Copy-Source-Server-Side-Encryption-Customer-Key-Md5",
  "X-Amz-Grant-Full-control",
  "X-Amz-Grant-Read",
  "X-Amz-Grant-Read-Acp",
  "X-Amz-Grant-Write",
  "X-Amz-Grant-Write-Acp",
  "X-Amz-Metadata-Directive",
  "X-Amz-Mfa",
  "X-Amz-Request-Payer",
  "X-Amz-Server-Side-Encryption",
  "X-Amz-Server-Side-Encryption-Aws-Kms-Key-Id",
  "X-Amz-Server-Side-Encryption-Customer-Algorithm",
  "X-Amz-Server-Side-Encryption-Customer-Key",
  "X-Amz-Server-Side-Encryption-Customer-Key-Md5",
  "X-Amz-Storage-Class",
  "X-Amz-Tagging",
  "X-Amz-Website-Redirect-Location",
  "X-Amz-Content-Sha256"
)

# A Signer object stores credentials and signing settings.
Signer <- struct(
  credentials = Credentials(),
  debug = NULL,
  logger = NULL,
  disable_header_hoisting = FALSE,
  disable_uri_path_escaping = FALSE,
  disable_request_body_overwrite = FALSE,
  curr_time_fn = Sys.time,
  unsigned_payload = FALSE
)

# A SigningContext object stores the information used in creating the signature.
SigningContext <- struct(
  service_name = "",
  region = "",
  request = list(),
  body = "",
  query = list(),
  time = 0,
  expire_time = 0,
  signed_header_vals = list(),

  disable_uri_path_escaping = FALSE,

  cred_values = list(),
  is_presigned = FALSE,
  formatted_time = "",
  formatted_short_time = "",
  unsigned_payload = "",

  body_digest = "",
  signed_headers = "",
  canonical_headers = "",
  canonical_string = "",
  credential_string = "",
  string_to_sign = "",
  signature = "",
  authorization = ""
)

# Signs an SDK request with the V4 signature.
# See https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
v4_sign_request_handler <- function(request) {
  return(sign_sdk_request_with_curr_time(request))
}

sign_sdk_request_with_curr_time <- function(request,
                                            curr_time_fn = Sys.time,
                                            opts = NULL) {

  # TODO: Implement anonymous access.
  # if (request$config$credentials == CREDENTIALS$anonymous_credentials) {
  #   return(NULL)
  # }

  region <- request$client_info$signing_region
  if (region == "") {
    region <- request$config$region
  }

  name <- request$client_info$signing_name
  if (name == "") {
    name <- request$config$service_name
  }

  v4 <- Signer(
    credentials = request$config$credentials,
    disable_header_hoisting = request$not_hoist,
    curr_time_fn = curr_time_fn,
    disable_request_body_overwrite = TRUE
  )

  if (name == "s3") {
    v4$disable_uri_path_escaping <- TRUE
  }

  # TODO: Fix.
  signing_time <- request$time
  if (!is.null(request$last_signed_at)) {
    signing_time <- request$last_signed_at
  }

  request$http_request <- sign_with_body(v4, request$http_request, request$body,
                                         name, region, request$expire_time,
                                         request$expire_time > 0, signing_time)

  return(request)
}

sign_with_body <- function(signer, request, body, service, region,
                           expire_time, is_presigned, signing_time) {

  curr_time_fn <- signer$curr_time_fn
  if (is.null(curr_time_fn)) {
    curr_time_fn <- Sys.time
  }

  if (is.null(body)) body <- ""

  ctx <- SigningContext(
    request = request,
    body = body,
    query = parse_query_string(request$url$raw_query),
    time = signing_time,
    expire_time = expire_time,
    is_presigned = is_presigned,
    service_name = service,
    region = region,
    disable_uri_path_escaping = signer$disable_uri_path_escaping,
    unsigned_payload = signer$unsigned_payload
  )

  sort_list <- function(x) {
    if (length(x) == 0) return(x)
    x[sort(names(x))]
  }
  if (!is.null(ctx$query) && length(ctx$query) > 0) {
    ctx$query <- sort_list(ctx$query)
  }

  # TODO: Fix.
  if (is_request_signed(ctx)) {
    ctx$time <- curr_time_fn()
    ctx <- handle_presign_removal(ctx)
  }

  credentials <- signer$credentials
  if (!is_credentials_provided(signer$credentials$creds)) {
    credentials <- get_credentials(signer$credentials)
  }
  ctx$cred_values <- credentials$creds

  ctx$request <- sanitize_host_for_header(ctx$request)
  ctx <- assign_amz_query_values(ctx)
  ctx <- build_context(ctx, signer$disable_header_hoisting)

  if (!(signer$disable_request_body_overwrite || ctx$is_presigned)) {
    # Implement presigned requests.
  }

  return(ctx$request)
}

# Return an element's value from an object, or "" if the element does not exist.
get_element <- function(obj, key) {
  if (key %in% names(obj)) {
    value <- obj[[key]]
  } else {
    value <- ""
  }
  return(value)
}

# Returns TRUE if the request is signed or presigned, otherwise FALSE.
is_request_signed <- function(ctx) {
  if (ctx$is_presigned && get_element(ctx$query, "X-Amz-Signature") != "") {
    return(TRUE)
  } else if (get_element(ctx$request$header, "Authorization") != "") {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

# Remove presign and re-encode the query.
handle_presign_removal <- function(ctx) {
  if (!ctx$is_presigned) {
    return(ctx)
  } else {
    ctx <- remove_presign(ctx)
    ctx$request$url$raw_query <- build_query_string(ctx$query)
    return(ctx)
  }
}

# TODO: implement.
remove_presign <- function(ctx) {
  return(ctx)
}

# Add security headers to the request for presigned requests.
assign_amz_query_values <- function(ctx) {
  if (ctx$is_presigned) {
    query <- ctx$query
    query["X-Amz-Algorithm"] <- AUTH_HEADER_PREFIX
    if (ctx$cred_values$session_token != "") {
      query["X-Amz-Security-Token"] <- ctx$cred_values$session_token
    } else {
      query["X-Amz-Security-Token"] <- NULL
    }
    ctx$query <- query
  }

  if (ctx$cred_values$session_token != "") {
    header <- ctx$request$header
    header["X-Amz-Security-Token"] <- ctx$cred_values$session_token
    ctx$request$header <- header
  }

  return(ctx)
}

# Build the SigningContext for a request.
build_context <- function(ctx, disable_header_hoisting) {
  ctx <- build_time(ctx)
  ctx <- build_credential_string(ctx)
  ctx <- build_body_digest(ctx)

  unsigned_headers <- ctx$request$header
  if (ctx$is_presigned) {
    if (!disable_header_hoisting) {
      for (header in names(unsigned_headers)) {
        if (grepl("X-Amz-", header) & !grepl("X-Amz-Meta-", header) &
            !(header %in% REQUIRED_SIGNED_HEADERS)) {
          ctx$query[[header]] <- unsigned_headers[[header]]
          unsigned_headers[[header]] <- NULL
        }
      }
    }
  }

  ctx <- build_canonical_headers(ctx, unsigned_headers, IGNORED_HEADERS)
  ctx <- build_canonical_string(ctx)
  ctx <- build_string_to_sign(ctx)
  ctx <- build_signature(ctx)

  if (ctx$is_presigned) {
    query <- ctx$request$url$raw_query
    ctx$request$url$raw_query <- update_query_string(query, list("X-Amz-Signature" = ctx$signature))
  } else {
    authorization <- paste(
      paste0(AUTH_HEADER_PREFIX, " Credential=", ctx$cred_values$access_key_id, "/", ctx$credential_string),
      paste0("SignedHeaders=", ctx$signed_headers),
      paste0("Signature=", ctx$signature),
      sep = ", "
    )
    ctx$request$header["Authorization"] <- authorization
  }

  return(ctx)
}

build_time <- function(ctx) {
  ctx$formatted_time <- format(ctx$time, tz = "UTC", format = TIME_FORMAT)
  ctx$formatted_short_time <- format(ctx$time, tz = "UTC", format = SHORT_TIME_FORMAT)
  if (ctx$is_presigned) {
    ctx$query[["X-Amz-Date"]] <- ctx$formatted_time
    ctx$query[["X-Amz-Expires"]] <- as.character(as.integer(ctx$expire_time))
  } else {
    ctx$request$header["X-Amz-Date"] <- ctx$formatted_time
  }
  return(ctx)
}

build_credential_string <- function(ctx) {
  ctx$credential_string <- paste(
    ctx$formatted_short_time,
    ctx$region,
    ctx$service_name,
    "aws4_request",
    sep = "/"
  )

  if (ctx$is_presigned) {
    x_amz_credential <- paste(
      ctx$cred_values$access_key_id,
      ctx$credential_string,
      sep = "/"
    )
    ctx$query["X-Amz-Credential"] <- x_amz_credential
  }
  return(ctx)
}

# Return the SHA256 of the given string x.
sha256 <- function(x) {
  return(digest::digest(x, "sha256", serialize = FALSE))
}

build_body_digest <- function(ctx) {
  hash <- get_element(ctx$request$header, "X-Amz-Content-Sha256")
  if (hash == "") {
    if (ctx$unsigned_payload || (ctx$is_presigned && ctx$service_name == "s3")) {
      hash <- "UNSIGNED-PAYLOAD"
    } else if (is_empty(ctx$body)) {
      hash <- EMPTY_STRING_SHA256
    } else {
      hash <- sha256(ctx$body)
    }
    if (ctx$unsigned_payload || ctx$service_name %in% c("s3", "glacier")) {
      ctx$request$header["X-Amz-Content-Sha256"] <- hash
    }
  }
  ctx$body_digest <- hash
  return(ctx)
}

build_canonical_headers <- function(ctx, header, ignored_headers) {
  headers <- c("host")
  for (key in names(header)) {
    if (key %in% ignored_headers) {
      next
    } else {
      lower_case_key <- tolower(key)
      ctx$signed_header_vals[[lower_case_key]] <- header[[key]]
      headers <- c(headers, lower_case_key)
    }
  }
  headers <- sort(headers)
  ctx$signed_headers <- paste(headers, collapse = ";")

  if (ctx$is_presigned) {
    ctx$query["X-Amz-SignedHeaders"] <- ctx$signed_headers
  }

  header_values <- c()
  for (key in headers) {
    if (key == "host") {
      if (ctx$request$host != "") {
        header_value <- paste0("host:", ctx$request$host)
      } else {
        header_value <- paste0("host:", ctx$request$url$host)
      }
    } else {
      value <- ctx$signed_header_vals[[key]]
      header_value <- paste0(key, ":", paste(value, collapse =","))
    }
    header_values <- c(header_values, header_value)
  }
  ctx$canonical_headers <- paste(header_values, collapse = "\n")
  return(ctx)
}

build_canonical_string <- function(ctx) {
  if (!is.null(ctx$query)) {
    ctx$request$url$raw_query <- gsub("\\+", "%20", build_query_string(ctx$query))
  }

  uri <- get_uri_path(ctx$request$url)

  if (!ctx$disable_uri_path_escaping) {
    uri <- escape_path(uri, FALSE)
  }

  # TODO: Delete extra whitespace.

  ctx$canonical_string <- paste(
    ctx$request$method,
    uri,
    ctx$request$url$raw_query,
    paste0(ctx$canonical_headers, "\n"),
    ctx$signed_headers,
    ctx$body_digest,
    sep = "\n"
  )

  return(ctx)
}

build_string_to_sign <- function(ctx) {
  ctx$string_to_sign <- paste(
    AUTH_HEADER_PREFIX,
    ctx$formatted_time,
    ctx$credential_string,
    sha256(ctx$canonical_string),
    sep = "\n"
  )
  return(ctx)
}

build_signature <- function(ctx) {
  secret <- ctx$cred_values$secret_access_key
  date <- make_hmac(paste0("AWS4", secret), ctx$formatted_short_time)
  region <- make_hmac(date, ctx$region)
  service <- make_hmac(region, ctx$service_name)
  credentials <- make_hmac(service, "aws4_request")
  signature <- make_hmac(credentials, ctx$string_to_sign)
  ctx$signature <- paste(signature, collapse = "")
  return(ctx)
}

# Do a keyed hash operation on the given data using the given key.
make_hmac <- function(key, data) {
  return(digest::hmac(key, enc2utf8(data), "sha256", serialize = FALSE, raw = TRUE))
}

# Return the path part of a URI, e.g. "https://www.example.com/abc/xyz" -> "abc/xyz".
get_uri_path <- function(url) {
  uri <- ""
  if (nchar(url$opaque) > 0) {
    path <- paste(strsplit(url$opaque, "/")[[1]][-(1:3)], collapse = "/")
    uri <- paste0("/", path)
  } else {
    uri <- escaped_path(url)
  }

  if (nchar(uri) == 0) {
    uri <- "/"
  }

  return(uri)
}
