create_broker_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoMinorVersionUpgrade = structure(logical(0), 
        shape = "__boolean", locationName = "autoMinorVersionUpgrade", 
        type = "boolean"), BrokerName = structure(logical(0), 
        shape = "__string", locationName = "brokerName", type = "string"), 
        Configuration = structure(list(Id = structure(logical(0), 
            shape = "__string", locationName = "id", type = "string"), 
            Revision = structure(logical(0), shape = "__integer", 
                locationName = "revision", type = "integer")), 
            shape = "ConfigurationId", locationName = "configuration", 
            type = "structure"), CreatorRequestId = structure(logical(0), 
            shape = "__string", locationName = "creatorRequestId", 
            idempotencyToken = TRUE, type = "string"), DeploymentMode = structure(logical(0), 
            shape = "DeploymentMode", locationName = "deploymentMode", 
            type = "string"), EngineType = structure(logical(0), 
            shape = "EngineType", locationName = "engineType", 
            type = "string"), EngineVersion = structure(logical(0), 
            shape = "__string", locationName = "engineVersion", 
            type = "string"), HostInstanceType = structure(logical(0), 
            shape = "__string", locationName = "hostInstanceType", 
            type = "string"), Logs = structure(list(Audit = structure(logical(0), 
            shape = "__boolean", locationName = "audit", type = "boolean"), 
            General = structure(logical(0), shape = "__boolean", 
                locationName = "general", type = "boolean")), 
            shape = "Logs", locationName = "logs", type = "structure"), 
        MaintenanceWindowStartTime = structure(list(DayOfWeek = structure(logical(0), 
            shape = "DayOfWeek", locationName = "dayOfWeek", 
            type = "string"), TimeOfDay = structure(logical(0), 
            shape = "__string", locationName = "timeOfDay", type = "string"), 
            TimeZone = structure(logical(0), shape = "__string", 
                locationName = "timeZone", type = "string")), 
            shape = "WeeklyStartTime", locationName = "maintenanceWindowStartTime", 
            type = "structure"), PubliclyAccessible = structure(logical(0), 
            shape = "__boolean", locationName = "publiclyAccessible", 
            type = "boolean"), SecurityGroups = structure(list(structure(logical(0), 
            shape = "__string", type = "string")), shape = "__listOf__string", 
            locationName = "securityGroups", type = "list"), 
        SubnetIds = structure(list(structure(logical(0), shape = "__string", 
            type = "string")), shape = "__listOf__string", locationName = "subnetIds", 
            type = "list"), Users = structure(list(structure(list(ConsoleAccess = structure(logical(0), 
            shape = "__boolean", locationName = "consoleAccess", 
            type = "boolean"), Groups = structure(list(structure(logical(0), 
            shape = "__string", type = "string")), shape = "__listOf__string", 
            locationName = "groups", type = "list"), Password = structure(logical(0), 
            shape = "__string", locationName = "password", type = "string"), 
            Username = structure(logical(0), shape = "__string", 
                locationName = "username", type = "string")), 
            shape = "User", type = "structure")), shape = "__listOfUser", 
            locationName = "users", type = "list")), shape = "CreateBrokerRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_broker_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BrokerArn = structure(logical(0), 
        shape = "__string", locationName = "brokerArn", type = "string"), 
        BrokerId = structure(logical(0), shape = "__string", 
            locationName = "brokerId", type = "string")), shape = "CreateBrokerResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EngineType = structure(logical(0), 
        shape = "EngineType", locationName = "engineType", type = "string"), 
        EngineVersion = structure(logical(0), shape = "__string", 
            locationName = "engineVersion", type = "string"), 
        Name = structure(logical(0), shape = "__string", locationName = "name", 
            type = "string")), shape = "CreateConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        locationName = "arn", type = "string"), Created = structure(logical(0), 
        shape = "__timestampIso8601", locationName = "created", 
        type = "timestamp", timestampFormat = "iso8601"), Id = structure(logical(0), 
        shape = "__string", locationName = "id", type = "string"), 
        LatestRevision = structure(list(Created = structure(logical(0), 
            shape = "__timestampIso8601", locationName = "created", 
            type = "timestamp", timestampFormat = "iso8601"), 
            Description = structure(logical(0), shape = "__string", 
                locationName = "description", type = "string"), 
            Revision = structure(logical(0), shape = "__integer", 
                locationName = "revision", type = "integer")), 
            shape = "ConfigurationRevision", locationName = "latestRevision", 
            type = "structure"), Name = structure(logical(0), 
            shape = "__string", locationName = "name", type = "string")), 
        shape = "CreateConfigurationResponse", type = "structure")
    return(populate(args, shape))
}

