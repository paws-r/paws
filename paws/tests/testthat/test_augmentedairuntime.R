context("augmentedairuntime")

svc <- paws::augmentedairuntime()

test_that("list_human_loops", {
  expect_error(svc$list_human_loops(), NA)
})

test_that("list_human_loops", {
  expect_error(svc$list_human_loops(MaxResults = 20), NA)
})
