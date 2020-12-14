# A place to hold a private, package-scoped variable
.cache <- new.env(parent = emptyenv())

#' Execute some code with a cache context
#'
#' Create a cachem cache using the `cache_dir` directory, and
#' install it as the current cache during `expr`'s execution.
#'
#' @param cache_dir A relative or absolute directory path that may or may not
#'   already exist; or `NULL` to disable caching.
#' @param expr Something to evaluate; within this code or calls therein, calling
#'   `current_cache()` will return a cachem cache.
#' @return The value of `expr`.
#'
#' @noRd
with_cache_dir <- function(cache_dir, expr) {
  cache <- if (!is.null(cache_dir)) {
    # Create a disk-backed cache with max 500MB capacity. (Don't be afraid to
    # increase the capacity if necessary.)
    cachem::cache_disk(cache_dir, max_size = 500 * 1024^2, missing = NULL)
  } else {
    # Equivalent of no cache. cache$get() will always return NULL, even if you
    # called cache$set().
    cachem::cache_layered()
  }

  # Temporarily set .cache$current. Restore the old value, in case we're being
  # called recursively.
  old <- .cache$current
  .cache$current <- cache
  on.exit(.cache$current <- old, add = TRUE)

  expr
}

# Returns the current cache, if one exists; if not, a no-op cache is returned.
# Calling `current_cache()` outside of a `with_cache_dir()` is probably a bug,
# so we warn.
current_cache <- function() {
  if (is.null(.cache$current)) {
    warning(call. = TRUE, "current_cache called when no cache was set")
    cachem::cache_layered()
  } else {
    .cache$current
  }
}

#' Execute code or, preferably, retrieve a previous result from the cache
#'
#' Use `cached_expr` to speed up slow operations that are expected to always
#' return exactly the same results for a given input. The `current_cache()`
#' cache is used to persist the results, even across different R processes.
#'
#' @param key_expr A serializable R object (like atomic vectors and lists, but
#'   not e.g. external pointers or sockets) that can serve as a cache key for
#'   the `value_expr`. That is to say, if and only if a subsequent call to
#'   `cached_expr` passes an identical `key_expr`, then the cached value of this
#'   `value_expr` will be reused.
#' @param value_expr A (potentially very slow) calculation that will only be
#'   evaluated if the cache doesn't contain an entry for `key_expr`. This must
#'   also resolve to a serializable R object (it's stored on disk in RDS
#'   format). For convenience, this can also be a function; if so, it will be
#'   evaluated; this is intended to make it easy to adapt existing logic that
#'   contains `return` statements.
#' @return Either `value_expr` (evaluated, of course) or a previously cached
#'   value.
#'
#' @noRd
cached_expr <- function(key_expr, value_expr) {
  force(key_expr)
  cache <- current_cache()
  cache_key <- as_cache_key(key_expr)
  cache_result <- cache$get(cache_key)
  if (!is.null(cache_result)) {
    maybe_spot_check(cache_result, value_expr)
    return(cache_result)
  }

  value <- force_for_cache(value_expr)

  cache$set(cache_key, value)
  value
}

as_cache_key <- function(obj) {
  cache_key <- digest::digest(obj, algo = "md5")
}

#' Possibly verify that the cache_result and value_expr yield identical results
#'
#' @description This is a diagnostic check that verifies the key assumption
#' behind caching: that the fast path (using a cached value) gives identical
#' results to the slow path (actually calculating the value). Failing the spot
#' check may indicate that the calculation logic has changed since the cache was
#' populated, or perhaps a `key_expr` is being used that is not unique.
#'
#' Obviously, we can't spot-check every cache hit--the whole point of caching is
#' to not calculate the value if we don't have to. Instead, we randomly decide
#' to spot-check. By default, each call has a 1% chance of being spot-checked.
#'
#' @param cache_result The value that was retrieved from the cache.
#' @param value_expr The `value_expr` passed through from `cached_expr`.
#' @return Nothing is returned if the test was skipped or passed; an error is
#'   raised if the test failed.
#' @noRd
maybe_spot_check <- function(cache_result, value_expr) {
  if (getOption("cache.spotcheck.level", 0.01) > stats::runif(1)) {
    value <- force_for_cache(value_expr)

    if (!identical(cache_result, value)) {
      warning(
        "Random cache spot-check failed! You may want to `make clean`!",
        immediate. = TRUE, call. = FALSE
      )
      cat(file = stderr(),
        paste0(collapse = "\n",
          utils::capture.output(print(waldo::compare(
            cache_result, value,
            x_arg = "cached", y_arg = "live"
          )))
        )
      )
      cat(file = stderr(), "\n")
      stop("Stopping due to cache spot-check failure")
    }
  }
}

# See the docs for cached_expr() @param key_expr.
force_for_cache <- function(expr) {
  force(expr)
  if (is.function(expr)) {
    expr()
  } else {
    expr
  }
}
