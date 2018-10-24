associate_role_to_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "GroupId", type = "string"), 
        RoleArn = structure(logical(0), shape = "__string", type = "string")), 
        shape = "AssociateRoleToGroupRequest", type = "structure")
    return(populate(args, shape))
}

associate_role_to_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociatedAt = structure(logical(0), 
        shape = "__string", type = "string")), shape = "AssociateRoleToGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

associate_service_role_to_account_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleArn = structure(logical(0), shape = "__string", 
        type = "string")), shape = "AssociateServiceRoleToAccountRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_service_role_to_account_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociatedAt = structure(logical(0), 
        shape = "__string", type = "string")), shape = "AssociateServiceRoleToAccountResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_core_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AmznClientToken = structure(logical(0), 
        shape = "__string", location = "header", locationName = "X-Amzn-Client-Token", 
        type = "string"), InitialVersion = structure(list(Cores = structure(list(structure(list(CertificateArn = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), SyncShadow = structure(logical(0), 
        shape = "__boolean", type = "boolean"), ThingArn = structure(logical(0), 
        shape = "__string", type = "string")), shape = "Core", 
        type = "structure")), shape = "__listOfCore", type = "list")), 
        shape = "CoreDefinitionVersion", type = "structure"), 
        Name = structure(logical(0), shape = "__string", type = "string")), 
        shape = "CreateCoreDefinitionRequest", type = "structure")
    return(populate(args, shape))
}

create_core_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CreateCoreDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_core_definition_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AmznClientToken = structure(logical(0), 
        shape = "__string", location = "header", locationName = "X-Amzn-Client-Token", 
        type = "string"), CoreDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "CoreDefinitionId", 
        type = "string"), Cores = structure(list(structure(list(CertificateArn = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), SyncShadow = structure(logical(0), 
        shape = "__boolean", type = "boolean"), ThingArn = structure(logical(0), 
        shape = "__string", type = "string")), shape = "Core", 
        type = "structure")), shape = "__listOfCore", type = "list")), 
        shape = "CreateCoreDefinitionVersionRequest", type = "structure")
    return(populate(args, shape))
}

create_core_definition_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), Version = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CreateCoreDefinitionVersionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_deployment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AmznClientToken = structure(logical(0), 
        shape = "__string", location = "header", locationName = "X-Amzn-Client-Token", 
        type = "string"), DeploymentId = structure(logical(0), 
        shape = "__string", type = "string"), DeploymentType = structure(logical(0), 
        shape = "DeploymentType", type = "string"), GroupId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "GroupId", 
        type = "string"), GroupVersionId = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CreateDeploymentRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_deployment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentArn = structure(logical(0), 
        shape = "__string", type = "string"), DeploymentId = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CreateDeploymentResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_device_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AmznClientToken = structure(logical(0), 
        shape = "__string", location = "header", locationName = "X-Amzn-Client-Token", 
        type = "string"), InitialVersion = structure(list(Devices = structure(list(structure(list(CertificateArn = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), SyncShadow = structure(logical(0), 
        shape = "__boolean", type = "boolean"), ThingArn = structure(logical(0), 
        shape = "__string", type = "string")), shape = "Device", 
        type = "structure")), shape = "__listOfDevice", type = "list")), 
        shape = "DeviceDefinitionVersion", type = "structure"), 
        Name = structure(logical(0), shape = "__string", type = "string")), 
        shape = "CreateDeviceDefinitionRequest", type = "structure")
    return(populate(args, shape))
}

create_device_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CreateDeviceDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_device_definition_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AmznClientToken = structure(logical(0), 
        shape = "__string", location = "header", locationName = "X-Amzn-Client-Token", 
        type = "string"), DeviceDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "DeviceDefinitionId", 
        type = "string"), Devices = structure(list(structure(list(CertificateArn = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), SyncShadow = structure(logical(0), 
        shape = "__boolean", type = "boolean"), ThingArn = structure(logical(0), 
        shape = "__string", type = "string")), shape = "Device", 
        type = "structure")), shape = "__listOfDevice", type = "list")), 
        shape = "CreateDeviceDefinitionVersionRequest", type = "structure")
    return(populate(args, shape))
}

