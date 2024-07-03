#' @include service.R
#' @include stream.R
#' @include util.R
#' @include error.R
#' @include head_bucket.R
NULL

################################################################################

convert_file_to_raw <- function(request) {
  operation_name <- request$operation$name
  if (operation_name != "PutObject") {
    return(request)
  }

  request_params <- request$params
  content_body <- request_params["Body"][[1]]
  if (!is.character(content_body)) {
    return(request)
  }

  file_name <- content_body[[1]]
  if (!file.exists(file_name)) {
    stopf("Unable to find file: %s", file_name)
  }
  file_connection <- file(file_name, "rb")
  raw_body <- readBin(file_connection, "raw", n = file.size(file_name))
  close(file_connection)

  attributes(raw_body) <- attributes(content_body)
  request$params["Body"][[1]] <- raw_body
  return(request)
}

################################################################################
# host_compatible_bucket_name returns true if the request should
# put the bucket in the host. This is false if S3ForcePathStyle is
# explicitly set or if the bucket is not DNS compatible.
host_compatible_bucket_name <- function(url, bucket) {
  # Bucket might be DNS compatible but dots in the hostname will fail
  # certificate validation, so do not use host-style.
  if (url$scheme == "https" && grepl(".", bucket, fixed = TRUE)) {
    return(FALSE)
  }
  return(dns_compatible_bucket_name(bucket))
}

# dns_compatible_bucket_name returns true if the bucket name is DNS compatible.
# Buckets created outside of the classic region MUST be DNS compatible.
dns_compatible_bucket_name <- function(bucket) {
  domain <- "^[a-z0-9][a-z0-9\\.\\-]{1,61}[a-z0-9]$"
  ip_address <- "^(\\d+\\.){3}\\d+$"
  return(
    grepl(domain, bucket) &&
      !grepl(ip_address, bucket) &&
      !grepl("..", bucket, fixed = T)
  )
}

move_bucket_to_host <- function(url, bucket) {
  url$host <- paste0(bucket, ".", url$host)
  url$path <- gsub("/\\{Bucket\\}", "", url$path)

  if (url$path == "") {
    url$path <- "/"
  }

  return(url)
}

# Check if a given bucket name is an S3 access point.
is_access_point <- function(bucket_name) {
  regex <- "^(.+):(.+):(.+):(.+):(.+):(.+)$"
  return(grepl(regex, bucket_name))
}

# Parse the S3 access point ARN and return the corresponding endpoint.
# See https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html
#
# ARN format: arn:aws:s3:{region}:{account-id}:accesspoint/{accesspoint-name}
# Access point endpoint format: {accesspoint-name}-{account-id}.s3-accesspoint.{region}.{dns-suffix}
# Example:
#   In: arn:aws:s3:us-west-2:123456789012:accesspoint/test
#   Out: test-123456789012.s3-accesspoint.us-west-2.amazonaws.com
get_access_point_endpoint <- function(access_point) {
  part <- strsplit(access_point, ":|/")[[1]]
  region <- part[4]
  account <- part[5]
  name <- part[7]
  endpoint <- sprintf("%s-%s.s3-accesspoint.%s.amazonaws.com", name, account, region)
  return(endpoint)
}

remove_bucket_from_url <- function(url) {
  url$path <- gsub("\\{Bucket+?\\}", "", url$path)
  if (url$path == "") url$path <- "/"
  return(url)
}

update_endpoint_for_s3_config <- function(request) {
  if (is.null(bucket_name <- request$params[["Bucket"]])) {
    return(request)
  }

  if (is_access_point(bucket_name)) {
    request$http_request$url$host <- get_access_point_endpoint(bucket_name)
    request$http_request$url <- remove_bucket_from_url(request$http_request$url)
    return(request)
  }

  if (!host_compatible_bucket_name(request$http_request$url, bucket_name)) {
    return(request)
  }

  if (request$operation$name %in% c("GetBucketLocation")) {
    return(request)
  }

  use_virtual_host_style <- TRUE
  if (request$config$s3_force_path_style) use_virtual_host_style <- FALSE
  if (request$client_info$custom_endpoint) {
    use_virtual_host_style <- FALSE
  }

  if (use_virtual_host_style) {
    request$http_request$url <-
      move_bucket_to_host(request$http_request$url, bucket_name)
  }

  return(request)
}

