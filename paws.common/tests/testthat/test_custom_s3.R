build_request <- function(bucket, operation) {
  metadata <- list(
    endpoints = list(
      "aws-global" = list(endpoint = "s3.amazonaws.com", global = TRUE),
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "s3.amazonaws.com",
        global = FALSE
      )
    ),
    service_name = "s3"
  )
  svc <- new_service(metadata, new_handlers("restxml", "s3"))
  op <- new_operation(
    name = operation,
    http_method = "GET",
    http_path = "/{Bucket}",
    paginator = list()
  )
  input <- tag_add(list(Bucket = bucket), list(type = "structure"))
  output <- list()
  request <- new_request(svc, op, input, output)
  return(request)
}

test_that("update_endpoint_for_s3_config", {
  req <- build_request(bucket = "foo", operation = "ListObjects")
  result <- update_endpoint_for_s3_config(req)
  expect_equal(result$http_request$url$host, "foo.s3.amazonaws.com")

  # Don't modify URL when using custom host
  req <- build_request(bucket = "foo-bar", operation = "ListObjects")
  req$client_info$custom_endpoint <- TRUE
  result <- update_endpoint_for_s3_config(req)
  expect_equal(result$http_request$url$host, "s3.amazonaws.com")

  req <- build_request(bucket = "foo-bar", operation = "ListObjects")
  result <- update_endpoint_for_s3_config(req)
  expect_equal(result$http_request$url$host, "foo-bar.s3.amazonaws.com")

  # Use a path style URL if the config specifies path style.
  req <- build_request(bucket = "foo-bar", operation = "ListObjects")
  req$config$s3_force_path_style <- TRUE
  result <- update_endpoint_for_s3_config(req)
  expect_equal(result$http_request$url$host, "s3.amazonaws.com")

  # Use a path style URL if the bucket name is not DNS compatible.
  req <- build_request(bucket = "foo.bar", operation = "ListObjects")
  result <- update_endpoint_for_s3_config(req)
  expect_equal(result$http_request$url$host, "s3.amazonaws.com")

  # Use a path style URL for GetBucketLocation specifically.
  req <- build_request(bucket = "foo-bar", operation = "GetBucketLocation")
  result <- update_endpoint_for_s3_config(req)
  expect_equal(result$http_request$url$host, "s3.amazonaws.com")
})

test_that("content_md5 works with an empty body", {
  metadata <- list(
    endpoints = list(
      "aws-global" = list(endpoint = "s3.amazonaws.com", global = TRUE),
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "s3.{region}.amazonaws.com",
        global = FALSE
      )
    ),
    service_name = "s3"
  )
  op <- new_operation(
    name = "PutObject",
    http_method = "PUT",
    http_path = "/{Bucket}/{Key+}",
    paginator = list()
  )
  op_input <- function(Body, Bucket, Key) {
    args <- list(Body = Body, Bucket = Bucket, Key = Key)
    interface <- Structure(
      Body = structure(logical(0), tags = list(streaming = TRUE, type = "blob")),
      Bucket = structure(
        logical(0),
        tags = list(location = "uri", locationName = "Bucket", type = "string")
      ),
      Key = structure(
        logical(0),
        tags = list(location = "uri", locationName = "Key", type = "string")
      )
    )
    return(populate(args, interface))
  }
  input <- op_input(Body = raw(0), Bucket = "foo", Key = "bar")
  output <- list()
  svc <- new_service(metadata, new_handlers("restxml", "s3"))
  svc$handlers$build <- handlers_add_front(svc$handlers$build, content_md5)
  request <- new_request(svc, op, input, output)
  expect_error(result <- build(request), NA)

  actual <- result$http_request$header[["Content-Md5"]]
  expected <- base64enc::base64encode(digest::digest(
    raw(0),
    serialize = FALSE,
    raw = TRUE
  ))
  expect_equal(actual, expected)
})

test_that("content_md5 leave existing Content-MD5 alone", {
  hash <- digest::digest(raw(0), serialize = FALSE, raw = TRUE)
  expect_hash <- base64enc::base64encode(hash)

  request <- list(
    "operation" = list("name" = "PutObject"),
    "http_request" = list("header" = list("Content-MD5" = expect_hash)),
    body = raw(1)
  )

  actual <- content_md5(request)
  expect_equal(actual$http_request$header$`Content-MD5`, expect_hash)
})

