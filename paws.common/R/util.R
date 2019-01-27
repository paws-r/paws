#' Check whether an object is empty
#'
#' Check whether an object is empty, e.g. has no sub-elements or is NA or the
#' empty string.
#'
#' @param x An object.
#'
#' @export
is_empty <- function(x) {
  if (is.null(x) || length(x) == 0) return(TRUE)
  UseMethod("is_empty")
}

#' @export
is_empty.character <- function(x) {
  return(is.na(x) || x == "")
}

#' @export
is_empty.raw <- function(x) {
  return(length(x) == 0)
}

# Check if a list of values is empty. If the list is recursive, search the list.
#' @export
is_empty.list <- function(x) {
  return(all(sapply(x, is_empty)))
}

#' @export
is_empty.default <- function(x) {
  return(is.na(x))
}
