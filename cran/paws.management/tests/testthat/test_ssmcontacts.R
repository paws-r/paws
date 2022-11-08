svc <- paws::ssmcontacts()

test_that("list_contacts", {
  expect_error(svc$list_contacts(), NA)
})

test_that("list_contacts", {
  expect_error(svc$list_contacts(MaxResults = 20), NA)
})

test_that("list_engagements", {
  expect_error(svc$list_engagements(), NA)
})

test_that("list_engagements", {
  expect_error(svc$list_engagements(MaxResults = 20), NA)
})
