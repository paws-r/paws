#' Creates an application, optionally including an AWS SAM file to create the first application version in the same call
#'
#' Creates an application, optionally including an AWS SAM file to create the first application version in the same call.
#'
#' @param Description The description of the application.
#' 
#' Minimum length=1. Maximum length=256
#' @param Name The name of the application that you want to publish.
#' 
#' Minimum length=1. Maximum length=140
#' 
#' Pattern: \"&#91;a-zA-Z0-9\\\\-&#93;+\";
#' @param Author The name of the author publishing the app.
#' 
#' Minimum length=1. Maximum length=127.
#' 
#' Pattern \"\^&#91;a-z0-9&#93;((&#91;a-z0-9&#93;\|-(?!-))\*&#91;a-z0-9&#93;)?\$\";
#' @param HomePageUrl A URL with more information about the application, for example the location of your GitHub repository for the application.
#' @param Labels Labels to improve discovery of apps in search results.
#' 
#' Minimum length=1. Maximum length=127. Maximum number of labels: 10
#' 
#' Pattern: \"\^&#91;a-zA-Z0-9+\\\\-\_:\\\\/@&#93;+\$\";
#' @param LicenseBody A local text file that contains the license of the app that matches the spdxLicenseID value of your application. The file is of the format file://\<path\>/\<filename\>.
#' 
#' Maximum size 5 MB
#' 
#' Note: Only one of licenseBody and licenseUrl can be specified, otherwise an error will result.
#' @param LicenseUrl A link to the S3 object that contains the license of the app that matches the spdxLicenseID value of your application.
#' 
#' Maximum size 5 MB
#' 
#' Note: Only one of licenseBody and licenseUrl can be specified, otherwise an error will result.
#' @param ReadmeBody A local text readme file in Markdown language that contains a more detailed description of the application and how it works. The file is of the format file://\<path\>/\<filename\>.
#' 
#' Maximum size 5 MB
#' 
#' Note: Only one of readmeBody and readmeUrl can be specified, otherwise an error will result.
#' @param ReadmeUrl A link to the S3 object in Markdown language that contains a more detailed description of the application and how it works.
#' 
#' Maximum size 5 MB
#' 
#' Note: Only one of readmeBody and readmeUrl can be specified, otherwise an error will result.
#' @param SemanticVersion The semantic version of the application:
#' 
#' <https://semver.org/>
#' @param SourceCodeUrl A link to a public repository for the source code of your application.
#' @param SpdxLicenseId A valid identifier from <https://spdx.org/licenses/>.
#' @param TemplateBody The local raw packaged AWS SAM template file of your application. The file is of the format file://\<path\>/\<filename\>.
#' 
#' Note: Only one of templateBody and templateUrl can be specified, otherwise an error will result.
#' @param TemplateUrl A link to the S3 object cotaining the packaged AWS SAM template of your application.
#' 
#' Note: Only one of templateBody and templateUrl can be specified, otherwise an error will result.
#'
#' @examples
#'
#' @export
create_application <- function (Description, Name, Author, HomePageUrl = NULL, 
    Labels = NULL, LicenseBody = NULL, LicenseUrl = NULL, ReadmeBody = NULL, 
    ReadmeUrl = NULL, SemanticVersion = NULL, SourceCodeUrl = NULL, 
    SpdxLicenseId = NULL, TemplateBody = NULL, TemplateUrl = NULL) 
{
    op <- Operation(name = "CreateApplication", http_method = "POST", 
        http_path = "/applications", paginator = list())
    input <- create_application_input(Description = Description, 
        Name = Name, Author = Author, HomePageUrl = HomePageUrl, 
        Labels = Labels, LicenseBody = LicenseBody, LicenseUrl = LicenseUrl, 
        ReadmeBody = ReadmeBody, ReadmeUrl = ReadmeUrl, SemanticVersion = SemanticVersion, 
        SourceCodeUrl = SourceCodeUrl, SpdxLicenseId = SpdxLicenseId, 
        TemplateBody = TemplateBody, TemplateUrl = TemplateUrl)
    output <- create_application_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an application version
#'
#' Creates an application version.
#'
#' @param ApplicationId The Amazon Resource Name (ARN) of the application.
#' @param SemanticVersion The semantic version of the new version.
#' @param SourceCodeUrl A link to a public repository for the source code of your application.
#' @param TemplateBody The raw packaged AWS SAM template of your application.
#' @param TemplateUrl A link to the packaged AWS SAM template of your application.
#'
#' @examples
#'
#' @export
create_application_version <- function (ApplicationId, SemanticVersion, 
    SourceCodeUrl = NULL, TemplateBody = NULL, TemplateUrl = NULL) 
{
    op <- Operation(name = "CreateApplicationVersion", http_method = "PUT", 
        http_path = "/applications/{applicationId}/versions/{semanticVersion}", 
        paginator = list())
    input <- create_application_version_input(ApplicationId = ApplicationId, 
        SemanticVersion = SemanticVersion, SourceCodeUrl = SourceCodeUrl, 
        TemplateBody = TemplateBody, TemplateUrl = TemplateUrl)
    output <- create_application_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an AWS CloudFormation change set for the given application
#'
#' Creates an AWS CloudFormation change set for the given application.
#'
#' @param ApplicationId The Amazon Resource Name (ARN) of the application.
#' @param StackName The name or the unique ID of the stack for which you are creating a change set. AWS CloudFormation generates the change set by comparing this stack\'s information with the information that you submit, such as a modified template or different parameter input values.
#' 
#' Constraints: Minimum length of 1.
#' 
#' Pattern: (&#91;a-zA-Z&#93;&#91;-a-zA-Z0-9&#93;\*)\|(arn:\\b(aws\|aws-us-gov\|aws-cn)\\b:&#91;-a-zA-Z0-9:/.\_+&#93;\*)
#' @param ParameterOverrides A list of parameter values for the parameters of the application.
#' @param SemanticVersion The semantic version of the application:
#' 
#' <https://semver.org/>
#'
#' @examples
#'
#' @export
create_cloud_formation_change_set <- function (ApplicationId, 
    StackName, ParameterOverrides = NULL, SemanticVersion = NULL) 
{
    op <- Operation(name = "CreateCloudFormationChangeSet", http_method = "POST", 
        http_path = "/applications/{applicationId}/changesets", 
        paginator = list())
    input <- create_cloud_formation_change_set_input(ApplicationId = ApplicationId, 
        StackName = StackName, ParameterOverrides = ParameterOverrides, 
        SemanticVersion = SemanticVersion)
    output <- create_cloud_formation_change_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified application
#'
#' Deletes the specified application.
#'
#' @param ApplicationId The Amazon Resource Name (ARN) of the application.
#'
#' @examples
#'
#' @export
delete_application <- function (ApplicationId) 
{
    op <- Operation(name = "DeleteApplication", http_method = "DELETE", 
        http_path = "/applications/{applicationId}", paginator = list())
    input <- delete_application_input(ApplicationId = ApplicationId)
    output <- delete_application_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the specified application
#'
#' Gets the specified application.
#'
#' @param ApplicationId The Amazon Resource Name (ARN) of the application.
#' @param SemanticVersion The semantic version of the application to get.
#'
#' @examples
#'
#' @export
get_application <- function (ApplicationId, SemanticVersion = NULL) 
{
    op <- Operation(name = "GetApplication", http_method = "GET", 
        http_path = "/applications/{applicationId}", paginator = list())
    input <- get_application_input(ApplicationId = ApplicationId, 
        SemanticVersion = SemanticVersion)
    output <- get_application_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the policy for the application
#'
#' Retrieves the policy for the application.
#'
#' @param ApplicationId The Amazon Resource Name (ARN) of the application.
#'
#' @examples
#'
#' @export
get_application_policy <- function (ApplicationId) 
{
    op <- Operation(name = "GetApplicationPolicy", http_method = "GET", 
        http_path = "/applications/{applicationId}/policy", paginator = list())
    input <- get_application_policy_input(ApplicationId = ApplicationId)
    output <- get_application_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists versions for the specified application
#'
#' Lists versions for the specified application.
#'
#' @param ApplicationId The Amazon Resource Name (ARN) of the application.
#' @param MaxItems The total number of items to return.
#' @param NextToken A token to specify where to start paginating.
#'
#' @examples
#'
#' @export
list_application_versions <- function (ApplicationId, MaxItems = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "ListApplicationVersions", http_method = "GET", 
        http_path = "/applications/{applicationId}/versions", 
        paginator = list())
    input <- list_application_versions_input(ApplicationId = ApplicationId, 
        MaxItems = MaxItems, NextToken = NextToken)
    output <- list_application_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists applications owned by the requester
#'
#' Lists applications owned by the requester.
#'
#' @param MaxItems The total number of items to return.
#' @param NextToken A token to specify where to start paginating.
#'
#' @examples
#'
#' @export
list_applications <- function (MaxItems = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListApplications", http_method = "GET", 
        http_path = "/applications", paginator = list())
    input <- list_applications_input(MaxItems = MaxItems, NextToken = NextToken)
    output <- list_applications_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the permission policy for an application
#'
#' Sets the permission policy for an application. See [Application Permissions](https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions) for the list of supported actions that can be used with this operation.
#'
#' @param ApplicationId The Amazon Resource Name (ARN) of the application.
#' @param Statements An array of policy statements applied to the application.
#'
#' @examples
#'
#' @export
put_application_policy <- function (ApplicationId, Statements) 
{
    op <- Operation(name = "PutApplicationPolicy", http_method = "PUT", 
        http_path = "/applications/{applicationId}/policy", paginator = list())
    input <- put_application_policy_input(ApplicationId = ApplicationId, 
        Statements = Statements)
    output <- put_application_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the specified application
#'
#' Updates the specified application.
#'
#' @param ApplicationId The Amazon Resource Name (ARN) of the application.
#' @param Author The name of the author publishing the app.
#' 
#' Minimum length=1. Maximum length=127.
#' 
#' Pattern \"\^&#91;a-z0-9&#93;((&#91;a-z0-9&#93;\|-(?!-))\*&#91;a-z0-9&#93;)?\$\";
#' @param Description The description of the application.
#' 
#' Minimum length=1. Maximum length=256
#' @param HomePageUrl A URL with more information about the application, for example the location of your GitHub repository for the application.
#' @param Labels Labels to improve discovery of apps in search results.
#' 
#' Minimum length=1. Maximum length=127. Maximum number of labels: 10
#' 
#' Pattern: \"\^&#91;a-zA-Z0-9+\\\\-\_:\\\\/@&#93;+\$\";
#' @param ReadmeBody A text readme file in Markdown language that contains a more detailed description of the application and how it works.
#' 
#' Maximum size 5 MB
#' @param ReadmeUrl A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.
#' 
#' Maximum size 5 MB
#'
#' @examples
#'
#' @export
update_application <- function (ApplicationId, Author = NULL, 
    Description = NULL, HomePageUrl = NULL, Labels = NULL, ReadmeBody = NULL, 
    ReadmeUrl = NULL) 
{
    op <- Operation(name = "UpdateApplication", http_method = "PATCH", 
        http_path = "/applications/{applicationId}", paginator = list())
    input <- update_application_input(ApplicationId = ApplicationId, 
        Author = Author, Description = Description, HomePageUrl = HomePageUrl, 
        Labels = Labels, ReadmeBody = ReadmeBody, ReadmeUrl = ReadmeUrl)
    output <- update_application_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
