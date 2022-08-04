escape_mode = c(
  "encodeHost","encodeZone","encodePath",
  "encodePathSegment", "encodeQueryComponent", "encodeFragment"
)
test_that("check all escape modes", {
  expected_list <- c(
    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~%60!%40%23$%25%5E&*()=+[%7B]%7D%5C%7C;:'\",<>%2F%3F%20",
    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~%60!%40%23$%25%5E&*()=+[%7B]%7D%5C%7C;:'\",<>%2F%3F%20",
    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~%60%21@%23$%25%5E&%2A%28%29=+%5B%7B%5D%7D%5C%7C;:%27%22,%3C%3E/%3F%20",
    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~%60%21@%23$%25%5E&%2A%28%29=+%5B%7B%5D%7D%5C%7C%3B:%27%22%2C%3C%3E%2F%3F%20",
    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~%60%21%40%23%24%25%5E%26%2A%28%29%3D%2B%5B%7B%5D%7D%5C%7C%3B%3A%27%22%2C%3C%3E%2F%3F+",
    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~%60%21@%23$%25%5E&%2A%28%29=+%5B%7B%5D%7D%5C%7C;:%27%22,%3C%3E/?%20"
  )

  string <- "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~`!@#$%^&*()=+[{]}\\|;:'\",<>/? "
  for (i in seq_along(escape_mode)) {
    expect_equal(escape(string, escape_mode[i]), expected_list[i])
  }
})

test_that("check if non-ascci characters are correctly encoded", {
  string <- "なでçãкатынü"
  pattern <- paste0("[^", base_url_encode, "]")
  actual = paws_url_encoder(string, pattern)
  expect_equal(
    actual,
    "%E3%81%AA%E3%81%A7%C3%A7%C3%A3%D0%BA%D0%B0%D1%82%D1%8B%D0%BD%C3%BC"
  )
})

test_that("check if encoded url is correctly decoded", {
  string <- "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~`!@#$%^&*()=+[{]}\\|;:'\",<>/? "
  pattern <- "[^ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789._~-]"

  url = paste(sample(strsplit(string, "")[[1]], 1e6, replace = T), collapse = "")
  url_encode = paws_url_encoder(url, pattern)
  actual = unescape(url_encode)

  expect_equal(actual, url)
})

test_that("check if non-encoded url is correctly decoded", {
  string <- "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~"
  pattern <- "[^ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789._~-]"

  url = paste(sample(strsplit(string, "")[[1]], 1e6, replace = T), collapse = "")
  url_encode = paws_url_encoder(url, pattern)
  actual = unescape(url_encode)

  expect_equal(actual, url)
})
