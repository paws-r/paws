svc <- paws::bedrockagent()

test_that("list_agents", {
  expect_error(svc$list_agents(), NA)
})

test_that("list_flows", {
  expect_error(svc$list_flows(), NA)
})

test_that("list_knowledge_bases", {
  expect_error(svc$list_knowledge_bases(), NA)
})

test_that("list_prompts", {
  expect_error(svc$list_prompts(), NA)
})
