#' @include signer_v4.R
NULL

#' @export
s3_sign_request_handler <- function(request) {
  return(v4_sign_request_handler(request))
}
