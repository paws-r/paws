associate_configuration_items_to_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationConfigurationId = structure(logical(0), 
        shape = "ApplicationId", type = "string", locationName = "applicationConfigurationId"), 
        ConfigurationIds = structure(list(structure(logical(0), 
            shape = "ConfigurationId", type = "string")), shape = "ConfigurationIdList", 
            type = "list", locationName = "configurationIds")), 
        shape = "AssociateConfigurationItemsToApplicationRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_configuration_items_to_application_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AssociateConfigurationItemsToApplicationResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string", locationName = "name"), Description = structure(logical(0), 
        shape = "String", type = "string", locationName = "description")), 
        shape = "CreateApplicationRequest", type = "structure")
    return(populate(args, shape))
}

create_application_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationId = structure(logical(0), 
        shape = "String", type = "string", locationName = "configurationId")), 
        shape = "CreateApplicationResponse", type = "structure")
    return(populate(args, shape))
}

create_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationIds = structure(list(structure(logical(0), 
        shape = "ConfigurationId", type = "string")), shape = "ConfigurationIdList", 
        type = "list", locationName = "configurationIds"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", locationName = "key"), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            locationName = "value")), shape = "Tag", type = "structure")), 
        shape = "TagSet", type = "list", locationName = "tags")), 
        shape = "CreateTagsRequest", type = "structure")
    return(populate(args, shape))
}

create_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateTagsResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_applications_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationIds = structure(list(structure(logical(0), 
        shape = "ApplicationId", type = "string")), shape = "ApplicationIdsList", 
        type = "list", locationName = "configurationIds")), shape = "DeleteApplicationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_applications_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteApplicationsResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationIds = structure(list(structure(logical(0), 
        shape = "ConfigurationId", type = "string")), shape = "ConfigurationIdList", 
        type = "list", locationName = "configurationIds"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", locationName = "key"), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            locationName = "value")), shape = "Tag", type = "structure")), 
        shape = "TagSet", type = "list", locationName = "tags")), 
        shape = "DeleteTagsRequest", type = "structure")
    return(populate(args, shape))
}

delete_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteTagsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_agents_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AgentIds = structure(list(structure(logical(0), 
        shape = "AgentId", type = "string")), shape = "AgentIds", 
        type = "list", locationName = "agentIds"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Values = structure(list(structure(logical(0), shape = "FilterValue", 
            type = "string")), shape = "FilterValues", type = "list", 
            locationName = "values"), Condition = structure(logical(0), 
            shape = "Condition", type = "string", locationName = "condition")), 
        shape = "Filter", type = "structure")), shape = "Filters", 
        type = "list", locationName = "filters"), MaxResults = structure(logical(0), 
        shape = "Integer", type = "integer", locationName = "maxResults"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "DescribeAgentsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_agents_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AgentsInfo = structure(list(structure(list(AgentId = structure(logical(0), 
        shape = "AgentId", type = "string", locationName = "agentId"), 
        HostName = structure(logical(0), shape = "String", type = "string", 
            locationName = "hostName"), AgentNetworkInfoList = structure(list(structure(list(IpAddress = structure(logical(0), 
            shape = "String", type = "string", locationName = "ipAddress"), 
            MacAddress = structure(logical(0), shape = "String", 
                type = "string", locationName = "macAddress")), 
            shape = "AgentNetworkInfo", type = "structure")), 
            shape = "AgentNetworkInfoList", type = "list", locationName = "agentNetworkInfoList"), 
        ConnectorId = structure(logical(0), shape = "String", 
            type = "string", locationName = "connectorId"), Version = structure(logical(0), 
            shape = "String", type = "string", locationName = "version"), 
        Health = structure(logical(0), shape = "AgentStatus", 
            type = "string", locationName = "health"), LastHealthPingTime = structure(logical(0), 
            shape = "String", type = "string", locationName = "lastHealthPingTime"), 
        CollectionStatus = structure(logical(0), shape = "String", 
            type = "string", locationName = "collectionStatus"), 
        AgentType = structure(logical(0), shape = "String", type = "string", 
            locationName = "agentType"), RegisteredTime = structure(logical(0), 
            shape = "String", type = "string", locationName = "registeredTime")), 
        shape = "AgentInfo", type = "structure")), shape = "AgentsInfo", 
        type = "list", locationName = "agentsInfo"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "DescribeAgentsResponse", type = "structure")
    return(populate(args, shape))
}

