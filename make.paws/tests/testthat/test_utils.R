context("Make utilities")

test_that("get_structure", {
  expect_equal(get_structure(list()), "list()")
  expect_equal(get_structure(list(a = 1, b = 2)), "list(a = 1, b = 2)")
  expect_equal(get_structure(c(1, 2, 3)), "c(1, 2, 3)")

  got <- get_structure(as.POSIXct("1970-01-01"))
  want <- "structure(18000, class = c(\"POSIXct\", \"POSIXt\"), tzone = \"\")"
  expect_equal(got, want)

  obj <- paws.common::tag_add(list(a = 1, b = 2), list(type = "structure"))
  got <- get_structure(obj)
  want <- "structure(list(a = 1, b = 2), tags = list(type = \"structure\"))"
  expect_equal(got, want)
})
