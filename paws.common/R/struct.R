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
    for (.key in names(.args)) {
      .struct[.key] <- .args[.key]
    }
    class(.struct) <- "struct"
    return(.struct)
  }
  formals(.f) <- do.call(alist, .struct)

  return(.f)
}

# Get an element from a struct. Throw an error if the requested element is not
# part of the struct.
`[.struct` <- function(x, key) {
  if (!(key %in% names(x))) {
    stop(sprintf("invalid element: %s", key))
  }
  value <- x[[key]]
  return(value)
}

`$.struct` <- `[.struct`

# Replace an element from a struct. If the replacement is NULL, replace the
# value with NULL but do not delete the element. Throw an error if the requested
# element is not part of the struct.
`[<-.struct` <- function(x, key, value) {
  if (!(key %in% names(x))) {
    stop(sprintf("invalid element: %s", key))
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

`$<-.struct` <- `[<-.struct`

as.list.struct <- function(x) {
  class(x) <- "list"
  return(x)
}