test_that("content_md5 create new Content-Md5", {
  body <- raw(1)
  hash <- digest::digest(body, serialize = FALSE, raw = TRUE)
  expect_hash <- base64enc::base64encode(hash)

  request <- list("operation" = list("name" = "PutObject"), body = body)

  actual <- content_md5(request)
  expect_equal(actual$http_request$header$`Content-Md5`, expect_hash)
})

test_that("content_md5 skips when a flexible checksum will be applied instead", {
  request <- list(
    "operation" = list("name" = "PutObject"),
    body = raw(1),
    context = list(checksum = list(request_algorithm = "CRC32"))
  )

  actual <- content_md5(request)
  expect_null(actual$http_request$header$`Content-Md5`)
})

test_that("s3_unmarshal_get_bucket_location", {
  op <- Operation(name = "GetBucketLocation")
  svc <- Client()
  svc$handlers$unmarshal <- HandlerList(
    restxml_unmarshal,
    s3_unmarshal_get_bucket_location
  )

  op_output1 <- Structure(LocationConstraint = Scalar(type = "character"))

  req <- new_request(svc, op, NULL, op_output1)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw(
      '<?xml version="1.0" encoding="UTF-8"?>\n<LocationConstraint xmlns="http://s3.amazonaws.com/doc/2006-03-01/">us-west-2</LocationConstraint>'
    )
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$LocationConstraint, "us-west-2")

  req <- new_request(svc, op, NULL, op_output1)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw(
      '<?xml version="1.0" encoding="UTF-8"?>\n<LocationConstraint xmlns="http://s3.amazonaws.com/doc/2006-03-01/"/>'
    )
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$LocationConstraint, "us-east-1")

  req <- new_request(svc, op, NULL, op_output1)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw(
      '<?xml version="1.0" encoding="UTF-8"?>\n<LocationConstraint xmlns="http://s3.amazonaws.com/doc/2006-03-01/">EU</LocationConstraint>'
    )
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$LocationConstraint, "eu-west-1")
})

test_that("S3 access points", {
  access_point_arn <- "arn:aws:s3:us-west-2:123456789012:accesspoint/test"
  host <- "test-123456789012.s3-accesspoint.us-west-2.amazonaws.com"

  req <- build_request(bucket = access_point_arn, operation = "ListObjects")
  actual <- update_endpoint_for_s3_config(req)
  expect_equal(actual$http_request$url$host, host)

  access_point_arn <- "arn:aws:s3:us-west-2:123456789012:accesspoint/test/object/unit-01"
  host <- "test-123456789012.s3-accesspoint.us-west-2.amazonaws.com"

  req <- build_request(bucket = access_point_arn, operation = "ListObjects")
  actual <- update_endpoint_for_s3_config(req)
  expect_equal(actual$http_request$url$host, host)
  expect_equal(actual$client_info$signing_name, "s3")
  expect_equal(actual$client_info$signing_region, "us-west-2")
})

test_that("S3 on Outposts access points", {
  outpost_arn <- paste0(
    "arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456",
    "/accesspoint/test"
  )
  host <- "test-123456789012.op-01234567890123456.s3-outposts.us-west-2.amazonaws.com"

  req <- build_request(bucket = outpost_arn, operation = "ListObjects")
  actual <- update_endpoint_for_s3_config(req)
  expect_equal(actual$http_request$url$host, host)
  expect_equal(actual$client_info$signing_name, "s3-outposts")
  expect_equal(actual$client_info$signing_region, "us-west-2")
})

test_that("S3 Object Lambda access points", {
  olap_arn <- "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/test"
  host <- "test-123456789012.s3-object-lambda.us-west-2.amazonaws.com"

  req <- build_request(bucket = olap_arn, operation = "ListObjects")
  actual <- update_endpoint_for_s3_config(req)
  expect_equal(actual$http_request$url$host, host)
  expect_equal(actual$client_info$signing_name, "s3-object-lambda")
  expect_equal(actual$client_info$signing_region, "us-west-2")
})