describe_configurations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationIds = structure(list(structure(logical(0), 
        shape = "ConfigurationId", type = "string")), shape = "ConfigurationIdList", 
        type = "list", locationName = "configurationIds")), shape = "DescribeConfigurationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Configurations = structure(list(structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeConfigurationsAttribute", 
        type = "map")), shape = "DescribeConfigurationsAttributes", 
        type = "list", locationName = "configurations")), shape = "DescribeConfigurationsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_continuous_exports_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExportIds = structure(list(structure(logical(0), 
        shape = "ConfigurationsExportId", type = "string")), 
        shape = "ContinuousExportIds", type = "list", locationName = "exportIds"), 
        MaxResults = structure(logical(0), shape = "DescribeContinuousExportsMaxResults", 
            type = "integer", box = TRUE, max = 100L, min = 1L, 
            locationName = "maxResults"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "DescribeContinuousExportsRequest", type = "structure")
    return(populate(args, shape))
}

describe_continuous_exports_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Descriptions = structure(list(structure(list(ExportId = structure(logical(0), 
        shape = "ConfigurationsExportId", type = "string", locationName = "exportId"), 
        Status = structure(logical(0), shape = "ContinuousExportStatus", 
            type = "string", locationName = "status"), StatusDetail = structure(logical(0), 
            shape = "StringMax255", type = "string", max = 255L, 
            min = 1L, locationName = "statusDetail"), S3Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", locationName = "s3Bucket"), 
        StartTime = structure(logical(0), shape = "TimeStamp", 
            type = "timestamp", locationName = "startTime"), 
        StopTime = structure(logical(0), shape = "TimeStamp", 
            type = "timestamp", locationName = "stopTime"), DataSource = structure(logical(0), 
            shape = "DataSource", type = "string", locationName = "dataSource"), 
        SchemaStorageConfig = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "SchemaStorageConfig", 
            type = "map", locationName = "schemaStorageConfig")), 
        shape = "ContinuousExportDescription", type = "structure")), 
        shape = "ContinuousExportDescriptions", type = "list", 
        locationName = "descriptions"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "DescribeContinuousExportsResponse", type = "structure")
    return(populate(args, shape))
}

describe_export_configurations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExportIds = structure(list(structure(logical(0), 
        shape = "ConfigurationsExportId", type = "string")), 
        shape = "ExportIds", type = "list", locationName = "exportIds"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer", locationName = "maxResults"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "DescribeExportConfigurationsRequest", type = "structure")
    return(populate(args, shape))
}

describe_export_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExportsInfo = structure(list(structure(list(ExportId = structure(logical(0), 
        shape = "ConfigurationsExportId", type = "string", locationName = "exportId"), 
        ExportStatus = structure(logical(0), shape = "ExportStatus", 
            type = "string", locationName = "exportStatus"), 
        StatusMessage = structure(logical(0), shape = "ExportStatusMessage", 
            type = "string", locationName = "statusMessage"), 
        ConfigurationsDownloadUrl = structure(logical(0), shape = "ConfigurationsDownloadUrl", 
            type = "string", locationName = "configurationsDownloadUrl"), 
        ExportRequestTime = structure(logical(0), shape = "ExportRequestTime", 
            type = "timestamp", locationName = "exportRequestTime"), 
        IsTruncated = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "isTruncated"), 
        RequestedStartTime = structure(logical(0), shape = "TimeStamp", 
            type = "timestamp", locationName = "requestedStartTime"), 
        RequestedEndTime = structure(logical(0), shape = "TimeStamp", 
            type = "timestamp", locationName = "requestedEndTime")), 
        shape = "ExportInfo", type = "structure")), shape = "ExportsInfo", 
        type = "list", locationName = "exportsInfo"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "DescribeExportConfigurationsResponse", type = "structure")
    return(populate(args, shape))
}

