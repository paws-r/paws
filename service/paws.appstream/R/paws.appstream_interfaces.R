associate_fleet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetName = structure(logical(0), 
        shape = "String", type = "string", min = 1L), StackName = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "AssociateFleetRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_fleet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AssociateFleetResult", 
        type = "structure")
    return(populate(args, shape))
}

copy_image_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceImageName = structure(logical(0), 
        shape = "Name", type = "string", pattern = "^[a-zA-Z0-9][a-zA-Z0-9_.-]{0,100}$"), 
        DestinationImageName = structure(logical(0), shape = "Name", 
            type = "string", pattern = "^[a-zA-Z0-9][a-zA-Z0-9_.-]{0,100}$"), 
        DestinationRegion = structure(logical(0), shape = "RegionName", 
            type = "string", max = 32L, min = 1L), DestinationImageDescription = structure(logical(0), 
            shape = "Description", type = "string", max = 256L)), 
        shape = "CopyImageRequest", type = "structure")
    return(populate(args, shape))
}

copy_image_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DestinationImageName = structure(logical(0), 
        shape = "Name", type = "string", pattern = "^[a-zA-Z0-9][a-zA-Z0-9_.-]{0,100}$")), 
        shape = "CopyImageResponse", type = "structure")
    return(populate(args, shape))
}

create_directory_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryName = structure(logical(0), 
        shape = "DirectoryName", type = "string"), OrganizationalUnitDistinguishedNames = structure(list(structure(logical(0), 
        shape = "OrganizationalUnitDistinguishedName", type = "string", 
        max = 2000L)), shape = "OrganizationalUnitDistinguishedNamesList", 
        type = "list"), ServiceAccountCredentials = structure(list(AccountName = structure(logical(0), 
        shape = "AccountName", type = "string", min = 1L, sensitive = TRUE), 
        AccountPassword = structure(logical(0), shape = "AccountPassword", 
            type = "string", max = 127L, min = 1L, sensitive = TRUE)), 
        shape = "ServiceAccountCredentials", type = "structure")), 
        shape = "CreateDirectoryConfigRequest", type = "structure")
    return(populate(args, shape))
}

create_directory_config_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryConfig = structure(list(DirectoryName = structure(logical(0), 
        shape = "DirectoryName", type = "string"), OrganizationalUnitDistinguishedNames = structure(list(structure(logical(0), 
        shape = "OrganizationalUnitDistinguishedName", type = "string", 
        max = 2000L)), shape = "OrganizationalUnitDistinguishedNamesList", 
        type = "list"), ServiceAccountCredentials = structure(list(AccountName = structure(logical(0), 
        shape = "AccountName", type = "string", min = 1L, sensitive = TRUE), 
        AccountPassword = structure(logical(0), shape = "AccountPassword", 
            type = "string", max = 127L, min = 1L, sensitive = TRUE)), 
        shape = "ServiceAccountCredentials", type = "structure"), 
        CreatedTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp")), shape = "DirectoryConfig", 
        type = "structure")), shape = "CreateDirectoryConfigResult", 
        type = "structure")
    return(populate(args, shape))
}

create_fleet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "Name", 
        type = "string", pattern = "^[a-zA-Z0-9][a-zA-Z0-9_.-]{0,100}$"), 
        ImageName = structure(logical(0), shape = "String", type = "string", 
            min = 1L), ImageArn = structure(logical(0), shape = "Arn", 
            type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        InstanceType = structure(logical(0), shape = "String", 
            type = "string", min = 1L), FleetType = structure(logical(0), 
            shape = "FleetType", type = "string"), ComputeCapacity = structure(list(DesiredInstances = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "ComputeCapacity", 
            type = "structure"), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SubnetIdList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SecurityGroupIdList", 
            type = "list", max = 5L)), shape = "VpcConfig", type = "structure"), 
        MaxUserDurationInSeconds = structure(logical(0), shape = "Integer", 
            type = "integer"), DisconnectTimeoutInSeconds = structure(logical(0), 
            shape = "Integer", type = "integer"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 256L), 
        DisplayName = structure(logical(0), shape = "DisplayName", 
            type = "string", max = 100L), EnableDefaultInternetAccess = structure(logical(0), 
            shape = "BooleanObject", type = "boolean"), DomainJoinInfo = structure(list(DirectoryName = structure(logical(0), 
            shape = "DirectoryName", type = "string"), OrganizationalUnitDistinguishedName = structure(logical(0), 
            shape = "OrganizationalUnitDistinguishedName", type = "string", 
            max = 2000L)), shape = "DomainJoinInfo", type = "structure")), 
        shape = "CreateFleetRequest", type = "structure")
    return(populate(args, shape))
}

create_fleet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Fleet = structure(list(Arn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        Name = structure(logical(0), shape = "String", type = "string", 
            min = 1L), DisplayName = structure(logical(0), shape = "String", 
            type = "string", min = 1L), Description = structure(logical(0), 
            shape = "String", type = "string", min = 1L), ImageName = structure(logical(0), 
            shape = "String", type = "string", min = 1L), ImageArn = structure(logical(0), 
            shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        InstanceType = structure(logical(0), shape = "String", 
            type = "string", min = 1L), FleetType = structure(logical(0), 
            shape = "FleetType", type = "string"), ComputeCapacityStatus = structure(list(Desired = structure(logical(0), 
            shape = "Integer", type = "integer"), Running = structure(logical(0), 
            shape = "Integer", type = "integer"), InUse = structure(logical(0), 
            shape = "Integer", type = "integer"), Available = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "ComputeCapacityStatus", 
            type = "structure"), MaxUserDurationInSeconds = structure(logical(0), 
            shape = "Integer", type = "integer"), DisconnectTimeoutInSeconds = structure(logical(0), 
            shape = "Integer", type = "integer"), State = structure(logical(0), 
            shape = "FleetState", type = "string"), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SubnetIdList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SecurityGroupIdList", 
            type = "list", max = 5L)), shape = "VpcConfig", type = "structure"), 
        CreatedTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), FleetErrors = structure(list(structure(list(ErrorCode = structure(logical(0), 
            shape = "FleetErrorCode", type = "string"), ErrorMessage = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "FleetError", 
            type = "structure")), shape = "FleetErrors", type = "list"), 
        EnableDefaultInternetAccess = structure(logical(0), shape = "BooleanObject", 
            type = "boolean"), DomainJoinInfo = structure(list(DirectoryName = structure(logical(0), 
            shape = "DirectoryName", type = "string"), OrganizationalUnitDistinguishedName = structure(logical(0), 
            shape = "OrganizationalUnitDistinguishedName", type = "string", 
            max = 2000L)), shape = "DomainJoinInfo", type = "structure")), 
        shape = "Fleet", type = "structure")), shape = "CreateFleetResult", 
        type = "structure")
    return(populate(args, shape))
}

