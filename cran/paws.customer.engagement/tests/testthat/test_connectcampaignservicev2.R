svc <- paws.customer.engagement::connectcampaignservicev2()

test_that("list_campaigns", {
  skip_on_cran()
  expect_error(svc$list_campaigns(), NA)
})
