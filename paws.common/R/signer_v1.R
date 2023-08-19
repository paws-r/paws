#' @include credentials.R
#' @include struct.R
#' @include signer_v4.R
#' @include util.R

# Signing and authenticating REST requests
# http://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html

# List of Query String Arguments of Interest
QSAOfInterest <- c(
  "accelerate",
  "acl",
  "cors",
  "defaultObjectAcl",
  "location",
  "logging",
  "partNumber",
  "policy",
  "requestPayment",
  "torrent",
  "versioning",
  "versionId",
  "versions",
  "website",
  "uploads",
  "uploadId",
  "response-content-type",
  "response-content-language",
  "response-expires",
  "response-cache-control",
  "response-content-disposition",
  "response-content-encoding",
  "delete",
  "lifecycle",
  "tagging",
  "restore",
  "storageClass",
  "notification",
  "replication",
  "requestPayment",
  "analytics",
  "metrics",
  "inventory",
  "select",
  "select-type",
  "object-lock"
)

# A Signer object stores credentials and signing settings.
SignerQuery <- struct(
  credentials = Credentials(),
  disable_uri_path_escaping = FALSE,
  debug = NULL,
  logger = NULL,
  unsigned_payload = FALSE
)

# A SigningContext object stores the information used in creating the signature.
SigningContextQuery <- struct(
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
  signed_headers = "",
  canonical_headers = "",
  canonical_string = "",
  credential_string = "",
  string_to_sign = "",
  signature = "",
  authorization = "",
  anonymous = FALSE
)

# Generates a presigned request for s3.
# https://docs.aws.amazon.com/AmazonS3/latest/userguide/RESTAuthentication.html#RESTAuthenticationQueryStringAuth
v1_sign_request_handler <- function(request) {
  return(sign_v1_auth_query(request))
}

sign_v1_auth_query <- function(request) {
  region <- request$client_info$signing_region
  if (region == "") {
    region <- request$config$region
  }

  name <- request$client_info$signing_name
  if (name == "") {
    name <- request$config$service_name
  }

  v1 <- SignerQuery(
    credentials = request$config$credentials
  )

  if (name == "s3") {
    v1$disable_uri_path_escaping <- TRUE
  }

  signing_time <- request$time
  if (!is.null(request$last_signed_at)) {
    signing_time <- request$last_signed_at
  }

  auth_path <- get_auth(request)
  request$http_request <- sign_with_body_query(
    v1, request$http_request, request$body,
    name, region, request$expire_time, signing_time,
    auth_path, request$config$credentials$anonymous
  )

  return(request)
}

sign_with_body_query <- function(signer, request, body, service, region,
                                 expire_time, signing_time, auth_path, anonymous) {
  if (is.null(body)) body <- ""

  ctx <- SigningContextQuery(
    request = request,
    body = body,
    query = parse_query_string(request$url$raw_query),
    time = signing_time,
    expire_time = expire_time,
    service_name = service,
    region = region,
    disable_uri_path_escaping = signer$disable_uri_path_escaping,
    anonymous = anonymous
  )

  if (!is.null(ctx$query) && length(ctx$query) > 0) {
    ctx$query <- sort_list(ctx$query)
  }

  credentials <- signer$credentials
  if (!is_credentials_provided(signer$credentials$creds)) {
    credentials <- get_credentials(signer$credentials)
  }
  ctx$cred_values <- credentials$creds

  ctx$request <- sanitize_host_for_header(ctx$request)
  ctx <- assign_amz_query_values(ctx)
  ctx <- build_context_query(ctx, signer$disable_header_hoisting, auth_path)

  return(ctx$request)
}

build_context_query <- function(ctx, disable_header_hoisting, auth_path, ...) {
  ctx$request$header[["Date"]] <- set_date(ctx)
  unsigned_headers <- ctx$request$header

  ctx$canonical_headers <- canonical_standard_headers(ctx, unsigned_headers)
  ctx$canonical_headers <- canonical_custom_headers(ctx, unsigned_headers)
  ctx$canonical_string <- canonical_string(ctx, auth_path)
  log_debug("StringToSign:\n%s", ctx$canonical_string)

  ctx$signature <- sign_string_query(ctx)
  ctx$request$url$raw_query <- inject_signature_query(ctx)

  return(ctx)
}

