svc <- paws::telconetworkbuilder()

test_that("list_sol_function_instances", {
  skip_on_cran()
  expect_error(svc$list_sol_function_instances(), NA)
})

test_that("list_sol_function_packages", {
  skip_on_cran()
  expect_error(svc$list_sol_function_packages(), NA)
})

test_that("list_sol_network_instances", {
  skip_on_cran()
  expect_error(svc$list_sol_network_instances(), NA)
})

test_that("list_sol_network_operations", {
  skip_on_cran()
  expect_error(svc$list_sol_network_operations(), NA)
})

test_that("list_sol_network_packages", {
  skip_on_cran()
  expect_error(svc$list_sol_network_packages(), NA)
})
