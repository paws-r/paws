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
#' @param StopOnSameToken Exits paginator if previous token matches current token.
#' For some APIs, such as CloudWatchLogs events, the next page token will always be present.
#' When set to \code{TRUE}, the paginator will stop when the token doesn't change.
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
paginate <- function(
  Operation,
  PageSize = NULL,
  MaxItems = NULL,
  StartingToken = NULL,
  StopOnSameToken = FALSE
) {
  fn <- substitute(Operation)
  # rebuild fn for do.call
  if (identical(fn[[1]], .do_call)) {
    kwargs <- eval(fn[[3]], envir = parent.frame())
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
  jmes_path_token <- NULL
  result <- list()
  while (!identical(fn[[paginator$input_token[[1]]]], character(0))) {
    resp <- eval(fn, envir = parent.frame())
    new_tokens <- get_tokens(resp, paginator$output_token, environment())
    # Exit paginator if previous token matches current token
    # https://github.com/smithy-lang/smithy-typescript/blob/main/packages/core/src/pagination/createPaginator.ts#L53
    if (isTRUE(StopOnSameToken)) {
      previous_token <- unlist(fn[[paginator$input_token]], use.names = FALSE)
      if (identical(previous_token, unlist(new_tokens, use.names = FALSE))) {
        break
      }
    }

    # Update tokens
    for (i in seq_along(new_tokens)) {
      fn[[paginator$input_token[[i]]]] <- new_tokens[[i]]
    }

    result[[length(result) + 1]] <- resp

    # exit if no more results
    if (!is.null(paginator[["more_results"]])) {
      if (isFALSE(resp[[paginator[["more_results"]]]])) {
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
paginate_lapply <- function(
  Operation,
  FUN,
  ...,
  PageSize = NULL,
  MaxItems = NULL,
  StartingToken = NULL,
  StopOnSameToken = FALSE
) {
  FUN <- match.fun(FUN)
  fn <- substitute(Operation)

  # rebuild fn for do.call
  if (identical(fn[[1]], .do_call)) {
    kwargs <- eval(fn[[3]], envir = parent.frame())
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
    MaxItems = MaxItems,
    StopOnSameToken = StopOnSameToken
  )
  return(result)
}

#' @rdname paginate
#' @export
paginate_sapply <- function(
  Operation,
  FUN,
  ...,
  simplify = TRUE,
  PageSize = NULL,
  MaxItems = NULL,
  StartingToken = NULL,
  StopOnSameToken = FALSE
) {
  FUN <- match.fun(FUN)
  fn <- substitute(Operation)

  # rebuild fn for do.call
  if (identical(fn[[1]], .do_call)) {
    kwargs <- eval(fn[[3]], envir = parent.frame())
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
    MaxItems = MaxItems,
    StopOnSameToken = StopOnSameToken
  )

  if (!isFALSE(simplify)) {
    simplify2array(result, higher = (simplify == "array"))
  } else {
    result
  }
}

paginate_update_fn <- function(fn, PageSize = NULL, StartingToken = NULL) {
  fn_call <- eval(fn[[1]], envir = parent.frame(n = 2))
  pkg_name <- environmentName(environment(fn_call))

  # Ensure method can be found.
  if (!startsWith(pkg_name, "paws")) {
    stopf(
      "Unknown method: `%s`. Please check service methods and try again.",
      as.character(fn)[1]
    )
  }

  fn_body <- body(fn_call)
  paginator <- fn_body[[2]][[3]]$paginator

  # Check if method can paginate
  if (!all(c("input_token", "output_token") %in% names(paginator))) {
    stopf("Method: `%s` is unable to paginate.", as.character(fn)[1])
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

  return(list(fn = fn, paginator = eval(paginator, envir = parent.frame())))
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
      if (grepl("subscript out of bounds", err, perl = TRUE)) {
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
  MaxItems = NULL,
  StopOnSameToken = FALSE
) {
  primary_result_key <- paginator$result_key[[1]]
  no_items <- 0
  jmes_path_token <- NULL
  result <- list()
  while (!identical(fn[[paginator$input_token[[1]]]], character(0))) {
    resp <- eval(fn, envir = parent.frame(n = 2))
    new_tokens <- get_tokens(resp, paginator$output_token, environment())

    # Exit paginator if previous token matches current token
    # https://github.com/smithy-lang/smithy-typescript/blob/main/packages/core/src/pagination/createPaginator.ts#L53
    if (isTRUE(StopOnSameToken)) {
      previous_token <- unlist(fn[[paginator$input_token]], use.names = FALSE)
      if (identical(previous_token, unlist(new_tokens, use.names = FALSE))) {
        break
      }
    }

    # Update tokens
    for (i in seq_along(new_tokens)) {
      fn[[paginator$input_token[[i]]]] <- new_tokens[[i]]
    }

    result[[length(result) + 1]] <- FUN(resp, ...)

    # exit if no more results
    if (!is.null(paginator[["more_results"]])) {
      if (isFALSE(resp[[paginator[["more_results"]]]])) {
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

token_error_msg <- "attempt to select less than one element in integerOneIndex"
# Get all output tokens
get_tokens <- function(resp, token, caller_env) {
  last <- function(x) x[[length(x)]]
  tokens <- list()
  for (tkn in token) {
    jmes_path <- caller_env[["jmes_path_token"]][[tkn]] %||%
      jmespath_index(tkn, caller_env)
    tokens[[tkn]] <- tryCatch(
      {
        eval(str2expression(jmes_path), envir = environment())
      },
      error = function(err) {
        # Return default character(0) for empty lists
        if (grepl(token_error_msg, err[["message"]], perl = TRUE)) {
          character(0)
        } else {
          stop(err)
        }
      }
    )
  }
  return(tokens)
}

split_token <- function(token) {
  token_prts <- unlist(strsplit(token, ".", fixed = TRUE))
  token_prts <- unlist(strsplit(token_prts, "[", fixed = TRUE))
  return(unlist(strsplit(token_prts, "]", fixed = TRUE)))
}

# This is a simple implementation of jmespath for R list: i.e.
# Path.To[-1].Token -> last(resp[["Path"]][["To"]])[["Token"]]
# Path.To.Token -> resp[["Path"]][["To"]][["Token"]]
jmespath_index <- function(token, caller_env) {
  token_prts <- split_token(token)
  pattern <- "[[:alpha:]]+"

  # re-index
  found_alpha <- grep(pattern, token_prts)
  digits <- as.numeric(token_prts[-found_alpha])
  digits[digits >= 0] <- digits[digits >= 0] + 1
  token_prts[-found_alpha] <- digits

  # Format character strings
  token_prts[found_alpha] <- paste0('"', token_prts[found_alpha], '"')

  found <- grep("-", token_prts, fixed = TRUE)
  if (length(found) > 0) {
    # Path.To[-1].Token
    position <- found - 1
    last_index <- token_prts[seq_len(position)]
    last_index <- paste(last_index, collapse = "]][[")
    final_token <- sprintf("last(resp[[%s]])", last_index)
    if (found < length(token_prts)) {
      token_prts <- token_prts[(position + 2):length(token_prts)]
      final_token <- sprintf(
        "%s[[%s]]",
        final_token,
        paste0(token_prts, collapse = "]][[")
      )
    }
  } else {
    # Path.To.Token
    final_token <- sprintf("resp[[%s]]", paste0(token_prts, collapse = "]][["))
  }
  caller_env[["jmes_path_token"]][[token]] <- final_token
  return(final_token)
}
