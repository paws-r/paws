#' Check whether an object is empty
#'
#' Check whether an object is empty, e.g. has no sub-elements, is NA, or is the
#' empty string.
#'
#' @param x An object.
#'
#' @examples
#' is_empty(NA) # TRUE
#' is_empty("") # TRUE
#' is_empty(list()) # TRUE
#' is_empty(list(list())) # TRUE
#'
#' is_empty(1) # FALSE
#' is_empty(list(1)) # FALSE
#' is_empty(list(list(1))) # FALSE
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

#' Check whether an object is empty for xml builds
#'
#' Check whether an object is empty, e.g. has no sub-elements, is NA
#'
#' @param x An object.
#'
#' @examples
#' is_empty_xml(NA) # TRUE
#' is_empty_xml(list()) # TRUE
#' is_empty_xml(list(list())) # TRUE
#'
#' is_empty_xml(1) # FALSE
#' is_empty_xml("") # FALSE
#' is_empty_xml(list(1)) # FALSE
#' is_empty_xml(list(list(1))) # FALSE
#'
#' @export
is_empty_xml <- function(x) {
  if (is.null(x) || length(x) == 0) return(TRUE)
  UseMethod("is_empty_xml")
}

#' @export
is_empty_xml.character <- function(x) {
  return(is.na(x))
}

#' @export
is_empty_xml.raw <- is_empty.raw

#' @export
is_empty_xml.list <- function(x) {
  return(all(sapply(x, is_empty_xml)))
}

#' @export
is_empty_xml.default <- is_empty.default

# Call a function `f` with arguments taken from elements in `data`, including
# only those data elements that correspond to parameters.
# For example:
# f <- function(a) {}
# data <- list(a = "1", b = "2")
# call_with_args(f, data) == f("1")
call_with_args <- function(f, data) {
  args <- methods::formalArgs(f)
  if (is.null(args)) {
    return(f())
  }
  if (!all(args %in% names(data))) {
    stop("A parameter has no corresponding element in `data`.")
  }
  return(do.call(f, as.list(data)[args]))
}
