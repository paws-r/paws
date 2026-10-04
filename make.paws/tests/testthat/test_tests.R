# Format code so differences in style don't affect comparisons.
format_test_code <- function(code) {
  formatted <- formatR::tidy_source(text = code, output = FALSE)
  result <- formatted$text.tidy
  return(result)
}

test_that("make_test no arguments", {
  api <- list(metadata = list(serviceAbbreviation = "api"))
  operation <- list(name = "foo")
  a <- make_test(operation, api, NULL, NA)
  e <- 'test_that("foo", {
      skip_on_cran()
      expect_error(svc$foo(), NA)
    })
  '
  actual <- format_test_code(a)
  expected <- format_test_code(e)
  expect_equal(actual, expected)
})

test_that("make_test with arguments", {
  api <- list(metadata = list(serviceAbbreviation = "api"))
  operation <- list(name = "foo")
  a <- make_test(operation, api, list('"bar"', 123), NA)
  e <- 'test_that("foo", {
      skip_on_cran()
      expect_error(svc$foo("bar", 123), NA)
    })
  '
  actual <- format_test_code(a)
  expected <- format_test_code(e)
  expect_equal(actual, expected)
})

test_that("make_tests", {
  api <- list(
    metadata = list(serviceAbbreviation = "api"),
    operations = list(
      CreateFoo = list(name = "CreateFoo"),
      DescribeFoo = list(name = "DescribeFoo", input = list(shape = "DescribeFooShape")),
      ListBar = list(name = "ListBar"),
      ListBaz = list(name = "ListBaz", input = list(shape = "ListBazShape"))
    ),
    shapes = list(
      DescribeFooShape = list(members = list(MaxResults = list()), required = list()),
      ListBazShape = list(members = list(Qux = list()), required = list("Qux"))
    )
  )
  categories <- list(list(name = "widgets", services = list("api")))
  a <- make_tests(api, categories, api_name = "api")
  e <- 'svc <- paws.widgets::api()

    test_that("describe_foo", {
      skip_on_cran()
      expect_error(svc$describe_foo(), NA)
    })

    test_that("describe_foo", {
      skip_on_cran()
      expect_error(svc$describe_foo(MaxResults = 20), NA)
    })

    test_that("list_bar", {
      skip_on_cran()
      expect_error(svc$list_bar(), NA)
    })
  '
  actual <- format_test_code(a)
  expected <- format_test_code(e)
  expect_equal(actual, expected)
})

test_that("write_placeholder_test writes a loadable-package smoke test", {
  dir <- withr::local_tempdir()
  dir.create(file.path(dir, "tests", "testthat"), recursive = TRUE)
  write_placeholder_test(dir, "paws")
  a <- read_utf8(file.path(dir, "tests", "testthat", "test_paws.R"))
  e <- '# paws re-exports its category packages (e.g. paws.storage) and has
    # no operations of its own, so there are no generated service tests here.
    test_that("paws loads", {
      expect_true(requireNamespace("paws", quietly = TRUE))
    })
  '
  actual <- format_test_code(paste(a, collapse = "\n"))
  expected <- format_test_code(e)
  expect_equal(actual, expected)
})

test_that("make_tests uses api_name (not the derived service name) for category lookup", {
  api <- list(
    metadata = list(serviceAbbreviation = "Amazon Elasticsearch Service"),
    operations = list(
      ListDomainNames = list(name = "ListDomainNames")
    ),
    shapes = list()
  )
  categories <- list(list(name = "analytics", services = list("es")))
  a <- make_tests(api, categories, api_name = "es")
  e <- 'svc <- paws.analytics::elasticsearchservice()

    test_that("list_domain_names", {
      skip_on_cran()
      expect_error(svc$list_domain_names(), NA)
    })
  '
  actual <- format_test_code(a)
  expected <- format_test_code(e)
  expect_equal(actual, expected)
})
