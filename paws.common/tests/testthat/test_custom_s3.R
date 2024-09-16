build_request <- function(bucket, operation) {
  metadata <- list(
    endpoints = list("*" = list(endpoint = "s3.amazonaws.com", global = FALSE)),
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
    endpoints = list("*" = list(endpoint = "s3.amazonaws.com", global = FALSE)),
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
      Bucket = structure(logical(0), tags = list(location = "uri", locationName = "Bucket", type = "string")),
      Key = structure(logical(0), tags = list(location = "uri", locationName = "Key", type = "string"))
    )
    return(populate(args, interface))
  }
  input <- op_input(
    Body = raw(0),
    Bucket = "foo",
    Key = "bar"
  )
  output <- list()
  svc <- new_service(metadata, new_handlers("restxml", "s3"))
  svc$handlers$build <- handlers_add_front(svc$handlers$build, content_md5)
  request <- new_request(svc, op, input, output)
  expect_error(result <- build(request), NA)

  actual <- result$http_request$header[["Content-Md5"]]
  expected <- base64enc::base64encode(digest::digest(raw(0), serialize = FALSE, raw = TRUE))
  expect_equal(actual, expected)
})

test_that("content_md5 leave existing Content-MD5 alone", {
  hash <- digest::digest(raw(0), serialize = FALSE, raw = TRUE)
  expect_hash <- base64enc::base64encode(hash)

  request <- list(
    "operation" = list(
      "name" = "PutObject"
    ),
    "http_request" = list(
      "header" = list(
        "Content-MD5" = expect_hash
      )
    ),
    body = raw(1)
  )

  actual <- content_md5(request)
  expect_equal(actual$http_request$header$`Content-MD5`, expect_hash)
})

test_that("content_md5 create new Content-Md5", {
  body <- raw(1)
  hash <- digest::digest(body, serialize = FALSE, raw = TRUE)
  expect_hash <- base64enc::base64encode(hash)

  request <- list(
    "operation" = list(
      "name" = "PutObject"
    ),
    body = body
  )

  actual <- content_md5(request)
  expect_equal(actual$http_request$header$`Content-Md5`, expect_hash)
})


test_that("s3_unmarshal_get_bucket_location", {
  op <- Operation(name = "GetBucketLocation")
  svc <- Client()
  svc$handlers$unmarshal <- HandlerList(
    restxml_unmarshal,
    s3_unmarshal_get_bucket_location
  )

  op_output1 <- Structure(
    LocationConstraint = Scalar(type = "character")
  )

  req <- new_request(svc, op, NULL, op_output1)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw('<?xml version="1.0" encoding="UTF-8"?>\n<LocationConstraint xmlns="http://s3.amazonaws.com/doc/2006-03-01/">us-west-2</LocationConstraint>')
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$LocationConstraint, "us-west-2")

  req <- new_request(svc, op, NULL, op_output1)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw('<?xml version="1.0" encoding="UTF-8"?>\n<LocationConstraint xmlns="http://s3.amazonaws.com/doc/2006-03-01/"/>')
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$LocationConstraint, "us-east-1")

  req <- new_request(svc, op, NULL, op_output1)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw('<?xml version="1.0" encoding="UTF-8"?>\n<LocationConstraint xmlns="http://s3.amazonaws.com/doc/2006-03-01/">EU</LocationConstraint>')
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$LocationConstraint, "eu-west-1")
})

