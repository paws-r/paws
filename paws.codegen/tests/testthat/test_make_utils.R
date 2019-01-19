context("Make utilities")

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
