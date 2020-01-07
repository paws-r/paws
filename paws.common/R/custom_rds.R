rds_build_auth_token <- function(endpoint, region, user, creds = NULL) {
  if (!grepl("^https?://", endpoint)) endpoint <- paste0("https://", endpoint)
  req <- new_http_request("GET", endpoint)
  auth_token_params <- list(
    Action = "connect",
    DBUser = user
  )
  req$url$raw_query <- update_query_string(req$url$raw_query, auth_token_params)

  config <- get_config()
  if (is.null(region)) {
    region <- get_region(config$region)
  }
  if (is.null(creds)) {
    creds <- config$credentials$creds
  } else {
    creds <- populate(creds, tag_annotate(Creds()))
  }
  v4 <- Signer(credentials = Credentials(creds = creds))
  req <- sign_with_body(v4, req, NULL, "rds-db", region, 15 * 60, TRUE, Sys.time())

  url <- build_url(req$url)
  url <- gsub("^https?://", "", url)
  return(url)
}