create_device_definition_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), Version = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CreateDeviceDefinitionVersionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_function_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AmznClientToken = structure(logical(0), 
        shape = "__string", location = "header", locationName = "X-Amzn-Client-Token", 
        type = "string"), InitialVersion = structure(list(Functions = structure(list(structure(list(FunctionArn = structure(logical(0), 
        shape = "__string", type = "string"), FunctionConfiguration = structure(list(EncodingType = structure(logical(0), 
        shape = "EncodingType", type = "string"), Environment = structure(list(AccessSysfs = structure(logical(0), 
        shape = "__boolean", type = "boolean"), ResourceAccessPolicies = structure(list(structure(list(Permission = structure(logical(0), 
        shape = "Permission", type = "string"), ResourceId = structure(logical(0), 
        shape = "__string", type = "string")), shape = "ResourceAccessPolicy", 
        type = "structure")), shape = "__listOfResourceAccessPolicy", 
        type = "list"), Variables = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "__mapOf__string", 
        type = "map")), shape = "FunctionConfigurationEnvironment", 
        type = "structure"), ExecArgs = structure(logical(0), 
        shape = "__string", type = "string"), Executable = structure(logical(0), 
        shape = "__string", type = "string"), MemorySize = structure(logical(0), 
        shape = "__integer", type = "integer"), Pinned = structure(logical(0), 
        shape = "__boolean", type = "boolean"), Timeout = structure(logical(0), 
        shape = "__integer", type = "integer")), shape = "FunctionConfiguration", 
        type = "structure"), Id = structure(logical(0), shape = "__string", 
        type = "string")), shape = "Function", type = "structure")), 
        shape = "__listOfFunction", type = "list")), shape = "FunctionDefinitionVersion", 
        type = "structure"), Name = structure(logical(0), shape = "__string", 
        type = "string")), shape = "CreateFunctionDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_function_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CreateFunctionDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_function_definition_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AmznClientToken = structure(logical(0), 
        shape = "__string", location = "header", locationName = "X-Amzn-Client-Token", 
        type = "string"), FunctionDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "FunctionDefinitionId", 
        type = "string"), Functions = structure(list(structure(list(FunctionArn = structure(logical(0), 
        shape = "__string", type = "string"), FunctionConfiguration = structure(list(EncodingType = structure(logical(0), 
        shape = "EncodingType", type = "string"), Environment = structure(list(AccessSysfs = structure(logical(0), 
        shape = "__boolean", type = "boolean"), ResourceAccessPolicies = structure(list(structure(list(Permission = structure(logical(0), 
        shape = "Permission", type = "string"), ResourceId = structure(logical(0), 
        shape = "__string", type = "string")), shape = "ResourceAccessPolicy", 
        type = "structure")), shape = "__listOfResourceAccessPolicy", 
        type = "list"), Variables = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "__mapOf__string", 
        type = "map")), shape = "FunctionConfigurationEnvironment", 
        type = "structure"), ExecArgs = structure(logical(0), 
        shape = "__string", type = "string"), Executable = structure(logical(0), 
        shape = "__string", type = "string"), MemorySize = structure(logical(0), 
        shape = "__integer", type = "integer"), Pinned = structure(logical(0), 
        shape = "__boolean", type = "boolean"), Timeout = structure(logical(0), 
        shape = "__integer", type = "integer")), shape = "FunctionConfiguration", 
        type = "structure"), Id = structure(logical(0), shape = "__string", 
        type = "string")), shape = "Function", type = "structure")), 
        shape = "__listOfFunction", type = "list")), shape = "CreateFunctionDefinitionVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_function_definition_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), Version = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CreateFunctionDefinitionVersionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AmznClientToken = structure(logical(0), 
        shape = "__string", location = "header", locationName = "X-Amzn-Client-Token", 
        type = "string"), InitialVersion = structure(list(CoreDefinitionVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), DeviceDefinitionVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), FunctionDefinitionVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), LoggerDefinitionVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), ResourceDefinitionVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), SubscriptionDefinitionVersionArn = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GroupVersion", 
        type = "structure"), Name = structure(logical(0), shape = "__string", 
        type = "string")), shape = "CreateGroupRequest", type = "structure")
    return(populate(args, shape))
}

create_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CreateGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_group_certificate_authority_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AmznClientToken = structure(logical(0), 
        shape = "__string", location = "header", locationName = "X-Amzn-Client-Token", 
        type = "string"), GroupId = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "GroupId", type = "string")), 
        shape = "CreateGroupCertificateAuthorityRequest", type = "structure")
    return(populate(args, shape))
}

create_group_certificate_authority_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupCertificateAuthorityArn = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CreateGroupCertificateAuthorityResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_group_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AmznClientToken = structure(logical(0), 
        shape = "__string", location = "header", locationName = "X-Amzn-Client-Token", 
        type = "string"), CoreDefinitionVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), DeviceDefinitionVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), FunctionDefinitionVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), GroupId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "GroupId", 
        type = "string"), LoggerDefinitionVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), ResourceDefinitionVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), SubscriptionDefinitionVersionArn = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CreateGroupVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_group_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), Version = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CreateGroupVersionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_logger_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AmznClientToken = structure(logical(0), 
        shape = "__string", location = "header", locationName = "X-Amzn-Client-Token", 
        type = "string"), InitialVersion = structure(list(Loggers = structure(list(structure(list(Component = structure(logical(0), 
        shape = "LoggerComponent", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), Level = structure(logical(0), 
        shape = "LoggerLevel", type = "string"), Space = structure(logical(0), 
        shape = "__integer", type = "integer"), Type = structure(logical(0), 
        shape = "LoggerType", type = "string")), shape = "Logger", 
        type = "structure")), shape = "__listOfLogger", type = "list")), 
        shape = "LoggerDefinitionVersion", type = "structure"), 
        Name = structure(logical(0), shape = "__string", type = "string")), 
        shape = "CreateLoggerDefinitionRequest", type = "structure")
    return(populate(args, shape))
}

create_logger_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CreateLoggerDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_logger_definition_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AmznClientToken = structure(logical(0), 
        shape = "__string", location = "header", locationName = "X-Amzn-Client-Token", 
        type = "string"), LoggerDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "LoggerDefinitionId", 
        type = "string"), Loggers = structure(list(structure(list(Component = structure(logical(0), 
        shape = "LoggerComponent", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), Level = structure(logical(0), 
        shape = "LoggerLevel", type = "string"), Space = structure(logical(0), 
        shape = "__integer", type = "integer"), Type = structure(logical(0), 
        shape = "LoggerType", type = "string")), shape = "Logger", 
        type = "structure")), shape = "__listOfLogger", type = "list")), 
        shape = "CreateLoggerDefinitionVersionRequest", type = "structure")
    return(populate(args, shape))
}

