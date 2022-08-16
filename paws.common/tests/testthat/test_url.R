test_that("parsing and building URLs", {
  input <- "https://example.com/a%20path%20with%20spaces"
  actual <- build_url(parse_url(input))
  expected <- input
  expect_equal(actual, expected)

  input <- "https://example.com/a-path-without-spaces"
  actual <- build_url(parse_url(input))
  expected <- input
  expect_equal(actual, expected)
})

test_that("parse and build query strings", {
  # One parameter with a value, one without a value.
  input <- "bar=baz&foo="
  actual <- build_query_string(parse_query_string(input))
  expected <- input
  expect_equal(actual, expected)
})
