#' @include logging.R

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
#' @export
paginate <- function(operation, MaxRetries = 5, MaxItems = NULL, StartingToken = NULL) {
  fn <- substitute(operation)
  fn_call <- eval(fn[[1]])
  pkg_name <- environmentName(environment(fn_call))
  fn_body <- body(fn_call)
  fn_input <- names(formals(fn_call))
  output_name <- names(eval(fn_body[[4]][[3]], envir = getNamespace(pkg_name)))

  # Get Tokens
  # Identify token parameter names
  token_nms <- output_name[grep("Token", output_name)]
  next_token <- token_nms[grepl("Next.*Token", token_nms)]
  continuation_token <- token_nms[token_nms %in% fn_input]
  fn[continuation_token] <- StartingToken

  # Identify if MaxKey/MaxItems used
  max_items <- c("MaxKeys", "MaxItems")
  max_items <- max_items[max_items %in% fn_input]
  fn[max_items] <- MaxItems

  result <- list()
  while (!identical(fn[[continuation_token]], character(0))) {
    resp <- retry_api_call(eval(fn), MaxRetries)
    fn[[continuation_token]] <- resp[[next_token]]
    result[[length(result) + 1]] <- resp
  }
  return(result)
}

retry_api_call <- function(expr, retries){
  for (i in seq_len(retries + 1)){
    tryCatch({
      return(eval.parent(substitute(expr)))
    }, http_100 = function(err) {
      back_off(err, i, retries)
    }, http_200 = function(err) {
      back_off(err, i, retries)
    }, http_300 = function(err) {
      back_off(err, i, retries)
    }, http_400 = function(err) {
      stop(err)
    }, http_500 = function(err) {
      back_off(err, i, retries)
    }, error = function(err) {
      stop(err)
    })
  }
}

back_off <- function(error, i, retries) {
  if(i == (retries + 1))
    stop(error)
  time = 2**i * 0.1
  log_error("Request failed. Retrying in %s seconds...", time)
  Sys.sleep(time)
}
