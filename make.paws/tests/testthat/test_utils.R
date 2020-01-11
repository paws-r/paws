context("Make utilities")

test_that("get_structure", {
  expect_equal(get_structure(list()), "list()")
  expect_equal(get_structure(list(a = 1, b = 2)), "list(a = 1, b = 2)")
  expect_equal(get_structure(c(1, 2, 3)), "c(1, 2, 3)")

  obj <- paws.common::tag_add(list(a = 1, b = 2), list(type = "structure"))
  got <- get_structure(obj)
  want <- "structure(list(a = 1, b = 2), tags = list(type = \"structure\"))"
  expect_equal(got, want)
})

test_that("parse_operations", {
  text <-
  "#' foo
  NULL

  #' An operation
  #'
  #' Documentation
  #'
  #' @export
  foo_operation1 <- function(x) {
    x
  }

  #' A second operation
  #'
  #' Documentation
  #'
  #' @export
  foo_operation2 <- function(x) {
    x
  }
  "
  lines <- gsub("^  ", "", strsplit(text, "\n")[[1]])
  actual <- parse_operations(lines)
  expect_length(actual, 2)
  expect_equal(names(actual)[1], "operation1")
  expect_equal(actual[[1]]$name, "operation1")
  expect_equal(names(actual)[2], "operation2")
  expect_equal(actual[[2]]$name, "operation2")
})
