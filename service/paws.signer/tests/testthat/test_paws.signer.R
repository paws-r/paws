test_that("list_signing_jobs", {
    expect_error(list_signing_jobs(), NA)
})

test_that("list_signing_platforms", {
    expect_error(list_signing_platforms(), NA)
})

test_that("list_signing_profiles", {
    expect_error(list_signing_profiles(), NA)
})