create_image_builder_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "Name", 
        type = "string", pattern = "^[a-zA-Z0-9][a-zA-Z0-9_.-]{0,100}$"), 
        ImageName = structure(logical(0), shape = "String", type = "string", 
            min = 1L), ImageArn = structure(logical(0), shape = "Arn", 
            type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        InstanceType = structure(logical(0), shape = "String", 
            type = "string", min = 1L), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 256L), 
        DisplayName = structure(logical(0), shape = "DisplayName", 
            type = "string", max = 100L), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SubnetIdList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SecurityGroupIdList", 
            type = "list", max = 5L)), shape = "VpcConfig", type = "structure"), 
        EnableDefaultInternetAccess = structure(logical(0), shape = "BooleanObject", 
            type = "boolean"), DomainJoinInfo = structure(list(DirectoryName = structure(logical(0), 
            shape = "DirectoryName", type = "string"), OrganizationalUnitDistinguishedName = structure(logical(0), 
            shape = "OrganizationalUnitDistinguishedName", type = "string", 
            max = 2000L)), shape = "DomainJoinInfo", type = "structure"), 
        AppstreamAgentVersion = structure(logical(0), shape = "AppstreamAgentVersion", 
            type = "string", max = 100L, min = 1L)), shape = "CreateImageBuilderRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_image_builder_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImageBuilder = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string", min = 1L), Arn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        ImageArn = structure(logical(0), shape = "Arn", type = "string", 
            pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", min = 1L), DisplayName = structure(logical(0), 
            shape = "String", type = "string", min = 1L), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SubnetIdList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SecurityGroupIdList", 
            type = "list", max = 5L)), shape = "VpcConfig", type = "structure"), 
        InstanceType = structure(logical(0), shape = "String", 
            type = "string", min = 1L), Platform = structure(logical(0), 
            shape = "PlatformType", type = "string"), State = structure(logical(0), 
            shape = "ImageBuilderState", type = "string"), StateChangeReason = structure(list(Code = structure(logical(0), 
            shape = "ImageBuilderStateChangeReasonCode", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                type = "string", min = 1L)), shape = "ImageBuilderStateChangeReason", 
            type = "structure"), CreatedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EnableDefaultInternetAccess = structure(logical(0), 
            shape = "BooleanObject", type = "boolean"), DomainJoinInfo = structure(list(DirectoryName = structure(logical(0), 
            shape = "DirectoryName", type = "string"), OrganizationalUnitDistinguishedName = structure(logical(0), 
            shape = "OrganizationalUnitDistinguishedName", type = "string", 
            max = 2000L)), shape = "DomainJoinInfo", type = "structure"), 
        ImageBuilderErrors = structure(list(structure(list(ErrorCode = structure(logical(0), 
            shape = "FleetErrorCode", type = "string"), ErrorMessage = structure(logical(0), 
            shape = "String", type = "string", min = 1L), ErrorTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "ResourceError", 
            type = "structure")), shape = "ResourceErrors", type = "list"), 
        AppstreamAgentVersion = structure(logical(0), shape = "AppstreamAgentVersion", 
            type = "string", max = 100L, min = 1L)), shape = "ImageBuilder", 
        type = "structure")), shape = "CreateImageBuilderResult", 
        type = "structure")
    return(populate(args, shape))
}

create_image_builder_streaming_url_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string", min = 1L), Validity = structure(logical(0), 
        shape = "Long", type = "long")), shape = "CreateImageBuilderStreamingURLRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_image_builder_streaming_url_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamingURL = structure(logical(0), 
        shape = "String", type = "string", min = 1L), Expires = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "CreateImageBuilderStreamingURLResult", 
        type = "structure")
    return(populate(args, shape))
}

create_stack_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "Name", 
        type = "string", pattern = "^[a-zA-Z0-9][a-zA-Z0-9_.-]{0,100}$"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 256L), DisplayName = structure(logical(0), 
            shape = "DisplayName", type = "string", max = 100L), 
        StorageConnectors = structure(list(structure(list(ConnectorType = structure(logical(0), 
            shape = "StorageConnectorType", type = "string"), 
            ResourceIdentifier = structure(logical(0), shape = "ResourceIdentifier", 
                type = "string", min = 1L), Domains = structure(list(structure(logical(0), 
                shape = "Domain", type = "string", max = 64L)), 
                shape = "DomainList", type = "list", max = 10L)), 
            shape = "StorageConnector", type = "structure")), 
            shape = "StorageConnectorList", type = "list"), RedirectURL = structure(logical(0), 
            shape = "RedirectURL", type = "string", max = 1000L), 
        FeedbackURL = structure(logical(0), shape = "FeedbackURL", 
            type = "string", max = 1000L), UserSettings = structure(list(structure(list(Action = structure(logical(0), 
            shape = "Action", type = "string"), Permission = structure(logical(0), 
            shape = "Permission", type = "string")), shape = "UserSetting", 
            type = "structure")), shape = "UserSettingList", 
            type = "list", min = 1L), ApplicationSettings = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SettingsGroup = structure(logical(0), 
            shape = "SettingsGroup", type = "string", max = 100L)), 
            shape = "ApplicationSettings", type = "structure")), 
        shape = "CreateStackRequest", type = "structure")
    return(populate(args, shape))
}

