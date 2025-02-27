test_that("add XML namespace", {
  object <- list(Foo = list(Bar = list(list(Baz = list(Qux = 123, Quux = 456)))))
  result <- add_xmlns(object, "https://foo/")
  expect_equal(attr(result, "xmlns"), "https://foo/")
  expect_equal(attr(result$Foo, "xmlns"), "https://foo/")
  expect_equal(attr(result$Foo$Bar, "xmlns"), "https://foo/")
  expect_equal(attr(result$Foo$Bar[[1]], "xmlns"), "https://foo/")
  expect_equal(attr(result$Foo$Bar[[1]]$Baz, "xmlns"), "https://foo/")
  expect_equal(attr(result$Foo$Bar[[1]]$Baz$Qux, "xmlns"), "https://foo/")
  expect_equal(attr(result$Foo$Bar[[1]]$Baz$Quux, "xmlns"), "https://foo/")
  expect_equal(result$Foo$Bar[[1]]$Baz$Qux, 123, ignore_attr = TRUE)
  expect_equal(result$Foo$Bar[[1]]$Baz$Quux, 456, ignore_attr = TRUE)
})

test_that("check xml build", {
  params <- structure(
    list(
      foo = structure(logical(0), tags = list(type = "string")),
      bar = structure(list())
    ),
    tags = list(type = "structure")
  )
  actual <- xml_build(params)
  expect_equal(actual, list(bar = list()))
})

test_that("check nested xml build", {
  params_nested <- structure(
    list(
      nested = structure(
        list(
          foo = structure(logical(0), tags = list(type = "string")),
          bar = structure(list())
        ),
        tags = list(type = "structure")
      )
    ),
    tags = list(type = "structure")
  )
  actual <- xml_build(params_nested)
  expect_equal(actual, list(nested = list(bar = list())))
})

test_that("check nested xml build with nested default parameters", {
  params_nested <- structure(
    list(
      nested = structure(
        list(
          foo = structure(
            list(bar = structure(logical(0))),
            tags = list(type = "string")
          ),
          cho = ""
        ),
        tags = list(type = "structure")
      )
    ),
    tags = list(type = "structure")
  )
  actual <- xml_build(params_nested)
  expect_equal(actual, list(nested = list(cho = list(""))))
})

test_that("check if list is transposed correctly", {
  obj1 <- list(var1 = c(1, 2, 3), var2 = letters[1:3], var3 = list(), var4 = list())
  expected1 <- list(
    list(var1 = 1, var2 = "a", var3 = NULL, var4 = NULL),
    list(var1 = 2, var2 = "b", var3 = NULL, var4 = NULL),
    list(var1 = 3, var2 = "c", var3 = NULL, var4 = NULL)
  )
  obj2 <- list(var1 = list(), var2 = letters[1:3], var3 = list(), var4 = c(1, 2, 3))
  expected2 <- list(
    list(var1 = NULL, var2 = "a", var3 = NULL, var4 = 1),
    list(var1 = NULL, var2 = "b", var3 = NULL, var4 = 2),
    list(var1 = NULL, var2 = "c", var3 = NULL, var4 = 3)
  )
  obj3 <- list(var1 = list(), var2 = letters[1:2], var3 = list(), var4 = c(1, 2, 3))
  expected3 <- list(
    list(var1 = NULL, var2 = "a", var3 = NULL, var4 = 1),
    list(var1 = NULL, var2 = "b", var3 = NULL, var4 = 2),
    list(var1 = NULL, var2 = NA_character_, var3 = NULL, var4 = 3)
  )
  actual1 <- transpose(obj1)
  actual2 <- transpose(obj2)
  actual3 <- transpose(obj3)

  expect_equal(actual1, expected1)
  expect_equal(actual2, expected2)
  expect_equal(actual3, expected3)
})
