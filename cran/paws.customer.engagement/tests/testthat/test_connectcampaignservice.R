svc <- paws::connectcampaignservice()

test_that("list_campaigns", {
  skip_on_cran()
  expect_error(svc$list_campaigns(), NA)
})