create_stack_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Stack = structure(list(Arn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        Name = structure(logical(0), shape = "String", type = "string", 
            min = 1L), Description = structure(logical(0), shape = "String", 
            type = "string", min = 1L), DisplayName = structure(logical(0), 
            shape = "String", type = "string", min = 1L), CreatedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), StorageConnectors = structure(list(structure(list(ConnectorType = structure(logical(0), 
            shape = "StorageConnectorType", type = "string"), 
            ResourceIdentifier = structure(logical(0), shape = "ResourceIdentifier", 
                type = "string", min = 1L), Domains = structure(list(structure(logical(0), 
                shape = "Domain", type = "string", max = 64L)), 
                shape = "DomainList", type = "list", max = 10L)), 
            shape = "StorageConnector", type = "structure")), 
            shape = "StorageConnectorList", type = "list"), RedirectURL = structure(logical(0), 
            shape = "RedirectURL", type = "string", max = 1000L), 
        FeedbackURL = structure(logical(0), shape = "FeedbackURL", 
            type = "string", max = 1000L), StackErrors = structure(list(structure(list(ErrorCode = structure(logical(0), 
            shape = "StackErrorCode", type = "string"), ErrorMessage = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "StackError", 
            type = "structure")), shape = "StackErrors", type = "list"), 
        UserSettings = structure(list(structure(list(Action = structure(logical(0), 
            shape = "Action", type = "string"), Permission = structure(logical(0), 
            shape = "Permission", type = "string")), shape = "UserSetting", 
            type = "structure")), shape = "UserSettingList", 
            type = "list", min = 1L), ApplicationSettings = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SettingsGroup = structure(logical(0), 
            shape = "SettingsGroup", type = "string", max = 100L), 
            S3BucketName = structure(logical(0), shape = "String", 
                type = "string", min = 1L)), shape = "ApplicationSettingsResponse", 
            type = "structure")), shape = "Stack", type = "structure")), 
        shape = "CreateStackResult", type = "structure")
    return(populate(args, shape))
}

create_streaming_url_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackName = structure(logical(0), 
        shape = "String", type = "string", min = 1L), FleetName = structure(logical(0), 
        shape = "String", type = "string", min = 1L), UserId = structure(logical(0), 
        shape = "StreamingUrlUserId", type = "string", max = 32L, 
        min = 2L, pattern = "[\\w+=,.@-]*"), ApplicationId = structure(logical(0), 
        shape = "String", type = "string", min = 1L), Validity = structure(logical(0), 
        shape = "Long", type = "long"), SessionContext = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "CreateStreamingURLRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_streaming_url_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamingURL = structure(logical(0), 
        shape = "String", type = "string", min = 1L), Expires = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "CreateStreamingURLResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_directory_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryName = structure(logical(0), 
        shape = "DirectoryName", type = "string")), shape = "DeleteDirectoryConfigRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_directory_config_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteDirectoryConfigResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_fleet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string", min = 1L)), shape = "DeleteFleetRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_fleet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteFleetResult", type = "structure")
    return(populate(args, shape))
}

delete_image_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "Name", 
        type = "string", pattern = "^[a-zA-Z0-9][a-zA-Z0-9_.-]{0,100}$")), 
        shape = "DeleteImageRequest", type = "structure")
    return(populate(args, shape))
}

delete_image_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Image = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string", min = 1L), Arn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        BaseImageArn = structure(logical(0), shape = "Arn", type = "string", 
            pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        DisplayName = structure(logical(0), shape = "String", 
            type = "string", min = 1L), State = structure(logical(0), 
            shape = "ImageState", type = "string"), Visibility = structure(logical(0), 
            shape = "VisibilityType", type = "string"), ImageBuilderSupported = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Platform = structure(logical(0), 
            shape = "PlatformType", type = "string"), Description = structure(logical(0), 
            shape = "String", type = "string", min = 1L), StateChangeReason = structure(list(Code = structure(logical(0), 
            shape = "ImageStateChangeReasonCode", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                type = "string", min = 1L)), shape = "ImageStateChangeReason", 
            type = "structure"), Applications = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string", min = 1L), DisplayName = structure(logical(0), 
            shape = "String", type = "string", min = 1L), IconURL = structure(logical(0), 
            shape = "String", type = "string", min = 1L), LaunchPath = structure(logical(0), 
            shape = "String", type = "string", min = 1L), LaunchParameters = structure(logical(0), 
            shape = "String", type = "string", min = 1L), Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Metadata = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "Metadata", 
            type = "map")), shape = "Application", type = "structure")), 
            shape = "Applications", type = "list"), CreatedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), PublicBaseImageReleasedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), AppstreamAgentVersion = structure(logical(0), 
            shape = "AppstreamAgentVersion", type = "string", 
            max = 100L, min = 1L), ImagePermissions = structure(list(AllowFleet = structure(logical(0), 
            shape = "BooleanObject", type = "boolean", locationName = "allowFleet"), 
            AllowImageBuilder = structure(logical(0), shape = "BooleanObject", 
                type = "boolean", locationName = "allowImageBuilder")), 
            shape = "ImagePermissions", type = "structure")), 
        shape = "Image", type = "structure")), shape = "DeleteImageResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_image_builder_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "Name", 
        type = "string", pattern = "^[a-zA-Z0-9][a-zA-Z0-9_.-]{0,100}$")), 
        shape = "DeleteImageBuilderRequest", type = "structure")
    return(populate(args, shape))
}

delete_image_builder_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImageBuilder = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string", min = 1L), Arn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        ImageArn = structure(logical(0), shape = "Arn", type = "string", 
            pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", min = 1L), DisplayName = structure(logical(0), 
            shape = "String", type = "string", min = 1L), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SubnetIdList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SecurityGroupIdList", 
            type = "list", max = 5L)), shape = "VpcConfig", type = "structure"), 
        InstanceType = structure(logical(0), shape = "String", 
            type = "string", min = 1L), Platform = structure(logical(0), 
            shape = "PlatformType", type = "string"), State = structure(logical(0), 
            shape = "ImageBuilderState", type = "string"), StateChangeReason = structure(list(Code = structure(logical(0), 
            shape = "ImageBuilderStateChangeReasonCode", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                type = "string", min = 1L)), shape = "ImageBuilderStateChangeReason", 
            type = "structure"), CreatedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EnableDefaultInternetAccess = structure(logical(0), 
            shape = "BooleanObject", type = "boolean"), DomainJoinInfo = structure(list(DirectoryName = structure(logical(0), 
            shape = "DirectoryName", type = "string"), OrganizationalUnitDistinguishedName = structure(logical(0), 
            shape = "OrganizationalUnitDistinguishedName", type = "string", 
            max = 2000L)), shape = "DomainJoinInfo", type = "structure"), 
        ImageBuilderErrors = structure(list(structure(list(ErrorCode = structure(logical(0), 
            shape = "FleetErrorCode", type = "string"), ErrorMessage = structure(logical(0), 
            shape = "String", type = "string", min = 1L), ErrorTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "ResourceError", 
            type = "structure")), shape = "ResourceErrors", type = "list"), 
        AppstreamAgentVersion = structure(logical(0), shape = "AppstreamAgentVersion", 
            type = "string", max = 100L, min = 1L)), shape = "ImageBuilder", 
        type = "structure")), shape = "DeleteImageBuilderResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_image_permissions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "Name", 
        type = "string", pattern = "^[a-zA-Z0-9][a-zA-Z0-9_.-]{0,100}$"), 
        SharedAccountId = structure(logical(0), shape = "AwsAccountId", 
            type = "string", pattern = "^\\d+$")), shape = "DeleteImagePermissionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_image_permissions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteImagePermissionsResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_stack_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string", min = 1L)), shape = "DeleteStackRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_stack_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteStackResult", type = "structure")
    return(populate(args, shape))
}

