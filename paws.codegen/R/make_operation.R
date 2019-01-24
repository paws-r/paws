#' @include make_function.R
NULL

# A template for R functions calling AWS API operations
operation_template <- function() {
  op <- new_operation(
    name = .OPERATION_NAME,
    http_method = .HTTP_METHOD,
    http_path = .HTTP_PATH,
    paginator = list()
  )
  input <- .OPERATION_INPUT
  output <- .OPERATION_OUTPUT
  svc <- service()
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}

# Avoid R check notes.
utils::globalVariables(c(
  ".OPERATION_NAME",
  ".HTTP_METHOD",
  ".HTTP_PATH",
  ".OPERATION_INPUT",
  ".OPERATION_OUTPUT",
  "service"
))

# Make a function for a given API operation.
make_operation_function <- function(operation, api) {
  function_name <- get_operation_name(operation)
  input_name <- paste0(function_name, "_input")
  output_name <- paste0(function_name, "_output")
  if ("input" %in% names(operation)) {
    input_shape <- api$shapes[[operation$input$shape]]
  } else {
    input_shape <- list()
  }
  input <- make_call(input_name, make_operation_args(input_shape))
  output <- make_call(output_name, c())
  params <- make_operation_params(input_shape)
  func <- make_function_from_template(
    name = function_name,
    template = operation_template,
    subs = list(
      .OPERATION_NAME = operation$name,
      .HTTP_METHOD = operation$http$method,
      .HTTP_PATH = operation$http$requestUri,
      .OPERATION_INPUT = input,
      .OPERATION_OUTPUT = output
    ),
    params = params
  )
  return(func)
}

# Make the documentation comment for a given API operation.
make_operation_docs <- function(operation, api) {
  docs <- make_docs(operation, api)
  return(docs)
}

# Make an operation, both function and documentation.
make_operation <- function(operation, api) {
  docs <- make_operation_docs(operation, api)
  func <- make_operation_function(operation, api)
  op <- sprintf("%s\n%s", docs, func)
  return(op)
}

# Make all API operations.
make_operations <- function(api) {
  operations <- list()
  for (op in api$operations) {
    operation <- make_operation(op, api)
    operations <- c(operations, operation)
  }
  operations <- add_header_comment(
    comment = "@importFrom paws.common new_operation new_request send_request",
    text = operations
  )
  return(operations)
}

#-------------------------------------------------------------------------------

# Get the inputs for an API operation.
get_inputs <- function(input) {
  if (!is.null(input)) {
    members <- input$members
    required <- unlist(input$required)
    members[] <- lapply(seq_along(members), function(i) {
      x <- members[[i]]
      x$member_name <- names(members)[i]
      x$required <- x$member_name %in% required
      x
    })
  } else {
    members <- list()
  }
  members
}

# Make the list of params that will go in the operation's function signature.
make_operation_params <- function(shape) {
  if (!is.null(shape)) {
    inputs <- get_inputs(shape)
    result <- lapply(inputs, function(x) if (x$required) bquote() else NULL)
    names(result) <- lapply(inputs, function(x) x$member_name)
  } else {
    result <- list()
  }
  return(result)
}

# Make the named list of arguments that will be passed into the operation's
# interface function.
make_operation_args <- function(shape) {
  if (!is.null(shape) && length(shape) > 0) {
    inputs <- get_inputs(shape)
    result <- lapply(inputs, function(x) as.symbol(x$member_name))
  } else {
    result <- list()
  }
  return(result)
}
