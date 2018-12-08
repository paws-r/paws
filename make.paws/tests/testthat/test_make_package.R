context("Make package")

test_that("make_package", {
  path <- tempdir()

  # Create a fake API spec.
  path_in <- file.path(path, "in")
  api <- list(
    metadata = list(
      endpointPrefix = "example",
      protocol = "json",
      serviceAbbreviation = "example",
      serviceFullName = "AWS Example",
      signatureVersion = "v4"
    ),
    operations = list(
      Foo = list(
        name = "Foo",
        http = list(
          method = "GET",
          requestUri = "/"
        ),
        input = list(
          shape = "FooRequest"
        ),
        output = list(
          shape = "FooResponse"
        ),
        documentation = "Foo"
      )
    ),
    shapes = list(
      FooRequest = list(
        type = "structure",
        required = list("Foo"),
        members = list(
          Foo = list(
            shape = "Foo",
            documentation = "Foo"
          ),
          Bar = list(
            shape = "Bar",
            documentation = "Bar"
          )
        )
      ),
      FooResponse = list(
        type = "structure",
        members = list(
          Foo = list(
            shape = "Foo",
            documentation = "Foo"
          ),
          Bar = list(
            shape = "Bar",
            documentation = "Bar"
          )
        )
      ),
      Foo = list(
        type = "string"
      ),
      Bar = list(
        type = "string"
      )
    ),
    documentation = "AWS Example is an example AWS API."
  )
  api_path <- file.path(path_in, "apis", "example-2018-11-01.normal.json")
  dir.create(dirname(api_path), recursive = TRUE)
  jsonlite::write_json(api, api_path, auto_unbox = TRUE)

  region_config <- list(
    rules = list(
      "*/*" = list(
        endpoint = "{service}.{region}.amazonaws.com"
      )
    )
  )
  region_config_path <- file.path(path_in, "lib", "region_config_data.json")
  dir.create(dirname(region_config_path), recursive = TRUE)
  jsonlite::write_json(region_config, region_config_path, auto_unbox = TRUE)

  path_out <- file.path(path, "out")
  package_dir <- file.path(path_out, "paws.example")

  make_package("example", path_in, path_out)

  expect_true(dir.exists(package_dir))
  expect_true(file.exists(file.path(package_dir, "DESCRIPTION")))
  expect_true(file.exists(file.path(package_dir, "NAMESPACE")))
  expect_true(dir.exists(file.path(package_dir, "R")))
  expect_true(dir.exists(file.path(package_dir, "man")))
})

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

test_that("make_imports returns a string-ified list separated by commas", {
  imports <- make_imports()
  expect_match(imports, "(.+,\n)+.+")
})