describe_directory_configs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryNames = structure(list(structure(logical(0), 
        shape = "DirectoryName", type = "string")), shape = "DirectoryNameList", 
        type = "list"), MaxResults = structure(logical(0), shape = "Integer", 
        type = "integer"), NextToken = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "DescribeDirectoryConfigsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_directory_configs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryConfigs = structure(list(structure(list(DirectoryName = structure(logical(0), 
        shape = "DirectoryName", type = "string"), OrganizationalUnitDistinguishedNames = structure(list(structure(logical(0), 
        shape = "OrganizationalUnitDistinguishedName", type = "string", 
        max = 2000L)), shape = "OrganizationalUnitDistinguishedNamesList", 
        type = "list"), ServiceAccountCredentials = structure(list(AccountName = structure(logical(0), 
        shape = "AccountName", type = "string", min = 1L, sensitive = TRUE), 
        AccountPassword = structure(logical(0), shape = "AccountPassword", 
            type = "string", max = 127L, min = 1L, sensitive = TRUE)), 
        shape = "ServiceAccountCredentials", type = "structure"), 
        CreatedTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp")), shape = "DirectoryConfig", 
        type = "structure")), shape = "DirectoryConfigList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string", min = 1L)), shape = "DescribeDirectoryConfigsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_fleets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Names = structure(list(structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "StringList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string", min = 1L)), shape = "DescribeFleetsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_fleets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Fleets = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        Name = structure(logical(0), shape = "String", type = "string", 
            min = 1L), DisplayName = structure(logical(0), shape = "String", 
            type = "string", min = 1L), Description = structure(logical(0), 
            shape = "String", type = "string", min = 1L), ImageName = structure(logical(0), 
            shape = "String", type = "string", min = 1L), ImageArn = structure(logical(0), 
            shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        InstanceType = structure(logical(0), shape = "String", 
            type = "string", min = 1L), FleetType = structure(logical(0), 
            shape = "FleetType", type = "string"), ComputeCapacityStatus = structure(list(Desired = structure(logical(0), 
            shape = "Integer", type = "integer"), Running = structure(logical(0), 
            shape = "Integer", type = "integer"), InUse = structure(logical(0), 
            shape = "Integer", type = "integer"), Available = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "ComputeCapacityStatus", 
            type = "structure"), MaxUserDurationInSeconds = structure(logical(0), 
            shape = "Integer", type = "integer"), DisconnectTimeoutInSeconds = structure(logical(0), 
            shape = "Integer", type = "integer"), State = structure(logical(0), 
            shape = "FleetState", type = "string"), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SubnetIdList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SecurityGroupIdList", 
            type = "list", max = 5L)), shape = "VpcConfig", type = "structure"), 
        CreatedTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), FleetErrors = structure(list(structure(list(ErrorCode = structure(logical(0), 
            shape = "FleetErrorCode", type = "string"), ErrorMessage = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "FleetError", 
            type = "structure")), shape = "FleetErrors", type = "list"), 
        EnableDefaultInternetAccess = structure(logical(0), shape = "BooleanObject", 
            type = "boolean"), DomainJoinInfo = structure(list(DirectoryName = structure(logical(0), 
            shape = "DirectoryName", type = "string"), OrganizationalUnitDistinguishedName = structure(logical(0), 
            shape = "OrganizationalUnitDistinguishedName", type = "string", 
            max = 2000L)), shape = "DomainJoinInfo", type = "structure")), 
        shape = "Fleet", type = "structure")), shape = "FleetList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string", min = 1L)), shape = "DescribeFleetsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_image_builders_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Names = structure(list(structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "StringList", 
        type = "list"), MaxResults = structure(logical(0), shape = "Integer", 
        type = "integer"), NextToken = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "DescribeImageBuildersRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_image_builders_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImageBuilders = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string", min = 1L), Arn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        ImageArn = structure(logical(0), shape = "Arn", type = "string", 
            pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", min = 1L), DisplayName = structure(logical(0), 
            shape = "String", type = "string", min = 1L), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SubnetIdList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SecurityGroupIdList", 
            type = "list", max = 5L)), shape = "VpcConfig", type = "structure"), 
        InstanceType = structure(logical(0), shape = "String", 
            type = "string", min = 1L), Platform = structure(logical(0), 
            shape = "PlatformType", type = "string"), State = structure(logical(0), 
            shape = "ImageBuilderState", type = "string"), StateChangeReason = structure(list(Code = structure(logical(0), 
            shape = "ImageBuilderStateChangeReasonCode", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                type = "string", min = 1L)), shape = "ImageBuilderStateChangeReason", 
            type = "structure"), CreatedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EnableDefaultInternetAccess = structure(logical(0), 
            shape = "BooleanObject", type = "boolean"), DomainJoinInfo = structure(list(DirectoryName = structure(logical(0), 
            shape = "DirectoryName", type = "string"), OrganizationalUnitDistinguishedName = structure(logical(0), 
            shape = "OrganizationalUnitDistinguishedName", type = "string", 
            max = 2000L)), shape = "DomainJoinInfo", type = "structure"), 
        ImageBuilderErrors = structure(list(structure(list(ErrorCode = structure(logical(0), 
            shape = "FleetErrorCode", type = "string"), ErrorMessage = structure(logical(0), 
            shape = "String", type = "string", min = 1L), ErrorTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "ResourceError", 
            type = "structure")), shape = "ResourceErrors", type = "list"), 
        AppstreamAgentVersion = structure(logical(0), shape = "AppstreamAgentVersion", 
            type = "string", max = 100L, min = 1L)), shape = "ImageBuilder", 
        type = "structure")), shape = "ImageBuilderList", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string", 
            min = 1L)), shape = "DescribeImageBuildersResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_image_permissions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "Name", 
        type = "string", pattern = "^[a-zA-Z0-9][a-zA-Z0-9_.-]{0,100}$"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", box = TRUE, max = 500L, min = 0L), 
        SharedAwsAccountIds = structure(list(structure(logical(0), 
            shape = "AwsAccountId", type = "string", pattern = "^\\d+$")), 
            shape = "AwsAccountIdList", type = "list", max = 5L, 
            min = 1L), NextToken = structure(logical(0), shape = "String", 
            type = "string", min = 1L)), shape = "DescribeImagePermissionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_image_permissions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "Name", 
        type = "string", pattern = "^[a-zA-Z0-9][a-zA-Z0-9_.-]{0,100}$"), 
        SharedImagePermissionsList = structure(list(structure(list(SharedAccountId = structure(logical(0), 
            shape = "AwsAccountId", type = "string", pattern = "^\\d+$", 
            locationName = "sharedAccountId"), ImagePermissions = structure(list(AllowFleet = structure(logical(0), 
            shape = "BooleanObject", type = "boolean", locationName = "allowFleet"), 
            AllowImageBuilder = structure(logical(0), shape = "BooleanObject", 
                type = "boolean", locationName = "allowImageBuilder")), 
            shape = "ImagePermissions", type = "structure", locationName = "imagePermissions")), 
            shape = "SharedImagePermissions", type = "structure")), 
            shape = "SharedImagePermissionsList", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string", 
            min = 1L)), shape = "DescribeImagePermissionsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_images_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Names = structure(list(structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "StringList", 
        type = "list"), Arns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$")), 
        shape = "ArnList", type = "list"), Type = structure(logical(0), 
        shape = "VisibilityType", type = "string"), NextToken = structure(logical(0), 
        shape = "String", type = "string", min = 1L), MaxResults = structure(logical(0), 
        shape = "DescribeImagesMaxResults", type = "integer", 
        box = TRUE, max = 25L, min = 0L)), shape = "DescribeImagesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_images_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Images = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string", min = 1L), Arn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        BaseImageArn = structure(logical(0), shape = "Arn", type = "string", 
            pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        DisplayName = structure(logical(0), shape = "String", 
            type = "string", min = 1L), State = structure(logical(0), 
            shape = "ImageState", type = "string"), Visibility = structure(logical(0), 
            shape = "VisibilityType", type = "string"), ImageBuilderSupported = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Platform = structure(logical(0), 
            shape = "PlatformType", type = "string"), Description = structure(logical(0), 
            shape = "String", type = "string", min = 1L), StateChangeReason = structure(list(Code = structure(logical(0), 
            shape = "ImageStateChangeReasonCode", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                type = "string", min = 1L)), shape = "ImageStateChangeReason", 
            type = "structure"), Applications = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string", min = 1L), DisplayName = structure(logical(0), 
            shape = "String", type = "string", min = 1L), IconURL = structure(logical(0), 
            shape = "String", type = "string", min = 1L), LaunchPath = structure(logical(0), 
            shape = "String", type = "string", min = 1L), LaunchParameters = structure(logical(0), 
            shape = "String", type = "string", min = 1L), Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Metadata = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "Metadata", 
            type = "map")), shape = "Application", type = "structure")), 
            shape = "Applications", type = "list"), CreatedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), PublicBaseImageReleasedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), AppstreamAgentVersion = structure(logical(0), 
            shape = "AppstreamAgentVersion", type = "string", 
            max = 100L, min = 1L), ImagePermissions = structure(list(AllowFleet = structure(logical(0), 
            shape = "BooleanObject", type = "boolean", locationName = "allowFleet"), 
            AllowImageBuilder = structure(logical(0), shape = "BooleanObject", 
                type = "boolean", locationName = "allowImageBuilder")), 
            shape = "ImagePermissions", type = "structure")), 
        shape = "Image", type = "structure")), shape = "ImageList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string", min = 1L)), shape = "DescribeImagesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_sessions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackName = structure(logical(0), 
        shape = "String", type = "string", min = 1L), FleetName = structure(logical(0), 
        shape = "String", type = "string", min = 1L), UserId = structure(logical(0), 
        shape = "UserId", type = "string", max = 32L, min = 2L), 
        NextToken = structure(logical(0), shape = "String", type = "string", 
            min = 1L), Limit = structure(logical(0), shape = "Integer", 
            type = "integer"), AuthenticationType = structure(logical(0), 
            shape = "AuthenticationType", type = "string")), 
        shape = "DescribeSessionsRequest", type = "structure")
    return(populate(args, shape))
}

