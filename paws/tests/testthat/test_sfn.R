svc <- paws::sfn()

test_that("list_activities", {
  expect_error(svc$list_activities(), NA)
})

test_that("list_state_machines", {
  expect_error(svc$list_state_machines(), NA)
})
