s3_test_client <- function() {
  metadata <- list(
    endpoints = list(
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "s3.{region}.amazonaws.com",
        global = FALSE
      )
    ),
    service_name = "s3"
  )
  client <- new_service(metadata, new_handlers("restxml", "s3"), Config())
  client$config$credentials <- Credentials(
    provider = list(function() {
      list(
        access_key_id = "AKID",
        secret_access_key = "SECRET",
        session_token = "SESSION",
        provider_name = "StaticProvider"
      )
    })
  )
  client$config$region <- "us-east-1"
  client$client_info$signing_region <- "us-east-1"
  return(client)
}

# Stand-in for a generated operation such as `svc$upload_part()`.
fake_operation <- function(client, body = charToRaw("part")) {
  op <- new_operation("UploadPart", "PUT", "/bucket/key", list())
  etag <- tag_add("", list(location = "header", locationName = "ETag", type = "string"))
  data <- tag_add(list(ETag = etag), list(type = "structure"))
  req <- new_request(client, op, list(), data)
  req$body <- body
  req$http_request$header[["x-amz-checksum-crc32"]] <- "ShexVg=="
  send_request(req)
}

# The Config-level setting `request_only()` flips, on a client object.
request_only_client <- function(client) {
  client$config$send <- FALSE
  return(client)
}

test_that("a request-only client returns the signed request without sending", {
  client <- s3_test_client()
  mockery::stub(send_request, "send", function(...) stop("must not send"))
  req <- fake_operation(request_only_client(client))

  expect_false(is.null(req$http_request))
  expect_equal(req$http_request$method, "PUT")
  expect_match(req$http_request$header[["Authorization"]], "^AWS4-HMAC-SHA256")
  expect_equal(req$http_request$header[["X-Amz-Content-Sha256"]], "UNSIGNED-PAYLOAD")
})

test_that("request_only turns sending off on a copy of the client", {
  svc <- list(.internal = list(config = Config()))
  prep <- request_only(svc)
  expect_false(prep$.internal$config$send)
  expect_true(svc$.internal$config$send)
})

test_that("a default client still sends", {
  client <- s3_test_client()
  expect_true(client$config$send)
  req <- new_request(
    client,
    new_operation("UploadPart", "PUT", "/bucket/key", list()),
    list(),
    list()
  )
  mockery::stub(send_request, "send", function(request) stop("sent"))
  expect_error(send_request(req), "sent")
})

test_that("prepared accepts a signed request and rejects anything else", {
  req <- fake_operation(request_only_client(s3_test_client()))
  expect_identical(prepared(req), req)
  expect_true(is_prepared_request(req))
  expect_false(is_prepared_request(list(ETag = "e")))
  expect_false(is_prepared_request("x"))
  expect_error(prepared(list(ETag = "e")), "signed request")
})

test_that("as_httr2_request matches what the serial path performs", {
  client <- s3_test_client()
  req <- fake_operation(request_only_client(client))
  h <- as_httr2_request(req$http_request)

  expect_s3_class(h, "httr2_request")
  expect_equal(h$method, "PUT")
  expect_equal(h$url, build_url(req$http_request$url))
  expect_equal(h$headers, req$http_request$header)
  expect_equal(h$body$data, req$http_request$body)
})

test_that("complete_request unmarshals a canned response", {
  client <- s3_test_client()
  req <- fake_operation(request_only_client(client))
  resp <- httr2::response(
    status_code = 200L,
    headers = list(ETag = "\"abc\"", `x-amz-request-id` = "req-1"),
    body = raw()
  )
  out <- complete_request(req, resp)
  expect_equal(out$ETag, "\"abc\"")
})

test_that("complete_request surfaces S3 errors like the serial path", {
  client <- s3_test_client()
  client$config$max_retries <- 0
  req <- fake_operation(request_only_client(client))
  resp <- httr2::response(
    status_code = 403L,
    headers = list(`content-type` = "application/xml"),
    body = charToRaw("<Error><Code>AccessDenied</Code><Message>nope</Message></Error>")
  )
  expect_error(complete_request(req, resp), "nope")
})

