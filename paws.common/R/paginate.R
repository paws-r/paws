#' @include logging.R
#' @include util.R

#' @title Paginate over an operation.
#' @description
#' Some AWS operations return results that are incomplete and require subsequent
#' requests in order to attain the entire result set. The process of sending subsequent
#' requests to continue where a previous request left off is called pagination.
#' For example, the list_objects operation of Amazon S3 returns up to 1000 objects
#' at a time, and you must send subsequent requests with the appropriate Marker
#' in order to retrieve the next page of results.
#'
#' @param operation The operation
#' @param MaxRetries Max number of retries call AWS API.
#' @param MaxItems Limits the maximum number of total returned items returned while paginating.
#' @param StartingToken Can be used to modify the starting marker or token of a paginator.
#' This argument if useful for resuming pagination from a previous token or starting pagination at a known position.
#' @param FUN the function to be applied to each response element of \code{operation}.
#' @param simplify See \link[base:sapply]{base::sapply()}.
#' @param ... optional arguments to \code{FUN}.
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
paginate <- function(operation,
                     MaxRetries = 5,
                     MaxItems = NULL,
                     StartingToken = NULL) {
  fn <- substitute(operation)
  fn_call <- eval(fn[[1]])
  pkg_name <- environmentName(environment(fn_call))

  # Ensure method can be found.
  if (!nzchar(pkg_name)) {
    stop(sprintf(
      "Unknown method: `%s`. Please check service methods and try again.",
      as.character(fn)[1]),
      call. = F
    )
  }

  fn_body <- body(fn_call)
  paginator <- fn_body[[2]][[3]]$paginator

  # Check if method can paginate
  if (!all(c("input_token","output_token") %in% names(paginator))) {
    stop(sprintf(
      "Method: `%s` is unable to paginate.",
      as.character(fn)[1]),
      call. = F
    )
  }

  # Get input_token/output_token and limit_key from paginator
  input_token <- paginator$input_token
  output_token <- paginator$output_token
  limit_key <- paginator$limit_key

  # only update input_token if single token
  if (length(input_token) == 1) {
    if (is.null(fn[[input_token]])) {
      fn[input_token] <- StartingToken
    }
  }
  if(is.null(fn[[limit_key]])) {
    fn[limit_key] <- MaxItems
  }
  result <- list()
  while (!identical(fn[[input_token[[1]]]], character(0))) {
    resp <- retry_api_call(eval(fn), MaxRetries)
    new_tokens <- get_tokens(resp, output_token)
    for (i in seq_along(new_tokens)) {
      fn[[input_token[[i]]]] <- new_tokens[[i]]
    }
    result[[length(result) + 1]] <- resp
  }
  return(result)
}

#' @rdname paginate
#' @export
paginate_lapply <- function(operation,
                            FUN,
                            ...,
                            MaxRetries = 5,
                            MaxItems = NULL,
                            StartingToken = NULL) {
  FUN <- match.fun(FUN)
  fn <- substitute(operation)
  fn_call <- eval(fn[[1]])
  pkg_name <- environmentName(environment(fn_call))

  # Ensure method can be found.
  if (!nzchar(pkg_name)) {
    stop(sprintf(
      "Unknown method: `%s`. Please check service methods and try again.",
      as.character(fn)[1]),
      call. = F
    )
  }

  fn_body <- body(fn_call)
  paginator <- fn_body[[2]][[3]]$paginator

  # Check if method can paginate
  if (!all(c("input_token","output_token") %in% names(paginator))) {
    stop(sprintf(
      "Method: `%s` is unable to paginate.",
      as.character(fn)[1]),
      call. = F
    )
  }

  # Get input_token/output_token and limit_key from paginator
  input_token <- paginator$input_token
  output_token <- paginator$output_token
  limit_key <- paginator$limit_key

  # only update input_token if single token
  if (length(input_token) == 1) {
    if (is.null(fn[[input_token]])) {
      fn[input_token] <- StartingToken
    }
  }
  if(is.null(fn[[limit_key]])) {
    fn[limit_key] <- MaxItems
  }
  result <- list()
  while (!identical(fn[[input_token[[1]]]], character(0))) {
    resp <- retry_api_call(eval(fn), MaxRetries)
    new_tokens <- get_tokens(resp, output_token)
    for (i in seq_along(new_tokens)) {
      fn[[input_token[[i]]]] <- new_tokens[[i]]
    }
    result[[length(result) + 1]] <- FUN(resp, ...)
  }
  return(result)
}

