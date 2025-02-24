mock_request <- function(bucket, key, http_path) {
  list(operation = list(http_path = http_path), params = list(Bucket = bucket, Key = key))
}

http_paths <- c("/{Bucket}", "/{Bucket}?foo", "/{Bucket}/{Key+}", "/{Bucket}/{Key+}?bar")

test_that("get auth path for standard bucket and key", {
  bucket <- "made-up"
  key <- "file"
  expect_out <- list(
    sprintf("/%s/", bucket),
    sprintf("/%s/", bucket),
    sprintf("/%s/%s", bucket, key),
    sprintf("/%s/%s", bucket, key)
  )

  for (i in seq_along(http_paths)) {
    actual <- get_auth(mock_request(bucket, key, http_paths[i]))
    expect_equal(actual, expect_out[[i]])
  }
})

test_that("get auth path with special characters #1", {
  bucket <- "made_up"
  key <- "path/file#"
  expect_out <- list(
    sprintf("/%s", bucket),
    sprintf("/%s", bucket),
    sprintf("/%s/%s", bucket, paws_url_encoder(key, "/-")),
    sprintf("/%s/%s", bucket, paws_url_encoder(key, "/~"))
  )

  for (i in seq_along(http_paths)) {
    actual <- get_auth(mock_request(bucket, key, http_paths[i]))
    expect_equal(actual, expect_out[[i]])
  }
})

test_that("get auth path with special characters #2", {
  bucket <- "made.up"
  key <- "path/file#"
  expect_out <- list(
    sprintf("/%s", bucket),
    sprintf("/%s", bucket),
    sprintf("/%s/%s", bucket, paws_url_encoder(key, "/-")),
    sprintf("/%s/%s", bucket, paws_url_encoder(key, "/~"))
  )

  for (i in seq_along(http_paths)) {
    actual <- get_auth(mock_request(bucket, key, http_paths[i]))
    expect_equal(actual, expect_out[[i]])
  }
})

test_that("get auth path with small bucket name", {
  bucket <- "hi"
  key <- "path/file#"
  expect_out <- list(
    sprintf("/%s", bucket),
    sprintf("/%s", bucket),
    sprintf("/%s/%s", bucket, paws_url_encoder(key, "/-")),
    sprintf("/%s/%s", bucket, paws_url_encoder(key, "/~"))
  )

  for (i in seq_along(http_paths)) {
    actual <- get_auth(mock_request(bucket, key, http_paths[i]))
    expect_equal(actual, expect_out[[i]])
  }
})

