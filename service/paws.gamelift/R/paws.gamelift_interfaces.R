accept_match_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TicketId = structure(logical(0), 
        shape = "MatchmakingIdStringModel", type = "string", 
        max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        PlayerIds = structure(list(structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L)), shape = "StringList", 
            type = "list"), AcceptanceType = structure(logical(0), 
            shape = "AcceptanceType", type = "string")), shape = "AcceptMatchInput", 
        type = "structure")
    return(populate(args, shape))
}

accept_match_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AcceptMatchOutput", type = "structure")
    return(populate(args, shape))
}

create_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NonBlankAndLengthConstraintString", 
        type = "string", max = 1024L, min = 1L, pattern = ".*\\S.*"), 
        Description = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), RoutingStrategy = structure(list(Type = structure(logical(0), 
            shape = "RoutingStrategyType", type = "string"), 
            FleetId = structure(logical(0), shape = "FleetId", 
                type = "string", pattern = "^fleet-\\S+"), Message = structure(logical(0), 
                shape = "FreeText", type = "string")), shape = "RoutingStrategy", 
            type = "structure")), shape = "CreateAliasInput", 
        type = "structure")
    return(populate(args, shape))
}

create_alias_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Alias = structure(list(AliasId = structure(logical(0), 
        shape = "AliasId", type = "string", pattern = "^alias-\\S+"), 
        Name = structure(logical(0), shape = "NonBlankAndLengthConstraintString", 
            type = "string", max = 1024L, min = 1L, pattern = ".*\\S.*"), 
        AliasArn = structure(logical(0), shape = "ArnStringModel", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9:/-]+"), 
        Description = structure(logical(0), shape = "FreeText", 
            type = "string"), RoutingStrategy = structure(list(Type = structure(logical(0), 
            shape = "RoutingStrategyType", type = "string"), 
            FleetId = structure(logical(0), shape = "FleetId", 
                type = "string", pattern = "^fleet-\\S+"), Message = structure(logical(0), 
                shape = "FreeText", type = "string")), shape = "RoutingStrategy", 
            type = "structure"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastUpdatedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Alias", 
        type = "structure")), shape = "CreateAliasOutput", type = "structure")
    return(populate(args, shape))
}

create_build_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L), Version = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), StorageLocation = structure(list(Bucket = structure(logical(0), 
        shape = "NonEmptyString", type = "string", min = 1L), 
        Key = structure(logical(0), shape = "NonEmptyString", 
            type = "string", min = 1L), RoleArn = structure(logical(0), 
            shape = "NonEmptyString", type = "string", min = 1L)), 
        shape = "S3Location", type = "structure"), OperatingSystem = structure(logical(0), 
        shape = "OperatingSystem", type = "string")), shape = "CreateBuildInput", 
        type = "structure")
    return(populate(args, shape))
}

create_build_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Build = structure(list(BuildId = structure(logical(0), 
        shape = "BuildId", type = "string", pattern = "^build-\\S+"), 
        Name = structure(logical(0), shape = "FreeText", type = "string"), 
        Version = structure(logical(0), shape = "FreeText", type = "string"), 
        Status = structure(logical(0), shape = "BuildStatus", 
            type = "string"), SizeOnDisk = structure(logical(0), 
            shape = "PositiveLong", type = "long", min = 1L), 
        OperatingSystem = structure(logical(0), shape = "OperatingSystem", 
            type = "string"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Build", 
        type = "structure"), UploadCredentials = structure(list(AccessKeyId = structure(logical(0), 
        shape = "NonEmptyString", type = "string", min = 1L), 
        SecretAccessKey = structure(logical(0), shape = "NonEmptyString", 
            type = "string", min = 1L), SessionToken = structure(logical(0), 
            shape = "NonEmptyString", type = "string", min = 1L)), 
        shape = "AwsCredentials", type = "structure", sensitive = TRUE), 
        StorageLocation = structure(list(Bucket = structure(logical(0), 
            shape = "NonEmptyString", type = "string", min = 1L), 
            Key = structure(logical(0), shape = "NonEmptyString", 
                type = "string", min = 1L), RoleArn = structure(logical(0), 
                shape = "NonEmptyString", type = "string", min = 1L)), 
            shape = "S3Location", type = "structure")), shape = "CreateBuildOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_fleet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L), Description = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), BuildId = structure(logical(0), shape = "BuildId", 
        type = "string", pattern = "^build-\\S+"), ServerLaunchPath = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), ServerLaunchParameters = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), LogPaths = structure(list(structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L)), shape = "StringList", type = "list"), EC2InstanceType = structure(logical(0), 
        shape = "EC2InstanceType", type = "string"), EC2InboundPermissions = structure(list(structure(list(FromPort = structure(logical(0), 
        shape = "PortNumber", type = "integer", max = 60000L, 
        min = 1L), ToPort = structure(logical(0), shape = "PortNumber", 
        type = "integer", max = 60000L, min = 1L), IpRange = structure(logical(0), 
        shape = "NonBlankString", type = "string", pattern = "[^\\s]+"), 
        Protocol = structure(logical(0), shape = "IpProtocol", 
            type = "string")), shape = "IpPermission", type = "structure")), 
        shape = "IpPermissionsList", type = "list", max = 50L), 
        NewGameSessionProtectionPolicy = structure(logical(0), 
            shape = "ProtectionPolicy", type = "string"), RuntimeConfiguration = structure(list(ServerProcesses = structure(list(structure(list(LaunchPath = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), Parameters = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), ConcurrentExecutions = structure(logical(0), 
            shape = "PositiveInteger", type = "integer", min = 1L)), 
            shape = "ServerProcess", type = "structure")), shape = "ServerProcessList", 
            type = "list", max = 50L, min = 1L), MaxConcurrentGameSessionActivations = structure(logical(0), 
            shape = "MaxConcurrentGameSessionActivations", type = "integer", 
            max = 2147483647L, min = 1L), GameSessionActivationTimeoutSeconds = structure(logical(0), 
            shape = "GameSessionActivationTimeoutSeconds", type = "integer", 
            max = 600L, min = 1L)), shape = "RuntimeConfiguration", 
            type = "structure"), ResourceCreationLimitPolicy = structure(list(NewGameSessionsPerCreator = structure(logical(0), 
            shape = "WholeNumber", type = "integer", min = 0L), 
            PolicyPeriodInMinutes = structure(logical(0), shape = "WholeNumber", 
                type = "integer", min = 0L)), shape = "ResourceCreationLimitPolicy", 
            type = "structure"), MetricGroups = structure(list(structure(logical(0), 
            shape = "MetricGroup", type = "string", max = 255L, 
            min = 1L)), shape = "MetricGroupList", type = "list", 
            max = 1L), PeerVpcAwsAccountId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), PeerVpcId = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), FleetType = structure(logical(0), 
            shape = "FleetType", type = "string")), shape = "CreateFleetInput", 
        type = "structure")
    return(populate(args, shape))
}

create_fleet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetAttributes = structure(list(FleetId = structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+"), 
        FleetArn = structure(logical(0), shape = "ArnStringModel", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9:/-]+"), 
        FleetType = structure(logical(0), shape = "FleetType", 
            type = "string"), InstanceType = structure(logical(0), 
            shape = "EC2InstanceType", type = "string"), Description = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), Name = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), TerminationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Status = structure(logical(0), 
            shape = "FleetStatus", type = "string"), BuildId = structure(logical(0), 
            shape = "BuildId", type = "string", pattern = "^build-\\S+"), 
        ServerLaunchPath = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), ServerLaunchParameters = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), LogPaths = structure(list(structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L)), shape = "StringList", type = "list"), 
        NewGameSessionProtectionPolicy = structure(logical(0), 
            shape = "ProtectionPolicy", type = "string"), OperatingSystem = structure(logical(0), 
            shape = "OperatingSystem", type = "string"), ResourceCreationLimitPolicy = structure(list(NewGameSessionsPerCreator = structure(logical(0), 
            shape = "WholeNumber", type = "integer", min = 0L), 
            PolicyPeriodInMinutes = structure(logical(0), shape = "WholeNumber", 
                type = "integer", min = 0L)), shape = "ResourceCreationLimitPolicy", 
            type = "structure"), MetricGroups = structure(list(structure(logical(0), 
            shape = "MetricGroup", type = "string", max = 255L, 
            min = 1L)), shape = "MetricGroupList", type = "list", 
            max = 1L), StoppedActions = structure(list(structure(logical(0), 
            shape = "FleetAction", type = "string")), shape = "FleetActionList", 
            type = "list", max = 1L, min = 1L)), shape = "FleetAttributes", 
        type = "structure")), shape = "CreateFleetOutput", type = "structure")
    return(populate(args, shape))
}

create_game_session_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+"), AliasId = structure(logical(0), 
        shape = "AliasId", type = "string", pattern = "^alias-\\S+"), 
        MaximumPlayerSessionCount = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L), Name = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), GameProperties = structure(list(structure(list(Key = structure(logical(0), 
            shape = "GamePropertyKey", type = "string", max = 32L), 
            Value = structure(logical(0), shape = "GamePropertyValue", 
                type = "string", max = 96L)), shape = "GameProperty", 
            type = "structure")), shape = "GamePropertyList", 
            type = "list", max = 16L), CreatorId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), GameSessionId = structure(logical(0), 
            shape = "IdStringModel", type = "string", max = 48L, 
            min = 1L, pattern = "[a-zA-Z0-9-]+"), IdempotencyToken = structure(logical(0), 
            shape = "IdStringModel", type = "string", max = 48L, 
            min = 1L, pattern = "[a-zA-Z0-9-]+"), GameSessionData = structure(logical(0), 
            shape = "GameSessionData", type = "string", max = 4096L, 
            min = 1L)), shape = "CreateGameSessionInput", type = "structure")
    return(populate(args, shape))
}

create_game_session_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GameSession = structure(list(GameSessionId = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), Name = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L), FleetId = structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), TerminationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), CurrentPlayerSessionCount = structure(logical(0), 
            shape = "WholeNumber", type = "integer", min = 0L), 
        MaximumPlayerSessionCount = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L), Status = structure(logical(0), 
            shape = "GameSessionStatus", type = "string"), StatusReason = structure(logical(0), 
            shape = "GameSessionStatusReason", type = "string"), 
        GameProperties = structure(list(structure(list(Key = structure(logical(0), 
            shape = "GamePropertyKey", type = "string", max = 32L), 
            Value = structure(logical(0), shape = "GamePropertyValue", 
                type = "string", max = 96L)), shape = "GameProperty", 
            type = "structure")), shape = "GamePropertyList", 
            type = "list", max = 16L), IpAddress = structure(logical(0), 
            shape = "IpAddress", type = "string"), Port = structure(logical(0), 
            shape = "PortNumber", type = "integer", max = 60000L, 
            min = 1L), PlayerSessionCreationPolicy = structure(logical(0), 
            shape = "PlayerSessionCreationPolicy", type = "string"), 
        CreatorId = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), GameSessionData = structure(logical(0), 
            shape = "GameSessionData", type = "string", max = 4096L, 
            min = 1L), MatchmakerData = structure(logical(0), 
            shape = "MatchmakerData", type = "string", max = 390000L, 
            min = 1L)), shape = "GameSession", type = "structure")), 
        shape = "CreateGameSessionOutput", type = "structure")
    return(populate(args, shape))
}

