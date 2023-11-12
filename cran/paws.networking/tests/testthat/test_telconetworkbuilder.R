svc <- paws::telconetworkbuilder()

test_that("list_sol_function_instances", {
  expect_error(svc$list_sol_function_instances(), NA)
})

test_that("list_sol_function_packages", {
  expect_error(svc$list_sol_function_packages(), NA)
})

test_that("list_sol_network_instances", {
  expect_error(svc$list_sol_network_instances(), NA)
})

test_that("list_sol_network_operations", {
  expect_error(svc$list_sol_network_operations(), NA)
})

test_that("list_sol_network_packages", {
  expect_error(svc$list_sol_network_packages(), NA)
})