describe_sessions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Sessions = structure(list(structure(list(Id = structure(logical(0), 
        shape = "String", type = "string", min = 1L), UserId = structure(logical(0), 
        shape = "UserId", type = "string", max = 32L, min = 2L), 
        StackName = structure(logical(0), shape = "String", type = "string", 
            min = 1L), FleetName = structure(logical(0), shape = "String", 
            type = "string", min = 1L), State = structure(logical(0), 
            shape = "SessionState", type = "string"), AuthenticationType = structure(logical(0), 
            shape = "AuthenticationType", type = "string"), NetworkAccessConfiguration = structure(list(EniPrivateIpAddress = structure(logical(0), 
            shape = "String", type = "string", min = 1L), EniId = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "NetworkAccessConfiguration", 
            type = "structure")), shape = "Session", type = "structure")), 
        shape = "SessionList", type = "list"), NextToken = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "DescribeSessionsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_stacks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Names = structure(list(structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "StringList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string", min = 1L)), shape = "DescribeStacksRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_stacks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Stacks = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        Name = structure(logical(0), shape = "String", type = "string", 
            min = 1L), Description = structure(logical(0), shape = "String", 
            type = "string", min = 1L), DisplayName = structure(logical(0), 
            shape = "String", type = "string", min = 1L), CreatedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), StorageConnectors = structure(list(structure(list(ConnectorType = structure(logical(0), 
            shape = "StorageConnectorType", type = "string"), 
            ResourceIdentifier = structure(logical(0), shape = "ResourceIdentifier", 
                type = "string", min = 1L), Domains = structure(list(structure(logical(0), 
                shape = "Domain", type = "string", max = 64L)), 
                shape = "DomainList", type = "list", max = 10L)), 
            shape = "StorageConnector", type = "structure")), 
            shape = "StorageConnectorList", type = "list"), RedirectURL = structure(logical(0), 
            shape = "RedirectURL", type = "string", max = 1000L), 
        FeedbackURL = structure(logical(0), shape = "FeedbackURL", 
            type = "string", max = 1000L), StackErrors = structure(list(structure(list(ErrorCode = structure(logical(0), 
            shape = "StackErrorCode", type = "string"), ErrorMessage = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "StackError", 
            type = "structure")), shape = "StackErrors", type = "list"), 
        UserSettings = structure(list(structure(list(Action = structure(logical(0), 
            shape = "Action", type = "string"), Permission = structure(logical(0), 
            shape = "Permission", type = "string")), shape = "UserSetting", 
            type = "structure")), shape = "UserSettingList", 
            type = "list", min = 1L), ApplicationSettings = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SettingsGroup = structure(logical(0), 
            shape = "SettingsGroup", type = "string", max = 100L), 
            S3BucketName = structure(logical(0), shape = "String", 
                type = "string", min = 1L)), shape = "ApplicationSettingsResponse", 
            type = "structure")), shape = "Stack", type = "structure")), 
        shape = "StackList", type = "list"), NextToken = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "DescribeStacksResult", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_fleet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetName = structure(logical(0), 
        shape = "String", type = "string", min = 1L), StackName = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "DisassociateFleetRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_fleet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateFleetResult", 
        type = "structure")
    return(populate(args, shape))
}