create_game_session_queue_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "GameSessionQueueName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9-]+"), 
        TimeoutInSeconds = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L), PlayerLatencyPolicies = structure(list(structure(list(MaximumIndividualPlayerLatencyMilliseconds = structure(logical(0), 
            shape = "WholeNumber", type = "integer", min = 0L), 
            PolicyDurationSeconds = structure(logical(0), shape = "WholeNumber", 
                type = "integer", min = 0L)), shape = "PlayerLatencyPolicy", 
            type = "structure")), shape = "PlayerLatencyPolicyList", 
            type = "list"), Destinations = structure(list(structure(list(DestinationArn = structure(logical(0), 
            shape = "ArnStringModel", type = "string", max = 256L, 
            min = 1L, pattern = "[a-zA-Z0-9:/-]+")), shape = "GameSessionQueueDestination", 
            type = "structure")), shape = "GameSessionQueueDestinationList", 
            type = "list")), shape = "CreateGameSessionQueueInput", 
        type = "structure")
    return(populate(args, shape))
}

create_game_session_queue_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GameSessionQueue = structure(list(Name = structure(logical(0), 
        shape = "GameSessionQueueName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9-]+"), GameSessionQueueArn = structure(logical(0), 
        shape = "ArnStringModel", type = "string", max = 256L, 
        min = 1L, pattern = "[a-zA-Z0-9:/-]+"), TimeoutInSeconds = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L), PlayerLatencyPolicies = structure(list(structure(list(MaximumIndividualPlayerLatencyMilliseconds = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L), PolicyDurationSeconds = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L)), 
        shape = "PlayerLatencyPolicy", type = "structure")), 
        shape = "PlayerLatencyPolicyList", type = "list"), Destinations = structure(list(structure(list(DestinationArn = structure(logical(0), 
        shape = "ArnStringModel", type = "string", max = 256L, 
        min = 1L, pattern = "[a-zA-Z0-9:/-]+")), shape = "GameSessionQueueDestination", 
        type = "structure")), shape = "GameSessionQueueDestinationList", 
        type = "list")), shape = "GameSessionQueue", type = "structure")), 
        shape = "CreateGameSessionQueueOutput", type = "structure")
    return(populate(args, shape))
}

create_matchmaking_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "MatchmakingIdStringModel", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        Description = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), GameSessionQueueArns = structure(list(structure(logical(0), 
            shape = "ArnStringModel", type = "string", max = 256L, 
            min = 1L, pattern = "[a-zA-Z0-9:/-]+")), shape = "QueueArnsList", 
            type = "list"), RequestTimeoutSeconds = structure(logical(0), 
            shape = "MatchmakingRequestTimeoutInteger", type = "integer", 
            max = 43200L, min = 1L), AcceptanceTimeoutSeconds = structure(logical(0), 
            shape = "MatchmakingAcceptanceTimeoutInteger", type = "integer", 
            max = 600L, min = 1L), AcceptanceRequired = structure(logical(0), 
            shape = "BooleanModel", type = "boolean"), RuleSetName = structure(logical(0), 
            shape = "MatchmakingIdStringModel", type = "string", 
            max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        NotificationTarget = structure(logical(0), shape = "SnsArnStringModel", 
            type = "string", max = 300L, min = 0L, pattern = "[a-zA-Z0-9:_/-]*"), 
        AdditionalPlayerCount = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L), CustomEventData = structure(logical(0), 
            shape = "CustomEventData", type = "string", max = 256L, 
            min = 0L), GameProperties = structure(list(structure(list(Key = structure(logical(0), 
            shape = "GamePropertyKey", type = "string", max = 32L), 
            Value = structure(logical(0), shape = "GamePropertyValue", 
                type = "string", max = 96L)), shape = "GameProperty", 
            type = "structure")), shape = "GamePropertyList", 
            type = "list", max = 16L), GameSessionData = structure(logical(0), 
            shape = "GameSessionData", type = "string", max = 4096L, 
            min = 1L)), shape = "CreateMatchmakingConfigurationInput", 
        type = "structure")
    return(populate(args, shape))
}

create_matchmaking_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Configuration = structure(list(Name = structure(logical(0), 
        shape = "MatchmakingIdStringModel", type = "string", 
        max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        Description = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), GameSessionQueueArns = structure(list(structure(logical(0), 
            shape = "ArnStringModel", type = "string", max = 256L, 
            min = 1L, pattern = "[a-zA-Z0-9:/-]+")), shape = "QueueArnsList", 
            type = "list"), RequestTimeoutSeconds = structure(logical(0), 
            shape = "MatchmakingRequestTimeoutInteger", type = "integer", 
            max = 43200L, min = 1L), AcceptanceTimeoutSeconds = structure(logical(0), 
            shape = "MatchmakingAcceptanceTimeoutInteger", type = "integer", 
            max = 600L, min = 1L), AcceptanceRequired = structure(logical(0), 
            shape = "BooleanModel", type = "boolean"), RuleSetName = structure(logical(0), 
            shape = "MatchmakingIdStringModel", type = "string", 
            max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        NotificationTarget = structure(logical(0), shape = "SnsArnStringModel", 
            type = "string", max = 300L, min = 0L, pattern = "[a-zA-Z0-9:_/-]*"), 
        AdditionalPlayerCount = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L), CustomEventData = structure(logical(0), 
            shape = "CustomEventData", type = "string", max = 256L, 
            min = 0L), CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), GameProperties = structure(list(structure(list(Key = structure(logical(0), 
            shape = "GamePropertyKey", type = "string", max = 32L), 
            Value = structure(logical(0), shape = "GamePropertyValue", 
                type = "string", max = 96L)), shape = "GameProperty", 
            type = "structure")), shape = "GamePropertyList", 
            type = "list", max = 16L), GameSessionData = structure(logical(0), 
            shape = "GameSessionData", type = "string", max = 4096L, 
            min = 1L)), shape = "MatchmakingConfiguration", type = "structure")), 
        shape = "CreateMatchmakingConfigurationOutput", type = "structure")
    return(populate(args, shape))
}

create_matchmaking_rule_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "MatchmakingIdStringModel", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        RuleSetBody = structure(logical(0), shape = "RuleSetBody", 
            type = "string", max = 65535L, min = 1L)), shape = "CreateMatchmakingRuleSetInput", 
        type = "structure")
    return(populate(args, shape))
}

create_matchmaking_rule_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleSet = structure(list(RuleSetName = structure(logical(0), 
        shape = "MatchmakingIdStringModel", type = "string", 
        max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        RuleSetBody = structure(logical(0), shape = "RuleSetBody", 
            type = "string", max = 65535L, min = 1L), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "MatchmakingRuleSet", 
        type = "structure")), shape = "CreateMatchmakingRuleSetOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_player_session_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GameSessionId = structure(logical(0), 
        shape = "ArnStringModel", type = "string", max = 256L, 
        min = 1L, pattern = "[a-zA-Z0-9:/-]+"), PlayerId = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), PlayerData = structure(logical(0), shape = "PlayerData", 
        type = "string", max = 2048L, min = 1L)), shape = "CreatePlayerSessionInput", 
        type = "structure")
    return(populate(args, shape))
}

create_player_session_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlayerSession = structure(list(PlayerSessionId = structure(logical(0), 
        shape = "PlayerSessionId", type = "string", pattern = "^psess-\\S+"), 
        PlayerId = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), GameSessionId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), FleetId = structure(logical(0), shape = "FleetId", 
            type = "string", pattern = "^fleet-\\S+"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), TerminationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Status = structure(logical(0), 
            shape = "PlayerSessionStatus", type = "string"), 
        IpAddress = structure(logical(0), shape = "IpAddress", 
            type = "string"), Port = structure(logical(0), shape = "PortNumber", 
            type = "integer", max = 60000L, min = 1L), PlayerData = structure(logical(0), 
            shape = "PlayerData", type = "string", max = 2048L, 
            min = 1L)), shape = "PlayerSession", type = "structure")), 
        shape = "CreatePlayerSessionOutput", type = "structure")
    return(populate(args, shape))
}

create_player_sessions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GameSessionId = structure(logical(0), 
        shape = "ArnStringModel", type = "string", max = 256L, 
        min = 1L, pattern = "[a-zA-Z0-9:/-]+"), PlayerIds = structure(list(structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L)), shape = "PlayerIdList", type = "list", max = 25L, 
        min = 1L), PlayerDataMap = structure(list(structure(logical(0), 
        shape = "PlayerData", type = "string", max = 2048L, min = 1L)), 
        shape = "PlayerDataMap", type = "map")), shape = "CreatePlayerSessionsInput", 
        type = "structure")
    return(populate(args, shape))
}

create_player_sessions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlayerSessions = structure(list(structure(list(PlayerSessionId = structure(logical(0), 
        shape = "PlayerSessionId", type = "string", pattern = "^psess-\\S+"), 
        PlayerId = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), GameSessionId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), FleetId = structure(logical(0), shape = "FleetId", 
            type = "string", pattern = "^fleet-\\S+"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), TerminationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Status = structure(logical(0), 
            shape = "PlayerSessionStatus", type = "string"), 
        IpAddress = structure(logical(0), shape = "IpAddress", 
            type = "string"), Port = structure(logical(0), shape = "PortNumber", 
            type = "integer", max = 60000L, min = 1L), PlayerData = structure(logical(0), 
            shape = "PlayerData", type = "string", max = 2048L, 
            min = 1L)), shape = "PlayerSession", type = "structure")), 
        shape = "PlayerSessionList", type = "list")), shape = "CreatePlayerSessionsOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_vpc_peering_authorization_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GameLiftAwsAccountId = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), PeerVpcId = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L)), shape = "CreateVpcPeeringAuthorizationInput", 
        type = "structure")
    return(populate(args, shape))
}

create_vpc_peering_authorization_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcPeeringAuthorization = structure(list(GameLiftAwsAccountId = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), PeerVpcAwsAccountId = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), PeerVpcId = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L), CreationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), ExpirationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "VpcPeeringAuthorization", 
        type = "structure")), shape = "CreateVpcPeeringAuthorizationOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_vpc_peering_connection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+"), PeerVpcAwsAccountId = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), PeerVpcId = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L)), shape = "CreateVpcPeeringConnectionInput", 
        type = "structure")
    return(populate(args, shape))
}

create_vpc_peering_connection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateVpcPeeringConnectionOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AliasId = structure(logical(0), shape = "AliasId", 
        type = "string", pattern = "^alias-\\S+")), shape = "DeleteAliasInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_alias_output <- function () 
{
    return(list())
}

delete_build_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BuildId = structure(logical(0), shape = "BuildId", 
        type = "string", pattern = "^build-\\S+")), shape = "DeleteBuildInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_build_output <- function () 
{
    return(list())
}

delete_fleet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+")), shape = "DeleteFleetInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_fleet_output <- function () 
{
    return(list())
}

delete_game_session_queue_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "GameSessionQueueName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9-]+")), 
        shape = "DeleteGameSessionQueueInput", type = "structure")
    return(populate(args, shape))
}

delete_game_session_queue_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteGameSessionQueueOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_matchmaking_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "MatchmakingIdStringModel", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+")), 
        shape = "DeleteMatchmakingConfigurationInput", type = "structure")
    return(populate(args, shape))
}

delete_matchmaking_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteMatchmakingConfigurationOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_scaling_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L), FleetId = structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+")), 
        shape = "DeleteScalingPolicyInput", type = "structure")
    return(populate(args, shape))
}

delete_scaling_policy_output <- function () 
{
    return(list())
}

