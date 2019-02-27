context("API file functions")

test_that("merge_examples", {
  api <- list(
    operations = list(
      operation1 = list(),
      operation2 = list()
    )
  )
  examples <- list(
    operation1 = list(
      list(description = "foo")
    ),
    operation2 = list(
      list(description = "bar")
    )
  )
  ret <- merge_examples(api, examples)
  expect_equal(ret$operations$operation1$examples[[1]]$description, "foo")
  expect_equal(ret$operations$operation2$examples[[1]]$description, "bar")
})