create_logger_definition_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), Version = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CreateLoggerDefinitionVersionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_resource_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AmznClientToken = structure(logical(0), 
        shape = "__string", location = "header", locationName = "X-Amzn-Client-Token", 
        type = "string"), InitialVersion = structure(list(Resources = structure(list(structure(list(Id = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string"), ResourceDataContainer = structure(list(LocalDeviceResourceData = structure(list(GroupOwnerSetting = structure(list(AutoAddGroupOwner = structure(logical(0), 
        shape = "__boolean", type = "boolean"), GroupOwner = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GroupOwnerSetting", 
        type = "structure"), SourcePath = structure(logical(0), 
        shape = "__string", type = "string")), shape = "LocalDeviceResourceData", 
        type = "structure"), LocalVolumeResourceData = structure(list(DestinationPath = structure(logical(0), 
        shape = "__string", type = "string"), GroupOwnerSetting = structure(list(AutoAddGroupOwner = structure(logical(0), 
        shape = "__boolean", type = "boolean"), GroupOwner = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GroupOwnerSetting", 
        type = "structure"), SourcePath = structure(logical(0), 
        shape = "__string", type = "string")), shape = "LocalVolumeResourceData", 
        type = "structure"), S3MachineLearningModelResourceData = structure(list(DestinationPath = structure(logical(0), 
        shape = "__string", type = "string"), S3Uri = structure(logical(0), 
        shape = "__string", type = "string")), shape = "S3MachineLearningModelResourceData", 
        type = "structure"), SageMakerMachineLearningModelResourceData = structure(list(DestinationPath = structure(logical(0), 
        shape = "__string", type = "string"), SageMakerJobArn = structure(logical(0), 
        shape = "__string", type = "string")), shape = "SageMakerMachineLearningModelResourceData", 
        type = "structure")), shape = "ResourceDataContainer", 
        type = "structure")), shape = "Resource", type = "structure")), 
        shape = "__listOfResource", type = "list")), shape = "ResourceDefinitionVersion", 
        type = "structure"), Name = structure(logical(0), shape = "__string", 
        type = "string")), shape = "CreateResourceDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_resource_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CreateResourceDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_resource_definition_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AmznClientToken = structure(logical(0), 
        shape = "__string", location = "header", locationName = "X-Amzn-Client-Token", 
        type = "string"), ResourceDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "ResourceDefinitionId", 
        type = "string"), Resources = structure(list(structure(list(Id = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string"), ResourceDataContainer = structure(list(LocalDeviceResourceData = structure(list(GroupOwnerSetting = structure(list(AutoAddGroupOwner = structure(logical(0), 
        shape = "__boolean", type = "boolean"), GroupOwner = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GroupOwnerSetting", 
        type = "structure"), SourcePath = structure(logical(0), 
        shape = "__string", type = "string")), shape = "LocalDeviceResourceData", 
        type = "structure"), LocalVolumeResourceData = structure(list(DestinationPath = structure(logical(0), 
        shape = "__string", type = "string"), GroupOwnerSetting = structure(list(AutoAddGroupOwner = structure(logical(0), 
        shape = "__boolean", type = "boolean"), GroupOwner = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GroupOwnerSetting", 
        type = "structure"), SourcePath = structure(logical(0), 
        shape = "__string", type = "string")), shape = "LocalVolumeResourceData", 
        type = "structure"), S3MachineLearningModelResourceData = structure(list(DestinationPath = structure(logical(0), 
        shape = "__string", type = "string"), S3Uri = structure(logical(0), 
        shape = "__string", type = "string")), shape = "S3MachineLearningModelResourceData", 
        type = "structure"), SageMakerMachineLearningModelResourceData = structure(list(DestinationPath = structure(logical(0), 
        shape = "__string", type = "string"), SageMakerJobArn = structure(logical(0), 
        shape = "__string", type = "string")), shape = "SageMakerMachineLearningModelResourceData", 
        type = "structure")), shape = "ResourceDataContainer", 
        type = "structure")), shape = "Resource", type = "structure")), 
        shape = "__listOfResource", type = "list")), shape = "CreateResourceDefinitionVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_resource_definition_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), Version = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CreateResourceDefinitionVersionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_software_update_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AmznClientToken = structure(logical(0), 
        shape = "__string", location = "header", locationName = "X-Amzn-Client-Token", 
        type = "string"), S3UrlSignerRole = structure(logical(0), 
        shape = "S3UrlSignerRole", type = "string"), SoftwareToUpdate = structure(logical(0), 
        shape = "SoftwareToUpdate", type = "string"), UpdateAgentLogLevel = structure(logical(0), 
        shape = "UpdateAgentLogLevel", type = "string"), UpdateTargets = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "UpdateTargets", 
        type = "list"), UpdateTargetsArchitecture = structure(logical(0), 
        shape = "UpdateTargetsArchitecture", type = "string"), 
        UpdateTargetsOperatingSystem = structure(logical(0), 
            shape = "UpdateTargetsOperatingSystem", type = "string")), 
        shape = "CreateSoftwareUpdateJobRequest", type = "structure")
    return(populate(args, shape))
}