delete_vpc_peering_authorization_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GameLiftAwsAccountId = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), PeerVpcId = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L)), shape = "DeleteVpcPeeringAuthorizationInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_vpc_peering_authorization_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteVpcPeeringAuthorizationOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_vpc_peering_connection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+"), VpcPeeringConnectionId = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L)), shape = "DeleteVpcPeeringConnectionInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_vpc_peering_connection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteVpcPeeringConnectionOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AliasId = structure(logical(0), shape = "AliasId", 
        type = "string", pattern = "^alias-\\S+")), shape = "DescribeAliasInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_alias_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Alias = structure(list(AliasId = structure(logical(0), 
        shape = "AliasId", type = "string", pattern = "^alias-\\S+"), 
        Name = structure(logical(0), shape = "NonBlankAndLengthConstraintString", 
            type = "string", max = 1024L, min = 1L, pattern = ".*\\S.*"), 
        AliasArn = structure(logical(0), shape = "ArnStringModel", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9:/-]+"), 
        Description = structure(logical(0), shape = "FreeText", 
            type = "string"), RoutingStrategy = structure(list(Type = structure(logical(0), 
            shape = "RoutingStrategyType", type = "string"), 
            FleetId = structure(logical(0), shape = "FleetId", 
                type = "string", pattern = "^fleet-\\S+"), Message = structure(logical(0), 
                shape = "FreeText", type = "string")), shape = "RoutingStrategy", 
            type = "structure"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastUpdatedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Alias", 
        type = "structure")), shape = "DescribeAliasOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_build_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BuildId = structure(logical(0), shape = "BuildId", 
        type = "string", pattern = "^build-\\S+")), shape = "DescribeBuildInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_build_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Build = structure(list(BuildId = structure(logical(0), 
        shape = "BuildId", type = "string", pattern = "^build-\\S+"), 
        Name = structure(logical(0), shape = "FreeText", type = "string"), 
        Version = structure(logical(0), shape = "FreeText", type = "string"), 
        Status = structure(logical(0), shape = "BuildStatus", 
            type = "string"), SizeOnDisk = structure(logical(0), 
            shape = "PositiveLong", type = "long", min = 1L), 
        OperatingSystem = structure(logical(0), shape = "OperatingSystem", 
            type = "string"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Build", 
        type = "structure")), shape = "DescribeBuildOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_ec2_instance_limits_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EC2InstanceType = structure(logical(0), 
        shape = "EC2InstanceType", type = "string")), shape = "DescribeEC2InstanceLimitsInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_ec2_instance_limits_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EC2InstanceLimits = structure(list(structure(list(EC2InstanceType = structure(logical(0), 
        shape = "EC2InstanceType", type = "string"), CurrentInstances = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L), InstanceLimit = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L)), 
        shape = "EC2InstanceLimit", type = "structure")), shape = "EC2InstanceLimitList", 
        type = "list")), shape = "DescribeEC2InstanceLimitsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_fleet_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetIds = structure(list(structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+")), 
        shape = "FleetIdList", type = "list", min = 1L), Limit = structure(logical(0), 
        shape = "PositiveInteger", type = "integer", min = 1L), 
        NextToken = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L)), shape = "DescribeFleetAttributesInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_fleet_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetAttributes = structure(list(structure(list(FleetId = structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+"), 
        FleetArn = structure(logical(0), shape = "ArnStringModel", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9:/-]+"), 
        FleetType = structure(logical(0), shape = "FleetType", 
            type = "string"), InstanceType = structure(logical(0), 
            shape = "EC2InstanceType", type = "string"), Description = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), Name = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), TerminationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Status = structure(logical(0), 
            shape = "FleetStatus", type = "string"), BuildId = structure(logical(0), 
            shape = "BuildId", type = "string", pattern = "^build-\\S+"), 
        ServerLaunchPath = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), ServerLaunchParameters = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), LogPaths = structure(list(structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L)), shape = "StringList", type = "list"), 
        NewGameSessionProtectionPolicy = structure(logical(0), 
            shape = "ProtectionPolicy", type = "string"), OperatingSystem = structure(logical(0), 
            shape = "OperatingSystem", type = "string"), ResourceCreationLimitPolicy = structure(list(NewGameSessionsPerCreator = structure(logical(0), 
            shape = "WholeNumber", type = "integer", min = 0L), 
            PolicyPeriodInMinutes = structure(logical(0), shape = "WholeNumber", 
                type = "integer", min = 0L)), shape = "ResourceCreationLimitPolicy", 
            type = "structure"), MetricGroups = structure(list(structure(logical(0), 
            shape = "MetricGroup", type = "string", max = 255L, 
            min = 1L)), shape = "MetricGroupList", type = "list", 
            max = 1L), StoppedActions = structure(list(structure(logical(0), 
            shape = "FleetAction", type = "string")), shape = "FleetActionList", 
            type = "list", max = 1L, min = 1L)), shape = "FleetAttributes", 
        type = "structure")), shape = "FleetAttributesList", 
        type = "list"), NextToken = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L)), shape = "DescribeFleetAttributesOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_fleet_capacity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetIds = structure(list(structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+")), 
        shape = "FleetIdList", type = "list", min = 1L), Limit = structure(logical(0), 
        shape = "PositiveInteger", type = "integer", min = 1L), 
        NextToken = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L)), shape = "DescribeFleetCapacityInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_fleet_capacity_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetCapacity = structure(list(structure(list(FleetId = structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+"), 
        InstanceType = structure(logical(0), shape = "EC2InstanceType", 
            type = "string"), InstanceCounts = structure(list(DESIRED = structure(logical(0), 
            shape = "WholeNumber", type = "integer", min = 0L), 
            MINIMUM = structure(logical(0), shape = "WholeNumber", 
                type = "integer", min = 0L), MAXIMUM = structure(logical(0), 
                shape = "WholeNumber", type = "integer", min = 0L), 
            PENDING = structure(logical(0), shape = "WholeNumber", 
                type = "integer", min = 0L), ACTIVE = structure(logical(0), 
                shape = "WholeNumber", type = "integer", min = 0L), 
            IDLE = structure(logical(0), shape = "WholeNumber", 
                type = "integer", min = 0L), TERMINATING = structure(logical(0), 
                shape = "WholeNumber", type = "integer", min = 0L)), 
            shape = "EC2InstanceCounts", type = "structure")), 
        shape = "FleetCapacity", type = "structure")), shape = "FleetCapacityList", 
        type = "list"), NextToken = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L)), shape = "DescribeFleetCapacityOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_fleet_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+"), StartTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Limit = structure(logical(0), 
        shape = "PositiveInteger", type = "integer", min = 1L), 
        NextToken = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L)), shape = "DescribeFleetEventsInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_fleet_events_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Events = structure(list(structure(list(EventId = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), ResourceId = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L), EventCode = structure(logical(0), 
        shape = "EventCode", type = "string"), Message = structure(logical(0), 
        shape = "NonEmptyString", type = "string", min = 1L), 
        EventTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), PreSignedLogUrl = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L)), shape = "Event", type = "structure")), 
        shape = "EventList", type = "list"), NextToken = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L)), shape = "DescribeFleetEventsOutput", type = "structure")
    return(populate(args, shape))
}

describe_fleet_port_settings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+")), shape = "DescribeFleetPortSettingsInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_fleet_port_settings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InboundPermissions = structure(list(structure(list(FromPort = structure(logical(0), 
        shape = "PortNumber", type = "integer", max = 60000L, 
        min = 1L), ToPort = structure(logical(0), shape = "PortNumber", 
        type = "integer", max = 60000L, min = 1L), IpRange = structure(logical(0), 
        shape = "NonBlankString", type = "string", pattern = "[^\\s]+"), 
        Protocol = structure(logical(0), shape = "IpProtocol", 
            type = "string")), shape = "IpPermission", type = "structure")), 
        shape = "IpPermissionsList", type = "list", max = 50L)), 
        shape = "DescribeFleetPortSettingsOutput", type = "structure")
    return(populate(args, shape))
}

describe_fleet_utilization_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetIds = structure(list(structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+")), 
        shape = "FleetIdList", type = "list", min = 1L), Limit = structure(logical(0), 
        shape = "PositiveInteger", type = "integer", min = 1L), 
        NextToken = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L)), shape = "DescribeFleetUtilizationInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_fleet_utilization_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetUtilization = structure(list(structure(list(FleetId = structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+"), 
        ActiveServerProcessCount = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L), ActiveGameSessionCount = structure(logical(0), 
            shape = "WholeNumber", type = "integer", min = 0L), 
        CurrentPlayerSessionCount = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L), MaximumPlayerSessionCount = structure(logical(0), 
            shape = "WholeNumber", type = "integer", min = 0L)), 
        shape = "FleetUtilization", type = "structure")), shape = "FleetUtilizationList", 
        type = "list"), NextToken = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L)), shape = "DescribeFleetUtilizationOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_game_session_details_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+"), GameSessionId = structure(logical(0), 
        shape = "ArnStringModel", type = "string", max = 256L, 
        min = 1L, pattern = "[a-zA-Z0-9:/-]+"), AliasId = structure(logical(0), 
        shape = "AliasId", type = "string", pattern = "^alias-\\S+"), 
        StatusFilter = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), Limit = structure(logical(0), 
            shape = "PositiveInteger", type = "integer", min = 1L), 
        NextToken = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L)), shape = "DescribeGameSessionDetailsInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_game_session_details_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GameSessionDetails = structure(list(structure(list(GameSession = structure(list(GameSessionId = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), Name = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L), FleetId = structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), TerminationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), CurrentPlayerSessionCount = structure(logical(0), 
            shape = "WholeNumber", type = "integer", min = 0L), 
        MaximumPlayerSessionCount = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L), Status = structure(logical(0), 
            shape = "GameSessionStatus", type = "string"), StatusReason = structure(logical(0), 
            shape = "GameSessionStatusReason", type = "string"), 
        GameProperties = structure(list(structure(list(Key = structure(logical(0), 
            shape = "GamePropertyKey", type = "string", max = 32L), 
            Value = structure(logical(0), shape = "GamePropertyValue", 
                type = "string", max = 96L)), shape = "GameProperty", 
            type = "structure")), shape = "GamePropertyList", 
            type = "list", max = 16L), IpAddress = structure(logical(0), 
            shape = "IpAddress", type = "string"), Port = structure(logical(0), 
            shape = "PortNumber", type = "integer", max = 60000L, 
            min = 1L), PlayerSessionCreationPolicy = structure(logical(0), 
            shape = "PlayerSessionCreationPolicy", type = "string"), 
        CreatorId = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), GameSessionData = structure(logical(0), 
            shape = "GameSessionData", type = "string", max = 4096L, 
            min = 1L), MatchmakerData = structure(logical(0), 
            shape = "MatchmakerData", type = "string", max = 390000L, 
            min = 1L)), shape = "GameSession", type = "structure"), 
        ProtectionPolicy = structure(logical(0), shape = "ProtectionPolicy", 
            type = "string")), shape = "GameSessionDetail", type = "structure")), 
        shape = "GameSessionDetailList", type = "list"), NextToken = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L)), shape = "DescribeGameSessionDetailsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_game_session_placement_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlacementId = structure(logical(0), 
        shape = "IdStringModel", type = "string", max = 48L, 
        min = 1L, pattern = "[a-zA-Z0-9-]+")), shape = "DescribeGameSessionPlacementInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_game_session_placement_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GameSessionPlacement = structure(list(PlacementId = structure(logical(0), 
        shape = "IdStringModel", type = "string", max = 48L, 
        min = 1L, pattern = "[a-zA-Z0-9-]+"), GameSessionQueueName = structure(logical(0), 
        shape = "GameSessionQueueName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9-]+"), Status = structure(logical(0), 
        shape = "GameSessionPlacementState", type = "string"), 
        GameProperties = structure(list(structure(list(Key = structure(logical(0), 
            shape = "GamePropertyKey", type = "string", max = 32L), 
            Value = structure(logical(0), shape = "GamePropertyValue", 
                type = "string", max = 96L)), shape = "GameProperty", 
            type = "structure")), shape = "GamePropertyList", 
            type = "list", max = 16L), MaximumPlayerSessionCount = structure(logical(0), 
            shape = "WholeNumber", type = "integer", min = 0L), 
        GameSessionName = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), GameSessionId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), GameSessionArn = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), GameSessionRegion = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), PlayerLatencies = structure(list(structure(list(PlayerId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), RegionIdentifier = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), LatencyInMilliseconds = structure(logical(0), 
            shape = "Float", type = "float")), shape = "PlayerLatency", 
            type = "structure")), shape = "PlayerLatencyList", 
            type = "list"), StartTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), IpAddress = structure(logical(0), 
            shape = "IpAddress", type = "string"), Port = structure(logical(0), 
            shape = "PortNumber", type = "integer", max = 60000L, 
            min = 1L), PlacedPlayerSessions = structure(list(structure(list(PlayerId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), PlayerSessionId = structure(logical(0), 
            shape = "PlayerSessionId", type = "string", pattern = "^psess-\\S+")), 
            shape = "PlacedPlayerSession", type = "structure")), 
            shape = "PlacedPlayerSessionList", type = "list"), 
        GameSessionData = structure(logical(0), shape = "GameSessionData", 
            type = "string", max = 4096L, min = 1L), MatchmakerData = structure(logical(0), 
            shape = "MatchmakerData", type = "string", max = 390000L, 
            min = 1L)), shape = "GameSessionPlacement", type = "structure")), 
        shape = "DescribeGameSessionPlacementOutput", type = "structure")
    return(populate(args, shape))
}

