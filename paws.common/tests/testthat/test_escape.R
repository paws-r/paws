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
