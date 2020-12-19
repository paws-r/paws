# Run before any tests
op <- options(cache.disable = TRUE)

# Run after all tests
withr::defer(options(op), teardown_env())
