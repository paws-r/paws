################################################################
# Base function binding for mocking:
# https://testthat.r-lib.org/reference/local_mocked_bindings.html#base-functions
################################################################

# re-assign Sys.time for mocking as setting a NULL binding will break the paginator
now <- function() {
  Sys.time()
}

get0 <- NULL
