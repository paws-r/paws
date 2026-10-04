svc <- paws.customer.engagement::connectwisdomservice()

test_that("list_assistants", {
  skip_on_cran()
  expect_error(svc$list_assistants(), NA)
})

test_that("list_knowledge_bases", {
  skip_on_cran()
  expect_error(svc$list_knowledge_bases(), NA)
})
