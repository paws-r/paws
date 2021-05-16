svc <- paws::kinesisvideoarchivedmedia()

test_that("list_fragments", {
  expect_error(svc$list_fragments(), NA)
})

test_that("list_fragments", {
  expect_error(svc$list_fragments(MaxResults = 20), NA)
})
