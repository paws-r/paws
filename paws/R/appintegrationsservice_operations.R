# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include appintegrationsservice_service.R
NULL

#' The Amazon AppIntegrations APIs are in preview release and are subject
#' to change
#'
#' @description
#' The Amazon AppIntegrations APIs are in preview release and are subject
#' to change.
#' 
#' Creates an EventIntegration, given a specified name, description, and a
#' reference to an Amazon Eventbridge bus in your account and a partner
#' event source that will push events to that bus. No objects are created
#' in the your account, only metadata that is persisted on the
#' EventIntegration control plane.
#'
#' @usage
#' appintegrationsservice_create_event_integration(Name, Description,
#'   EventFilter, EventBridgeBus, ClientToken, Tags)
#'
#' @param Name &#91;required&#93; The name of the event integration.
#' @param Description The description of the event integration.
#' @param EventFilter &#91;required&#93; The event filter.
#' @param EventBridgeBus &#91;required&#93; The Eventbridge bus.
#' @param ClientToken A unique, case-sensitive identifier that you provide to ensure the
#' idempotency of the request.
#' @param Tags One or more tags.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   EventIntegrationArn = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$create_event_integration(
#'   Name = "string",
#'   Description = "string",
#'   EventFilter = list(
#'     Source = "string"
#'   ),
#'   EventBridgeBus = "string",
#'   ClientToken = "string",
#'   Tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname appintegrationsservice_create_event_integration
appintegrationsservice_create_event_integration <- function(Name, Description = NULL, EventFilter, EventBridgeBus, ClientToken = NULL, Tags = NULL) {
  op <- new_operation(
    name = "CreateEventIntegration",
    http_method = "POST",
    http_path = "/eventIntegrations",
    paginator = list()
  )
  input <- .appintegrationsservice$create_event_integration_input(Name = Name, Description = Description, EventFilter = EventFilter, EventBridgeBus = EventBridgeBus, ClientToken = ClientToken, Tags = Tags)
  output <- .appintegrationsservice$create_event_integration_output()
  config <- get_config()
  svc <- .appintegrationsservice$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.appintegrationsservice$operations$create_event_integration <- appintegrationsservice_create_event_integration

#' The Amazon AppIntegrations APIs are in preview release and are subject
#' to change
#'
#' @description
#' The Amazon AppIntegrations APIs are in preview release and are subject
#' to change.
#' 
#' Deletes the specified existing event integration. If the event
#' integration is associated with clients, the request is rejected.
#'
#' @usage
#' appintegrationsservice_delete_event_integration(Name)
#'
#' @param Name &#91;required&#93; The name of the event integration.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$delete_event_integration(
#'   Name = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname appintegrationsservice_delete_event_integration
appintegrationsservice_delete_event_integration <- function(Name) {
  op <- new_operation(
    name = "DeleteEventIntegration",
    http_method = "DELETE",
    http_path = "/eventIntegrations/{Name}",
    paginator = list()
  )
  input <- .appintegrationsservice$delete_event_integration_input(Name = Name)
  output <- .appintegrationsservice$delete_event_integration_output()
  config <- get_config()
  svc <- .appintegrationsservice$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.appintegrationsservice$operations$delete_event_integration <- appintegrationsservice_delete_event_integration

#' The Amazon AppIntegrations APIs are in preview release and are subject
#' to change
#'
#' @description
#' The Amazon AppIntegrations APIs are in preview release and are subject
#' to change.
#' 
#' Return information about the event integration.
#'
#' @usage
#' appintegrationsservice_get_event_integration(Name)
#'
#' @param Name &#91;required&#93; The name of the event integration.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Name = "string",
#'   Description = "string",
#'   EventIntegrationArn = "string",
#'   EventBridgeBus = "string",
#'   EventFilter = list(
#'     Source = "string"
#'   ),
#'   Tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$get_event_integration(
#'   Name = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname appintegrationsservice_get_event_integration
appintegrationsservice_get_event_integration <- function(Name) {
  op <- new_operation(
    name = "GetEventIntegration",
    http_method = "GET",
    http_path = "/eventIntegrations/{Name}",
    paginator = list()
  )
  input <- .appintegrationsservice$get_event_integration_input(Name = Name)
  output <- .appintegrationsservice$get_event_integration_output()
  config <- get_config()
  svc <- .appintegrationsservice$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.appintegrationsservice$operations$get_event_integration <- appintegrationsservice_get_event_integration

#' The Amazon AppIntegrations APIs are in preview release and are subject
#' to change
#'
#' @description
#' The Amazon AppIntegrations APIs are in preview release and are subject
#' to change.
#' 
#' Returns a paginated list of event integration associations in the
#' account.
#'
#' @usage
#' appintegrationsservice_list_event_integration_associations(
#'   EventIntegrationName, NextToken, MaxResults)
#'
#' @param EventIntegrationName &#91;required&#93; The name of the event integration.
#' @param NextToken The token for the next set of results. Use the value returned in the
#' previous response in the next request to retrieve the next set of
#' results.
#' @param MaxResults The maximum number of results to return per page.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   EventIntegrationAssociations = list(
#'     list(
#'       EventIntegrationAssociationArn = "string",
#'       EventIntegrationAssociationId = "string",
#'       EventIntegrationName = "string",
#'       ClientId = "string",
#'       EventBridgeRuleName = "string",
#'       ClientAssociationMetadata = list(
#'         "string"
#'       )
#'     )
#'   ),
#'   NextToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_event_integration_associations(
#'   EventIntegrationName = "string",
#'   NextToken = "string",
#'   MaxResults = 123
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname appintegrationsservice_list_event_integration_associations
appintegrationsservice_list_event_integration_associations <- function(EventIntegrationName, NextToken = NULL, MaxResults = NULL) {
  op <- new_operation(
    name = "ListEventIntegrationAssociations",
    http_method = "GET",
    http_path = "/eventIntegrations/{Name}/associations",
    paginator = list()
  )
  input <- .appintegrationsservice$list_event_integration_associations_input(EventIntegrationName = EventIntegrationName, NextToken = NextToken, MaxResults = MaxResults)
  output <- .appintegrationsservice$list_event_integration_associations_output()
  config <- get_config()
  svc <- .appintegrationsservice$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.appintegrationsservice$operations$list_event_integration_associations <- appintegrationsservice_list_event_integration_associations

#' The Amazon AppIntegrations APIs are in preview release and are subject
#' to change
#'
#' @description
#' The Amazon AppIntegrations APIs are in preview release and are subject
#' to change.
#' 
#' Returns a paginated list of event integrations in the account.
#'
#' @usage
#' appintegrationsservice_list_event_integrations(NextToken, MaxResults)
#'
#' @param NextToken The token for the next set of results. Use the value returned in the
#' previous response in the next request to retrieve the next set of
#' results.
#' @param MaxResults The maximum number of results to return per page.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   EventIntegrations = list(
#'     list(
#'       EventIntegrationArn = "string",
#'       Name = "string",
#'       Description = "string",
#'       EventFilter = list(
#'         Source = "string"
#'       ),
#'       EventBridgeBus = "string",
#'       Tags = list(
#'         "string"
#'       )
#'     )
#'   ),
#'   NextToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_event_integrations(
#'   NextToken = "string",
#'   MaxResults = 123
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname appintegrationsservice_list_event_integrations
appintegrationsservice_list_event_integrations <- function(NextToken = NULL, MaxResults = NULL) {
  op <- new_operation(
    name = "ListEventIntegrations",
    http_method = "GET",
    http_path = "/eventIntegrations",
    paginator = list()
  )
  input <- .appintegrationsservice$list_event_integrations_input(NextToken = NextToken, MaxResults = MaxResults)
  output <- .appintegrationsservice$list_event_integrations_output()
  config <- get_config()
  svc <- .appintegrationsservice$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.appintegrationsservice$operations$list_event_integrations <- appintegrationsservice_list_event_integrations

#' The Amazon AppIntegrations APIs are in preview release and are subject
#' to change
#'
#' @description
#' The Amazon AppIntegrations APIs are in preview release and are subject
#' to change.
#' 
#' Lists the tags for the specified resource.
#'
#' @usage
#' appintegrationsservice_list_tags_for_resource(resourceArn)
#'
#' @param resourceArn &#91;required&#93; The Amazon Resource Name (ARN) of the resource.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_tags_for_resource(
#'   resourceArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname appintegrationsservice_list_tags_for_resource
appintegrationsservice_list_tags_for_resource <- function(resourceArn) {
  op <- new_operation(
    name = "ListTagsForResource",
    http_method = "GET",
    http_path = "/tags/{resourceArn}",
    paginator = list()
  )
  input <- .appintegrationsservice$list_tags_for_resource_input(resourceArn = resourceArn)
  output <- .appintegrationsservice$list_tags_for_resource_output()
  config <- get_config()
  svc <- .appintegrationsservice$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.appintegrationsservice$operations$list_tags_for_resource <- appintegrationsservice_list_tags_for_resource

#' The Amazon AppIntegrations APIs are in preview release and are subject
#' to change
#'
#' @description
#' The Amazon AppIntegrations APIs are in preview release and are subject
#' to change.
#' 
#' Adds the specified tags to the specified resource.
#'
#' @usage
#' appintegrationsservice_tag_resource(resourceArn, tags)
#'
#' @param resourceArn &#91;required&#93; The Amazon Resource Name (ARN) of the resource.
#' @param tags &#91;required&#93; One or more tags.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$tag_resource(
#'   resourceArn = "string",
#'   tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname appintegrationsservice_tag_resource
appintegrationsservice_tag_resource <- function(resourceArn, tags) {
  op <- new_operation(
    name = "TagResource",
    http_method = "POST",
    http_path = "/tags/{resourceArn}",
    paginator = list()
  )
  input <- .appintegrationsservice$tag_resource_input(resourceArn = resourceArn, tags = tags)
  output <- .appintegrationsservice$tag_resource_output()
  config <- get_config()
  svc <- .appintegrationsservice$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.appintegrationsservice$operations$tag_resource <- appintegrationsservice_tag_resource

#' The Amazon AppIntegrations APIs are in preview release and are subject
#' to change
#'
#' @description
#' The Amazon AppIntegrations APIs are in preview release and are subject
#' to change.
#' 
#' Removes the specified tags from the specified resource.
#'
#' @usage
#' appintegrationsservice_untag_resource(resourceArn, tagKeys)
#'
#' @param resourceArn &#91;required&#93; The Amazon Resource Name (ARN) of the resource.
#' @param tagKeys &#91;required&#93; The tag keys.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$untag_resource(
#'   resourceArn = "string",
#'   tagKeys = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname appintegrationsservice_untag_resource
appintegrationsservice_untag_resource <- function(resourceArn, tagKeys) {
  op <- new_operation(
    name = "UntagResource",
    http_method = "DELETE",
    http_path = "/tags/{resourceArn}",
    paginator = list()
  )
  input <- .appintegrationsservice$untag_resource_input(resourceArn = resourceArn, tagKeys = tagKeys)
  output <- .appintegrationsservice$untag_resource_output()
  config <- get_config()
  svc <- .appintegrationsservice$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.appintegrationsservice$operations$untag_resource <- appintegrationsservice_untag_resource

#' The Amazon AppIntegrations APIs are in preview release and are subject
#' to change
#'
#' @description
#' The Amazon AppIntegrations APIs are in preview release and are subject
#' to change.
#' 
#' Updates the description of an event integration.
#'
#' @usage
#' appintegrationsservice_update_event_integration(Name, Description)
#'
#' @param Name &#91;required&#93; The name of the event integration.
#' @param Description The description of the event inegration.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$update_event_integration(
#'   Name = "string",
#'   Description = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname appintegrationsservice_update_event_integration
appintegrationsservice_update_event_integration <- function(Name, Description = NULL) {
  op <- new_operation(
    name = "UpdateEventIntegration",
    http_method = "PATCH",
    http_path = "/eventIntegrations/{Name}",
    paginator = list()
  )
  input <- .appintegrationsservice$update_event_integration_input(Name = Name, Description = Description)
  output <- .appintegrationsservice$update_event_integration_output()
  config <- get_config()
  svc <- .appintegrationsservice$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.appintegrationsservice$operations$update_event_integration <- appintegrationsservice_update_event_integration
