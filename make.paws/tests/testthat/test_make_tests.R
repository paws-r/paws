context("Make tests")

# Allow us to capture code to compare it against a function's output.
code <- function(x) {
  text <- deparse(substitute(x))
  if (text[1] == "{") {
    text <- text[-1]
    text <- text[-length(text)]
  }
  result <- paste(text, collapse = "\n")
}

# Format code so differences in style don't affect comparisons.
format_test_code <- function(code) {
  formatted <- formatR::tidy_source(text = code, output = FALSE)
  result <- formatted$text.tidy
  return(result)
}

test_that("make_testthat_file", {
  api <- list(
    name = "example"
  )
  a <- make_testthat_file(api)
  e <- code({
    library(testthat)
    library(paws.example)
    test_check("paws.example")
  })
  actual <- format_test_code(a)
  expected <- format_test_code(e)
  expect_equal(actual, expected)
})

test_that("make_test no arguments", {
  operation <- list(
    name = "foo"
  )
  a <- make_test(operation, NULL, NA)
  e <- code({
    test_that("foo", {
      expect_error(foo(), NA)
    })
  })
  actual <- format_test_code(a)
  expected <- format_test_code(e)
  expect_equal(actual, expected)
})

test_that("make_test with arguments", {
  operation <- list(
    name = "foo"
  )
  a <- make_test(operation, list("bar", 123), NA)
  e <- code({
    test_that("foo", {
      expect_error(foo("bar", 123), NA)
    })
  })
  actual <- format_test_code(a)
  expected <- format_test_code(e)
  expect_equal(actual, expected)
})

test_that("make_tests", {
  api <- list(

    operations = list(
      CreateFoo = list(
        name = "CreateFoo"
      ),
      DescribeFoo = list(
        name = "DescribeFoo",
        input = list(
          shape = "DescribeFooShape"
        )
      ),
      ListBar = list(
        name = "ListBar"
      ),
      ListBaz = list(
        name = "ListBaz",
        input = list(
          shape = "ListBazShape"
        )
      )
    ),

    shapes = list(
      DescribeFooShape = list(
        members = list(
          MaxResults = list()
        ),
        required = list()
      ),
      ListBazShape = list(
        members = list(
          Qux = list()
        ),
        required = list(
          "Qux"
        )
      )
    )
  )
  a <- make_tests(api)
  e <- code({
    test_that("describe_foo", {
      expect_error(describe_foo(), NA)
    })

    test_that("describe_foo", {
      expect_error(describe_foo(MaxResults = 20), NA)
    })

    test_that("list_bar", {
      expect_error(list_bar(), NA)
    })
  })
  actual <- format_test_code(a)
  expected <- format_test_code(e)
  expected <- sapply(expected, function(x) c(x, "")) # re-insert blank lines.
  expected <- expected[-length(expected)] # no trailing blank line.
  expect_equal(actual, expected)
})
