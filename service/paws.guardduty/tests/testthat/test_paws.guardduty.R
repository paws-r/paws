test_that("list_detectors", {
    expect_error(list_detectors(), NA)
})

test_that("list_detectors", {
    expect_error(list_detectors(MaxResults = 20), NA)
})

test_that("list_invitations", {
    expect_error(list_invitations(), NA)
})

test_that("list_invitations", {
    expect_error(list_invitations(MaxResults = 20), NA)
})
