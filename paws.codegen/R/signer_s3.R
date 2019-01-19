#' @include signer_v4.R
NULL

s3_sign_request_handler <- function(request) {
  return(v4_sign_request_handler(request))
}
