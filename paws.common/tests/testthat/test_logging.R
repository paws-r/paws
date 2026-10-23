# ensure all log configs are set to defaults
paws_config_log()

test_that("check default logging settings", {
  log_level <- getOption("paws.log_level")
  log_file <- getOption("paws.log_file")
  log_timestamp_fmt <- getOption("paws.log_timestamp_fmt")

  expect_equal(log_level, 2L)
  expect_equal(log_file, "")
  expect_equal(log_timestamp_fmt, "%Y-%m-%d %H:%M:%OS3")
})

test_that("check updating paws log config", {
  temp_file <- tempfile()
  paws_config_log(level = 3L, file = temp_file, timestamp_fmt = "%Y-%m-%d %H:%M")

  log_level <- getOption("paws.log_level")
  log_file <- getOption("paws.log_file")
  log_timestamp_fmt <- getOption("paws.log_timestamp_fmt")

  expect_equal(log_level, 3L)
  expect_equal(log_file, temp_file)
  expect_equal(log_timestamp_fmt, "%Y-%m-%d %H:%M")
  unlink(temp_file)
})

test_that("check updating paws log config with wrong parameter types", {
  expect_error(paws_config_log(level = "3"), ".*level.*")
  expect_error(paws_config_log(file = 1), ".*file.*")
  expect_error(paws_config_log(timestamp_fmt = 1), ".*timestamp_fmt.*")
})

test_that("check if file created in none existing directory", {
  temp_dir <- tempfile()
  temp_file <- file.path(temp_dir, "demo.log")
  paws_config_log(file = temp_file)
  expect_true(dir.exists(temp_dir))
  unlink(temp_file)
})

# can this be mocked?
test_request <- function(url) {
  httr2::req_perform(httr2::req_options(
    httr2::request(url),
    debugfunction = paws_debug,
    verbose = isTRUE(getOption("paws.log_level") >= 3L)
  ))
}

test_that("check if http paws log are being tracked", {
  temp_file <- tempfile()
  options("paws.log_level" = 4L)
  options("paws.log_file" = temp_file)

  resp <- test_request("http://google.com/")
  actual <- readLines(temp_file)
  expect_true(any(grepl("DEBUG", actual)))
  unlink(temp_file)
})

test_that("check if http logs aren't being tracked", {
  temp_file <- tempfile()
  options("paws.log_level" = 2L)
  options("paws.log_file" = temp_file)

  resp <- test_request("http://google.com/")
  expect_false(file.exists(temp_file))
  unlink(temp_file)
})

test_that("check reset log config", {
  paws_config_log(level = 3L, file = "made-up", timestamp_fmt = "%Y-%m-%d %H:%M")
  log_level <- getOption("paws.log_level")
  log_file <- getOption("paws.log_file")
  log_timestamp_fmt <- getOption("paws.log_timestamp_fmt")

  expect_equal(log_level, 3L)
  expect_equal(log_file, "made-up")
  expect_equal(log_timestamp_fmt, "%Y-%m-%d %H:%M")

  paws_config_log()
  log_level <- getOption("paws.log_level")
  log_file <- getOption("paws.log_file")
  log_timestamp_fmt <- getOption("paws.log_timestamp_fmt")

  expect_equal(log_level, 2L)
  expect_equal(log_file, "")
  expect_equal(log_timestamp_fmt, "%Y-%m-%d %H:%M:%OS3")
})

test_that("ensure init_log_config doesn't modified already set log config", {
  paws_config_log(level = 3L, file = "made-up", timestamp_fmt = "%Y-%m-%d %H:%M")

  init_log_config()

  log_level <- getOption("paws.log_level")
  log_file <- getOption("paws.log_file")
  log_timestamp_fmt <- getOption("paws.log_timestamp_fmt")

  expect_equal(log_level, 3L)
  expect_equal(log_file, "made-up")
  expect_equal(log_timestamp_fmt, "%Y-%m-%d %H:%M")
})