test_that("streaming operations can't be prepared", {
  client <- s3_test_client()
  op <- new_operation("GetObject", "GET", "/bucket/key", list(), stream_api = TRUE)
  expect_error(
    send_request(new_request(request_only_client(client), op, list(), list())),
    "streaming"
  )
})

# Run `perform_requests()` with the network replaced: `mock(request)` returns the
# httr2 response (or an error condition) for each request in a batch.
perform_requests_mocked <- function(mock, reqs, max_active = 1) {
  mockery::stub(perform_requests, "perform_batch", function(requests, max_active) {
    lapply(requests, mock)
  })
  perform_requests(reqs, max_active = max_active)
}

prepared_parts <- function(n, max_retries = 3) {
  client <- s3_test_client()
  client$config$max_retries <- max_retries
  lapply(seq_len(n), function(i) fake_operation(request_only_client(client)))
}

ok_response <- function(etag) {
  httr2::response(
    status_code = 200L,
    headers = list(ETag = etag, `x-amz-request-id` = "req"),
    body = raw()
  )
}

slow_down_response <- function() {
  httr2::response(
    status_code = 503L,
    headers = list(`content-type` = "application/xml"),
    body = charToRaw("<Error><Code>SlowDown</Code><Message>slow</Message></Error>")
  )
}

test_that("perform_requests returns ordered outputs", {
  reqs <- prepared_parts(3)
  # httr2 mocks see the request; use the Authorization-independent URL order
  i <- 0
  mock <- function(req) {
    i <<- i + 1
    ok_response(sprintf("\"etag%d\"", i))
  }
  out <- perform_requests_mocked(mock, reqs)
  expect_equal(vapply(out, function(x) x$ETag, ""), sprintf("\"etag%d\"", 1:3))
})

test_that("perform_requests re-queues only retryable failures", {
  mockery::stub(perform_requests, "Sys.sleep", function(...) NULL)
  reqs <- prepared_parts(3)
  calls <- 0
  mock <- function(req) {
    calls <<- calls + 1
    # 2nd request of the first round throttles once, then succeeds
    if (calls == 2) slow_down_response() else ok_response(sprintf("\"e%d\"", calls))
  }
  out <- perform_requests_mocked(mock, reqs)
  expect_equal(calls, 4)
  expect_false(any(vapply(out, inherits, logical(1), "error")))
})

test_that("perform_requests gives up after max_retries and returns the error", {
  mockery::stub(perform_requests, "Sys.sleep", function(...) NULL)
  reqs <- prepared_parts(2, max_retries = 2)
  calls <- 0
  mock <- function(req) {
    calls <<- calls + 1
    slow_down_response()
  }
  out <- perform_requests_mocked(mock, reqs)
  expect_equal(calls, 2 * 3) # 1 attempt + 2 retries each
  expect_true(all(vapply(out, inherits, logical(1), "paws_error")))
})

test_that("perform_requests does not retry non-retryable errors", {
  reqs <- prepared_parts(2)
  calls <- 0
  mock <- function(req) {
    calls <<- calls + 1
    httr2::response(
      status_code = 403L,
      headers = list(`content-type` = "application/xml"),
      body = charToRaw("<Error><Code>AccessDenied</Code><Message>no</Message></Error>")
    )
  }
  out <- perform_requests_mocked(mock, reqs)
  expect_equal(calls, 2)
  expect_s3_class(out[[1]], "http_403")
})

test_that("requests the pipeline makes while signing (e.g. a credential refresh) are sent", {
  client <- s3_test_client()
  nested_calls <- 0
  # A credential provider that, like the STS/SSO ones, makes its own request.
  client$config$credentials <- Credentials(
    provider = list(function() {
      op <- new_operation("AssumeRoleLike", "POST", "/", list())
      nested <- new_request(s3_test_client(), op, list(), list())
      send_request(nested)
      list(
        access_key_id = "AKID",
        secret_access_key = "SECRET",
        session_token = "SESSION",
        provider_name = "NestedProvider"
      )
    })
  )
  mock <- function(req) {
    nested_calls <<- nested_calls + 1
    httr2::response(status_code = 200L, body = raw())
  }
  req <- httr2::with_mocked_responses(mock, fake_operation(request_only_client(client)))

  expect_equal(req$operation$name, "UploadPart")
  expect_equal(nested_calls, 1)
  expect_match(req$http_request$header[["Authorization"]], "^AWS4-HMAC-SHA256")
})

