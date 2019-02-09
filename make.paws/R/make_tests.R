#' @include make_function.R
NULL

#' Run all tests in a package in another R session
#'
#' @param path The path to the package source.
#' @param timeout How long it should be allowed to run.
#'
#' @export
run_tests <- function(path, timeout = 180) {
  result <- tryCatch({
    run_tests_internal(path, timeout)
  }, error = function(e) {
    data.frame(
      package = basename(path),
      file = NA_character_,
      test = NA_character_,
      success = FALSE,
      message = "test failure",
      stringsAsFactors = FALSE
    )
  })
  return(result)
}

# Run all tests in a package with a given path.
run_tests_internal <- function(path, timeout = 180) {
  result <- callr::r(
    func = function(pkg, ...) devtools::test(pkg, ...),
    args = list(
      pkg = path,
      reporter = testthat::ListReporter
    ),
    timeout = timeout
  )
  out <- do.call(
    rbind,
    lapply(result, function(x) {
      data.frame(
        package = basename(path),
        file = x$file,
        test = x$test,
        success = sapply(x$results, function(y) !("error" %in% class(y))),
        message = sapply(x$results, function(y) y$message),
        stringsAsFactors = FALSE
      )
    })
  )
  return(out)
}

#-------------------------------------------------------------------------------

# Make the individual test template.
# The template must be defined outside `make_test` for code coverage to work.
TEST_TEMPLATE <- make_code_template({
  test_that(.OPERATION_QUOTED, {
    expect_error(.OPERATION, .OUTCOME)
  })
})

# Make a test for a given operation with the given arguments.
# The template must be defined outside `make_test` for code coverage to work.
make_test <- function(operation, args, outcome) {
  name <- get_operation_name(operation)
  call <- make_call(name, args)
  result <- render_code_template(
    template = TEST_TEMPLATE,
    values = list(
      .OPERATION_QUOTED = name,
      .OPERATION = call,
      .OUTCOME = outcome
    )
  )
  return(result)
}

# Make all tests for a given API.
make_tests <- function(api) {
  tests <- list()
  i <- 1
  for (operation in get_testable_operations(api)) {
    for (test_args in get_test_args(operation, api)) {
      test <- make_test(operation, test_args$args, test_args$outcome)
      tests[[i]] <- test
      i <- i + 1
    }
  }
  result <- paste(tests, collapse = "\n\n")
  return(result)
}

# Returns a list of the testable operations for a given API.
get_testable_operations <- function(api) {
  testable_operations <- list()
  i <- 1
  skipped_operations <- get_skipped_operations(api)
  for (operation in api$operations) {
    name <- get_operation_name(operation)
    if (!any(startsWith(name, c("describe", "list")))) next
    if (name %in% skipped_operations) next
    if (has_required_params(operation, api)) next
    testable_operations[[i]] <- operation
    i <- i + 1
  }
  return(testable_operations)
}

# Get which operations to skip testing for a given API.
get_skipped_operations <- function(api) {
  service <- tolower(struct_name(api))
  if (length(service) == 0) return(character(0))
  file <- sprintf("%s.R", service)
  path <- system_file("src", "tests", package = methods::getPackageName())
  if (!file.exists(file.path(path, file))) return(character(0))
  env <- new.env()
  source(file.path(path, file), local = env)
  if (is.null(env$skip)) return(character(0))
  return(env$skip)
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
