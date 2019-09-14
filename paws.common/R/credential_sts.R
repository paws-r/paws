#' @include handlers.R
#' @include struct.R
#' @include service.R
#' @include handlers_core.R
#' @include handlers_query.R
#' @include signer_v4.R
#' @include credentials.R
NULL

# Private API objects: metadata, handlers, interfaces, etc.
.sts <- new.env()

.sts$operations <- list()

.sts$metadata <- list(
  service_name = 'sts',
  endpoints = list("*" = list(endpoint = "https://sts.amazonaws.com", global = TRUE), "us-gov-*" = list(endpoint = "sts.{region}.amazonaws.com", global = FALSE), "cn-*" = list(endpoint = "sts.{region}.amazonaws.com.cn", global = FALSE)),
  service_id = 'STS',
  api_version = '2011-06-15',
  signing_name = NULL,
  json_version = '',
  target_prefix = ''
)

.sts$handlers <- new_handlers('query', 'v4')

.sts$assume_role_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(RoleArn = structure(logical(0), tags = list(type = "string")), RoleSessionName = structure(logical(0), tags = list(type = "string")), PolicyArns = structure(list(structure(list(arn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), Policy = structure(logical(0), tags = list(type = "string")), DurationSeconds = structure(logical(0), tags = list(type = "integer")), ExternalId = structure(logical(0), tags = list(type = "string")), SerialNumber = structure(logical(0), tags = list(type = "string")), TokenCode = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.sts$assume_role_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Credentials = structure(list(AccessKeyId = structure(logical(0), tags = list(type = "string")), SecretAccessKey = structure(logical(0), tags = list(type = "string")), SessionToken = structure(logical(0), tags = list(type = "string")), Expiration = structure(logical(0), tags = list(type = "timestamp"))), tags = list(type = "structure")), AssumedRoleUser = structure(list(AssumedRoleId = structure(logical(0), tags = list(type = "string")), Arn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), PackedPolicySize = structure(logical(0), tags = list(type = "integer"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.sts$service <- function(config) {
  new_service(.sts$metadata, .sts$handlers, config)
}

sts_assume_role <- function(RoleArn, RoleSessionName,
                            Cfgs,
                            PolicyArns = NULL, Policy = NULL, 
                            DurationSeconds = NULL, ExternalId = NULL,
                            SerialNumber = NULL, TokenCode = NULL) {
  op <- new_operation(
    name = 'AssumeRole',
    http_method = 'POST',
    http_path = '/',
    paginator = list()
  )
  input <- .sts$assume_role_input(RoleArn = RoleArn, RoleSessionName = RoleSessionName, PolicyArns = PolicyArns, Policy = Policy, DurationSeconds = DurationSeconds, ExternalId = ExternalId, SerialNumber = SerialNumber, TokenCode = TokenCode)
  output <- .sts$assume_role_output()
  svc <- .sts$service(Cfgs)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