create_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BrokerId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "broker-id", 
        type = "string"), ConsoleAccess = structure(logical(0), 
        shape = "__boolean", locationName = "consoleAccess", 
        type = "boolean"), Groups = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "__listOf__string", 
        locationName = "groups", type = "list"), Password = structure(logical(0), 
        shape = "__string", locationName = "password", type = "string"), 
        Username = structure(logical(0), shape = "__string", 
            location = "uri", locationName = "username", type = "string")), 
        shape = "CreateUserRequest", type = "structure")
    return(populate(args, shape))
}

create_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateUserResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_broker_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BrokerId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "broker-id", 
        type = "string")), shape = "DeleteBrokerRequest", type = "structure")
    return(populate(args, shape))
}

delete_broker_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BrokerId = structure(logical(0), 
        shape = "__string", locationName = "brokerId", type = "string")), 
        shape = "DeleteBrokerResponse", type = "structure")
    return(populate(args, shape))
}

delete_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BrokerId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "broker-id", 
        type = "string"), Username = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "username", type = "string")), 
        shape = "DeleteUserRequest", type = "structure")
    return(populate(args, shape))
}

delete_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteUserResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_broker_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BrokerId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "broker-id", 
        type = "string")), shape = "DescribeBrokerRequest", type = "structure")
    return(populate(args, shape))
}

