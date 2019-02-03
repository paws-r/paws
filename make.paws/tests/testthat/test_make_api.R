context("API file functions")

test_that("merge_examples", {
  api <- list(
    operations = list(
      operation1 = list(),
      operation2 = list()
    )
  )
  examples <- list(
    operation1 = list(
      list(description = "foo")
    ),
    operation2 = list(
      list(description = "bar")
    )
  )
  ret <- merge_examples(api, examples)
  expect_equal(ret$operations$operation1$examples[[1]]$description, "foo")
  expect_equal(ret$operations$operation2$examples[[1]]$description, "bar")
})

test_that("make_package_list", {
  temp <- tempdir()

  api1 <- list(
    metadata = list(
      serviceAbbreviation = "api1"
    )
  )
  api2 <- list(
    metadata = list(
      serviceAbbreviation = "api-two"
    )
  )
  dir <- file.path(temp, "apis")
  dir.create(dir, showWarnings = FALSE)
  jsonlite::write_json(api1, file.path(dir, "api1-2018-01-01.normal.json"))
  jsonlite::write_json(api2, file.path(dir, "api2-2018-01-01.normal.json"))
  writeChar("skip", file.path(dir, "skip.json"))

  region_config <- list(
    rules = list(
      `*/*` = list(
        endpoint = "{service}.{region}.amazonaws.com"
      )
    )
  )
  lib <- file.path(temp, "lib")
  dir.create(lib, showWarnings = FALSE)
  jsonlite::write_json(region_config, file.path(lib, "region_config_data.json"))

  actual <- capture.output(make_package_list(temp))
  expected <- c("paws.api1\tapi1", "paws.apitwo\tapi2")
  expect_equal(actual, expected)
})
