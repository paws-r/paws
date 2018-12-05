context("Tags")

test_that("add tags to an object without tags", {
  a <- list()
  b <- add_tags(list(foo = "abc", bar = 123, baz = list(qux = "xyz")), a)
  expect_equal(get_tag(b, "foo"), "abc")
  expect_equal(get_tag(b, "bar"), 123)
  expect_equal(get_tag(b, "baz"), list(qux = "xyz"))
})

test_that("add tags to an object with tags", {
  a <- list()
  b <- add_tags(list(foo = "abc", bar = 123, baz = list(qux = "xyz")), a)
  c <- add_tags(list(bar = 456), b)
  expect_equal(get_tag(c, "foo"), "abc")
  expect_equal(get_tag(c, "bar"), 456)
  expect_equal(get_tag(c, "baz"), list(qux = "xyz"))
})
