get_service_parameter <- function(param) {
  firstup <- function(x) {
    substr(x, 1, 1) <- toupper(substr(x, 1, 1))
    x
  }
  fn <- get(param, envir = getNamespace("paws.common"))
  elements <- as.list(fn())
  elements <- elements[grep("provider", names(elements), perl = T, invert = T)]

  for (nms in names(elements)) {
    if (is.list(elements[[nms]])) {
      elements[[nms]] <- get_service_parameter(firstup(nms))
    }
  }
  return(elements)
}

build_service_parameter <- function(param) {
  return(
    do.call(
      struct,
      get_service_parameter(param)
    )
  )
}

# TODO: fix documentation

#' @title Set service parameters
#' @description
#' Help functions for setting the parameters for services
#'
#' @param credentials list or \code{SetCredentials()}
#' @param creds list or \code{SetCreds()}
#' @param access_key_id AWS access key ID
#' @param secret_access_key AWS secret access key
#' @param session_token AWS temporary session token
#' @param access_token he token issued by the \code{CreateToken} API call. For more information, see
#' \href{https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html}{CreateToken} in the `IAM Identity Center OIDC API Reference Guide`.
#' @param expiration Currently not used
#' @param profile The name of a profile to use. If not given, then the default profile is used
#' @param force_refresh Currently not used
#' @param anonymous Set anonymous credentials.
#' @param endpoint The complete URL to use for the constructed client.
#' @param endpoint_resolver Currently not used
#' @param enforce_should_retry_check Currently not used
#' @param region The AWS Region used in instantiating the client.
#' @param disable_ssl Currently not used
#' @param close_connection Currently not used
#' @param max_retries Currently not used
#' @param connect_timeout Currently not used
#' @param retryer Currently not used
#' @param disable_param_validation Currently not used
#' @param disable_compute_checksums Currently not used
#' @param s3_force_path_style Set this to `true` to force the request to use path-style addressing, i.e. `http://s3.amazonaws.com/BUCKET/KEY`.
#' @param s3_disable_100_continue Currently not used
#' @param s3_use_accelerate Currently not used
#' @param s3_disable_content_md5_validation Currently not used
#' @param ec2_metadata_disable_timeout_override Currently not used
#' @param use_dual_stack Currently not used
#' @param sleep_delay Currently not used
#' @param disable_rest_protocol_uri_cleaning Currently not used
#' @param sts_regional_endpoint Set sts regional endpoint resolver to regional or legacy \url{https://docs.aws.amazon.com/sdkref/latest/guide/feature-sts-regionalized-endpoints.html}
#' @return list set of parameter variables for paws services.
#' @examples
#' config(credentials = list(creds = list(access_key_id = "dummy")))
#' config(
#'   credentials = credentials(
#'     creds = list(access_key_id = "dummy", secret_access_key = "bob"),
#'     profile = "hi"
#'   )
#' )
#'
#' config(
#'   credentials = credentials(
#'     creds = creds(
#'       access_key_id = "dummy",
#'       secret_access_key = "bob"
#'     ),
#'     profile = "hi"
#'   )
#' )
#' @name set_service_parameter
NULL

#' @rdname set_service_parameter
#' @export
config <- build_service_parameter("Config")

#' @rdname set_service_parameter
#' @export
credentials <- build_service_parameter("Credentials")

#' @rdname set_service_parameter
#' @export
creds <- build_service_parameter("Creds")
