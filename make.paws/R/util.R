# Return whether x is empty, i.e. null or has a default value.
is_empty <- function(x) {
  if (is.null(x) || length(x) == 0) return(TRUE)
  UseMethod("is_empty", x)
}

is_empty.character <- function(x) {
  return(is.na(x) || x == "")
}

is_empty.raw <- function(x) {
  return(length(x) == 0)
}

# Check if a list of values is empty. If the list is recursive, search the list.
is_empty.list <- function(x) {
  return(all(sapply(x, is_empty)))
}

is_empty.default <- function(x) {
  return(is.na(x))
}
