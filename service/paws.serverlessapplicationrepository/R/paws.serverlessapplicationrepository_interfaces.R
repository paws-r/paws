create_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Author = structure(logical(0), shape = "__string", 
        locationName = "author", type = "string"), Description = structure(logical(0), 
        shape = "__string", locationName = "description", type = "string"), 
        HomePageUrl = structure(logical(0), shape = "__string", 
            locationName = "homePageUrl", type = "string"), Labels = structure(list(structure(logical(0), 
            shape = "__string", type = "string")), shape = "__listOf__string", 
            locationName = "labels", type = "list"), LicenseBody = structure(logical(0), 
            shape = "__string", locationName = "licenseBody", 
            type = "string"), LicenseUrl = structure(logical(0), 
            shape = "__string", locationName = "licenseUrl", 
            type = "string"), Name = structure(logical(0), shape = "__string", 
            locationName = "name", type = "string"), ReadmeBody = structure(logical(0), 
            shape = "__string", locationName = "readmeBody", 
            type = "string"), ReadmeUrl = structure(logical(0), 
            shape = "__string", locationName = "readmeUrl", type = "string"), 
        SemanticVersion = structure(logical(0), shape = "__string", 
            locationName = "semanticVersion", type = "string"), 
        SourceCodeUrl = structure(logical(0), shape = "__string", 
            locationName = "sourceCodeUrl", type = "string"), 
        SpdxLicenseId = structure(logical(0), shape = "__string", 
            locationName = "spdxLicenseId", type = "string"), 
        TemplateBody = structure(logical(0), shape = "__string", 
            locationName = "templateBody", type = "string"), 
        TemplateUrl = structure(logical(0), shape = "__string", 
            locationName = "templateUrl", type = "string")), 
        shape = "CreateApplicationRequest", type = "structure")
    return(populate(args, shape))
}

create_application_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationId = structure(logical(0), 
        shape = "__string", locationName = "applicationId", type = "string"), 
        Author = structure(logical(0), shape = "__string", locationName = "author", 
            type = "string"), CreationTime = structure(logical(0), 
            shape = "__string", locationName = "creationTime", 
            type = "string"), Description = structure(logical(0), 
            shape = "__string", locationName = "description", 
            type = "string"), HomePageUrl = structure(logical(0), 
            shape = "__string", locationName = "homePageUrl", 
            type = "string"), Labels = structure(list(structure(logical(0), 
            shape = "__string", type = "string")), shape = "__listOf__string", 
            locationName = "labels", type = "list"), LicenseUrl = structure(logical(0), 
            shape = "__string", locationName = "licenseUrl", 
            type = "string"), Name = structure(logical(0), shape = "__string", 
            locationName = "name", type = "string"), ReadmeUrl = structure(logical(0), 
            shape = "__string", locationName = "readmeUrl", type = "string"), 
        SpdxLicenseId = structure(logical(0), shape = "__string", 
            locationName = "spdxLicenseId", type = "string"), 
        Version = structure(list(ApplicationId = structure(logical(0), 
            shape = "__string", locationName = "applicationId", 
            type = "string"), CreationTime = structure(logical(0), 
            shape = "__string", locationName = "creationTime", 
            type = "string"), ParameterDefinitions = structure(list(structure(list(AllowedPattern = structure(logical(0), 
            shape = "__string", locationName = "allowedPattern", 
            type = "string"), AllowedValues = structure(list(structure(logical(0), 
            shape = "__string", type = "string")), shape = "__listOf__string", 
            locationName = "allowedValues", type = "list"), ConstraintDescription = structure(logical(0), 
            shape = "__string", locationName = "constraintDescription", 
            type = "string"), DefaultValue = structure(logical(0), 
            shape = "__string", locationName = "defaultValue", 
            type = "string"), Description = structure(logical(0), 
            shape = "__string", locationName = "description", 
            type = "string"), MaxLength = structure(logical(0), 
            shape = "__integer", locationName = "maxLength", 
            type = "integer"), MaxValue = structure(logical(0), 
            shape = "__integer", locationName = "maxValue", type = "integer"), 
            MinLength = structure(logical(0), shape = "__integer", 
                locationName = "minLength", type = "integer"), 
            MinValue = structure(logical(0), shape = "__integer", 
                locationName = "minValue", type = "integer"), 
            Name = structure(logical(0), shape = "__string", 
                locationName = "name", type = "string"), NoEcho = structure(logical(0), 
                shape = "__boolean", locationName = "noEcho", 
                type = "boolean"), ReferencedByResources = structure(list(structure(logical(0), 
                shape = "__string", type = "string")), shape = "__listOf__string", 
                locationName = "referencedByResources", type = "list"), 
            Type = structure(logical(0), shape = "__string", 
                locationName = "type", type = "string")), shape = "ParameterDefinition", 
            type = "structure")), shape = "__listOfParameterDefinition", 
            locationName = "parameterDefinitions", type = "list"), 
            SemanticVersion = structure(logical(0), shape = "__string", 
                locationName = "semanticVersion", type = "string"), 
            SourceCodeUrl = structure(logical(0), shape = "__string", 
                locationName = "sourceCodeUrl", type = "string"), 
            TemplateUrl = structure(logical(0), shape = "__string", 
                locationName = "templateUrl", type = "string")), 
            shape = "Version", locationName = "version", type = "structure")), 
        shape = "CreateApplicationResponse", type = "structure")
    return(populate(args, shape))
}

