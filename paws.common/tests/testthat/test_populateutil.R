test_that("Structure", {
  foo <- Structure(a = 1, b = 2)
  expect_equal(tag_get(foo, "type"), "structure")
  expect_equal(foo, list(a = 1, b = 2), ignore_attr = TRUE)

  expect_error(Structure(1, 2, 3))
})

test_that("List", {
  foo <- List()
  expect_equal(tag_get(foo, "type"), "list")

  bar <- List(1, 2)
  expect_equal(bar, list(1, 2), ignore_attr = TRUE)

  expect_error(List(a = 1, b = 2))
})

test_that("Map", {
  foo <- Map()
  expect_equal(tag_get(foo, "type"), "map")

  bar <- Map(list(Name = "foo", Value = 1), list(Name = "bar", Value = 2))
  expect_equal(bar, list(list(Name = "foo", Value = 1), list(Name = "bar", Value = 2)), ignore_attr = TRUE)

  expect_error(Map(a = 1, b = 2))
})

test_that("Scalar", {
  foo <- Scalar()
  expect_equal(tag_get(foo, "type"), "scalar")

  bar <- Scalar("foo")
  expect_equal(bar, "foo", ignore_attr = TRUE)

  expect_error(Scalar(c(1, 2)))
  expect_error(Scalar(list()))
  expect_error(Scalar(list(1)))
})
