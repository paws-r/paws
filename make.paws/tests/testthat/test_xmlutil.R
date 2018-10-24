context("XML unmarshalling utilities")

test_that("unmarshal error", {
  data <- "<ErrorResponse>\n  <Error>\n    <Type>Sender</Type>\n    <Code>FooError</Code>\n    <Message>Foo</Message>\n  </Error>\n  <RequestId>123</RequestId>\n</ErrorResponse>\n"
  out <- xml_unmarshal_error(data)
  expect_equal(out$code, "FooError")
  expect_equal(out$message, "Foo")
})