expire_session_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SessionId = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "ExpireSessionRequest", 
        type = "structure")
    return(populate(args, shape))
}

expire_session_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ExpireSessionResult", 
        type = "structure")
    return(populate(args, shape))
}

list_associated_fleets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackName = structure(logical(0), 
        shape = "String", type = "string", min = 1L), NextToken = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "ListAssociatedFleetsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_associated_fleets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Names = structure(list(structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "StringList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string", min = 1L)), shape = "ListAssociatedFleetsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_associated_stacks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetName = structure(logical(0), 
        shape = "String", type = "string", min = 1L), NextToken = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "ListAssociatedStacksRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_associated_stacks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Names = structure(list(structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "StringList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string", min = 1L)), shape = "ListAssociatedStacksResult", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$")), 
        shape = "ListTagsForResourceRequest", type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 0L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "Tags", 
        type = "map", max = 50L, min = 1L)), shape = "ListTagsForResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_fleet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string", min = 1L)), shape = "StartFleetRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_fleet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StartFleetResult", type = "structure")
    return(populate(args, shape))
}

start_image_builder_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string", min = 1L), AppstreamAgentVersion = structure(logical(0), 
        shape = "AppstreamAgentVersion", type = "string", max = 100L, 
        min = 1L)), shape = "StartImageBuilderRequest", type = "structure")
    return(populate(args, shape))
}

start_image_builder_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImageBuilder = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string", min = 1L), Arn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        ImageArn = structure(logical(0), shape = "Arn", type = "string", 
            pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", min = 1L), DisplayName = structure(logical(0), 
            shape = "String", type = "string", min = 1L), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SubnetIdList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SecurityGroupIdList", 
            type = "list", max = 5L)), shape = "VpcConfig", type = "structure"), 
        InstanceType = structure(logical(0), shape = "String", 
            type = "string", min = 1L), Platform = structure(logical(0), 
            shape = "PlatformType", type = "string"), State = structure(logical(0), 
            shape = "ImageBuilderState", type = "string"), StateChangeReason = structure(list(Code = structure(logical(0), 
            shape = "ImageBuilderStateChangeReasonCode", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                type = "string", min = 1L)), shape = "ImageBuilderStateChangeReason", 
            type = "structure"), CreatedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EnableDefaultInternetAccess = structure(logical(0), 
            shape = "BooleanObject", type = "boolean"), DomainJoinInfo = structure(list(DirectoryName = structure(logical(0), 
            shape = "DirectoryName", type = "string"), OrganizationalUnitDistinguishedName = structure(logical(0), 
            shape = "OrganizationalUnitDistinguishedName", type = "string", 
            max = 2000L)), shape = "DomainJoinInfo", type = "structure"), 
        ImageBuilderErrors = structure(list(structure(list(ErrorCode = structure(logical(0), 
            shape = "FleetErrorCode", type = "string"), ErrorMessage = structure(logical(0), 
            shape = "String", type = "string", min = 1L), ErrorTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "ResourceError", 
            type = "structure")), shape = "ResourceErrors", type = "list"), 
        AppstreamAgentVersion = structure(logical(0), shape = "AppstreamAgentVersion", 
            type = "string", max = 100L, min = 1L)), shape = "ImageBuilder", 
        type = "structure")), shape = "StartImageBuilderResult", 
        type = "structure")
    return(populate(args, shape))
}

stop_fleet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string", min = 1L)), shape = "StopFleetRequest", 
        type = "structure")
    return(populate(args, shape))
}

stop_fleet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StopFleetResult", type = "structure")
    return(populate(args, shape))
}

stop_image_builder_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string", min = 1L)), shape = "StopImageBuilderRequest", 
        type = "structure")
    return(populate(args, shape))
}

