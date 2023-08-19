test_that("add XML namespace", {
  object <- list(
    Foo = list(
      Bar = list(
        list(
          Baz = list(
            Qux = 123,
            Quux = 456
          )
        )
      )
    )
  )
  result <- add_xmlns(object, "https://foo/")
  expect_equal(attr(result, "xmlns"), "https://foo/")
  expect_equal(attr(result$Foo, "xmlns"), "https://foo/")
  expect_equal(attr(result$Foo$Bar, "xmlns"), "https://foo/")
  expect_equal(attr(result$Foo$Bar[[1]], "xmlns"), "https://foo/")
  expect_equal(attr(result$Foo$Bar[[1]]$Baz, "xmlns"), "https://foo/")
  expect_equal(attr(result$Foo$Bar[[1]]$Baz$Qux, "xmlns"), "https://foo/")
  expect_equal(attr(result$Foo$Bar[[1]]$Baz$Quux, "xmlns"), "https://foo/")
  expect_equivalent(result$Foo$Bar[[1]]$Baz$Qux, 123)
  expect_equivalent(result$Foo$Bar[[1]]$Baz$Quux, 456)
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
          foo = structure(list(
            bar = structure(logical(0))
          ), tags = list(type = "string")),
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
