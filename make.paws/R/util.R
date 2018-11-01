# Return whether x is non-empty, i.e. not null and has a non-default value.
not_empty <- function(x) {
  if (is.null(x) || is.na(x)) return(FALSE)
  UseMethod("not_empty")
}

not_empty.character <- function(x) {
  return(x != "")
}
