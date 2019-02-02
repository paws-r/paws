context("Handlers")

test_that("run handlers", {
  r <- Request()
  f <- function(request) {
      request$data <- "a"
      return(request)
  }
  r$handlers <- list(l = HandlerList(f))
  r <- run(r, l)
  expect_equal(r$data, "a")
})

test_that("run multiple handlers", {
  r <- Request()
  f <- function(request) {
      request$data <- TRUE
      return(request)
  }
  g <- function(request) {
      request$data <- NULL
      return(request)
  }
  r$handlers <- list(l = HandlerList(f, g))
  r <- run(r, l)
  expect_null(r$data)
})
