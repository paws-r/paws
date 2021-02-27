test_that("validate_endpoint_handler no endpoint", {
  svc <- Client()
  svc$config$region <- "us-west-2"
  svc$handlers$validate <- HandlerList(validate_endpoint_handler)
  req <- new_request(svc, Operation(name = "Operation"), NULL, NULL)
  ret <- build(req)
  expect_true(!is.null(ret$error))
})

test_that("validate_endpoint_handler no region", {
  svc <- Client()
  svc$handlers$validate <- HandlerList(validate_endpoint_handler)
  req <- new_request(svc, Operation(name = "Operation"), NULL, NULL)
  ret <- build(req)
  expect_true(!is.null(ret$error))
})

test_that("build_content_length_handler", {
  r <- Request()
  r$body <- "foo"
  out <- build_content_length_handler(r)
  expect_equal(out$http_request$content_length, 3)
  expect_equal(out$http_request$header[["Content-Length"]], "3")

  r <- Request()
  r$body <- charToRaw("foo")
  out <- build_content_length_handler(r)
  expect_equal(out$http_request$content_length, 3)
  expect_equal(out$http_request$header[["Content-Length"]], "3")

  r <- Request()
  r$body <- 123
  out <- build_content_length_handler(r)
  expect_equal(out$http_request$content_length, 0)
  expect_null(out$http_request$header[["Content-Length"]])

  r <- Request()
  r$http_request$header[["Content-Length"]] <- "123"
  out <- build_content_length_handler(r)
  expect_equal(out$http_request$content_length, 123)
})

test_that("validate_response_handler", {
  r <- Request()
  r$http_response <- HttpResponse(status_code = 200)
  out <- validate_response_handler(r)
  expect_null(out$error)

  r <- Request()
  r$http_response <- HttpResponse(status_code = "200")
  out <- validate_response_handler(r)
  expect_null(out$error)

  r <- Request()
  r$http_response <- HttpResponse(status_code = 400)
  out <- validate_response_handler(r)
  expect_true(!is.null(out$error))

  r <- Request()
  r$http_response <- HttpResponse(status_code = "500")
  out <- validate_response_handler(r)
  expect_true(!is.null(out$error))
})
