.s3 <- list()

.s3$operations <- list()

.s3$metadata <- list(
  service_name = "s3",
  endpoints = list(),
  service_id = "S3",
  api_version = "2006-03-01",
  signing_name = "s3",
  json_version = "",
  target_prefix = ""
)

.s3_endpoint <- function() {
  switch(
    vendor_cache[["vendor"]],
    "boto" = list(
      "aws-global" = list(endpoint = "s3.amazonaws.com", global = TRUE),
      "us-east-1" = list(endpoint = "s3.amazonaws.com", global = TRUE),
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "s3.{region}.amazonaws.com",
        global = FALSE
      ),
      "^cn\\-\\w+\\-\\d+$" = list(
        endpoint = "s3.{region}.amazonaws.com.cn",
        global = FALSE
      ),
      "^us\\-gov\\-\\w+\\-\\d+$" = list(
        endpoint = "s3.{region}.amazonaws.com",
        global = FALSE
      ),
      "^us\\-iso\\-\\w+\\-\\d+$" = list(
        endpoint = "s3.{region}.c2s.ic.gov",
        global = FALSE
      ),
      "^us\\-isob\\-\\w+\\-\\d+$" = list(
        endpoint = "s3.{region}.sc2s.sgov.gov",
        global = FALSE
      ),
      "^eu\\-isoe\\-\\w+\\-\\d+$" = list(
        endpoint = "s3.{region}.cloud.adc-e.uk",
        global = FALSE
      ),
      "^us\\-isof\\-\\w+\\-\\d+$" = list(
        endpoint = "s3.{region}.csp.hci.ic.gov",
        global = FALSE
      )
    ),
    "js" = list(
      "us-gov-west-1" = list(
        endpoint = "s3.{region}.amazonaws.com",
        global = FALSE
      ),
      "us-west-1" = list(
        endpoint = "s3.{region}.amazonaws.com",
        global = FALSE
      ),
      "us-west-2" = list(
        endpoint = "s3.{region}.amazonaws.com",
        global = FALSE
      ),
      "eu-west-1" = list(
        endpoint = "s3.{region}.amazonaws.com",
        global = FALSE
      ),
      "ap-southeast-1" = list(
        endpoint = "s3.{region}.amazonaws.com",
        global = FALSE
      ),
      "ap-southeast-2" = list(
        endpoint = "s3.{region}.amazonaws.com",
        global = FALSE
      ),
      "ap-northeast-1" = list(
        endpoint = "s3.{region}.amazonaws.com",
        global = FALSE
      ),
      "sa-east-1" = list(
        endpoint = "s3.{region}.amazonaws.com",
        global = FALSE
      ),
      "us-east-1" = list(endpoint = "s3.amazonaws.com", global = FALSE),
      "*" = list(endpoint = "s3.{region}.amazonaws.com", global = FALSE),
      "cn-*" = list(endpoint = "s3.{region}.amazonaws.com.cn", global = FALSE),
      "eu-isoe-*" = list(
        endpoint = "s3.{region}.cloud.adc-e.uk",
        global = FALSE
      ),
      "us-iso-*" = list(endpoint = "s3.{region}.c2s.ic.gov", global = FALSE),
      "us-isob-*" = list(
        endpoint = "s3.{region}.sc2s.sgov.gov",
        global = FALSE
      ),
      "us-isof-*" = list(
        endpoint = "s3.{region}.csp.hci.ic.gov",
        global = FALSE
      )
    )
  )
}

.s3$service <- function(config = list()) {
  handlers <- new_handlers("restxml", "s3")
  .s3$metadata$endpoints <- .s3_endpoint()
  new_service(.s3$metadata, handlers, config)
}

.s3$head_bucket_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(
    list(
      Bucket = structure(
        logical(0),
        tags = list(location = "uri", locationName = "Bucket", type = "string")
      ),
      ExpectedBucketOwner = structure(
        logical(0),
        tags = list(
          location = "header",
          locationName = "x-amz-expected-bucket-owner",
          type = "string"
        )
      )
    ),
    tags = list(type = "structure")
  )
  return(populate(args, shape))
}

.s3$head_bucket_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(
    list(
      BucketLocationType = structure(
        logical(0),
        tags = list(
          location = "header",
          locationName = "x-amz-bucket-location-type",
          type = "string"
        )
      ),
      BucketLocationName = structure(
        logical(0),
        tags = list(
          location = "header",
          locationName = "x-amz-bucket-location-name",
          type = "string"
        )
      ),
      BucketRegion = structure(
        logical(0),
        tags = list(
          location = "header",
          locationName = "x-amz-bucket-region",
          type = "string"
        )
      ),
      AccessPointAlias = structure(
        logical(0),
        tags = list(
          location = "header",
          locationName = "x-amz-access-point-alias",
          type = "boolean",
          box = TRUE
        )
      )
    ),
    tags = list(type = "structure")
  )
  return(populate(args, shape))
}

s3_head_bucket <- function(Bucket, ExpectedBucketOwner = NULL) {
  op <- new_operation(
    name = "HeadBucket",
    http_method = "HEAD",
    http_path = "/{Bucket}",
    paginator = list()
  )
  input <- .s3$head_bucket_input(
    Bucket = Bucket,
    ExpectedBucketOwner = ExpectedBucketOwner
  )
  output <- .s3$head_bucket_output()
  config <- get_config()
  svc <- .s3$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.s3$operations$head_bucket <- s3_head_bucket

s3 <- function(config = list()) {
  svc <- .s3$operations
  svc <- set_config(svc, config)
  return(svc)
}