describe_game_session_queues_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Names = structure(list(structure(logical(0), 
        shape = "GameSessionQueueName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9-]+")), shape = "GameSessionQueueNameList", 
        type = "list"), Limit = structure(logical(0), shape = "PositiveInteger", 
        type = "integer", min = 1L), NextToken = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L)), shape = "DescribeGameSessionQueuesInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_game_session_queues_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GameSessionQueues = structure(list(structure(list(Name = structure(logical(0), 
        shape = "GameSessionQueueName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9-]+"), GameSessionQueueArn = structure(logical(0), 
        shape = "ArnStringModel", type = "string", max = 256L, 
        min = 1L, pattern = "[a-zA-Z0-9:/-]+"), TimeoutInSeconds = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L), PlayerLatencyPolicies = structure(list(structure(list(MaximumIndividualPlayerLatencyMilliseconds = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L), PolicyDurationSeconds = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L)), 
        shape = "PlayerLatencyPolicy", type = "structure")), 
        shape = "PlayerLatencyPolicyList", type = "list"), Destinations = structure(list(structure(list(DestinationArn = structure(logical(0), 
        shape = "ArnStringModel", type = "string", max = 256L, 
        min = 1L, pattern = "[a-zA-Z0-9:/-]+")), shape = "GameSessionQueueDestination", 
        type = "structure")), shape = "GameSessionQueueDestinationList", 
        type = "list")), shape = "GameSessionQueue", type = "structure")), 
        shape = "GameSessionQueueList", type = "list"), NextToken = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L)), shape = "DescribeGameSessionQueuesOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_game_sessions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+"), GameSessionId = structure(logical(0), 
        shape = "ArnStringModel", type = "string", max = 256L, 
        min = 1L, pattern = "[a-zA-Z0-9:/-]+"), AliasId = structure(logical(0), 
        shape = "AliasId", type = "string", pattern = "^alias-\\S+"), 
        StatusFilter = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), Limit = structure(logical(0), 
            shape = "PositiveInteger", type = "integer", min = 1L), 
        NextToken = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L)), shape = "DescribeGameSessionsInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_game_sessions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GameSessions = structure(list(structure(list(GameSessionId = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), Name = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L), FleetId = structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), TerminationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), CurrentPlayerSessionCount = structure(logical(0), 
            shape = "WholeNumber", type = "integer", min = 0L), 
        MaximumPlayerSessionCount = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L), Status = structure(logical(0), 
            shape = "GameSessionStatus", type = "string"), StatusReason = structure(logical(0), 
            shape = "GameSessionStatusReason", type = "string"), 
        GameProperties = structure(list(structure(list(Key = structure(logical(0), 
            shape = "GamePropertyKey", type = "string", max = 32L), 
            Value = structure(logical(0), shape = "GamePropertyValue", 
                type = "string", max = 96L)), shape = "GameProperty", 
            type = "structure")), shape = "GamePropertyList", 
            type = "list", max = 16L), IpAddress = structure(logical(0), 
            shape = "IpAddress", type = "string"), Port = structure(logical(0), 
            shape = "PortNumber", type = "integer", max = 60000L, 
            min = 1L), PlayerSessionCreationPolicy = structure(logical(0), 
            shape = "PlayerSessionCreationPolicy", type = "string"), 
        CreatorId = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), GameSessionData = structure(logical(0), 
            shape = "GameSessionData", type = "string", max = 4096L, 
            min = 1L), MatchmakerData = structure(logical(0), 
            shape = "MatchmakerData", type = "string", max = 390000L, 
            min = 1L)), shape = "GameSession", type = "structure")), 
        shape = "GameSessionList", type = "list"), NextToken = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L)), shape = "DescribeGameSessionsOutput", type = "structure")
    return(populate(args, shape))
}

describe_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+"), InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string", pattern = "[a-zA-Z0-9\\.-]+"), 
        Limit = structure(logical(0), shape = "PositiveInteger", 
            type = "integer", min = 1L), NextToken = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L)), shape = "DescribeInstancesInput", type = "structure")
    return(populate(args, shape))
}

describe_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Instances = structure(list(structure(list(FleetId = structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "[a-zA-Z0-9\\.-]+"), IpAddress = structure(logical(0), 
            shape = "IpAddress", type = "string"), OperatingSystem = structure(logical(0), 
            shape = "OperatingSystem", type = "string"), Type = structure(logical(0), 
            shape = "EC2InstanceType", type = "string"), Status = structure(logical(0), 
            shape = "InstanceStatus", type = "string"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Instance", 
        type = "structure")), shape = "InstanceList", type = "list"), 
        NextToken = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L)), shape = "DescribeInstancesOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_matchmaking_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TicketIds = structure(list(structure(logical(0), 
        shape = "MatchmakingIdStringModel", type = "string", 
        max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+")), 
        shape = "MatchmakingIdList", type = "list")), shape = "DescribeMatchmakingInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_matchmaking_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TicketList = structure(list(structure(list(TicketId = structure(logical(0), 
        shape = "MatchmakingIdStringModel", type = "string", 
        max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        ConfigurationName = structure(logical(0), shape = "MatchmakingIdStringModel", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        Status = structure(logical(0), shape = "MatchmakingConfigurationStatus", 
            type = "string"), StatusReason = structure(logical(0), 
            shape = "StringModel", type = "string"), StatusMessage = structure(logical(0), 
            shape = "StringModel", type = "string"), StartTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Players = structure(list(structure(list(PlayerId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), PlayerAttributes = structure(list(structure(list(S = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), N = structure(logical(0), shape = "DoubleObject", 
            type = "double"), SL = structure(list(structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L)), shape = "StringList", type = "list"), 
            SDM = structure(list(structure(logical(0), shape = "DoubleObject", 
                type = "double")), shape = "StringDoubleMap", 
                type = "map")), shape = "AttributeValue", type = "structure")), 
            shape = "PlayerAttributeMap", type = "map"), Team = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), LatencyInMs = structure(list(structure(logical(0), 
            shape = "PositiveInteger", type = "integer", min = 1L)), 
            shape = "LatencyMap", type = "map")), shape = "Player", 
            type = "structure")), shape = "PlayerList", type = "list"), 
        GameSessionConnectionInfo = structure(list(GameSessionArn = structure(logical(0), 
            shape = "ArnStringModel", type = "string", max = 256L, 
            min = 1L, pattern = "[a-zA-Z0-9:/-]+"), IpAddress = structure(logical(0), 
            shape = "StringModel", type = "string"), Port = structure(logical(0), 
            shape = "PositiveInteger", type = "integer", min = 1L), 
            MatchedPlayerSessions = structure(list(structure(list(PlayerId = structure(logical(0), 
                shape = "NonZeroAndMaxString", type = "string", 
                max = 1024L, min = 1L), PlayerSessionId = structure(logical(0), 
                shape = "PlayerSessionId", type = "string", pattern = "^psess-\\S+")), 
                shape = "MatchedPlayerSession", type = "structure")), 
                shape = "MatchedPlayerSessionList", type = "list")), 
            shape = "GameSessionConnectionInfo", type = "structure"), 
        EstimatedWaitTime = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L)), shape = "MatchmakingTicket", 
        type = "structure")), shape = "MatchmakingTicketList", 
        type = "list")), shape = "DescribeMatchmakingOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_matchmaking_configurations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Names = structure(list(structure(logical(0), 
        shape = "MatchmakingIdStringModel", type = "string", 
        max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+")), 
        shape = "MatchmakingIdList", type = "list"), RuleSetName = structure(logical(0), 
        shape = "MatchmakingIdStringModel", type = "string", 
        max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        Limit = structure(logical(0), shape = "PositiveInteger", 
            type = "integer", min = 1L), NextToken = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L)), shape = "DescribeMatchmakingConfigurationsInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_matchmaking_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Configurations = structure(list(structure(list(Name = structure(logical(0), 
        shape = "MatchmakingIdStringModel", type = "string", 
        max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        Description = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), GameSessionQueueArns = structure(list(structure(logical(0), 
            shape = "ArnStringModel", type = "string", max = 256L, 
            min = 1L, pattern = "[a-zA-Z0-9:/-]+")), shape = "QueueArnsList", 
            type = "list"), RequestTimeoutSeconds = structure(logical(0), 
            shape = "MatchmakingRequestTimeoutInteger", type = "integer", 
            max = 43200L, min = 1L), AcceptanceTimeoutSeconds = structure(logical(0), 
            shape = "MatchmakingAcceptanceTimeoutInteger", type = "integer", 
            max = 600L, min = 1L), AcceptanceRequired = structure(logical(0), 
            shape = "BooleanModel", type = "boolean"), RuleSetName = structure(logical(0), 
            shape = "MatchmakingIdStringModel", type = "string", 
            max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        NotificationTarget = structure(logical(0), shape = "SnsArnStringModel", 
            type = "string", max = 300L, min = 0L, pattern = "[a-zA-Z0-9:_/-]*"), 
        AdditionalPlayerCount = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L), CustomEventData = structure(logical(0), 
            shape = "CustomEventData", type = "string", max = 256L, 
            min = 0L), CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), GameProperties = structure(list(structure(list(Key = structure(logical(0), 
            shape = "GamePropertyKey", type = "string", max = 32L), 
            Value = structure(logical(0), shape = "GamePropertyValue", 
                type = "string", max = 96L)), shape = "GameProperty", 
            type = "structure")), shape = "GamePropertyList", 
            type = "list", max = 16L), GameSessionData = structure(logical(0), 
            shape = "GameSessionData", type = "string", max = 4096L, 
            min = 1L)), shape = "MatchmakingConfiguration", type = "structure")), 
        shape = "MatchmakingConfigurationList", type = "list"), 
        NextToken = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L)), shape = "DescribeMatchmakingConfigurationsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_matchmaking_rule_sets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Names = structure(list(structure(logical(0), 
        shape = "MatchmakingIdStringModel", type = "string", 
        max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+")), 
        shape = "MatchmakingRuleSetNameList", type = "list", 
        max = 10L, min = 1L), Limit = structure(logical(0), shape = "RuleSetLimit", 
        type = "integer", max = 10L, min = 1L), NextToken = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L)), shape = "DescribeMatchmakingRuleSetsInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_matchmaking_rule_sets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleSets = structure(list(structure(list(RuleSetName = structure(logical(0), 
        shape = "MatchmakingIdStringModel", type = "string", 
        max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        RuleSetBody = structure(logical(0), shape = "RuleSetBody", 
            type = "string", max = 65535L, min = 1L), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "MatchmakingRuleSet", 
        type = "structure")), shape = "MatchmakingRuleSetList", 
        type = "list"), NextToken = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L)), shape = "DescribeMatchmakingRuleSetsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_player_sessions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GameSessionId = structure(logical(0), 
        shape = "ArnStringModel", type = "string", max = 256L, 
        min = 1L, pattern = "[a-zA-Z0-9:/-]+"), PlayerId = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), PlayerSessionId = structure(logical(0), shape = "PlayerSessionId", 
        type = "string", pattern = "^psess-\\S+"), PlayerSessionStatusFilter = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), Limit = structure(logical(0), shape = "PositiveInteger", 
        type = "integer", min = 1L), NextToken = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L)), shape = "DescribePlayerSessionsInput", type = "structure")
    return(populate(args, shape))
}