create_application_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "applicationId", 
        type = "string"), SemanticVersion = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "semanticVersion", 
        type = "string"), SourceCodeUrl = structure(logical(0), 
        shape = "__string", locationName = "sourceCodeUrl", type = "string"), 
        TemplateBody = structure(logical(0), shape = "__string", 
            locationName = "templateBody", type = "string"), 
        TemplateUrl = structure(logical(0), shape = "__string", 
            locationName = "templateUrl", type = "string")), 
        shape = "CreateApplicationVersionRequest", type = "structure")
    return(populate(args, shape))
}

create_application_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationId = structure(logical(0), 
        shape = "__string", locationName = "applicationId", type = "string"), 
        CreationTime = structure(logical(0), shape = "__string", 
            locationName = "creationTime", type = "string"), 
        ParameterDefinitions = structure(list(structure(list(AllowedPattern = structure(logical(0), 
            shape = "__string", locationName = "allowedPattern", 
            type = "string"), AllowedValues = structure(list(structure(logical(0), 
            shape = "__string", type = "string")), shape = "__listOf__string", 
            locationName = "allowedValues", type = "list"), ConstraintDescription = structure(logical(0), 
            shape = "__string", locationName = "constraintDescription", 
            type = "string"), DefaultValue = structure(logical(0), 
            shape = "__string", locationName = "defaultValue", 
            type = "string"), Description = structure(logical(0), 
            shape = "__string", locationName = "description", 
            type = "string"), MaxLength = structure(logical(0), 
            shape = "__integer", locationName = "maxLength", 
            type = "integer"), MaxValue = structure(logical(0), 
            shape = "__integer", locationName = "maxValue", type = "integer"), 
            MinLength = structure(logical(0), shape = "__integer", 
                locationName = "minLength", type = "integer"), 
            MinValue = structure(logical(0), shape = "__integer", 
                locationName = "minValue", type = "integer"), 
            Name = structure(logical(0), shape = "__string", 
                locationName = "name", type = "string"), NoEcho = structure(logical(0), 
                shape = "__boolean", locationName = "noEcho", 
                type = "boolean"), ReferencedByResources = structure(list(structure(logical(0), 
                shape = "__string", type = "string")), shape = "__listOf__string", 
                locationName = "referencedByResources", type = "list"), 
            Type = structure(logical(0), shape = "__string", 
                locationName = "type", type = "string")), shape = "ParameterDefinition", 
            type = "structure")), shape = "__listOfParameterDefinition", 
            locationName = "parameterDefinitions", type = "list"), 
        SemanticVersion = structure(logical(0), shape = "__string", 
            locationName = "semanticVersion", type = "string"), 
        SourceCodeUrl = structure(logical(0), shape = "__string", 
            locationName = "sourceCodeUrl", type = "string"), 
        TemplateUrl = structure(logical(0), shape = "__string", 
            locationName = "templateUrl", type = "string")), 
        shape = "CreateApplicationVersionResponse", type = "structure")
    return(populate(args, shape))
}