set_date <- function(ctx) {
  return(as.character(as.integer(ctx$time + ctx$expire_time)))
}

# Developed from:
# https://github.com/boto/botocore/blob/master/botocore/auth.py#L778-L802
canonical_standard_headers <- function(ctx, headers) {
  interesting_headers <- c("content-md5", "content-type", "date")
  hoi <- vector("list", length(interesting_headers))
  names(hoi) <- interesting_headers

  header_names <- names(headers)
  hoi_found <- interesting_headers %in% tolower(header_names)
  header_found <- tolower(header_names) %in% interesting_headers

  hoi[hoi_found] <- trimws(headers[header_found])
  hoi[!hoi_found] <- ""
  return(paste(hoi, collapse = "\n"))
}

# Developed from:
# https://github.com/boto/botocore/blob/master/botocore/auth.py#L754-L767
canonical_custom_headers <- function(ctx, headers) {
  header_names <- tolower(names(headers))

  found <- grepl("x-amz-", header_names)
  custom_headers <- trimws(Filter(Negate(is.null), headers[found]))
  names(custom_headers) <- names(headers[found])
  sorted_header_keys <- sort_list(as.list(custom_headers))
  canonical_headers <- c(
    ctx$canonical_headers,
    paste(
      names(sorted_header_keys),
      sorted_header_keys,
      sep = ":",
      collapse = "\n"
    )
  )
  return(Filter(nzchar, canonical_headers))
}

# Developed from:
# https://github.com/boto/botocore/blob/master/botocore/auth.py#L778-L802
canonical_resource <- function(ctx, auth_path) {
  raw_query <- ctx$request$url$raw_query
  if (!is.null(auth_path)) {
    buf <- auth_path
  } else {
    buf <- raw_query
  }
  if (nzchar(raw_query)) {
    qsa <- parse_query_string(raw_query)
    found <- names(qsa) %in% QSAOfInterest
    qsa <- lapply(qsa[found], unescape)
    buf <- Filter(nzchar, c(buf, build_query_string(qsa)))
  }
  return(paste(buf, collapse = "?"))
}

# Developed from:
# https://github.com/boto/botocore/blob/master/botocore/auth.py#L804-L813
canonical_string <- function(ctx, auth_path) {
  resource <- canonical_resource(ctx, auth_path)

  canonical_string <- paste(
    ctx$request$method,
    paste(ctx$canonical_headers, sep = "\n"),
    resource,
    sep = "\n"
  )
  return(canonical_string)
}

sign_string_query <- function(ctx) {
  new_hmac <- make_hmac(
    enc2utf8(ctx$cred_values$secret_access_key), ctx$canonical_string, "sha1"
  )
  return(base64enc::base64encode(new_hmac))
}

# Developed from:
# https://github.com/boto/botocore/blob/master/botocore/auth.py#L875-L905
inject_signature_query <- function(ctx) {
  query_list <- list(
    AWSAccessKeyId = ctx$cred_values$access_key_id,
    Signature = ctx$signature
  )
  headers <- ctx$request$header
  query_list["Expires"] <- ctx$request$header$Date

  header_names <- names(headers)
  found <- vapply(tolower(header_names), function(nn) {
    grepl("x-amz-", nn) || nn %in% c("content-md5", "content-type")
  }, FUN.VALUE = logical(1))

  for (header_name in header_names[found]) {
    query_list[tolower(header_name)] <- ctx$request$header[[header_name]]
  }

  query_list <- if (!ctx$anonymous) query_list else list()
  query <- ctx$request$url$raw_query
  new_query <- Filter(nzchar, c(query, build_query_string(query_list)))
  return(paste(new_query, collapse = "&"))
}
