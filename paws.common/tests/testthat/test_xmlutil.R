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
