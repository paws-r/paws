test_that("list_builds", {
    expect_error(list_builds(), NA)
})

test_that("list_curated_environment_images", {
    expect_error(list_curated_environment_images(), NA)
})

test_that("list_projects", {
    expect_error(list_projects(), NA)
})
