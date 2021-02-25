svc <- paws::iotsecuretunneling()

test_that("list_tunnels", {
  expect_error(svc$list_tunnels(), NA)
})