create_software_update_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IotJobArn = structure(logical(0), 
        shape = "__string", type = "string"), IotJobId = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CreateSoftwareUpdateJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_subscription_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AmznClientToken = structure(logical(0), 
        shape = "__string", location = "header", locationName = "X-Amzn-Client-Token", 
        type = "string"), InitialVersion = structure(list(Subscriptions = structure(list(structure(list(Id = structure(logical(0), 
        shape = "__string", type = "string"), Source = structure(logical(0), 
        shape = "__string", type = "string"), Subject = structure(logical(0), 
        shape = "__string", type = "string"), Target = structure(logical(0), 
        shape = "__string", type = "string")), shape = "Subscription", 
        type = "structure")), shape = "__listOfSubscription", 
        type = "list")), shape = "SubscriptionDefinitionVersion", 
        type = "structure"), Name = structure(logical(0), shape = "__string", 
        type = "string")), shape = "CreateSubscriptionDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_subscription_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CreateSubscriptionDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_subscription_definition_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AmznClientToken = structure(logical(0), 
        shape = "__string", location = "header", locationName = "X-Amzn-Client-Token", 
        type = "string"), SubscriptionDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "SubscriptionDefinitionId", 
        type = "string"), Subscriptions = structure(list(structure(list(Id = structure(logical(0), 
        shape = "__string", type = "string"), Source = structure(logical(0), 
        shape = "__string", type = "string"), Subject = structure(logical(0), 
        shape = "__string", type = "string"), Target = structure(logical(0), 
        shape = "__string", type = "string")), shape = "Subscription", 
        type = "structure")), shape = "__listOfSubscription", 
        type = "list")), shape = "CreateSubscriptionDefinitionVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_subscription_definition_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), Version = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CreateSubscriptionDefinitionVersionResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_core_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CoreDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "CoreDefinitionId", 
        type = "string")), shape = "DeleteCoreDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_core_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteCoreDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_device_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "DeviceDefinitionId", 
        type = "string")), shape = "DeleteDeviceDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_device_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteDeviceDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_function_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "FunctionDefinitionId", 
        type = "string")), shape = "DeleteFunctionDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_function_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteFunctionDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "GroupId", type = "string")), 
        shape = "DeleteGroupRequest", type = "structure")
    return(populate(args, shape))
}

delete_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_logger_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoggerDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "LoggerDefinitionId", 
        type = "string")), shape = "DeleteLoggerDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_logger_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteLoggerDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_resource_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "ResourceDefinitionId", 
        type = "string")), shape = "DeleteResourceDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_resource_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteResourceDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_subscription_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "SubscriptionDefinitionId", 
        type = "string")), shape = "DeleteSubscriptionDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_subscription_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteSubscriptionDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_role_from_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "GroupId", type = "string")), 
        shape = "DisassociateRoleFromGroupRequest", type = "structure")
    return(populate(args, shape))
}

disassociate_role_from_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DisassociatedAt = structure(logical(0), 
        shape = "__string", type = "string")), shape = "DisassociateRoleFromGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_service_role_from_account_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateServiceRoleFromAccountRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_service_role_from_account_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DisassociatedAt = structure(logical(0), 
        shape = "__string", type = "string")), shape = "DisassociateServiceRoleFromAccountResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_associated_role_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "GroupId", type = "string")), 
        shape = "GetAssociatedRoleRequest", type = "structure")
    return(populate(args, shape))
}

get_associated_role_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociatedAt = structure(logical(0), 
        shape = "__string", type = "string"), RoleArn = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GetAssociatedRoleResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_connectivity_info_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingName = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "ThingName", 
        type = "string")), shape = "GetConnectivityInfoRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_connectivity_info_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectivityInfo = structure(list(structure(list(HostAddress = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), Metadata = structure(logical(0), 
        shape = "__string", type = "string"), PortNumber = structure(logical(0), 
        shape = "__integer", type = "integer")), shape = "ConnectivityInfo", 
        type = "structure")), shape = "__listOfConnectivityInfo", 
        type = "list"), Message = structure(logical(0), shape = "__string", 
        locationName = "message", type = "string")), shape = "GetConnectivityInfoResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_core_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CoreDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "CoreDefinitionId", 
        type = "string")), shape = "GetCoreDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_core_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GetCoreDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_core_definition_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CoreDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "CoreDefinitionId", 
        type = "string"), CoreDefinitionVersionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "CoreDefinitionVersionId", 
        type = "string")), shape = "GetCoreDefinitionVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_core_definition_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Definition = structure(list(Cores = structure(list(structure(list(CertificateArn = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), SyncShadow = structure(logical(0), 
        shape = "__boolean", type = "boolean"), ThingArn = structure(logical(0), 
        shape = "__string", type = "string")), shape = "Core", 
        type = "structure")), shape = "__listOfCore", type = "list")), 
        shape = "CoreDefinitionVersion", type = "structure"), 
        Id = structure(logical(0), shape = "__string", type = "string"), 
        Version = structure(logical(0), shape = "__string", type = "string")), 
        shape = "GetCoreDefinitionVersionResponse", type = "structure")
    return(populate(args, shape))
}

get_deployment_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "DeploymentId", 
        type = "string"), GroupId = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "GroupId", type = "string")), 
        shape = "GetDeploymentStatusRequest", type = "structure")
    return(populate(args, shape))
}

get_deployment_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentStatus = structure(logical(0), 
        shape = "__string", type = "string"), DeploymentType = structure(logical(0), 
        shape = "DeploymentType", type = "string"), ErrorDetails = structure(list(structure(list(DetailedErrorCode = structure(logical(0), 
        shape = "__string", type = "string"), DetailedErrorMessage = structure(logical(0), 
        shape = "__string", type = "string")), shape = "ErrorDetail", 
        type = "structure")), shape = "ErrorDetails", type = "list"), 
        ErrorMessage = structure(logical(0), shape = "__string", 
            type = "string"), UpdatedAt = structure(logical(0), 
            shape = "__string", type = "string")), shape = "GetDeploymentStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_device_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "DeviceDefinitionId", 
        type = "string")), shape = "GetDeviceDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_device_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GetDeviceDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_device_definition_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "DeviceDefinitionId", 
        type = "string"), DeviceDefinitionVersionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "DeviceDefinitionVersionId", 
        type = "string")), shape = "GetDeviceDefinitionVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_device_definition_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Definition = structure(list(Devices = structure(list(structure(list(CertificateArn = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), SyncShadow = structure(logical(0), 
        shape = "__boolean", type = "boolean"), ThingArn = structure(logical(0), 
        shape = "__string", type = "string")), shape = "Device", 
        type = "structure")), shape = "__listOfDevice", type = "list")), 
        shape = "DeviceDefinitionVersion", type = "structure"), 
        Id = structure(logical(0), shape = "__string", type = "string"), 
        Version = structure(logical(0), shape = "__string", type = "string")), 
        shape = "GetDeviceDefinitionVersionResponse", type = "structure")
    return(populate(args, shape))
}