test_that("update log config from environmental variables", {
  Sys.setenv("PAWS_LOG_LEVEL" = 4L)
  Sys.setenv("PAWS_LOG_TIMESTAMP_FMT" = "made-up")
  Sys.setenv("PAWS_LOG_FILE" = "dummy-file")

  init_log_config()

  log_level <- getOption("paws.log_level")
  log_file <- getOption("paws.log_file")
  log_timestamp_fmt <- getOption("paws.log_timestamp_fmt")

  expect_equal(log_level, 4L)
  expect_equal(log_file, "dummy-file")
  expect_equal(log_timestamp_fmt, "made-up")
  lapply(c("PAWS_LOG_LEVEL", "PAWS_LOG_TIMESTAMP_FMT", "PAWS_LOG_FILE"), Sys.unsetenv)
})

test_that("check log messages", {
  temp_file <- tempfile()
  # ERROR Logging level
  options("paws.log_level" = 1L)
  options("paws.log_file" = temp_file)
  log_debug("foo")
  log_info("foo")
  log_warn("foo")
  log_error("foo")

  result <- readLines(temp_file)
  expect_true(grepl("^.*ERROR.*: foo", result))
  unlink(temp_file)

  # WARN Logging level
  options("paws.log_level" = 2L)
  options("paws.log_file" = temp_file)
  log_debug("foo")
  log_info("foo")
  log_warn("foo")
  log_error("foo")

  result <- readLines(temp_file)
  expect_true(grepl("^.*WARN.*: foo", result[[1]]))
  expect_true(grepl("^.*ERROR.*: foo", result[[2]]))
  unlink(temp_file)

  # INFO Logging level
  options("paws.log_level" = 3L)
  options("paws.log_file" = temp_file)
  log_debug("foo")
  log_info("foo")
  log_warn("foo")
  log_error("foo")

  result <- readLines(temp_file)
  expect_true(grepl("^.*INFO.*: foo", result[[1]]))
  expect_true(grepl("^.*WARN.*: foo", result[[2]]))
  expect_true(grepl("^.*ERROR.*: foo", result[[3]]))
  unlink(temp_file)

  # DEBUG Logging level
  options("paws.log_level" = 4L)
  options("paws.log_file" = temp_file)
  log_debug("foo")
  log_info("foo")
  log_warn("foo")
  log_error("foo")

  result <- readLines(temp_file)
  expect_true(grepl("^.*DEBUG.*: foo", result[[1]]))
  expect_true(grepl("^.*INFO.*: foo", result[[2]]))
  expect_true(grepl("^.*WARN.*: foo", result[[3]]))
  expect_true(grepl("^.*ERROR.*: foo", result[[4]]))
  unlink(temp_file)
})

test_that("check log encoded message", {
  temp_file <- tempfile()
  options("paws.log_level" = 4L)
  options("paws.log_file" = temp_file)

  # log encoded url message
  log_debug("foo%20bar")
  log_info("foo%20bar")
  log_warn("foo%20bar")
  log_error("foo%20bar")

  result <- readLines(temp_file)
  expect_true(grepl("^.*DEBUG.*: foo%20bar", result[[1]]))
  expect_true(grepl("^.*INFO.*: foo%20bar", result[[2]]))
  expect_true(grepl("^.*WARN.*: foo%20bar", result[[3]]))
  expect_true(grepl("^.*ERROR.*: foo%20bar", result[[4]]))
  unlink(temp_file)
})

test_that("check log message additional arguments", {
  temp_file <- tempfile()
  options("paws.log_level" = 4L)
  options("paws.log_file" = temp_file)

  # log with arguments
  log_debug("foo %s", "bar")
  log_info("foo %s", "bar")
  log_warn("foo %s", "bar")
  log_error("foo %s", "bar")

  result <- readLines(temp_file)
  expect_true(grepl("^.*DEBUG.*: foo bar", result[[1]]))
  expect_true(grepl("^.*INFO.*: foo bar", result[[2]]))
  expect_true(grepl("^.*WARN.*: foo bar", result[[3]]))
  expect_true(grepl("^.*ERROR.*: foo bar", result[[4]]))
  unlink(temp_file)
})

