context("Tags")

test_that("add tags to an object without tags", {
  a <- list()
  b <- tag_add(a, list(foo = "abc", bar = 123, baz = list(qux = "xyz")))
  expect_equal(tag_get(b, "foo"), "abc")
  expect_equal(tag_get(b, "bar"), 123)
  expect_equal(tag_get(b, "baz"), list(qux = "xyz"))
})

test_that("add tags to an object with tags", {
  a <- list()
  b <- tag_add(a, list(foo = "abc", bar = 123, baz = list(qux = "xyz")))
  c <- tag_add(b, list(bar = 456))
  expect_equal(tag_get(c, "foo"), "abc")
  expect_equal(tag_get(c, "bar"), 456)
  expect_equal(tag_get(c, "baz"), list(qux = "xyz"))
})

test_that("delete tags", {
  inner <- list(foo = 123)
  inner <- tag_add(inner, list(bar = 456))
  outer <- list(inner = inner)
  outer <- tag_add(outer, list(baz = "abc"))

  expect_equal(tag_get(outer, "baz"), "abc")
  expect_equal(tag_get(outer$inner, "bar"), 456)

  result <- tag_del(outer)

  expect_equal(tag_get(result, "baz"), "")
  expect_equal(tag_get(result$inner, "bar"), "")
  expect_equal(result$inner$foo, 123)
})
