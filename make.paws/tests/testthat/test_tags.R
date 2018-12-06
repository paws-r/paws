context("Tags")

test_that("add tags to an object without tags", {
  a <- list()
  b <- add_tags(a, list(foo = "abc", bar = 123, baz = list(qux = "xyz")))
  expect_equal(get_tag(b, "foo"), "abc")
  expect_equal(get_tag(b, "bar"), 123)
  expect_equal(get_tag(b, "baz"), list(qux = "xyz"))
})

test_that("add tags to an object with tags", {
  a <- list()
  b <- add_tags(a, list(foo = "abc", bar = 123, baz = list(qux = "xyz")))
  c <- add_tags(b, list(bar = 456))
  expect_equal(get_tag(c, "foo"), "abc")
  expect_equal(get_tag(c, "bar"), 456)
  expect_equal(get_tag(c, "baz"), list(qux = "xyz"))
})

test_that("remove_tags", {
  inner <- list(foo = 123)
  inner <- add_tags(inner, list(bar = 456))
  outer <- list(inner = inner)
  outer <- add_tags(outer, list(baz = "abc"))

  expect_equal(get_tag(outer, "baz"), "abc")
  expect_equal(get_tag(outer$inner, "bar"), 456)

  result <- remove_tags(outer)

  expect_equal(get_tag(result, "baz"), "")
  expect_equal(get_tag(result$inner, "bar"), "")
  expect_equal(result$inner$foo, 123)
})
