context("Network")

test_that("issue", {
  req <- HttpRequest(
    method = "GET",
    url = parse_url("https://jsonplaceholder.typicode.com/todos/1")
  )
  resp <- issue(req)
  expect_equal(resp$status_code, 200)
  expect_error(body <- jsonlite::fromJSON(rawToChar(resp$body)), NA)
  expect_equal(body$userId, 1)
})
