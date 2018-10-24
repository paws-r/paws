abort_environment_update_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string"), EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L)), shape = "AbortEnvironmentUpdateMessage", 
        type = "structure")
    return(populate(args, shape))
}

abort_environment_update_output <- function () 
{
    return(list())
}

apply_environment_managed_action_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentName = structure(logical(0), 
        shape = "String", type = "string"), EnvironmentId = structure(logical(0), 
        shape = "String", type = "string"), ActionId = structure(logical(0), 
        shape = "String", type = "string")), shape = "ApplyEnvironmentManagedActionRequest", 
        type = "structure")
    return(populate(args, shape))
}

apply_environment_managed_action_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActionId = structure(logical(0), 
        shape = "String", type = "string"), ActionDescription = structure(logical(0), 
        shape = "String", type = "string"), ActionType = structure(logical(0), 
        shape = "ActionType", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "ApplyEnvironmentManagedActionResult", 
        type = "structure")
    return(populate(args, shape))
}

check_dns_availability_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CNAMEPrefix = structure(logical(0), 
        shape = "DNSCnamePrefix", type = "string", max = 63L, 
        min = 4L)), shape = "CheckDNSAvailabilityMessage", type = "structure")
    return(populate(args, shape))
}

check_dns_availability_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Available = structure(logical(0), 
        shape = "CnameAvailability", type = "boolean"), FullyQualifiedCNAME = structure(logical(0), 
        shape = "DNSCname", type = "string", max = 255L, min = 1L)), 
        shape = "CheckDNSAvailabilityResultMessage", type = "structure")
    return(populate(args, shape))
}

compose_environments_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), GroupName = structure(logical(0), shape = "GroupName", 
        type = "string", max = 19L, min = 1L), VersionLabels = structure(list(structure(logical(0), 
        shape = "VersionLabel", type = "string", max = 100L, 
        min = 1L)), shape = "VersionLabels", type = "list")), 
        shape = "ComposeEnvironmentsMessage", type = "structure")
    return(populate(args, shape))
}

compose_environments_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Environments = structure(list(structure(list(EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), EnvironmentId = structure(logical(0), shape = "EnvironmentId", 
        type = "string"), ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), VersionLabel = structure(logical(0), shape = "VersionLabel", 
        type = "string", max = 100L, min = 1L), SolutionStackName = structure(logical(0), 
        shape = "SolutionStackName", type = "string"), PlatformArn = structure(logical(0), 
        shape = "PlatformArn", type = "string"), TemplateName = structure(logical(0), 
        shape = "ConfigurationTemplateName", type = "string", 
        max = 100L, min = 1L), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L), 
        EndpointURL = structure(logical(0), shape = "EndpointURL", 
            type = "string"), CNAME = structure(logical(0), shape = "DNSCname", 
            type = "string", max = 255L, min = 1L), DateCreated = structure(logical(0), 
            shape = "CreationDate", type = "timestamp"), DateUpdated = structure(logical(0), 
            shape = "UpdateDate", type = "timestamp"), Status = structure(logical(0), 
            shape = "EnvironmentStatus", type = "string"), AbortableOperationInProgress = structure(logical(0), 
            shape = "AbortableOperationInProgress", type = "boolean"), 
        Health = structure(logical(0), shape = "EnvironmentHealth", 
            type = "string"), HealthStatus = structure(logical(0), 
            shape = "EnvironmentHealthStatus", type = "string"), 
        Resources = structure(list(LoadBalancer = structure(list(LoadBalancerName = structure(logical(0), 
            shape = "String", type = "string"), Domain = structure(logical(0), 
            shape = "String", type = "string"), Listeners = structure(list(structure(list(Protocol = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "Listener", 
            type = "structure")), shape = "LoadBalancerListenersDescription", 
            type = "list")), shape = "LoadBalancerDescription", 
            type = "structure")), shape = "EnvironmentResourcesDescription", 
            type = "structure"), Tier = structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Type = structure(logical(0), 
            shape = "String", type = "string"), Version = structure(logical(0), 
            shape = "String", type = "string")), shape = "EnvironmentTier", 
            type = "structure"), EnvironmentLinks = structure(list(structure(list(LinkName = structure(logical(0), 
            shape = "String", type = "string"), EnvironmentName = structure(logical(0), 
            shape = "String", type = "string")), shape = "EnvironmentLink", 
            type = "structure")), shape = "EnvironmentLinks", 
            type = "list"), EnvironmentArn = structure(logical(0), 
            shape = "EnvironmentArn", type = "string")), shape = "EnvironmentDescription", 
        type = "structure")), shape = "EnvironmentDescriptionsList", 
        type = "list"), NextToken = structure(logical(0), shape = "Token", 
        type = "string")), shape = "EnvironmentDescriptionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), Description = structure(logical(0), shape = "Description", 
        type = "string", max = 200L), ResourceLifecycleConfig = structure(list(ServiceRole = structure(logical(0), 
        shape = "String", type = "string"), VersionLifecycleConfig = structure(list(MaxCountRule = structure(list(Enabled = structure(logical(0), 
        shape = "BoxedBoolean", type = "boolean"), MaxCount = structure(logical(0), 
        shape = "BoxedInt", type = "integer"), DeleteSourceFromS3 = structure(logical(0), 
        shape = "BoxedBoolean", type = "boolean")), shape = "MaxCountRule", 
        type = "structure"), MaxAgeRule = structure(list(Enabled = structure(logical(0), 
        shape = "BoxedBoolean", type = "boolean"), MaxAgeInDays = structure(logical(0), 
        shape = "BoxedInt", type = "integer"), DeleteSourceFromS3 = structure(logical(0), 
        shape = "BoxedBoolean", type = "boolean")), shape = "MaxAgeRule", 
        type = "structure")), shape = "ApplicationVersionLifecycleConfig", 
        type = "structure")), shape = "ApplicationResourceLifecycleConfig", 
        type = "structure")), shape = "CreateApplicationMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_application_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Application = structure(list(ApplicationArn = structure(logical(0), 
        shape = "ApplicationArn", type = "string"), ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), Description = structure(logical(0), shape = "Description", 
        type = "string", max = 200L), DateCreated = structure(logical(0), 
        shape = "CreationDate", type = "timestamp"), DateUpdated = structure(logical(0), 
        shape = "UpdateDate", type = "timestamp"), Versions = structure(list(structure(logical(0), 
        shape = "VersionLabel", type = "string", max = 100L, 
        min = 1L)), shape = "VersionLabelsList", type = "list"), 
        ConfigurationTemplates = structure(list(structure(logical(0), 
            shape = "ConfigurationTemplateName", type = "string", 
            max = 100L, min = 1L)), shape = "ConfigurationTemplateNamesList", 
            type = "list"), ResourceLifecycleConfig = structure(list(ServiceRole = structure(logical(0), 
            shape = "String", type = "string"), VersionLifecycleConfig = structure(list(MaxCountRule = structure(list(Enabled = structure(logical(0), 
            shape = "BoxedBoolean", type = "boolean"), MaxCount = structure(logical(0), 
            shape = "BoxedInt", type = "integer"), DeleteSourceFromS3 = structure(logical(0), 
            shape = "BoxedBoolean", type = "boolean")), shape = "MaxCountRule", 
            type = "structure"), MaxAgeRule = structure(list(Enabled = structure(logical(0), 
            shape = "BoxedBoolean", type = "boolean"), MaxAgeInDays = structure(logical(0), 
            shape = "BoxedInt", type = "integer"), DeleteSourceFromS3 = structure(logical(0), 
            shape = "BoxedBoolean", type = "boolean")), shape = "MaxAgeRule", 
            type = "structure")), shape = "ApplicationVersionLifecycleConfig", 
            type = "structure")), shape = "ApplicationResourceLifecycleConfig", 
            type = "structure")), shape = "ApplicationDescription", 
        type = "structure")), shape = "ApplicationDescriptionMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_application_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), VersionLabel = structure(logical(0), shape = "VersionLabel", 
        type = "string", max = 100L, min = 1L), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L), 
        SourceBuildInformation = structure(list(SourceType = structure(logical(0), 
            shape = "SourceType", type = "string"), SourceRepository = structure(logical(0), 
            shape = "SourceRepository", type = "string"), SourceLocation = structure(logical(0), 
            shape = "SourceLocation", type = "string", max = 255L, 
            min = 3L, pattern = ".+/.+")), shape = "SourceBuildInformation", 
            type = "structure"), SourceBundle = structure(list(S3Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", max = 255L), 
            S3Key = structure(logical(0), shape = "S3Key", type = "string", 
                max = 1024L)), shape = "S3Location", type = "structure"), 
        BuildConfiguration = structure(list(ArtifactName = structure(logical(0), 
            shape = "String", type = "string"), CodeBuildServiceRole = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*"), 
            ComputeType = structure(logical(0), shape = "ComputeType", 
                type = "string"), Image = structure(logical(0), 
                shape = "NonEmptyString", type = "string", pattern = ".*\\S.*"), 
            TimeoutInMinutes = structure(logical(0), shape = "BoxedInt", 
                type = "integer")), shape = "BuildConfiguration", 
            type = "structure"), AutoCreateApplication = structure(logical(0), 
            shape = "AutoCreateApplication", type = "boolean"), 
        Process = structure(logical(0), shape = "ApplicationVersionProccess", 
            type = "boolean")), shape = "CreateApplicationVersionMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_application_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationVersion = structure(list(ApplicationVersionArn = structure(logical(0), 
        shape = "ApplicationVersionArn", type = "string"), ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), Description = structure(logical(0), shape = "Description", 
        type = "string", max = 200L), VersionLabel = structure(logical(0), 
        shape = "VersionLabel", type = "string", max = 100L, 
        min = 1L), SourceBuildInformation = structure(list(SourceType = structure(logical(0), 
        shape = "SourceType", type = "string"), SourceRepository = structure(logical(0), 
        shape = "SourceRepository", type = "string"), SourceLocation = structure(logical(0), 
        shape = "SourceLocation", type = "string", max = 255L, 
        min = 3L, pattern = ".+/.+")), shape = "SourceBuildInformation", 
        type = "structure"), BuildArn = structure(logical(0), 
        shape = "String", type = "string"), SourceBundle = structure(list(S3Bucket = structure(logical(0), 
        shape = "S3Bucket", type = "string", max = 255L), S3Key = structure(logical(0), 
        shape = "S3Key", type = "string", max = 1024L)), shape = "S3Location", 
        type = "structure"), DateCreated = structure(logical(0), 
        shape = "CreationDate", type = "timestamp"), DateUpdated = structure(logical(0), 
        shape = "UpdateDate", type = "timestamp"), Status = structure(logical(0), 
        shape = "ApplicationVersionStatus", type = "string")), 
        shape = "ApplicationVersionDescription", type = "structure")), 
        shape = "ApplicationVersionDescriptionMessage", type = "structure")
    return(populate(args, shape))
}

