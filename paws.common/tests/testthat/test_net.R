context("Network")

test_that("issue", {
  req <- HttpRequest(
    method = "GET",
    url = parse_url("https://httpbin.org/json")
  )
  resp <- issue(req)
  expect_equal(resp$status_code, 200)
  expect_error(body <- jsonlite::fromJSON(rawToChar(resp$body)), NA)
  expect_equal(body$slideshow$title, "Sample Slide Show")
})