describe_export_tasks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExportIds = structure(list(structure(logical(0), 
        shape = "ConfigurationsExportId", type = "string")), 
        shape = "ExportIds", type = "list", locationName = "exportIds"), 
        Filters = structure(list(structure(list(Name = structure(logical(0), 
            shape = "FilterName", type = "string", locationName = "name"), 
            Values = structure(list(structure(logical(0), shape = "FilterValue", 
                type = "string")), shape = "FilterValues", type = "list", 
                locationName = "values"), Condition = structure(logical(0), 
                shape = "Condition", type = "string", locationName = "condition")), 
            shape = "ExportFilter", type = "structure")), shape = "ExportFilters", 
            type = "list", locationName = "filters"), MaxResults = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "maxResults"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "DescribeExportTasksRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_export_tasks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExportsInfo = structure(list(structure(list(ExportId = structure(logical(0), 
        shape = "ConfigurationsExportId", type = "string", locationName = "exportId"), 
        ExportStatus = structure(logical(0), shape = "ExportStatus", 
            type = "string", locationName = "exportStatus"), 
        StatusMessage = structure(logical(0), shape = "ExportStatusMessage", 
            type = "string", locationName = "statusMessage"), 
        ConfigurationsDownloadUrl = structure(logical(0), shape = "ConfigurationsDownloadUrl", 
            type = "string", locationName = "configurationsDownloadUrl"), 
        ExportRequestTime = structure(logical(0), shape = "ExportRequestTime", 
            type = "timestamp", locationName = "exportRequestTime"), 
        IsTruncated = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "isTruncated"), 
        RequestedStartTime = structure(logical(0), shape = "TimeStamp", 
            type = "timestamp", locationName = "requestedStartTime"), 
        RequestedEndTime = structure(logical(0), shape = "TimeStamp", 
            type = "timestamp", locationName = "requestedEndTime")), 
        shape = "ExportInfo", type = "structure")), shape = "ExportsInfo", 
        type = "list", locationName = "exportsInfo"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "DescribeExportTasksResponse", type = "structure")
    return(populate(args, shape))
}

describe_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "FilterName", type = "string", locationName = "name"), 
        Values = structure(list(structure(logical(0), shape = "FilterValue", 
            type = "string")), shape = "FilterValues", type = "list", 
            locationName = "values")), shape = "TagFilter", type = "structure")), 
        shape = "TagFilters", type = "list", locationName = "filters"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer", locationName = "maxResults"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "DescribeTagsRequest", type = "structure")
    return(populate(args, shape))
}

describe_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(list(ConfigurationType = structure(logical(0), 
        shape = "ConfigurationItemType", type = "string", locationName = "configurationType"), 
        ConfigurationId = structure(logical(0), shape = "ConfigurationId", 
            type = "string", locationName = "configurationId"), 
        Key = structure(logical(0), shape = "TagKey", type = "string", 
            locationName = "key"), Value = structure(logical(0), 
            shape = "TagValue", type = "string", locationName = "value"), 
        TimeOfCreation = structure(logical(0), shape = "TimeStamp", 
            type = "timestamp", locationName = "timeOfCreation")), 
        shape = "ConfigurationTag", type = "structure")), shape = "ConfigurationTagSet", 
        type = "list", locationName = "tags"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "DescribeTagsResponse", type = "structure")
    return(populate(args, shape))
}

disassociate_configuration_items_from_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationConfigurationId = structure(logical(0), 
        shape = "ApplicationId", type = "string", locationName = "applicationConfigurationId"), 
        ConfigurationIds = structure(list(structure(logical(0), 
            shape = "ConfigurationId", type = "string")), shape = "ConfigurationIdList", 
            type = "list", locationName = "configurationIds")), 
        shape = "DisassociateConfigurationItemsFromApplicationRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_configuration_items_from_application_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateConfigurationItemsFromApplicationResponse", 
        type = "structure")
    return(populate(args, shape))
}

export_configurations_input <- function () 
{
    return(list())
}

export_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExportId = structure(logical(0), 
        shape = "ConfigurationsExportId", type = "string", locationName = "exportId")), 
        shape = "ExportConfigurationsResponse", type = "structure")
    return(populate(args, shape))
}

