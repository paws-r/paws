#' @include service.R
NULL

################################################################################

bucket_name_from_req_params <- function(request) {
  request_params <- request$params
  bucket <- request_params["Bucket"]

  if (is.null(bucket)) return(NULL)

  bucket_name <- bucket[[1]]

  return(bucket_name)
}

move_bucket_to_host <- function(url, bucket) {
  url$host <- paste0(bucket, ".", url$host)
  url$path <- gsub("/\\{Bucket\\}", "", url$path)

  if (url$path == "") {
    url$path = "/"
  }

  return(url)
}

update_endpoint_for_s3_config <- function(request) {
  bucket_name <- bucket_name_from_req_params(request)

  if (is.null(bucket_name)) return(request)

  request$http_request$url <-
    move_bucket_to_host(request$http_request$url, bucket_name)

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
  hash <- digest::digest(body, serialize = FALSE, raw = TRUE)
  base64_hash <- base64enc::base64encode(hash)
  request$http_request$header$`Content-Md5` <- base64_hash
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
                           "failed to read from query HTTP response body")
    return(request)
  }

  code <- unlist(data$Error$Code)
  message <- unlist(data$Error$Message)

  if (is.null(message) && is.null(code)) {
    request$error <- Error("SerializationError",
                           "failed to decode query XML error response")
    return(request)
  }

  request$error <- Error(code, message)
  return(request)
}


################################################################################

customizations$s3 <- function(handlers) {
  handlers$build <- handlers_add_front(handlers$build,
                                       update_endpoint_for_s3_config)
  handlers$build <- handlers_add_front(handlers$build,
                                       populate_location_constraint)
  handlers$build <- handlers_add_back(handlers$build,
                                      content_md5)
  handlers$unmarshal_error <- handlers_set(s3_unmarshal_error)
  handlers
}
