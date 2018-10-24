create_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Username = structure(logical(0), 
        shape = "AgentUsername", type = "string", max = 20L, 
        min = 1L, pattern = "[a-zA-Z0-9\\_\\-\\.]+"), Password = structure(logical(0), 
        shape = "Password", type = "string", pattern = "/^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d\\S]{8,64}$/"), 
        IdentityInfo = structure(list(FirstName = structure(logical(0), 
            shape = "AgentFirstName", type = "string", max = 100L, 
            min = 1L), LastName = structure(logical(0), shape = "AgentLastName", 
            type = "string", max = 100L, min = 1L), Email = structure(logical(0), 
            shape = "Email", type = "string")), shape = "UserIdentityInfo", 
            type = "structure"), PhoneConfig = structure(list(PhoneType = structure(logical(0), 
            shape = "PhoneType", type = "string"), AutoAccept = structure(logical(0), 
            shape = "AutoAccept", type = "boolean"), AfterContactWorkTimeLimit = structure(logical(0), 
            shape = "AfterContactWorkTimeLimit", type = "integer", 
            min = 0L), DeskPhoneNumber = structure(logical(0), 
            shape = "PhoneNumber", type = "string")), shape = "UserPhoneConfig", 
            type = "structure"), DirectoryUserId = structure(logical(0), 
            shape = "DirectoryUserId", type = "string"), SecurityProfileIds = structure(list(structure(logical(0), 
            shape = "SecurityProfileId", type = "string")), shape = "SecurityProfileIds", 
            type = "list", max = 10L, min = 1L), RoutingProfileId = structure(logical(0), 
            shape = "RoutingProfileId", type = "string"), HierarchyGroupId = structure(logical(0), 
            shape = "HierarchyGroupId", type = "string"), InstanceId = structure(logical(0), 
            shape = "InstanceId", location = "uri", locationName = "InstanceId", 
            type = "string", max = 100L, min = 1L)), shape = "CreateUserRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserId = structure(logical(0), shape = "UserId", 
        type = "string"), UserArn = structure(logical(0), shape = "ARN", 
        type = "string")), shape = "CreateUserResponse", type = "structure")
    return(populate(args, shape))
}

delete_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", location = "uri", locationName = "InstanceId", 
        type = "string", max = 100L, min = 1L), UserId = structure(logical(0), 
        shape = "UserId", location = "uri", locationName = "UserId", 
        type = "string")), shape = "DeleteUserRequest", type = "structure")
    return(populate(args, shape))
}

delete_user_output <- function () 
{
    return(list())
}

