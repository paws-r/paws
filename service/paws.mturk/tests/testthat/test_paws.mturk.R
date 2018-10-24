test_that("list_bonus_payments", {
    expect_error(list_bonus_payments(), NA)
})

test_that("list_bonus_payments", {
    expect_error(list_bonus_payments(MaxResults = 20), NA)
})

test_that("list_hi_ts", {
    expect_error(list_hi_ts(), NA)
})

test_that("list_hi_ts", {
    expect_error(list_hi_ts(MaxResults = 20), NA)
})

test_that("list_qualification_requests", {
    expect_error(list_qualification_requests(), NA)
})

test_that("list_qualification_requests", {
    expect_error(list_qualification_requests(MaxResults = 20), NA)
})

test_that("list_reviewable_hi_ts", {
    expect_error(list_reviewable_hi_ts(), NA)
})

test_that("list_reviewable_hi_ts", {
    expect_error(list_reviewable_hi_ts(MaxResults = 20), NA)
})

test_that("list_worker_blocks", {
    expect_error(list_worker_blocks(), NA)
})

test_that("list_worker_blocks", {
    expect_error(list_worker_blocks(MaxResults = 20), NA)
})
