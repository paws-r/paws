test_that("checksum_digest matches known values", {
  body <- charToRaw("Hello World")

  expect_equal(checksum_digest(body, "CRC32"), "ShexVg==")
  expect_equal(checksum_digest(body, "crc32c"), "aR2qLw==")
  expect_equal(checksum_digest(body, "SHA1"), "Ck1VqNd45QIvq3AZd8XYQLvEhtA=")
  expect_equal(
    checksum_digest(body, "SHA256"),
    "pZGm1Av0IEBKARczz7exkNYsZb8LzaMrV7J32a2fFG4="
  )
  expect_equal(
    checksum_digest(body, "SHA512"),
    "LHT9F+2v2A6ER7DUZ0HuJDt+t03SFJoKsbkkb7MDgvJ+hT2FhXGeDmfL2g2qj1FnEGRhXWRa4nrLFb+xRH9Fmw=="
  )
  expect_equal(checksum_digest(body, "MD5"), "sQqNsWTgdUEFt6mb5y4/5Q==")
  expect_equal(checksum_digest(body, "XXHASH64"), "YzTSBxkkW8I=")
  expect_equal(checksum_digest(body, "XXHASH3"), "40YVqt4uYzM=")
  expect_equal(checksum_digest(body, "XXHASH128"), "QDODoVyZvu6aw68hJqACkg==")
})

test_that("checksum_digest defaults an empty/NULL body to raw(0)", {
  expect_equal(checksum_digest(raw(0), "SHA256"), checksum_digest(NULL, "SHA256"))
})

test_that("checksum_header_name maps to the x-amz-checksum-* header", {
  expect_equal(checksum_header_name("SHA256"), "x-amz-checksum-sha256")
  expect_equal(checksum_header_name("crc32c"), "x-amz-checksum-crc32c")
  expect_equal(checksum_header_name("XXHASH3"), "x-amz-checksum-xxhash3")
})

test_that("checksum_algorithm_spec errors on unsupported algorithms", {
  expect_error(checksum_algorithm_spec("CRC64NVME"), "Unsupported checksum algorithm")
  expect_error(checksum_algorithm_spec("bogus"), "Unsupported checksum algorithm")
})

test_that("has_checksum_header detects an existing x-amz-checksum-* header", {
  request <- list(http_request = list(header = list("x-amz-checksum-sha256" = "abc")))
  expect_true(has_checksum_header(request))

  request <- list(http_request = list(header = list("Content-Md5" = "abc")))
  expect_false(has_checksum_header(request))
})

#-------------------------------------------------------------------------------
# resolve_checksum_algorithm

base_checksum_request <- function(
  params = list(),
  request_checksum_required = FALSE,
  request_checksum_calculation = "when_supported",
  expire_time = 0
) {
  list(
    operation = list(
      http_checksum = list(
        request_algorithm_member = "ChecksumAlgorithm",
        request_algorithm_header = "x-amz-sdk-checksum-algorithm",
        request_checksum_required = request_checksum_required
      )
    ),
    params = params,
    config = list(request_checksum_calculation = request_checksum_calculation),
    context = list(),
    http_request = list(header = list()),
    expire_time = expire_time
  )
}

test_that("resolve_checksum_algorithm is a no-op when the operation has no httpChecksum trait", {
  request <- base_checksum_request()
  request$operation$http_checksum <- NULL
  result <- resolve_checksum_algorithm(request)
  expect_null(result$context$checksum$request_algorithm)
})

test_that("resolve_checksum_algorithm is a no-op when a checksum header is already set", {
  request <- base_checksum_request()
  request$http_request$header[["x-amz-checksum-sha256"]] <- "already-set"
  result <- resolve_checksum_algorithm(request)
  expect_null(result$context$checksum$request_algorithm)
})

test_that("resolve_checksum_algorithm uses the caller-supplied ChecksumAlgorithm", {
  request <- base_checksum_request(params = list(ChecksumAlgorithm = "sha256"))
  result <- resolve_checksum_algorithm(request)
  expect_equal(result$context$checksum$request_algorithm, "SHA256")
})

test_that("resolve_checksum_algorithm errors on an unsupported caller-supplied algorithm", {
  request <- base_checksum_request(params = list(ChecksumAlgorithm = "CRC64NVME"))
  expect_error(resolve_checksum_algorithm(request), "Unsupported checksum algorithm")
})

test_that("resolve_checksum_algorithm defaults to CRC32 when the operation requires a checksum", {
  request <- base_checksum_request(request_checksum_required = TRUE)
  result <- resolve_checksum_algorithm(request)
  expect_equal(result$context$checksum$request_algorithm, "CRC32")
})

test_that("resolve_checksum_algorithm defaults to CRC32 under request_checksum_calculation = when_supported", {
  request <- base_checksum_request(request_checksum_calculation = "when_supported")
  result <- resolve_checksum_algorithm(request)
  expect_equal(result$context$checksum$request_algorithm, "CRC32")
})

test_that("resolve_checksum_algorithm does not default under request_checksum_calculation = when_required", {
  request <- base_checksum_request(request_checksum_calculation = "when_required")
  result <- resolve_checksum_algorithm(request)
  expect_null(result$context$checksum$request_algorithm)
})

test_that("resolve_checksum_algorithm does not default an operation with no algorithm member and no requirement", {
  request <- base_checksum_request()
  request$operation$http_checksum$request_algorithm_member <- NULL
  result <- resolve_checksum_algorithm(request)
  expect_null(result$context$checksum$request_algorithm)
})

