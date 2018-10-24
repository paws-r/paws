context("Make package")

# Requires that `R/handlers.R` exists.
test_that("copy supporting functions", {
  api <- list(
    name = "dynamodb"
  )
  path <- tempdir()

  copy_supporting_functions(api, path)
  expect_true(file.exists(file.path(path, "handlers.R")))
})

# Requires that `R/customizations/aws.dynamodb.R` exists.
test_that("copy customizations", {
  api <- list(
    name = "dynamodb"
  )
  path <- tempdir()

  copy_customizations(api, path)
  expect_true(file.exists(file.path(path, "paws.dynamodb_customizations.R")))
})

test_that("copy customizations -- no customizations for package", {
  api <- list(
    name = "example"
  )
  path <- tempdir()

  copy_customizations(api, path)
  expect_false(file.exists(file.path(path, "aws.example_customizations.R")))
})
