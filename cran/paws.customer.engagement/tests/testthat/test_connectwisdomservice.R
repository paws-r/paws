svc <- paws::connectwisdomservice()

test_that("list_assistants", {
  expect_error(svc$list_assistants(), NA)
})

test_that("list_knowledge_bases", {
  expect_error(svc$list_knowledge_bases(), NA)
})