test_that("resolve_checksum_algorithm defaults correctly when config comes from set_config()", {
  # set_config() tags every Config scalar via tag_annotate()/populate() for
  # autocomplete, so this must compare equal despite the extra attribute.
  svc <- set_config(list(), list())
  request <- base_checksum_request()
  request$config <- svc$.internal$config
  result <- resolve_checksum_algorithm(request)
  expect_equal(result$context$checksum$request_algorithm, "CRC32")
})

test_that("resolve_checksum_algorithm skips defaulting for presigned requests", {
  request <- base_checksum_request(request_checksum_required = TRUE, expire_time = 123)
  result <- resolve_checksum_algorithm(request)
  expect_null(result$context$checksum$request_algorithm)
})

#-------------------------------------------------------------------------------
# apply_checksum_header

test_that("apply_checksum_header is a no-op when no algorithm was resolved", {
  request <- base_checksum_request()
  result <- apply_checksum_header(request)
  expect_equal(result$http_request$header, list())
})

test_that("apply_checksum_header sets the checksum header and the algorithm header", {
  request <- base_checksum_request()
  request$body <- charToRaw("Hello World")
  request$context$checksum$request_algorithm <- "SHA256"

  result <- apply_checksum_header(request)
  expect_equal(
    result$http_request$header[["x-amz-checksum-sha256"]],
    "pZGm1Av0IEBKARczz7exkNYsZb8LzaMrV7J32a2fFG4="
  )
  expect_equal(result$http_request$header[["x-amz-sdk-checksum-algorithm"]], "SHA256")
})

test_that("apply_checksum_header leaves an already-set algorithm header alone", {
  request <- base_checksum_request()
  request$body <- charToRaw("Hello World")
  request$context$checksum$request_algorithm <- "SHA256"
  request$http_request$header[["x-amz-sdk-checksum-algorithm"]] <- "SHA256"

  result <- apply_checksum_header(request)
  expect_equal(result$http_request$header[["x-amz-sdk-checksum-algorithm"]], "SHA256")
})

#-------------------------------------------------------------------------------
# Full build + sign pipeline, exercising the default handler wiring end to end.

checksum_test_creds <- Credentials(
  provider = list(function() {
    list(
      access_key_id = "AKID",
      secret_access_key = "SECRET",
      session_token = "SESSION",
      provider_name = "StaticProvider"
    )
  })
)

build_checksum_request <- function(body, checksum_algorithm = NULL, config = Config()) {
  metadata <- list(
    endpoints = list(
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "s3.amazonaws.com",
        global = FALSE
      )
    ),
    service_name = "s3"
  )
  op <- new_operation(
    name = "PutObject",
    http_method = "PUT",
    http_path = "/{Bucket}/{Key+}",
    paginator = list(),
    http_checksum = list(
      request_algorithm_member = "ChecksumAlgorithm",
      request_algorithm_header = "x-amz-sdk-checksum-algorithm",
      request_checksum_required = FALSE
    )
  )
  interface <- Structure(
    Body = structure(logical(0), tags = list(streaming = TRUE, type = "blob")),
    Bucket = structure(
      logical(0),
      tags = list(location = "uri", locationName = "Bucket", type = "string")
    ),
    Key = structure(
      logical(0),
      tags = list(location = "uri", locationName = "Key", type = "string")
    ),
    ChecksumAlgorithm = structure(
      logical(0),
      tags = list(
        location = "header",
        locationName = "x-amz-sdk-checksum-algorithm",
        type = "string"
      )
    ),
    .tags = list(payload = "Body")
  )
  input <- populate(
    list(
      Body = body,
      Bucket = "foo",
      Key = "bar",
      ChecksumAlgorithm = checksum_algorithm
    ),
    interface
  )
  output <- list()
  svc <- new_service(metadata, new_handlers("restxml", "s3"), config)
  svc$config$credentials <- checksum_test_creds
  svc$client_info$signing_region <- "us-east-1"
  request <- new_request(svc, op, input, output)
  return(request)
}

test_that("sign() computes and signs a caller-requested checksum header", {
  body <- charToRaw("Hello World")
  request <- build_checksum_request(body, checksum_algorithm = "SHA256")
  result <- sign(request)

  expect_equal(
    result$http_request$header[["x-amz-checksum-sha256"]],
    "pZGm1Av0IEBKARczz7exkNYsZb8LzaMrV7J32a2fFG4="
  )
  expect_match(
    result$http_request$header[["Authorization"]],
    "SignedHeaders=[^,]*x-amz-checksum-sha256"
  )
})

test_that("sign() defaults to a CRC32 checksum when none is requested, and skips Content-MD5", {
  # service_name = "s3" means customizations$s3 (content_md5) is also in play.
  body <- charToRaw("Hello World")
  request <- build_checksum_request(body)
  result <- sign(request)

  expect_equal(result$http_request$header[["x-amz-checksum-crc32"]], "ShexVg==")
  expect_equal(result$http_request$header[["x-amz-sdk-checksum-algorithm"]], "CRC32")
  expect_null(result$http_request$header[["Content-Md5"]])
  expect_match(
    result$http_request$header[["Authorization"]],
    "SignedHeaders=[^,]*x-amz-checksum-crc32"
  )
})

test_that("sign() adds no checksum when request_checksum_calculation = when_required", {
  body <- charToRaw("Hello World")
  config <- Config(request_checksum_calculation = "when_required")
  request <- build_checksum_request(body, config = config)
  result <- sign(request)

  expect_false(has_checksum_header(result))
})
