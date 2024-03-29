# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common populate
#' @include codestarnotifications_service.R
NULL

.codestarnotifications$create_notification_rule_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Name = structure(logical(0), tags = list(type = "string", sensitive = TRUE)), EventTypeIds = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list")), Resource = structure(logical(0), tags = list(type = "string")), Targets = structure(list(structure(list(TargetType = structure(logical(0), tags = list(type = "string")), TargetAddress = structure(logical(0), tags = list(type = "string", sensitive = TRUE))), tags = list(type = "structure"))), tags = list(type = "list")), DetailType = structure(logical(0), tags = list(type = "string")), ClientRequestToken = structure(logical(0), tags = list(idempotencyToken = TRUE, type = "string")), Tags = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "map")), Status = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$create_notification_rule_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Arn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$delete_notification_rule_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Arn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$delete_notification_rule_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Arn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$delete_target_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(TargetAddress = structure(logical(0), tags = list(type = "string", sensitive = TRUE)), ForceUnsubscribeAll = structure(logical(0), tags = list(type = "boolean"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$delete_target_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$describe_notification_rule_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Arn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$describe_notification_rule_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Arn = structure(logical(0), tags = list(type = "string")), Name = structure(logical(0), tags = list(type = "string", sensitive = TRUE)), EventTypes = structure(list(structure(list(EventTypeId = structure(logical(0), tags = list(type = "string")), ServiceName = structure(logical(0), tags = list(type = "string")), EventTypeName = structure(logical(0), tags = list(type = "string")), ResourceType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), Resource = structure(logical(0), tags = list(type = "string")), Targets = structure(list(structure(list(TargetAddress = structure(logical(0), tags = list(type = "string", sensitive = TRUE)), TargetType = structure(logical(0), tags = list(type = "string")), TargetStatus = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), DetailType = structure(logical(0), tags = list(type = "string")), CreatedBy = structure(logical(0), tags = list(type = "string")), Status = structure(logical(0), tags = list(type = "string")), CreatedTimestamp = structure(logical(0), tags = list(type = "timestamp")), LastModifiedTimestamp = structure(logical(0), tags = list(type = "timestamp")), Tags = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "map"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$list_event_types_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), NextToken = structure(logical(0), tags = list(type = "string")), MaxResults = structure(logical(0), tags = list(box = TRUE, type = "integer"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$list_event_types_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(EventTypes = structure(list(structure(list(EventTypeId = structure(logical(0), tags = list(type = "string")), ServiceName = structure(logical(0), tags = list(type = "string")), EventTypeName = structure(logical(0), tags = list(type = "string")), ResourceType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), NextToken = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$list_notification_rules_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), NextToken = structure(logical(0), tags = list(type = "string")), MaxResults = structure(logical(0), tags = list(box = TRUE, type = "integer"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$list_notification_rules_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(NextToken = structure(logical(0), tags = list(type = "string")), NotificationRules = structure(list(structure(list(Id = structure(logical(0), tags = list(type = "string")), Arn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$list_tags_for_resource_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Arn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$list_tags_for_resource_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Tags = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "map"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$list_targets_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), NextToken = structure(logical(0), tags = list(type = "string")), MaxResults = structure(logical(0), tags = list(box = TRUE, type = "integer"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$list_targets_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Targets = structure(list(structure(list(TargetAddress = structure(logical(0), tags = list(type = "string", sensitive = TRUE)), TargetType = structure(logical(0), tags = list(type = "string")), TargetStatus = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), NextToken = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$subscribe_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Arn = structure(logical(0), tags = list(type = "string")), Target = structure(list(TargetType = structure(logical(0), tags = list(type = "string")), TargetAddress = structure(logical(0), tags = list(type = "string", sensitive = TRUE))), tags = list(type = "structure")), ClientRequestToken = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$subscribe_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Arn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$tag_resource_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Arn = structure(logical(0), tags = list(type = "string")), Tags = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "map"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$tag_resource_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Tags = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "map"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$unsubscribe_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Arn = structure(logical(0), tags = list(type = "string")), TargetAddress = structure(logical(0), tags = list(type = "string", sensitive = TRUE))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$unsubscribe_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Arn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$untag_resource_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Arn = structure(logical(0), tags = list(location = "uri", locationName = "resourceArn", type = "string")), TagKeys = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(location = "querystring", locationName = "tagKeys", type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$untag_resource_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$update_notification_rule_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Arn = structure(logical(0), tags = list(type = "string")), Name = structure(logical(0), tags = list(type = "string", sensitive = TRUE)), Status = structure(logical(0), tags = list(type = "string")), EventTypeIds = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list")), Targets = structure(list(structure(list(TargetType = structure(logical(0), tags = list(type = "string")), TargetAddress = structure(logical(0), tags = list(type = "string", sensitive = TRUE))), tags = list(type = "structure"))), tags = list(type = "list")), DetailType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarnotifications$update_notification_rule_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}
