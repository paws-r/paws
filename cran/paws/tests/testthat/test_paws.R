# paws re-exports its category packages (e.g. paws.storage) and has
# no operations of its own, so there are no generated service tests here.
test_that("paws loads", {
  expect_true(requireNamespace("paws", quietly = TRUE))
})
