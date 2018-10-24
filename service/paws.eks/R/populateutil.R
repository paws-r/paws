# Construct objects to be filled in by `populate`. These are currently used to
# create interface objects for testing, e.g. given some user-supplied arguments,
# populate the interface constructed with these functions, then build the HTTP
# request body using one of the build handlers.

Object <- function(..., .attrs = NULL, type) {
  values <- list(...)
  attr(values, "type") <- type
  for (i in seq_along(.attrs)) {
    attr_name <- names(.attrs)[i]
    attr(values, attr_name) <- .attrs[[i]]
  }
  return(values)
}

Structure <- function(..., .attrs = NULL) {
  return(Object(..., .attrs = .attrs, type = "structure"))
}

List <- function(..., .attrs = NULL) {
  return(Object(..., .attrs = .attrs, type = "list"))
}

Map <- function(..., .attrs = NULL) {
  return(Object(..., .attrs = .attrs, type = "map"))
}

Scalar <- function(value = NULL, .attrs = NULL, type = "scalar") {
  if (is.null(value)) value <- logical(0)
  attr(value, "type") <- type
  for (i in seq_along(.attrs)) {
    attr_name <- names(.attrs)[i]
    attr(value, attr_name) <- .attrs[[i]]
  }
  return(value)
}

Bool <- function(value = NULL, .attrs = NULL) {
  return(Scalar(value, .attrs = .attrs, type = "boolean"))
}
