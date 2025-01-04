escape_mode <- c(
  "encodeHost", "encodeZone", "encodePath",
  "encodePathSegment", "encodeQueryComponent", "encodeFragment"
)
test_that("check all escape modes", {
  expected_list <- c(
    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~%60!%40%23$%25%5E&*()=+[%7B]%7D%5C%7C;:'\",<>%2F%3F%20",
    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~%60!%40%23$%25%5E&*()=+[%7B]%7D%5C%7C;:'\",<>%2F%3F%20",
    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~%60%21@%23$%25%5E&%2A%28%29=+%5B%7B%5D%7D%5C%7C;:%27%22,%3C%3E/%3F%20",
    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~%60%21@%23$%25%5E&%2A%28%29=+%5B%7B%5D%7D%5C%7C%3B:%27%22%2C%3C%3E%2F%3F%20",
    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~%60%21%40%23%24%25%5E%26%2A%28%29%3D%2B%5B%7B%5D%7D%5C%7C%3B%3A%27%22%2C%3C%3E%2F%3F%20",
    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~%60%21@%23$%25%5E&%2A%28%29=+%5B%7B%5D%7D%5C%7C;:%27%22,%3C%3E/?%20"
  )

  string <- "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~`!@#$%^&*()=+[{]}\\|;:'\",<>/? "
  for (i in seq_along(escape_mode)) {
    expect_equal(escape(string, escape_mode[i]), expected_list[i])
  }
})

test_that("check if non-ascci characters are correctly encoded", {
  string <- "なでçãкатынü"
  actual <- paws_url_encoder(string)
  expect_equal(
    actual,
    "%E3%81%AA%E3%81%A7%C3%A7%C3%A3%D0%BA%D0%B0%D1%82%D1%8B%D0%BD%C3%BC"
  )
})

test_that("check if encoded url is correctly decoded", {
  string <- "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~`!@#$%^&*()=+[{]}\\|;:'\",<>/? "

  url <- paste0(sample(strsplit(string, "")[[1]], 1e4, replace = TRUE), collapse = "")
  url_encode <- paws_url_encoder(url)
  actual <- unescape(url_encode)

  expect_equal(url_encode, curl::curl_escape(url))
  expect_equal(actual, url)
})

test_that("check if non-encoded url is correctly decoded", {
  string <- "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~"

  url <- paste(sample(strsplit(string, "")[[1]], 1e4, replace = TRUE), collapse = "")
  url_encode <- paws_url_encoder(url)
  actual <- unescape(url_encode)

  expect_equal(url_encode, curl::curl_escape(url))
  expect_equal(actual, url)
})

test_that("check if json string is converted correctly", {
  expect <- "\"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\\u0001\\u0002\\u0003\\u0004\\u0005\\u0006\\u0007\\b\\t\\n\\u000b\\f\\r\\u000e\\u000f\\u0010\\u0011\\u0012\\u0013\\u0014\\u0015\\u0016\\u0017\\u0018\\u0019\\u001a\\u001b\\u001c\\u001d\\u001e\\u001f\\\\\\\"\\b\\f\\r\\t\\n\""
  string <- paste0(c(letters, LETTERS, intToUtf8(1:31, multiple = TRUE), "\\", '"', "\b", "\f", "\r", "\t", "\n"), collapse = "")
  expect_equal(json_convert_string(string), expect)
})

test_that("check encoding and unencoding", {
  expect <- "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~`!@#$%^&*()=+[{]}\\|;:'\",<>/? "
  expect_equal(paws_url_unencoder(escape(expect, "encodePath")), expect)
})