#' @rdname paginate
#' @export
paginate_sapply <- function(operation,
                            FUN,
                            ...,
                            simplify = TRUE,
                            MaxRetries = 5,
                            MaxItems = NULL,
                            StartingToken = NULL) {
  FUN <- match.fun(FUN)
  fn <- substitute(operation)
  fn_call <- eval(fn[[1]])
  pkg_name <- environmentName(environment(fn_call))

  # Ensure method can be found.
  if (!nzchar(pkg_name)) {
    stop(sprintf(
      "Unknown method: `%s`. Please check service methods and try again.",
      as.character(fn)[1]),
      call. = F
    )
  }

  fn_body <- body(fn_call)
  paginator <- fn_body[[2]][[3]]$paginator

  # Check if method can paginate
  if (!all(c("input_token","output_token") %in% names(paginator))) {
    stop(sprintf(
      "Method: `%s` is unable to paginate.",
      as.character(fn)[1]),
      call. = F
    )
  }

  # Get input_token/output_token and limit_key from paginator
  input_token <- paginator$input_token
  output_token <- paginator$output_token
  limit_key <- paginator$limit_key

  # only update input_token if single token
  if (length(input_token) == 1) {
    if (is.null(fn[[input_token]])) {
      fn[input_token] <- StartingToken
    }
  }
  if(is.null(fn[[limit_key]])) {
    fn[limit_key] <- MaxItems
  }
  result <- list()
  while (!identical(fn[[input_token[[1]]]], character(0))) {
    resp <- retry_api_call(eval(fn), MaxRetries)
    new_tokens <- get_tokens(resp, output_token)
    for (i in seq_along(new_tokens)) {
      fn[[input_token[[i]]]] <- new_tokens[[i]]
    }
    result[[length(result) + 1]] <- FUN(resp, ...)
  }

  if (!isFALSE(simplify))
    simplify2array(result, higher = (simplify == "array"))
  else result
}

# Get all output tokens
get_tokens <- function(resp, output_tokens) {
  tokens <- list()
  for (token in output_tokens) {
    if(grepl("\\[-1\\]", token)) {
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
  build_key <- c()
  for (i in seq_along(token_prts)) {
    build_key[i] <- token_prts[[i]]
  }
  location <- paste0('resp[["',paste(build_key, collapse = '"]][["'), '"]]')
  return(eval(parse(text = location), envir = environment()))
}

# Get Token from the last element in a response path: i.e.
# Path.To[-1].Token
get_token_len <- function(resp, token) {
  last_element <- function(x) x[[length(x)]]
  build_part <- function(x) {
    paste0('last_element(resp[["', paste0(x, collapse = '"]][["'), '"]])')
  }
  token_prts <- strsplit(token, "\\.")[[1]]

  build_key <- c()
  for (i in seq_along(token_prts)) {
    if(grepl("\\[-1\\]", token_prts[[i]])) {
      build_key[length(build_key) +1] <- gsub("\\[-1\\]", "", key)
      build_key <- build_part(build_key)
    } else {
      build_key[length(build_key) +1] <- token_prts[[i]]
    }
  }
  location <- paste0(paste(build_key, collapse = '[["'), '"]]')
  return(eval(parse(text = location), envir = environment()))
}


# See https://docs.aws.amazon.com/sdkref/latest/guide/feature-retry-behavior.html
retry_api_call <- function(expr, retries){
  for (i in seq_len(retries + 1)){
    tryCatch({
      return(eval.parent(substitute(expr)))
    }, error = function(err) {
      msg <- err$message
      if (grepl("rate exceeded", msg, ignore.case = T)) {
        back_off(err, i, retries)
      } else {
        stop(err)
      }
    })
  }
}

# Retry with exponential backoff.
back_off <- function(error, i, retries) {
  if(i == (retries + 1))
    stop(error)
  time = min(runif(1)*2^i, 20)
  log_error("Request failed. Retrying in %s seconds...", time)
  Sys.sleep(time)
}
