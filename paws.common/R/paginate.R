#' @importFrom stats runif

#' @include logging.R
#' @include util.R

.do_call <- as.name("do.call")

#' @title Paginate over an operation.
#' @description
#' Some AWS operations return results that are incomplete and require subsequent
#' requests in order to attain the entire result set. The process of sending subsequent
#' requests to continue where a previous request left off is called pagination.
#' For example, the list_objects operation of Amazon S3 returns up to 1000 objects
#' at a time, and you must send subsequent requests with the appropriate Marker
#' in order to retrieve the next page of results.
#'
#' @param Operation The operation for example an s3 operation: \code{svc$list_buckets()}
#' @param PageSize The size of each page.
#' @param MaxItems Limits the maximum number of total returned items returned while paginating.
#' @param StartingToken Can be used to modify the starting marker or token of a paginator.
#' This argument if useful for resuming pagination from a previous token or starting pagination at a known position.
#' @param FUN the function to be applied to each response element of \code{operation}.
#' @param simplify See \link[base:sapply]{base::sapply()}.
#' @param ... optional arguments to \code{FUN}.
#' @return list of responses from the operation.
#' @examples
#' \dontrun{
#' # The following example retrieves object list. The request specifies max
#' # keys to limit response to include only 2 object keys.
#' paginate(
#'   svc$list_objects_v2(
#'     Bucket = "DOC-EXAMPLE-BUCKET"
#'   ),
#'   MaxItems = 50
#' )
#' }
#' @name paginate
#' @export
paginate <- function(Operation,
                     PageSize = NULL,
                     MaxItems = NULL,
                     StartingToken = NULL) {
  fn <- substitute(Operation)
  # rebuild fn for do.call
  if (identical(fn[[1]], .do_call)) {
    kwargs <- eval(fn[[3]])
    fn <- fn[2]
    for (key in names(kwargs)) {
      fn[key] <- kwargs[[key]]
    }
  }
  # update fn with pagesize and starting token
  fn_update <- paginate_update_fn(fn, PageSize, StartingToken)
  fn <- fn_update$fn
  paginator <- fn_update$paginator
  primary_result_key <- paginator$result_key[[1]]
  no_items <- 0
  result <- list()
  while (!identical(fn[[paginator$input_token[[1]]]], character(0))) {
    resp <- eval(fn)
    new_tokens <- get_tokens(resp, paginator$output_token)
    for (i in seq_along(new_tokens)) {
      fn[[paginator$input_token[[i]]]] <- new_tokens[[i]]
    }
    result[[length(result) + 1]] <- resp

    # exit if no more results
    if (!is.null(paginator$more_results)) {
      if (isFALSE(resp[[paginator$more_results]])) {
        break
      }
    }
    if (!is.null(MaxItems)) {
      no_items <- no_items + length(resp[[primary_result_key]])
      if (no_items >= MaxItems) {
        break
      }
    }
  }
  return(result)
}

#' @rdname paginate
#' @export
paginate_lapply <- function(Operation,
                            FUN,
                            ...,
                            PageSize = NULL,
                            MaxItems = NULL,
                            StartingToken = NULL) {
  FUN <- match.fun(FUN)
  fn <- substitute(Operation)

  # rebuild fn for do.call
  if (identical(fn[[1]], .do_call)) {
    kwargs <- eval(fn[[3]])
    fn <- fn[2]
    for (key in names(kwargs)) {
      fn[key] <- kwargs[[key]]
    }
  }
  # update fn with pagesize and starting token
  fn_update <- paginate_update_fn(fn, PageSize, StartingToken)
  result <- paginate_xapply(
    fn = fn_update$fn,
    paginator = fn_update$paginator,
    FUN = FUN,
    ...,
    MaxItems = MaxItems
  )
  return(result)
}

#' @rdname paginate
#' @export
paginate_sapply <- function(Operation,
                            FUN,
                            ...,
                            simplify = TRUE,
                            PageSize = NULL,
                            MaxItems = NULL,
                            StartingToken = NULL) {
  FUN <- match.fun(FUN)
  fn <- substitute(Operation)

  # rebuild fn for do.call
  if (identical(fn[[1]], .do_call)) {
    kwargs <- eval(fn[[3]])
    fn <- fn[2]
    for (key in names(kwargs)) {
      fn[key] <- kwargs[[key]]
    }
  }
  # update fn with pagesize and starting token
  fn_update <- paginate_update_fn(fn, PageSize, StartingToken)
  result <- paginate_xapply(
    fn = fn_update$fn,
    paginator = fn_update$paginator,
    FUN = FUN,
    ...,
    MaxItems = MaxItems
  )

  if (!isFALSE(simplify)) {
    simplify2array(result, higher = (simplify == "array"))
  } else {
    result
  }
}

