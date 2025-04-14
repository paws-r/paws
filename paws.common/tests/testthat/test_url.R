test_that("parsing complex URL", {
  expected <- "https://user_1:password_1@example.org:8080/dir/../api?q=1#frag"
  expect_equal(build_url(parse_url(expected)), expected)
})

test_that("parsing and building URLs", {
  expected <- "https://example.com/a%20path%20with%20spaces"
  actual <- build_url(parse_url(expected))
  expect_equal(actual, expected)

  expected <- "https://example.com/a-path-without-spaces"
  actual <- build_url(parse_url(expected))
  expect_equal(actual, expected)

  expected <- "https://example.com/a-path-without-spaces?foo=bar&baz=qux"
  actual <- build_url(parse_url(expected))
  expect_equal(actual, expected)

  expected <- "https://example.com/a-path-without-spaces?foo=bar&baz=qux#frag1"
  actual <- build_url(parse_url(expected))
  expect_equal(actual, expected)
})

test_that("parse and build query strings", {
  # One parameter with a value, one without a value.
  expected <- "bar=baz&foo="
  actual <- build_query_string(parse_query_string(expected))
  expect_equal(actual, expected)
})

test_that("build_url no scheme or host", {
  input <- list(
    scheme = "",
    host = "",
    user = "user",
    password = "password",
    raw_path = "",
    path = "/a-path-without-space",
    raw_query = "foo=bar&baz=qux",
    fragment = "frag1"
  )
  expect_equal(build_url(input), "")
})

test_that("missing query values become empty strings", {
  expect_equal(parse_query_string("?q="), list(q = ""))
  expect_equal(parse_query_string("?q"), list(q = ""))
  expect_equal(parse_query_string("?q&p=1"), list(q = "", p = "1"))
  expect_equal(parse_query_string("?a&q"), list(a = "", q = ""))
})

test_that("empty queries become NULL", {
  expect_equal(parse_query_string("?"), list())
  expect_equal(parse_query_string(""), list())
})