create_configuration_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), TemplateName = structure(logical(0), shape = "ConfigurationTemplateName", 
        type = "string", max = 100L, min = 1L), SolutionStackName = structure(logical(0), 
        shape = "SolutionStackName", type = "string"), PlatformArn = structure(logical(0), 
        shape = "PlatformArn", type = "string"), SourceConfiguration = structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), TemplateName = structure(logical(0), shape = "ConfigurationTemplateName", 
        type = "string", max = 100L, min = 1L)), shape = "SourceConfiguration", 
        type = "structure"), EnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L), 
        OptionSettings = structure(list(structure(list(ResourceName = structure(logical(0), 
            shape = "ResourceName", type = "string", max = 256L, 
            min = 1L), Namespace = structure(logical(0), shape = "OptionNamespace", 
            type = "string"), OptionName = structure(logical(0), 
            shape = "ConfigurationOptionName", type = "string"), 
            Value = structure(logical(0), shape = "ConfigurationOptionValue", 
                type = "string")), shape = "ConfigurationOptionSetting", 
            type = "structure")), shape = "ConfigurationOptionSettingsList", 
            type = "list")), shape = "CreateConfigurationTemplateMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_configuration_template_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SolutionStackName = structure(logical(0), 
        shape = "SolutionStackName", type = "string"), PlatformArn = structure(logical(0), 
        shape = "PlatformArn", type = "string"), ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), TemplateName = structure(logical(0), shape = "ConfigurationTemplateName", 
        type = "string", max = 100L, min = 1L), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L), 
        EnvironmentName = structure(logical(0), shape = "EnvironmentName", 
            type = "string", max = 40L, min = 4L), DeploymentStatus = structure(logical(0), 
            shape = "ConfigurationDeploymentStatus", type = "string"), 
        DateCreated = structure(logical(0), shape = "CreationDate", 
            type = "timestamp"), DateUpdated = structure(logical(0), 
            shape = "UpdateDate", type = "timestamp"), OptionSettings = structure(list(structure(list(ResourceName = structure(logical(0), 
            shape = "ResourceName", type = "string", max = 256L, 
            min = 1L), Namespace = structure(logical(0), shape = "OptionNamespace", 
            type = "string"), OptionName = structure(logical(0), 
            shape = "ConfigurationOptionName", type = "string"), 
            Value = structure(logical(0), shape = "ConfigurationOptionValue", 
                type = "string")), shape = "ConfigurationOptionSetting", 
            type = "structure")), shape = "ConfigurationOptionSettingsList", 
            type = "list")), shape = "ConfigurationSettingsDescription", 
        type = "structure")
    return(populate(args, shape))
}

create_environment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), EnvironmentName = structure(logical(0), shape = "EnvironmentName", 
        type = "string", max = 40L, min = 4L), GroupName = structure(logical(0), 
        shape = "GroupName", type = "string", max = 19L, min = 1L), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 200L), CNAMEPrefix = structure(logical(0), 
            shape = "DNSCnamePrefix", type = "string", max = 63L, 
            min = 4L), Tier = structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Type = structure(logical(0), 
            shape = "String", type = "string"), Version = structure(logical(0), 
            shape = "String", type = "string")), shape = "EnvironmentTier", 
            type = "structure"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L)), shape = "Tag", 
            type = "structure")), shape = "Tags", type = "list"), 
        VersionLabel = structure(logical(0), shape = "VersionLabel", 
            type = "string", max = 100L, min = 1L), TemplateName = structure(logical(0), 
            shape = "ConfigurationTemplateName", type = "string", 
            max = 100L, min = 1L), SolutionStackName = structure(logical(0), 
            shape = "SolutionStackName", type = "string"), PlatformArn = structure(logical(0), 
            shape = "PlatformArn", type = "string"), OptionSettings = structure(list(structure(list(ResourceName = structure(logical(0), 
            shape = "ResourceName", type = "string", max = 256L, 
            min = 1L), Namespace = structure(logical(0), shape = "OptionNamespace", 
            type = "string"), OptionName = structure(logical(0), 
            shape = "ConfigurationOptionName", type = "string"), 
            Value = structure(logical(0), shape = "ConfigurationOptionValue", 
                type = "string")), shape = "ConfigurationOptionSetting", 
            type = "structure")), shape = "ConfigurationOptionSettingsList", 
            type = "list"), OptionsToRemove = structure(list(structure(list(ResourceName = structure(logical(0), 
            shape = "ResourceName", type = "string", max = 256L, 
            min = 1L), Namespace = structure(logical(0), shape = "OptionNamespace", 
            type = "string"), OptionName = structure(logical(0), 
            shape = "ConfigurationOptionName", type = "string")), 
            shape = "OptionSpecification", type = "structure")), 
            shape = "OptionsSpecifierList", type = "list")), 
        shape = "CreateEnvironmentMessage", type = "structure")
    return(populate(args, shape))
}

create_environment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), EnvironmentId = structure(logical(0), shape = "EnvironmentId", 
        type = "string"), ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), VersionLabel = structure(logical(0), shape = "VersionLabel", 
        type = "string", max = 100L, min = 1L), SolutionStackName = structure(logical(0), 
        shape = "SolutionStackName", type = "string"), PlatformArn = structure(logical(0), 
        shape = "PlatformArn", type = "string"), TemplateName = structure(logical(0), 
        shape = "ConfigurationTemplateName", type = "string", 
        max = 100L, min = 1L), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L), 
        EndpointURL = structure(logical(0), shape = "EndpointURL", 
            type = "string"), CNAME = structure(logical(0), shape = "DNSCname", 
            type = "string", max = 255L, min = 1L), DateCreated = structure(logical(0), 
            shape = "CreationDate", type = "timestamp"), DateUpdated = structure(logical(0), 
            shape = "UpdateDate", type = "timestamp"), Status = structure(logical(0), 
            shape = "EnvironmentStatus", type = "string"), AbortableOperationInProgress = structure(logical(0), 
            shape = "AbortableOperationInProgress", type = "boolean"), 
        Health = structure(logical(0), shape = "EnvironmentHealth", 
            type = "string"), HealthStatus = structure(logical(0), 
            shape = "EnvironmentHealthStatus", type = "string"), 
        Resources = structure(list(LoadBalancer = structure(list(LoadBalancerName = structure(logical(0), 
            shape = "String", type = "string"), Domain = structure(logical(0), 
            shape = "String", type = "string"), Listeners = structure(list(structure(list(Protocol = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "Listener", 
            type = "structure")), shape = "LoadBalancerListenersDescription", 
            type = "list")), shape = "LoadBalancerDescription", 
            type = "structure")), shape = "EnvironmentResourcesDescription", 
            type = "structure"), Tier = structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Type = structure(logical(0), 
            shape = "String", type = "string"), Version = structure(logical(0), 
            shape = "String", type = "string")), shape = "EnvironmentTier", 
            type = "structure"), EnvironmentLinks = structure(list(structure(list(LinkName = structure(logical(0), 
            shape = "String", type = "string"), EnvironmentName = structure(logical(0), 
            shape = "String", type = "string")), shape = "EnvironmentLink", 
            type = "structure")), shape = "EnvironmentLinks", 
            type = "list"), EnvironmentArn = structure(logical(0), 
            shape = "EnvironmentArn", type = "string")), shape = "EnvironmentDescription", 
        type = "structure")
    return(populate(args, shape))
}

