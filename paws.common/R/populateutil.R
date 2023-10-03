#' @include util.R

# Construct objects to be filled in by `populate`. These are currently used to
# create interface objects for testing, e.g. given some user-supplied arguments,
# populate the interface constructed with these functions, then build the HTTP
# request body using one of the build handlers.

Object <- function(..., .tags = NULL, type) {
  object <- list(...)
  tags <- c(list(type = type), .tags)
  object <- tag_add(object, tags)
  return(object)
}

Structure <- function(..., .tags = NULL) {
  if (is.null(names(list(...)))) stop("a structure must have names")
  return(Object(..., .tags = .tags, type = "structure"))
}

List <- function(..., .tags = NULL) {
  if (!is.null(names(list(...)))) stop("a list must not have names")
  return(Object(..., .tags = .tags, type = "list"))
}

Map <- function(..., .tags = NULL) {
  if (!is.null(names(list(...)))) stop("a map must not have names")
  return(Object(..., .tags = .tags, type = "map"))
}

Scalar <- function(value = NULL, .tags = NULL, type = "scalar") {
  if (length(value) > 1 || !is_atomic(value)) stop("a scalar must be length <= 1")
  if (is.null(value)) value <- logical(0)
  tags <- c(list(type = type), .tags)
  value <- tag_add(value, tags)
  return(value)
}

Bool <- function(value = NULL, .tags = NULL) {
  return(Scalar(value, .tags = .tags, type = "boolean"))
}