describe_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserId = structure(logical(0), shape = "UserId", 
        location = "uri", locationName = "UserId", type = "string"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            location = "uri", locationName = "InstanceId", type = "string", 
            max = 100L, min = 1L)), shape = "DescribeUserRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(User = structure(list(Id = structure(logical(0), 
        shape = "UserId", type = "string"), Arn = structure(logical(0), 
        shape = "ARN", type = "string"), Username = structure(logical(0), 
        shape = "AgentUsername", type = "string", max = 20L, 
        min = 1L, pattern = "[a-zA-Z0-9\\_\\-\\.]+"), IdentityInfo = structure(list(FirstName = structure(logical(0), 
        shape = "AgentFirstName", type = "string", max = 100L, 
        min = 1L), LastName = structure(logical(0), shape = "AgentLastName", 
        type = "string", max = 100L, min = 1L), Email = structure(logical(0), 
        shape = "Email", type = "string")), shape = "UserIdentityInfo", 
        type = "structure"), PhoneConfig = structure(list(PhoneType = structure(logical(0), 
        shape = "PhoneType", type = "string"), AutoAccept = structure(logical(0), 
        shape = "AutoAccept", type = "boolean"), AfterContactWorkTimeLimit = structure(logical(0), 
        shape = "AfterContactWorkTimeLimit", type = "integer", 
        min = 0L), DeskPhoneNumber = structure(logical(0), shape = "PhoneNumber", 
        type = "string")), shape = "UserPhoneConfig", type = "structure"), 
        DirectoryUserId = structure(logical(0), shape = "DirectoryUserId", 
            type = "string"), SecurityProfileIds = structure(list(structure(logical(0), 
            shape = "SecurityProfileId", type = "string")), shape = "SecurityProfileIds", 
            type = "list", max = 10L, min = 1L), RoutingProfileId = structure(logical(0), 
            shape = "RoutingProfileId", type = "string"), HierarchyGroupId = structure(logical(0), 
            shape = "HierarchyGroupId", type = "string")), shape = "User", 
        type = "structure")), shape = "DescribeUserResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_user_hierarchy_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HierarchyGroupId = structure(logical(0), 
        shape = "HierarchyGroupId", location = "uri", locationName = "HierarchyGroupId", 
        type = "string"), InstanceId = structure(logical(0), 
        shape = "InstanceId", location = "uri", locationName = "InstanceId", 
        type = "string", max = 100L, min = 1L)), shape = "DescribeUserHierarchyGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_user_hierarchy_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HierarchyGroup = structure(list(Id = structure(logical(0), 
        shape = "HierarchyGroupId", type = "string"), Arn = structure(logical(0), 
        shape = "ARN", type = "string"), Name = structure(logical(0), 
        shape = "HierarchyGroupName", type = "string"), LevelId = structure(logical(0), 
        shape = "HierarchyLevelId", type = "string"), HierarchyPath = structure(list(LevelOne = structure(list(Id = structure(logical(0), 
        shape = "HierarchyGroupId", type = "string"), Arn = structure(logical(0), 
        shape = "ARN", type = "string"), Name = structure(logical(0), 
        shape = "HierarchyGroupName", type = "string")), shape = "HierarchyGroupSummary", 
        type = "structure"), LevelTwo = structure(list(Id = structure(logical(0), 
        shape = "HierarchyGroupId", type = "string"), Arn = structure(logical(0), 
        shape = "ARN", type = "string"), Name = structure(logical(0), 
        shape = "HierarchyGroupName", type = "string")), shape = "HierarchyGroupSummary", 
        type = "structure"), LevelThree = structure(list(Id = structure(logical(0), 
        shape = "HierarchyGroupId", type = "string"), Arn = structure(logical(0), 
        shape = "ARN", type = "string"), Name = structure(logical(0), 
        shape = "HierarchyGroupName", type = "string")), shape = "HierarchyGroupSummary", 
        type = "structure"), LevelFour = structure(list(Id = structure(logical(0), 
        shape = "HierarchyGroupId", type = "string"), Arn = structure(logical(0), 
        shape = "ARN", type = "string"), Name = structure(logical(0), 
        shape = "HierarchyGroupName", type = "string")), shape = "HierarchyGroupSummary", 
        type = "structure"), LevelFive = structure(list(Id = structure(logical(0), 
        shape = "HierarchyGroupId", type = "string"), Arn = structure(logical(0), 
        shape = "ARN", type = "string"), Name = structure(logical(0), 
        shape = "HierarchyGroupName", type = "string")), shape = "HierarchyGroupSummary", 
        type = "structure")), shape = "HierarchyPath", type = "structure")), 
        shape = "HierarchyGroup", type = "structure")), shape = "DescribeUserHierarchyGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_user_hierarchy_structure_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", location = "uri", locationName = "InstanceId", 
        type = "string", max = 100L, min = 1L)), shape = "DescribeUserHierarchyStructureRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_user_hierarchy_structure_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HierarchyStructure = structure(list(LevelOne = structure(list(Id = structure(logical(0), 
        shape = "HierarchyLevelId", type = "string"), Arn = structure(logical(0), 
        shape = "ARN", type = "string"), Name = structure(logical(0), 
        shape = "HierarchyLevelName", type = "string")), shape = "HierarchyLevel", 
        type = "structure"), LevelTwo = structure(list(Id = structure(logical(0), 
        shape = "HierarchyLevelId", type = "string"), Arn = structure(logical(0), 
        shape = "ARN", type = "string"), Name = structure(logical(0), 
        shape = "HierarchyLevelName", type = "string")), shape = "HierarchyLevel", 
        type = "structure"), LevelThree = structure(list(Id = structure(logical(0), 
        shape = "HierarchyLevelId", type = "string"), Arn = structure(logical(0), 
        shape = "ARN", type = "string"), Name = structure(logical(0), 
        shape = "HierarchyLevelName", type = "string")), shape = "HierarchyLevel", 
        type = "structure"), LevelFour = structure(list(Id = structure(logical(0), 
        shape = "HierarchyLevelId", type = "string"), Arn = structure(logical(0), 
        shape = "ARN", type = "string"), Name = structure(logical(0), 
        shape = "HierarchyLevelName", type = "string")), shape = "HierarchyLevel", 
        type = "structure"), LevelFive = structure(list(Id = structure(logical(0), 
        shape = "HierarchyLevelId", type = "string"), Arn = structure(logical(0), 
        shape = "ARN", type = "string"), Name = structure(logical(0), 
        shape = "HierarchyLevelName", type = "string")), shape = "HierarchyLevel", 
        type = "structure")), shape = "HierarchyStructure", type = "structure")), 
        shape = "DescribeUserHierarchyStructureResponse", type = "structure")
    return(populate(args, shape))
}