test_that("run_pool returns results aligned with the handles", {
  files <- vapply(
    c("one", "two", "three"),
    function(x) {
      f <- tempfile()
      writeBin(charToRaw(x), f)
      f
    },
    ""
  )
  on.exit(unlink(files))
  handles <- lapply(files, function(f) curl::new_handle(url = paste0("file://", f)))
  results <- run_pool(handles, max_active = 2)
  expect_equal(
    vapply(results, function(r) rawToChar(r$content), ""),
    c("one", "two", "three"),
    ignore_attr = TRUE
  )
})

test_that("run_pool returns an error for requests that cannot connect, and still completes the rest", {
  f <- tempfile()
  writeBin(charToRaw("ok"), f)
  on.exit(unlink(f))
  handles <- list(
    curl::new_handle(url = "http://127.0.0.1:1/", connecttimeout = 2),
    curl::new_handle(url = paste0("file://", f))
  )
  results <- run_pool(handles, max_active = 2)
  expect_s3_class(results[[1]], "error")
  expect_equal(rawToChar(results[[2]]$content), "ok")
})

test_that("run_pool cancels its handles when interrupted", {
  handles <- list(curl::new_handle(url = "http://127.0.0.1:1/", connecttimeout = 2))
  mockery::stub(run_pool, "curl::multi_run", function(...) {
    signalCondition(structure(class = c("interrupt", "condition"), list()))
    invokeRestart("abort")
  })
  res <- tryCatch(run_pool(handles, max_active = 1), interrupt = function(e) {
    "interrupted"
  })
  expect_equal(res, "interrupted")
})

test_that("as_curl_handle builds a handle for each kind of request", {
  for (method in c("GET", "PUT", "HEAD", "DELETE")) {
    req <- new_http_request(
      method,
      "https://bucket.s3.us-east-1.amazonaws.com/key?partNumber=1",
      body = if (method == "PUT") charToRaw("body") else "",
      connect_timeout = 5,
      timeout = 30,
      header = list("Content-Length" = 4, "x-amz-date" = "20260101T000000Z")
    )
    expect_s3_class(as_curl_handle(req), "curl_handle")
  }
})

test_that("curl_response gives an httr2 response with case-insensitive headers", {
  result <- list(
    url = "https://example.com/key",
    status_code = 206L,
    headers = charToRaw(
      "HTTP/1.1 206 Partial Content\r\nETag: \"abc\"\r\nContent-Range: bytes 0-1/10\r\n\r\n"
    ),
    content = as.raw(1:2)
  )
  req <- new_http_request("GET", "https://example.com/key")
  resp <- curl_response(result, req)
  expect_equal(resp$status_code, 206)
  expect_equal(resp$headers[["etag"]], "\"abc\"")
  expect_equal(resp$headers[["ETag"]], "\"abc\"")
  expect_equal(resp$headers[["CONTENT-RANGE"]], "bytes 0-1/10")

  # and it goes through the same conversion as the serial path's responses
  http_response <- as_http_response(resp, req)
  expect_equal(http_response$status_code, 206)
  expect_equal(http_response$body, as.raw(1:2))
  expect_equal(http_response$header[["Content-Range"]], "bytes 0-1/10")
})

test_that("perform_batch returns responses and errors in order", {
  reqs <- prepared_parts(2)
  canned <- list(
    list(
      url = "https://example.com",
      status_code = 200L,
      headers = charToRaw("HTTP/1.1 200 OK\r\nETag: \"e\"\r\n\r\n"),
      content = raw()
    ),
    simpleError("Failed to connect")
  )
  mockery::stub(perform_batch, "run_pool", function(handles, max_active) canned)
  out <- perform_batch(reqs, max_active = 2)
  expect_equal(out[[1]]$status_code, 200)
  expect_s3_class(out[[2]], "error")
})

