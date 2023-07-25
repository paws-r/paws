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
  fn_input <- names(formals(fn_call))
  output_name <- names(eval(fn_body[[4]][[3]], envir = getNamespace(pkg_name)))

  # Get Tokens
  # Identify token parameter names
  token_nms <- output_name[grep("token", output_name, ignore.case = T)]
  next_token <- token_nms[grepl("next.*token", token_nms, ignore.case = T)]
  continuation_token <- token_nms[token_nms %in% fn_input]
  fn[continuation_token] <- StartingToken

  # Identify if MaxKey/MaxItems/maxResults used
  max_items <- fn_input[grep("^max", fn_input, ignore.case = T)]
  fn[max_items] <- MaxItems

  result <- list()
  while (!identical(fn[[continuation_token]], character(0))) {
    resp <- retry_api_call(eval(fn), MaxRetries)
    fn[[continuation_token]] <- resp[[next_token]]
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
  fn_input <- names(formals(fn_call))
  output_name <- names(eval(fn_body[[4]][[3]], envir = getNamespace(pkg_name)))

  # Get Tokens
  # Identify token parameter names
  token_nms <- output_name[grep("token", output_name, ignore.case = T)]
  next_token <- token_nms[grepl("next.*token", token_nms, ignore.case = T)]
  continuation_token <- token_nms[token_nms %in% fn_input]
  fn[continuation_token] <- StartingToken

  # Identify if MaxKey/MaxItems/maxResults used
  max_items <- fn_input[grep("^max", fn_input, ignore.case = T)]
  fn[max_items] <- MaxItems

  result <- list()
  while (!identical(fn[[continuation_token]], character(0))) {
    resp <- retry_api_call(eval(fn), MaxRetries)
    fn[[continuation_token]] <- resp[[next_token]]
    result[[length(result) + 1]] <- FUN(resp, ...)
  }
  return(result)
}

# See https://docs.aws.amazon.com/sdkref/latest/guide/feature-retry-behavior.html
retry_api_call <- function(expr, retries){
  for (i in seq_len(retries + 1)){
    tryCatch({
      return(eval.parent(substitute(expr)))
    }, http_400 = function(err) {
      back_off(err, i, retries)
    }, http_403 = function(err) {
      back_off(err, i, retries)
    }, http_408 = function(err) {
      back_off(err, i, retries)
    }, http_429 = function(err) {
      back_off(err, i, retries)
    }, http_500 = function(err) {
      back_off(err, i, retries)
    }, http_502 = function(err) {
      stop(err)
    }, http_503 = function(err) {
      back_off(err, i, retries)
    }, http_504 = function(err) {
      back_off(err, i, retries)
    }, http_509 = function(err) {
      back_off(err, i, retries)
    }, error = function(err) {
      stop(err)
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