create_platform_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlatformName = structure(logical(0), 
        shape = "PlatformName", type = "string"), PlatformVersion = structure(logical(0), 
        shape = "PlatformVersion", type = "string"), PlatformDefinitionBundle = structure(list(S3Bucket = structure(logical(0), 
        shape = "S3Bucket", type = "string", max = 255L), S3Key = structure(logical(0), 
        shape = "S3Key", type = "string", max = 1024L)), shape = "S3Location", 
        type = "structure"), EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), OptionSettings = structure(list(structure(list(ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 256L, 
        min = 1L), Namespace = structure(logical(0), shape = "OptionNamespace", 
        type = "string"), OptionName = structure(logical(0), 
        shape = "ConfigurationOptionName", type = "string"), 
        Value = structure(logical(0), shape = "ConfigurationOptionValue", 
            type = "string")), shape = "ConfigurationOptionSetting", 
        type = "structure")), shape = "ConfigurationOptionSettingsList", 
        type = "list")), shape = "CreatePlatformVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_platform_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlatformSummary = structure(list(PlatformArn = structure(logical(0), 
        shape = "PlatformArn", type = "string"), PlatformOwner = structure(logical(0), 
        shape = "PlatformOwner", type = "string"), PlatformStatus = structure(logical(0), 
        shape = "PlatformStatus", type = "string"), PlatformCategory = structure(logical(0), 
        shape = "PlatformCategory", type = "string"), OperatingSystemName = structure(logical(0), 
        shape = "OperatingSystemName", type = "string"), OperatingSystemVersion = structure(logical(0), 
        shape = "OperatingSystemVersion", type = "string"), SupportedTierList = structure(list(structure(logical(0), 
        shape = "SupportedTier", type = "string")), shape = "SupportedTierList", 
        type = "list"), SupportedAddonList = structure(list(structure(logical(0), 
        shape = "SupportedAddon", type = "string")), shape = "SupportedAddonList", 
        type = "list")), shape = "PlatformSummary", type = "structure"), 
        Builder = structure(list(ARN = structure(logical(0), 
            shape = "ARN", type = "string")), shape = "Builder", 
            type = "structure")), shape = "CreatePlatformVersionResult", 
        type = "structure")
    return(populate(args, shape))
}

create_storage_location_input <- function () 
{
    return(list())
}

create_storage_location_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(S3Bucket = structure(logical(0), 
        shape = "S3Bucket", type = "string", max = 255L)), shape = "CreateStorageLocationResultMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), TerminateEnvByForce = structure(logical(0), 
        shape = "TerminateEnvForce", type = "boolean")), shape = "DeleteApplicationMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_application_output <- function () 
{
    return(list())
}

delete_application_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), VersionLabel = structure(logical(0), shape = "VersionLabel", 
        type = "string", max = 100L, min = 1L), DeleteSourceBundle = structure(logical(0), 
        shape = "DeleteSourceBundle", type = "boolean")), shape = "DeleteApplicationVersionMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_application_version_output <- function () 
{
    return(list())
}

delete_configuration_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), TemplateName = structure(logical(0), shape = "ConfigurationTemplateName", 
        type = "string", max = 100L, min = 1L)), shape = "DeleteConfigurationTemplateMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_configuration_template_output <- function () 
{
    return(list())
}

delete_environment_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), EnvironmentName = structure(logical(0), shape = "EnvironmentName", 
        type = "string", max = 40L, min = 4L)), shape = "DeleteEnvironmentConfigurationMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_environment_configuration_output <- function () 
{
    return(list())
}

delete_platform_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlatformArn = structure(logical(0), 
        shape = "PlatformArn", type = "string")), shape = "DeletePlatformVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_platform_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlatformSummary = structure(list(PlatformArn = structure(logical(0), 
        shape = "PlatformArn", type = "string"), PlatformOwner = structure(logical(0), 
        shape = "PlatformOwner", type = "string"), PlatformStatus = structure(logical(0), 
        shape = "PlatformStatus", type = "string"), PlatformCategory = structure(logical(0), 
        shape = "PlatformCategory", type = "string"), OperatingSystemName = structure(logical(0), 
        shape = "OperatingSystemName", type = "string"), OperatingSystemVersion = structure(logical(0), 
        shape = "OperatingSystemVersion", type = "string"), SupportedTierList = structure(list(structure(logical(0), 
        shape = "SupportedTier", type = "string")), shape = "SupportedTierList", 
        type = "list"), SupportedAddonList = structure(list(structure(logical(0), 
        shape = "SupportedAddon", type = "string")), shape = "SupportedAddonList", 
        type = "list")), shape = "PlatformSummary", type = "structure")), 
        shape = "DeletePlatformVersionResult", type = "structure")
    return(populate(args, shape))
}

describe_account_attributes_input <- function () 
{
    return(list())
}

describe_account_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceQuotas = structure(list(ApplicationQuota = structure(list(Maximum = structure(logical(0), 
        shape = "BoxedInt", type = "integer")), shape = "ResourceQuota", 
        type = "structure"), ApplicationVersionQuota = structure(list(Maximum = structure(logical(0), 
        shape = "BoxedInt", type = "integer")), shape = "ResourceQuota", 
        type = "structure"), EnvironmentQuota = structure(list(Maximum = structure(logical(0), 
        shape = "BoxedInt", type = "integer")), shape = "ResourceQuota", 
        type = "structure"), ConfigurationTemplateQuota = structure(list(Maximum = structure(logical(0), 
        shape = "BoxedInt", type = "integer")), shape = "ResourceQuota", 
        type = "structure"), CustomPlatformQuota = structure(list(Maximum = structure(logical(0), 
        shape = "BoxedInt", type = "integer")), shape = "ResourceQuota", 
        type = "structure")), shape = "ResourceQuotas", type = "structure")), 
        shape = "DescribeAccountAttributesResult", type = "structure")
    return(populate(args, shape))
}

describe_application_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), VersionLabels = structure(list(structure(logical(0), 
        shape = "VersionLabel", type = "string", max = 100L, 
        min = 1L)), shape = "VersionLabelsList", type = "list"), 
        MaxRecords = structure(logical(0), shape = "MaxRecords", 
            type = "integer", max = 1000L, min = 1L), NextToken = structure(logical(0), 
            shape = "Token", type = "string")), shape = "DescribeApplicationVersionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_application_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationVersions = structure(list(structure(list(ApplicationVersionArn = structure(logical(0), 
        shape = "ApplicationVersionArn", type = "string"), ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), Description = structure(logical(0), shape = "Description", 
        type = "string", max = 200L), VersionLabel = structure(logical(0), 
        shape = "VersionLabel", type = "string", max = 100L, 
        min = 1L), SourceBuildInformation = structure(list(SourceType = structure(logical(0), 
        shape = "SourceType", type = "string"), SourceRepository = structure(logical(0), 
        shape = "SourceRepository", type = "string"), SourceLocation = structure(logical(0), 
        shape = "SourceLocation", type = "string", max = 255L, 
        min = 3L, pattern = ".+/.+")), shape = "SourceBuildInformation", 
        type = "structure"), BuildArn = structure(logical(0), 
        shape = "String", type = "string"), SourceBundle = structure(list(S3Bucket = structure(logical(0), 
        shape = "S3Bucket", type = "string", max = 255L), S3Key = structure(logical(0), 
        shape = "S3Key", type = "string", max = 1024L)), shape = "S3Location", 
        type = "structure"), DateCreated = structure(logical(0), 
        shape = "CreationDate", type = "timestamp"), DateUpdated = structure(logical(0), 
        shape = "UpdateDate", type = "timestamp"), Status = structure(logical(0), 
        shape = "ApplicationVersionStatus", type = "string")), 
        shape = "ApplicationVersionDescription", type = "structure")), 
        shape = "ApplicationVersionDescriptionList", type = "list"), 
        NextToken = structure(logical(0), shape = "Token", type = "string")), 
        shape = "ApplicationVersionDescriptionsMessage", type = "structure")
    return(populate(args, shape))
}

describe_applications_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationNames = structure(list(structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L)), shape = "ApplicationNamesList", type = "list")), 
        shape = "DescribeApplicationsMessage", type = "structure")
    return(populate(args, shape))
}

