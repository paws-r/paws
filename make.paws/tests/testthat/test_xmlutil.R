context("XML unmarshalling utilities")

request <- list()

test_that("unmarshal error", {
  data <- "<Error><Code>FooError</Code><Message>Foo</Message><RequestId>123</RequestId><HostId>ABC</HostId></Error>"
  request$http_response$body <- charToRaw(data)
  request <- query_unmarshal_error(request)
  out <- request$error
  expect_equal(out$code, "FooError")
  expect_equal(out$message, "Foo")
})

test_that("unmarshal error no message", {
  data <- ""
  request$http_response$body <- charToRaw(data)
  request <- query_unmarshal_error(request)
  out <- request$error
  expect_equal(out$code, "SerializationError")
  expect_equal(out$message, "failed to read from query HTTP response body")
})

test_that("unmarshal error wrong shape", {
  data <- "<Foo><Code>FooError</Code><Message>Foo</Message><RequestId>123</RequestId><HostId>ABC</HostId></Foo>"
  request$http_response$body <- charToRaw(data)
  request <- query_unmarshal_error(request)
  out <- request$error
  expect_equal(out$code, "SerializationError")
  expect_equal(out$message, "failed to decode query XML error response")
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
