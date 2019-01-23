# Return whether x is empty, i.e. null or has a default value.
#' @export
is_empty <- function(x) {
  if (is.null(x) || length(x) == 0) return(TRUE)
  # Use `switch` rather than `UseMethod` because the latter requires exporting
  # the function to work correctly.
  if (is.character(x)) return(is_empty.character(x))
  else if (is.raw(x)) return(is_empty.raw(x))
  else if (is.list(x)) return(is_empty.list(x))
  return(is_empty.default(x))
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