describe_applications_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Applications = structure(list(structure(list(ApplicationArn = structure(logical(0), 
        shape = "ApplicationArn", type = "string"), ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), Description = structure(logical(0), shape = "Description", 
        type = "string", max = 200L), DateCreated = structure(logical(0), 
        shape = "CreationDate", type = "timestamp"), DateUpdated = structure(logical(0), 
        shape = "UpdateDate", type = "timestamp"), Versions = structure(list(structure(logical(0), 
        shape = "VersionLabel", type = "string", max = 100L, 
        min = 1L)), shape = "VersionLabelsList", type = "list"), 
        ConfigurationTemplates = structure(list(structure(logical(0), 
            shape = "ConfigurationTemplateName", type = "string", 
            max = 100L, min = 1L)), shape = "ConfigurationTemplateNamesList", 
            type = "list"), ResourceLifecycleConfig = structure(list(ServiceRole = structure(logical(0), 
            shape = "String", type = "string"), VersionLifecycleConfig = structure(list(MaxCountRule = structure(list(Enabled = structure(logical(0), 
            shape = "BoxedBoolean", type = "boolean"), MaxCount = structure(logical(0), 
            shape = "BoxedInt", type = "integer"), DeleteSourceFromS3 = structure(logical(0), 
            shape = "BoxedBoolean", type = "boolean")), shape = "MaxCountRule", 
            type = "structure"), MaxAgeRule = structure(list(Enabled = structure(logical(0), 
            shape = "BoxedBoolean", type = "boolean"), MaxAgeInDays = structure(logical(0), 
            shape = "BoxedInt", type = "integer"), DeleteSourceFromS3 = structure(logical(0), 
            shape = "BoxedBoolean", type = "boolean")), shape = "MaxAgeRule", 
            type = "structure")), shape = "ApplicationVersionLifecycleConfig", 
            type = "structure")), shape = "ApplicationResourceLifecycleConfig", 
            type = "structure")), shape = "ApplicationDescription", 
        type = "structure")), shape = "ApplicationDescriptionList", 
        type = "list")), shape = "ApplicationDescriptionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_configuration_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), TemplateName = structure(logical(0), shape = "ConfigurationTemplateName", 
        type = "string", max = 100L, min = 1L), EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), SolutionStackName = structure(logical(0), 
        shape = "SolutionStackName", type = "string"), PlatformArn = structure(logical(0), 
        shape = "PlatformArn", type = "string"), Options = structure(list(structure(list(ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 256L, 
        min = 1L), Namespace = structure(logical(0), shape = "OptionNamespace", 
        type = "string"), OptionName = structure(logical(0), 
        shape = "ConfigurationOptionName", type = "string")), 
        shape = "OptionSpecification", type = "structure")), 
        shape = "OptionsSpecifierList", type = "list")), shape = "DescribeConfigurationOptionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_configuration_options_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SolutionStackName = structure(logical(0), 
        shape = "SolutionStackName", type = "string"), PlatformArn = structure(logical(0), 
        shape = "PlatformArn", type = "string"), Options = structure(list(structure(list(Namespace = structure(logical(0), 
        shape = "OptionNamespace", type = "string"), Name = structure(logical(0), 
        shape = "ConfigurationOptionName", type = "string"), 
        DefaultValue = structure(logical(0), shape = "ConfigurationOptionDefaultValue", 
            type = "string"), ChangeSeverity = structure(logical(0), 
            shape = "ConfigurationOptionSeverity", type = "string"), 
        UserDefined = structure(logical(0), shape = "UserDefinedOption", 
            type = "boolean"), ValueType = structure(logical(0), 
            shape = "ConfigurationOptionValueType", type = "string"), 
        ValueOptions = structure(list(structure(logical(0), shape = "ConfigurationOptionPossibleValue", 
            type = "string")), shape = "ConfigurationOptionPossibleValues", 
            type = "list"), MinValue = structure(logical(0), 
            shape = "OptionRestrictionMinValue", type = "integer"), 
        MaxValue = structure(logical(0), shape = "OptionRestrictionMaxValue", 
            type = "integer"), MaxLength = structure(logical(0), 
            shape = "OptionRestrictionMaxLength", type = "integer"), 
        Regex = structure(list(Pattern = structure(logical(0), 
            shape = "RegexPattern", type = "string"), Label = structure(logical(0), 
            shape = "RegexLabel", type = "string")), shape = "OptionRestrictionRegex", 
            type = "structure")), shape = "ConfigurationOptionDescription", 
        type = "structure")), shape = "ConfigurationOptionDescriptionsList", 
        type = "list")), shape = "ConfigurationOptionsDescription", 
        type = "structure")
    return(populate(args, shape))
}

describe_configuration_settings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), TemplateName = structure(logical(0), shape = "ConfigurationTemplateName", 
        type = "string", max = 100L, min = 1L), EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L)), shape = "DescribeConfigurationSettingsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_configuration_settings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationSettings = structure(list(structure(list(SolutionStackName = structure(logical(0), 
        shape = "SolutionStackName", type = "string"), PlatformArn = structure(logical(0), 
        shape = "PlatformArn", type = "string"), ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), TemplateName = structure(logical(0), shape = "ConfigurationTemplateName", 
        type = "string", max = 100L, min = 1L), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L), 
        EnvironmentName = structure(logical(0), shape = "EnvironmentName", 
            type = "string", max = 40L, min = 4L), DeploymentStatus = structure(logical(0), 
            shape = "ConfigurationDeploymentStatus", type = "string"), 
        DateCreated = structure(logical(0), shape = "CreationDate", 
            type = "timestamp"), DateUpdated = structure(logical(0), 
            shape = "UpdateDate", type = "timestamp"), OptionSettings = structure(list(structure(list(ResourceName = structure(logical(0), 
            shape = "ResourceName", type = "string", max = 256L, 
            min = 1L), Namespace = structure(logical(0), shape = "OptionNamespace", 
            type = "string"), OptionName = structure(logical(0), 
            shape = "ConfigurationOptionName", type = "string"), 
            Value = structure(logical(0), shape = "ConfigurationOptionValue", 
                type = "string")), shape = "ConfigurationOptionSetting", 
            type = "structure")), shape = "ConfigurationOptionSettingsList", 
            type = "list")), shape = "ConfigurationSettingsDescription", 
        type = "structure")), shape = "ConfigurationSettingsDescriptionList", 
        type = "list")), shape = "ConfigurationSettingsDescriptions", 
        type = "structure")
    return(populate(args, shape))
}

describe_environment_health_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), EnvironmentId = structure(logical(0), shape = "EnvironmentId", 
        type = "string"), AttributeNames = structure(list(structure(logical(0), 
        shape = "EnvironmentHealthAttribute", type = "string")), 
        shape = "EnvironmentHealthAttributes", type = "list")), 
        shape = "DescribeEnvironmentHealthRequest", type = "structure")
    return(populate(args, shape))
}

describe_environment_health_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), HealthStatus = structure(logical(0), shape = "String", 
        type = "string"), Status = structure(logical(0), shape = "EnvironmentHealth", 
        type = "string"), Color = structure(logical(0), shape = "String", 
        type = "string"), Causes = structure(list(structure(logical(0), 
        shape = "Cause", type = "string", max = 255L, min = 1L)), 
        shape = "Causes", type = "list"), ApplicationMetrics = structure(list(Duration = structure(logical(0), 
        shape = "NullableInteger", type = "integer"), RequestCount = structure(logical(0), 
        shape = "RequestCount", type = "integer"), StatusCodes = structure(list(Status2xx = structure(logical(0), 
        shape = "NullableInteger", type = "integer"), Status3xx = structure(logical(0), 
        shape = "NullableInteger", type = "integer"), Status4xx = structure(logical(0), 
        shape = "NullableInteger", type = "integer"), Status5xx = structure(logical(0), 
        shape = "NullableInteger", type = "integer")), shape = "StatusCodes", 
        type = "structure"), Latency = structure(list(P999 = structure(logical(0), 
        shape = "NullableDouble", type = "double"), P99 = structure(logical(0), 
        shape = "NullableDouble", type = "double"), P95 = structure(logical(0), 
        shape = "NullableDouble", type = "double"), P90 = structure(logical(0), 
        shape = "NullableDouble", type = "double"), P85 = structure(logical(0), 
        shape = "NullableDouble", type = "double"), P75 = structure(logical(0), 
        shape = "NullableDouble", type = "double"), P50 = structure(logical(0), 
        shape = "NullableDouble", type = "double"), P10 = structure(logical(0), 
        shape = "NullableDouble", type = "double")), shape = "Latency", 
        type = "structure")), shape = "ApplicationMetrics", type = "structure"), 
        InstancesHealth = structure(list(NoData = structure(logical(0), 
            shape = "NullableInteger", type = "integer"), Unknown = structure(logical(0), 
            shape = "NullableInteger", type = "integer"), Pending = structure(logical(0), 
            shape = "NullableInteger", type = "integer"), Ok = structure(logical(0), 
            shape = "NullableInteger", type = "integer"), Info = structure(logical(0), 
            shape = "NullableInteger", type = "integer"), Warning = structure(logical(0), 
            shape = "NullableInteger", type = "integer"), Degraded = structure(logical(0), 
            shape = "NullableInteger", type = "integer"), Severe = structure(logical(0), 
            shape = "NullableInteger", type = "integer")), shape = "InstanceHealthSummary", 
            type = "structure"), RefreshedAt = structure(logical(0), 
            shape = "RefreshedAt", type = "timestamp")), shape = "DescribeEnvironmentHealthResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_environment_managed_action_history_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string"), EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), NextToken = structure(logical(0), shape = "String", 
        type = "string"), MaxItems = structure(logical(0), shape = "Integer", 
        type = "integer")), shape = "DescribeEnvironmentManagedActionHistoryRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_environment_managed_action_history_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ManagedActionHistoryItems = structure(list(structure(list(ActionId = structure(logical(0), 
        shape = "String", type = "string"), ActionType = structure(logical(0), 
        shape = "ActionType", type = "string"), ActionDescription = structure(logical(0), 
        shape = "String", type = "string"), FailureType = structure(logical(0), 
        shape = "FailureType", type = "string"), Status = structure(logical(0), 
        shape = "ActionHistoryStatus", type = "string"), FailureDescription = structure(logical(0), 
        shape = "String", type = "string"), ExecutedTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), FinishedTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "ManagedActionHistoryItem", 
        type = "structure")), shape = "ManagedActionHistoryItems", 
        type = "list", max = 100L, min = 1L), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeEnvironmentManagedActionHistoryResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_environment_managed_actions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentName = structure(logical(0), 
        shape = "String", type = "string"), EnvironmentId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "ActionStatus", type = "string")), shape = "DescribeEnvironmentManagedActionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_environment_managed_actions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ManagedActions = structure(list(structure(list(ActionId = structure(logical(0), 
        shape = "String", type = "string"), ActionDescription = structure(logical(0), 
        shape = "String", type = "string"), ActionType = structure(logical(0), 
        shape = "ActionType", type = "string"), Status = structure(logical(0), 
        shape = "ActionStatus", type = "string"), WindowStartTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "ManagedAction", 
        type = "structure")), shape = "ManagedActions", type = "list", 
        max = 100L, min = 1L)), shape = "DescribeEnvironmentManagedActionsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_environment_resources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string"), EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L)), shape = "DescribeEnvironmentResourcesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_environment_resources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentResources = structure(list(EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), AutoScalingGroups = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ResourceId", type = "string")), shape = "AutoScalingGroup", 
        type = "structure")), shape = "AutoScalingGroupList", 
        type = "list"), Instances = structure(list(structure(list(Id = structure(logical(0), 
        shape = "ResourceId", type = "string")), shape = "Instance", 
        type = "structure")), shape = "InstanceList", type = "list"), 
        LaunchConfigurations = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ResourceId", type = "string")), shape = "LaunchConfiguration", 
            type = "structure")), shape = "LaunchConfigurationList", 
            type = "list"), LoadBalancers = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ResourceId", type = "string")), shape = "LoadBalancer", 
            type = "structure")), shape = "LoadBalancerList", 
            type = "list"), Triggers = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ResourceId", type = "string")), shape = "Trigger", 
            type = "structure")), shape = "TriggerList", type = "list"), 
        Queues = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), URL = structure(logical(0), 
            shape = "String", type = "string")), shape = "Queue", 
            type = "structure")), shape = "QueueList", type = "list")), 
        shape = "EnvironmentResourceDescription", type = "structure")), 
        shape = "EnvironmentResourceDescriptionsMessage", type = "structure")
    return(populate(args, shape))
}

