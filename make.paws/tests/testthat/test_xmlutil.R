context("XML unmarshalling utilities")

test_that("unmarshal error", {
  data <- "<Error><Code>FooError</Code><Message>Foo</Message><RequestId>123</RequestId><HostId>ABC</HostId></Error>"
  out <- xml_unmarshal_error(xml_to_list(data))
  expect_equal(out$code, "FooError")
  expect_equal(out$message, "Foo")
})

test_that("unmarshal error no message", {
  data <- ""
  out <- xml_unmarshal_error(xml_to_list(data))
  expect_equal(out$code, "ServiceUnavailableException")
  expect_equal(out$message, "service is unavailable")
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
  expect_equivalent(result$Foo$Bar[[1]]$Baz$Qux, 123)
  expect_equivalent(result$Foo$Bar[[1]]$Baz$Quux, 456)
})