################################################################################

populate_location_constraint <- function(request) {
  operation_name <- request$operation$name

  if (operation_name != "CreateBucket") {
    return(request)
  }

  request_params <- request$params
  location <- request_params$CreateBucketConfiguration$LocationConstraint

  if (length(location) == 0) {
    request$params[["CreateBucketConfiguration"]] <- NULL
  }

  return(request)
}

################################################################################
# developed from boto3:
# https://github.com/boto/botocore/blob/54a09c7d025181b8221d0046eb6dd6def9ace338/botocore/handlers.py#L287-L321

sse_md5_build <- function(request) {
  request$params <- sse_md5(request$params)
  request$params <- copy_source_sse_md5(request$params)
  return(request)
}

# S3 server-side encryption requires the encryption key to be sent to the
# server base64 encoded, as well as a base64-encoded MD5 hash of the
# encryption key. This handler does both if the MD5 has not been set by
# the caller.
sse_md5 <- function(params) {
  return(.sse_md5(params, "SSECustomer"))
}

# S3 server-side encryption requires the encryption key to be sent to the
# server base64 encoded, as well as a base64-encoded MD5 hash of the
# encryption key. This handler does both if the MD5 has not been set by
# the caller specifically if the parameter is for the copy-source sse-c key.
copy_source_sse_md5 <- function(params) {
  return(.sse_md5(params, "CopySourceSSECustomer"))
}

.sse_md5 <- function(params, sse_member_prefix = "SSECustomer") {
  if (!.needs_s3_sse_customization(params, sse_member_prefix)) {
    return(params)
  }
  sse_key_member <- paste0(sse_member_prefix, "Key")
  sse_md5_member <- paste0(sse_member_prefix, "KeyMD5")
  key_md5_str <- base64enc::base64encode(
    digest::digest(params[[sse_key_member]], serialize = FALSE, raw = TRUE)
  )
  attributes(key_md5_str) <- attributes(params[[sse_md5_member]])
  params[[sse_md5_member]] <- key_md5_str
  return(params)
}

.needs_s3_sse_customization <- function(params, sse_member_prefix) {
  return(
    !is_empty(params[[paste0(sse_member_prefix, "Key")]]) &
      is_empty(params[[paste0(sse_member_prefix, "KeyMD5")]])
  )
}

################################################################################

content_md5 <- function(request) {
  operation_name <- request$operation$name
  if (!(operation_name %in% c(
    "PutBucketCors", "PutBucketLifecycle",
    "PutBucketPolicy", "PutBucketTagging",
    "DeleteObjects",
    "PutBucketLifecycleConfiguration",
    "PutBucketReplication", "PutObject",
    "UploadPart"
  ))) {
    return(request)
  }
  # Create Content-MD5 header if missing.
  # https://github.com/aws/aws-sdk-go/blob/e2d6cb448883e4f4fcc5246650f89bde349041ec/private/checksum/content_md5.go#L18
  if (is.null(request$http_request$header[["Content-MD5"]])) {
    body <- request$body
    if (length(body) == 0) body <- raw(0)
    hash <- digest::digest(body, serialize = FALSE, raw = TRUE)
    base64_hash <- base64enc::base64encode(hash)
    request$http_request$header$`Content-Md5` <- base64_hash
  }
  return(request)
}

################################################################################

s3_unmarshal_select_object_content <- function(request) {
  if (request$operation$name != "SelectObjectContent") {
    return(request)
  }
  payload <- stream_decode(request$http_response$body)
  request$data <- populate(list(Payload = payload), request$data)
  request$http_response$body <- raw()
  return(request)
}

################################################################################

s3_unmarshal_get_bucket_location <- function(request) {
  if (request$operation$name != "GetBucketLocation") {
    return(request)
  }
  response <- decode_xml(request$http_response$body)
  data <- request$data
  location <- response$LocationConstraint
  if (length(location) == 0) {
    location <- "us-east-1"
  } else {
    location <- location[[1]]
  }
  if (location == "EU") location <- "eu-west-1"
  data$LocationConstraint <- location
  request$data <- data
  return(request)
}

################################################################################

