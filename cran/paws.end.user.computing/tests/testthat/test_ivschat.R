svc <- paws::ivschat()

test_that("list_rooms", {
  expect_error(svc$list_rooms(), NA)
})