describe_broker_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoMinorVersionUpgrade = structure(logical(0), 
        shape = "__boolean", locationName = "autoMinorVersionUpgrade", 
        type = "boolean"), BrokerArn = structure(logical(0), 
        shape = "__string", locationName = "brokerArn", type = "string"), 
        BrokerId = structure(logical(0), shape = "__string", 
            locationName = "brokerId", type = "string"), BrokerInstances = structure(list(structure(list(ConsoleURL = structure(logical(0), 
            shape = "__string", locationName = "consoleURL", 
            type = "string"), Endpoints = structure(list(structure(logical(0), 
            shape = "__string", type = "string")), shape = "__listOf__string", 
            locationName = "endpoints", type = "list"), IpAddress = structure(logical(0), 
            shape = "__string", locationName = "ipAddress", type = "string")), 
            shape = "BrokerInstance", type = "structure")), shape = "__listOfBrokerInstance", 
            locationName = "brokerInstances", type = "list"), 
        BrokerName = structure(logical(0), shape = "__string", 
            locationName = "brokerName", type = "string"), BrokerState = structure(logical(0), 
            shape = "BrokerState", locationName = "brokerState", 
            type = "string"), Configurations = structure(list(Current = structure(list(Id = structure(logical(0), 
            shape = "__string", locationName = "id", type = "string"), 
            Revision = structure(logical(0), shape = "__integer", 
                locationName = "revision", type = "integer")), 
            shape = "ConfigurationId", locationName = "current", 
            type = "structure"), History = structure(list(structure(list(Id = structure(logical(0), 
            shape = "__string", locationName = "id", type = "string"), 
            Revision = structure(logical(0), shape = "__integer", 
                locationName = "revision", type = "integer")), 
            shape = "ConfigurationId", type = "structure")), 
            shape = "__listOfConfigurationId", locationName = "history", 
            type = "list"), Pending = structure(list(Id = structure(logical(0), 
            shape = "__string", locationName = "id", type = "string"), 
            Revision = structure(logical(0), shape = "__integer", 
                locationName = "revision", type = "integer")), 
            shape = "ConfigurationId", locationName = "pending", 
            type = "structure")), shape = "Configurations", locationName = "configurations", 
            type = "structure"), Created = structure(logical(0), 
            shape = "__timestampIso8601", locationName = "created", 
            type = "timestamp", timestampFormat = "iso8601"), 
        DeploymentMode = structure(logical(0), shape = "DeploymentMode", 
            locationName = "deploymentMode", type = "string"), 
        EngineType = structure(logical(0), shape = "EngineType", 
            locationName = "engineType", type = "string"), EngineVersion = structure(logical(0), 
            shape = "__string", locationName = "engineVersion", 
            type = "string"), HostInstanceType = structure(logical(0), 
            shape = "__string", locationName = "hostInstanceType", 
            type = "string"), Logs = structure(list(Audit = structure(logical(0), 
            shape = "__boolean", locationName = "audit", type = "boolean"), 
            AuditLogGroup = structure(logical(0), shape = "__string", 
                locationName = "auditLogGroup", type = "string"), 
            General = structure(logical(0), shape = "__boolean", 
                locationName = "general", type = "boolean"), 
            GeneralLogGroup = structure(logical(0), shape = "__string", 
                locationName = "generalLogGroup", type = "string"), 
            Pending = structure(list(Audit = structure(logical(0), 
                shape = "__boolean", locationName = "audit", 
                type = "boolean"), General = structure(logical(0), 
                shape = "__boolean", locationName = "general", 
                type = "boolean")), shape = "PendingLogs", locationName = "pending", 
                type = "structure")), shape = "LogsSummary", 
            locationName = "logs", type = "structure"), MaintenanceWindowStartTime = structure(list(DayOfWeek = structure(logical(0), 
            shape = "DayOfWeek", locationName = "dayOfWeek", 
            type = "string"), TimeOfDay = structure(logical(0), 
            shape = "__string", locationName = "timeOfDay", type = "string"), 
            TimeZone = structure(logical(0), shape = "__string", 
                locationName = "timeZone", type = "string")), 
            shape = "WeeklyStartTime", locationName = "maintenanceWindowStartTime", 
            type = "structure"), PendingEngineVersion = structure(logical(0), 
            shape = "__string", locationName = "pendingEngineVersion", 
            type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "__boolean", locationName = "publiclyAccessible", 
            type = "boolean"), SecurityGroups = structure(list(structure(logical(0), 
            shape = "__string", type = "string")), shape = "__listOf__string", 
            locationName = "securityGroups", type = "list"), 
        SubnetIds = structure(list(structure(logical(0), shape = "__string", 
            type = "string")), shape = "__listOf__string", locationName = "subnetIds", 
            type = "list"), Users = structure(list(structure(list(PendingChange = structure(logical(0), 
            shape = "ChangeType", locationName = "pendingChange", 
            type = "string"), Username = structure(logical(0), 
            shape = "__string", locationName = "username", type = "string")), 
            shape = "UserSummary", type = "structure")), shape = "__listOfUserSummary", 
            locationName = "users", type = "list")), shape = "DescribeBrokerResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "configuration-id", 
        type = "string")), shape = "DescribeConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        locationName = "arn", type = "string"), Created = structure(logical(0), 
        shape = "__timestampIso8601", locationName = "created", 
        type = "timestamp", timestampFormat = "iso8601"), Description = structure(logical(0), 
        shape = "__string", locationName = "description", type = "string"), 
        EngineType = structure(logical(0), shape = "EngineType", 
            locationName = "engineType", type = "string"), EngineVersion = structure(logical(0), 
            shape = "__string", locationName = "engineVersion", 
            type = "string"), Id = structure(logical(0), shape = "__string", 
            locationName = "id", type = "string"), LatestRevision = structure(list(Created = structure(logical(0), 
            shape = "__timestampIso8601", locationName = "created", 
            type = "timestamp", timestampFormat = "iso8601"), 
            Description = structure(logical(0), shape = "__string", 
                locationName = "description", type = "string"), 
            Revision = structure(logical(0), shape = "__integer", 
                locationName = "revision", type = "integer")), 
            shape = "ConfigurationRevision", locationName = "latestRevision", 
            type = "structure"), Name = structure(logical(0), 
            shape = "__string", locationName = "name", type = "string")), 
        shape = "DescribeConfigurationResponse", type = "structure")
    return(populate(args, shape))
}