list_objects_v2_input_params <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(
    list(
      Bucket = structure(
        logical(0),
        tags = list(location = "uri", locationName = "Bucket", type = "string")
      ),
      Delimiter = structure(
        logical(0),
        tags = list(location = "querystring", locationName = "delimiter", type = "string")
      ),
      EncodingType = structure(
        logical(0),
        tags = list(
          location = "querystring",
          locationName = "encoding-type",
          type = "string"
        )
      ),
      MaxKeys = structure(
        logical(0),
        tags = list(location = "querystring", locationName = "max-keys", type = "integer")
      ),
      Prefix = structure(
        logical(0),
        tags = list(location = "querystring", locationName = "prefix", type = "string")
      ),
      ContinuationToken = structure(
        logical(0),
        tags = list(
          location = "querystring",
          locationName = "continuation-token",
          type = "string"
        )
      ),
      FetchOwner = structure(
        logical(0),
        tags = list(
          location = "querystring",
          locationName = "fetch-owner",
          type = "boolean"
        )
      ),
      StartAfter = structure(
        logical(0),
        tags = list(
          location = "querystring",
          locationName = "start-after",
          type = "string"
        )
      ),
      RequestPayer = structure(
        logical(0),
        tags = list(
          location = "header",
          locationName = "x-amz-request-payer",
          type = "string"
        )
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

list_objects_v2_output_params <- structure(
  list(
    IsTruncated = structure(logical(0), tags = list(type = "boolean")),
    Contents = structure(
      list(structure(
        list(
          Key = structure(logical(0), tags = list(type = "string")),
          LastModified = structure(logical(0), tags = list(type = "timestamp")),
          ETag = structure(logical(0), tags = list(type = "string")),
          ChecksumAlgorithm = structure(
            list(structure(logical(0), tags = list(type = "string"))),
            tags = list(type = "list", flattened = TRUE)
          ),
          Size = structure(logical(0), tags = list(type = "integer")),
          StorageClass = structure(logical(0), tags = list(type = "string")),
          Owner = structure(
            list(
              DisplayName = structure(logical(0), tags = list(type = "string")),
              ID = structure(logical(0), tags = list(type = "string"))
            ),
            tags = list(type = "structure")
          )
        ),
        tags = list(type = "structure")
      )),
      tags = list(type = "list", flattened = TRUE)
    ),
    Name = structure(logical(0), tags = list(type = "string")),
    Prefix = structure(logical(0), tags = list(type = "string")),
    Delimiter = structure(logical(0), tags = list(type = "string")),
    MaxKeys = structure(logical(0), tags = list(type = "integer")),
    CommonPrefixes = structure(
      list(structure(
        list(Prefix = structure(logical(0), tags = list(type = "string"))),
        tags = list(type = "structure")
      )),
      tags = list(type = "list", flattened = TRUE)
    ),
    EncodingType = structure(logical(0), tags = list(type = "string")),
    KeyCount = structure(logical(0), tags = list(type = "integer")),
    ContinuationToken = structure(logical(0), tags = list(type = "string")),
    NextContinuationToken = structure(logical(0), tags = list(type = "string")),
    StartAfter = structure(logical(0), tags = list(type = "string"))
  ),
  tags = list(type = "structure")
)

test_that("check standard generated presigned url", {
  metadata <- list(
    endpoints = list(
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "s3.amazonaws.com",
        global = FALSE
      )
    ),
    service_name = "s3"
  )
  credentials <- Credentials(Creds(
    access_key_id = "DUMMY",
    secret_access_key = "SECRETDUMMY"
  ))
  client <- new_service(
    metadata,
    new_handlers("restxml", "s3"),
    Config(credentials, region = "us-east-1")
  )
  op <- new_operation(
    name = "ListObjectsV2",
    http_method = "GET",
    http_path = "/{Bucket}?list-type=2",
    paginator = list()
  )

  input <- list_objects_v2_input_params(Bucket = "foo", Prefix = "bar")
  output <- list_objects_v2_output_params
  req <- new_request(client, op, input, output)

  req$expire_time <- 3600L

  req <- build(req)
  req <- sign_v1_auth_query(req)
  actual <- build_url(req$http_request$url)
  expect_true(grepl(
    sprintf(
      "https://%s.s3.amazonaws.com/\\?list-type=2&prefix=%s&AWSAccessKeyId=%s&Expires=.*?&Signature=.*",
      "foo",
      "bar",
      "DUMMY"
    ),
    actual
  ))
})

test_that("check standard generated presigned url for anonymous signing", {
  metadata <- list(
    endpoints = list(
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "s3.amazonaws.com",
        global = FALSE
      )
    ),
    service_name = "s3"
  )
  credentials <- Credentials(
    Creds(access_key_id = "DUMMY", secret_access_key = "SECRETDUMMY"),
    anonymous = TRUE
  )
  client <- new_service(
    metadata,
    new_handlers("restxml", "s3"),
    Config(credentials, region = "us-east-1")
  )
  op <- new_operation(
    name = "ListObjectsV2",
    http_method = "GET",
    http_path = "/{Bucket}?list-type=2",
    paginator = list()
  )

  input <- list_objects_v2_input_params(Bucket = "foo", Prefix = "bar")
  output <- list_objects_v2_output_params
  req <- new_request(client, op, input, output)

  req$expire_time <- 3600L

  req <- build(req)
  req <- sign_v1_auth_query(req)
  actual <- build_url(req$http_request$url)
  expect_false(grepl("Signature=", actual))
})

test_that("check standard generated presigned url with no credentials explicitly provided", {
  Sys.setenv("AWS_ACCESS_KEY_ID" = "DUMMY")
  Sys.setenv("AWS_SECRET_ACCESS_KEY" = "SECRETDUMMY")
  Sys.setenv("AWS_REGION" = "us-east-1")

  metadata <- list(
    endpoints = list(
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "s3.amazonaws.com",
        global = FALSE
      )
    ),
    service_name = "s3"
  )
  client <- new_service(metadata, new_handlers("restxml", "s3"), Config())
  op <- new_operation(
    name = "ListObjectsV2",
    http_method = "GET",
    http_path = "/{Bucket}?list-type=2",
    paginator = list()
  )

  input <- list_objects_v2_input_params(Bucket = "foo", Prefix = "bar")
  output <- list_objects_v2_output_params
  req <- new_request(client, op, input, output)

  req$expire_time <- 3600L

  req <- build(req)
  req <- sign_v1_auth_query(req)
  actual <- build_url(req$http_request$url)
  expect_true(grepl(
    sprintf(
      "https://%s.s3.amazonaws.com/\\?list-type=2&prefix=%s&AWSAccessKeyId=%s&Expires=.*?&Signature=.*",
      "foo",
      "bar",
      "DUMMY"
    ),
    actual
  ))
})