test_that("S3 ARN endpoints respect the partition DNS suffix", {
  outpost_arn <- paste0(
    "arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost/op-01234567890123456",
    "/accesspoint/test"
  )
  host <- "test-123456789012.op-01234567890123456.s3-outposts.cn-north-1.amazonaws.com.cn"

  req <- build_request(bucket = outpost_arn, operation = "ListObjects")
  actual <- update_endpoint_for_s3_config(req)
  expect_equal(actual$http_request$url$host, host)
})

test_that("update url endpoint with new endpoint", {
  org_ep <- "https://s3.eu-east-2.amazonaws.com"
  new_ep <- "https://s3.amazonaws.com"
  actual <- set_request_url(org_ep, new_ep)
  expect_equal(actual, new_ep)
})

test_that("update url endpoint with new endpoint without new scheme", {
  org_ep <- "https://s3.eu-east-2.amazonaws.com"
  new_ep <- "sftp://s3.amazonaws.com"
  actual <- set_request_url(org_ep, new_ep, FALSE)
  expect_equal(actual, "https://s3.amazonaws.com")
})

test_that("ignore redirect when no http response is given", {
  req <- build_request(bucket = "foo", operation = "ListObjects")
  actual <- s3_redirect_from_error(req)
  expect_equal(actual, req)
})

test_that("ignore redirect when http status is successful", {
  for (status in c(200, 201, 202, 204, 206)) {
    req <- build_request(bucket = "foo", operation = "ListObjects")
    req$http_response <- HttpResponse(
      status_code = status,
      body = raw(0),
      header = list()
    )
    actual <- s3_redirect_from_error(req)
    expect_equal(actual, req)
  }
})

test_that("ignore redirect if already redirected", {
  req <- build_request(bucket = "foo", operation = "ListObjects")
  req$http_response <- HttpResponse(
    status_code = 301,
    body = charToRaw(paste0(
      "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error><Code>PermanentRedirect</Code>",
      "<Message>Dummy Error</Message><Endpoint>foo.s3.us-east-2.amazonaws.com</Endpoint>",
      "<Bucket>foo</Bucket></Error>"
    )),
    header = list("x-amz-bucket-region" = "eu-east-2")
  )
  req$context$s3_redirect <- TRUE
  actual <- s3_redirect_from_error(req)
  expect_equal(actual, req)
})

# A built config for a client with static credentials, as `request$config` is.
bucket_region_config <- function() {
  s3(list(
    region = "us-east-1",
    credentials = list(creds = list(access_key_id = "AKID", secret_access_key = "SECRET"))
  ))$.internal$config
}

head_bucket_region_mock <- function(env, region = "bar") {
  function(req) {
    env$requests <- c(env$requests, list(req))
    httr2::response(200L, headers = list("x-amz-bucket-region" = region))
  }
}

test_that("default to head_bucket for final region check", {
  raw_error <- charToRaw(paste0(
    "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error><Code>PermanentRedirect</Code>",
    "<Message>Dummy Error</Message><Endpoint>foo.s3.us-east-2.amazonaws.com</Endpoint>",
    "<Bucket>foo</Bucket></Error>"
  ))
  req <- build_request(bucket = "foo", operation = "ListObjects")
  req$config <- bucket_region_config()
  req$http_response <- HttpResponse(status_code = 301, body = raw_error)
  error <- decode_xml(raw_error)$Error
  seen <- new.env()

  actual <- httr2::with_mocked_responses(
    head_bucket_region_mock(seen),
    s3_get_bucket_region(req, error, "foo")
  )

  expect_equal(actual, "bar")
  expect_length(seen$requests, 1)
  expect_equal(seen$requests[[1]]$method, "HEAD")
  expect_match(httr2::url_parse(seen$requests[[1]]$url)$hostname, "foo")
  # signed with the credentials from the request's config
  expect_match(seen$requests[[1]]$headers$Authorization, "Credential=AKID/")
})

