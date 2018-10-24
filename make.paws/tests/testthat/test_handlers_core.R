context("Handlers - Core")

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
