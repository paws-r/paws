#' @include paws.dynamodb_service.R
NULL

disable_compression <- function(request) {
  request$http_request$header["Accept-Encoding"] <- "identity"
  return(request)
}

HANDLERS$build <- add_handlers_back(HANDLERS$build, disable_compression)
