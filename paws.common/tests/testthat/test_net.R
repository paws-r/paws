test_that("issue", {
  # Avoid CRAN check errors due to unavailable network resources.
  skip_on_cran()

  req <- HttpRequest(
    method = "GET",
    url = parse_url("https://httpbin.org/json")
  )
  resp <- issue(req)
  expect_equal(resp$status_code, 200)
  expect_error(body <- jsonlite::fromJSON(rawToChar(resp$body)), NA)
  expect_equal(body$slideshow$title, "Sample Slide Show")
})

test_that("timeout", {
  req <- HttpRequest(
    method = "GET",
    url = parse_url("https://example.com:81"),
    timeout = 1
  )
  quietly <- function(expr) suppressMessages(tryCatch(expr, error = function(e) {}))
  time <- system.time({
    quietly(issue(req))
  })
  expect_equivalent(time["elapsed"], 1, tolerance = 0.5)
})

test_that("timeout does not affect established connections", {
  # Avoid CRAN check errors due to unavailable network resources.
  skip_on_cran()

  req <- HttpRequest(
    method = "GET",
    url = parse_url("https://httpbin.org/delay/3"),
    timeout = 1
  )
  resp <- issue(req)
  expect_equal(resp$status_code, 200)
})

test_that("don't decompress the body when already decompressed", {
  # Avoid CRAN check errors due to unavailable network resources.
  skip_on_cran()

  req <- HttpRequest(
    method = "GET",
    url = parse_url("https://httpbin.org/gzip")
  )
  expect_error(resp <- issue(req), NA)
  expect_equal(resp$status_code, 200)
  expect_error(body <- jsonlite::fromJSON(rawToChar(resp$body)), NA)
  expect_equal(body$gzipped, TRUE)
})