describe_configuration_revision_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "configuration-id", 
        type = "string"), ConfigurationRevision = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "configuration-revision", 
        type = "string")), shape = "DescribeConfigurationRevisionRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_configuration_revision_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationId = structure(logical(0), 
        shape = "__string", locationName = "configurationId", 
        type = "string"), Created = structure(logical(0), shape = "__timestampIso8601", 
        locationName = "created", type = "timestamp", timestampFormat = "iso8601"), 
        Data = structure(logical(0), shape = "__string", locationName = "data", 
            type = "string"), Description = structure(logical(0), 
            shape = "__string", locationName = "description", 
            type = "string")), shape = "DescribeConfigurationRevisionResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BrokerId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "broker-id", 
        type = "string"), Username = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "username", type = "string")), 
        shape = "DescribeUserRequest", type = "structure")
    return(populate(args, shape))
}

describe_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BrokerId = structure(logical(0), 
        shape = "__string", locationName = "brokerId", type = "string"), 
        ConsoleAccess = structure(logical(0), shape = "__boolean", 
            locationName = "consoleAccess", type = "boolean"), 
        Groups = structure(list(structure(logical(0), shape = "__string", 
            type = "string")), shape = "__listOf__string", locationName = "groups", 
            type = "list"), Pending = structure(list(ConsoleAccess = structure(logical(0), 
            shape = "__boolean", locationName = "consoleAccess", 
            type = "boolean"), Groups = structure(list(structure(logical(0), 
            shape = "__string", type = "string")), shape = "__listOf__string", 
            locationName = "groups", type = "list"), PendingChange = structure(logical(0), 
            shape = "ChangeType", locationName = "pendingChange", 
            type = "string")), shape = "UserPendingChanges", 
            locationName = "pending", type = "structure"), Username = structure(logical(0), 
            shape = "__string", locationName = "username", type = "string")), 
        shape = "DescribeUserResponse", type = "structure")
    return(populate(args, shape))
}

list_brokers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", min = 1L, max = 100L), NextToken = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "nextToken", 
        type = "string")), shape = "ListBrokersRequest", type = "structure")
    return(populate(args, shape))
}

list_brokers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BrokerSummaries = structure(list(structure(list(BrokerArn = structure(logical(0), 
        shape = "__string", locationName = "brokerArn", type = "string"), 
        BrokerId = structure(logical(0), shape = "__string", 
            locationName = "brokerId", type = "string"), BrokerName = structure(logical(0), 
            shape = "__string", locationName = "brokerName", 
            type = "string"), BrokerState = structure(logical(0), 
            shape = "BrokerState", locationName = "brokerState", 
            type = "string"), Created = structure(logical(0), 
            shape = "__timestampIso8601", locationName = "created", 
            type = "timestamp", timestampFormat = "iso8601"), 
        DeploymentMode = structure(logical(0), shape = "DeploymentMode", 
            locationName = "deploymentMode", type = "string"), 
        HostInstanceType = structure(logical(0), shape = "__string", 
            locationName = "hostInstanceType", type = "string")), 
        shape = "BrokerSummary", type = "structure")), shape = "__listOfBrokerSummary", 
        locationName = "brokerSummaries", type = "list"), NextToken = structure(logical(0), 
        shape = "__string", locationName = "nextToken", type = "string")), 
        shape = "ListBrokersResponse", type = "structure")
    return(populate(args, shape))
}

