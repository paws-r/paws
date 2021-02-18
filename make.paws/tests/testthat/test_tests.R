context("Make tests")

# Format code so differences in style don't affect comparisons.
format_test_code <- function(code) {
  formatted <- formatR::tidy_source(text = code, output = FALSE)
  result <- formatted$text.tidy
  return(result)
}

test_that("make_test no arguments", {
  api <- list(
    metadata = list(
      serviceAbbreviation = "api"
    )
  )
  operation <- list(
    name = "foo"
  )
  a <- make_test(operation, api, NULL, NA)
  e <-
    'test_that("foo", {
      expect_error(svc$foo(), NA)
    })
  '
  actual <- format_test_code(a)
  expected <- format_test_code(e)
  expect_equal(actual, expected)
})

test_that("make_test with arguments", {
  api <- list(
    metadata = list(
      serviceAbbreviation = "api"
    )
  )
  operation <- list(
    name = "foo"
  )
  a <- make_test(operation, api, list('"bar"', 123), NA)
  e <-
    'test_that("foo", {
      expect_error(svc$foo("bar", 123), NA)
    })
  '
  actual <- format_test_code(a)
  expected <- format_test_code(e)
  expect_equal(actual, expected)
})

test_that("make_tests", {
  api <- list(
    metadata = list(
      serviceAbbreviation = "api"
    ),

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
  e <-
    'svc <- paws::api()

    test_that("describe_foo", {
      expect_error(svc$describe_foo(), NA)
    })

    test_that("describe_foo", {
      expect_error(svc$describe_foo(MaxResults = 20), NA)
    })

    test_that("list_bar", {
      expect_error(svc$list_bar(), NA)
    })
  '
  actual <- format_test_code(a)
  expected <- format_test_code(e)
  expect_equal(actual, expected)
})
