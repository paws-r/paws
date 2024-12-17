svc <- paws::cloudwatchapplicationsignals()

test_that("list_service_level_objectives", {
  expect_error(svc$list_service_level_objectives(), NA)
})

test_that("list_service_level_objectives", {
  expect_error(svc$list_service_level_objectives(MaxResults = 20), NA)
})