test_that("perform_batch refuses requests that write to a file", {
  reqs <- prepared_parts(1)
  reqs[[1]]$http_request$dest <- tempfile()
  expect_error(perform_batch(reqs, max_active = 1), "isn't supported")
})

test_that("a connection failure is retried like any retryable error", {
  mockery::stub(perform_requests, "Sys.sleep", function(...) NULL)
  reqs <- prepared_parts(1)
  calls <- 0
  mock <- function(request) {
    calls <<- calls + 1
    if (calls == 1) simpleError("Failed to connect") else ok_response("\"e\"")
  }
  out <- perform_requests_mocked(mock, reqs)
  expect_equal(calls, 2)
  expect_equal(out[[1]]$ETag, "\"e\"")
})

test_that("a prepared request really sends once it is being completed", {
  req <- fake_operation(request_only_client(s3_test_client()))
  expect_false(req$config$send)
  seen <- NULL
  mockery::stub(complete_attempt, "send", function(request) {
    seen <<- request$config$send
    request$http_response <- request$prefetched_response
    request
  })
  complete_attempt(req, ok_response("\"e\""))
  expect_true(seen)
  expect_true(resign_request(req, 1)$config$send)
})

# a prepared batch whose requests share one client's retry state
prepared_parts_with_state <- function(n, mode = "standard", max_retries = 3) {
  client <- s3_test_client()
  client$config$max_retries <- max_retries
  client$config$retry_mode <- mode
  client$config$retry_state <- new_retry_state()
  lapply(seq_len(n), function(i) fake_operation(request_only_client(client)))
}

test_that("perform_requests updates the adaptive rate limiter", {
  mockery::stub(perform_requests, "Sys.sleep", function(...) NULL)
  reqs <- prepared_parts_with_state(2, mode = "adaptive")
  limiter <- reqs[[1]]$config$retry_state$limiter
  limiter$bucket$sleep <- function(x) NULL
  calls <- 0
  mock <- function(req) {
    calls <<- calls + 1
    if (calls == 1) slow_down_response() else ok_response("\"e\"")
  }
  out <- perform_requests_mocked(mock, reqs)
  expect_false(any(vapply(out, inherits, logical(1), "error")))
  expect_true(limiter$enabled)
})

test_that("perform_requests leaves the rate limiter alone in standard mode", {
  mockery::stub(perform_requests, "Sys.sleep", function(...) NULL)
  reqs <- prepared_parts_with_state(2)
  calls <- 0
  mock <- function(req) {
    calls <<- calls + 1
    if (calls == 1) slow_down_response() else ok_response("\"e\"")
  }
  perform_requests_mocked(mock, reqs)
  expect_false(reqs[[1]]$config$retry_state$limiter$enabled)
})

test_that("perform_requests stops retrying when the retry quota is spent", {
  mockery::stub(perform_requests, "Sys.sleep", function(...) NULL)
  reqs <- prepared_parts_with_state(1)
  quota <- reqs[[1]]$config$retry_state$quota
  quota$available <- 7 # one retry (5), not two
  calls <- 0
  mock <- function(req) {
    calls <<- calls + 1
    slow_down_response()
  }
  out <- perform_requests_mocked(mock, reqs)
  expect_equal(calls, 2) # 1 attempt + 1 retry, then the quota refuses
  expect_s3_class(out[[1]], "paws_error")
  expect_equal(quota$available, 2)
})

test_that("perform_requests refunds the retry quota on success", {
  mockery::stub(perform_requests, "Sys.sleep", function(...) NULL)
  reqs <- prepared_parts_with_state(2)
  quota <- reqs[[1]]$config$retry_state$quota
  calls <- 0
  mock <- function(req) {
    calls <<- calls + 1
    if (calls == 1) slow_down_response() else ok_response("\"e\"")
  }
  perform_requests_mocked(mock, reqs)
  expect_equal(quota$available, quota$max_capacity)
})