s3_unmarshal_error <- function(request) {
  data <- tryCatch(
    decode_xml(request$http_response$body),
    error = function(e) NULL
  )
  # Bucket exists in a different region, and request needs
  # to be made to the correct region.
  if (request$http_response$status_code == 301) {
    error_msg <- list()
    error_msg[[1]] <- sprintf(
      "incorrect region, the bucket is not in '%s' region at endpoint '%s'",
      request$config$region,
      request$config$endpoint
    )
    if (nzchar(v <- request$http_response$header[["x-amz-bucket-region"]] %||% "")) {
      error_msg[[2]] <- sprintf(", bucket is in '%s' region", v)
    }
    request$error <- Error(
      "BucketRegionError",
      paste(error_msg, collapse = ""),
      request$http_response$status_code,
      request$request_id
    )
    return(request)
  }
  if (is.null(data)) {
    request$error <- serialization_error(request)
    return(request)
  }

  error_response <- lapply(data$Error, unlist)
  code <- error_response$Code
  message <- error_response$Message

  if (is.null(message) && is.null(code)) {
    request$error <- serialization_error(request)
    return(request)
  }

  request$error <- Error(
    code, message, request$http_response$status_code, error_response
  )
  return(request)
}

################################################################################

s3_endpoints <- list(
  "us-gov-west-1" = list(endpoint = "s3.{region}.amazonaws.com", global = FALSE),
  "us-west-1" = list(endpoint = "s3.{region}.amazonaws.com", global = FALSE),
  "us-west-2" = list(endpoint = "s3.{region}.amazonaws.com", global = FALSE),
  "eu-west-1" = list(endpoint = "s3.{region}.amazonaws.com", global = FALSE),
  "ap-southeast-1" = list(endpoint = "s3.{region}.amazonaws.com", global = FALSE),
  "ap-southeast-2" = list(endpoint = "s3.{region}.amazonaws.com", global = FALSE),
  "ap-northeast-1" = list(endpoint = "s3.{region}.amazonaws.com", global = FALSE),
  "sa-east-1" = list(endpoint = "s3.{region}.amazonaws.com", global = FALSE),
  "us-east-1" = list(endpoint = "s3.amazonaws.com", global = FALSE),
  "*" = list(endpoint = "s3.{region}.amazonaws.com", global = FALSE),
  "cn-*" = list(endpoint = "s3.{region}.amazonaws.com.cn", global = FALSE),
  "us-iso-*" = list(endpoint = "s3.{region}.c2s.ic.gov", global = FALSE),
  "us-isob-*" = list(endpoint = "s3.{region}.sc2s.sgov.gov", global = FALSE)
)

# Developed from botocore S3RegionRedirectorv2:
# https://github.com/boto/botocore/blob/de6dfccdb68e70005ed2a73dc5d04bc1e97f0541/botocore/utils.py#L1509

# An S3 request sent to the wrong region will return an error that
# contains the endpoint the request should be sent to. This handler
# will add the redirect information to the signing context and then
# redirect the request.
s3_redirect_from_error <- function(request) {
  if (is.null(request$http_response)) {
    return(request)
  }
  if (isTRUE(request$context$s3_redirect)) {
    log_debug(
      "S3 request was previously redirected, not redirecting."
    )
    return(request)
  }
  error_code <- request$http_response$status_code

  # Exit s3_redirect_from_error function if initial request is successful
  # https://docs.aws.amazon.com/waf/latest/developerguide/customizing-the-response-status-codes.html
  http_success_code <- c(200, 201, 202, 204, 206)
  if (error_code %in% http_success_code) {
    return(request)
  }
  error <- decode_xml(request$http_response$body)$Error
  if (!can_be_redirected(request, error_code, error)) {
    return(request)
  }
  bucket_name <- request$params[["Bucket"]]
  new_region <- s3_get_bucket_region(request, error, bucket_name)
  if (is.null(new_region)) {
    log_debug(
      paste(
        "S3 client configured for region %s but the bucket %s is not",
        "in that region and the proper region could not be",
        "automatically determined."
      ),
      request$client_info$signing_region, bucket_name
    )
    return(request)
  }
  log_debug(
    paste(
      "S3 client configured for region %s but the bucket %s is in region",
      "%s; Please configure the proper region to avoid multiple",
      "unnecessary redirects and signing attempts."
    ),
    request$client_info$signing_region, bucket_name, new_region
  )
  # Update client_info for redirect
  request$client_info$signing_region <- new_region
  # Re-resolve endpoint with new region and modify request_dict with
  # the new URL, auth scheme, and signing context.
  ep_info <- resolver_endpoint(
    service = "s3",
    region = new_region,
    endpoints = s3_endpoints
  )
  request$client_info$endpoint <- set_request_url(
    request$client_info$endpoint, ep_info$endpoint
  )
  request$http_request$url <- parse_url(
    paste0(request$client_info$endpoint, request$operation$http_path)
  )
  request$built <- FALSE
  request$context$s3_redirect <- TRUE
  # re-sign redirect request
  request <- sign(request)
  # re-send redirect request
  request <- send(request)

  return(request)
}

