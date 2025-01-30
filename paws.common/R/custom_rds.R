rds_build_auth_token <- function(endpoint, user, creds = NULL, region = NULL) {
  if (!startsWith(endpoint, "https://")) endpoint <- paste0("https://", endpoint)
  req <- new_http_request("GET", endpoint)
  auth_token_params <- list(
    Action = "connect",
    DBUser = user
  )
  req$url$raw_query <- update_query_string(req$url$raw_query, auth_token_params)

  config <- get_config()
  if (!is.null(region)) {
    config$region <- region
  }
  if (is.null(creds)) {
    creds <- config$credentials$creds
  } else {
    creds <- populate(creds, tag_annotate(Creds()))
  }
  v4 <- Signer(credentials = Credentials(creds = creds))
  req <- sign_with_body(v4, req, NULL, "rds-db", region, 900, TRUE, now())

  url <- build_url(req$url)
  return(substr(url, 9, nchar(url)))
}

rds_build_auth_token_v2 <- function(DBHostname, Port, DBUsername, Region = NULL) {
  op <- new_operation(
    name = "connect", http_method = "GET",
    http_path = "/", host_prefix = "", paginator = list(), stream_api = FALSE
  )
  input <- list(
    Action = "connect",
    DBUser = DBUsername
  )
  output <- list()

  config <- get_config()
  if (!is.null(Region)) {
    config$region <- Region
  }

  if (!startsWith(DBHostname, "https://")) DBHostname <- paste0("https://", DBHostname)
  config$endpoint <- paste(DBHostname, Port, sep = ":")

  metadata <- list(
    service_name = "rds",
    endpoints = list(),
    service_id = "RDS",
    api_version = "2014-10-31",
    signing_name = "rds-db",
    json_version = "",
    target_prefix = ""
  )

  handlers <- new_handlers("query", "v4")
  svc <- new_service(metadata, handlers, config, op)

  # create new request
  request <- new_request(svc, op, input, output)
  request$expire_time <- 900

  # build request
  request$http_request$url$raw_query <- build_query_string(request$params)

  # sign request
  request <- v4_sign_request_handler(request)
  url <- build_url(request$http_request$url)
  return(substr(url, 9, nchar(url)))
}
