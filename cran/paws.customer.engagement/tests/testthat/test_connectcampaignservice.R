svc <- paws::connectcampaignservice()

test_that("list_campaigns", {
  expect_error(svc$list_campaigns(), NA)
})