get_function_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "FunctionDefinitionId", 
        type = "string")), shape = "GetFunctionDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_function_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GetFunctionDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_function_definition_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "FunctionDefinitionId", 
        type = "string"), FunctionDefinitionVersionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "FunctionDefinitionVersionId", 
        type = "string")), shape = "GetFunctionDefinitionVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_function_definition_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Definition = structure(list(Functions = structure(list(structure(list(FunctionArn = structure(logical(0), 
        shape = "__string", type = "string"), FunctionConfiguration = structure(list(EncodingType = structure(logical(0), 
        shape = "EncodingType", type = "string"), Environment = structure(list(AccessSysfs = structure(logical(0), 
        shape = "__boolean", type = "boolean"), ResourceAccessPolicies = structure(list(structure(list(Permission = structure(logical(0), 
        shape = "Permission", type = "string"), ResourceId = structure(logical(0), 
        shape = "__string", type = "string")), shape = "ResourceAccessPolicy", 
        type = "structure")), shape = "__listOfResourceAccessPolicy", 
        type = "list"), Variables = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "__mapOf__string", 
        type = "map")), shape = "FunctionConfigurationEnvironment", 
        type = "structure"), ExecArgs = structure(logical(0), 
        shape = "__string", type = "string"), Executable = structure(logical(0), 
        shape = "__string", type = "string"), MemorySize = structure(logical(0), 
        shape = "__integer", type = "integer"), Pinned = structure(logical(0), 
        shape = "__boolean", type = "boolean"), Timeout = structure(logical(0), 
        shape = "__integer", type = "integer")), shape = "FunctionConfiguration", 
        type = "structure"), Id = structure(logical(0), shape = "__string", 
        type = "string")), shape = "Function", type = "structure")), 
        shape = "__listOfFunction", type = "list")), shape = "FunctionDefinitionVersion", 
        type = "structure"), Id = structure(logical(0), shape = "__string", 
        type = "string"), Version = structure(logical(0), shape = "__string", 
        type = "string")), shape = "GetFunctionDefinitionVersionResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "GroupId", type = "string")), 
        shape = "GetGroupRequest", type = "structure")
    return(populate(args, shape))
}

get_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GetGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_group_certificate_authority_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "CertificateAuthorityId", 
        type = "string"), GroupId = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "GroupId", type = "string")), 
        shape = "GetGroupCertificateAuthorityRequest", type = "structure")
    return(populate(args, shape))
}

get_group_certificate_authority_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupCertificateAuthorityArn = structure(logical(0), 
        shape = "__string", type = "string"), GroupCertificateAuthorityId = structure(logical(0), 
        shape = "__string", type = "string"), PemEncodedCertificate = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GetGroupCertificateAuthorityResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_group_certificate_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "GroupId", type = "string")), 
        shape = "GetGroupCertificateConfigurationRequest", type = "structure")
    return(populate(args, shape))
}

get_group_certificate_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityExpiryInMilliseconds = structure(logical(0), 
        shape = "__string", type = "string"), CertificateExpiryInMilliseconds = structure(logical(0), 
        shape = "__string", type = "string"), GroupId = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GetGroupCertificateConfigurationResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_group_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "GroupId", type = "string"), 
        GroupVersionId = structure(logical(0), shape = "__string", 
            location = "uri", locationName = "GroupVersionId", 
            type = "string")), shape = "GetGroupVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_group_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Definition = structure(list(CoreDefinitionVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), DeviceDefinitionVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), FunctionDefinitionVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), LoggerDefinitionVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), ResourceDefinitionVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), SubscriptionDefinitionVersionArn = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GroupVersion", 
        type = "structure"), Id = structure(logical(0), shape = "__string", 
        type = "string"), Version = structure(logical(0), shape = "__string", 
        type = "string")), shape = "GetGroupVersionResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_logger_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoggerDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "LoggerDefinitionId", 
        type = "string")), shape = "GetLoggerDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_logger_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GetLoggerDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_logger_definition_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoggerDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "LoggerDefinitionId", 
        type = "string"), LoggerDefinitionVersionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "LoggerDefinitionVersionId", 
        type = "string")), shape = "GetLoggerDefinitionVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_logger_definition_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Definition = structure(list(Loggers = structure(list(structure(list(Component = structure(logical(0), 
        shape = "LoggerComponent", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), Level = structure(logical(0), 
        shape = "LoggerLevel", type = "string"), Space = structure(logical(0), 
        shape = "__integer", type = "integer"), Type = structure(logical(0), 
        shape = "LoggerType", type = "string")), shape = "Logger", 
        type = "structure")), shape = "__listOfLogger", type = "list")), 
        shape = "LoggerDefinitionVersion", type = "structure"), 
        Id = structure(logical(0), shape = "__string", type = "string"), 
        Version = structure(logical(0), shape = "__string", type = "string")), 
        shape = "GetLoggerDefinitionVersionResponse", type = "structure")
    return(populate(args, shape))
}

