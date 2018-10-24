test_that("describe_directory_configs", {
    expect_error(describe_directory_configs(), NA)
})

test_that("describe_directory_configs", {
    expect_error(describe_directory_configs(MaxResults = 20), NA)
})

test_that("describe_fleets", {
    expect_error(describe_fleets(), NA)
})

test_that("describe_image_builders", {
    expect_error(describe_image_builders(), NA)
})

test_that("describe_image_builders", {
    expect_error(describe_image_builders(MaxResults = 20), NA)
})

test_that("describe_images", {
    expect_error(describe_images(), NA)
})

test_that("describe_images", {
    expect_error(describe_images(MaxResults = 20), NA)
})

test_that("describe_stacks", {
    expect_error(describe_stacks(), NA)
})
