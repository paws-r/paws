context("cloud9")

svc <- paws::cloud9()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("describe_environment_memberships", {
  expect_error(svc$describe_environment_memberships(), NA)
})

test_that("list_environments", {
  expect_error(svc$list_environments(), NA)
})

}
