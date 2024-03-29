# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common populate
#' @include sagemakeredgemanager_service.R
NULL

.sagemakeredgemanager$get_deployments_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DeviceName = structure(logical(0), tags = list(type = "string")), DeviceFleetName = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.sagemakeredgemanager$get_deployments_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Deployments = structure(list(structure(list(DeploymentName = structure(logical(0), tags = list(type = "string")), Type = structure(logical(0), tags = list(type = "string")), FailureHandlingPolicy = structure(logical(0), tags = list(type = "string")), Definitions = structure(list(structure(list(ModelHandle = structure(logical(0), tags = list(type = "string")), S3Url = structure(logical(0), tags = list(type = "string")), Checksum = structure(list(Type = structure(logical(0), tags = list(type = "string")), Sum = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), State = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.sagemakeredgemanager$get_device_registration_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DeviceName = structure(logical(0), tags = list(type = "string")), DeviceFleetName = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.sagemakeredgemanager$get_device_registration_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DeviceRegistration = structure(logical(0), tags = list(type = "string")), CacheTTL = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.sagemakeredgemanager$send_heartbeat_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(AgentMetrics = structure(list(structure(list(Dimension = structure(logical(0), tags = list(type = "string")), MetricName = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "double")), Timestamp = structure(logical(0), tags = list(type = "timestamp"))), tags = list(type = "structure"))), tags = list(type = "list")), Models = structure(list(structure(list(ModelName = structure(logical(0), tags = list(type = "string")), ModelVersion = structure(logical(0), tags = list(type = "string")), LatestSampleTime = structure(logical(0), tags = list(type = "timestamp")), LatestInference = structure(logical(0), tags = list(type = "timestamp")), ModelMetrics = structure(list(structure(list(Dimension = structure(logical(0), tags = list(type = "string")), MetricName = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "double")), Timestamp = structure(logical(0), tags = list(type = "timestamp"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "list")), AgentVersion = structure(logical(0), tags = list(type = "string")), DeviceName = structure(logical(0), tags = list(type = "string")), DeviceFleetName = structure(logical(0), tags = list(type = "string")), DeploymentResult = structure(list(DeploymentName = structure(logical(0), tags = list(type = "string")), DeploymentStatus = structure(logical(0), tags = list(type = "string")), DeploymentStatusMessage = structure(logical(0), tags = list(type = "string")), DeploymentStartTime = structure(logical(0), tags = list(type = "timestamp")), DeploymentEndTime = structure(logical(0), tags = list(type = "timestamp")), DeploymentModels = structure(list(structure(list(ModelHandle = structure(logical(0), tags = list(type = "string")), ModelName = structure(logical(0), tags = list(type = "string")), ModelVersion = structure(logical(0), tags = list(type = "string")), DesiredState = structure(logical(0), tags = list(type = "string")), State = structure(logical(0), tags = list(type = "string")), Status = structure(logical(0), tags = list(type = "string")), StatusReason = structure(logical(0), tags = list(type = "string")), RollbackFailureReason = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.sagemakeredgemanager$send_heartbeat_output <- function(...) {
  list()
}