test_that("the bucket region lookup works when the redirect has no region", {
  req <- build_request(bucket = "foo", operation = "ListObjects")
  req$config <- bucket_region_config()
  req$http_response <- HttpResponse(status_code = 301, body = raw(0), header = list())
  seen <- new.env()

  actual <- httr2::with_mocked_responses(
    head_bucket_region_mock(seen, "eu-west-1"),
    s3_get_bucket_region(req, list(), "foo")
  )

  expect_equal(actual, "eu-west-1")
})

test_that("the bucket region lookup sends even for a request_only config", {
  req <- build_request(bucket = "foo", operation = "ListObjects")
  req$config <- bucket_region_config()
  req$config$send <- FALSE
  req$http_response <- HttpResponse(status_code = 301, body = raw(0), header = list())
  seen <- new.env()

  actual <- httr2::with_mocked_responses(
    head_bucket_region_mock(seen, "eu-west-1"),
    s3_get_bucket_region(req, list(), "foo")
  )

  expect_equal(actual, "eu-west-1")
  expect_length(seen$requests, 1)
  # the caller's config is left as it was
  expect_false(req$config$send)
})

test_that("the bucket region lookup uses the config as it is, without rebuilding it", {
  req <- build_request(bucket = "foo", operation = "ListObjects")
  req$config <- bucket_region_config()
  req$http_response <- HttpResponse(status_code = 301, body = raw(0), header = list())
  seen <- new.env()
  # Not something a rebuilt config would accept (`set_config()` rejects unknown
  # names), but it must be left alone, as must everything cached in the
  # credentials environment.
  req$config$credentials$marker <- "cached in the credentials environment"

  actual <- httr2::with_mocked_responses(
    head_bucket_region_mock(seen),
    s3_get_bucket_region(req, list(), "foo")
  )

  expect_equal(actual, "bar")
  expect_equal(req$config$credentials$marker, "cached in the credentials environment")
})

test_that("redirect request from http response error", {
  req <- build_request(bucket = "foo", operation = "ListObjects")
  req$http_response <- HttpResponse(
    status_code = 301,
    body = charToRaw(paste0(
      "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error><Code>PermanentRedirect</Code>",
      "<Message>Dummy Error</Message><Endpoint>foo.s3.us-east-2.amazonaws.com</Endpoint>",
      "<Bucket>foo</Bucket></Error>"
    )),
    header = list("x-amz-bucket-region" = "eu-east-2")
  )

  pass <- mock2(side_effect = function(...) as.list(...))
  mockery::stub(s3_redirect_from_error, "sign", pass)
  mockery::stub(s3_redirect_from_error, "send", pass)

  actual <- s3_redirect_from_error(req)
  sign_args <- mockery::mock_args(pass)[[1]]
  expect_true(sign_args[[1]]$context$s3_redirect)
  expect_false(sign_args[[1]]$built)
  expect_equal(actual$client_info$endpoint, "https://s3.eu-east-2.amazonaws.com")
  expect_equal(actual$http_request$url$host, "s3.eu-east-2.amazonaws.com")
})

reset_s3_region_cache <- function() {
  rm(list = names(s3_region_cache), envir = s3_region_cache)
}

local_s3_region_cache <- function(env = parent.frame()) {
  reset_s3_region_cache()
  withr::defer(reset_s3_region_cache(), envir = env)
}

test_that("a redirect remembers the bucket's region", {
  local_s3_region_cache()
  req <- build_request(bucket = "foo", operation = "ListObjects")
  req$http_response <- HttpResponse(
    status_code = 301,
    body = charToRaw(paste0(
      "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error><Code>PermanentRedirect</Code>",
      "<Message>Dummy Error</Message><Endpoint>foo.s3.us-east-2.amazonaws.com</Endpoint>",
      "<Bucket>foo</Bucket></Error>"
    )),
    header = list("x-amz-bucket-region" = "eu-east-2")
  )
  pass <- mock2(side_effect = function(...) as.list(...))
  mockery::stub(s3_redirect_from_error, "sign", pass)
  mockery::stub(s3_redirect_from_error, "send", pass)

  s3_redirect_from_error(req)

  expect_equal(s3_region_cache[["/foo"]], "eu-east-2")
})

