context("XML unmarshalling utilities")

test_that("unmarshal error", {
  data <- "<ErrorResponse>\n  <Error>\n    <Type>Sender</Type>\n    <Code>FooError</Code>\n    <Message>Foo</Message>\n  </Error>\n  <RequestId>123</RequestId>\n</ErrorResponse>\n"
  out <- xml_unmarshal_error(xml_to_list(data))
  expect_equal(out$code, "FooError")
  expect_equal(out$message, "Foo")
})

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
  expect_equal(get_tag(result, "xmlns"), "https://foo/")
  expect_equal(get_tag(result$Foo, "xmlns"), "https://foo/")
  expect_equal(get_tag(result$Foo$Bar, "xmlns"), "https://foo/")
  expect_equal(get_tag(result$Foo$Bar[[1]], "xmlns"), "https://foo/")
  expect_equal(get_tag(result$Foo$Bar[[1]]$Baz, "xmlns"), "https://foo/")
  expect_equal(get_tag(result$Foo$Bar[[1]]$Baz$Qux, "xmlns"), "https://foo/")
  expect_equal(get_tag(result$Foo$Bar[[1]]$Baz$Quux, "xmlns"), "https://foo/")
})