get_current_metric_data_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", location = "uri", locationName = "InstanceId", 
        type = "string", max = 100L, min = 1L), Filters = structure(list(Queues = structure(list(structure(logical(0), 
        shape = "QueueId", type = "string")), shape = "Queues", 
        type = "list", max = 100L, min = 1L), Channels = structure(list(structure(logical(0), 
        shape = "Channel", type = "string")), shape = "Channels", 
        type = "list", max = 1L)), shape = "Filters", type = "structure"), 
        Groupings = structure(list(structure(logical(0), shape = "Grouping", 
            type = "string")), shape = "Groupings", type = "list", 
            max = 2L), CurrentMetrics = structure(list(structure(list(Name = structure(logical(0), 
            shape = "CurrentMetricName", type = "string"), Unit = structure(logical(0), 
            shape = "Unit", type = "string")), shape = "CurrentMetric", 
            type = "structure")), shape = "CurrentMetrics", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResult100", box = TRUE, type = "integer", 
            max = 100L, min = 1L)), shape = "GetCurrentMetricDataRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_current_metric_data_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MetricResults = structure(list(structure(list(Dimensions = structure(list(Queue = structure(list(Id = structure(logical(0), 
        shape = "QueueId", type = "string"), Arn = structure(logical(0), 
        shape = "ARN", type = "string")), shape = "QueueReference", 
        type = "structure"), Channel = structure(logical(0), 
        shape = "Channel", type = "string")), shape = "Dimensions", 
        type = "structure"), Collections = structure(list(structure(list(Metric = structure(list(Name = structure(logical(0), 
        shape = "CurrentMetricName", type = "string"), Unit = structure(logical(0), 
        shape = "Unit", type = "string")), shape = "CurrentMetric", 
        type = "structure"), Value = structure(logical(0), shape = "Value", 
        box = TRUE, type = "double")), shape = "CurrentMetricData", 
        type = "structure")), shape = "CurrentMetricDataCollections", 
        type = "list")), shape = "CurrentMetricResult", type = "structure")), 
        shape = "CurrentMetricResults", type = "list"), DataSnapshotTime = structure(logical(0), 
        shape = "timestamp", type = "timestamp")), shape = "GetCurrentMetricDataResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_federation_token_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", location = "uri", locationName = "InstanceId", 
        type = "string", max = 100L, min = 1L)), shape = "GetFederationTokenRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_federation_token_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Credentials = structure(list(AccessToken = structure(logical(0), 
        shape = "SecurityToken", type = "string", sensitive = TRUE), 
        AccessTokenExpiration = structure(logical(0), shape = "timestamp", 
            type = "timestamp"), RefreshToken = structure(logical(0), 
            shape = "SecurityToken", type = "string", sensitive = TRUE), 
        RefreshTokenExpiration = structure(logical(0), shape = "timestamp", 
            type = "timestamp")), shape = "Credentials", type = "structure")), 
        shape = "GetFederationTokenResponse", type = "structure")
    return(populate(args, shape))
}