get_object_input_params <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(
    list(
      Bucket = structure(
        logical(0),
        tags = list(location = "uri", locationName = "Bucket", type = "string")
      ),
      IfMatch = structure(
        logical(0),
        tags = list(location = "header", locationName = "If-Match", type = "string")
      ),
      IfModifiedSince = structure(
        logical(0),
        tags = list(
          location = "header",
          locationName = "If-Modified-Since",
          type = "timestamp"
        )
      ),
      IfNoneMatch = structure(
        logical(0),
        tags = list(location = "header", locationName = "If-None-Match", type = "string")
      ),
      IfUnmodifiedSince = structure(
        logical(0),
        tags = list(
          location = "header",
          locationName = "If-Unmodified-Since",
          type = "timestamp"
        )
      ),
      Key = structure(
        logical(0),
        tags = list(location = "uri", locationName = "Key", type = "string")
      ),
      Range = structure(
        logical(0),
        tags = list(location = "header", locationName = "Range", type = "string")
      ),
      ResponseCacheControl = structure(
        logical(0),
        tags = list(
          location = "querystring",
          locationName = "response-cache-control",
          type = "string"
        )
      ),
      ResponseContentDisposition = structure(
        logical(0),
        tags = list(
          location = "querystring",
          locationName = "response-content-disposition",
          type = "string"
        )
      ),
      ResponseContentEncoding = structure(
        logical(0),
        tags = list(
          location = "querystring",
          locationName = "response-content-encoding",
          type = "string"
        )
      ),
      ResponseContentLanguage = structure(
        logical(0),
        tags = list(
          location = "querystring",
          locationName = "response-content-language",
          type = "string"
        )
      ),
      ResponseContentType = structure(
        logical(0),
        tags = list(
          location = "querystring",
          locationName = "response-content-type",
          type = "string"
        )
      ),
      ResponseExpires = structure(
        logical(0),
        tags = list(
          location = "querystring",
          locationName = "response-expires",
          type = "timestamp",
          timestampFormat = "rfc822"
        )
      ),
      VersionId = structure(
        logical(0),
        tags = list(location = "querystring", locationName = "versionId", type = "string")
      ),
      SSECustomerAlgorithm = structure(
        logical(0),
        tags = list(
          location = "header",
          locationName = "x-amz-server-side-encryption-customer-algorithm",
          type = "string"
        )
      ),
      SSECustomerKey = structure(
        logical(0),
        tags = list(
          location = "header",
          locationName = "x-amz-server-side-encryption-customer-key",
          type = "blob",
          sensitive = TRUE
        )
      ),
      SSECustomerKeyMD5 = structure(
        logical(0),
        tags = list(
          location = "header",
          locationName = "x-amz-server-side-encryption-customer-key-MD5",
          type = "string"
        )
      ),
      RequestPayer = structure(
        logical(0),
        tags = list(
          location = "header",
          locationName = "x-amz-request-payer",
          type = "string"
        )
      ),
      PartNumber = structure(
        logical(0),
        tags = list(
          location = "querystring",
          locationName = "partNumber",
          type = "integer"
        )
      ),
      ExpectedBucketOwner = structure(
        logical(0),
        tags = list(
          location = "header",
          locationName = "x-amz-expected-bucket-owner",
          type = "string"
        )
      ),
      ChecksumMode = structure(
        logical(0),
        tags = list(
          location = "header",
          locationName = "x-amz-checksum-mode",
          type = "string"
        )
      )
    ),
    tags = list(type = "structure")
  )
  return(populate(args, shape))
}