describe_player_sessions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlayerSessions = structure(list(structure(list(PlayerSessionId = structure(logical(0), 
        shape = "PlayerSessionId", type = "string", pattern = "^psess-\\S+"), 
        PlayerId = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), GameSessionId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), FleetId = structure(logical(0), shape = "FleetId", 
            type = "string", pattern = "^fleet-\\S+"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), TerminationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Status = structure(logical(0), 
            shape = "PlayerSessionStatus", type = "string"), 
        IpAddress = structure(logical(0), shape = "IpAddress", 
            type = "string"), Port = structure(logical(0), shape = "PortNumber", 
            type = "integer", max = 60000L, min = 1L), PlayerData = structure(logical(0), 
            shape = "PlayerData", type = "string", max = 2048L, 
            min = 1L)), shape = "PlayerSession", type = "structure")), 
        shape = "PlayerSessionList", type = "list"), NextToken = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L)), shape = "DescribePlayerSessionsOutput", type = "structure")
    return(populate(args, shape))
}

describe_runtime_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+")), shape = "DescribeRuntimeConfigurationInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_runtime_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuntimeConfiguration = structure(list(ServerProcesses = structure(list(structure(list(LaunchPath = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), Parameters = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L), ConcurrentExecutions = structure(logical(0), 
        shape = "PositiveInteger", type = "integer", min = 1L)), 
        shape = "ServerProcess", type = "structure")), shape = "ServerProcessList", 
        type = "list", max = 50L, min = 1L), MaxConcurrentGameSessionActivations = structure(logical(0), 
        shape = "MaxConcurrentGameSessionActivations", type = "integer", 
        max = 2147483647L, min = 1L), GameSessionActivationTimeoutSeconds = structure(logical(0), 
        shape = "GameSessionActivationTimeoutSeconds", type = "integer", 
        max = 600L, min = 1L)), shape = "RuntimeConfiguration", 
        type = "structure")), shape = "DescribeRuntimeConfigurationOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_scaling_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+"), StatusFilter = structure(logical(0), 
        shape = "ScalingStatusType", type = "string"), Limit = structure(logical(0), 
        shape = "PositiveInteger", type = "integer", min = 1L), 
        NextToken = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L)), shape = "DescribeScalingPoliciesInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_scaling_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScalingPolicies = structure(list(structure(list(FleetId = structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+"), 
        Name = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), Status = structure(logical(0), 
            shape = "ScalingStatusType", type = "string"), ScalingAdjustment = structure(logical(0), 
            shape = "Integer", type = "integer"), ScalingAdjustmentType = structure(logical(0), 
            shape = "ScalingAdjustmentType", type = "string"), 
        ComparisonOperator = structure(logical(0), shape = "ComparisonOperatorType", 
            type = "string"), Threshold = structure(logical(0), 
            shape = "Double", type = "double"), EvaluationPeriods = structure(logical(0), 
            shape = "PositiveInteger", type = "integer", min = 1L), 
        MetricName = structure(logical(0), shape = "MetricName", 
            type = "string"), PolicyType = structure(logical(0), 
            shape = "PolicyType", type = "string"), TargetConfiguration = structure(list(TargetValue = structure(logical(0), 
            shape = "Double", type = "double")), shape = "TargetConfiguration", 
            type = "structure")), shape = "ScalingPolicy", type = "structure")), 
        shape = "ScalingPolicyList", type = "list"), NextToken = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L)), shape = "DescribeScalingPoliciesOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_peering_authorizations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DescribeVpcPeeringAuthorizationsInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_peering_authorizations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcPeeringAuthorizations = structure(list(structure(list(GameLiftAwsAccountId = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), PeerVpcAwsAccountId = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), PeerVpcId = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L), CreationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), ExpirationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "VpcPeeringAuthorization", 
        type = "structure")), shape = "VpcPeeringAuthorizationList", 
        type = "list")), shape = "DescribeVpcPeeringAuthorizationsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_peering_connections_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+")), shape = "DescribeVpcPeeringConnectionsInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_peering_connections_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcPeeringConnections = structure(list(structure(list(FleetId = structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+"), 
        IpV4CidrBlock = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), VpcPeeringConnectionId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), Status = structure(list(Code = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), Message = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L)), shape = "VpcPeeringConnectionStatus", 
            type = "structure"), PeerVpcId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), GameLiftVpcId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L)), shape = "VpcPeeringConnection", type = "structure")), 
        shape = "VpcPeeringConnectionList", type = "list")), 
        shape = "DescribeVpcPeeringConnectionsOutput", type = "structure")
    return(populate(args, shape))
}

get_game_session_log_url_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GameSessionId = structure(logical(0), 
        shape = "ArnStringModel", type = "string", max = 256L, 
        min = 1L, pattern = "[a-zA-Z0-9:/-]+")), shape = "GetGameSessionLogUrlInput", 
        type = "structure")
    return(populate(args, shape))
}

get_game_session_log_url_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PreSignedUrl = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L)), shape = "GetGameSessionLogUrlOutput", type = "structure")
    return(populate(args, shape))
}

get_instance_access_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+"), InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string", pattern = "[a-zA-Z0-9\\.-]+")), 
        shape = "GetInstanceAccessInput", type = "structure")
    return(populate(args, shape))
}

get_instance_access_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceAccess = structure(list(FleetId = structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "[a-zA-Z0-9\\.-]+"), IpAddress = structure(logical(0), 
            shape = "IpAddress", type = "string"), OperatingSystem = structure(logical(0), 
            shape = "OperatingSystem", type = "string"), Credentials = structure(list(UserName = structure(logical(0), 
            shape = "NonEmptyString", type = "string", min = 1L), 
            Secret = structure(logical(0), shape = "NonEmptyString", 
                type = "string", min = 1L)), shape = "InstanceCredentials", 
            type = "structure", sensitive = TRUE)), shape = "InstanceAccess", 
        type = "structure")), shape = "GetInstanceAccessOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_aliases_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoutingStrategyType = structure(logical(0), 
        shape = "RoutingStrategyType", type = "string"), Name = structure(logical(0), 
        shape = "NonEmptyString", type = "string", min = 1L), 
        Limit = structure(logical(0), shape = "PositiveInteger", 
            type = "integer", min = 1L), NextToken = structure(logical(0), 
            shape = "NonEmptyString", type = "string", min = 1L)), 
        shape = "ListAliasesInput", type = "structure")
    return(populate(args, shape))
}

list_aliases_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Aliases = structure(list(structure(list(AliasId = structure(logical(0), 
        shape = "AliasId", type = "string", pattern = "^alias-\\S+"), 
        Name = structure(logical(0), shape = "NonBlankAndLengthConstraintString", 
            type = "string", max = 1024L, min = 1L, pattern = ".*\\S.*"), 
        AliasArn = structure(logical(0), shape = "ArnStringModel", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9:/-]+"), 
        Description = structure(logical(0), shape = "FreeText", 
            type = "string"), RoutingStrategy = structure(list(Type = structure(logical(0), 
            shape = "RoutingStrategyType", type = "string"), 
            FleetId = structure(logical(0), shape = "FleetId", 
                type = "string", pattern = "^fleet-\\S+"), Message = structure(logical(0), 
                shape = "FreeText", type = "string")), shape = "RoutingStrategy", 
            type = "structure"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastUpdatedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Alias", 
        type = "structure")), shape = "AliasList", type = "list"), 
        NextToken = structure(logical(0), shape = "NonEmptyString", 
            type = "string", min = 1L)), shape = "ListAliasesOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_builds_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "BuildStatus", 
        type = "string"), Limit = structure(logical(0), shape = "PositiveInteger", 
        type = "integer", min = 1L), NextToken = structure(logical(0), 
        shape = "NonEmptyString", type = "string", min = 1L)), 
        shape = "ListBuildsInput", type = "structure")
    return(populate(args, shape))
}

list_builds_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Builds = structure(list(structure(list(BuildId = structure(logical(0), 
        shape = "BuildId", type = "string", pattern = "^build-\\S+"), 
        Name = structure(logical(0), shape = "FreeText", type = "string"), 
        Version = structure(logical(0), shape = "FreeText", type = "string"), 
        Status = structure(logical(0), shape = "BuildStatus", 
            type = "string"), SizeOnDisk = structure(logical(0), 
            shape = "PositiveLong", type = "long", min = 1L), 
        OperatingSystem = structure(logical(0), shape = "OperatingSystem", 
            type = "string"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Build", 
        type = "structure")), shape = "BuildList", type = "list"), 
        NextToken = structure(logical(0), shape = "NonEmptyString", 
            type = "string", min = 1L)), shape = "ListBuildsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_fleets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BuildId = structure(logical(0), shape = "BuildId", 
        type = "string", pattern = "^build-\\S+"), Limit = structure(logical(0), 
        shape = "PositiveInteger", type = "integer", min = 1L), 
        NextToken = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L)), shape = "ListFleetsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_fleets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetIds = structure(list(structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+")), 
        shape = "FleetIdList", type = "list", min = 1L), NextToken = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L)), shape = "ListFleetsOutput", type = "structure")
    return(populate(args, shape))
}

put_scaling_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L), FleetId = structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+"), 
        ScalingAdjustment = structure(logical(0), shape = "Integer", 
            type = "integer"), ScalingAdjustmentType = structure(logical(0), 
            shape = "ScalingAdjustmentType", type = "string"), 
        Threshold = structure(logical(0), shape = "Double", type = "double"), 
        ComparisonOperator = structure(logical(0), shape = "ComparisonOperatorType", 
            type = "string"), EvaluationPeriods = structure(logical(0), 
            shape = "PositiveInteger", type = "integer", min = 1L), 
        MetricName = structure(logical(0), shape = "MetricName", 
            type = "string"), PolicyType = structure(logical(0), 
            shape = "PolicyType", type = "string"), TargetConfiguration = structure(list(TargetValue = structure(logical(0), 
            shape = "Double", type = "double")), shape = "TargetConfiguration", 
            type = "structure")), shape = "PutScalingPolicyInput", 
        type = "structure")
    return(populate(args, shape))
}