test_that("a cached bucket region is used for later requests", {
  local_s3_region_cache()
  s3_region_cache[["/foo"]] <- "eu-east-2"
  req <- build_request(bucket = "foo", operation = "ListObjects")

  actual <- s3_redirect_from_cache(req)

  expect_equal(actual$client_info$signing_region, "eu-east-2")
  expect_equal(actual$client_info$endpoint, "https://s3.eu-east-2.amazonaws.com")
  expect_equal(actual$http_request$url$host, "s3.eu-east-2.amazonaws.com")
  # not marked as redirected, so a stale entry can still be corrected
  expect_null(actual$context$s3_redirect)
})

test_that("the cached region is applied before the endpoint is built", {
  local_s3_region_cache()
  s3_region_cache[["/foo"]] <- "eu-east-2"
  req <- build_request(bucket = "foo", operation = "ListObjects")
  expect_identical(req$handlers$build$list[[1]]$fn, s3_redirect_from_cache)
})

test_that("the region cache is ignored when it should be", {
  local_s3_region_cache()
  s3_region_cache[["/foo"]] <- "eu-east-2"
  s3_region_cache[["/arn:aws:s3:us-west-2:123456789012:accesspoint:ap"]] <- "eu-east-2"
  s3_region_cache[["aws/foo"]] <- "ap-south-1"

  # no entry for this bucket
  req <- build_request(bucket = "bar", operation = "ListObjects")
  expect_identical(s3_redirect_from_cache(req), req)

  # already in the cached region
  req <- build_request(bucket = "foo", operation = "ListObjects")
  req$client_info$signing_region <- "eu-east-2"
  expect_identical(s3_redirect_from_cache(req), req)

  # a custom endpoint is the user's choice
  req <- build_request(bucket = "foo", operation = "ListObjects")
  req$client_info$custom_endpoint <- TRUE
  expect_identical(s3_redirect_from_cache(req), req)

  # a request that was already redirected has its region
  req <- build_request(bucket = "foo", operation = "ListObjects")
  req$context$s3_redirect <- TRUE
  expect_identical(s3_redirect_from_cache(req), req)

  # access point ARNs carry their own region
  req <- build_request(
    bucket = "arn:aws:s3:us-west-2:123456789012:accesspoint:ap",
    operation = "ListObjects"
  )
  expect_identical(s3_redirect_from_cache(req), req)

  # entries are per partition: "aws/foo" does not apply to a client with no partition
  req <- build_request(bucket = "foo", operation = "ListObjects")
  req$config$partition_name <- "aws-cn"
  expect_identical(s3_redirect_from_cache(req), req)
})

test_that("paws_reset_cache clears the bucket regions", {
  local_s3_region_cache()
  s3_region_cache[["/foo"]] <- "eu-east-2"
  paws_reset_cache()
  expect_length(names(s3_region_cache), 0)
})

# An S3 client in us-east-1 and a function that lists the bucket "foo" with it.
redirect_test_client <- function() {
  metadata <- list(
    endpoints = list(
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "s3.{region}.amazonaws.com",
        global = FALSE
      )
    ),
    service_name = "s3"
  )
  client <- new_service(metadata, new_handlers("restxml", "s3"), Config())
  client$config$region <- "us-east-1"
  client$config$partition_name <- "aws"
  client$client_info$signing_region <- "us-east-1"
  client$config$credentials <- Credentials(
    provider = list(function() {
      list(
        access_key_id = "AKID",
        secret_access_key = "SECRET",
        session_token = "SESSION",
        provider_name = "StaticProvider"
      )
    })
  )
  op <- new_operation("ListObjects", "GET", "/{Bucket}", list())
  list_objects <- function() {
    input <- tag_add(list(Bucket = "foo"), list(type = "structure"))
    output <- tag_add(list(), list(type = "structure"))
    send_request(new_request(client, op, input, output))
  }

  return(list_objects)
}