get_metric_data_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", location = "uri", locationName = "InstanceId", 
        type = "string", max = 100L, min = 1L), StartTime = structure(logical(0), 
        shape = "timestamp", type = "timestamp"), EndTime = structure(logical(0), 
        shape = "timestamp", type = "timestamp"), Filters = structure(list(Queues = structure(list(structure(logical(0), 
        shape = "QueueId", type = "string")), shape = "Queues", 
        type = "list", max = 100L, min = 1L), Channels = structure(list(structure(logical(0), 
        shape = "Channel", type = "string")), shape = "Channels", 
        type = "list", max = 1L)), shape = "Filters", type = "structure"), 
        Groupings = structure(list(structure(logical(0), shape = "Grouping", 
            type = "string")), shape = "Groupings", type = "list", 
            max = 2L), HistoricalMetrics = structure(list(structure(list(Name = structure(logical(0), 
            shape = "HistoricalMetricName", type = "string"), 
            Threshold = structure(list(Comparison = structure(logical(0), 
                shape = "Comparison", type = "string"), ThresholdValue = structure(logical(0), 
                shape = "ThresholdValue", box = TRUE, type = "double")), 
                shape = "Threshold", box = TRUE, type = "structure"), 
            Statistic = structure(logical(0), shape = "Statistic", 
                type = "string"), Unit = structure(logical(0), 
                shape = "Unit", type = "string")), shape = "HistoricalMetric", 
            type = "structure")), shape = "HistoricalMetrics", 
            type = "list"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResult100", box = TRUE, type = "integer", 
            max = 100L, min = 1L)), shape = "GetMetricDataRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_metric_data_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MetricResults = structure(list(structure(list(Dimensions = structure(list(Queue = structure(list(Id = structure(logical(0), 
        shape = "QueueId", type = "string"), Arn = structure(logical(0), 
        shape = "ARN", type = "string")), shape = "QueueReference", 
        type = "structure"), Channel = structure(logical(0), 
        shape = "Channel", type = "string")), shape = "Dimensions", 
        type = "structure"), Collections = structure(list(structure(list(Metric = structure(list(Name = structure(logical(0), 
        shape = "HistoricalMetricName", type = "string"), Threshold = structure(list(Comparison = structure(logical(0), 
        shape = "Comparison", type = "string"), ThresholdValue = structure(logical(0), 
        shape = "ThresholdValue", box = TRUE, type = "double")), 
        shape = "Threshold", box = TRUE, type = "structure"), 
        Statistic = structure(logical(0), shape = "Statistic", 
            type = "string"), Unit = structure(logical(0), shape = "Unit", 
            type = "string")), shape = "HistoricalMetric", type = "structure"), 
        Value = structure(logical(0), shape = "Value", box = TRUE, 
            type = "double")), shape = "HistoricalMetricData", 
        type = "structure")), shape = "HistoricalMetricDataCollections", 
        type = "list")), shape = "HistoricalMetricResult", type = "structure")), 
        shape = "HistoricalMetricResults", type = "list")), shape = "GetMetricDataResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_routing_profiles_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", location = "uri", locationName = "InstanceId", 
        type = "string", max = 100L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResult1000", box = TRUE, location = "querystring", 
        locationName = "maxResults", type = "integer", max = 1000L, 
        min = 1L)), shape = "ListRoutingProfilesRequest", type = "structure")
    return(populate(args, shape))
}

