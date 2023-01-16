# Get STS temporary credentials for a role using the STS AssumeRole or AssumeRoleWithWebIdentity operations.
#
# We need to re-implement the STS AssumeRole and AssumeRoleWithWebIdentity operations to avoid circular
# dependency: paws depends on paws.common, therefore we can't make paws.common
# also depend on paws (namely, paws.security.identity within paws).
#
# Sources:
# - paws/paws/R/sts_service.R
# - paws/paws/R/sts_interfaces.R: .sts$X_input(), .sts$X_output(),
# - paws/paws/R/sts_operations.R: sts_X()

# STS Service Client ----
sts <- function(config = list()) {
  svc <- .sts$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.sts <- list()

.sts$operations <- list()

.sts$metadata <- list(
  service_name = "sts",
  endpoints = list("*" = list(endpoint = "https://sts.amazonaws.com", global = TRUE), "us-gov-*" = list(endpoint = "sts.{region}.amazonaws.com", global = FALSE), "cn-*" = list(endpoint = "sts.{region}.amazonaws.com.cn", global = FALSE), "us-iso-*" = list(endpoint = "sts.{region}.c2s.ic.gov", global = FALSE), "us-isob-*" = list(endpoint = "sts.{region}.sc2s.sgov.gov", global = FALSE)),
  service_id = "STS",
  api_version = "2011-06-15",
  signing_name = NULL,
  json_version = "",
  target_prefix = ""
)

.sts$service <- function(config = list()) {
  handlers <- new_handlers("query", "v4")
  new_service(.sts$metadata, handlers, config)
}

# AssumeRole ----
# Docs: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html
.sts$assume_role_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(RoleArn = structure(logical(0), tags = list(type = "string")), RoleSessionName = structure(logical(0), tags = list(type = "string")), PolicyArns = structure(list(structure(list(arn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), Policy = structure(logical(0), tags = list(type = "string")), DurationSeconds = structure(logical(0), tags = list(type = "integer")), Tags = structure(list(structure(list(Key = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), TransitiveTagKeys = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list")), ExternalId = structure(logical(0), tags = list(type = "string")), SerialNumber = structure(logical(0), tags = list(type = "string")), TokenCode = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.sts$assume_role_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Credentials = structure(list(AccessKeyId = structure(logical(0), tags = list(type = "string")), SecretAccessKey = structure(logical(0), tags = list(type = "string")), SessionToken = structure(logical(0), tags = list(type = "string")), Expiration = structure(logical(0), tags = list(type = "timestamp"))), tags = list(type = "structure")), AssumedRoleUser = structure(list(AssumedRoleId = structure(logical(0), tags = list(type = "string")), Arn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), PackedPolicySize = structure(logical(0), tags = list(type = "integer"))), tags = list(type = "structure", resultWrapper = "AssumeRoleResult"))
  return(populate(args, shape))
}

# Returns a set of temporary security credentials that you can use to
# access AWS resources that you might not normally have access to. These
# temporary credentials consist of an access key ID, a secret access key,
# and a security token. Typically, you use `AssumeRole` within your
# account or for cross-account access.
sts_assume_role <- function(RoleArn, RoleSessionName, PolicyArns = NULL, Policy = NULL, DurationSeconds = NULL, Tags = NULL, TransitiveTagKeys = NULL, ExternalId = NULL, SerialNumber = NULL, TokenCode = NULL) {
  op <- new_operation(
    name = "AssumeRole",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .sts$assume_role_input(RoleArn = RoleArn, RoleSessionName = RoleSessionName, PolicyArns = PolicyArns, Policy = Policy, DurationSeconds = DurationSeconds, Tags = Tags, TransitiveTagKeys = TransitiveTagKeys, ExternalId = ExternalId, SerialNumber = SerialNumber, TokenCode = TokenCode)
  output <- .sts$assume_role_output()
  config <- get_config()
  svc <- .sts$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.sts$operations$assume_role <- sts_assume_role

# AssumeRoleWithWebIdentity ----
# Source: paws/paws/R/sts_interfaces.R,
# Docs: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoleWithWebIdentity.html
.sts$assume_role_with_web_identity_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(RoleArn = structure(logical(0), tags = list(type = "string")), RoleSessionName = structure(logical(0), tags = list(type = "string")), WebIdentityToken = structure(logical(0), tags = list(type = "string")), ProviderId = structure(logical(0), tags = list(type = "string")), PolicyArns = structure(list(structure(list(arn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), Policy = structure(logical(0), tags = list(type = "string")), DurationSeconds = structure(logical(0), tags = list(type = "integer"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.sts$assume_role_with_web_identity_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Credentials = structure(list(AccessKeyId = structure(logical(0), tags = list(type = "string")), SecretAccessKey = structure(logical(0), tags = list(type = "string")), SessionToken = structure(logical(0), tags = list(type = "string")), Expiration = structure(logical(0), tags = list(type = "timestamp"))), tags = list(type = "structure")), SubjectFromWebIdentityToken = structure(logical(0), tags = list(type = "string")), AssumedRoleUser = structure(list(AssumedRoleId = structure(logical(0), tags = list(type = "string")), Arn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), PackedPolicySize = structure(logical(0), tags = list(type = "integer")), Provider = structure(logical(0), tags = list(type = "string")), Audience = structure(logical(0), tags = list(type = "string")), SourceIdentity = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure", resultWrapper = "AssumeRoleWithWebIdentityResult"))
  return(populate(args, shape))
}

sts_assume_role_with_web_identity <- function(RoleArn, RoleSessionName, WebIdentityToken, ProviderId = NULL, PolicyArns = NULL, Policy = NULL, DurationSeconds = NULL) {
  op <- new_operation(
    name = "AssumeRoleWithWebIdentity",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .sts$assume_role_with_web_identity_input(RoleArn = RoleArn, RoleSessionName = RoleSessionName, WebIdentityToken = WebIdentityToken, ProviderId = ProviderId, PolicyArns = PolicyArns, Policy = Policy, DurationSeconds = DurationSeconds)
  output <- .sts$assume_role_with_web_identity_output()
  config <- get_config()
  svc <- .sts$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.sts$operations$assume_role_with_web_identity <- sts_assume_role_with_web_identity