describe_environments_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), VersionLabel = structure(logical(0), shape = "VersionLabel", 
        type = "string", max = 100L, min = 1L), EnvironmentIds = structure(list(structure(logical(0), 
        shape = "EnvironmentId", type = "string")), shape = "EnvironmentIdList", 
        type = "list"), EnvironmentNames = structure(list(structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L)), shape = "EnvironmentNamesList", type = "list"), 
        IncludeDeleted = structure(logical(0), shape = "IncludeDeleted", 
            type = "boolean"), IncludedDeletedBackTo = structure(logical(0), 
            shape = "IncludeDeletedBackTo", type = "timestamp"), 
        MaxRecords = structure(logical(0), shape = "MaxRecords", 
            type = "integer", max = 1000L, min = 1L), NextToken = structure(logical(0), 
            shape = "Token", type = "string")), shape = "DescribeEnvironmentsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_environments_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Environments = structure(list(structure(list(EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), EnvironmentId = structure(logical(0), shape = "EnvironmentId", 
        type = "string"), ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), VersionLabel = structure(logical(0), shape = "VersionLabel", 
        type = "string", max = 100L, min = 1L), SolutionStackName = structure(logical(0), 
        shape = "SolutionStackName", type = "string"), PlatformArn = structure(logical(0), 
        shape = "PlatformArn", type = "string"), TemplateName = structure(logical(0), 
        shape = "ConfigurationTemplateName", type = "string", 
        max = 100L, min = 1L), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L), 
        EndpointURL = structure(logical(0), shape = "EndpointURL", 
            type = "string"), CNAME = structure(logical(0), shape = "DNSCname", 
            type = "string", max = 255L, min = 1L), DateCreated = structure(logical(0), 
            shape = "CreationDate", type = "timestamp"), DateUpdated = structure(logical(0), 
            shape = "UpdateDate", type = "timestamp"), Status = structure(logical(0), 
            shape = "EnvironmentStatus", type = "string"), AbortableOperationInProgress = structure(logical(0), 
            shape = "AbortableOperationInProgress", type = "boolean"), 
        Health = structure(logical(0), shape = "EnvironmentHealth", 
            type = "string"), HealthStatus = structure(logical(0), 
            shape = "EnvironmentHealthStatus", type = "string"), 
        Resources = structure(list(LoadBalancer = structure(list(LoadBalancerName = structure(logical(0), 
            shape = "String", type = "string"), Domain = structure(logical(0), 
            shape = "String", type = "string"), Listeners = structure(list(structure(list(Protocol = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "Listener", 
            type = "structure")), shape = "LoadBalancerListenersDescription", 
            type = "list")), shape = "LoadBalancerDescription", 
            type = "structure")), shape = "EnvironmentResourcesDescription", 
            type = "structure"), Tier = structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Type = structure(logical(0), 
            shape = "String", type = "string"), Version = structure(logical(0), 
            shape = "String", type = "string")), shape = "EnvironmentTier", 
            type = "structure"), EnvironmentLinks = structure(list(structure(list(LinkName = structure(logical(0), 
            shape = "String", type = "string"), EnvironmentName = structure(logical(0), 
            shape = "String", type = "string")), shape = "EnvironmentLink", 
            type = "structure")), shape = "EnvironmentLinks", 
            type = "list"), EnvironmentArn = structure(logical(0), 
            shape = "EnvironmentArn", type = "string")), shape = "EnvironmentDescription", 
        type = "structure")), shape = "EnvironmentDescriptionsList", 
        type = "list"), NextToken = structure(logical(0), shape = "Token", 
        type = "string")), shape = "EnvironmentDescriptionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), VersionLabel = structure(logical(0), shape = "VersionLabel", 
        type = "string", max = 100L, min = 1L), TemplateName = structure(logical(0), 
        shape = "ConfigurationTemplateName", type = "string", 
        max = 100L, min = 1L), EnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string"), EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), PlatformArn = structure(logical(0), shape = "PlatformArn", 
        type = "string"), RequestId = structure(logical(0), shape = "RequestId", 
        type = "string"), Severity = structure(logical(0), shape = "EventSeverity", 
        type = "string"), StartTime = structure(logical(0), shape = "TimeFilterStart", 
        type = "timestamp"), EndTime = structure(logical(0), 
        shape = "TimeFilterEnd", type = "timestamp"), MaxRecords = structure(logical(0), 
        shape = "MaxRecords", type = "integer", max = 1000L, 
        min = 1L), NextToken = structure(logical(0), shape = "Token", 
        type = "string")), shape = "DescribeEventsMessage", type = "structure")
    return(populate(args, shape))
}