list_routing_profiles_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoutingProfileSummaryList = structure(list(structure(list(Id = structure(logical(0), 
        shape = "RoutingProfileId", type = "string"), Arn = structure(logical(0), 
        shape = "ARN", type = "string"), Name = structure(logical(0), 
        shape = "RoutingProfileName", type = "string", max = 100L, 
        min = 1L)), shape = "RoutingProfileSummary", type = "structure")), 
        shape = "RoutingProfileSummaryList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "ListRoutingProfilesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_security_profiles_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", location = "uri", locationName = "InstanceId", 
        type = "string", max = 100L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResult1000", box = TRUE, location = "querystring", 
        locationName = "maxResults", type = "integer", max = 1000L, 
        min = 1L)), shape = "ListSecurityProfilesRequest", type = "structure")
    return(populate(args, shape))
}

list_security_profiles_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityProfileSummaryList = structure(list(structure(list(Id = structure(logical(0), 
        shape = "SecurityProfileId", type = "string"), Arn = structure(logical(0), 
        shape = "ARN", type = "string"), Name = structure(logical(0), 
        shape = "SecurityProfileName", type = "string")), shape = "SecurityProfileSummary", 
        type = "structure")), shape = "SecurityProfileSummaryList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListSecurityProfilesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_user_hierarchy_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", location = "uri", locationName = "InstanceId", 
        type = "string", max = 100L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResult1000", box = TRUE, location = "querystring", 
        locationName = "maxResults", type = "integer", max = 1000L, 
        min = 1L)), shape = "ListUserHierarchyGroupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_user_hierarchy_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserHierarchyGroupSummaryList = structure(list(structure(list(Id = structure(logical(0), 
        shape = "HierarchyGroupId", type = "string"), Arn = structure(logical(0), 
        shape = "ARN", type = "string"), Name = structure(logical(0), 
        shape = "HierarchyGroupName", type = "string")), shape = "HierarchyGroupSummary", 
        type = "structure")), shape = "HierarchyGroupSummaryList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListUserHierarchyGroupsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_users_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", location = "uri", locationName = "InstanceId", 
        type = "string", max = 100L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResult1000", box = TRUE, location = "querystring", 
        locationName = "maxResults", type = "integer", max = 1000L, 
        min = 1L)), shape = "ListUsersRequest", type = "structure")
    return(populate(args, shape))
}

list_users_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserSummaryList = structure(list(structure(list(Id = structure(logical(0), 
        shape = "UserId", type = "string"), Arn = structure(logical(0), 
        shape = "ARN", type = "string"), Username = structure(logical(0), 
        shape = "AgentUsername", type = "string", max = 20L, 
        min = 1L, pattern = "[a-zA-Z0-9\\_\\-\\.]+")), shape = "UserSummary", 
        type = "structure")), shape = "UserSummaryList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "ListUsersResponse", type = "structure")
    return(populate(args, shape))
}

start_outbound_voice_contact_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DestinationPhoneNumber = structure(logical(0), 
        shape = "PhoneNumber", type = "string"), ContactFlowId = structure(logical(0), 
        shape = "ContactFlowId", type = "string", max = 500L), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", max = 100L, min = 1L), ClientToken = structure(logical(0), 
            shape = "ClientToken", idempotencyToken = TRUE, type = "string", 
            max = 500L), SourcePhoneNumber = structure(logical(0), 
            shape = "PhoneNumber", type = "string"), QueueId = structure(logical(0), 
            shape = "QueueId", type = "string"), Attributes = structure(list(structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 32767L, 
            min = 0L)), shape = "Attributes", type = "map")), 
        shape = "StartOutboundVoiceContactRequest", type = "structure")
    return(populate(args, shape))
}

start_outbound_voice_contact_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContactId = structure(logical(0), 
        shape = "ContactId", type = "string", max = 256L, min = 1L)), 
        shape = "StartOutboundVoiceContactResponse", type = "structure")
    return(populate(args, shape))
}