can_be_redirected <- function(request, error_code, error) {
  # We have to account for 400 responses because
  # if we sign a Head* request with the wrong region,
  # we'll get a 400 Bad Request but we won't get a
  # body saying it's an "AuthorizationHeaderMalformed".
  is_special_head_object <- (
    error_code %in% c("301", "400") & request$operation$name == "HeadObject"
  )
  is_special_head_bucket <- (
    error_code %in% c("301", "400") &
      request$operation$name == "HeadBucket" &
      "x-amz-bucket-region" %in% names(request$http_response$header)
  )
  is_wrong_signing_region <- (
    error$Code == "AuthorizationHeaderMalformed" & "Region" %in% names(error)
  )
  is_redirect_status <- request$http_response$status_code %in% c(301, 302, 307)
  is_permanent_redirect <- error$Code == "PermanentRedirect"

  return(any(
    c(
      is_special_head_object,
      is_wrong_signing_region,
      is_permanent_redirect,
      is_special_head_bucket,
      is_redirect_status
    )
  ))
}

# There are multiple potential sources for the new region to redirect to,
# but they aren't all universally available for use. This will try to
# find region from response elements, but will fall back to calling
# HEAD on the bucket if all else fails.
# param response: HttpResponse
# param error: Error
s3_get_bucket_region <- function(request, error, bucket) {
  # First try to source the region from the headers.
  response_headers <- request$http_response$header
  if (!is.null(region <- response_headers[["x-amz-bucket-region"]])) {
    return(unlist(region))
  }
  if (!is.null(region <- unlist(error$Region))) {
    return(region)
  }

  # Finally, HEAD the bucket. No other choice sadly.
  resp <- s3(request$config)$head_bucket(Bucket = bucket)
  return(resp$BucketRegion)
}

# Splice a new endpoint into an existing URL. Note that some endpoints
# from the endpoint provider have a path component which will be
# discarded by this function.
set_request_url <- function(original_endpoint,
                            new_endpoint,
                            use_new_scheme = TRUE) {
  new_endpoint_components <- paws_url_parse(new_endpoint)
  original_endpoint_components <- paws_url_parse(original_endpoint)
  scheme <- original_endpoint_components$scheme
  if (use_new_scheme) {
    scheme <- new_endpoint_components$scheme
  }
  final_endpoint_components <- list(
    scheme = scheme,
    hostname = new_endpoint_components$hostname %||% "",
    path = original_endpoint_components$path %||% "",
    query = original_endpoint_components$query %||% "",
    fragment = "",
    raw_path = "",
    raw_query = ""
  )
  final_endpoint <- build_url(final_endpoint_components)
  return(final_endpoint)
}

################################################################################

customizations$s3 <- function(handlers) {
  handlers$build <- handlers_add_front(
    handlers$build,
    update_endpoint_for_s3_config
  )
  handlers$build <- handlers_add_front(
    handlers$build,
    populate_location_constraint
  )
  handlers$build <- handlers_add_front(
    handlers$build,
    convert_file_to_raw
  )
  handlers$build <- handlers_add_front(
    handlers$build,
    sse_md5_build
  )
  handlers$build <- handlers_add_back(
    handlers$build,
    content_md5
  )
  handlers$send <- handlers_add_back(handlers$send, s3_redirect_from_error)
  handlers$unmarshal <- handlers_add_front(
    handlers$unmarshal,
    s3_unmarshal_select_object_content
  )
  handlers$unmarshal <- handlers_add_back(
    handlers$unmarshal,
    s3_unmarshal_get_bucket_location
  )
  handlers$unmarshal_error <- handlers_set(s3_unmarshal_error)
  handlers
}
