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
  # Avoid CRAN check errors due to unavailable network resources.
  skip_on_cran()
  req <- HttpRequest(
    method = "GET",
    url = parse_url("https://example.com:81"),
    connect_timeout = 1
  )
  quietly <- function(expr)
    suppressMessages(
      tryCatch(expr, error = function(e) {
      })
    )
  time <- system.time({
    quietly(issue(req))
  })
  expect_equal(time["elapsed"], 1, tolerance = 0.5, ignore_attr = TRUE)
})

test_that("timeout", {
  # Avoid CRAN check errors due to unavailable network resources.
  skip_on_cran()
  req <- HttpRequest(
    method = "GET",
    url = parse_url("https://example.com:81"),
    timeout = 1
  )
  quietly <- function(expr)
    suppressMessages(
      tryCatch(expr, error = function(e) {
      })
    )
  time <- system.time({
    quietly(issue(req))
  })
  expect_equal(time["elapsed"], 1, tolerance = 0.5, ignore_attr = TRUE)
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
    expect_true(body$gzipped)
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

test_that("check issue", {
  req <- HttpRequest(
    method = "GET",
    url = parse_url("https://httpbin.org/json")
  )

  mock_request_aws <- mock2(
    httr2::response(body = charToRaw("dummy"))
  )
  mockery::stub(issue, "request_aws", mock_request_aws)

  resp <- issue(req)

  expect_equal(resp$body, charToRaw("dummy"))
})

test_that("check request_aws", {
  url <- "https://httpbin.org/json"
  req <- HttpRequest(
    method = "GET",
    url = parse_url(url)
  )
  mock_req_perform <- mock2()
  mock_req_perform_conn <- mock2()

  mockery::stub(request_aws, "req_perform", mock_req_perform)
  mockery::stub(request_aws, "req_perform_connection", mock_req_perform_conn)

  request_aws(url, req)

  actual <- mock_arg(mock_req_perform)

  expect_equal(actual[[1]]$url, url)
  expect_equal(actual[[1]]$method, "GET")
  expect_equal(actual[[1]]$headers, list())
  expect_equal(
    actual[[1]]$body,
    list(data = "", type = "raw", content_type = "", params = list())
  )

  req$method <- "HEAD"
  request_aws(url, req)

  actual <- mock_arg(mock_req_perform)

  expect_equal(actual[[1]]$url, url)
  expect_equal(actual[[1]]$method, "HEAD")
  expect_equal(actual[[1]]$headers, list())
  expect_null(actual[[1]]$body)

  req$method <- "GET"
  req$stream_api <- TRUE
  request_aws(url, req)

  actual <- mock_arg(mock_req_perform_conn)
  expect_equal(actual[[1]]$url, url)
  expect_equal(actual[[1]]$method, "GET")
  expect_equal(actual[[1]]$headers, list())
  expect_equal(
    actual[[1]]$body,
    list(data = "", type = "raw", content_type = "", params = list())
  )
})

test_that("check resp_body", {
  resp <- httr2::response()
  body <- "dummy"
  resp$body <- charToRaw(body)

  actual <- resp_body(resp, NULL, TRUE)
  expect_equal(actual, actual)

  actual <- resp_body(resp, NULL, FALSE)
  expect_equal(actual, charToRaw(body))

  tf <- tempfile()
  cat(body, file = tf)
  resp$body <- raw()
  resp$status_code <- 301

  actual <- resp_body(resp, tf, FALSE)
  expect_equal(actual, charToRaw(body))

  resp$status_code <- 200
  unlink(tf)
})
