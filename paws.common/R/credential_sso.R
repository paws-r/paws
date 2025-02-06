.sso <- list()

.sso$operations <- list()

.sso$metadata <- list(
  service_name = "sso",
  endpoints = list(),
  service_id = "SSO",
  api_version = "2019-06-10",
  signing_name = "awsssoportal",
  json_version = "1.1",
  target_prefix = ""
)

.sso_endpoint <- function() {
  switch(
    vendor_cache[["vendor"]],
    "boto" = list(
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "portal.sso.{region}.amazonaws.com",
        global = FALSE
      ),
      "^cn\\-\\w+\\-\\d+$" = list(
        endpoint = "portal.sso.{region}.amazonaws.com.cn",
        global = FALSE
      ),
      "^us\\-gov\\-\\w+\\-\\d+$" = list(
        endpoint = "portal.sso.{region}.amazonaws.com",
        global = FALSE
      ),
      "^us\\-iso\\-\\w+\\-\\d+$" = list(
        endpoint = "portal.sso.{region}.c2s.ic.gov",
        global = FALSE
      ),
      "^us\\-isob\\-\\w+\\-\\d+$" = list(
        endpoint = "portal.sso.{region}.sc2s.sgov.gov",
        global = FALSE
      ),
      "^eu\\-isoe\\-\\w+\\-\\d+$" = list(
        endpoint = "portal.sso.{region}.cloud.adc-e.uk",
        global = FALSE
      ),
      "^us\\-isof\\-\\w+\\-\\d+$" = list(
        endpoint = "portal.sso.{region}.csp.hci.ic.gov",
        global = FALSE
      )
    ),
    "js" = list(
      "*" = list(
        endpoint = "portal.sso.{region}.amazonaws.com",
        global = FALSE
      ),
      "cn-*" = list(
        endpoint = "portal.sso.{region}.amazonaws.com.cn",
        global = FALSE
      ),
      "eu-isoe-*" = list(
        endpoint = "portal.sso.{region}.cloud.adc-e.uk",
        global = FALSE
      ),
      "us-iso-*" = list(
        endpoint = "portal.sso.{region}.c2s.ic.gov",
        global = FALSE
      ),
      "us-isob-*" = list(
        endpoint = "portal.sso.{region}.sc2s.sgov.gov",
        global = FALSE
      ),
      "us-isof-*" = list(
        endpoint = "portal.sso.{region}.csp.hci.ic.gov",
        global = FALSE
      )
    )
  )
}

.sso$service <- function(config = list()) {
  handlers <- new_handlers("restjson", "v4")
  .sso$metadata$endpoints <- .sso_endpoint()
  new_service(.sso$metadata, handlers, config)
}

.sso$get_role_credentials_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(
    list(
      roleName = structure(
        logical(0),
        tags = list(
          location = "querystring",
          locationName = "role_name",
          type = "string"
        )
      ),
      accountId = structure(
        logical(0),
        tags = list(
          location = "querystring",
          locationName = "account_id",
          type = "string"
        )
      ),
      accessToken = structure(
        logical(0),
        tags = list(
          location = "header",
          locationName = "x-amz-sso_bearer_token",
          type = "string",
          sensitive = TRUE
        )
      )
    ),
    tags = list(type = "structure")
  )
  return(populate(args, shape))
}

.sso$get_role_credentials_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(
    list(
      roleCredentials = structure(
        list(
          accessKeyId = structure(logical(0), tags = list(type = "string")),
          secretAccessKey = structure(
            logical(0),
            tags = list(type = "string", sensitive = TRUE)
          ),
          sessionToken = structure(
            logical(0),
            tags = list(type = "string", sensitive = TRUE)
          ),
          expiration = structure(logical(0), tags = list(type = "long"))
        ),
        tags = list(type = "structure")
      )
    ),
    tags = list(type = "structure")
  )
  return(populate(args, shape))
}

sso_get_role_credentials <- function(roleName, accountId, accessToken) {
  op <- new_operation(
    name = "GetRoleCredentials",
    http_method = "GET",
    http_path = "/federation/credentials",
    paginator = list()
  )
  input <- .sso$get_role_credentials_input(
    roleName = roleName,
    accountId = accountId,
    accessToken = accessToken
  )
  output <- .sso$get_role_credentials_output()
  config <- get_config()
  svc <- .sso$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.sso$operations$get_role_credentials <- sso_get_role_credentials

sso <- function(config = list()) {
  svc <- .sso$operations
  svc <- set_config(svc, config)
  return(svc)
}
