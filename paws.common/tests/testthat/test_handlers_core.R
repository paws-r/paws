test_that("validate_endpoint_handler no endpoint", {
  svc <- Client()
  svc$config$region <- "us-west-2"
  svc$handlers$validate <- HandlerList(validate_endpoint_handler)
  req <- new_request(svc, Operation(name = "Operation"), NULL, NULL)
  ret <- build(req)
  expect_false(is.null(ret$error))
})

test_that("validate_endpoint_handler no region", {
  svc <- Client()
  svc$handlers$validate <- HandlerList(validate_endpoint_handler)
  req <- new_request(svc, Operation(name = "Operation"), NULL, NULL)
  ret <- build(req)
  expect_false(is.null(ret$error))
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
  expect_false(is.null(out$error))

  r <- Request()
  r$http_response <- HttpResponse(status_code = "500")
  out <- validate_response_handler(r)
  expect_false(is.null(out$error))
})

expect_user_agent <- function(request) {
  paws_version <- utils::packageVersion("paws.common")
  r_version <- getRversion()
  r_os <- R.Version()$os
  r_arch <- R.Version()$arch
  user_agent <- sprintf("paws/%s (R%s; %s; %s)", paws_version, r_version, r_os, r_arch)
  return(user_agent)
}

test_that("check if user agent string is built correctly", {
  mock_assign <- mock2()
  mockery::stub(set_user_agent, "assign", mock_assign)
  set_user_agent("paws.common")
  expected <- expect_user_agent()
  actual <- mockery::mock_args(mock_assign)[[1]][[2]]
  expect_equal(actual, expected)
})
