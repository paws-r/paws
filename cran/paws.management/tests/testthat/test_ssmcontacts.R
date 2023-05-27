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

test_that("list_rotations", {
  expect_error(svc$list_rotations(), NA)
})

test_that("list_rotations", {
  expect_error(svc$list_rotations(MaxResults = 20), NA)
})
