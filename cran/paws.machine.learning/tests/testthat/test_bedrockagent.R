svc <- paws.machine.learning::bedrockagent()

test_that("list_agents", {
  skip_on_cran()
  expect_error(svc$list_agents(), NA)
})

test_that("list_flows", {
  skip_on_cran()
  expect_error(svc$list_flows(), NA)
})

test_that("list_knowledge_bases", {
  skip_on_cran()
  expect_error(svc$list_knowledge_bases(), NA)
})

test_that("list_prompts", {
  skip_on_cran()
  expect_error(svc$list_prompts(), NA)
})