get_discovery_summary_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GetDiscoverySummaryRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_discovery_summary_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Servers = structure(logical(0), shape = "Long", 
        type = "long", locationName = "servers"), Applications = structure(logical(0), 
        shape = "Long", type = "long", locationName = "applications"), 
        ServersMappedToApplications = structure(logical(0), shape = "Long", 
            type = "long", locationName = "serversMappedToApplications"), 
        ServersMappedtoTags = structure(logical(0), shape = "Long", 
            type = "long", locationName = "serversMappedtoTags"), 
        AgentSummary = structure(list(ActiveAgents = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "activeAgents"), 
            HealthyAgents = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "healthyAgents"), 
            BlackListedAgents = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "blackListedAgents"), 
            ShutdownAgents = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "shutdownAgents"), 
            UnhealthyAgents = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "unhealthyAgents"), 
            TotalAgents = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "totalAgents"), 
            UnknownAgents = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "unknownAgents")), 
            shape = "CustomerAgentInfo", type = "structure", 
            locationName = "agentSummary"), ConnectorSummary = structure(list(ActiveConnectors = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "activeConnectors"), 
            HealthyConnectors = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "healthyConnectors"), 
            BlackListedConnectors = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "blackListedConnectors"), 
            ShutdownConnectors = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "shutdownConnectors"), 
            UnhealthyConnectors = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "unhealthyConnectors"), 
            TotalConnectors = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "totalConnectors"), 
            UnknownConnectors = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "unknownConnectors")), 
            shape = "CustomerConnectorInfo", type = "structure", 
            locationName = "connectorSummary")), shape = "GetDiscoverySummaryResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_configurations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationType = structure(logical(0), 
        shape = "ConfigurationItemType", type = "string", locationName = "configurationType"), 
        Filters = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string", locationName = "name"), 
            Values = structure(list(structure(logical(0), shape = "FilterValue", 
                type = "string")), shape = "FilterValues", type = "list", 
                locationName = "values"), Condition = structure(logical(0), 
                shape = "Condition", type = "string", locationName = "condition")), 
            shape = "Filter", type = "structure")), shape = "Filters", 
            type = "list", locationName = "filters"), MaxResults = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "maxResults"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken"), OrderBy = structure(list(structure(list(FieldName = structure(logical(0), 
            shape = "String", type = "string", locationName = "fieldName"), 
            SortOrder = structure(logical(0), shape = "orderString", 
                type = "string", locationName = "sortOrder")), 
            shape = "OrderByElement", type = "structure")), shape = "OrderByList", 
            type = "list", locationName = "orderBy")), shape = "ListConfigurationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Configurations = structure(list(structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Configuration", 
        type = "map")), shape = "Configurations", type = "list", 
        locationName = "configurations"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListConfigurationsResponse", type = "structure")
    return(populate(args, shape))
}

list_server_neighbors_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationId = structure(logical(0), 
        shape = "ConfigurationId", type = "string", locationName = "configurationId"), 
        PortInformationNeeded = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "portInformationNeeded"), 
        NeighborConfigurationIds = structure(list(structure(logical(0), 
            shape = "ConfigurationId", type = "string")), shape = "ConfigurationIdList", 
            type = "list", locationName = "neighborConfigurationIds"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer", locationName = "maxResults"), NextToken = structure(logical(0), 
            shape = "String", type = "string", locationName = "nextToken")), 
        shape = "ListServerNeighborsRequest", type = "structure")
    return(populate(args, shape))
}

list_server_neighbors_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Neighbors = structure(list(structure(list(SourceServerId = structure(logical(0), 
        shape = "ConfigurationId", type = "string", locationName = "sourceServerId"), 
        DestinationServerId = structure(logical(0), shape = "ConfigurationId", 
            type = "string", locationName = "destinationServerId"), 
        DestinationPort = structure(logical(0), shape = "BoxedInteger", 
            type = "integer", box = TRUE, locationName = "destinationPort"), 
        TransportProtocol = structure(logical(0), shape = "String", 
            type = "string", locationName = "transportProtocol"), 
        ConnectionsCount = structure(logical(0), shape = "Long", 
            type = "long", locationName = "connectionsCount")), 
        shape = "NeighborConnectionDetail", type = "structure")), 
        shape = "NeighborDetailsList", type = "list", locationName = "neighbors"), 
        NextToken = structure(logical(0), shape = "String", type = "string", 
            locationName = "nextToken"), KnownDependencyCount = structure(logical(0), 
            shape = "Long", type = "long", locationName = "knownDependencyCount")), 
        shape = "ListServerNeighborsResponse", type = "structure")
    return(populate(args, shape))
}

