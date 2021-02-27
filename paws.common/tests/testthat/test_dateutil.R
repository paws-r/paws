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

test_that("as_timestamp empty input", {
  out <- as_timestamp(NULL, format = "foo")
  exp <- structure(numeric(0), class = c("POSIXct", "POSIXt"))
  expect_equal(out, exp)
})