# Answers like S3: the bucket lives in eu-west-1, any other region redirects there.
redirecting_mock <- function(env) {
  function(req) {
    host <- httr2::url_parse(req$url)$hostname
    env$hosts <- c(env$hosts, host)
    if (grepl("eu-west-1", host)) {
      return(httr2::response(200L, body = charToRaw("<ListBucketResult/>")))
    }
    httr2::response(
      301L,
      headers = list(
        "x-amz-bucket-region" = "eu-west-1",
        "content-type" = "application/xml"
      ),
      body = charToRaw(
        "<Error><Code>PermanentRedirect</Code><Message>m</Message></Error>"
      )
    )
  }
}

test_that("after one redirect later requests go straight to the bucket's region", {
  local_s3_region_cache()
  list_objects <- redirect_test_client()
  seen <- new.env()
  seen$hosts <- character()
  mock <- redirecting_mock(seen)

  httr2::with_mocked_responses(mock, {
    list_objects()
    list_objects()
    list_objects()
  })
  # the first request is redirected; the next two are sent to the right region
  expect_equal(
    seen$hosts,
    c(
      "foo.s3.us-east-1.amazonaws.com",
      "foo.s3.eu-west-1.amazonaws.com",
      "foo.s3.eu-west-1.amazonaws.com",
      "foo.s3.eu-west-1.amazonaws.com"
    )
  )

  # forgetting the region brings the redirect back
  paws_reset_cache()
  seen$hosts <- character()
  httr2::with_mocked_responses(mock, list_objects())
  expect_equal(
    seen$hosts,
    c("foo.s3.us-east-1.amazonaws.com", "foo.s3.eu-west-1.amazonaws.com")
  )
})

test_that("a stale cached region is corrected by the next redirect", {
  local_s3_region_cache()
  list_objects <- redirect_test_client()
  # the bucket moved: the cache says ap-south-1 but it is in eu-west-1
  s3_region_cache[["aws/foo"]] <- "ap-south-1"
  seen <- new.env()
  seen$hosts <- character()
  mock <- redirecting_mock(seen)

  httr2::with_mocked_responses(mock, {
    list_objects()
    list_objects()
  })

  # the stale entry sends the first request to ap-south-1, which redirects once;
  # the entry is then replaced, so the second request goes straight to eu-west-1
  expect_equal(
    seen$hosts,
    c(
      "foo.s3.ap-south-1.amazonaws.com",
      "foo.s3.eu-west-1.amazonaws.com",
      "foo.s3.eu-west-1.amazonaws.com"
    )
  )
  expect_equal(s3_region_cache[["aws/foo"]], "eu-west-1")
})

test_that("redirect error with region", {
  req <- build_request(bucket = "foo", operation = "ListObjects")
  req$http_response <- HttpResponse(
    status_code = 301,
    body = charToRaw(paste0(
      "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error><Code>PermanentRedirect</Code>",
      "<Message>Dummy Error</Message><Endpoint>foo.s3.us-east-2.amazonaws.com</Endpoint>",
      "<Bucket>foo</Bucket></Error>"
    )),
    header = list("x-amz-bucket-region" = "eu-east-2")
  )

  error <- s3_unmarshal_error(req)$error

  expect_equal(error$code, "BucketRegionError")
  expect_true(grepl("incorrect region.*bucket is in 'eu-east-2' region", error$message))
  expect_equal(error$status_code, 301)
})

test_that("redirect error without region", {
  req <- build_request(bucket = "foo", operation = "ListObjects")
  req$http_response <- HttpResponse(
    status_code = 301,
    body = charToRaw(paste0(
      "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error><Code>PermanentRedirect</Code>",
      "<Message>Dummy Error</Message><Endpoint>foo.s3.us-east-2.amazonaws.com</Endpoint>",
      "<Bucket>foo</Bucket></Error>"
    ))
  )

  error <- s3_unmarshal_error(req)$error

  expect_equal(error$code, "BucketRegionError")
  expect_true(grepl("incorrect region", error$message))
  expect_equal(error$status_code, 301)
})