list_configuration_revisions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "configuration-id", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", min = 1L, max = 100L), NextToken = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "nextToken", 
        type = "string")), shape = "ListConfigurationRevisionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_configuration_revisions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationId = structure(logical(0), 
        shape = "__string", locationName = "configurationId", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "__integer", locationName = "maxResults", type = "integer"), 
        NextToken = structure(logical(0), shape = "__string", 
            locationName = "nextToken", type = "string"), Revisions = structure(list(structure(list(Created = structure(logical(0), 
            shape = "__timestampIso8601", locationName = "created", 
            type = "timestamp", timestampFormat = "iso8601"), 
            Description = structure(logical(0), shape = "__string", 
                locationName = "description", type = "string"), 
            Revision = structure(logical(0), shape = "__integer", 
                locationName = "revision", type = "integer")), 
            shape = "ConfigurationRevision", type = "structure")), 
            shape = "__listOfConfigurationRevision", locationName = "revisions", 
            type = "list")), shape = "ListConfigurationRevisionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_configurations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", min = 1L, max = 100L), NextToken = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "nextToken", 
        type = "string")), shape = "ListConfigurationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Configurations = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "__string", locationName = "arn", type = "string"), 
        Created = structure(logical(0), shape = "__timestampIso8601", 
            locationName = "created", type = "timestamp", timestampFormat = "iso8601"), 
        Description = structure(logical(0), shape = "__string", 
            locationName = "description", type = "string"), EngineType = structure(logical(0), 
            shape = "EngineType", locationName = "engineType", 
            type = "string"), EngineVersion = structure(logical(0), 
            shape = "__string", locationName = "engineVersion", 
            type = "string"), Id = structure(logical(0), shape = "__string", 
            locationName = "id", type = "string"), LatestRevision = structure(list(Created = structure(logical(0), 
            shape = "__timestampIso8601", locationName = "created", 
            type = "timestamp", timestampFormat = "iso8601"), 
            Description = structure(logical(0), shape = "__string", 
                locationName = "description", type = "string"), 
            Revision = structure(logical(0), shape = "__integer", 
                locationName = "revision", type = "integer")), 
            shape = "ConfigurationRevision", locationName = "latestRevision", 
            type = "structure"), Name = structure(logical(0), 
            shape = "__string", locationName = "name", type = "string")), 
        shape = "Configuration", type = "structure")), shape = "__listOfConfiguration", 
        locationName = "configurations", type = "list"), MaxResults = structure(logical(0), 
        shape = "__integer", locationName = "maxResults", type = "integer"), 
        NextToken = structure(logical(0), shape = "__string", 
            locationName = "nextToken", type = "string")), shape = "ListConfigurationsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_users_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BrokerId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "broker-id", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", min = 1L, max = 100L), NextToken = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "nextToken", 
        type = "string")), shape = "ListUsersRequest", type = "structure")
    return(populate(args, shape))
}

list_users_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BrokerId = structure(logical(0), 
        shape = "__string", locationName = "brokerId", type = "string"), 
        MaxResults = structure(logical(0), shape = "__integerMin5Max100", 
            locationName = "maxResults", type = "integer", min = 5L, 
            max = 100L), NextToken = structure(logical(0), shape = "__string", 
            locationName = "nextToken", type = "string"), Users = structure(list(structure(list(PendingChange = structure(logical(0), 
            shape = "ChangeType", locationName = "pendingChange", 
            type = "string"), Username = structure(logical(0), 
            shape = "__string", locationName = "username", type = "string")), 
            shape = "UserSummary", type = "structure")), shape = "__listOfUserSummary", 
            locationName = "users", type = "list")), shape = "ListUsersResponse", 
        type = "structure")
    return(populate(args, shape))
}

reboot_broker_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BrokerId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "broker-id", 
        type = "string")), shape = "RebootBrokerRequest", type = "structure")
    return(populate(args, shape))
}

