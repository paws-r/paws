test_that("as_timestamp RFC822", {
  out <- as_timestamp("Mon, 2 Jan 2006 15:04:05 GMT", "rfc822")
  exp <- structure(1136214245, class = c("POSIXct", "POSIXt"), tzone = "GMT")
  expect_equal(out, exp)
})

test_that("as_timestamp ISO8601", {
  out <- as_timestamp("2006-01-02T15:04:05Z", "iso8601")
  exp <- structure(1136214245, class = c("POSIXct", "POSIXt"), tzone = "GMT")
  expect_equal(out, exp)
})

test_that("as_timestamp NULL input", {
  out <- as_timestamp(NULL, format = "foo")
  exp <- structure(numeric(0), class = c("POSIXct", "POSIXt"), tzone = "GMT")
  expect_equal(out, exp)
})

test_that("as_timestamp empty input", {
  out <- as_timestamp("", format = "foo", tz = "GMT")
  exp <- as.POSIXct("", tz = "GMT", format = "foo")
  expect_equal(out, exp)
})

test_that("unix_time check default value", {
  actual <- unix_time(0)
  expect <- as.POSIXct("1970-01-01 00:00:00", tz = "GMT")
  expect_equal(actual, expect)
})

test_that("unix_time check numeric value", {
  actual <- unix_time(1704067200)
  expect <- as.POSIXct("2024-01-01 00:00:00", tz = "GMT")
  expect_equal(actual, expect)
})

test_that("unix_time check string value", {
  actual <- unix_time("")
  expect <- as.POSIXct(NA, tz = "GMT")
  expect_equal(actual, expect)
})

test_that("unix_time check null value", {
  actual <- unix_time(NULL)
  expect <- as.POSIXct(NULL, tz = "GMT")
  expect_equal(actual, expect)
})