describe_events_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Events = structure(list(structure(list(EventDate = structure(logical(0), 
        shape = "EventDate", type = "timestamp"), Message = structure(logical(0), 
        shape = "EventMessage", type = "string"), ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), VersionLabel = structure(logical(0), shape = "VersionLabel", 
        type = "string", max = 100L, min = 1L), TemplateName = structure(logical(0), 
        shape = "ConfigurationTemplateName", type = "string", 
        max = 100L, min = 1L), EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), PlatformArn = structure(logical(0), shape = "PlatformArn", 
        type = "string"), RequestId = structure(logical(0), shape = "RequestId", 
        type = "string"), Severity = structure(logical(0), shape = "EventSeverity", 
        type = "string")), shape = "EventDescription", type = "structure")), 
        shape = "EventDescriptionList", type = "list"), NextToken = structure(logical(0), 
        shape = "Token", type = "string")), shape = "EventDescriptionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_instances_health_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), EnvironmentId = structure(logical(0), shape = "EnvironmentId", 
        type = "string"), AttributeNames = structure(list(structure(logical(0), 
        shape = "InstancesHealthAttribute", type = "string")), 
        shape = "InstancesHealthAttributes", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 100L, min = 1L)), shape = "DescribeInstancesHealthRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_instances_health_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceHealthList = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string", max = 255L, min = 1L), 
        HealthStatus = structure(logical(0), shape = "String", 
            type = "string"), Color = structure(logical(0), shape = "String", 
            type = "string"), Causes = structure(list(structure(logical(0), 
            shape = "Cause", type = "string", max = 255L, min = 1L)), 
            shape = "Causes", type = "list"), LaunchedAt = structure(logical(0), 
            shape = "LaunchedAt", type = "timestamp"), ApplicationMetrics = structure(list(Duration = structure(logical(0), 
            shape = "NullableInteger", type = "integer"), RequestCount = structure(logical(0), 
            shape = "RequestCount", type = "integer"), StatusCodes = structure(list(Status2xx = structure(logical(0), 
            shape = "NullableInteger", type = "integer"), Status3xx = structure(logical(0), 
            shape = "NullableInteger", type = "integer"), Status4xx = structure(logical(0), 
            shape = "NullableInteger", type = "integer"), Status5xx = structure(logical(0), 
            shape = "NullableInteger", type = "integer")), shape = "StatusCodes", 
            type = "structure"), Latency = structure(list(P999 = structure(logical(0), 
            shape = "NullableDouble", type = "double"), P99 = structure(logical(0), 
            shape = "NullableDouble", type = "double"), P95 = structure(logical(0), 
            shape = "NullableDouble", type = "double"), P90 = structure(logical(0), 
            shape = "NullableDouble", type = "double"), P85 = structure(logical(0), 
            shape = "NullableDouble", type = "double"), P75 = structure(logical(0), 
            shape = "NullableDouble", type = "double"), P50 = structure(logical(0), 
            shape = "NullableDouble", type = "double"), P10 = structure(logical(0), 
            shape = "NullableDouble", type = "double")), shape = "Latency", 
            type = "structure")), shape = "ApplicationMetrics", 
            type = "structure"), System = structure(list(CPUUtilization = structure(list(User = structure(logical(0), 
            shape = "NullableDouble", type = "double"), Nice = structure(logical(0), 
            shape = "NullableDouble", type = "double"), System = structure(logical(0), 
            shape = "NullableDouble", type = "double"), Idle = structure(logical(0), 
            shape = "NullableDouble", type = "double"), IOWait = structure(logical(0), 
            shape = "NullableDouble", type = "double"), IRQ = structure(logical(0), 
            shape = "NullableDouble", type = "double"), SoftIRQ = structure(logical(0), 
            shape = "NullableDouble", type = "double"), Privileged = structure(logical(0), 
            shape = "NullableDouble", type = "double")), shape = "CPUUtilization", 
            type = "structure"), LoadAverage = structure(list(structure(logical(0), 
            shape = "LoadAverageValue", type = "double")), shape = "LoadAverage", 
            type = "list")), shape = "SystemStatus", type = "structure"), 
        Deployment = structure(list(VersionLabel = structure(logical(0), 
            shape = "String", type = "string"), DeploymentId = structure(logical(0), 
            shape = "NullableLong", type = "long"), Status = structure(logical(0), 
            shape = "String", type = "string"), DeploymentTime = structure(logical(0), 
            shape = "DeploymentTimestamp", type = "timestamp")), 
            shape = "Deployment", type = "structure"), AvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), InstanceType = structure(logical(0), 
            shape = "String", type = "string")), shape = "SingleInstanceHealth", 
        type = "structure")), shape = "InstanceHealthList", type = "list"), 
        RefreshedAt = structure(logical(0), shape = "RefreshedAt", 
            type = "timestamp"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", max = 100L, 
            min = 1L)), shape = "DescribeInstancesHealthResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_platform_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlatformArn = structure(logical(0), 
        shape = "PlatformArn", type = "string")), shape = "DescribePlatformVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_platform_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlatformDescription = structure(list(PlatformArn = structure(logical(0), 
        shape = "PlatformArn", type = "string"), PlatformOwner = structure(logical(0), 
        shape = "PlatformOwner", type = "string"), PlatformName = structure(logical(0), 
        shape = "PlatformName", type = "string"), PlatformVersion = structure(logical(0), 
        shape = "PlatformVersion", type = "string"), SolutionStackName = structure(logical(0), 
        shape = "SolutionStackName", type = "string"), PlatformStatus = structure(logical(0), 
        shape = "PlatformStatus", type = "string"), DateCreated = structure(logical(0), 
        shape = "CreationDate", type = "timestamp"), DateUpdated = structure(logical(0), 
        shape = "UpdateDate", type = "timestamp"), PlatformCategory = structure(logical(0), 
        shape = "PlatformCategory", type = "string"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L), 
        Maintainer = structure(logical(0), shape = "Maintainer", 
            type = "string"), OperatingSystemName = structure(logical(0), 
            shape = "OperatingSystemName", type = "string"), 
        OperatingSystemVersion = structure(logical(0), shape = "OperatingSystemVersion", 
            type = "string"), ProgrammingLanguages = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Version = structure(logical(0), 
            shape = "String", type = "string")), shape = "PlatformProgrammingLanguage", 
            type = "structure")), shape = "PlatformProgrammingLanguages", 
            type = "list"), Frameworks = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Version = structure(logical(0), 
            shape = "String", type = "string")), shape = "PlatformFramework", 
            type = "structure")), shape = "PlatformFrameworks", 
            type = "list"), CustomAmiList = structure(list(structure(list(VirtualizationType = structure(logical(0), 
            shape = "VirtualizationType", type = "string"), ImageId = structure(logical(0), 
            shape = "ImageId", type = "string")), shape = "CustomAmi", 
            type = "structure")), shape = "CustomAmiList", type = "list"), 
        SupportedTierList = structure(list(structure(logical(0), 
            shape = "SupportedTier", type = "string")), shape = "SupportedTierList", 
            type = "list"), SupportedAddonList = structure(list(structure(logical(0), 
            shape = "SupportedAddon", type = "string")), shape = "SupportedAddonList", 
            type = "list")), shape = "PlatformDescription", type = "structure")), 
        shape = "DescribePlatformVersionResult", type = "structure")
    return(populate(args, shape))
}

list_available_solution_stacks_input <- function () 
{
    return(list())
}

list_available_solution_stacks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SolutionStacks = structure(list(structure(logical(0), 
        shape = "SolutionStackName", type = "string")), shape = "AvailableSolutionStackNamesList", 
        type = "list"), SolutionStackDetails = structure(list(structure(list(SolutionStackName = structure(logical(0), 
        shape = "SolutionStackName", type = "string"), PermittedFileTypes = structure(list(structure(logical(0), 
        shape = "FileTypeExtension", type = "string", max = 100L, 
        min = 1L)), shape = "SolutionStackFileTypeList", type = "list")), 
        shape = "SolutionStackDescription", type = "structure")), 
        shape = "AvailableSolutionStackDetailsList", type = "list")), 
        shape = "ListAvailableSolutionStacksResultMessage", type = "structure")
    return(populate(args, shape))
}

list_platform_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Type = structure(logical(0), 
        shape = "PlatformFilterType", type = "string"), Operator = structure(logical(0), 
        shape = "PlatformFilterOperator", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "PlatformFilterValue", type = "string")), shape = "PlatformFilterValueList", 
        type = "list")), shape = "PlatformFilter", type = "structure")), 
        shape = "PlatformFilters", type = "list"), MaxRecords = structure(logical(0), 
        shape = "PlatformMaxRecords", type = "integer", min = 1L), 
        NextToken = structure(logical(0), shape = "Token", type = "string")), 
        shape = "ListPlatformVersionsRequest", type = "structure")
    return(populate(args, shape))
}

list_platform_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlatformSummaryList = structure(list(structure(list(PlatformArn = structure(logical(0), 
        shape = "PlatformArn", type = "string"), PlatformOwner = structure(logical(0), 
        shape = "PlatformOwner", type = "string"), PlatformStatus = structure(logical(0), 
        shape = "PlatformStatus", type = "string"), PlatformCategory = structure(logical(0), 
        shape = "PlatformCategory", type = "string"), OperatingSystemName = structure(logical(0), 
        shape = "OperatingSystemName", type = "string"), OperatingSystemVersion = structure(logical(0), 
        shape = "OperatingSystemVersion", type = "string"), SupportedTierList = structure(list(structure(logical(0), 
        shape = "SupportedTier", type = "string")), shape = "SupportedTierList", 
        type = "list"), SupportedAddonList = structure(list(structure(logical(0), 
        shape = "SupportedAddon", type = "string")), shape = "SupportedAddonList", 
        type = "list")), shape = "PlatformSummary", type = "structure")), 
        shape = "PlatformSummaryList", type = "list"), NextToken = structure(logical(0), 
        shape = "Token", type = "string")), shape = "ListPlatformVersionsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string")), shape = "ListTagsForResourceMessage", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string"), ResourceTags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            max = 256L, min = 1L)), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list")), shape = "ResourceTagsDescriptionMessage", 
        type = "structure")
    return(populate(args, shape))
}

rebuild_environment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string"), EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L)), shape = "RebuildEnvironmentMessage", type = "structure")
    return(populate(args, shape))
}

rebuild_environment_output <- function () 
{
    return(list())
}

request_environment_info_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string"), EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), InfoType = structure(logical(0), shape = "EnvironmentInfoType", 
        type = "string")), shape = "RequestEnvironmentInfoMessage", 
        type = "structure")
    return(populate(args, shape))
}

request_environment_info_output <- function () 
{
    return(list())
}

restart_app_server_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string"), EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L)), shape = "RestartAppServerMessage", type = "structure")
    return(populate(args, shape))
}

restart_app_server_output <- function () 
{
    return(list())
}

retrieve_environment_info_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string"), EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), InfoType = structure(logical(0), shape = "EnvironmentInfoType", 
        type = "string")), shape = "RetrieveEnvironmentInfoMessage", 
        type = "structure")
    return(populate(args, shape))
}

retrieve_environment_info_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentInfo = structure(list(structure(list(InfoType = structure(logical(0), 
        shape = "EnvironmentInfoType", type = "string"), Ec2InstanceId = structure(logical(0), 
        shape = "Ec2InstanceId", type = "string"), SampleTimestamp = structure(logical(0), 
        shape = "SampleTimestamp", type = "timestamp"), Message = structure(logical(0), 
        shape = "Message", type = "string")), shape = "EnvironmentInfoDescription", 
        type = "structure")), shape = "EnvironmentInfoDescriptionList", 
        type = "list")), shape = "RetrieveEnvironmentInfoResultMessage", 
        type = "structure")
    return(populate(args, shape))
}

swap_environment_cnam_es_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceEnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string"), SourceEnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), DestinationEnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string"), DestinationEnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L)), shape = "SwapEnvironmentCNAMEsMessage", type = "structure")
    return(populate(args, shape))
}