get_resource_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "ResourceDefinitionId", 
        type = "string")), shape = "GetResourceDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_resource_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GetResourceDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_resource_definition_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "ResourceDefinitionId", 
        type = "string"), ResourceDefinitionVersionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "ResourceDefinitionVersionId", 
        type = "string")), shape = "GetResourceDefinitionVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_resource_definition_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Definition = structure(list(Resources = structure(list(structure(list(Id = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string"), ResourceDataContainer = structure(list(LocalDeviceResourceData = structure(list(GroupOwnerSetting = structure(list(AutoAddGroupOwner = structure(logical(0), 
        shape = "__boolean", type = "boolean"), GroupOwner = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GroupOwnerSetting", 
        type = "structure"), SourcePath = structure(logical(0), 
        shape = "__string", type = "string")), shape = "LocalDeviceResourceData", 
        type = "structure"), LocalVolumeResourceData = structure(list(DestinationPath = structure(logical(0), 
        shape = "__string", type = "string"), GroupOwnerSetting = structure(list(AutoAddGroupOwner = structure(logical(0), 
        shape = "__boolean", type = "boolean"), GroupOwner = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GroupOwnerSetting", 
        type = "structure"), SourcePath = structure(logical(0), 
        shape = "__string", type = "string")), shape = "LocalVolumeResourceData", 
        type = "structure"), S3MachineLearningModelResourceData = structure(list(DestinationPath = structure(logical(0), 
        shape = "__string", type = "string"), S3Uri = structure(logical(0), 
        shape = "__string", type = "string")), shape = "S3MachineLearningModelResourceData", 
        type = "structure"), SageMakerMachineLearningModelResourceData = structure(list(DestinationPath = structure(logical(0), 
        shape = "__string", type = "string"), SageMakerJobArn = structure(logical(0), 
        shape = "__string", type = "string")), shape = "SageMakerMachineLearningModelResourceData", 
        type = "structure")), shape = "ResourceDataContainer", 
        type = "structure")), shape = "Resource", type = "structure")), 
        shape = "__listOfResource", type = "list")), shape = "ResourceDefinitionVersion", 
        type = "structure"), Id = structure(logical(0), shape = "__string", 
        type = "string"), Version = structure(logical(0), shape = "__string", 
        type = "string")), shape = "GetResourceDefinitionVersionResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_service_role_for_account_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GetServiceRoleForAccountRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_service_role_for_account_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociatedAt = structure(logical(0), 
        shape = "__string", type = "string"), RoleArn = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GetServiceRoleForAccountResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_subscription_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "SubscriptionDefinitionId", 
        type = "string")), shape = "GetSubscriptionDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_subscription_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GetSubscriptionDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_subscription_definition_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "SubscriptionDefinitionId", 
        type = "string"), SubscriptionDefinitionVersionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "SubscriptionDefinitionVersionId", 
        type = "string")), shape = "GetSubscriptionDefinitionVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_subscription_definition_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "__string", 
        type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Definition = structure(list(Subscriptions = structure(list(structure(list(Id = structure(logical(0), 
        shape = "__string", type = "string"), Source = structure(logical(0), 
        shape = "__string", type = "string"), Subject = structure(logical(0), 
        shape = "__string", type = "string"), Target = structure(logical(0), 
        shape = "__string", type = "string")), shape = "Subscription", 
        type = "structure")), shape = "__listOfSubscription", 
        type = "list")), shape = "SubscriptionDefinitionVersion", 
        type = "structure"), Id = structure(logical(0), shape = "__string", 
        type = "string"), Version = structure(logical(0), shape = "__string", 
        type = "string")), shape = "GetSubscriptionDefinitionVersionResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_core_definition_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CoreDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "CoreDefinitionId", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "MaxResults", 
        type = "string"), NextToken = structure(logical(0), shape = "__string", 
        location = "querystring", locationName = "NextToken", 
        type = "string")), shape = "ListCoreDefinitionVersionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_core_definition_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "__string", type = "string"), Versions = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "__string", type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), Version = structure(logical(0), 
        shape = "__string", type = "string")), shape = "VersionInformation", 
        type = "structure")), shape = "__listOfVersionInformation", 
        type = "list")), shape = "ListCoreDefinitionVersionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_core_definitions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "MaxResults", 
        type = "string"), NextToken = structure(logical(0), shape = "__string", 
        location = "querystring", locationName = "NextToken", 
        type = "string")), shape = "ListCoreDefinitionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_core_definitions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Definitions = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "__string", type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "DefinitionInformation", 
        type = "structure")), shape = "__listOfDefinitionInformation", 
        type = "list"), NextToken = structure(logical(0), shape = "__string", 
        type = "string")), shape = "ListCoreDefinitionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_deployments_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "GroupId", type = "string"), 
        MaxResults = structure(logical(0), shape = "__string", 
            location = "querystring", locationName = "MaxResults", 
            type = "string"), NextToken = structure(logical(0), 
            shape = "__string", location = "querystring", locationName = "NextToken", 
            type = "string")), shape = "ListDeploymentsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_deployments_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Deployments = structure(list(structure(list(CreatedAt = structure(logical(0), 
        shape = "__string", type = "string"), DeploymentArn = structure(logical(0), 
        shape = "__string", type = "string"), DeploymentId = structure(logical(0), 
        shape = "__string", type = "string"), DeploymentType = structure(logical(0), 
        shape = "DeploymentType", type = "string"), GroupArn = structure(logical(0), 
        shape = "__string", type = "string")), shape = "Deployment", 
        type = "structure")), shape = "Deployments", type = "list"), 
        NextToken = structure(logical(0), shape = "__string", 
            type = "string")), shape = "ListDeploymentsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_device_definition_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "DeviceDefinitionId", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "MaxResults", 
        type = "string"), NextToken = structure(logical(0), shape = "__string", 
        location = "querystring", locationName = "NextToken", 
        type = "string")), shape = "ListDeviceDefinitionVersionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_device_definition_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "__string", type = "string"), Versions = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "__string", type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), Version = structure(logical(0), 
        shape = "__string", type = "string")), shape = "VersionInformation", 
        type = "structure")), shape = "__listOfVersionInformation", 
        type = "list")), shape = "ListDeviceDefinitionVersionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_device_definitions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "MaxResults", 
        type = "string"), NextToken = structure(logical(0), shape = "__string", 
        location = "querystring", locationName = "NextToken", 
        type = "string")), shape = "ListDeviceDefinitionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_device_definitions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Definitions = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "__string", type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "DefinitionInformation", 
        type = "structure")), shape = "__listOfDefinitionInformation", 
        type = "list"), NextToken = structure(logical(0), shape = "__string", 
        type = "string")), shape = "ListDeviceDefinitionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_function_definition_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "FunctionDefinitionId", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "MaxResults", 
        type = "string"), NextToken = structure(logical(0), shape = "__string", 
        location = "querystring", locationName = "NextToken", 
        type = "string")), shape = "ListFunctionDefinitionVersionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_function_definition_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "__string", type = "string"), Versions = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "__string", type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), Version = structure(logical(0), 
        shape = "__string", type = "string")), shape = "VersionInformation", 
        type = "structure")), shape = "__listOfVersionInformation", 
        type = "list")), shape = "ListFunctionDefinitionVersionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_function_definitions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "MaxResults", 
        type = "string"), NextToken = structure(logical(0), shape = "__string", 
        location = "querystring", locationName = "NextToken", 
        type = "string")), shape = "ListFunctionDefinitionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_function_definitions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Definitions = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "__string", type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "DefinitionInformation", 
        type = "structure")), shape = "__listOfDefinitionInformation", 
        type = "list"), NextToken = structure(logical(0), shape = "__string", 
        type = "string")), shape = "ListFunctionDefinitionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_group_certificate_authorities_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "GroupId", type = "string")), 
        shape = "ListGroupCertificateAuthoritiesRequest", type = "structure")
    return(populate(args, shape))
}

