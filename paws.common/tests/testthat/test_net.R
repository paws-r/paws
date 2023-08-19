test_that("issue", {
  # Avoid CRAN check errors due to unavailable network resources.
  skip_on_cran()

  req <- HttpRequest(
    method = "GET",
    url = parse_url("https://httpbin.org/json")
  )
  resp <- issue(req)

  # skip if network flaky
  if (resp$status_code == 200) {
    expect_equal(resp$status_code, 200)
    expect_error(body <- jsonlite::fromJSON(rawToChar(resp$body)), NA)
    expect_equal(body$slideshow$title, "Sample Slide Show")
  }
})

test_that("connect_timeout", {
  req <- HttpRequest(
    method = "GET",
    url = parse_url("https://example.com:81"),
    connect_timeout = 1
  )
  quietly <- function(expr) suppressMessages(tryCatch(expr, error = function(e) {}))
  time <- system.time({
    quietly(issue(req))
  })
  expect_equivalent(time["elapsed"], 1, tolerance = 0.5)
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

test_that("connect_timeout does not affect established connections", {
  # Avoid CRAN check errors due to unavailable network resources.
  skip_on_cran()

  req <- HttpRequest(
    method = "GET",
    url = parse_url("https://httpbin.org/delay/3"),
    connect_timeout = 1
  )
  resp <- issue(req)

  # skip if network flaky
  if (resp$status_code == 200) {
    expect_equal(resp$status_code, 200)
  }
})

test_that("don't decompress the body when already decompressed", {
  # Avoid CRAN check errors due to unavailable network resources.
  skip_on_cran()

  req <- HttpRequest(
    method = "GET",
    url = parse_url("https://httpbin.org/gzip")
  )

  expect_error(resp <- issue(req), NA)

  # skip if network flaky
  if (resp$status_code == 200) {
    expect_equal(resp$status_code, 200)
    expect_error(body <- jsonlite::fromJSON(rawToChar(resp$body)), NA)
    expect_equal(body$gzipped, TRUE)
  }
})

test_that("write content to disk", {
  # Avoid CRAN check errors due to unavailable network resources.
  skip_on_cran()

  tmp <- tempfile()
  req <- HttpRequest(
    method = "GET",
    url = parse_url("https://httpbin.org/json"),
    dest = tmp
  )
  resp <- issue(req)

  # skip if network flaky
  if (resp$status_code == 200) {
    expect_equal(resp$status_code, 200)
    expect_true(file.exists(tmp))
    expect_error(body <- jsonlite::fromJSON(tmp), NA)
    expect_equal(body$slideshow$title, "Sample Slide Show")
    unlink(tmp)
  }
})
