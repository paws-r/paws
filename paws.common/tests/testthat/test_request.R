test_that("new endpoint with default port", {
  endpoint <- "https://estest.us-east-1.es.amazonaws.com:443"
  expected <- "estest.us-east-1.es.amazonaws.com"
  r <- new_request(
    Client(client_info = ClientInfo(endpoint = endpoint)),
    Operation(),
    NULL,
    NULL
  )
  expect_equal(r$http_request$host, expected)
})

test_that("sanitize_host_for_header", {
  cases <- list(
    c("https://estest.us-east-1.es.amazonaws.com:443", "estest.us-east-1.es.amazonaws.com"),
    c("https://estest.us-east-1.es.amazonaws.com", "estest.us-east-1.es.amazonaws.com"),
    c("https://localhost:9200", "localhost:9200"),
    c("http://localhost:80", "localhost"),
    c("http://localhost:8080", "localhost:8080")
  )
  for (case in cases) {
    c <- list(url = case[1], expected = case[2])
    r <- new_http_request("GET", c$url, NULL)
    r <- sanitize_host_for_header(r)
    expect_equal(r$host, c$expected)
  }
})