stop_contact_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContactId = structure(logical(0), 
        shape = "ContactId", type = "string", max = 256L, min = 1L), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", max = 100L, min = 1L)), shape = "StopContactRequest", 
        type = "structure")
    return(populate(args, shape))
}

stop_contact_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StopContactResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_contact_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InitialContactId = structure(logical(0), 
        shape = "ContactId", type = "string", max = 256L, min = 1L), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", max = 100L, min = 1L), Attributes = structure(list(structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 32767L, 
            min = 0L)), shape = "Attributes", type = "map")), 
        shape = "UpdateContactAttributesRequest", type = "structure")
    return(populate(args, shape))
}

update_contact_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateContactAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_user_hierarchy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HierarchyGroupId = structure(logical(0), 
        shape = "HierarchyGroupId", type = "string"), UserId = structure(logical(0), 
        shape = "UserId", location = "uri", locationName = "UserId", 
        type = "string"), InstanceId = structure(logical(0), 
        shape = "InstanceId", location = "uri", locationName = "InstanceId", 
        type = "string", max = 100L, min = 1L)), shape = "UpdateUserHierarchyRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_user_hierarchy_output <- function () 
{
    return(list())
}

update_user_identity_info_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityInfo = structure(list(FirstName = structure(logical(0), 
        shape = "AgentFirstName", type = "string", max = 100L, 
        min = 1L), LastName = structure(logical(0), shape = "AgentLastName", 
        type = "string", max = 100L, min = 1L), Email = structure(logical(0), 
        shape = "Email", type = "string")), shape = "UserIdentityInfo", 
        type = "structure"), UserId = structure(logical(0), shape = "UserId", 
        location = "uri", locationName = "UserId", type = "string"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            location = "uri", locationName = "InstanceId", type = "string", 
            max = 100L, min = 1L)), shape = "UpdateUserIdentityInfoRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_user_identity_info_output <- function () 
{
    return(list())
}

update_user_phone_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PhoneConfig = structure(list(PhoneType = structure(logical(0), 
        shape = "PhoneType", type = "string"), AutoAccept = structure(logical(0), 
        shape = "AutoAccept", type = "boolean"), AfterContactWorkTimeLimit = structure(logical(0), 
        shape = "AfterContactWorkTimeLimit", type = "integer", 
        min = 0L), DeskPhoneNumber = structure(logical(0), shape = "PhoneNumber", 
        type = "string")), shape = "UserPhoneConfig", type = "structure"), 
        UserId = structure(logical(0), shape = "UserId", location = "uri", 
            locationName = "UserId", type = "string"), InstanceId = structure(logical(0), 
            shape = "InstanceId", location = "uri", locationName = "InstanceId", 
            type = "string", max = 100L, min = 1L)), shape = "UpdateUserPhoneConfigRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_user_phone_config_output <- function () 
{
    return(list())
}

update_user_routing_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoutingProfileId = structure(logical(0), 
        shape = "RoutingProfileId", type = "string"), UserId = structure(logical(0), 
        shape = "UserId", location = "uri", locationName = "UserId", 
        type = "string"), InstanceId = structure(logical(0), 
        shape = "InstanceId", location = "uri", locationName = "InstanceId", 
        type = "string", max = 100L, min = 1L)), shape = "UpdateUserRoutingProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_user_routing_profile_output <- function () 
{
    return(list())
}

update_user_security_profiles_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityProfileIds = structure(list(structure(logical(0), 
        shape = "SecurityProfileId", type = "string")), shape = "SecurityProfileIds", 
        type = "list", max = 10L, min = 1L), UserId = structure(logical(0), 
        shape = "UserId", location = "uri", locationName = "UserId", 
        type = "string"), InstanceId = structure(logical(0), 
        shape = "InstanceId", location = "uri", locationName = "InstanceId", 
        type = "string", max = 100L, min = 1L)), shape = "UpdateUserSecurityProfilesRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_user_security_profiles_output <- function () 
{
    return(list())
}
