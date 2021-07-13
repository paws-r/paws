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

  req <- build_request(bucket = "foo-bar", operation = "ListObjects")
  result <- update_endpoint_for_s3_config(req)
  expect_equal(result$http_request$url$host, "foo-bar.s3.amazonaws.com")

  # Use a path style URL if the config specifies path style.
  req <- build_request(bucket = "foo-bar", operation = "ListObjects")
  req$config$s3_force_path_style <- TRUE
  result <- update_endpoint_for_s3_config(req)
  expect_equal(result$http_request$url$host, "s3.amazonaws.com")

  # Use a path style URL if the config has a custom endpoint.
  req <- build_request(bucket = "foo-bar", operation = "ListObjects")
  req$config$endpoint <- "localhost:9000"
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

  actual <- result$http_request$header["Content-Md5"]
  expected <- base64enc::base64encode(digest::digest(raw(0), serialize = FALSE, raw = TRUE))
  expect_equivalent(actual, expected)
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
    c(0x00, 0x00, 0x00, 0x6b, 0x00, 0x00, 0x00, 0x55, 0x90,
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
      0x45, 0x6e, 0x64, 0xcf, 0x97, 0xd3, 0x92)
  )

  req <- new_request(svc, op, NULL, op_output2)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = body
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equivalent(out$Payload$Records$Payload, "1\n2\n3\n")
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