get_object_output_params <- structure(
  list(
    Body = structure(logical(0), tags = list(streaming = TRUE, type = "blob")),
    DeleteMarker = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-delete-marker",
        type = "boolean"
      )
    ),
    AcceptRanges = structure(
      logical(0),
      tags = list(location = "header", locationName = "accept-ranges", type = "string")
    ),
    Expiration = structure(
      logical(0),
      tags = list(ocation = "header", locationName = "x-amz-expiration", type = "string")
    ),
    Restore = structure(
      logical(0),
      tags = list(location = "header", locationName = "x-amz-restore", type = "string")
    ),
    LastModified = structure(
      logical(0),
      tags = list(location = "header", locationName = "Last-Modified", type = "timestamp")
    ),
    ContentLength = structure(
      logical(0),
      tags = list(location = "header", locationName = "Content-Length", type = "long")
    ),
    ETag = structure(
      logical(0),
      tags = list(location = "header", locationName = "ETag", type = "string")
    ),
    ChecksumCRC32 = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-checksum-crc32",
        type = "string"
      )
    ),
    ChecksumCRC32C = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-checksum-crc32c",
        type = "string"
      )
    ),
    ChecksumSHA1 = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-checksum-sha1",
        type = "string"
      )
    ),
    ChecksumSHA256 = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-checksum-sha256",
        type = "string"
      )
    ),
    MissingMeta = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-missing-meta",
        type = "integer"
      )
    ),
    VersionId = structure(
      logical(0),
      tags = list(location = "header", locationName = "x-amz-version-id", type = "string")
    ),
    CacheControl = structure(
      logical(0),
      tags = list(location = "header", locationName = "Cache-Control", type = "string")
    ),
    ContentDisposition = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "Content-Disposition",
        type = "string"
      )
    ),
    ContentEncoding = structure(
      logical(0),
      tags = list(location = "header", locationName = "Content-Encoding", type = "string")
    ),
    ContentLanguage = structure(
      logical(0),
      tags = list(location = "header", locationName = "Content-Language", type = "string")
    ),
    ContentRange = structure(
      logical(0),
      tags = list(location = "header", locationName = "Content-Range", type = "string")
    ),
    ContentType = structure(
      logical(0),
      tags = list(location = "header", locationName = "Content-Type", type = "string")
    ),
    Expires = structure(
      logical(0),
      tags = list(location = "header", locationName = "Expires", type = "timestamp")
    ),
    WebsiteRedirectLocation = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-website-redirect-location",
        type = "string"
      )
    ),
    ServerSideEncryption = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-server-side-encryption",
        type = "string"
      )
    ),
    Metadata = structure(
      list(structure(logical(0), tags = list(type = "string"))),
      tags = list(location = "headers", locationName = "x-amz-meta-", type = "map")
    ),
    SSECustomerAlgorithm = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-server-side-encryption-customer-algorithm",
        type = "string"
      )
    ),
    SSECustomerKeyMD5 = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-server-side-encryption-customer-key-MD5",
        type = "string"
      )
    ),
    SSEKMSKeyId = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-server-side-encryption-aws-kms-key-id",
        type = "string",
        sensitive = TRUE
      )
    ),
    BucketKeyEnabled = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-server-side-encryption-bucket-key-enabled",
        type = "boolean"
      )
    ),
    StorageClass = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-storage-class",
        type = "string"
      )
    ),
    RequestCharged = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-request-charged",
        type = "string"
      )
    ),
    ReplicationStatus = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-replication-status",
        type = "string"
      )
    ),
    PartsCount = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-mp-parts-count",
        type = "integer"
      )
    ),
    TagCount = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-tagging-count",
        type = "integer"
      )
    ),
    ObjectLockMode = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-object-lock-mode",
        type = "string"
      )
    ),
    ObjectLockRetainUntilDate = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-object-lock-retain-until-date",
        type = "timestamp",
        timestampFormat = "iso8601"
      )
    ),
    ObjectLockLegalHoldStatus = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-object-lock-legal-hold",
        type = "string"
      )
    )
  ),
  tags = list(type = "structure", payload = "Body")
)

test_that("check generate_presigned_url with query string arguments of interest", {
  metadata <- list(
    endpoints = list(
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "s3.amazonaws.com",
        global = FALSE
      )
    ),
    service_name = "s3"
  )
  credentials <- Credentials(Creds(
    access_key_id = "DUMMY",
    secret_access_key = "SECRETDUMMY"
  ))
  client <- new_service(
    metadata,
    new_handlers("restxml", "s3"),
    Config(credentials, region = "us-east-1")
  )
  op <- new_operation(
    name = "GetObject",
    http_method = "GET",
    http_path = "/{Bucket}/{Key+}",
    paginator = list()
  )

  input <- get_object_input_params(
    Bucket = "foo",
    Key = "bar",
    VersionId = "something_made_up#"
  )
  output <- get_object_output_params
  req <- new_request(client, op, input, output)

  req$expire_time <- 3600L

  req <- build(req)
  req <- sign_v1_auth_query(req)
  actual <- build_url(req$http_request$url)
  expect_true(grepl(
    sprintf(
      "https://%s.s3.amazonaws.com/%s\\?versionId=%s&AWSAccessKeyId=%s&Expires=.*?&Signature=.*",
      "foo",
      "bar",
      "something_made_up%23",
      "DUMMY"
    ),
    actual
  ))
})
