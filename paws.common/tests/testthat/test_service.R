context("Service")

test_that("new_handlers", {
  contains <- function(list, object) {
    any(sapply(list$list, function(x) identical(x$fn, object)))
  }

  example <- list(list = list(list(fn = 1), list(fn = 2)))
  expect_true(contains(example, 1))
  expect_false(contains(example, 3))

  handlers <- new_handlers("ec2query", "v4")
  expect_equal(names(handlers), names(Handlers()))
  expect_true(contains(handlers$unmarshal, ec2query_unmarshal))
  expect_true(contains(handlers$sign, v4_sign_request_handler))

  handlers <- new_handlers("jsonrpc", "v2")
  expect_true(contains(handlers$build, jsonrpc_build))
  expect_true(contains(handlers$sign, v2_sign_request_handler))

  expect_error(new_handlers("foo", "v4"))
  expect_error(new_handlers("ec2query", "foo"))
})

test_that("new_service", {
  metadata <- list(
    service_name = "foo",
    endpoints = list("region" = "endpoint"),
    service_id = "bar",
    api_version = "1",
    signing_name = "foobar",
    json_version = "2",
    target_prefix = "baz"
  )
  handlers <- new_handlers("restxml", "v4")
  service <- new_service(metadata, handlers)

  expect_equal(names(service$client_info), names(ClientInfo()))
  expect_equal(names(service$config), names(Config()))
  expect_equal(names(service$handlers), names(Handlers()))

  expect_equal(service$client_info$service_name, metadata$service_name)
  expect_equal(service$client_info$service_id, metadata$service_id)
  expect_equal(service$client_info$signing_name, metadata$signing_name)
})
