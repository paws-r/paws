test_that("add tags to an object without tags", {
  a <- list()
  tags <- list(foo = "abc", bar = 123, baz = list(qux = "xyz"))
  b <- tag_add(a, tags)
  expect_equal(tag_get(b, "foo"), "abc")
  expect_equal(tag_get(b, "bar"), 123)
  expect_equal(tag_get(b, "baz"), list(qux = "xyz"))
  expect_equal(tag_get_all(b), tags)
})

test_that("add tags to an object with tags", {
  a <- list()
  b <- tag_add(a, list(foo = "abc", bar = 123, baz = list(qux = "xyz")))
  c <- tag_add(b, list(bar = 456))
  expect_equal(tag_get(c, "foo"), "abc")
  expect_equal(tag_get(c, "bar"), 456)
  expect_equal(tag_get(c, "baz"), list(qux = "xyz"))
})

test_that("delete all tags", {
  inner1 <- list(foo = 1)
  inner1 <- tag_add(inner1, list(test = "list_item_tag"))
  inner2 <- list(foo = 2)
  inner2 <- tag_add(inner2, list(test = "list_item_tag"))
  inner3 <- list(foo = 3)
  inner3 <- tag_add(inner3, list(test = "list_item_tag"))
  inner <- list(inner1, inner2, inner3)
  inner <- tag_add(inner, list(test = "list_tag"))

  outer <- list(inner = inner)
  outer <- tag_add(outer, list(test = "structure_tag"))

  expect_equal(tag_get(outer, "test"), "structure_tag")
  expect_equal(tag_get(outer$inner, "test"), "list_tag")

  result <- tag_del(outer)

  expect_equal(tag_get(result, "test"), "")
  expect_equal(tag_get(result$inner, "test"), "")
  expect_equal(tag_get(result$inner[[1]], "test"), "")
  expect_equal(result$inner[[2]]$foo, 2)
})

test_that("delete some tags", {
  inner1 <- list(foo = 1)
  inner1 <- tag_add(inner1, list(foo1 = "list_item_tag"))
  inner2 <- list(foo = 2)
  inner2 <- tag_add(inner2, list(foo2 = "list_item_tag"))
  inner3 <- list(foo = 3)
  inner3 <- tag_add(inner3, list(foo2 = "list_item_tag"))
  inner <- list(inner1, inner2, inner3)
  inner <- tag_add(inner, list(bar1 = "list_tag"))

  outer <- list(inner = inner)
  outer <- tag_add(outer, list(bar1 = "structure_tag"))

  expect_equal(tag_get(outer, "bar1"), "structure_tag")
  expect_equal(tag_get(outer$inner, "bar1"), "list_tag")
  expect_equal(tag_get(outer$inner[[1]], "foo1"), "list_item_tag")
  expect_equal(tag_get(outer$inner[[2]], "foo1"), "")
  expect_equal(tag_get(outer$inner[[3]], "foo1"), "")
  expect_equal(tag_get(outer$inner[[1]], "foo2"), "")
  expect_equal(tag_get(outer$inner[[2]], "foo2"), "list_item_tag")
  expect_equal(tag_get(outer$inner[[3]], "foo2"), "list_item_tag")

  result <- tag_del(outer, "foo2")

  expect_equal(tag_get(outer, "bar1"), "structure_tag")
  expect_equal(tag_get(outer$inner, "bar1"), "list_tag")
  expect_equal(tag_get(result$inner[[1]], "foo1"), "list_item_tag")
  expect_equal(tag_get(result$inner[[2]], "foo1"), "")
  expect_equal(tag_get(result$inner[[3]], "foo1"), "")
  expect_equal(tag_get(result$inner[[1]], "foo2"), "")
  expect_equal(tag_get(result$inner[[2]], "foo2"), "")
  expect_equal(tag_get(result$inner[[3]], "foo2"), "")
})

#-------------------------------------------------------------------------------

test_that("types", {
  expect_equal(type(List()), "list")
  expect_equal(type(Map()), "map")
  expect_equal(type(Scalar()), "scalar")
  expect_equal(type(Structure(Foo = logical(0))), "structure")

  expect_equal(type(c(1, 2)), "list")
  expect_equal(type(list(1, 2, 3)), "list")
  expect_equal(type(1), "scalar")
  expect_equal(type(c(a = 1, b = 2, c = 3)), "structure")
  expect_equal(type(list(a = 1, b = 2, c = 3)), "structure")
})
