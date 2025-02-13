test_that("clean_path", {
  url <- Url(path = "//foo//bar", scheme = "https", host = "host")
  actual <- build_url(clean_path(url))
  expected <- "https://host/foo/bar"
  expect_equal(actual, expected)
})

test_that("escape_path", {
  string <- "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~`!@#$%^&*()=+[{]}\\|;:'\",<>/?"
  actual <- escape_path(string, FALSE)
  expected <- "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~%60%21%40%23%24%25%5E%26%2A%28%29%3D%2B%5B%7B%5D%7D%5C%7C%3B%3A%27%22%2C%3C%3E/%3F"
  expect_equal(actual, expected)
})

svc <- Client(client_info = ClientInfo(endpoint = "https://test"))
svc$handlers$build <- HandlerList(rest_build)

test_that("build request with URL requiring escaping", {
  # TODO: the Unicode characters aren't handled correctly on some CRAN servers.
  skip_on_cran()

  op1 <- Operation(
    name = "OperationName",
    http_method = "GET",
    http_path = "/{bucket}/{key+}"
  )
  op_input1 <- function(Bucket, Key) {
    args <- list(Bucket = Bucket, Key = Key)
    interface <- Structure(
      Bucket = Scalar(
        type = "string",
        .tags = list(location = "uri", locationName = "bucket")
      ),
      Key = Scalar(type = "string", .tags = list(location = "uri", locationName = "key"))
    )
    return(populate(args, interface))
  }
  input <- op_input1(Bucket = "mybucket", Key = "my/cool+thing space/object世界")
  req <- new_request(svc, op1, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(r$url$path, "/mybucket/my/cool+thing space/object世界")
  expect_equal(
    r$url$raw_path,
    "/mybucket/my/cool%2Bthing%20space/object%E4%B8%96%E7%95%8C"
  )
})

test_that("build request with URL", {
  op1 <- Operation(name = "OperationName", http_method = "GET", http_path = "/{foo}")
  op_input1 <- function(foo) {
    args <- list(foo = foo)
    interface <- Structure(foo = Scalar(type = "string", .tags = list(location = "uri")))
    return(populate(args, interface))
  }
  input <- op_input1(foo = "bar")
  req <- new_request(svc, op1, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(r$url$path, "/bar")
})
