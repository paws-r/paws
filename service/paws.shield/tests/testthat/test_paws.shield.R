test_that("describe_drt_access", {
    expect_error(describe_drt_access(), NA)
})

test_that("describe_emergency_contact_settings", {
    expect_error(describe_emergency_contact_settings(), NA)
})

test_that("describe_subscription", {
    expect_error(describe_subscription(), NA)
})

test_that("list_attacks", {
    expect_error(list_attacks(), NA)
})

test_that("list_attacks", {
    expect_error(list_attacks(MaxResults = 20), NA)
})

test_that("list_protections", {
    expect_error(list_protections(), NA)
})

test_that("list_protections", {
    expect_error(list_protections(MaxResults = 20), NA)
})
