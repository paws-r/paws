op <- options(cache.disable = NULL)
on.exit(options(op), add = TRUE)

slow_operation <- function(x) {
  cached_expr(x, {
    Sys.sleep(0.5)
    x
  })
}

diff_secs <- function(time_x, time_y) {
  as.double(time_x - time_y, units = "secs")
}

test_that("cache basics", {
  # current_cache is only intended to be called within with_cache_dir
  expect_warning(current_cache())

  with_cache_dir(tempfile(), {
    expect_warning(current_cache(), NA)

    time1 <- Sys.time()
    resultA <- slow_operation(10)
    time2 <- Sys.time()
    resultB <- slow_operation(10)
    time3 <- Sys.time()

    expect_identical(resultA, 10)
    expect_identical(resultB, 10)
    expect_gte(diff_secs(time2, time1), 0.5)
    expect_lt(diff_secs(time3, time2), 0.1)

    time4 <- Sys.time()
    resultC <- slow_operation(5)
    time5 <- Sys.time()
    resultD <- slow_operation(5)
    time6 <- Sys.time()

    expect_identical(resultC, 5)
    expect_identical(resultD, 5)
    expect_gte(diff_secs(time5, time4), 0.5)
    expect_lt(diff_secs(time6, time5), 0.1)
  })
})

test_that("spot checking detects changing results", {
  op <- options(cache.spotcheck.level = 1)
  on.exit(options(op), add = TRUE)

  with_cache_dir(tempfile(), {
    cached_expr("key1", {
      1
    })

    # This will fail spot checking because it re-uses the same
    # key as slow_operation()
    expect_warning(
      cached_expr("key1", {
        2
      }),
      "spot-check"
    )

    # This won't fail spot checking because the level is 0
    options(cache.spotcheck.level = 0)
    cached_expr("key1", {
      3
    })
  })
})