test_that("s3_unmarshal_select_object_content", {
  op <- Operation(name = "SelectObjectContent")
  svc <- Client()
  svc$handlers$unmarshal <- HandlerList(
    s3_unmarshal_select_object_content,
    restxml_unmarshal
  )

  op_output2 <- Structure(
    Payload = Structure(
      Records = Structure(
        Payload = Scalar(.tags = list(eventpayload = TRUE, type = "blob"))
      ),
      Stats = Structure(
        Details = Structure(
          BytesScanned = Scalar(.tags = list(type = "long")),
          BytesProcessed = Scalar(.tags = list(type = "long")),
          BytesReturned = Scalar(.tags = list(type = "long")),
          .tags = list(eventpayload = TRUE)
        )
      ),
      Progress = Structure(
        Details = Structure(
          BytesScanned = Scalar(.tags = list(type = "long")),
          BytesProcessed = Scalar(.tags = list(type = "long")),
          BytesReturned = Scalar(.tags = list(type = "long")),
          .tags = list(eventpayload = TRUE)
        )
      ),
      Cont = Scalar(.tags = list(event = TRUE)),
      End = Scalar(.tags = list(event = TRUE))
    ),
    .tags = list(payload = "Payload")
  )

  body <- as.raw(
    c(
      0x00, 0x00, 0x00, 0x6b, 0x00, 0x00, 0x00, 0x55, 0x90,
      0xc1, 0x3c, 0x4e, 0x0d, 0x3a, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67,
      0x65, 0x2d, 0x74, 0x79, 0x70, 0x65, 0x07, 0x00, 0x05, 0x65, 0x76,
      0x65, 0x6e, 0x74, 0x0b, 0x3a, 0x65, 0x76, 0x65, 0x6e, 0x74, 0x2d,
      0x74, 0x79, 0x70, 0x65, 0x07, 0x00, 0x07, 0x52, 0x65, 0x63, 0x6f,
      0x72, 0x64, 0x73, 0x0d, 0x3a, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e,
      0x74, 0x2d, 0x74, 0x79, 0x70, 0x65, 0x07, 0x00, 0x18, 0x61, 0x70,
      0x70, 0x6c, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x2f, 0x6f,
      0x63, 0x74, 0x65, 0x74, 0x2d, 0x73, 0x74, 0x72, 0x65, 0x61, 0x6d,
      0x31, 0x0a, 0x32, 0x0a, 0x33, 0x0a, 0x60, 0x17, 0xc3, 0x4c, 0x00,
      0x00, 0x00, 0xcd, 0x00, 0x00, 0x00, 0x43, 0x9b, 0x72, 0xe3, 0x29,
      0x0d, 0x3a, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x2d, 0x74,
      0x79, 0x70, 0x65, 0x07, 0x00, 0x05, 0x65, 0x76, 0x65, 0x6e, 0x74,
      0x0b, 0x3a, 0x65, 0x76, 0x65, 0x6e, 0x74, 0x2d, 0x74, 0x79, 0x70,
      0x65, 0x07, 0x00, 0x05, 0x53, 0x74, 0x61, 0x74, 0x73, 0x0d, 0x3a,
      0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x2d, 0x74, 0x79, 0x70,
      0x65, 0x07, 0x00, 0x08, 0x74, 0x65, 0x78, 0x74, 0x2f, 0x78, 0x6d,
      0x6c, 0x3c, 0x53, 0x74, 0x61, 0x74, 0x73, 0x20, 0x78, 0x6d, 0x6c,
      0x6e, 0x73, 0x3d, 0x22, 0x22, 0x3e, 0x3c, 0x42, 0x79, 0x74, 0x65,
      0x73, 0x53, 0x63, 0x61, 0x6e, 0x6e, 0x65, 0x64, 0x3e, 0x31, 0x30,
      0x3c, 0x2f, 0x42, 0x79, 0x74, 0x65, 0x73, 0x53, 0x63, 0x61, 0x6e,
      0x6e, 0x65, 0x64, 0x3e, 0x3c, 0x42, 0x79, 0x74, 0x65, 0x73, 0x50,
      0x72, 0x6f, 0x63, 0x65, 0x73, 0x73, 0x65, 0x64, 0x3e, 0x31, 0x30,
      0x3c, 0x2f, 0x42, 0x79, 0x74, 0x65, 0x73, 0x50, 0x72, 0x6f, 0x63,
      0x65, 0x73, 0x73, 0x65, 0x64, 0x3e, 0x3c, 0x42, 0x79, 0x74, 0x65,
      0x73, 0x52, 0x65, 0x74, 0x75, 0x72, 0x6e, 0x65, 0x64, 0x3e, 0x36,
      0x3c, 0x2f, 0x42, 0x79, 0x74, 0x65, 0x73, 0x52, 0x65, 0x74, 0x75,
      0x72, 0x6e, 0x65, 0x64, 0x3e, 0x3c, 0x2f, 0x53, 0x74, 0x61, 0x74,
      0x73, 0x3e, 0x40, 0xc6, 0x94, 0x33, 0x00, 0x00, 0x00, 0x38, 0x00,
      0x00, 0x00, 0x28, 0xc1, 0xc6, 0x84, 0xd4, 0x0d, 0x3a, 0x6d, 0x65,
      0x73, 0x73, 0x61, 0x67, 0x65, 0x2d, 0x74, 0x79, 0x70, 0x65, 0x07,
      0x00, 0x05, 0x65, 0x76, 0x65, 0x6e, 0x74, 0x0b, 0x3a, 0x65, 0x76,
      0x65, 0x6e, 0x74, 0x2d, 0x74, 0x79, 0x70, 0x65, 0x07, 0x00, 0x03,
      0x45, 0x6e, 0x64, 0xcf, 0x97, 0xd3, 0x92
    )
  )

  req <- new_request(svc, op, NULL, op_output2)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = body
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Payload$Records$Payload, "1\n2\n3\n", ignore_attr = TRUE)
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
    header = list(
      "x-amz-bucket-region" = "eu-east-2"
    )
  )
  req$context$s3_redirect <- TRUE
  actual <- s3_redirect_from_error(req)
  expect_equal(actual, req)
})