create_cloud_formation_change_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "applicationId", 
        type = "string"), ParameterOverrides = structure(list(structure(list(Name = structure(logical(0), 
        shape = "__string", locationName = "name", type = "string"), 
        Value = structure(logical(0), shape = "__string", locationName = "value", 
            type = "string")), shape = "ParameterValue", type = "structure")), 
        shape = "__listOfParameterValue", locationName = "parameterOverrides", 
        type = "list"), SemanticVersion = structure(logical(0), 
        shape = "__string", locationName = "semanticVersion", 
        type = "string"), StackName = structure(logical(0), shape = "__string", 
        locationName = "stackName", type = "string")), shape = "CreateCloudFormationChangeSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_cloud_formation_change_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationId = structure(logical(0), 
        shape = "__string", locationName = "applicationId", type = "string"), 
        ChangeSetId = structure(logical(0), shape = "__string", 
            locationName = "changeSetId", type = "string"), SemanticVersion = structure(logical(0), 
            shape = "__string", locationName = "semanticVersion", 
            type = "string"), StackId = structure(logical(0), 
            shape = "__string", locationName = "stackId", type = "string")), 
        shape = "CreateCloudFormationChangeSetResponse", type = "structure")
    return(populate(args, shape))
}

delete_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "applicationId", 
        type = "string")), shape = "DeleteApplicationRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_application_output <- function () 
{
    return(list())
}

get_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "applicationId", 
        type = "string"), SemanticVersion = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "semanticVersion", 
        type = "string")), shape = "GetApplicationRequest", type = "structure")
    return(populate(args, shape))
}

get_application_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationId = structure(logical(0), 
        shape = "__string", locationName = "applicationId", type = "string"), 
        Author = structure(logical(0), shape = "__string", locationName = "author", 
            type = "string"), CreationTime = structure(logical(0), 
            shape = "__string", locationName = "creationTime", 
            type = "string"), Description = structure(logical(0), 
            shape = "__string", locationName = "description", 
            type = "string"), HomePageUrl = structure(logical(0), 
            shape = "__string", locationName = "homePageUrl", 
            type = "string"), Labels = structure(list(structure(logical(0), 
            shape = "__string", type = "string")), shape = "__listOf__string", 
            locationName = "labels", type = "list"), LicenseUrl = structure(logical(0), 
            shape = "__string", locationName = "licenseUrl", 
            type = "string"), Name = structure(logical(0), shape = "__string", 
            locationName = "name", type = "string"), ReadmeUrl = structure(logical(0), 
            shape = "__string", locationName = "readmeUrl", type = "string"), 
        SpdxLicenseId = structure(logical(0), shape = "__string", 
            locationName = "spdxLicenseId", type = "string"), 
        Version = structure(list(ApplicationId = structure(logical(0), 
            shape = "__string", locationName = "applicationId", 
            type = "string"), CreationTime = structure(logical(0), 
            shape = "__string", locationName = "creationTime", 
            type = "string"), ParameterDefinitions = structure(list(structure(list(AllowedPattern = structure(logical(0), 
            shape = "__string", locationName = "allowedPattern", 
            type = "string"), AllowedValues = structure(list(structure(logical(0), 
            shape = "__string", type = "string")), shape = "__listOf__string", 
            locationName = "allowedValues", type = "list"), ConstraintDescription = structure(logical(0), 
            shape = "__string", locationName = "constraintDescription", 
            type = "string"), DefaultValue = structure(logical(0), 
            shape = "__string", locationName = "defaultValue", 
            type = "string"), Description = structure(logical(0), 
            shape = "__string", locationName = "description", 
            type = "string"), MaxLength = structure(logical(0), 
            shape = "__integer", locationName = "maxLength", 
            type = "integer"), MaxValue = structure(logical(0), 
            shape = "__integer", locationName = "maxValue", type = "integer"), 
            MinLength = structure(logical(0), shape = "__integer", 
                locationName = "minLength", type = "integer"), 
            MinValue = structure(logical(0), shape = "__integer", 
                locationName = "minValue", type = "integer"), 
            Name = structure(logical(0), shape = "__string", 
                locationName = "name", type = "string"), NoEcho = structure(logical(0), 
                shape = "__boolean", locationName = "noEcho", 
                type = "boolean"), ReferencedByResources = structure(list(structure(logical(0), 
                shape = "__string", type = "string")), shape = "__listOf__string", 
                locationName = "referencedByResources", type = "list"), 
            Type = structure(logical(0), shape = "__string", 
                locationName = "type", type = "string")), shape = "ParameterDefinition", 
            type = "structure")), shape = "__listOfParameterDefinition", 
            locationName = "parameterDefinitions", type = "list"), 
            SemanticVersion = structure(logical(0), shape = "__string", 
                locationName = "semanticVersion", type = "string"), 
            SourceCodeUrl = structure(logical(0), shape = "__string", 
                locationName = "sourceCodeUrl", type = "string"), 
            TemplateUrl = structure(logical(0), shape = "__string", 
                locationName = "templateUrl", type = "string")), 
            shape = "Version", locationName = "version", type = "structure")), 
        shape = "GetApplicationResponse", type = "structure")
    return(populate(args, shape))
}

