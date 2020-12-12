.cache <- new.env(parent = emptyenv())

with_cache_dir <- function(cache_dir, expr) {
  cache <- if (!is.null(cache_dir)) {
    cachem::cache_disk(cache_dir, max_size = 300 * 1024^2, missing = NULL)
  } else {
    # Equivalent of no cache
    cachem::cache_layered()
  }

  old <- .cache$current
  .cache$current <- cache
  on.exit(.cache$current <- old, add = TRUE)

  expr
}

current_cache <- function() {
  if (is.null(.cache$current)) {
    warning(call. = TRUE, "current_cache called when no cache was set")
    cachem::cache_layered()
  } else {
    .cache$current
  }
}

cached_expr <- function(key_expr, value_expr) {
  force(key_expr)
  cache <- current_cache()
  cache_key <- as_cache_key(key_expr)
  cache_result <- cache$get(cache_key)
  if (!is.null(cache_result)) {
    return(cache_result)
  }

  force(value_expr)
  if (is.function(value_expr)) {
    value_expr <- value_expr()
  }
  cache$set(cache_key, value_expr)
  value_expr
}

as_cache_key <- function(obj) {
  cache_key <- digest::digest(obj, algo = "md5")
}