test_that("default to head_bucket for final region check", {
  raw_error <- charToRaw(paste0(
    "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error><Code>PermanentRedirect</Code>",
    "<Message>Dummy Error</Message><Endpoint>foo.s3.us-east-2.amazonaws.com</Endpoint>",
    "<Bucket>foo</Bucket></Error>"
  ))
  req <- build_request(bucket = "foo", operation = "ListObjects")
  req$http_response <- HttpResponse(
    status_code = 301,
    body = raw_error
  )
  mock_head_bucket <- mock2(list(BucketRegion = "bar"))
  mock_s3 <- mock2(list(head_bucket = mock_head_bucket))
  mockery::stub(s3_get_bucket_region, "s3", mock_s3)

  error <- decode_xml(raw_error)$Error

  actual <- s3_get_bucket_region(req, error, "foo")

  head_bucket_args <- mockery::mock_args(mock_head_bucket)[[1]]
  expect_equal(head_bucket_args, list(Bucket = "foo"))
  expect_equal(actual, "bar")
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
    header = list(
      "x-amz-bucket-region" = "eu-east-2"
    )
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

test_that("redirect error with region", {
  req <- build_request(bucket = "foo", operation = "ListObjects")
  req$http_response <- HttpResponse(
    status_code = 301,
    body = charToRaw(paste0(
      "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error><Code>PermanentRedirect</Code>",
      "<Message>Dummy Error</Message><Endpoint>foo.s3.us-east-2.amazonaws.com</Endpoint>",
      "<Bucket>foo</Bucket></Error>"
    )),
    header = list(
      "x-amz-bucket-region" = "eu-east-2"
    )
  )

  error <- s3_unmarshal_error(req)$error

  expect_equal(error$code, "BucketRegionError")
  expect_true(
    grepl("incorrect region.*bucket is in 'eu-east-2' region", error$message)
  )
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
  expect_true(
    grepl("incorrect region", error$message)
  )
  expect_equal(error$status_code, 301)
})


build_copy_object_request <- function(bucket, key, copy_source) {
  metadata <- list(
    endpoints = list("*" = list(endpoint = "s3.amazonaws.com", global = FALSE)),
    service_name = "s3"
  )
  svc <- new_service(metadata, new_handlers("restxml", "s3"))
  op <- new_operation(
    name = "CopyObject",
    http_method = "GET",
    http_path = "/{Bucket}",
    paginator = list()
  )
  input <- tag_add(list(Bucket = bucket, Key = key, CopySource = copy_source), list(type = "structure"))
  output <- list()
  request <- new_request(svc, op, input, output)
  return(request)
}

test_that("check CopySource character encoded", {
  req <- build_copy_object_request(
    bucket = "foo", key = "file.txt", copy_source = "/foo/%01file%/output.txt"
  )

  req <- handle_copy_source_param(req)
  expect_equal(req$params$CopySource, "/foo/%2501file%25/output.txt")
})

test_that("check CopySource only quote url path not version id", {
  req <- build_copy_object_request(
    bucket = "foo", key = "file.txt", copy_source = "/foo/bar++baz?versionId=123"
  )
  req <- handle_copy_source_param(req)
  expect_equal(req$params$CopySource, "/foo/bar%2B%2Bbaz?versionId=123")
})

test_that("check CopySource only version id is special cased", {
  req <- build_copy_object_request(
    bucket = "foo", key = "file.txt", copy_source = "/foo/bar++baz?notVersion=foo+"
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
    bucket = "foo", key = "file.txt", copy_source = "/foo/bar+baz?a=baz+?versionId=a+"
  )
  req <- handle_copy_source_param(req)
  expect_equal(req$params$CopySource, "/foo/bar%2Bbaz%3Fa%3Dbaz%2B?versionId=a+")
})


test_that("check CopySource list encoded", {
  req <- build_copy_object_request(
    bucket = "foo",
    key = "file.txt",
    copy_source = list(
      Bucket = "foo",
      Key = "%01file%/output.txt"
    )
  )

  req <- handle_copy_source_param(req)
  expect_equal(req$params$CopySource, "foo/%2501file%25/output.txt")
})

test_that("check CopySource list versionId encoded", {
  req <- build_copy_object_request(
    bucket = "foo",
    key = "file.txt",
    copy_source = list(
      Bucket = "foo",
      Key = "%01file%/output.txt",
      VersionId = "123"
    )
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
    copy_source = list(
      Key = "%01file%/output.txt"
    )
  )
  req2 <- build_copy_object_request(
    bucket = "foo",
    key = "file.txt",
    copy_source = list(
      Bucket = "foo"
    )
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