paginate_update_fn <- function(
    fn,
    PageSize = NULL,
    StartingToken = NULL) {
  fn_call <- eval(fn[[1]])
  pkg_name <- environmentName(environment(fn_call))

  # Ensure method can be found.
  if (!grepl("^paws", pkg_name, perl = T)) {
    stopf(
      "Unknown method: `%s`. Please check service methods and try again.",
      as.character(fn)[1]
    )
  }

  fn_body <- body(fn_call)
  paginator <- fn_body[[2]][[3]]$paginator

  # Check if method can paginate
  if (!all(c("input_token", "output_token") %in% names(paginator))) {
    stopf(
      "Method: `%s` is unable to paginate.",
      as.character(fn)[1]
    )
  }

  # only update input_token if single token
  if (length(paginator$input_token) == 1) {
    if (is.null(fn[[paginator$input_token]])) {
      fn[paginator$input_token] <- StartingToken
    }
  }
  if (!is.null(paginator$limit_key)) {
    if (is.null(fn[[paginator$limit_key]])) {
      fn[paginator$limit_key] <- PageSize
    }
  }

  return(list(
    fn = fn,
    paginator = eval(paginator)
  ))
}

#' @title List methods that can be paginated from a paws client.
#' @param svc paws client (for example \code{paws::s3()}).
#' @return character vector of functions that can be paginated.
#' @examples
#' \dontrun{
#' # Note: where svc is a paws client.
#' list_paginators(svc)
#' }
#' @export
list_paginators <- function(svc) {
  resp <- lapply(svc, function(fn) {
    if (is.function(fn)) {
      is_paginators(fn)
    } else {
      FALSE
    }
  })
  return(names(Filter(isTRUE, resp)) %||% character(0))
}

is_paginators <- function(fn) {
  fn_body <- body(fn)
  paginator <- tryCatch(
    {
      fn_body[[2]][[3]]$paginator
    },
    error = function(err) {
      if (grepl("subscript out of bounds", err, perl = T)) {
        character()
      } else {
        stop(err)
      }
    }
  )
  return(all(c("input_token", "output_token") %in% names(paginator)))
}

paginate_xapply <- function(
    fn,
    paginator,
    FUN,
    ...,
    MaxItems = NULL) {
  primary_result_key <- paginator$result_key[[1]]
  no_items <- 0
  result <- list()
  while (!identical(fn[[paginator$input_token[[1]]]], character(0))) {
    resp <- eval(fn)
    new_tokens <- get_tokens(resp, paginator$output_token)
    for (i in seq_along(new_tokens)) {
      fn[[paginator$input_token[[i]]]] <- new_tokens[[i]]
    }
    result[[length(result) + 1]] <- FUN(resp, ...)

    # exit if no more results
    if (!is.null(paginator$more_results)) {
      if (isFALSE(resp[[paginator$more_results]])) {
        break
      }
    }
    if (!is.null(MaxItems)) {
      no_items <- no_items + length(resp[[primary_result_key]])
      if (no_items >= MaxItems) {
        break
      }
    }
  }
  return(result)
}

# Get all output tokens
get_tokens <- function(resp, output_tokens) {
  tokens <- list()
  for (token in output_tokens) {
    if (grepl("\\[-1\\]", token)) {
      tokens[[token]] <- get_token_len(resp, token)
    } else {
      tokens[[token]] <- get_token_path(resp, token)
    }
  }
  return(tokens)
}

# Get Token along a response path: i.e.
# Path.To.Token
get_token_path <- function(resp, token) {
  token_prts <- strsplit(token, "\\.")[[1]]
  build_key <- character(length(token_prts))
  for (i in seq_along(token_prts)) {
    build_key[i] <- token_prts[[i]]
  }
  location <- paste0('resp[["', paste(build_key, collapse = '"]][["'), '"]]')
  return(eval(parse(text = location), envir = environment()))
}

# Get Token from the last element in a response path: i.e.
# Path.To[-1].Token
get_token_len <- function(resp, token) {
  last_element <- function(x) {
    x[[length(x)]]
  }
  build_part <- function(x) {
    paste0('last_element(resp[["', paste0(x, collapse = '"]][["'), '"]])')
  }
  token_prts <- strsplit(token, "\\.")[[1]]

  build_key <- character(0)
  for (i in seq_along(token_prts)) {
    if (grepl("\\[-1\\]", token_prts[[i]])) {
      build_key[length(build_key) + 1] <- gsub("\\[-1\\]", "", token_prts[[i]])
      build_key <- build_part(build_key)
    } else {
      build_key[length(build_key) + 1] <- token_prts[[i]]
    }
  }
  location <- paste0(paste(build_key, collapse = '[["'), '"]]')
  tryCatch(
    {
      return(eval(parse(text = location), envir = environment()))
    },
    error = function(err) {
      # Return default character(0) for empty lists
      if (grepl(
        "attempt to select less than one element in integerOneIndex",
        err$message,
        perl = T
      )) {
        character(0)
      } else {
        stop(err)
      }
    }
  )
}