build_copy_object_request <- function(bucket, key, copy_source) {
  metadata <- list(
    endpoints = list(
      "aws-global" = list(endpoint = "s3.amazonaws.com", global = TRUE),
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "s3.{region}.amazonaws.com",
        global = FALSE
      )
    ),
    service_name = "s3"
  )
  svc <- new_service(metadata, new_handlers("restxml", "s3"))
  op <- new_operation(
    name = "CopyObject",
    http_method = "GET",
    http_path = "/{Bucket}",
    paginator = list()
  )
  input <- tag_add(
    list(Bucket = bucket, Key = key, CopySource = copy_source),
    list(type = "structure")
  )
  output <- list()
  request <- new_request(svc, op, input, output)
  return(request)
}

test_that("check CopySource character encoded", {
  req <- build_copy_object_request(
    bucket = "foo",
    key = "file.txt",
    copy_source = "/foo/%01file%/output.txt"
  )

  req <- handle_copy_source_param(req)
  expect_equal(req$params$CopySource, "/foo/%2501file%25/output.txt")
})

test_that("check CopySource only quote url path not version id", {
  req <- build_copy_object_request(
    bucket = "foo",
    key = "file.txt",
    copy_source = "/foo/bar++baz?versionId=123"
  )
  req <- handle_copy_source_param(req)
  expect_equal(req$params$CopySource, "/foo/bar%2B%2Bbaz?versionId=123")
})

test_that("check CopySource only version id is special cased", {
  req <- build_copy_object_request(
    bucket = "foo",
    key = "file.txt",
    copy_source = "/foo/bar++baz?notVersion=foo+"
  )
  req <- handle_copy_source_param(req)
  expect_equal(req$params$CopySource, "/foo/bar%2B%2Bbaz%3FnotVersion%3Dfoo%2B")
})

test_that("check CopySource character versionId encoded", {
  req <- build_copy_object_request(
    bucket = "foo",
    key = "file.txt",
    copy_source = "/foo/%01file%/output.txt?versionId=123"
  )

  req <- handle_copy_source_param(req)
  expect_equal(req$params$CopySource, "/foo/%2501file%25/output.txt?versionId=123")
})

test_that("check CopySource with multiple questions", {
  req <- build_copy_object_request(
    bucket = "foo",
    key = "file.txt",
    copy_source = "/foo/bar+baz?a=baz+?versionId=a+"
  )
  req <- handle_copy_source_param(req)
  expect_equal(req$params$CopySource, "/foo/bar%2Bbaz%3Fa%3Dbaz%2B?versionId=a+")
})

test_that("check CopySource list encoded", {
  req <- build_copy_object_request(
    bucket = "foo",
    key = "file.txt",
    copy_source = list(Bucket = "foo", Key = "%01file%/output.txt")
  )

  req <- handle_copy_source_param(req)
  expect_equal(req$params$CopySource, "foo/%2501file%25/output.txt")
})

test_that("check CopySource list versionId encoded", {
  req <- build_copy_object_request(
    bucket = "foo",
    key = "file.txt",
    copy_source = list(Bucket = "foo", Key = "%01file%/output.txt", VersionId = "123")
  )

  req <- handle_copy_source_param(req)
  expect_equal(req$params$CopySource, "foo/%2501file%25/output.txt?versionId=123")
})

test_that("check CopySource list bucket s3 access point", {
  req <- build_copy_object_request(
    bucket = "foo",
    key = "file.txt",
    copy_source = list(
      Bucket = "arn:aws:s3:us-west-2:123456789012:accesspoint/test",
      Key = "%01file%/output.txt"
    )
  )

  req <- handle_copy_source_param(req)
  expect_equal(
    req$params$CopySource,
    "arn%3Aaws%3As3%3Aus-west-2%3A123456789012%3Aaccesspoint/test/object/%2501file%25/output.txt"
  )
})

test_that("check CopySource list missing params", {
  req1 <- build_copy_object_request(
    bucket = "foo",
    key = "file.txt",
    copy_source = list(Key = "%01file%/output.txt")
  )
  req2 <- build_copy_object_request(
    bucket = "foo",
    key = "file.txt",
    copy_source = list(Bucket = "foo")
  )
  expect_error(
    handle_copy_source_param(req1),
    "CopySource list is missing required parameter: Bucket"
  )
  expect_error(
    handle_copy_source_param(req2),
    "CopySource list is missing required parameter: Key"
  )
})