reboot_broker_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RebootBrokerResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_broker_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoMinorVersionUpgrade = structure(logical(0), 
        shape = "__boolean", locationName = "autoMinorVersionUpgrade", 
        type = "boolean"), BrokerId = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "broker-id", type = "string"), 
        Configuration = structure(list(Id = structure(logical(0), 
            shape = "__string", locationName = "id", type = "string"), 
            Revision = structure(logical(0), shape = "__integer", 
                locationName = "revision", type = "integer")), 
            shape = "ConfigurationId", locationName = "configuration", 
            type = "structure"), EngineVersion = structure(logical(0), 
            shape = "__string", locationName = "engineVersion", 
            type = "string"), Logs = structure(list(Audit = structure(logical(0), 
            shape = "__boolean", locationName = "audit", type = "boolean"), 
            General = structure(logical(0), shape = "__boolean", 
                locationName = "general", type = "boolean")), 
            shape = "Logs", locationName = "logs", type = "structure")), 
        shape = "UpdateBrokerRequest", type = "structure")
    return(populate(args, shape))
}

update_broker_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoMinorVersionUpgrade = structure(logical(0), 
        shape = "__boolean", locationName = "autoMinorVersionUpgrade", 
        type = "boolean"), BrokerId = structure(logical(0), shape = "__string", 
        locationName = "brokerId", type = "string"), Configuration = structure(list(Id = structure(logical(0), 
        shape = "__string", locationName = "id", type = "string"), 
        Revision = structure(logical(0), shape = "__integer", 
            locationName = "revision", type = "integer")), shape = "ConfigurationId", 
        locationName = "configuration", type = "structure"), 
        EngineVersion = structure(logical(0), shape = "__string", 
            locationName = "engineVersion", type = "string"), 
        Logs = structure(list(Audit = structure(logical(0), shape = "__boolean", 
            locationName = "audit", type = "boolean"), General = structure(logical(0), 
            shape = "__boolean", locationName = "general", type = "boolean")), 
            shape = "Logs", locationName = "logs", type = "structure")), 
        shape = "UpdateBrokerResponse", type = "structure")
    return(populate(args, shape))
}

update_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "configuration-id", 
        type = "string"), Data = structure(logical(0), shape = "__string", 
        locationName = "data", type = "string"), Description = structure(logical(0), 
        shape = "__string", locationName = "description", type = "string")), 
        shape = "UpdateConfigurationRequest", type = "structure")
    return(populate(args, shape))
}

update_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        locationName = "arn", type = "string"), Created = structure(logical(0), 
        shape = "__timestampIso8601", locationName = "created", 
        type = "timestamp", timestampFormat = "iso8601"), Id = structure(logical(0), 
        shape = "__string", locationName = "id", type = "string"), 
        LatestRevision = structure(list(Created = structure(logical(0), 
            shape = "__timestampIso8601", locationName = "created", 
            type = "timestamp", timestampFormat = "iso8601"), 
            Description = structure(logical(0), shape = "__string", 
                locationName = "description", type = "string"), 
            Revision = structure(logical(0), shape = "__integer", 
                locationName = "revision", type = "integer")), 
            shape = "ConfigurationRevision", locationName = "latestRevision", 
            type = "structure"), Name = structure(logical(0), 
            shape = "__string", locationName = "name", type = "string"), 
        Warnings = structure(list(structure(list(AttributeName = structure(logical(0), 
            shape = "__string", locationName = "attributeName", 
            type = "string"), ElementName = structure(logical(0), 
            shape = "__string", locationName = "elementName", 
            type = "string"), Reason = structure(logical(0), 
            shape = "SanitizationWarningReason", locationName = "reason", 
            type = "string")), shape = "SanitizationWarning", 
            type = "structure")), shape = "__listOfSanitizationWarning", 
            locationName = "warnings", type = "list")), shape = "UpdateConfigurationResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BrokerId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "broker-id", 
        type = "string"), ConsoleAccess = structure(logical(0), 
        shape = "__boolean", locationName = "consoleAccess", 
        type = "boolean"), Groups = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "__listOf__string", 
        locationName = "groups", type = "list"), Password = structure(logical(0), 
        shape = "__string", locationName = "password", type = "string"), 
        Username = structure(logical(0), shape = "__string", 
            location = "uri", locationName = "username", type = "string")), 
        shape = "UpdateUserRequest", type = "structure")
    return(populate(args, shape))
}

update_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateUserResponse", 
        type = "structure")
    return(populate(args, shape))
}
