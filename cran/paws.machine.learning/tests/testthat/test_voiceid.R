svc <- paws::voiceid()

test_that("list_domains", {
  expect_error(svc$list_domains(), NA)
})

test_that("list_domains", {
  expect_error(svc$list_domains(MaxResults = 20), NA)
})