put_scaling_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L)), shape = "PutScalingPolicyOutput", 
        type = "structure")
    return(populate(args, shape))
}

request_upload_credentials_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BuildId = structure(logical(0), shape = "BuildId", 
        type = "string", pattern = "^build-\\S+")), shape = "RequestUploadCredentialsInput", 
        type = "structure")
    return(populate(args, shape))
}

request_upload_credentials_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UploadCredentials = structure(list(AccessKeyId = structure(logical(0), 
        shape = "NonEmptyString", type = "string", min = 1L), 
        SecretAccessKey = structure(logical(0), shape = "NonEmptyString", 
            type = "string", min = 1L), SessionToken = structure(logical(0), 
            shape = "NonEmptyString", type = "string", min = 1L)), 
        shape = "AwsCredentials", type = "structure", sensitive = TRUE), 
        StorageLocation = structure(list(Bucket = structure(logical(0), 
            shape = "NonEmptyString", type = "string", min = 1L), 
            Key = structure(logical(0), shape = "NonEmptyString", 
                type = "string", min = 1L), RoleArn = structure(logical(0), 
                shape = "NonEmptyString", type = "string", min = 1L)), 
            shape = "S3Location", type = "structure")), shape = "RequestUploadCredentialsOutput", 
        type = "structure")
    return(populate(args, shape))
}

resolve_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AliasId = structure(logical(0), shape = "AliasId", 
        type = "string", pattern = "^alias-\\S+")), shape = "ResolveAliasInput", 
        type = "structure")
    return(populate(args, shape))
}

resolve_alias_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+")), shape = "ResolveAliasOutput", 
        type = "structure")
    return(populate(args, shape))
}

search_game_sessions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+"), AliasId = structure(logical(0), 
        shape = "AliasId", type = "string", pattern = "^alias-\\S+"), 
        FilterExpression = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), SortExpression = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), Limit = structure(logical(0), shape = "PositiveInteger", 
            type = "integer", min = 1L), NextToken = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L)), shape = "SearchGameSessionsInput", type = "structure")
    return(populate(args, shape))
}

search_game_sessions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GameSessions = structure(list(structure(list(GameSessionId = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), Name = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L), FleetId = structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), TerminationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), CurrentPlayerSessionCount = structure(logical(0), 
            shape = "WholeNumber", type = "integer", min = 0L), 
        MaximumPlayerSessionCount = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L), Status = structure(logical(0), 
            shape = "GameSessionStatus", type = "string"), StatusReason = structure(logical(0), 
            shape = "GameSessionStatusReason", type = "string"), 
        GameProperties = structure(list(structure(list(Key = structure(logical(0), 
            shape = "GamePropertyKey", type = "string", max = 32L), 
            Value = structure(logical(0), shape = "GamePropertyValue", 
                type = "string", max = 96L)), shape = "GameProperty", 
            type = "structure")), shape = "GamePropertyList", 
            type = "list", max = 16L), IpAddress = structure(logical(0), 
            shape = "IpAddress", type = "string"), Port = structure(logical(0), 
            shape = "PortNumber", type = "integer", max = 60000L, 
            min = 1L), PlayerSessionCreationPolicy = structure(logical(0), 
            shape = "PlayerSessionCreationPolicy", type = "string"), 
        CreatorId = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), GameSessionData = structure(logical(0), 
            shape = "GameSessionData", type = "string", max = 4096L, 
            min = 1L), MatchmakerData = structure(logical(0), 
            shape = "MatchmakerData", type = "string", max = 390000L, 
            min = 1L)), shape = "GameSession", type = "structure")), 
        shape = "GameSessionList", type = "list"), NextToken = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L)), shape = "SearchGameSessionsOutput", type = "structure")
    return(populate(args, shape))
}

start_fleet_actions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+"), Actions = structure(list(structure(logical(0), 
        shape = "FleetAction", type = "string")), shape = "FleetActionList", 
        type = "list", max = 1L, min = 1L)), shape = "StartFleetActionsInput", 
        type = "structure")
    return(populate(args, shape))
}

start_fleet_actions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StartFleetActionsOutput", 
        type = "structure")
    return(populate(args, shape))
}

start_game_session_placement_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlacementId = structure(logical(0), 
        shape = "IdStringModel", type = "string", max = 48L, 
        min = 1L, pattern = "[a-zA-Z0-9-]+"), GameSessionQueueName = structure(logical(0), 
        shape = "GameSessionQueueName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9-]+"), GameProperties = structure(list(structure(list(Key = structure(logical(0), 
        shape = "GamePropertyKey", type = "string", max = 32L), 
        Value = structure(logical(0), shape = "GamePropertyValue", 
            type = "string", max = 96L)), shape = "GameProperty", 
        type = "structure")), shape = "GamePropertyList", type = "list", 
        max = 16L), MaximumPlayerSessionCount = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L), GameSessionName = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), PlayerLatencies = structure(list(structure(list(PlayerId = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), RegionIdentifier = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L), LatencyInMilliseconds = structure(logical(0), 
        shape = "Float", type = "float")), shape = "PlayerLatency", 
        type = "structure")), shape = "PlayerLatencyList", type = "list"), 
        DesiredPlayerSessions = structure(list(structure(list(PlayerId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), PlayerData = structure(logical(0), shape = "PlayerData", 
            type = "string", max = 2048L, min = 1L)), shape = "DesiredPlayerSession", 
            type = "structure")), shape = "DesiredPlayerSessionList", 
            type = "list"), GameSessionData = structure(logical(0), 
            shape = "GameSessionData", type = "string", max = 4096L, 
            min = 1L)), shape = "StartGameSessionPlacementInput", 
        type = "structure")
    return(populate(args, shape))
}

start_game_session_placement_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GameSessionPlacement = structure(list(PlacementId = structure(logical(0), 
        shape = "IdStringModel", type = "string", max = 48L, 
        min = 1L, pattern = "[a-zA-Z0-9-]+"), GameSessionQueueName = structure(logical(0), 
        shape = "GameSessionQueueName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9-]+"), Status = structure(logical(0), 
        shape = "GameSessionPlacementState", type = "string"), 
        GameProperties = structure(list(structure(list(Key = structure(logical(0), 
            shape = "GamePropertyKey", type = "string", max = 32L), 
            Value = structure(logical(0), shape = "GamePropertyValue", 
                type = "string", max = 96L)), shape = "GameProperty", 
            type = "structure")), shape = "GamePropertyList", 
            type = "list", max = 16L), MaximumPlayerSessionCount = structure(logical(0), 
            shape = "WholeNumber", type = "integer", min = 0L), 
        GameSessionName = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), GameSessionId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), GameSessionArn = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), GameSessionRegion = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), PlayerLatencies = structure(list(structure(list(PlayerId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), RegionIdentifier = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), LatencyInMilliseconds = structure(logical(0), 
            shape = "Float", type = "float")), shape = "PlayerLatency", 
            type = "structure")), shape = "PlayerLatencyList", 
            type = "list"), StartTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), IpAddress = structure(logical(0), 
            shape = "IpAddress", type = "string"), Port = structure(logical(0), 
            shape = "PortNumber", type = "integer", max = 60000L, 
            min = 1L), PlacedPlayerSessions = structure(list(structure(list(PlayerId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), PlayerSessionId = structure(logical(0), 
            shape = "PlayerSessionId", type = "string", pattern = "^psess-\\S+")), 
            shape = "PlacedPlayerSession", type = "structure")), 
            shape = "PlacedPlayerSessionList", type = "list"), 
        GameSessionData = structure(logical(0), shape = "GameSessionData", 
            type = "string", max = 4096L, min = 1L), MatchmakerData = structure(logical(0), 
            shape = "MatchmakerData", type = "string", max = 390000L, 
            min = 1L)), shape = "GameSessionPlacement", type = "structure")), 
        shape = "StartGameSessionPlacementOutput", type = "structure")
    return(populate(args, shape))
}

start_match_backfill_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TicketId = structure(logical(0), 
        shape = "MatchmakingIdStringModel", type = "string", 
        max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        ConfigurationName = structure(logical(0), shape = "MatchmakingIdStringModel", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        GameSessionArn = structure(logical(0), shape = "ArnStringModel", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9:/-]+"), 
        Players = structure(list(structure(list(PlayerId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), PlayerAttributes = structure(list(structure(list(S = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), N = structure(logical(0), shape = "DoubleObject", 
            type = "double"), SL = structure(list(structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L)), shape = "StringList", type = "list"), 
            SDM = structure(list(structure(logical(0), shape = "DoubleObject", 
                type = "double")), shape = "StringDoubleMap", 
                type = "map")), shape = "AttributeValue", type = "structure")), 
            shape = "PlayerAttributeMap", type = "map"), Team = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), LatencyInMs = structure(list(structure(logical(0), 
            shape = "PositiveInteger", type = "integer", min = 1L)), 
            shape = "LatencyMap", type = "map")), shape = "Player", 
            type = "structure")), shape = "PlayerList", type = "list")), 
        shape = "StartMatchBackfillInput", type = "structure")
    return(populate(args, shape))
}

start_match_backfill_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MatchmakingTicket = structure(list(TicketId = structure(logical(0), 
        shape = "MatchmakingIdStringModel", type = "string", 
        max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        ConfigurationName = structure(logical(0), shape = "MatchmakingIdStringModel", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        Status = structure(logical(0), shape = "MatchmakingConfigurationStatus", 
            type = "string"), StatusReason = structure(logical(0), 
            shape = "StringModel", type = "string"), StatusMessage = structure(logical(0), 
            shape = "StringModel", type = "string"), StartTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Players = structure(list(structure(list(PlayerId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), PlayerAttributes = structure(list(structure(list(S = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), N = structure(logical(0), shape = "DoubleObject", 
            type = "double"), SL = structure(list(structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L)), shape = "StringList", type = "list"), 
            SDM = structure(list(structure(logical(0), shape = "DoubleObject", 
                type = "double")), shape = "StringDoubleMap", 
                type = "map")), shape = "AttributeValue", type = "structure")), 
            shape = "PlayerAttributeMap", type = "map"), Team = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), LatencyInMs = structure(list(structure(logical(0), 
            shape = "PositiveInteger", type = "integer", min = 1L)), 
            shape = "LatencyMap", type = "map")), shape = "Player", 
            type = "structure")), shape = "PlayerList", type = "list"), 
        GameSessionConnectionInfo = structure(list(GameSessionArn = structure(logical(0), 
            shape = "ArnStringModel", type = "string", max = 256L, 
            min = 1L, pattern = "[a-zA-Z0-9:/-]+"), IpAddress = structure(logical(0), 
            shape = "StringModel", type = "string"), Port = structure(logical(0), 
            shape = "PositiveInteger", type = "integer", min = 1L), 
            MatchedPlayerSessions = structure(list(structure(list(PlayerId = structure(logical(0), 
                shape = "NonZeroAndMaxString", type = "string", 
                max = 1024L, min = 1L), PlayerSessionId = structure(logical(0), 
                shape = "PlayerSessionId", type = "string", pattern = "^psess-\\S+")), 
                shape = "MatchedPlayerSession", type = "structure")), 
                shape = "MatchedPlayerSessionList", type = "list")), 
            shape = "GameSessionConnectionInfo", type = "structure"), 
        EstimatedWaitTime = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L)), shape = "MatchmakingTicket", 
        type = "structure")), shape = "StartMatchBackfillOutput", 
        type = "structure")
    return(populate(args, shape))
}