start_continuous_export_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StartContinuousExportRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_continuous_export_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExportId = structure(logical(0), 
        shape = "ConfigurationsExportId", type = "string", locationName = "exportId"), 
        S3Bucket = structure(logical(0), shape = "S3Bucket", 
            type = "string", locationName = "s3Bucket"), StartTime = structure(logical(0), 
            shape = "TimeStamp", type = "timestamp", locationName = "startTime"), 
        DataSource = structure(logical(0), shape = "DataSource", 
            type = "string", locationName = "dataSource"), SchemaStorageConfig = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "SchemaStorageConfig", 
            type = "map", locationName = "schemaStorageConfig")), 
        shape = "StartContinuousExportResponse", type = "structure")
    return(populate(args, shape))
}

start_data_collection_by_agent_ids_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AgentIds = structure(list(structure(logical(0), 
        shape = "AgentId", type = "string")), shape = "AgentIds", 
        type = "list", locationName = "agentIds")), shape = "StartDataCollectionByAgentIdsRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_data_collection_by_agent_ids_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AgentsConfigurationStatus = structure(list(structure(list(AgentId = structure(logical(0), 
        shape = "String", type = "string", locationName = "agentId"), 
        OperationSucceeded = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "operationSucceeded"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description")), 
        shape = "AgentConfigurationStatus", type = "structure")), 
        shape = "AgentConfigurationStatusList", type = "list", 
        locationName = "agentsConfigurationStatus")), shape = "StartDataCollectionByAgentIdsResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_export_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExportDataFormat = structure(list(structure(logical(0), 
        shape = "ExportDataFormat", type = "string")), shape = "ExportDataFormats", 
        type = "list", locationName = "exportDataFormat"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "FilterName", type = "string", locationName = "name"), 
        Values = structure(list(structure(logical(0), shape = "FilterValue", 
            type = "string")), shape = "FilterValues", type = "list", 
            locationName = "values"), Condition = structure(logical(0), 
            shape = "Condition", type = "string", locationName = "condition")), 
        shape = "ExportFilter", type = "structure")), shape = "ExportFilters", 
        type = "list", locationName = "filters"), StartTime = structure(logical(0), 
        shape = "TimeStamp", type = "timestamp", locationName = "startTime"), 
        EndTime = structure(logical(0), shape = "TimeStamp", 
            type = "timestamp", locationName = "endTime")), shape = "StartExportTaskRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_export_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExportId = structure(logical(0), 
        shape = "ConfigurationsExportId", type = "string", locationName = "exportId")), 
        shape = "StartExportTaskResponse", type = "structure")
    return(populate(args, shape))
}

stop_continuous_export_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExportId = structure(logical(0), 
        shape = "ConfigurationsExportId", type = "string", locationName = "exportId")), 
        shape = "StopContinuousExportRequest", type = "structure")
    return(populate(args, shape))
}

stop_continuous_export_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StartTime = structure(logical(0), 
        shape = "TimeStamp", type = "timestamp", locationName = "startTime"), 
        StopTime = structure(logical(0), shape = "TimeStamp", 
            type = "timestamp", locationName = "stopTime")), 
        shape = "StopContinuousExportResponse", type = "structure")
    return(populate(args, shape))
}

stop_data_collection_by_agent_ids_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AgentIds = structure(list(structure(logical(0), 
        shape = "AgentId", type = "string")), shape = "AgentIds", 
        type = "list", locationName = "agentIds")), shape = "StopDataCollectionByAgentIdsRequest", 
        type = "structure")
    return(populate(args, shape))
}

stop_data_collection_by_agent_ids_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AgentsConfigurationStatus = structure(list(structure(list(AgentId = structure(logical(0), 
        shape = "String", type = "string", locationName = "agentId"), 
        OperationSucceeded = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "operationSucceeded"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description")), 
        shape = "AgentConfigurationStatus", type = "structure")), 
        shape = "AgentConfigurationStatusList", type = "list", 
        locationName = "agentsConfigurationStatus")), shape = "StopDataCollectionByAgentIdsResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationId = structure(logical(0), 
        shape = "ApplicationId", type = "string", locationName = "configurationId"), 
        Name = structure(logical(0), shape = "String", type = "string", 
            locationName = "name"), Description = structure(logical(0), 
            shape = "String", type = "string", locationName = "description")), 
        shape = "UpdateApplicationRequest", type = "structure")
    return(populate(args, shape))
}

update_application_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateApplicationResponse", 
        type = "structure")
    return(populate(args, shape))
}
