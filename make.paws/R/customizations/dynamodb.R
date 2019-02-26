#' @include dynamodb_service.R
#' @importFrom paws.common handlers_add_front handlers_add_back handlers_set
NULL

disable_compression <- function(request) {
  request$http_request$header["Accept-Encoding"] <- "identity"
  return(request)
}

HANDLERS$build <- handlers_add_back(HANDLERS$build, disable_compression)