start_matchmaking_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TicketId = structure(logical(0), 
        shape = "MatchmakingIdStringModel", type = "string", 
        max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        ConfigurationName = structure(logical(0), shape = "MatchmakingIdStringModel", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        Players = structure(list(structure(list(PlayerId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), PlayerAttributes = structure(list(structure(list(S = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), N = structure(logical(0), shape = "DoubleObject", 
            type = "double"), SL = structure(list(structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L)), shape = "StringList", type = "list"), 
            SDM = structure(list(structure(logical(0), shape = "DoubleObject", 
                type = "double")), shape = "StringDoubleMap", 
                type = "map")), shape = "AttributeValue", type = "structure")), 
            shape = "PlayerAttributeMap", type = "map"), Team = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), LatencyInMs = structure(list(structure(logical(0), 
            shape = "PositiveInteger", type = "integer", min = 1L)), 
            shape = "LatencyMap", type = "map")), shape = "Player", 
            type = "structure")), shape = "PlayerList", type = "list")), 
        shape = "StartMatchmakingInput", type = "structure")
    return(populate(args, shape))
}

start_matchmaking_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MatchmakingTicket = structure(list(TicketId = structure(logical(0), 
        shape = "MatchmakingIdStringModel", type = "string", 
        max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        ConfigurationName = structure(logical(0), shape = "MatchmakingIdStringModel", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        Status = structure(logical(0), shape = "MatchmakingConfigurationStatus", 
            type = "string"), StatusReason = structure(logical(0), 
            shape = "StringModel", type = "string"), StatusMessage = structure(logical(0), 
            shape = "StringModel", type = "string"), StartTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Players = structure(list(structure(list(PlayerId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), PlayerAttributes = structure(list(structure(list(S = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), N = structure(logical(0), shape = "DoubleObject", 
            type = "double"), SL = structure(list(structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L)), shape = "StringList", type = "list"), 
            SDM = structure(list(structure(logical(0), shape = "DoubleObject", 
                type = "double")), shape = "StringDoubleMap", 
                type = "map")), shape = "AttributeValue", type = "structure")), 
            shape = "PlayerAttributeMap", type = "map"), Team = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), LatencyInMs = structure(list(structure(logical(0), 
            shape = "PositiveInteger", type = "integer", min = 1L)), 
            shape = "LatencyMap", type = "map")), shape = "Player", 
            type = "structure")), shape = "PlayerList", type = "list"), 
        GameSessionConnectionInfo = structure(list(GameSessionArn = structure(logical(0), 
            shape = "ArnStringModel", type = "string", max = 256L, 
            min = 1L, pattern = "[a-zA-Z0-9:/-]+"), IpAddress = structure(logical(0), 
            shape = "StringModel", type = "string"), Port = structure(logical(0), 
            shape = "PositiveInteger", type = "integer", min = 1L), 
            MatchedPlayerSessions = structure(list(structure(list(PlayerId = structure(logical(0), 
                shape = "NonZeroAndMaxString", type = "string", 
                max = 1024L, min = 1L), PlayerSessionId = structure(logical(0), 
                shape = "PlayerSessionId", type = "string", pattern = "^psess-\\S+")), 
                shape = "MatchedPlayerSession", type = "structure")), 
                shape = "MatchedPlayerSessionList", type = "list")), 
            shape = "GameSessionConnectionInfo", type = "structure"), 
        EstimatedWaitTime = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L)), shape = "MatchmakingTicket", 
        type = "structure")), shape = "StartMatchmakingOutput", 
        type = "structure")
    return(populate(args, shape))
}

stop_fleet_actions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+"), Actions = structure(list(structure(logical(0), 
        shape = "FleetAction", type = "string")), shape = "FleetActionList", 
        type = "list", max = 1L, min = 1L)), shape = "StopFleetActionsInput", 
        type = "structure")
    return(populate(args, shape))
}

stop_fleet_actions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StopFleetActionsOutput", 
        type = "structure")
    return(populate(args, shape))
}

stop_game_session_placement_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlacementId = structure(logical(0), 
        shape = "IdStringModel", type = "string", max = 48L, 
        min = 1L, pattern = "[a-zA-Z0-9-]+")), shape = "StopGameSessionPlacementInput", 
        type = "structure")
    return(populate(args, shape))
}

stop_game_session_placement_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GameSessionPlacement = structure(list(PlacementId = structure(logical(0), 
        shape = "IdStringModel", type = "string", max = 48L, 
        min = 1L, pattern = "[a-zA-Z0-9-]+"), GameSessionQueueName = structure(logical(0), 
        shape = "GameSessionQueueName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9-]+"), Status = structure(logical(0), 
        shape = "GameSessionPlacementState", type = "string"), 
        GameProperties = structure(list(structure(list(Key = structure(logical(0), 
            shape = "GamePropertyKey", type = "string", max = 32L), 
            Value = structure(logical(0), shape = "GamePropertyValue", 
                type = "string", max = 96L)), shape = "GameProperty", 
            type = "structure")), shape = "GamePropertyList", 
            type = "list", max = 16L), MaximumPlayerSessionCount = structure(logical(0), 
            shape = "WholeNumber", type = "integer", min = 0L), 
        GameSessionName = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), GameSessionId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), GameSessionArn = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), GameSessionRegion = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), PlayerLatencies = structure(list(structure(list(PlayerId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), RegionIdentifier = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), LatencyInMilliseconds = structure(logical(0), 
            shape = "Float", type = "float")), shape = "PlayerLatency", 
            type = "structure")), shape = "PlayerLatencyList", 
            type = "list"), StartTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), IpAddress = structure(logical(0), 
            shape = "IpAddress", type = "string"), Port = structure(logical(0), 
            shape = "PortNumber", type = "integer", max = 60000L, 
            min = 1L), PlacedPlayerSessions = structure(list(structure(list(PlayerId = structure(logical(0), 
            shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
            min = 1L), PlayerSessionId = structure(logical(0), 
            shape = "PlayerSessionId", type = "string", pattern = "^psess-\\S+")), 
            shape = "PlacedPlayerSession", type = "structure")), 
            shape = "PlacedPlayerSessionList", type = "list"), 
        GameSessionData = structure(logical(0), shape = "GameSessionData", 
            type = "string", max = 4096L, min = 1L), MatchmakerData = structure(logical(0), 
            shape = "MatchmakerData", type = "string", max = 390000L, 
            min = 1L)), shape = "GameSessionPlacement", type = "structure")), 
        shape = "StopGameSessionPlacementOutput", type = "structure")
    return(populate(args, shape))
}

stop_matchmaking_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TicketId = structure(logical(0), 
        shape = "MatchmakingIdStringModel", type = "string", 
        max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+")), 
        shape = "StopMatchmakingInput", type = "structure")
    return(populate(args, shape))
}

stop_matchmaking_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StopMatchmakingOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AliasId = structure(logical(0), shape = "AliasId", 
        type = "string", pattern = "^alias-\\S+"), Name = structure(logical(0), 
        shape = "NonBlankAndLengthConstraintString", type = "string", 
        max = 1024L, min = 1L, pattern = ".*\\S.*"), Description = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), RoutingStrategy = structure(list(Type = structure(logical(0), 
        shape = "RoutingStrategyType", type = "string"), FleetId = structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+"), 
        Message = structure(logical(0), shape = "FreeText", type = "string")), 
        shape = "RoutingStrategy", type = "structure")), shape = "UpdateAliasInput", 
        type = "structure")
    return(populate(args, shape))
}

update_alias_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Alias = structure(list(AliasId = structure(logical(0), 
        shape = "AliasId", type = "string", pattern = "^alias-\\S+"), 
        Name = structure(logical(0), shape = "NonBlankAndLengthConstraintString", 
            type = "string", max = 1024L, min = 1L, pattern = ".*\\S.*"), 
        AliasArn = structure(logical(0), shape = "ArnStringModel", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9:/-]+"), 
        Description = structure(logical(0), shape = "FreeText", 
            type = "string"), RoutingStrategy = structure(list(Type = structure(logical(0), 
            shape = "RoutingStrategyType", type = "string"), 
            FleetId = structure(logical(0), shape = "FleetId", 
                type = "string", pattern = "^fleet-\\S+"), Message = structure(logical(0), 
                shape = "FreeText", type = "string")), shape = "RoutingStrategy", 
            type = "structure"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastUpdatedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Alias", 
        type = "structure")), shape = "UpdateAliasOutput", type = "structure")
    return(populate(args, shape))
}

update_build_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BuildId = structure(logical(0), shape = "BuildId", 
        type = "string", pattern = "^build-\\S+"), Name = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), Version = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L)), shape = "UpdateBuildInput", 
        type = "structure")
    return(populate(args, shape))
}

update_build_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Build = structure(list(BuildId = structure(logical(0), 
        shape = "BuildId", type = "string", pattern = "^build-\\S+"), 
        Name = structure(logical(0), shape = "FreeText", type = "string"), 
        Version = structure(logical(0), shape = "FreeText", type = "string"), 
        Status = structure(logical(0), shape = "BuildStatus", 
            type = "string"), SizeOnDisk = structure(logical(0), 
            shape = "PositiveLong", type = "long", min = 1L), 
        OperatingSystem = structure(logical(0), shape = "OperatingSystem", 
            type = "string"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Build", 
        type = "structure")), shape = "UpdateBuildOutput", type = "structure")
    return(populate(args, shape))
}

update_fleet_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+"), Name = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), Description = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L), NewGameSessionProtectionPolicy = structure(logical(0), 
        shape = "ProtectionPolicy", type = "string"), ResourceCreationLimitPolicy = structure(list(NewGameSessionsPerCreator = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L), PolicyPeriodInMinutes = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L)), 
        shape = "ResourceCreationLimitPolicy", type = "structure"), 
        MetricGroups = structure(list(structure(logical(0), shape = "MetricGroup", 
            type = "string", max = 255L, min = 1L)), shape = "MetricGroupList", 
            type = "list", max = 1L)), shape = "UpdateFleetAttributesInput", 
        type = "structure")
    return(populate(args, shape))
}

update_fleet_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+")), shape = "UpdateFleetAttributesOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_fleet_capacity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+"), DesiredInstances = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L), MinSize = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L), MaxSize = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L)), 
        shape = "UpdateFleetCapacityInput", type = "structure")
    return(populate(args, shape))
}

update_fleet_capacity_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+")), shape = "UpdateFleetCapacityOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_fleet_port_settings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+"), InboundPermissionAuthorizations = structure(list(structure(list(FromPort = structure(logical(0), 
        shape = "PortNumber", type = "integer", max = 60000L, 
        min = 1L), ToPort = structure(logical(0), shape = "PortNumber", 
        type = "integer", max = 60000L, min = 1L), IpRange = structure(logical(0), 
        shape = "NonBlankString", type = "string", pattern = "[^\\s]+"), 
        Protocol = structure(logical(0), shape = "IpProtocol", 
            type = "string")), shape = "IpPermission", type = "structure")), 
        shape = "IpPermissionsList", type = "list", max = 50L), 
        InboundPermissionRevocations = structure(list(structure(list(FromPort = structure(logical(0), 
            shape = "PortNumber", type = "integer", max = 60000L, 
            min = 1L), ToPort = structure(logical(0), shape = "PortNumber", 
            type = "integer", max = 60000L, min = 1L), IpRange = structure(logical(0), 
            shape = "NonBlankString", type = "string", pattern = "[^\\s]+"), 
            Protocol = structure(logical(0), shape = "IpProtocol", 
                type = "string")), shape = "IpPermission", type = "structure")), 
            shape = "IpPermissionsList", type = "list", max = 50L)), 
        shape = "UpdateFleetPortSettingsInput", type = "structure")
    return(populate(args, shape))
}

