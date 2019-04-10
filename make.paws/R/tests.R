#' @include templates.R
#' @include tests_config.R
NULL

test_file_template <- template(
  `
  context("${service}")

  svc <- paws::${service}()

  if (Sys.getenv("NOT_CRAN") == "true") {

  ${tests}

  }
  `
)

# Make all tests for a given API.
make_tests <- function(api) {
  tests <- list()
  i <- 1
  for (operation in get_testable_operations(api)) {
    for (test_args in get_test_args(operation, api)) {
      test <- make_test(operation, api, test_args$args, test_args$outcome)
      tests[[i]] <- test
      i <- i + 1
    }
  }
  tests <- paste(tests, collapse = "\n\n")
  render(
    test_file_template,
    service = package_name(api),
    tests = tests
  )
}

# Make the individual test template.
test_template <- template(
  `
  test_that("${operation_name}", {
    expect_error(svc$${call}, ${outcome})
  })
  `
)

# Make a test for a given operation with the given arguments.
make_test <- function(operation, api, args, outcome) {
  operation <- get_operation_name(operation)
  service <- package_name(api)
  call <- make_call(operation, args)
  test <- render(
    test_template,
    operation_name = operation,
    call = call,
    outcome = outcome
  )
  return(test)
}

# Returns a list of the testable operations for a given API.
get_testable_operations <- function(api) {
  testable_operations <- list()
  i <- 1
  for (operation in api$operations) {
    name <- get_operation_name(operation)
    if (!any(startsWith(name, c("describe", "list")))) next
    if (skipped_operation(operation, api)) next
    if (has_required_params(operation, api)) next
    testable_operations[[i]] <- operation
    i <- i + 1
  }
  return(testable_operations)
}

# Return whether the operation should be skipped, based on whether it matches
# any of the patterns in the list of operations to skip.
skipped_operation <- function(operation, api) {
  name <- get_operation_name(operation)
  skips <- get_skipped_operations(api)
  matches <- sapply(skips, function(x) grepl(x, name))
  any(matches)
}

# Return a list of patterns that encompass the operations to skip for an API.
get_skipped_operations <- function(api) {
  service <- package_name(api)
  skip <- tests_config[[service]]$skip
  if (is.null(skip)) return(character(0))
  patterns <- sprintf("^%s$", gsub("\\*", ".*", skip))
  patterns
}

# Return a list of test arguments & outcomes for an operation.
get_test_args <- function(operation, api) {
  test_args <- list()
  if (!has_required_params(operation, api)) {
    args <- list(args = list(), outcome = NA)
    test_args[[length(test_args)+1]] <- args
  }
  if (has_params(operation, api, "MaxResults")) {
    args <- list(args = list(MaxResults = 20), outcome = NA)
    test_args[[length(test_args)+1]] <- args
  }
  return(test_args)
}

# Returns whether the operation has all of the supplied parameters.
has_params <- function(operation, api, params) {
  input_shape <- operation$input$shape
  if (!is.null(input_shape)) {
    inputs <- api$shapes[[input_shape]]
    operation_params <- names(inputs$member) # matches "member" or "members".
    if (all(params %in% operation_params)) {
      return(TRUE)
    }
  }
  return(FALSE)
}

# Returns whether an operation has required parameters.
has_required_params <- function(operation, api) {
  input_shape <- operation$input$shape
  if (!is.null(input_shape)) {
    inputs <- api$shapes[[input_shape]]
    if (length(inputs$required) > 0) {
      return(TRUE)
    }
  }
  return(FALSE)
}