get_application_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "applicationId", 
        type = "string")), shape = "GetApplicationPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_application_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Statements = structure(list(structure(list(Actions = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "__listOf__string", 
        locationName = "actions", type = "list"), Principals = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "__listOf__string", 
        locationName = "principals", type = "list"), StatementId = structure(logical(0), 
        shape = "__string", locationName = "statementId", type = "string")), 
        shape = "ApplicationPolicyStatement", type = "structure")), 
        shape = "__listOfApplicationPolicyStatement", locationName = "statements", 
        type = "list")), shape = "GetApplicationPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_application_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "applicationId", 
        type = "string"), MaxItems = structure(logical(0), shape = "MaxItems", 
        location = "querystring", locationName = "maxItems", 
        type = "integer", min = 1L, max = 100L), NextToken = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "nextToken", 
        type = "string")), shape = "ListApplicationVersionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_application_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "__string", locationName = "nextToken", type = "string"), 
        Versions = structure(list(structure(list(ApplicationId = structure(logical(0), 
            shape = "__string", locationName = "applicationId", 
            type = "string"), CreationTime = structure(logical(0), 
            shape = "__string", locationName = "creationTime", 
            type = "string"), SemanticVersion = structure(logical(0), 
            shape = "__string", locationName = "semanticVersion", 
            type = "string"), SourceCodeUrl = structure(logical(0), 
            shape = "__string", locationName = "sourceCodeUrl", 
            type = "string")), shape = "VersionSummary", type = "structure")), 
            shape = "__listOfVersionSummary", locationName = "versions", 
            type = "list")), shape = "ListApplicationVersionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_applications_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxItems = structure(logical(0), 
        shape = "MaxItems", location = "querystring", locationName = "maxItems", 
        type = "integer", min = 1L, max = 100L), NextToken = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "nextToken", 
        type = "string")), shape = "ListApplicationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_applications_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Applications = structure(list(structure(list(ApplicationId = structure(logical(0), 
        shape = "__string", locationName = "applicationId", type = "string"), 
        Author = structure(logical(0), shape = "__string", locationName = "author", 
            type = "string"), CreationTime = structure(logical(0), 
            shape = "__string", locationName = "creationTime", 
            type = "string"), Description = structure(logical(0), 
            shape = "__string", locationName = "description", 
            type = "string"), HomePageUrl = structure(logical(0), 
            shape = "__string", locationName = "homePageUrl", 
            type = "string"), Labels = structure(list(structure(logical(0), 
            shape = "__string", type = "string")), shape = "__listOf__string", 
            locationName = "labels", type = "list"), Name = structure(logical(0), 
            shape = "__string", locationName = "name", type = "string"), 
        SpdxLicenseId = structure(logical(0), shape = "__string", 
            locationName = "spdxLicenseId", type = "string")), 
        shape = "ApplicationSummary", type = "structure")), shape = "__listOfApplicationSummary", 
        locationName = "applications", type = "list"), NextToken = structure(logical(0), 
        shape = "__string", locationName = "nextToken", type = "string")), 
        shape = "ListApplicationsResponse", type = "structure")
    return(populate(args, shape))
}

put_application_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "applicationId", 
        type = "string"), Statements = structure(list(structure(list(Actions = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "__listOf__string", 
        locationName = "actions", type = "list"), Principals = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "__listOf__string", 
        locationName = "principals", type = "list"), StatementId = structure(logical(0), 
        shape = "__string", locationName = "statementId", type = "string")), 
        shape = "ApplicationPolicyStatement", type = "structure")), 
        shape = "__listOfApplicationPolicyStatement", locationName = "statements", 
        type = "list")), shape = "PutApplicationPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_application_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Statements = structure(list(structure(list(Actions = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "__listOf__string", 
        locationName = "actions", type = "list"), Principals = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "__listOf__string", 
        locationName = "principals", type = "list"), StatementId = structure(logical(0), 
        shape = "__string", locationName = "statementId", type = "string")), 
        shape = "ApplicationPolicyStatement", type = "structure")), 
        shape = "__listOfApplicationPolicyStatement", locationName = "statements", 
        type = "list")), shape = "PutApplicationPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "applicationId", 
        type = "string"), Author = structure(logical(0), shape = "__string", 
        locationName = "author", type = "string"), Description = structure(logical(0), 
        shape = "__string", locationName = "description", type = "string"), 
        HomePageUrl = structure(logical(0), shape = "__string", 
            locationName = "homePageUrl", type = "string"), Labels = structure(list(structure(logical(0), 
            shape = "__string", type = "string")), shape = "__listOf__string", 
            locationName = "labels", type = "list"), ReadmeBody = structure(logical(0), 
            shape = "__string", locationName = "readmeBody", 
            type = "string"), ReadmeUrl = structure(logical(0), 
            shape = "__string", locationName = "readmeUrl", type = "string")), 
        shape = "UpdateApplicationRequest", type = "structure")
    return(populate(args, shape))
}