update_fleet_port_settings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+")), shape = "UpdateFleetPortSettingsOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_game_session_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GameSessionId = structure(logical(0), 
        shape = "ArnStringModel", type = "string", max = 256L, 
        min = 1L, pattern = "[a-zA-Z0-9:/-]+"), MaximumPlayerSessionCount = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L), Name = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), PlayerSessionCreationPolicy = structure(logical(0), 
        shape = "PlayerSessionCreationPolicy", type = "string"), 
        ProtectionPolicy = structure(logical(0), shape = "ProtectionPolicy", 
            type = "string")), shape = "UpdateGameSessionInput", 
        type = "structure")
    return(populate(args, shape))
}

update_game_session_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GameSession = structure(list(GameSessionId = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), Name = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L), FleetId = structure(logical(0), 
        shape = "FleetId", type = "string", pattern = "^fleet-\\S+"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), TerminationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), CurrentPlayerSessionCount = structure(logical(0), 
            shape = "WholeNumber", type = "integer", min = 0L), 
        MaximumPlayerSessionCount = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L), Status = structure(logical(0), 
            shape = "GameSessionStatus", type = "string"), StatusReason = structure(logical(0), 
            shape = "GameSessionStatusReason", type = "string"), 
        GameProperties = structure(list(structure(list(Key = structure(logical(0), 
            shape = "GamePropertyKey", type = "string", max = 32L), 
            Value = structure(logical(0), shape = "GamePropertyValue", 
                type = "string", max = 96L)), shape = "GameProperty", 
            type = "structure")), shape = "GamePropertyList", 
            type = "list", max = 16L), IpAddress = structure(logical(0), 
            shape = "IpAddress", type = "string"), Port = structure(logical(0), 
            shape = "PortNumber", type = "integer", max = 60000L, 
            min = 1L), PlayerSessionCreationPolicy = structure(logical(0), 
            shape = "PlayerSessionCreationPolicy", type = "string"), 
        CreatorId = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), GameSessionData = structure(logical(0), 
            shape = "GameSessionData", type = "string", max = 4096L, 
            min = 1L), MatchmakerData = structure(logical(0), 
            shape = "MatchmakerData", type = "string", max = 390000L, 
            min = 1L)), shape = "GameSession", type = "structure")), 
        shape = "UpdateGameSessionOutput", type = "structure")
    return(populate(args, shape))
}

update_game_session_queue_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "GameSessionQueueName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9-]+"), 
        TimeoutInSeconds = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L), PlayerLatencyPolicies = structure(list(structure(list(MaximumIndividualPlayerLatencyMilliseconds = structure(logical(0), 
            shape = "WholeNumber", type = "integer", min = 0L), 
            PolicyDurationSeconds = structure(logical(0), shape = "WholeNumber", 
                type = "integer", min = 0L)), shape = "PlayerLatencyPolicy", 
            type = "structure")), shape = "PlayerLatencyPolicyList", 
            type = "list"), Destinations = structure(list(structure(list(DestinationArn = structure(logical(0), 
            shape = "ArnStringModel", type = "string", max = 256L, 
            min = 1L, pattern = "[a-zA-Z0-9:/-]+")), shape = "GameSessionQueueDestination", 
            type = "structure")), shape = "GameSessionQueueDestinationList", 
            type = "list")), shape = "UpdateGameSessionQueueInput", 
        type = "structure")
    return(populate(args, shape))
}

update_game_session_queue_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GameSessionQueue = structure(list(Name = structure(logical(0), 
        shape = "GameSessionQueueName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9-]+"), GameSessionQueueArn = structure(logical(0), 
        shape = "ArnStringModel", type = "string", max = 256L, 
        min = 1L, pattern = "[a-zA-Z0-9:/-]+"), TimeoutInSeconds = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L), PlayerLatencyPolicies = structure(list(structure(list(MaximumIndividualPlayerLatencyMilliseconds = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L), PolicyDurationSeconds = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L)), 
        shape = "PlayerLatencyPolicy", type = "structure")), 
        shape = "PlayerLatencyPolicyList", type = "list"), Destinations = structure(list(structure(list(DestinationArn = structure(logical(0), 
        shape = "ArnStringModel", type = "string", max = 256L, 
        min = 1L, pattern = "[a-zA-Z0-9:/-]+")), shape = "GameSessionQueueDestination", 
        type = "structure")), shape = "GameSessionQueueDestinationList", 
        type = "list")), shape = "GameSessionQueue", type = "structure")), 
        shape = "UpdateGameSessionQueueOutput", type = "structure")
    return(populate(args, shape))
}

update_matchmaking_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "MatchmakingIdStringModel", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        Description = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), GameSessionQueueArns = structure(list(structure(logical(0), 
            shape = "ArnStringModel", type = "string", max = 256L, 
            min = 1L, pattern = "[a-zA-Z0-9:/-]+")), shape = "QueueArnsList", 
            type = "list"), RequestTimeoutSeconds = structure(logical(0), 
            shape = "MatchmakingRequestTimeoutInteger", type = "integer", 
            max = 43200L, min = 1L), AcceptanceTimeoutSeconds = structure(logical(0), 
            shape = "MatchmakingAcceptanceTimeoutInteger", type = "integer", 
            max = 600L, min = 1L), AcceptanceRequired = structure(logical(0), 
            shape = "BooleanModel", type = "boolean"), RuleSetName = structure(logical(0), 
            shape = "MatchmakingIdStringModel", type = "string", 
            max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        NotificationTarget = structure(logical(0), shape = "SnsArnStringModel", 
            type = "string", max = 300L, min = 0L, pattern = "[a-zA-Z0-9:_/-]*"), 
        AdditionalPlayerCount = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L), CustomEventData = structure(logical(0), 
            shape = "CustomEventData", type = "string", max = 256L, 
            min = 0L), GameProperties = structure(list(structure(list(Key = structure(logical(0), 
            shape = "GamePropertyKey", type = "string", max = 32L), 
            Value = structure(logical(0), shape = "GamePropertyValue", 
                type = "string", max = 96L)), shape = "GameProperty", 
            type = "structure")), shape = "GamePropertyList", 
            type = "list", max = 16L), GameSessionData = structure(logical(0), 
            shape = "GameSessionData", type = "string", max = 4096L, 
            min = 1L)), shape = "UpdateMatchmakingConfigurationInput", 
        type = "structure")
    return(populate(args, shape))
}

update_matchmaking_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Configuration = structure(list(Name = structure(logical(0), 
        shape = "MatchmakingIdStringModel", type = "string", 
        max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        Description = structure(logical(0), shape = "NonZeroAndMaxString", 
            type = "string", max = 1024L, min = 1L), GameSessionQueueArns = structure(list(structure(logical(0), 
            shape = "ArnStringModel", type = "string", max = 256L, 
            min = 1L, pattern = "[a-zA-Z0-9:/-]+")), shape = "QueueArnsList", 
            type = "list"), RequestTimeoutSeconds = structure(logical(0), 
            shape = "MatchmakingRequestTimeoutInteger", type = "integer", 
            max = 43200L, min = 1L), AcceptanceTimeoutSeconds = structure(logical(0), 
            shape = "MatchmakingAcceptanceTimeoutInteger", type = "integer", 
            max = 600L, min = 1L), AcceptanceRequired = structure(logical(0), 
            shape = "BooleanModel", type = "boolean"), RuleSetName = structure(logical(0), 
            shape = "MatchmakingIdStringModel", type = "string", 
            max = 128L, min = 1L, pattern = "[a-zA-Z0-9-\\.]+"), 
        NotificationTarget = structure(logical(0), shape = "SnsArnStringModel", 
            type = "string", max = 300L, min = 0L, pattern = "[a-zA-Z0-9:_/-]*"), 
        AdditionalPlayerCount = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L), CustomEventData = structure(logical(0), 
            shape = "CustomEventData", type = "string", max = 256L, 
            min = 0L), CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), GameProperties = structure(list(structure(list(Key = structure(logical(0), 
            shape = "GamePropertyKey", type = "string", max = 32L), 
            Value = structure(logical(0), shape = "GamePropertyValue", 
                type = "string", max = 96L)), shape = "GameProperty", 
            type = "structure")), shape = "GamePropertyList", 
            type = "list", max = 16L), GameSessionData = structure(logical(0), 
            shape = "GameSessionData", type = "string", max = 4096L, 
            min = 1L)), shape = "MatchmakingConfiguration", type = "structure")), 
        shape = "UpdateMatchmakingConfigurationOutput", type = "structure")
    return(populate(args, shape))
}

update_runtime_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetId", 
        type = "string", pattern = "^fleet-\\S+"), RuntimeConfiguration = structure(list(ServerProcesses = structure(list(structure(list(LaunchPath = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), Parameters = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L), ConcurrentExecutions = structure(logical(0), 
        shape = "PositiveInteger", type = "integer", min = 1L)), 
        shape = "ServerProcess", type = "structure")), shape = "ServerProcessList", 
        type = "list", max = 50L, min = 1L), MaxConcurrentGameSessionActivations = structure(logical(0), 
        shape = "MaxConcurrentGameSessionActivations", type = "integer", 
        max = 2147483647L, min = 1L), GameSessionActivationTimeoutSeconds = structure(logical(0), 
        shape = "GameSessionActivationTimeoutSeconds", type = "integer", 
        max = 600L, min = 1L)), shape = "RuntimeConfiguration", 
        type = "structure")), shape = "UpdateRuntimeConfigurationInput", 
        type = "structure")
    return(populate(args, shape))
}

update_runtime_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuntimeConfiguration = structure(list(ServerProcesses = structure(list(structure(list(LaunchPath = structure(logical(0), 
        shape = "NonZeroAndMaxString", type = "string", max = 1024L, 
        min = 1L), Parameters = structure(logical(0), shape = "NonZeroAndMaxString", 
        type = "string", max = 1024L, min = 1L), ConcurrentExecutions = structure(logical(0), 
        shape = "PositiveInteger", type = "integer", min = 1L)), 
        shape = "ServerProcess", type = "structure")), shape = "ServerProcessList", 
        type = "list", max = 50L, min = 1L), MaxConcurrentGameSessionActivations = structure(logical(0), 
        shape = "MaxConcurrentGameSessionActivations", type = "integer", 
        max = 2147483647L, min = 1L), GameSessionActivationTimeoutSeconds = structure(logical(0), 
        shape = "GameSessionActivationTimeoutSeconds", type = "integer", 
        max = 600L, min = 1L)), shape = "RuntimeConfiguration", 
        type = "structure")), shape = "UpdateRuntimeConfigurationOutput", 
        type = "structure")
    return(populate(args, shape))
}

validate_matchmaking_rule_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleSetBody = structure(logical(0), 
        shape = "RuleSetBody", type = "string", max = 65535L, 
        min = 1L)), shape = "ValidateMatchmakingRuleSetInput", 
        type = "structure")
    return(populate(args, shape))
}

validate_matchmaking_rule_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Valid = structure(logical(0), shape = "BooleanModel", 
        type = "boolean")), shape = "ValidateMatchmakingRuleSetOutput", 
        type = "structure")
    return(populate(args, shape))
}
