test_that("list_skills", {
    expect_error(list_skills(), NA)
})

test_that("list_skills", {
    expect_error(list_skills(MaxResults = 20), NA)
})