update_application_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationId = structure(logical(0), 
        shape = "__string", locationName = "applicationId", type = "string"), 
        Author = structure(logical(0), shape = "__string", locationName = "author", 
            type = "string"), CreationTime = structure(logical(0), 
            shape = "__string", locationName = "creationTime", 
            type = "string"), Description = structure(logical(0), 
            shape = "__string", locationName = "description", 
            type = "string"), HomePageUrl = structure(logical(0), 
            shape = "__string", locationName = "homePageUrl", 
            type = "string"), Labels = structure(list(structure(logical(0), 
            shape = "__string", type = "string")), shape = "__listOf__string", 
            locationName = "labels", type = "list"), LicenseUrl = structure(logical(0), 
            shape = "__string", locationName = "licenseUrl", 
            type = "string"), Name = structure(logical(0), shape = "__string", 
            locationName = "name", type = "string"), ReadmeUrl = structure(logical(0), 
            shape = "__string", locationName = "readmeUrl", type = "string"), 
        SpdxLicenseId = structure(logical(0), shape = "__string", 
            locationName = "spdxLicenseId", type = "string"), 
        Version = structure(list(ApplicationId = structure(logical(0), 
            shape = "__string", locationName = "applicationId", 
            type = "string"), CreationTime = structure(logical(0), 
            shape = "__string", locationName = "creationTime", 
            type = "string"), ParameterDefinitions = structure(list(structure(list(AllowedPattern = structure(logical(0), 
            shape = "__string", locationName = "allowedPattern", 
            type = "string"), AllowedValues = structure(list(structure(logical(0), 
            shape = "__string", type = "string")), shape = "__listOf__string", 
            locationName = "allowedValues", type = "list"), ConstraintDescription = structure(logical(0), 
            shape = "__string", locationName = "constraintDescription", 
            type = "string"), DefaultValue = structure(logical(0), 
            shape = "__string", locationName = "defaultValue", 
            type = "string"), Description = structure(logical(0), 
            shape = "__string", locationName = "description", 
            type = "string"), MaxLength = structure(logical(0), 
            shape = "__integer", locationName = "maxLength", 
            type = "integer"), MaxValue = structure(logical(0), 
            shape = "__integer", locationName = "maxValue", type = "integer"), 
            MinLength = structure(logical(0), shape = "__integer", 
                locationName = "minLength", type = "integer"), 
            MinValue = structure(logical(0), shape = "__integer", 
                locationName = "minValue", type = "integer"), 
            Name = structure(logical(0), shape = "__string", 
                locationName = "name", type = "string"), NoEcho = structure(logical(0), 
                shape = "__boolean", locationName = "noEcho", 
                type = "boolean"), ReferencedByResources = structure(list(structure(logical(0), 
                shape = "__string", type = "string")), shape = "__listOf__string", 
                locationName = "referencedByResources", type = "list"), 
            Type = structure(logical(0), shape = "__string", 
                locationName = "type", type = "string")), shape = "ParameterDefinition", 
            type = "structure")), shape = "__listOfParameterDefinition", 
            locationName = "parameterDefinitions", type = "list"), 
            SemanticVersion = structure(logical(0), shape = "__string", 
                locationName = "semanticVersion", type = "string"), 
            SourceCodeUrl = structure(logical(0), shape = "__string", 
                locationName = "sourceCodeUrl", type = "string"), 
            TemplateUrl = structure(logical(0), shape = "__string", 
                locationName = "templateUrl", type = "string")), 
            shape = "Version", locationName = "version", type = "structure")), 
        shape = "UpdateApplicationResponse", type = "structure")
    return(populate(args, shape))
}
