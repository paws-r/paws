disable_compression <- function(request) {
  request$http_request$header["Accept-Encoding"] <- "identity"
  return(request)
}