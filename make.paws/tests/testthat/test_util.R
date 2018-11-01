test_that("not_empty", {
  expect_equal(not_empty(NULL), FALSE)
  expect_equal(not_empty(""), FALSE)
  expect_equal(not_empty(NA_character_), FALSE)
  expect_equal(not_empty("foo"), TRUE)
})
