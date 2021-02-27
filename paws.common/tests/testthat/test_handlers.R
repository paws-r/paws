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

test_that("setting and adding handlers", {
  handlers <- Handlers()
  f <- function(x) 1
  handlers$validate <- handlers_set(f)
  expect_equal(handlers$validate$list[[1]]$fn, f)

  g <- function(x) 2
  handlers$validate <- handlers_add_back(handlers$validate, g)
  expect_equal(length(handlers$validate$list), 2)
  expect_equal(handlers$validate$list[[1]]$fn, f)
  expect_equal(handlers$validate$list[[2]]$fn, g)

  h <- function(x) 3
  handlers$validate <- handlers_add_front(handlers$validate, h)
  expect_equal(length(handlers$validate$list), 3)
  expect_equal(handlers$validate$list[[1]]$fn, h)
  expect_equal(handlers$validate$list[[2]]$fn, f)
  expect_equal(handlers$validate$list[[3]]$fn, g)
})