test_that("check timestamp format is honoured", {
  temp_file <- tempfile()
  paws_config_log(level = 3L, file = temp_file, timestamp_fmt = "FMT-%Y")
  log_info("foo")
  expect_match(readLines(temp_file), "INFO \\[FMT-\\d{4}\\]: foo")
  unlink(temp_file)
  paws_config_log()
})

test_that("check console logs don't colour log files", {
  temp_file <- tempfile()
  paws_config_log(level = 3L, file = temp_file)
  log_info("foo")
  expect_false(grepl("\033", readLines(temp_file), fixed = TRUE))
  unlink(temp_file)
  paws_config_log()
})

test_that("check secrets are redacted from http logs", {
  lines <- c(
    "Authorization: AWS4-HMAC-SHA256 Credential=AKIAXXX/20250101/us-east-1/s3/aws4_request, Signature=abc",
    "x-amz-security-token: SECRETTOKEN",
    "GET /key?X-Amz-Signature=deadbeef&X-Amz-Expires=60 HTTP/1.1",
    "Host: s3.amazonaws.com"
  )
  out <- redact_secrets(lines)
  expect_equal(out[[1]], "Authorization: <redacted>")
  expect_equal(out[[2]], "x-amz-security-token: <redacted>")
  expect_equal(out[[3]], "GET /key?X-Amz-Signature=<redacted>&X-Amz-Expires=60 HTTP/1.1")
  expect_equal(out[[4]], lines[[4]])
})

test_that("cached timestamp matches strftime", {
  fmt <- "%Y-%m-%d %H:%M:%OS3"
  for (i in 1:3) {
    before <- strftime(now(), fmt)
    got <- log_timestamp(now(), fmt)
    after <- strftime(now(), fmt)
    expect_match(got, "^\\d{4}-\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}\\.\\d{3}$")
    expect_true(got >= before && got <= after)
    Sys.sleep(0.3)
  }
})

test_that("cached timestamp uses the fractional seconds of the given time", {
  time <- as.POSIXct("2025-01-02 03:04:05", tz = "UTC") + 0.625
  withr::local_timezone("UTC")
  expect_equal(log_timestamp(time, "%Y-%m-%d %H:%M:%OS3"), "2025-01-02 03:04:05.625")
  expect_equal(log_timestamp(time, "%H:%M:%OS1"), "03:04:05.6")
  # a later time in the same second reuses the cache but not the fraction
  expect_equal(log_timestamp(time + 0.125, "%H:%M:%OS3"), "03:04:05.750")
  # and a new second refreshes it
  expect_equal(log_timestamp(time + 1, "%H:%M:%OS3"), "03:04:06.625")
})

test_that("cached timestamp handles other formats", {
  time <- as.POSIXct("2025-01-02 03:04:05", tz = "UTC") + 0.625
  withr::local_timezone("UTC")
  expect_equal(log_timestamp(time, "%Y-%m-%d %H:%M"), "2025-01-02 03:04")
  expect_equal(log_timestamp(time, "made-up"), "made-up")
  expect_equal(log_timestamp(time, ""), "")
  # literal percent signs survive
  expect_equal(log_timestamp(time, "100%% %H:%M:%OS3"), "100% 03:04:05.625")
  # more than one fractional field
  expect_equal(log_timestamp(time, "%OS3 %OS3"), "05.625 05.625")
  # no digits follows `digits.secs`
  withr::local_options(digits.secs = 2L)
  expect_equal(log_timestamp(time, "%H:%M:%OS"), "03:04:05.62")
})
