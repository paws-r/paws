path <- tempdir()

# Create a fake API spec.
path_in <- file.path(path, "in")
api <- list(
  metadata = list(
    endpointPrefix = "foo",
    protocol = "json",
    serviceAbbreviation = "foo",
    serviceFullName = "AWS Foo",
    signatureVersion = "v4"
  ),
  operations = list(
    Foo = list(
      name = "Foo",
      http = list(method = "GET", requestUri = "/"),
      input = list(shape = "FooRequest"),
      output = list(shape = "FooResponse"),
      documentation = "Foo"
    )
  ),
  shapes = list(
    FooRequest = list(
      type = "structure",
      required = list("Foo"),
      members = list(
        Foo = list(shape = "Foo", documentation = "Foo"),
        Bar = list(shape = "Bar", documentation = "Bar")
      )
    ),
    FooResponse = list(
      type = "structure",
      members = list(
        Foo = list(shape = "Foo", documentation = "Foo"),
        Bar = list(shape = "Bar", documentation = "Bar")
      )
    ),
    Foo = list(type = "string"),
    Bar = list(type = "string")
  ),
  documentation = "AWS Foo is an example AWS API."
)

api_path <- file.path(
  path_in,
  "botocore",
  "data",
  "foo",
  "2018-11-01",
  "service-2.json"
)
dir.create(dirname(api_path), recursive = TRUE, showWarnings = FALSE)
jsonlite::write_json(api, api_path, auto_unbox = TRUE)

region_config <- list(
  rules = list("*/*" = list(endpoint = "{service}.{region}.amazonaws.com"))
)
region_config_path <- file.path(path_in, "botocore", "data", "endpoints.json")
dir.create(dirname(region_config_path), recursive = TRUE, showWarnings = FALSE)
jsonlite::write_json(region_config, region_config_path, auto_unbox = TRUE)

path_out <- file.path(path, "out")
path_docs <- file.path(path, "docs")

#-------------------------------------------------------------------------------

test_that("make_sdk", {
  categories <- list(
    list(
      name = "bar",
      services = list("foo"),
      title = "Foo",
      description = "This is a complete sentence."
    )
  )

  test_get_categories <- function() {
    return(categories)
  }

  # Override the categories for testing.
  assignInNamespace("get_categories", test_get_categories, "make.paws")

  make_sdk(path_in, path_out, path_docs, only_cran = FALSE)

  expect_true(dir.exists(path_out))
  expect_true(file.exists(file.path(path_out, "paws/DESCRIPTION")))
  expect_true(file.exists(file.path(path_out, "paws/NAMESPACE")))
  expect_true(dir.exists(file.path(path_out, "paws/R")))
  expect_true(all("paws.R" %in% list.files(file.path(path_out, "paws/R"))))

  files <- c("foo_interfaces.R", "foo_operations.R", "foo_service.R")
  expect_true(all(files %in% list.files(file.path(path_out, "paws.bar/R"))))
})

test_that("make_sdk with sub categories", {
  # Clear out files from previous tests.
  file.remove(list.files(path_out, full.names = T, recursive = T))

  categories <- list(
    list(
      name = "bar.p1",
      title = "Bar",
      description = "Bar.",
      category_description = "Category Bar.",
      services = list("foo")
    ),
    list(
      name = "bar.p2",
      title = "Bar",
      description = "Bar.",
      category_description = "",
      services = list("foo")
    )
  )

  test_get_categories <- function() {
    return(categories)
  }

  # Override the categories for testing.
  assignInNamespace("get_categories", test_get_categories, "make.paws")

  expect_error(make_sdk(path_in, path_out, path_docs, only_cran = FALSE), NA)
  expect_true(file.exists(file.path(path_out, "paws")))
  expect_true(file.exists(file.path(path_out, "paws.bar")))
  expect_true(file.exists(file.path(path_out, "paws.bar.p1")))
  expect_true(file.exists(file.path(path_out, "paws.bar.p2")))

  # Should continue to work a second time.
  expect_error(make_sdk(path_in, path_out, path_docs, only_cran = FALSE), NA)
  expect_true(file.exists(file.path(path_out, "paws")))
  expect_true(file.exists(file.path(path_out, "paws.bar")))
  expect_true(file.exists(file.path(path_out, "paws.bar.p1")))
  expect_true(file.exists(file.path(path_out, "paws.bar.p2")))
})

test_that("list_apis", {
  temp <- tempdir()
  fs::dir_create(fs::path(temp, "data", c("api1", "api2")))
  write("skip", file.path(temp, "data", "skip.json"))

  actual <- list_apis(file.path(temp, "data"))
  expected <- c("api1", "api2")
  expect_equal(actual, expected)
})