list_group_certificate_authorities_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupCertificateAuthorities = structure(list(structure(list(GroupCertificateAuthorityArn = structure(logical(0), 
        shape = "__string", type = "string"), GroupCertificateAuthorityId = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GroupCertificateAuthorityProperties", 
        type = "structure")), shape = "__listOfGroupCertificateAuthorityProperties", 
        type = "list")), shape = "ListGroupCertificateAuthoritiesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_group_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "GroupId", type = "string"), 
        MaxResults = structure(logical(0), shape = "__string", 
            location = "querystring", locationName = "MaxResults", 
            type = "string"), NextToken = structure(logical(0), 
            shape = "__string", location = "querystring", locationName = "NextToken", 
            type = "string")), shape = "ListGroupVersionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_group_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "__string", type = "string"), Versions = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "__string", type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), Version = structure(logical(0), 
        shape = "__string", type = "string")), shape = "VersionInformation", 
        type = "structure")), shape = "__listOfVersionInformation", 
        type = "list")), shape = "ListGroupVersionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "MaxResults", 
        type = "string"), NextToken = structure(logical(0), shape = "__string", 
        location = "querystring", locationName = "NextToken", 
        type = "string")), shape = "ListGroupsRequest", type = "structure")
    return(populate(args, shape))
}

list_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Groups = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "__string", type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GroupInformation", 
        type = "structure")), shape = "__listOfGroupInformation", 
        type = "list"), NextToken = structure(logical(0), shape = "__string", 
        type = "string")), shape = "ListGroupsResponse", type = "structure")
    return(populate(args, shape))
}