swap_environment_cnam_es_output <- function () 
{
    return(list())
}

terminate_environment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string"), EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), TerminateResources = structure(logical(0), 
        shape = "TerminateEnvironmentResources", type = "boolean"), 
        ForceTerminate = structure(logical(0), shape = "ForceTerminate", 
            type = "boolean")), shape = "TerminateEnvironmentMessage", 
        type = "structure")
    return(populate(args, shape))
}

terminate_environment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), EnvironmentId = structure(logical(0), shape = "EnvironmentId", 
        type = "string"), ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), VersionLabel = structure(logical(0), shape = "VersionLabel", 
        type = "string", max = 100L, min = 1L), SolutionStackName = structure(logical(0), 
        shape = "SolutionStackName", type = "string"), PlatformArn = structure(logical(0), 
        shape = "PlatformArn", type = "string"), TemplateName = structure(logical(0), 
        shape = "ConfigurationTemplateName", type = "string", 
        max = 100L, min = 1L), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L), 
        EndpointURL = structure(logical(0), shape = "EndpointURL", 
            type = "string"), CNAME = structure(logical(0), shape = "DNSCname", 
            type = "string", max = 255L, min = 1L), DateCreated = structure(logical(0), 
            shape = "CreationDate", type = "timestamp"), DateUpdated = structure(logical(0), 
            shape = "UpdateDate", type = "timestamp"), Status = structure(logical(0), 
            shape = "EnvironmentStatus", type = "string"), AbortableOperationInProgress = structure(logical(0), 
            shape = "AbortableOperationInProgress", type = "boolean"), 
        Health = structure(logical(0), shape = "EnvironmentHealth", 
            type = "string"), HealthStatus = structure(logical(0), 
            shape = "EnvironmentHealthStatus", type = "string"), 
        Resources = structure(list(LoadBalancer = structure(list(LoadBalancerName = structure(logical(0), 
            shape = "String", type = "string"), Domain = structure(logical(0), 
            shape = "String", type = "string"), Listeners = structure(list(structure(list(Protocol = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "Listener", 
            type = "structure")), shape = "LoadBalancerListenersDescription", 
            type = "list")), shape = "LoadBalancerDescription", 
            type = "structure")), shape = "EnvironmentResourcesDescription", 
            type = "structure"), Tier = structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Type = structure(logical(0), 
            shape = "String", type = "string"), Version = structure(logical(0), 
            shape = "String", type = "string")), shape = "EnvironmentTier", 
            type = "structure"), EnvironmentLinks = structure(list(structure(list(LinkName = structure(logical(0), 
            shape = "String", type = "string"), EnvironmentName = structure(logical(0), 
            shape = "String", type = "string")), shape = "EnvironmentLink", 
            type = "structure")), shape = "EnvironmentLinks", 
            type = "list"), EnvironmentArn = structure(logical(0), 
            shape = "EnvironmentArn", type = "string")), shape = "EnvironmentDescription", 
        type = "structure")
    return(populate(args, shape))
}

update_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), Description = structure(logical(0), shape = "Description", 
        type = "string", max = 200L)), shape = "UpdateApplicationMessage", 
        type = "structure")
    return(populate(args, shape))
}

update_application_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Application = structure(list(ApplicationArn = structure(logical(0), 
        shape = "ApplicationArn", type = "string"), ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), Description = structure(logical(0), shape = "Description", 
        type = "string", max = 200L), DateCreated = structure(logical(0), 
        shape = "CreationDate", type = "timestamp"), DateUpdated = structure(logical(0), 
        shape = "UpdateDate", type = "timestamp"), Versions = structure(list(structure(logical(0), 
        shape = "VersionLabel", type = "string", max = 100L, 
        min = 1L)), shape = "VersionLabelsList", type = "list"), 
        ConfigurationTemplates = structure(list(structure(logical(0), 
            shape = "ConfigurationTemplateName", type = "string", 
            max = 100L, min = 1L)), shape = "ConfigurationTemplateNamesList", 
            type = "list"), ResourceLifecycleConfig = structure(list(ServiceRole = structure(logical(0), 
            shape = "String", type = "string"), VersionLifecycleConfig = structure(list(MaxCountRule = structure(list(Enabled = structure(logical(0), 
            shape = "BoxedBoolean", type = "boolean"), MaxCount = structure(logical(0), 
            shape = "BoxedInt", type = "integer"), DeleteSourceFromS3 = structure(logical(0), 
            shape = "BoxedBoolean", type = "boolean")), shape = "MaxCountRule", 
            type = "structure"), MaxAgeRule = structure(list(Enabled = structure(logical(0), 
            shape = "BoxedBoolean", type = "boolean"), MaxAgeInDays = structure(logical(0), 
            shape = "BoxedInt", type = "integer"), DeleteSourceFromS3 = structure(logical(0), 
            shape = "BoxedBoolean", type = "boolean")), shape = "MaxAgeRule", 
            type = "structure")), shape = "ApplicationVersionLifecycleConfig", 
            type = "structure")), shape = "ApplicationResourceLifecycleConfig", 
            type = "structure")), shape = "ApplicationDescription", 
        type = "structure")), shape = "ApplicationDescriptionMessage", 
        type = "structure")
    return(populate(args, shape))
}

update_application_resource_lifecycle_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), ResourceLifecycleConfig = structure(list(ServiceRole = structure(logical(0), 
        shape = "String", type = "string"), VersionLifecycleConfig = structure(list(MaxCountRule = structure(list(Enabled = structure(logical(0), 
        shape = "BoxedBoolean", type = "boolean"), MaxCount = structure(logical(0), 
        shape = "BoxedInt", type = "integer"), DeleteSourceFromS3 = structure(logical(0), 
        shape = "BoxedBoolean", type = "boolean")), shape = "MaxCountRule", 
        type = "structure"), MaxAgeRule = structure(list(Enabled = structure(logical(0), 
        shape = "BoxedBoolean", type = "boolean"), MaxAgeInDays = structure(logical(0), 
        shape = "BoxedInt", type = "integer"), DeleteSourceFromS3 = structure(logical(0), 
        shape = "BoxedBoolean", type = "boolean")), shape = "MaxAgeRule", 
        type = "structure")), shape = "ApplicationVersionLifecycleConfig", 
        type = "structure")), shape = "ApplicationResourceLifecycleConfig", 
        type = "structure")), shape = "UpdateApplicationResourceLifecycleMessage", 
        type = "structure")
    return(populate(args, shape))
}

update_application_resource_lifecycle_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), ResourceLifecycleConfig = structure(list(ServiceRole = structure(logical(0), 
        shape = "String", type = "string"), VersionLifecycleConfig = structure(list(MaxCountRule = structure(list(Enabled = structure(logical(0), 
        shape = "BoxedBoolean", type = "boolean"), MaxCount = structure(logical(0), 
        shape = "BoxedInt", type = "integer"), DeleteSourceFromS3 = structure(logical(0), 
        shape = "BoxedBoolean", type = "boolean")), shape = "MaxCountRule", 
        type = "structure"), MaxAgeRule = structure(list(Enabled = structure(logical(0), 
        shape = "BoxedBoolean", type = "boolean"), MaxAgeInDays = structure(logical(0), 
        shape = "BoxedInt", type = "integer"), DeleteSourceFromS3 = structure(logical(0), 
        shape = "BoxedBoolean", type = "boolean")), shape = "MaxAgeRule", 
        type = "structure")), shape = "ApplicationVersionLifecycleConfig", 
        type = "structure")), shape = "ApplicationResourceLifecycleConfig", 
        type = "structure")), shape = "ApplicationResourceLifecycleDescriptionMessage", 
        type = "structure")
    return(populate(args, shape))
}

update_application_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), VersionLabel = structure(logical(0), shape = "VersionLabel", 
        type = "string", max = 100L, min = 1L), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L)), 
        shape = "UpdateApplicationVersionMessage", type = "structure")
    return(populate(args, shape))
}

update_application_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationVersion = structure(list(ApplicationVersionArn = structure(logical(0), 
        shape = "ApplicationVersionArn", type = "string"), ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), Description = structure(logical(0), shape = "Description", 
        type = "string", max = 200L), VersionLabel = structure(logical(0), 
        shape = "VersionLabel", type = "string", max = 100L, 
        min = 1L), SourceBuildInformation = structure(list(SourceType = structure(logical(0), 
        shape = "SourceType", type = "string"), SourceRepository = structure(logical(0), 
        shape = "SourceRepository", type = "string"), SourceLocation = structure(logical(0), 
        shape = "SourceLocation", type = "string", max = 255L, 
        min = 3L, pattern = ".+/.+")), shape = "SourceBuildInformation", 
        type = "structure"), BuildArn = structure(logical(0), 
        shape = "String", type = "string"), SourceBundle = structure(list(S3Bucket = structure(logical(0), 
        shape = "S3Bucket", type = "string", max = 255L), S3Key = structure(logical(0), 
        shape = "S3Key", type = "string", max = 1024L)), shape = "S3Location", 
        type = "structure"), DateCreated = structure(logical(0), 
        shape = "CreationDate", type = "timestamp"), DateUpdated = structure(logical(0), 
        shape = "UpdateDate", type = "timestamp"), Status = structure(logical(0), 
        shape = "ApplicationVersionStatus", type = "string")), 
        shape = "ApplicationVersionDescription", type = "structure")), 
        shape = "ApplicationVersionDescriptionMessage", type = "structure")
    return(populate(args, shape))
}

