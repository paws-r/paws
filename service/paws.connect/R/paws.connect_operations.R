#' Creates a new user account in your Amazon Connect instance
#'
#' Creates a new user account in your Amazon Connect instance.
#'
#' @param Username The user name in Amazon Connect for the account to create.
#' @param PhoneConfig Specifies the phone settings for the user, including AfterContactWorkTimeLimit, AutoAccept, DeskPhoneNumber, and PhoneType.
#' @param SecurityProfileIds The unique identifier of the security profile to assign to the user created.
#' @param RoutingProfileId The unique identifier for the routing profile to assign to the user created.
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#' @param Password The password for the user account to create. This is required if you are using Amazon Connect for identity management. If you are using SAML for identity management and include this parameter, an `InvalidRequestException` is returned.
#' @param IdentityInfo Information about the user, including email address, first name, and last name.
#' @param DirectoryUserId The unique identifier for the user account in the directory service directory used for identity management. If Amazon Connect is unable to access the existing directory, you can use the `DirectoryUserId` to authenticate users. If you include the parameter, it is assumed that Amazon Connect cannot access the directory. If the parameter is not included, the UserIdentityInfo is used to authenticate users from your existing directory.
#' 
#' This parameter is required if you are using an existing directory for identity management in Amazon Connect when Amazon Connect cannot access your directory to authenticate users. If you are using SAML for identity management and include this parameter, an `InvalidRequestException` is returned.
#' @param HierarchyGroupId The unique identifier for the hierarchy group to assign to the user created.
#'
#' @examples
#'
#' @export
create_user <- function (Username, PhoneConfig, SecurityProfileIds, 
    RoutingProfileId, InstanceId, Password = NULL, IdentityInfo = NULL, 
    DirectoryUserId = NULL, HierarchyGroupId = NULL) 
{
    op <- Operation(name = "CreateUser", http_method = "PUT", 
        http_path = "/users/{InstanceId}", paginator = list())
    input <- create_user_input(Username = Username, PhoneConfig = PhoneConfig, 
        SecurityProfileIds = SecurityProfileIds, RoutingProfileId = RoutingProfileId, 
        InstanceId = InstanceId, Password = Password, IdentityInfo = IdentityInfo, 
        DirectoryUserId = DirectoryUserId, HierarchyGroupId = HierarchyGroupId)
    output <- create_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a user account from Amazon Connect
#'
#' Deletes a user account from Amazon Connect.
#'
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#' @param UserId The unique identifier of the user to delete.
#'
#' @examples
#'
#' @export
delete_user <- function (InstanceId, UserId) 
{
    op <- Operation(name = "DeleteUser", http_method = "DELETE", 
        http_path = "/users/{InstanceId}/{UserId}", paginator = list())
    input <- delete_user_input(InstanceId = InstanceId, UserId = UserId)
    output <- delete_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a `User` object that contains information about the user account specified by the `UserId`
#'
#' Returns a `User` object that contains information about the user account specified by the `UserId`.
#'
#' @param UserId Unique identifier for the user account to return.
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#'
#' @examples
#'
#' @export
describe_user <- function (UserId, InstanceId) 
{
    op <- Operation(name = "DescribeUser", http_method = "GET", 
        http_path = "/users/{InstanceId}/{UserId}", paginator = list())
    input <- describe_user_input(UserId = UserId, InstanceId = InstanceId)
    output <- describe_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a `HierarchyGroup` object that includes information about a hierarchy group in your instance
#'
#' Returns a `HierarchyGroup` object that includes information about a hierarchy group in your instance.
#'
#' @param HierarchyGroupId The identifier for the hierarchy group to return.
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#'
#' @examples
#'
#' @export
describe_user_hierarchy_group <- function (HierarchyGroupId, 
    InstanceId) 
{
    op <- Operation(name = "DescribeUserHierarchyGroup", http_method = "GET", 
        http_path = "/user-hierarchy-groups/{InstanceId}/{HierarchyGroupId}", 
        paginator = list())
    input <- describe_user_hierarchy_group_input(HierarchyGroupId = HierarchyGroupId, 
        InstanceId = InstanceId)
    output <- describe_user_hierarchy_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a `HiearchyGroupStructure` object, which contains data about the levels in the agent hierarchy
#'
#' Returns a `HiearchyGroupStructure` object, which contains data about the levels in the agent hierarchy.
#'
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#'
#' @examples
#'
#' @export
describe_user_hierarchy_structure <- function (InstanceId) 
{
    op <- Operation(name = "DescribeUserHierarchyStructure", 
        http_method = "GET", http_path = "/user-hierarchy-structure/{InstanceId}", 
        paginator = list())
    input <- describe_user_hierarchy_structure_input(InstanceId = InstanceId)
    output <- describe_user_hierarchy_structure_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' The `GetCurrentMetricData` operation retrieves current metric data from your Amazon Connect instance
#'
#' The `GetCurrentMetricData` operation retrieves current metric data from your Amazon Connect instance.
#' 
#' If you are using an IAM account, it must have permission to the `connect:GetCurrentMetricData` action.
#'
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#' @param Filters A `Filters` object that contains a list of queue IDs or queue ARNs, up to 100, or list of Channels to use to filter the metrics returned in the response. Metric data is retrieved only for the resources associated with the queue IDs, ARNs, or Channels included in the filter. You can include both IDs and ARNs in the same request. To retrieve metrics for all queues, add the queue ID or ARN for each queue in your instance. Only VOICE is supported for Channels.
#' 
#' To find the ARN for a queue, open the queue you want to use in the Amazon Connect Queue editor. The ARN for the queue is displayed in the address bar as part of the URL. For example, the queue ARN is the set of characters at the end of the URL, after \'id=\' such as `arn:aws:connect:us-east-1:270923740243:instance/78fb859d-1b7d-44b1-8aa3-12f0835c5855/queue/1d1a4575-9618-40ab-bbeb-81e45795fe61`. The queue ID is also included in the URL, and is the string after \'queue/\'.
#' @param CurrentMetrics A list of `CurrentMetric` objects for the metrics to retrieve. Each `CurrentMetric` includes a name of a metric to retrieve and the unit to use for it.
#' 
#' The following metrics are available:
#' 
#' AGENTS\_AVAILABLE
#' 
#' :   Unit: COUNT
#' 
#' AGENTS\_ONLINE
#' 
#' :   Unit: COUNT
#' 
#' AGENTS\_ON\_CALL
#' 
#' :   Unit: COUNT
#' 
#' AGENTS\_STAFFED
#' 
#' :   Unit: COUNT
#' 
#' AGENTS\_AFTER\_CONTACT\_WORK
#' 
#' :   Unit: COUNT
#' 
#' AGENTS\_NON\_PRODUCTIVE
#' 
#' :   Unit: COUNT
#' 
#' AGENTS\_ERROR
#' 
#' :   Unit: COUNT
#' 
#' CONTACTS\_IN\_QUEUE
#' 
#' :   Unit: COUNT
#' 
#' OLDEST\_CONTACT\_AGE
#' 
#' :   Unit: SECONDS
#' 
#' CONTACTS\_SCHEDULED
#' 
#' :   Unit: COUNT
#' @param Groupings The grouping applied to the metrics returned. For example, when grouped by QUEUE, the metrics returned apply to each queue rather than aggregated for all queues. If you group by CHANNEL, you should include a Channels filter. The only supported channel is VOICE.
#' 
#' If no `Grouping` is included in the request, a summary of `CurrentMetrics` is returned.
#' @param NextToken The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
#' 
#' The token expires after 5 minutes from the time it is created. Subsequent requests that use the [NextToken]() must use the same request parameters as the request that generated the token.
#' @param MaxResults `MaxResults` indicates the maximum number of results to return per page in the response, between 1 and 100.
#'
#' @examples
#'
#' @export
get_current_metric_data <- function (InstanceId, Filters, CurrentMetrics, 
    Groupings = NULL, NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "GetCurrentMetricData", http_method = "POST", 
        http_path = "/metrics/current/{InstanceId}", paginator = list())
    input <- get_current_metric_data_input(InstanceId = InstanceId, 
        Filters = Filters, CurrentMetrics = CurrentMetrics, Groupings = Groupings, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- get_current_metric_data_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a token for federation
#'
#' Retrieves a token for federation.
#'
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#'
#' @examples
#'
#' @export
get_federation_token <- function (InstanceId) 
{
    op <- Operation(name = "GetFederationToken", http_method = "GET", 
        http_path = "/user/federate/{InstanceId}", paginator = list())
    input <- get_federation_token_input(InstanceId = InstanceId)
    output <- get_federation_token_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' The `GetMetricData` operation retrieves historical metrics data from your Amazon Connect instance
#'
#' The `GetMetricData` operation retrieves historical metrics data from your Amazon Connect instance.
#' 
#' If you are using an IAM account, it must have permission to the `connect:GetMetricData` action.
#'
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#' @param StartTime The timestamp, in UNIX Epoch time format, at which to start the reporting interval for the retrieval of historical metrics data. The time must be specified using a multiple of 5 minutes, such as 10:05, 10:10, 10:15.
#' 
#' `StartTime` cannot be earlier than 24 hours before the time of the request. Historical metrics are available in Amazon Connect only for 24 hours.
#' @param EndTime The timestamp, in UNIX Epoch time format, at which to end the reporting interval for the retrieval of historical metrics data. The time must be specified using an interval of 5 minutes, such as 11:00, 11:05, 11:10, and must be later than the `StartTime` timestamp.
#' 
#' The time range between `StartTime` and `EndTime` must be less than 24 hours.
#' @param Filters A `Filters` object that contains a list of queue IDs or queue ARNs, up to 100, or a list of Channels to use to filter the metrics returned in the response. Metric data is retrieved only for the resources associated with the IDs, ARNs, or Channels included in the filter. You can use both IDs and ARNs together in a request. Only VOICE is supported for Channel.
#' 
#' To find the ARN for a queue, open the queue you want to use in the Amazon Connect Queue editor. The ARN for the queue is displayed in the address bar as part of the URL. For example, the queue ARN is the set of characters at the end of the URL, after \'id=\' such as `arn:aws:connect:us-east-1:270923740243:instance/78fb859d-1b7d-44b1-8aa3-12f0835c5855/queue/1d1a4575-9618-40ab-bbeb-81e45795fe61`. The queue ID is also included in the URL, and is the string after \'queue/\'.
#' @param HistoricalMetrics A list of `HistoricalMetric` objects that contain the metrics to retrieve with the request.
#' 
#' A `HistoricalMetric` object contains: `HistoricalMetricName`, `Statistic`, `Threshold`, and `Unit`.
#' 
#' For each historical metric you include in the request, you must include a `Unit` and a `Statistic`.
#' 
#' The following historical metrics are available:
#' 
#' CONTACTS\_QUEUED
#' 
#' :   Unit: COUNT
#' 
#'     Statistic: SUM
#' 
#' CONTACTS\_HANDLED
#' 
#' :   Unit: COUNT
#' 
#'     Statistics: SUM
#' 
#' CONTACTS\_ABANDONED
#' 
#' :   Unit: COUNT
#' 
#'     Statistics: SUM
#' 
#' CONTACTS\_CONSULTED
#' 
#' :   Unit: COUNT
#' 
#'     Statistics: SUM
#' 
#' CONTACTS\_AGENT\_HUNG\_UP\_FIRST
#' 
#' :   Unit: COUNT
#' 
#'     Statistics: SUM
#' 
#' CONTACTS\_HANDLED\_INCOMING
#' 
#' :   Unit: COUNT
#' 
#'     Statistics: SUM
#' 
#' CONTACTS\_HANDLED\_OUTBOUND
#' 
#' :   Unit: COUNT
#' 
#'     Statistics: SUM
#' 
#' CONTACTS\_HOLD\_ABANDONS
#' 
#' :   Unit: COUNT
#' 
#'     Statistics: SUM
#' 
#' CONTACTS\_TRANSFERRED\_IN
#' 
#' :   Unit: COUNT
#' 
#'     Statistics: SUM
#' 
#' CONTACTS\_TRANSFERRED\_OUT
#' 
#' :   Unit: COUNT
#' 
#'     Statistics: SUM
#' 
#' CONTACTS\_TRANSFERRED\_IN\_FROM\_QUEUE
#' 
#' :   Unit: COUNT
#' 
#'     Statistics: SUM
#' 
#' CONTACTS\_TRANSFERRED\_OUT\_FROM\_QUEUE
#' 
#' :   Unit: COUNT
#' 
#'     Statistics: SUM
#' 
#' CALLBACK\_CONTACTS\_HANDLED
#' 
#' :   Unit: COUNT
#' 
#'     Statistics: SUM
#' 
#' CALLBACK\_CONTACTS\_HANDLED
#' 
#' :   Unit: COUNT
#' 
#'     Statistics: SUM
#' 
#' API\_CONTACTS\_HANDLED
#' 
#' :   Unit: COUNT
#' 
#'     Statistics: SUM
#' 
#' CONTACTS\_MISSED
#' 
#' :   Unit: COUNT
#' 
#'     Statistics: SUM
#' 
#' OCCUPANCY
#' 
#' :   Unit: PERCENT
#' 
#'     Statistics: AVG
#' 
#' HANDLE\_TIME
#' 
#' :   Unit: SECONDS
#' 
#'     Statistics: AVG
#' 
#' AFTER\_CONTACT\_WORK\_TIME
#' 
#' :   Unit: SECONDS
#' 
#'     Statistics: AVG
#' 
#' QUEUED\_TIME
#' 
#' :   Unit: SECONDS
#' 
#'     Statistics: MAX
#' 
#' ABANDON\_TIME
#' 
#' :   Unit: COUNT
#' 
#'     Statistics: SUM
#' 
#' QUEUE\_ANSWER\_TIME
#' 
#' :   Unit: SECONDS
#' 
#'     Statistics: AVG
#' 
#' HOLD\_TIME
#' 
#' :   Unit: SECONDS
#' 
#'     Statistics: AVG
#' 
#' INTERACTION\_TIME
#' 
#' :   Unit: SECONDS
#' 
#'     Statistics: AVG
#' 
#' INTERACTION\_AND\_HOLD\_TIME
#' 
#' :   Unit: SECONDS
#' 
#'     Statistics: AVG
#' 
#' SERVICE\_LEVEL
#' 
#' :   Unit: PERCENT
#' 
#'     Statistics: AVG
#' 
#'     Threshold: Only \"Less than\" comparisons are supported, with the following service level thresholds: 15, 20, 25, 30, 45, 60, 90, 120, 180, 240, 300, 600
#' @param Groupings The grouping applied to the metrics returned. For example, when results are grouped by queueId, the metrics returned are grouped by queue. The values returned apply to the metrics for each queue rather than aggregated for all queues.
#' 
#' The current version supports grouping by Queue
#' 
#' If no `Grouping` is included in the request, a summary of `HistoricalMetrics` for all queues is returned.
#' @param NextToken The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
#' @param MaxResults Indicates the maximum number of results to return per page in the response, between 1-100.
#'
#' @examples
#'
#' @export
get_metric_data <- function (InstanceId, StartTime, EndTime, 
    Filters, HistoricalMetrics, Groupings = NULL, NextToken = NULL, 
    MaxResults = NULL) 
{
    op <- Operation(name = "GetMetricData", http_method = "POST", 
        http_path = "/metrics/historical/{InstanceId}", paginator = list())
    input <- get_metric_data_input(InstanceId = InstanceId, StartTime = StartTime, 
        EndTime = EndTime, Filters = Filters, HistoricalMetrics = HistoricalMetrics, 
        Groupings = Groupings, NextToken = NextToken, MaxResults = MaxResults)
    output <- get_metric_data_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of `RoutingProfileSummary` objects that includes information about the routing profiles in your instance
#'
#' Returns an array of `RoutingProfileSummary` objects that includes information about the routing profiles in your instance.
#'
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#' @param NextToken The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
#' @param MaxResults The maximum number of routing profiles to return in the response.
#'
#' @examples
#'
#' @export
list_routing_profiles <- function (InstanceId, NextToken = NULL, 
    MaxResults = NULL) 
{
    op <- Operation(name = "ListRoutingProfiles", http_method = "GET", 
        http_path = "/routing-profiles-summary/{InstanceId}", 
        paginator = list())
    input <- list_routing_profiles_input(InstanceId = InstanceId, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- list_routing_profiles_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of SecurityProfileSummary objects that contain information about the security profiles in your instance, including the ARN, Id, and Name of the security profile
#'
#' Returns an array of SecurityProfileSummary objects that contain information about the security profiles in your instance, including the ARN, Id, and Name of the security profile.
#'
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#' @param NextToken The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
#' @param MaxResults The maximum number of security profiles to return.
#'
#' @examples
#'
#' @export
list_security_profiles <- function (InstanceId, NextToken = NULL, 
    MaxResults = NULL) 
{
    op <- Operation(name = "ListSecurityProfiles", http_method = "GET", 
        http_path = "/security-profiles-summary/{InstanceId}", 
        paginator = list())
    input <- list_security_profiles_input(InstanceId = InstanceId, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- list_security_profiles_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a `UserHierarchyGroupSummaryList`, which is an array of `HierarchyGroupSummary` objects that contain information about the hierarchy groups in your instance
#'
#' Returns a `UserHierarchyGroupSummaryList`, which is an array of `HierarchyGroupSummary` objects that contain information about the hierarchy groups in your instance.
#'
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#' @param NextToken The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
#' @param MaxResults The maximum number of hierarchy groups to return.
#'
#' @examples
#'
#' @export
list_user_hierarchy_groups <- function (InstanceId, NextToken = NULL, 
    MaxResults = NULL) 
{
    op <- Operation(name = "ListUserHierarchyGroups", http_method = "GET", 
        http_path = "/user-hierarchy-groups-summary/{InstanceId}", 
        paginator = list())
    input <- list_user_hierarchy_groups_input(InstanceId = InstanceId, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- list_user_hierarchy_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a `UserSummaryList`, which is an array of `UserSummary` objects
#'
#' Returns a `UserSummaryList`, which is an array of `UserSummary` objects.
#'
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#' @param NextToken The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
#' @param MaxResults The maximum number of results to return in the response.
#'
#' @examples
#'
#' @export
list_users <- function (InstanceId, NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "ListUsers", http_method = "GET", 
        http_path = "/users-summary/{InstanceId}", paginator = list())
    input <- list_users_input(InstanceId = InstanceId, NextToken = NextToken, 
        MaxResults = MaxResults)
    output <- list_users_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' The `StartOutboundVoiceContact` operation initiates a contact flow to place an outbound call to a customer
#'
#' The `StartOutboundVoiceContact` operation initiates a contact flow to place an outbound call to a customer.
#' 
#' If you are using an IAM account, it must have permission to the `connect:StartOutboundVoiceContact` action.
#'
#' @param DestinationPhoneNumber The phone number of the customer in E.164 format.
#' @param ContactFlowId The identifier for the contact flow to connect the outbound call to.
#' 
#' To find the `ContactFlowId`, open the contact flow you want to use in the Amazon Connect contact flow editor. The ID for the contact flow is displayed in the address bar as part of the URL. For example, the contact flow ID is the set of characters at the end of the URL, after \'contact-flow/\' such as `78ea8fd5-2659-4f2b-b528-699760ccfc1b`.
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#' @param ClientToken A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. The token is valid for 7 days after creation. If a contact is already started, the contact ID is returned. If the contact is disconnected, a new contact is started.
#' @param SourcePhoneNumber The phone number, in E.164 format, associated with your Amazon Connect instance to use for the outbound call.
#' @param QueueId The queue to add the call to. If you specify a queue, the phone displayed for caller ID is the phone number specified in the queue. If you do not specify a queue, the queue used will be the queue defined in the contact flow.
#' 
#' To find the `QueueId`, open the queue you want to use in the Amazon Connect Queue editor. The ID for the queue is displayed in the address bar as part of the URL. For example, the queue ID is the set of characters at the end of the URL, after \'queue/\' such as `queue/aeg40574-2d01-51c3-73d6-bf8624d2168c`.
#' @param Attributes Specify a custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in contact flows just like any other contact attributes.
#' 
#' There can be up to 32,768 UTF-8 bytes across all key-value pairs. Attribute keys can include only alphanumeric, dash, and underscore characters.
#' 
#' For example, if you want play a greeting when the customer answers the call, you can pass the customer name in attributes similar to the following:
#'
#' @examples
#'
#' @export
start_outbound_voice_contact <- function (DestinationPhoneNumber, 
    ContactFlowId, InstanceId, ClientToken = NULL, SourcePhoneNumber = NULL, 
    QueueId = NULL, Attributes = NULL) 
{
    op <- Operation(name = "StartOutboundVoiceContact", http_method = "PUT", 
        http_path = "/contact/outbound-voice", paginator = list())
    input <- start_outbound_voice_contact_input(DestinationPhoneNumber = DestinationPhoneNumber, 
        ContactFlowId = ContactFlowId, InstanceId = InstanceId, 
        ClientToken = ClientToken, SourcePhoneNumber = SourcePhoneNumber, 
        QueueId = QueueId, Attributes = Attributes)
    output <- start_outbound_voice_contact_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Ends the contact initiated by the `StartOutboundVoiceContact` operation
#'
#' Ends the contact initiated by the `StartOutboundVoiceContact` operation.
#' 
#' If you are using an IAM account, it must have permission to the `connect:StopContact` action.
#'
#' @param ContactId The unique identifier of the contact to end.
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#'
#' @examples
#'
#' @export
stop_contact <- function (ContactId, InstanceId) 
{
    op <- Operation(name = "StopContact", http_method = "POST", 
        http_path = "/contact/stop", paginator = list())
    input <- stop_contact_input(ContactId = ContactId, InstanceId = InstanceId)
    output <- stop_contact_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' The `UpdateContactAttributes` operation lets you programmatically create new, or update existing, contact attributes associated with a contact
#'
#' The `UpdateContactAttributes` operation lets you programmatically create new, or update existing, contact attributes associated with a contact. You can use the operation to add or update attributes for both ongoing and completed contacts. For example, you can update the customer\'s name or the reason the customer called while the call is active, or add notes about steps that the agent took during the call that are displayed to the next agent that takes the call. You can also use the `UpdateContactAttributes` operation to update attributes for a contact using data from your CRM application and save the data with the contact in Amazon Connect. You could also flag calls for additional analysis, such as legal review or identifying abusive callers.
#' 
#' Contact attributes are available in Amazon Connect for 24 months, and are then deleted.
#' 
#' *Important:*
#' 
#' You cannot use the operation to update attributes for contacts that occurred prior to the release of the API, September 12, 2018. You can update attributes only for contacts that started after the release of the API. If you attempt to update attributes for a contact that occurred prior to the release of the API, a 400 error is returned. This applies also to queued callbacks that were initiated prior to the release of the API but are still active in your instance.
#'
#' @param InitialContactId The unique identifier of the contact for which to update attributes. This is the identifier for the contact associated with the first interaction with the contact center.
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#' @param Attributes The key-value pairs for the attribute to update.
#'
#' @examples
#'
#' @export
update_contact_attributes <- function (InitialContactId, InstanceId, 
    Attributes) 
{
    op <- Operation(name = "UpdateContactAttributes", http_method = "POST", 
        http_path = "/contact/attributes", paginator = list())
    input <- update_contact_attributes_input(InitialContactId = InitialContactId, 
        InstanceId = InstanceId, Attributes = Attributes)
    output <- update_contact_attributes_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Assigns the specified hierarchy group to the user
#'
#' Assigns the specified hierarchy group to the user.
#'
#' @param UserId The identifier of the user account to assign the hierarchy group to.
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#' @param HierarchyGroupId The identifier for the hierarchy group to assign to the user.
#'
#' @examples
#'
#' @export
update_user_hierarchy <- function (UserId, InstanceId, HierarchyGroupId = NULL) 
{
    op <- Operation(name = "UpdateUserHierarchy", http_method = "POST", 
        http_path = "/users/{InstanceId}/{UserId}/hierarchy", 
        paginator = list())
    input <- update_user_hierarchy_input(UserId = UserId, InstanceId = InstanceId, 
        HierarchyGroupId = HierarchyGroupId)
    output <- update_user_hierarchy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the identity information for the specified user in a `UserIdentityInfo` object, including email, first name, and last name
#'
#' Updates the identity information for the specified user in a `UserIdentityInfo` object, including email, first name, and last name.
#'
#' @param IdentityInfo A `UserIdentityInfo` object.
#' @param UserId The identifier for the user account to update identity information for.
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#'
#' @examples
#'
#' @export
update_user_identity_info <- function (IdentityInfo, UserId, 
    InstanceId) 
{
    op <- Operation(name = "UpdateUserIdentityInfo", http_method = "POST", 
        http_path = "/users/{InstanceId}/{UserId}/identity-info", 
        paginator = list())
    input <- update_user_identity_info_input(IdentityInfo = IdentityInfo, 
        UserId = UserId, InstanceId = InstanceId)
    output <- update_user_identity_info_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the phone configuration settings in the `UserPhoneConfig` object for the specified user
#'
#' Updates the phone configuration settings in the `UserPhoneConfig` object for the specified user.
#'
#' @param PhoneConfig A `UserPhoneConfig` object that contains settings for `AfterContactWorkTimeLimit`, `AutoAccept`, `DeskPhoneNumber`, and `PhoneType` to assign to the user.
#' @param UserId The identifier for the user account to change phone settings for.
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#'
#' @examples
#'
#' @export
update_user_phone_config <- function (PhoneConfig, UserId, InstanceId) 
{
    op <- Operation(name = "UpdateUserPhoneConfig", http_method = "POST", 
        http_path = "/users/{InstanceId}/{UserId}/phone-config", 
        paginator = list())
    input <- update_user_phone_config_input(PhoneConfig = PhoneConfig, 
        UserId = UserId, InstanceId = InstanceId)
    output <- update_user_phone_config_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Assigns the specified routing profile to a user
#'
#' Assigns the specified routing profile to a user.
#'
#' @param RoutingProfileId The identifier of the routing profile to assign to the user.
#' @param UserId The identifier for the user account to assign the routing profile to.
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#'
#' @examples
#'
#' @export
update_user_routing_profile <- function (RoutingProfileId, UserId, 
    InstanceId) 
{
    op <- Operation(name = "UpdateUserRoutingProfile", http_method = "POST", 
        http_path = "/users/{InstanceId}/{UserId}/routing-profile", 
        paginator = list())
    input <- update_user_routing_profile_input(RoutingProfileId = RoutingProfileId, 
        UserId = UserId, InstanceId = InstanceId)
    output <- update_user_routing_profile_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the security profiles assigned to the user
#'
#' Updates the security profiles assigned to the user.
#'
#' @param SecurityProfileIds The identifiers for the security profiles to assign to the user.
#' @param UserId The identifier of the user account to assign the security profiles.
#' @param InstanceId The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.
#'
#' @examples
#'
#' @export
update_user_security_profiles <- function (SecurityProfileIds, 
    UserId, InstanceId) 
{
    op <- Operation(name = "UpdateUserSecurityProfiles", http_method = "POST", 
        http_path = "/users/{InstanceId}/{UserId}/security-profiles", 
        paginator = list())
    input <- update_user_security_profiles_input(SecurityProfileIds = SecurityProfileIds, 
        UserId = UserId, InstanceId = InstanceId)
    output <- update_user_security_profiles_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
