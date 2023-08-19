#' @include util.R

# Create a constructor function for a named list data structure, where the
# values of its elements be changed but none can be added or deleted.
# `MyList <- struct(a = 1, b = 2)` will create a function to construct a
# list like `list(a =, b =)`, with default values a = 1 and b = 2.
# All names internal to this function start with `.` to avoid getting clobbered
# by names passed into the function.
struct <- function(...) {
  .struct <- list(...)
  .f <- function() {
    .args <- as.list(environment(), all.names = TRUE)
    class(.args) <- "struct"
    return(.args)
  }
  formals(.f) <- do.call(alist, .struct)
  return(.f)
}

# Get an element from a struct. Throw an error if the requested element is not
# part of the struct.
#' @export
`[.struct` <- function(x, key) {
  if (!(key %in% names(x))) {
    stopf("invalid element: %s", key)
  }
  value <- x[[key]]
  return(value)
}

#' @export
`$.struct` <- `[.struct`

# Replace an element from a struct. If the replacement is NULL, replace the
# value with NULL but do not delete the element. Throw an error if the requested
# element is not part of the struct.
#' @export
`[<-.struct` <- function(x, key, value) {
  if (!(key %in% names(x))) {
    stopf("invalid element: %s", key)
  }
  cl <- oldClass(x)
  class(x) <- NULL
  if (is.null(value)) {
    x[key] <- list(NULL)
  } else {
    x[[key]] <- value
  }
  class(x) <- cl
  return(x)
}

#' @export
`$<-.struct` <- `[<-.struct`

#' Create a list from an struct object
#'
#'
#' @param x An struct object.
#' @param ... Other arguments, which will be ignored.
#'
#' @export
as.list.struct <- function(x, ...) {
  class(x) <- "list"
  return(x)
}
