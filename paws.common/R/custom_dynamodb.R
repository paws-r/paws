#' @include service.R
NULL

disable_compression <- function(request) {
  request$http_request$header["Accept-Encoding"] <- "identity"
  return(request)
}

customizations$dynamodb <- function(handlers) {
  handlers$build <- handlers_add_back(handlers$build, disable_compression)
  handlers
}

