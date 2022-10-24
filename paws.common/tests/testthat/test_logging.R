# ensure all log configs are set to defaults
paws_config_log()

test_that("check default logging settings", {
  log_level <- getOption("paws.log_level")
  log_file <- getOption("paws.log_file")
  log_timestamp_fmt <- getOption("paws.log_timestamp_fmt")

  expect_equal(log_level, 2L)
  expect_equal(log_file, "")
  expect_equal(log_timestamp_fmt, "%Y-%m-%d %H:%M:%OS3")
})

test_that("check updating paws log config", {
  temp_file = tempfile()
  paws_config_log(level = 3L, file = temp_file, timestamp_fmt = "%Y-%m-%d %H:%M")

  log_level <- getOption("paws.log_level")
  log_file <- getOption("paws.log_file")
  log_timestamp_fmt <- getOption("paws.log_timestamp_fmt")

  expect_equal(log_level, 3L)
  expect_equal(log_file, temp_file)
  expect_equal(log_timestamp_fmt, "%Y-%m-%d %H:%M")
  unlink(temp_file)
})

test_that("check updating paws log config with wrong parameter types", {
  expect_error(
    paws_config_log(level = "3"),
    "`level` must be integer"
  )
  expect_error(
    paws_config_log(file = 1),
    "`file` must be character"
  )
  expect_error(
    paws_config_log(timestamp_fmt = 1),
    "`timestamp_fmt` must be character"
  )
})

test_that("check if file created in none existing directory", {
  temp_dir = tempfile()
  temp_file = file.path(temp_dir, "demo.log")
  paws_config_log(file = temp_file)
  expect_true(dir.exists(temp_dir))
  unlink(temp_file)
})

test_that("check http paws logging ", {
  temp_file = tempfile()
  options("paws.log_level" = 3L)
  options("paws.log_file" = temp_file)

  resp <- paws.common:::with_paws_verbose(
    httr::GET("http://google.com/")
  )

  actual <- readLines(temp_file)
  expect_true(any(grepl("INFO", actual)))
  unlink(temp_file)
})

test_that("check if http paws log are being tracked", {
  temp_file = tempfile()
  options("paws.log_level" = 3L)
  options("paws.log_file" = temp_file)

  resp <- paws.common:::with_paws_verbose(
    httr::GET("http://google.com/")
  )
  actual <- readLines(temp_file)
  expect_true(any(grepl("INFO", actual)))
  unlink(temp_file)
})

test_that("check if http logs aren't being tracked", {
  temp_file = tempfile()
  options("paws.log_level" = 2L)
  options("paws.log_file" = temp_file)

  resp <- paws.common:::with_paws_verbose(
    httr::GET("http://google.com/")
  )
  expect_false(file.exists(temp_file))
  unlink(temp_file)
})

test_that("check reset log config", {
  paws_config_log(
    level = 3L,
    file = "made-up",
    timestamp_fmt = "%Y-%m-%d %H:%M"
  )
  log_level <- getOption("paws.log_level")
  log_file <- getOption("paws.log_file")
  log_timestamp_fmt <- getOption("paws.log_timestamp_fmt")

  expect_equal(log_level, 3L)
  expect_equal(log_file, "made-up")
  expect_equal(log_timestamp_fmt, "%Y-%m-%d %H:%M")

  paws_config_log()
  log_level <- getOption("paws.log_level")
  log_file <- getOption("paws.log_file")
  log_timestamp_fmt <- getOption("paws.log_timestamp_fmt")

  expect_equal(log_level, 2L)
  expect_equal(log_file, "")
  expect_equal(log_timestamp_fmt, "%Y-%m-%d %H:%M:%OS3")
})
