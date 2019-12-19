#' @include rds_service.R
NULL

#' abc
#'
#' abc
#'
#' @usage
#' rds_build_auth_token(endpoint, region, user, creds)
#'
#' @param endpoint [required]
#' @param region [required]
#' @param user [required]
#' @param creds abc
#'
#' @section Request syntax:
#' ```
#' svc$build_auth_token(
#'   endpoint = "string",
#'   region = "string",
#'   user = "string",
#'   creds = list(
#'     access_key_id = "string",
#'     secret_access_key = "string",
#'     session_token = "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname rds_build_auth_token
rds_build_auth_token <- utils::getFromNamespace("rds_build_auth_token", "paws.common")
.rds$operations$build_auth_token <- rds_build_auth_token