stop_image_builder_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImageBuilder = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string", min = 1L), Arn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        ImageArn = structure(logical(0), shape = "Arn", type = "string", 
            pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", min = 1L), DisplayName = structure(logical(0), 
            shape = "String", type = "string", min = 1L), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SubnetIdList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SecurityGroupIdList", 
            type = "list", max = 5L)), shape = "VpcConfig", type = "structure"), 
        InstanceType = structure(logical(0), shape = "String", 
            type = "string", min = 1L), Platform = structure(logical(0), 
            shape = "PlatformType", type = "string"), State = structure(logical(0), 
            shape = "ImageBuilderState", type = "string"), StateChangeReason = structure(list(Code = structure(logical(0), 
            shape = "ImageBuilderStateChangeReasonCode", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                type = "string", min = 1L)), shape = "ImageBuilderStateChangeReason", 
            type = "structure"), CreatedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EnableDefaultInternetAccess = structure(logical(0), 
            shape = "BooleanObject", type = "boolean"), DomainJoinInfo = structure(list(DirectoryName = structure(logical(0), 
            shape = "DirectoryName", type = "string"), OrganizationalUnitDistinguishedName = structure(logical(0), 
            shape = "OrganizationalUnitDistinguishedName", type = "string", 
            max = 2000L)), shape = "DomainJoinInfo", type = "structure"), 
        ImageBuilderErrors = structure(list(structure(list(ErrorCode = structure(logical(0), 
            shape = "FleetErrorCode", type = "string"), ErrorMessage = structure(logical(0), 
            shape = "String", type = "string", min = 1L), ErrorTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "ResourceError", 
            type = "structure")), shape = "ResourceErrors", type = "list"), 
        AppstreamAgentVersion = structure(logical(0), shape = "AppstreamAgentVersion", 
            type = "string", max = 100L, min = 1L)), shape = "ImageBuilder", 
        type = "structure")), shape = "StopImageBuilderResult", 
        type = "structure")
    return(populate(args, shape))
}

tag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        Tags = structure(list(structure(logical(0), shape = "TagValue", 
            type = "string", max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tags", type = "map", max = 50L, min = 1L)), 
        shape = "TagResourceRequest", type = "structure")
    return(populate(args, shape))
}

tag_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "TagResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

untag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        TagKeys = structure(list(structure(logical(0), shape = "TagKey", 
            type = "string", max = 128L, min = 1L, pattern = "^(^(?!aws:).[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "TagKeyList", type = "list", max = 50L, min = 1L)), 
        shape = "UntagResourceRequest", type = "structure")
    return(populate(args, shape))
}

untag_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UntagResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_directory_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryName = structure(logical(0), 
        shape = "DirectoryName", type = "string"), OrganizationalUnitDistinguishedNames = structure(list(structure(logical(0), 
        shape = "OrganizationalUnitDistinguishedName", type = "string", 
        max = 2000L)), shape = "OrganizationalUnitDistinguishedNamesList", 
        type = "list"), ServiceAccountCredentials = structure(list(AccountName = structure(logical(0), 
        shape = "AccountName", type = "string", min = 1L, sensitive = TRUE), 
        AccountPassword = structure(logical(0), shape = "AccountPassword", 
            type = "string", max = 127L, min = 1L, sensitive = TRUE)), 
        shape = "ServiceAccountCredentials", type = "structure")), 
        shape = "UpdateDirectoryConfigRequest", type = "structure")
    return(populate(args, shape))
}

update_directory_config_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryConfig = structure(list(DirectoryName = structure(logical(0), 
        shape = "DirectoryName", type = "string"), OrganizationalUnitDistinguishedNames = structure(list(structure(logical(0), 
        shape = "OrganizationalUnitDistinguishedName", type = "string", 
        max = 2000L)), shape = "OrganizationalUnitDistinguishedNamesList", 
        type = "list"), ServiceAccountCredentials = structure(list(AccountName = structure(logical(0), 
        shape = "AccountName", type = "string", min = 1L, sensitive = TRUE), 
        AccountPassword = structure(logical(0), shape = "AccountPassword", 
            type = "string", max = 127L, min = 1L, sensitive = TRUE)), 
        shape = "ServiceAccountCredentials", type = "structure"), 
        CreatedTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp")), shape = "DirectoryConfig", 
        type = "structure")), shape = "UpdateDirectoryConfigResult", 
        type = "structure")
    return(populate(args, shape))
}

update_fleet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImageName = structure(logical(0), 
        shape = "String", type = "string", min = 1L), ImageArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        Name = structure(logical(0), shape = "String", type = "string", 
            min = 1L), InstanceType = structure(logical(0), shape = "String", 
            type = "string", min = 1L), ComputeCapacity = structure(list(DesiredInstances = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "ComputeCapacity", 
            type = "structure"), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SubnetIdList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SecurityGroupIdList", 
            type = "list", max = 5L)), shape = "VpcConfig", type = "structure"), 
        MaxUserDurationInSeconds = structure(logical(0), shape = "Integer", 
            type = "integer"), DisconnectTimeoutInSeconds = structure(logical(0), 
            shape = "Integer", type = "integer"), DeleteVpcConfig = structure(logical(0), 
            shape = "Boolean", deprecated = TRUE, type = "boolean"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 256L), DisplayName = structure(logical(0), 
            shape = "DisplayName", type = "string", max = 100L), 
        EnableDefaultInternetAccess = structure(logical(0), shape = "BooleanObject", 
            type = "boolean"), DomainJoinInfo = structure(list(DirectoryName = structure(logical(0), 
            shape = "DirectoryName", type = "string"), OrganizationalUnitDistinguishedName = structure(logical(0), 
            shape = "OrganizationalUnitDistinguishedName", type = "string", 
            max = 2000L)), shape = "DomainJoinInfo", type = "structure"), 
        AttributesToDelete = structure(list(structure(logical(0), 
            shape = "FleetAttribute", type = "string")), shape = "FleetAttributes", 
            type = "list")), shape = "UpdateFleetRequest", type = "structure")
    return(populate(args, shape))
}

