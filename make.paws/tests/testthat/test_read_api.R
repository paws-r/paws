context("API file functions")

write_json <- function(x, file) jsonlite::write_json(x, file, auto_unbox = TRUE)

test_that("read_api", {
  path <- tempdir()
  api_path <- file.path(path, "apis")
  dir.create(api_path)

  write_json(list(foo = "examples"), file.path(api_path, "foo-2018-11-01.examples.json"))
  write_json(list(foo = "min"), file.path(api_path, "foo-2018-11-01.min.json"))
  write_json(list(foo = "normal", name = "foo"), file.path(api_path, "foo-2018-11-01.normal.json"))
  write_json(list(foo = "paginators"), file.path(api_path, "foo-2018-11-01.paginators.json"))

  write_json(list(foo = "wrong1"), file.path(api_path, "foo-2017-11-01.examples.json"))
  write_json(list(foo = "wrong2"), file.path(api_path, "foo-2017-11-01.min.json"))
  write_json(list(foo = "wrong3"), file.path(api_path, "foo-2017-11-01.normal.json"))
  write_json(list(foo = "wrong4"), file.path(api_path, "foo-2017-11-01.paginators.json"))

  region_path <- file.path(path, "lib")
  dir.create(region_path)
  write_json(list(rules = list("*/*" = list(endpoint = "bar"))), file.path(region_path, "region_config_data.json"))

  api <- read_api("foo", path)

  expect_equal(api$name, "foo")
  expect_equal(api$region_config$`*`, list(endpoint = "bar", global = FALSE))

  expect_error(read_api("bar", api_path))
})

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
