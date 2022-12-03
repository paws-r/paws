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
  documentation = "AWS Foo is an example AWS API."
)
api_path <- file.path(path_in, "apis", "foo-2018-11-01.normal.json")
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
path_docs <- file.path(path, "docs")

test_get_categories <- function() {
  return(list(
    list(
      name = "bar",
      services = list("foo"),
      title = "Foo",
      description = "This is a complete sentence."
    )
  ))
}

# Override the categories for testing.
assignInNamespace("get_categories", test_get_categories, "make.paws")

#-------------------------------------------------------------------------------

test_that("make_sdk", {
  make_sdk(path_in, path_out, path_docs, only_cran = FALSE)

  expect_true(dir.exists(path_out))
  expect_true(file.exists(file.path(path_out, "paws/DESCRIPTION")))
  expect_true(file.exists(file.path(path_out, "paws/NAMESPACE")))
  expect_true(dir.exists(file.path(path_out, "paws/R")))
  expect_true(all("paws.R" %in% list.files(file.path(path_out, "paws/R"))))

  files <- c("foo_interfaces.R", "foo_operations.R", "foo_service.R")
  expect_true(all(files %in% list.files(file.path(path_out, "paws.bar/R"))))
})

test_that("make_categories with sub categories", {
   categories <- list(
     list(
       name = "bar.p1",
       title = "Bar",
       description = "Bar.",
       category_description = "Category Bar.",
       services = list(
         "foo"
       )
     ),
     list(
       name = "bar.p2",
       title = "Bar",
       description = "Bar.",
       category_description = "",
       services = list(
         "foo"
       )
     )
   )
   path_cran <- file.path(path, "cran")
   dir.create(path_cran, showWarnings = FALSE)
   # empty cran folder
   file.remove(list.files(path_cran, full.names = T,recursive = T))

   expect_error(make_categories(path_out, path_cran, categories), NA)
   expect_true(file.exists(file.path(path_cran, "paws")))
   expect_true(file.exists(file.path(path_cran, "paws.bar")))
   expect_true(file.exists(file.path(path_cran, "paws.bar.p1")))
   expect_true(file.exists(file.path(path_cran, "paws.bar.p2")))

   # Should continue to work a second time.
   expect_error(make_cran(path_out, path_cran, categories), NA)
   expect_true(file.exists(file.path(path_cran, "paws")))
   expect_true(file.exists(file.path(path_cran, "paws.bar")))
   expect_true(file.exists(file.path(path_cran, "paws.bar.p1")))
   expect_true(file.exists(file.path(path_cran, "paws.bar.p2")))
 })

test_that("list_apis", {
  temp <- tempdir()

  write("", file.path(temp, "api1-2018-01-01.normal.json"))
  write("", file.path(temp, "api2-2018-01-01.normal.json"))
  write("skip", file.path(temp, "skip.json"))

  actual <- list_apis(temp)
  expected <- c("api1", "api2")
  expect_equal(actual, expected)
})