update_configuration_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), TemplateName = structure(logical(0), shape = "ConfigurationTemplateName", 
        type = "string", max = 100L, min = 1L), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L), 
        OptionSettings = structure(list(structure(list(ResourceName = structure(logical(0), 
            shape = "ResourceName", type = "string", max = 256L, 
            min = 1L), Namespace = structure(logical(0), shape = "OptionNamespace", 
            type = "string"), OptionName = structure(logical(0), 
            shape = "ConfigurationOptionName", type = "string"), 
            Value = structure(logical(0), shape = "ConfigurationOptionValue", 
                type = "string")), shape = "ConfigurationOptionSetting", 
            type = "structure")), shape = "ConfigurationOptionSettingsList", 
            type = "list"), OptionsToRemove = structure(list(structure(list(ResourceName = structure(logical(0), 
            shape = "ResourceName", type = "string", max = 256L, 
            min = 1L), Namespace = structure(logical(0), shape = "OptionNamespace", 
            type = "string"), OptionName = structure(logical(0), 
            shape = "ConfigurationOptionName", type = "string")), 
            shape = "OptionSpecification", type = "structure")), 
            shape = "OptionsSpecifierList", type = "list")), 
        shape = "UpdateConfigurationTemplateMessage", type = "structure")
    return(populate(args, shape))
}

update_configuration_template_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SolutionStackName = structure(logical(0), 
        shape = "SolutionStackName", type = "string"), PlatformArn = structure(logical(0), 
        shape = "PlatformArn", type = "string"), ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), TemplateName = structure(logical(0), shape = "ConfigurationTemplateName", 
        type = "string", max = 100L, min = 1L), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L), 
        EnvironmentName = structure(logical(0), shape = "EnvironmentName", 
            type = "string", max = 40L, min = 4L), DeploymentStatus = structure(logical(0), 
            shape = "ConfigurationDeploymentStatus", type = "string"), 
        DateCreated = structure(logical(0), shape = "CreationDate", 
            type = "timestamp"), DateUpdated = structure(logical(0), 
            shape = "UpdateDate", type = "timestamp"), OptionSettings = structure(list(structure(list(ResourceName = structure(logical(0), 
            shape = "ResourceName", type = "string", max = 256L, 
            min = 1L), Namespace = structure(logical(0), shape = "OptionNamespace", 
            type = "string"), OptionName = structure(logical(0), 
            shape = "ConfigurationOptionName", type = "string"), 
            Value = structure(logical(0), shape = "ConfigurationOptionValue", 
                type = "string")), shape = "ConfigurationOptionSetting", 
            type = "structure")), shape = "ConfigurationOptionSettingsList", 
            type = "list")), shape = "ConfigurationSettingsDescription", 
        type = "structure")
    return(populate(args, shape))
}

update_environment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), EnvironmentId = structure(logical(0), shape = "EnvironmentId", 
        type = "string"), EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), GroupName = structure(logical(0), shape = "GroupName", 
        type = "string", max = 19L, min = 1L), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L), 
        Tier = structure(list(Name = structure(logical(0), shape = "String", 
            type = "string"), Type = structure(logical(0), shape = "String", 
            type = "string"), Version = structure(logical(0), 
            shape = "String", type = "string")), shape = "EnvironmentTier", 
            type = "structure"), VersionLabel = structure(logical(0), 
            shape = "VersionLabel", type = "string", max = 100L, 
            min = 1L), TemplateName = structure(logical(0), shape = "ConfigurationTemplateName", 
            type = "string", max = 100L, min = 1L), SolutionStackName = structure(logical(0), 
            shape = "SolutionStackName", type = "string"), PlatformArn = structure(logical(0), 
            shape = "PlatformArn", type = "string"), OptionSettings = structure(list(structure(list(ResourceName = structure(logical(0), 
            shape = "ResourceName", type = "string", max = 256L, 
            min = 1L), Namespace = structure(logical(0), shape = "OptionNamespace", 
            type = "string"), OptionName = structure(logical(0), 
            shape = "ConfigurationOptionName", type = "string"), 
            Value = structure(logical(0), shape = "ConfigurationOptionValue", 
                type = "string")), shape = "ConfigurationOptionSetting", 
            type = "structure")), shape = "ConfigurationOptionSettingsList", 
            type = "list"), OptionsToRemove = structure(list(structure(list(ResourceName = structure(logical(0), 
            shape = "ResourceName", type = "string", max = 256L, 
            min = 1L), Namespace = structure(logical(0), shape = "OptionNamespace", 
            type = "string"), OptionName = structure(logical(0), 
            shape = "ConfigurationOptionName", type = "string")), 
            shape = "OptionSpecification", type = "structure")), 
            shape = "OptionsSpecifierList", type = "list")), 
        shape = "UpdateEnvironmentMessage", type = "structure")
    return(populate(args, shape))
}

update_environment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), EnvironmentId = structure(logical(0), shape = "EnvironmentId", 
        type = "string"), ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), VersionLabel = structure(logical(0), shape = "VersionLabel", 
        type = "string", max = 100L, min = 1L), SolutionStackName = structure(logical(0), 
        shape = "SolutionStackName", type = "string"), PlatformArn = structure(logical(0), 
        shape = "PlatformArn", type = "string"), TemplateName = structure(logical(0), 
        shape = "ConfigurationTemplateName", type = "string", 
        max = 100L, min = 1L), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L), 
        EndpointURL = structure(logical(0), shape = "EndpointURL", 
            type = "string"), CNAME = structure(logical(0), shape = "DNSCname", 
            type = "string", max = 255L, min = 1L), DateCreated = structure(logical(0), 
            shape = "CreationDate", type = "timestamp"), DateUpdated = structure(logical(0), 
            shape = "UpdateDate", type = "timestamp"), Status = structure(logical(0), 
            shape = "EnvironmentStatus", type = "string"), AbortableOperationInProgress = structure(logical(0), 
            shape = "AbortableOperationInProgress", type = "boolean"), 
        Health = structure(logical(0), shape = "EnvironmentHealth", 
            type = "string"), HealthStatus = structure(logical(0), 
            shape = "EnvironmentHealthStatus", type = "string"), 
        Resources = structure(list(LoadBalancer = structure(list(LoadBalancerName = structure(logical(0), 
            shape = "String", type = "string"), Domain = structure(logical(0), 
            shape = "String", type = "string"), Listeners = structure(list(structure(list(Protocol = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "Listener", 
            type = "structure")), shape = "LoadBalancerListenersDescription", 
            type = "list")), shape = "LoadBalancerDescription", 
            type = "structure")), shape = "EnvironmentResourcesDescription", 
            type = "structure"), Tier = structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Type = structure(logical(0), 
            shape = "String", type = "string"), Version = structure(logical(0), 
            shape = "String", type = "string")), shape = "EnvironmentTier", 
            type = "structure"), EnvironmentLinks = structure(list(structure(list(LinkName = structure(logical(0), 
            shape = "String", type = "string"), EnvironmentName = structure(logical(0), 
            shape = "String", type = "string")), shape = "EnvironmentLink", 
            type = "structure")), shape = "EnvironmentLinks", 
            type = "list"), EnvironmentArn = structure(logical(0), 
            shape = "EnvironmentArn", type = "string")), shape = "EnvironmentDescription", 
        type = "structure")
    return(populate(args, shape))
}

update_tags_for_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string"), TagsToAdd = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            max = 256L, min = 1L)), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list"), TagsToRemove = structure(list(structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L)), 
        shape = "TagKeyList", type = "list")), shape = "UpdateTagsForResourceMessage", 
        type = "structure")
    return(populate(args, shape))
}

update_tags_for_resource_output <- function () 
{
    return(list())
}

validate_configuration_settings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L), TemplateName = structure(logical(0), shape = "ConfigurationTemplateName", 
        type = "string", max = 100L, min = 1L), EnvironmentName = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 40L, 
        min = 4L), OptionSettings = structure(list(structure(list(ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 256L, 
        min = 1L), Namespace = structure(logical(0), shape = "OptionNamespace", 
        type = "string"), OptionName = structure(logical(0), 
        shape = "ConfigurationOptionName", type = "string"), 
        Value = structure(logical(0), shape = "ConfigurationOptionValue", 
            type = "string")), shape = "ConfigurationOptionSetting", 
        type = "structure")), shape = "ConfigurationOptionSettingsList", 
        type = "list")), shape = "ValidateConfigurationSettingsMessage", 
        type = "structure")
    return(populate(args, shape))
}

validate_configuration_settings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Messages = structure(list(structure(list(Message = structure(logical(0), 
        shape = "ValidationMessageString", type = "string"), 
        Severity = structure(logical(0), shape = "ValidationSeverity", 
            type = "string"), Namespace = structure(logical(0), 
            shape = "OptionNamespace", type = "string"), OptionName = structure(logical(0), 
            shape = "ConfigurationOptionName", type = "string")), 
        shape = "ValidationMessage", type = "structure")), shape = "ValidationMessagesList", 
        type = "list")), shape = "ConfigurationSettingsValidationMessages", 
        type = "structure")
    return(populate(args, shape))
}
