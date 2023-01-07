#' @include rds_service.R rds_operations.R
NULL

#' Return an authentication token for a database connection
#'
#' Return an authentication token used as the password for a database connection.
#'
#' See [*IAM Database Authentication for MySQL and PostgreSQL*](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html)
#' for more information on using IAM database authentication with RDS.
#'
#' @usage
#' rds_build_auth_token(endpoint, region, user, creds)
#'
#' @param endpoint &#91;required&#93; Hostname and port needed to connect
#' to the database: `<host>:<port>`.
#' @param region &#91;required&#93; AWS region the database is located in.
#' @param user &#91;required&#93; User account within the database to sign in
#' with.
#' @param creds Credentials to be signed with.
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
#' @examples
#' \dontrun{
#' # This example gets an authentication token for an RDS database, then
#' # connects to the database using the token.
#' host <- "database-1.cluster-abcdef123456.us-east-1.rds.amazonaws.com"
#' port <- 3306
#' user <- "jane_doe"
#' token <- svc$build_auth_token(
#'   endpoint = sprintf("%s:%s", host, port),
#'   region = "us-east-1",
#'   user = user
#' )
#' conn <- DBI::dbConnect(
#'   drv = RMariaDB::MariaDB(),
#'   user = user,
#'   password = token,
#'   host = host,
#'   port = port,
#'   client.flag = RMariaDB::CLIENT_SSL
#' )}
#'
#' @keywords internal
#'
#' @rdname rds_build_auth_token
rds_build_auth_token <- utils::getFromNamespace("rds_build_auth_token", "paws.common")
.rds$operations$build_auth_token <- rds_build_auth_token