update_fleet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Fleet = structure(list(Arn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        Name = structure(logical(0), shape = "String", type = "string", 
            min = 1L), DisplayName = structure(logical(0), shape = "String", 
            type = "string", min = 1L), Description = structure(logical(0), 
            shape = "String", type = "string", min = 1L), ImageName = structure(logical(0), 
            shape = "String", type = "string", min = 1L), ImageArn = structure(logical(0), 
            shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        InstanceType = structure(logical(0), shape = "String", 
            type = "string", min = 1L), FleetType = structure(logical(0), 
            shape = "FleetType", type = "string"), ComputeCapacityStatus = structure(list(Desired = structure(logical(0), 
            shape = "Integer", type = "integer"), Running = structure(logical(0), 
            shape = "Integer", type = "integer"), InUse = structure(logical(0), 
            shape = "Integer", type = "integer"), Available = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "ComputeCapacityStatus", 
            type = "structure"), MaxUserDurationInSeconds = structure(logical(0), 
            shape = "Integer", type = "integer"), DisconnectTimeoutInSeconds = structure(logical(0), 
            shape = "Integer", type = "integer"), State = structure(logical(0), 
            shape = "FleetState", type = "string"), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SubnetIdList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "SecurityGroupIdList", 
            type = "list", max = 5L)), shape = "VpcConfig", type = "structure"), 
        CreatedTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), FleetErrors = structure(list(structure(list(ErrorCode = structure(logical(0), 
            shape = "FleetErrorCode", type = "string"), ErrorMessage = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "FleetError", 
            type = "structure")), shape = "FleetErrors", type = "list"), 
        EnableDefaultInternetAccess = structure(logical(0), shape = "BooleanObject", 
            type = "boolean"), DomainJoinInfo = structure(list(DirectoryName = structure(logical(0), 
            shape = "DirectoryName", type = "string"), OrganizationalUnitDistinguishedName = structure(logical(0), 
            shape = "OrganizationalUnitDistinguishedName", type = "string", 
            max = 2000L)), shape = "DomainJoinInfo", type = "structure")), 
        shape = "Fleet", type = "structure")), shape = "UpdateFleetResult", 
        type = "structure")
    return(populate(args, shape))
}

update_image_permissions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "Name", 
        type = "string", pattern = "^[a-zA-Z0-9][a-zA-Z0-9_.-]{0,100}$"), 
        SharedAccountId = structure(logical(0), shape = "AwsAccountId", 
            type = "string", pattern = "^\\d+$"), ImagePermissions = structure(list(AllowFleet = structure(logical(0), 
            shape = "BooleanObject", type = "boolean", locationName = "allowFleet"), 
            AllowImageBuilder = structure(logical(0), shape = "BooleanObject", 
                type = "boolean", locationName = "allowImageBuilder")), 
            shape = "ImagePermissions", type = "structure")), 
        shape = "UpdateImagePermissionsRequest", type = "structure")
    return(populate(args, shape))
}

update_image_permissions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateImagePermissionsResult", 
        type = "structure")
    return(populate(args, shape))
}

update_stack_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DisplayName = structure(logical(0), 
        shape = "DisplayName", type = "string", max = 100L), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 256L), Name = structure(logical(0), 
            shape = "String", type = "string", min = 1L), StorageConnectors = structure(list(structure(list(ConnectorType = structure(logical(0), 
            shape = "StorageConnectorType", type = "string"), 
            ResourceIdentifier = structure(logical(0), shape = "ResourceIdentifier", 
                type = "string", min = 1L), Domains = structure(list(structure(logical(0), 
                shape = "Domain", type = "string", max = 64L)), 
                shape = "DomainList", type = "list", max = 10L)), 
            shape = "StorageConnector", type = "structure")), 
            shape = "StorageConnectorList", type = "list"), DeleteStorageConnectors = structure(logical(0), 
            shape = "Boolean", deprecated = TRUE, type = "boolean"), 
        RedirectURL = structure(logical(0), shape = "RedirectURL", 
            type = "string", max = 1000L), FeedbackURL = structure(logical(0), 
            shape = "FeedbackURL", type = "string", max = 1000L), 
        AttributesToDelete = structure(list(structure(logical(0), 
            shape = "StackAttribute", type = "string")), shape = "StackAttributes", 
            type = "list"), UserSettings = structure(list(structure(list(Action = structure(logical(0), 
            shape = "Action", type = "string"), Permission = structure(logical(0), 
            shape = "Permission", type = "string")), shape = "UserSetting", 
            type = "structure")), shape = "UserSettingList", 
            type = "list", min = 1L), ApplicationSettings = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SettingsGroup = structure(logical(0), 
            shape = "SettingsGroup", type = "string", max = 100L)), 
            shape = "ApplicationSettings", type = "structure")), 
        shape = "UpdateStackRequest", type = "structure")
    return(populate(args, shape))
}

update_stack_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Stack = structure(list(Arn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), 
        Name = structure(logical(0), shape = "String", type = "string", 
            min = 1L), Description = structure(logical(0), shape = "String", 
            type = "string", min = 1L), DisplayName = structure(logical(0), 
            shape = "String", type = "string", min = 1L), CreatedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), StorageConnectors = structure(list(structure(list(ConnectorType = structure(logical(0), 
            shape = "StorageConnectorType", type = "string"), 
            ResourceIdentifier = structure(logical(0), shape = "ResourceIdentifier", 
                type = "string", min = 1L), Domains = structure(list(structure(logical(0), 
                shape = "Domain", type = "string", max = 64L)), 
                shape = "DomainList", type = "list", max = 10L)), 
            shape = "StorageConnector", type = "structure")), 
            shape = "StorageConnectorList", type = "list"), RedirectURL = structure(logical(0), 
            shape = "RedirectURL", type = "string", max = 1000L), 
        FeedbackURL = structure(logical(0), shape = "FeedbackURL", 
            type = "string", max = 1000L), StackErrors = structure(list(structure(list(ErrorCode = structure(logical(0), 
            shape = "StackErrorCode", type = "string"), ErrorMessage = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "StackError", 
            type = "structure")), shape = "StackErrors", type = "list"), 
        UserSettings = structure(list(structure(list(Action = structure(logical(0), 
            shape = "Action", type = "string"), Permission = structure(logical(0), 
            shape = "Permission", type = "string")), shape = "UserSetting", 
            type = "structure")), shape = "UserSettingList", 
            type = "list", min = 1L), ApplicationSettings = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SettingsGroup = structure(logical(0), 
            shape = "SettingsGroup", type = "string", max = 100L), 
            S3BucketName = structure(logical(0), shape = "String", 
                type = "string", min = 1L)), shape = "ApplicationSettingsResponse", 
            type = "structure")), shape = "Stack", type = "structure")), 
        shape = "UpdateStackResult", type = "structure")
    return(populate(args, shape))
}
