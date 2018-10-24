context("Function utilities")

test_that("make_function_template", {
  template <- make_function_template({
    x + y
  })
  expect_equal(template, substitute({x + y}))
})

test_that("make_function", {
  f <- make_function(substitute({x + 1}), alist(x =))
  g <- function(x) {
    x + 1
  }
  expect_equal(f, g)
})

test_that("substitute_q", {
  c <- substitute(A + 1)
  res <- substitute_q(c, list(A = substitute(x + y)))
  expect_equal(res, substitute(x + y + 1))
})

test_that("make_function_from_template", {
  a <- make_function_from_template(
    name = "test",
    template = substitute({A + 1}),
    subs = list(A = substitute(x + y)),
    params = alist(x =, y =)
  )
  e <- "test <- function(x, y) {
    x + y + 1
  }"
  # Use tidy_source to fix differences in spacing.
  actual <- formatR::tidy_source(text = a, output = FALSE)
  expected <- formatR::tidy_source(text = e, output = FALSE)
  expect_equal(actual, expected)
})

test_that("make_call", {
  a <- make_call("f", c("a", "b"))
  e <- call("f", "a", "b")
  expect_equal(a, e)
})

test_that("language_to_string", {
  actual <- language_to_string(substitute(a + b))
  expected <- "a + b"
  expect_equal(actual, expected)

  actual <- language_to_string(
    substitute(f <- function(a, b) {
      a + b
    })
  )
  expected <-
"f <- function(a, b) {
    a + b
}"
  expect_equal(actual, expected)
})

test_that("render_code_template", {
  template <- make_code_template({
    foo <- .VAR1
    bar <- .VAR2
  })
  a <- render_code_template(template, list(.VAR1 = 1, .VAR2 = 2))
  e <- paste(
    "foo <- 1",
    "bar <- 2",
    sep = "\n"
  )
  actual <- formatR::tidy_source(text = a, output = FALSE)
  expected <- formatR::tidy_source(text = e, output = FALSE)
  expect_equal(actual, expected)
})
