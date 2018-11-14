context("API name functions")

test_that("get_operation_name", {
  operation <- list(name = "TestName")
  ret <- get_operation_name(operation)
  expect_equal(ret, "test_name")
})

test_that("snake_case", {
  expect_equal(snake_case("foo"), "foo")
  expect_equal(snake_case("Foo"), "foo")
  expect_equal(snake_case("FooBar"), "foo_bar")
  expect_equal(snake_case("BarBAZ"), "bar_baz")
  expect_equal(snake_case("BARBaz"), "bar_baz")
  expect_equal(snake_case("FOOBAR"), "foobar")
})
