context("Make utilities")

test_that("snake_case", {
  expect_equal(snake_case("foo"), "foo")
  expect_equal(snake_case("Foo"), "foo")
  expect_equal(snake_case("FooBar"), "foo_bar")
  expect_equal(snake_case("BarBAZ"), "bar_baz")
  expect_equal(snake_case("BARBaz"), "bar_baz")
  expect_equal(snake_case("FOOBAR"), "foobar")
})

test_that("get_operation_name", {
  operation <- list(name = "TestName")
  ret <- get_operation_name(operation)
  expect_equal(ret, "test_name")
})

test_that("merge_examples", {
  api <- list(
    operations = list(
      operation1 = list(),
      operation2 = list()
    )
  )
  examples <- list(
    operation1 = list(
      list(description = "foo")
    ),
    operation2 = list(
      list(description = "bar")
    )
  )
  ret <- merge_examples(api, examples)
  expect_equal(ret$operations$operation1$examples[[1]]$description, "foo")
  expect_equal(ret$operations$operation2$examples[[1]]$description, "bar")
})

test_that("translate", {
  expect_equal(translate("foo baz", list("foo" = "bar")), "bar baz")
  expect_equal(translate("foo foobar baz", list("foo" = "bar")), "bar foobar baz")

  expect_equal(translate("foo baz", list(".foo" = "bar")), "foo baz")
  expect_equal(translate(".foo baz", list(".foo" = "bar")), "bar baz")
  expect_equal(translate("foo baz", list("foo." = "bar")), "foo baz")
  expect_equal(translate("foo. baz", list("foo." = "bar")), "bar baz")

  input <- "foo bar"
  translations <- list("foo" = "baz", "bar" = list(a = 1, b = 2))
  output <- "baz list(a = 1, b = 2)"
  expect_equal(translate(input, translations), output)
})
