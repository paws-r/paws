#' @include service.R
#' @include stream.R
NULL

################################################################################

convert_file_to_raw <- function(request) {
  operation_name <- request$operation$name
  if (operation_name != "PutObject") return(request)

  request_params <- request$params
  content_body <- request_params["Body"][[1]]
  if (!is.character(content_body)) return(request)

  file_name <- content_body[[1]]
  if (!file.exists(file_name)) {
    stop(sprintf("Unable to find file: %s", file_name))
  }
  file_connection <- file(file_name, "rb")
  raw_body <- readBin(file_connection, "raw", n = file.size(file_name))
  close(file_connection)

  attributes(raw_body) <- attributes(content_body)
  request$params["Body"][[1]] <- raw_body
  return(request)
}

################################################################################

bucket_name_from_req_params <- function(request) {
  request_params <- request$params
  bucket <- request_params["Bucket"]

  if (is.null(bucket)) return(NULL)

  bucket_name <- bucket[[1]]

  return(bucket_name)
}

host_compatible_bucket_name <- function(bucket) {
  if (grepl(".", bucket, fixed = TRUE)) return(FALSE)
  domain <- "^[a-z0-9][a-z0-9\\.\\-]{1,61}[a-z0-9]$"
  ip_address <- "^(\\d+\\.){3}\\d+$"
  return(grepl(domain, bucket) && !grepl(ip_address, bucket))
}

move_bucket_to_host <- function(url, bucket) {
  url$host <- paste0(bucket, ".", url$host)
  url$path <- gsub("/\\{Bucket\\}", "", url$path)

  if (url$path == "") {
    url$path = "/"
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
  bucket_name <- bucket_name_from_req_params(request)

  if (is.null(bucket_name)) return(request)

  if (is_access_point(bucket_name)) {
    request$http_request$url$host <- get_access_point_endpoint(bucket_name)
    request$http_request$url <- remove_bucket_from_url(request$http_request$url)
    return(request)
  }

  if (!host_compatible_bucket_name(bucket_name)) return(request)

  if (request$operation$name %in% c("GetBucketLocation")) return(request)

  use_virtual_host_style <- TRUE
  if (request$config$s3_force_path_style) use_virtual_host_style <- FALSE
  if (request$config$endpoint != "") use_virtual_host_style <- FALSE

  if (use_virtual_host_style) {
    request$http_request$url <-
      move_bucket_to_host(request$http_request$url, bucket_name)
  }

  return(request)
}

################################################################################

populate_location_constraint <- function(request) {

  operation_name <- request$operation$name

  if (operation_name != "CreateBucket") return(request)

  request_params <- request$params
  location <- request_params$CreateBucketConfiguration$LocationConstraint

  if (length(location) == 0) {
    request$params[["CreateBucketConfiguration"]] <- NULL
  }

  return(request)
}

################################################################################

content_md5 <- function(request) {
  operation_name <- request$operation$name
  if (!(operation_name %in% c("PutBucketCors", "PutBucketLifecycle",
                              "PutBucketPolicy", "PutBucketTagging",
                              "DeleteObjects",
                              "PutBucketLifecycleConfiguration",
                              "PutBucketReplication", "PutObject",
                              "UploadPart"))) {return(request)}
  body <- request$body
  if (length(body) == 0) body <- raw(0)
  hash <- digest::digest(body, serialize = FALSE, raw = TRUE)
  base64_hash <- base64enc::base64encode(hash)
  request$http_request$header$`Content-Md5` <- base64_hash
  return(request)
}

################################################################################

s3_unmarshal_select_object_content <- function(request) {
  if (request$operation$name != "SelectObjectContent") return(request)
  payload <- stream_decode(request$http_response$body)
  request$data <- populate(list(Payload = payload), request$data)
  request$http_response$body <- raw()
  return(request)
}

################################################################################

s3_unmarshal_get_bucket_location <- function(request) {
  if (request$operation$name != "GetBucketLocation") return(request)
  response <- decode_xml(request$http_response$body)
  data <- request$data
  location <- response$LocationConstraint
  if (length(location) == 0) location <- "us-east-1"
  else location <- location[[1]]
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

  if (is.null(data)) {
    request$error <- Error("SerializationError",
                           "failed to read from query HTTP response body",
                           request$http_response$status_code)
    return(request)
  }

  error_response <- lapply(data$Error, unlist)
  code <- error_response$Code
  message <- error_response$Message

  if (is.null(message) && is.null(code)) {
    request$error <- Error("SerializationError",
                           "failed to decode query XML error response",
                           request$http_response$status_code)
    return(request)
  }

  request$error <- Error(code, message, request$http_response$status_code, error_response)
  return(request)
}

################################################################################

customizations$s3 <- function(handlers) {
  handlers$build <- handlers_add_front(handlers$build,
                                       update_endpoint_for_s3_config)
  handlers$build <- handlers_add_front(handlers$build,
                                       populate_location_constraint)
  handlers$build <- handlers_add_front(handlers$build,
                                       convert_file_to_raw)
  handlers$build <- handlers_add_back(handlers$build,
                                      content_md5)
  handlers$unmarshal <- handlers_add_front(handlers$unmarshal,
                                           s3_unmarshal_select_object_content)
  handlers$unmarshal <- handlers_add_back(handlers$unmarshal,
                                          s3_unmarshal_get_bucket_location)
  handlers$unmarshal_error <- handlers_set(s3_unmarshal_error)
  handlers
}
