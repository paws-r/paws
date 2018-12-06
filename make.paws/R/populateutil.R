# Construct objects to be filled in by `populate`. These are currently used to
# create interface objects for testing, e.g. given some user-supplied arguments,
# populate the interface constructed with these functions, then build the HTTP
# request body using one of the build handlers.

Object <- function(..., .tags = NULL, type) {
  values <- list(...)
  tags <- c(list(type = type), .tags)
  values <- add_tags(values, tags)
  return(values)
}

Structure <- function(..., .tags = NULL) {
  return(Object(..., .tags = .tags, type = "structure"))
}

List <- function(..., .tags = NULL) {
  return(Object(..., .tags = .tags, type = "list"))
}

Map <- function(..., .tags = NULL) {
  return(Object(..., .tags = .tags, type = "map"))
}

Scalar <- function(value = NULL, .tags = NULL, type = "scalar") {
  if (is.null(value)) value <- logical(0)
  tags <- c(list(type = type), .tags)
  value <- add_tags(value, tags)
  return(value)
}

Bool <- function(value = NULL, .tags = NULL) {
  return(Scalar(value, .tags = .tags, type = "boolean"))
}
