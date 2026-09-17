test_that("make_interfaces_files emits an interfaces file and a shapes registry", {
  api <- list(
    metadata = list(serviceAbbreviation = "api"),
    operations = list(
      Foo = list(name = "Foo", input = list(shape = "FooShape"))
    ),
    shapes = list(FooShape = list(type = "string"))
  )
  result <- make_interfaces_files(api)

  expect_named(result, c(file.path("R", "api_interfaces.R"), file.path("R", "api_shapes.rds")))
  expect_true(is.character(result[[file.path("R", "api_interfaces.R")]]))

  shapes <- result[[file.path("R", "api_shapes.rds")]]
  expect_true(inherits(shapes, "shapes_data"))
  expect_named(unclass(shapes), "foo_input")
})

test_that("make_interfaces_files omits the shapes file when there are no shapes", {
  api <- list(
    metadata = list(serviceAbbreviation = "api"),
    operations = list(Bar = list(name = "Bar"))
  )
  result <- make_interfaces_files(api)

  expect_named(result, file.path("R", "api_interfaces.R"))
})

test_that("write_dict writes shapes_data entries as an .rds file", {
  dir <- withr::local_tempdir()
  shapes <- list(foo_input = structure(logical(0), tags = list(type = "string")))
  class(shapes) <- "shapes_data"

  write_dict(list("R/api_shapes.rds" = shapes), dir)

  path <- file.path(dir, "R", "api_shapes.rds")
  expect_true(file.exists(path))
  expect_equal(readRDS(path), unclass(shapes))
})

test_that("consolidate_shapes merges per-service .rds files into sysdata.rda", {
  package_dir <- withr::local_tempdir()
  r_dir <- file.path(package_dir, "R")
  dir.create(r_dir, recursive = TRUE)

  saveRDS(
    list(foo_input = structure(logical(0), tags = list(type = "string"))),
    file.path(r_dir, "glue_shapes.rds")
  )
  saveRDS(
    list(bar_input = structure(logical(0), tags = list(type = "integer"))),
    file.path(r_dir, "s3_shapes.rds")
  )

  consolidate_shapes(package_dir)

  sysdata_path <- file.path(r_dir, "sysdata.rda")
  expect_true(file.exists(sysdata_path))
  expect_equal(list.files(r_dir, pattern = "_shapes\\.rds$"), character(0))

  env <- new.env()
  load(sysdata_path, envir = env)
  expect_setequal(ls(env, all.names = TRUE), c(".glue_shapes", ".s3_shapes"))
  expect_equal(
    env$.glue_shapes,
    list(foo_input = structure(logical(0), tags = list(type = "string")))
  )
})

test_that("consolidate_shapes is a no-op when there are no shapes files", {
  package_dir <- withr::local_tempdir()
  dir.create(file.path(package_dir, "R"), recursive = TRUE)

  consolidate_shapes(package_dir)

  expect_false(file.exists(file.path(package_dir, "R", "sysdata.rda")))
})