list_logger_definition_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoggerDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "LoggerDefinitionId", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "MaxResults", 
        type = "string"), NextToken = structure(logical(0), shape = "__string", 
        location = "querystring", locationName = "NextToken", 
        type = "string")), shape = "ListLoggerDefinitionVersionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_logger_definition_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "__string", type = "string"), Versions = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "__string", type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), Version = structure(logical(0), 
        shape = "__string", type = "string")), shape = "VersionInformation", 
        type = "structure")), shape = "__listOfVersionInformation", 
        type = "list")), shape = "ListLoggerDefinitionVersionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_logger_definitions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "MaxResults", 
        type = "string"), NextToken = structure(logical(0), shape = "__string", 
        location = "querystring", locationName = "NextToken", 
        type = "string")), shape = "ListLoggerDefinitionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_logger_definitions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Definitions = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "__string", type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "DefinitionInformation", 
        type = "structure")), shape = "__listOfDefinitionInformation", 
        type = "list"), NextToken = structure(logical(0), shape = "__string", 
        type = "string")), shape = "ListLoggerDefinitionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_resource_definition_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "MaxResults", 
        type = "string"), NextToken = structure(logical(0), shape = "__string", 
        location = "querystring", locationName = "NextToken", 
        type = "string"), ResourceDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "ResourceDefinitionId", 
        type = "string")), shape = "ListResourceDefinitionVersionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_resource_definition_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "__string", type = "string"), Versions = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "__string", type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), Version = structure(logical(0), 
        shape = "__string", type = "string")), shape = "VersionInformation", 
        type = "structure")), shape = "__listOfVersionInformation", 
        type = "list")), shape = "ListResourceDefinitionVersionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_resource_definitions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "MaxResults", 
        type = "string"), NextToken = structure(logical(0), shape = "__string", 
        location = "querystring", locationName = "NextToken", 
        type = "string")), shape = "ListResourceDefinitionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_resource_definitions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Definitions = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "__string", type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "DefinitionInformation", 
        type = "structure")), shape = "__listOfDefinitionInformation", 
        type = "list"), NextToken = structure(logical(0), shape = "__string", 
        type = "string")), shape = "ListResourceDefinitionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_subscription_definition_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "MaxResults", 
        type = "string"), NextToken = structure(logical(0), shape = "__string", 
        location = "querystring", locationName = "NextToken", 
        type = "string"), SubscriptionDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "SubscriptionDefinitionId", 
        type = "string")), shape = "ListSubscriptionDefinitionVersionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_subscription_definition_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "__string", type = "string"), Versions = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "__string", type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), Version = structure(logical(0), 
        shape = "__string", type = "string")), shape = "VersionInformation", 
        type = "structure")), shape = "__listOfVersionInformation", 
        type = "list")), shape = "ListSubscriptionDefinitionVersionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_subscription_definitions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "MaxResults", 
        type = "string"), NextToken = structure(logical(0), shape = "__string", 
        location = "querystring", locationName = "NextToken", 
        type = "string")), shape = "ListSubscriptionDefinitionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_subscription_definitions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Definitions = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "__string", type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), LastUpdatedTimestamp = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersion = structure(logical(0), 
        shape = "__string", type = "string"), LatestVersionArn = structure(logical(0), 
        shape = "__string", type = "string"), Name = structure(logical(0), 
        shape = "__string", type = "string")), shape = "DefinitionInformation", 
        type = "structure")), shape = "__listOfDefinitionInformation", 
        type = "list"), NextToken = structure(logical(0), shape = "__string", 
        type = "string")), shape = "ListSubscriptionDefinitionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

reset_deployments_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AmznClientToken = structure(logical(0), 
        shape = "__string", location = "header", locationName = "X-Amzn-Client-Token", 
        type = "string"), Force = structure(logical(0), shape = "__boolean", 
        type = "boolean"), GroupId = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "GroupId", type = "string")), 
        shape = "ResetDeploymentsRequest", type = "structure")
    return(populate(args, shape))
}

reset_deployments_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentArn = structure(logical(0), 
        shape = "__string", type = "string"), DeploymentId = structure(logical(0), 
        shape = "__string", type = "string")), shape = "ResetDeploymentsResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_connectivity_info_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectivityInfo = structure(list(structure(list(HostAddress = structure(logical(0), 
        shape = "__string", type = "string"), Id = structure(logical(0), 
        shape = "__string", type = "string"), Metadata = structure(logical(0), 
        shape = "__string", type = "string"), PortNumber = structure(logical(0), 
        shape = "__integer", type = "integer")), shape = "ConnectivityInfo", 
        type = "structure")), shape = "__listOfConnectivityInfo", 
        type = "list"), ThingName = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "ThingName", type = "string")), 
        shape = "UpdateConnectivityInfoRequest", type = "structure")
    return(populate(args, shape))
}

update_connectivity_info_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Message = structure(logical(0), shape = "__string", 
        locationName = "message", type = "string"), Version = structure(logical(0), 
        shape = "__string", type = "string")), shape = "UpdateConnectivityInfoResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_core_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CoreDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "CoreDefinitionId", 
        type = "string"), Name = structure(logical(0), shape = "__string", 
        type = "string")), shape = "UpdateCoreDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_core_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateCoreDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_device_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "DeviceDefinitionId", 
        type = "string"), Name = structure(logical(0), shape = "__string", 
        type = "string")), shape = "UpdateDeviceDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_device_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateDeviceDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_function_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "FunctionDefinitionId", 
        type = "string"), Name = structure(logical(0), shape = "__string", 
        type = "string")), shape = "UpdateFunctionDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_function_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateFunctionDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "GroupId", type = "string"), 
        Name = structure(logical(0), shape = "__string", type = "string")), 
        shape = "UpdateGroupRequest", type = "structure")
    return(populate(args, shape))
}

update_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_group_certificate_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateExpiryInMilliseconds = structure(logical(0), 
        shape = "__string", type = "string"), GroupId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "GroupId", 
        type = "string")), shape = "UpdateGroupCertificateConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_group_certificate_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityExpiryInMilliseconds = structure(logical(0), 
        shape = "__string", type = "string"), CertificateExpiryInMilliseconds = structure(logical(0), 
        shape = "__string", type = "string"), GroupId = structure(logical(0), 
        shape = "__string", type = "string")), shape = "UpdateGroupCertificateConfigurationResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_logger_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoggerDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "LoggerDefinitionId", 
        type = "string"), Name = structure(logical(0), shape = "__string", 
        type = "string")), shape = "UpdateLoggerDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_logger_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateLoggerDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_resource_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "__string", 
        type = "string"), ResourceDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "ResourceDefinitionId", 
        type = "string")), shape = "UpdateResourceDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_resource_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateResourceDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_subscription_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "__string", 
        type = "string"), SubscriptionDefinitionId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "SubscriptionDefinitionId", 
        type = "string")), shape = "UpdateSubscriptionDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_subscription_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateSubscriptionDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}
