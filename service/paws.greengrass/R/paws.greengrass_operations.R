#' Associates a role with a group
#'
#' Associates a role with a group. Your AWS Greengrass core will use the role to access AWS cloud services. The role's permissions should allow Greengrass core Lambda functions to perform actions against the cloud.
#'
#' @param GroupId The ID of the AWS Greengrass group.
#' @param RoleArn The ARN of the role you wish to associate with this group.
#'
#' @examples
#'
#' @export
associate_role_to_group <- function (GroupId, RoleArn = NULL) 
{
    op <- Operation(name = "AssociateRoleToGroup", http_method = "PUT", 
        http_path = "/greengrass/groups/{GroupId}/role", paginator = list())
    input <- associate_role_to_group_input(GroupId = GroupId, 
        RoleArn = RoleArn)
    output <- associate_role_to_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates a role with your account
#'
#' Associates a role with your account. AWS Greengrass will use the role to access your Lambda functions and AWS IoT resources. This is necessary for deployments to succeed. The role must have at least minimum permissions in the policy ''AWSGreengrassResourceAccessRolePolicy''.
#'
#' @param RoleArn The ARN of the service role you wish to associate with your account.
#'
#' @examples
#'
#' @export
associate_service_role_to_account <- function (RoleArn = NULL) 
{
    op <- Operation(name = "AssociateServiceRoleToAccount", http_method = "PUT", 
        http_path = "/greengrass/servicerole", paginator = list())
    input <- associate_service_role_to_account_input(RoleArn = RoleArn)
    output <- associate_service_role_to_account_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a core definition
#'
#' Creates a core definition. You may provide the initial version of the core definition now or use ''CreateCoreDefinitionVersion'' at a later time. AWS Greengrass groups must each contain exactly one AWS Greengrass core.
#'
#' @param AmznClientToken A client token used to correlate requests and responses.
#' @param InitialVersion Information about the initial version of the core definition.
#' @param Name The name of the core definition.
#'
#' @examples
#'
#' @export
create_core_definition <- function (AmznClientToken = NULL, InitialVersion = NULL, 
    Name = NULL) 
{
    op <- Operation(name = "CreateCoreDefinition", http_method = "POST", 
        http_path = "/greengrass/definition/cores", paginator = list())
    input <- create_core_definition_input(AmznClientToken = AmznClientToken, 
        InitialVersion = InitialVersion, Name = Name)
    output <- create_core_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a version of a core definition that has already been defined
#'
#' Creates a version of a core definition that has already been defined. AWS Greengrass groups must each contain exactly one AWS Greengrass core.
#'
#' @param CoreDefinitionId The ID of the core definition.
#' @param AmznClientToken A client token used to correlate requests and responses.
#' @param Cores A list of cores in the core definition version.
#'
#' @examples
#'
#' @export
create_core_definition_version <- function (CoreDefinitionId, 
    AmznClientToken = NULL, Cores = NULL) 
{
    op <- Operation(name = "CreateCoreDefinitionVersion", http_method = "POST", 
        http_path = "/greengrass/definition/cores/{CoreDefinitionId}/versions", 
        paginator = list())
    input <- create_core_definition_version_input(CoreDefinitionId = CoreDefinitionId, 
        AmznClientToken = AmznClientToken, Cores = Cores)
    output <- create_core_definition_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a deployment
#'
#' Creates a deployment.
#'
#' @param GroupId The ID of the AWS Greengrass group.
#' @param AmznClientToken A client token used to correlate requests and responses.
#' @param DeploymentId The ID of the deployment if you wish to redeploy a previous deployment.
#' @param DeploymentType The type of deployment. When used in ''CreateDeployment'', only ''NewDeployment'' and ''Redeployment'' are valid.
#' @param GroupVersionId The ID of the group version to be deployed.
#'
#' @examples
#'
#' @export
create_deployment <- function (GroupId, AmznClientToken = NULL, 
    DeploymentId = NULL, DeploymentType = NULL, GroupVersionId = NULL) 
{
    op <- Operation(name = "CreateDeployment", http_method = "POST", 
        http_path = "/greengrass/groups/{GroupId}/deployments", 
        paginator = list())
    input <- create_deployment_input(GroupId = GroupId, AmznClientToken = AmznClientToken, 
        DeploymentId = DeploymentId, DeploymentType = DeploymentType, 
        GroupVersionId = GroupVersionId)
    output <- create_deployment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a device definition
#'
#' Creates a device definition. You may provide the initial version of the device definition now or use ''CreateDeviceDefinitionVersion'' at a later time.
#'
#' @param AmznClientToken A client token used to correlate requests and responses.
#' @param InitialVersion Information about the initial version of the device definition.
#' @param Name The name of the device definition.
#'
#' @examples
#'
#' @export
create_device_definition <- function (AmznClientToken = NULL, 
    InitialVersion = NULL, Name = NULL) 
{
    op <- Operation(name = "CreateDeviceDefinition", http_method = "POST", 
        http_path = "/greengrass/definition/devices", paginator = list())
    input <- create_device_definition_input(AmznClientToken = AmznClientToken, 
        InitialVersion = InitialVersion, Name = Name)
    output <- create_device_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a version of a device definition that has already been defined
#'
#' Creates a version of a device definition that has already been defined.
#'
#' @param DeviceDefinitionId The ID of the device definition.
#' @param AmznClientToken A client token used to correlate requests and responses.
#' @param Devices A list of devices in the definition version.
#'
#' @examples
#'
#' @export
create_device_definition_version <- function (DeviceDefinitionId, 
    AmznClientToken = NULL, Devices = NULL) 
{
    op <- Operation(name = "CreateDeviceDefinitionVersion", http_method = "POST", 
        http_path = "/greengrass/definition/devices/{DeviceDefinitionId}/versions", 
        paginator = list())
    input <- create_device_definition_version_input(DeviceDefinitionId = DeviceDefinitionId, 
        AmznClientToken = AmznClientToken, Devices = Devices)
    output <- create_device_definition_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a Lambda function definition which contains a list of Lambda functions and their configurations to be used in a group
#'
#' Creates a Lambda function definition which contains a list of Lambda functions and their configurations to be used in a group. You can create an initial version of the definition by providing a list of Lambda functions and their configurations now, or use ''CreateFunctionDefinitionVersion'' later.
#'
#' @param AmznClientToken A client token used to correlate requests and responses.
#' @param InitialVersion Information about the initial version of the function definition.
#' @param Name The name of the function definition.
#'
#' @examples
#'
#' @export
create_function_definition <- function (AmznClientToken = NULL, 
    InitialVersion = NULL, Name = NULL) 
{
    op <- Operation(name = "CreateFunctionDefinition", http_method = "POST", 
        http_path = "/greengrass/definition/functions", paginator = list())
    input <- create_function_definition_input(AmznClientToken = AmznClientToken, 
        InitialVersion = InitialVersion, Name = Name)
    output <- create_function_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a version of a Lambda function definition that has already been defined
#'
#' Creates a version of a Lambda function definition that has already been defined.
#'
#' @param FunctionDefinitionId The ID of the Lambda function definition.
#' @param AmznClientToken A client token used to correlate requests and responses.
#' @param Functions A list of Lambda functions in this function definition version.
#'
#' @examples
#'
#' @export
create_function_definition_version <- function (FunctionDefinitionId, 
    AmznClientToken = NULL, Functions = NULL) 
{
    op <- Operation(name = "CreateFunctionDefinitionVersion", 
        http_method = "POST", http_path = "/greengrass/definition/functions/{FunctionDefinitionId}/versions", 
        paginator = list())
    input <- create_function_definition_version_input(FunctionDefinitionId = FunctionDefinitionId, 
        AmznClientToken = AmznClientToken, Functions = Functions)
    output <- create_function_definition_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a group
#'
#' Creates a group. You may provide the initial version of the group or use ''CreateGroupVersion'' at a later time.
#'
#' @param AmznClientToken A client token used to correlate requests and responses.
#' @param InitialVersion Information about the initial version of the group.
#' @param Name The name of the group.
#'
#' @examples
#'
#' @export
create_group <- function (AmznClientToken = NULL, InitialVersion = NULL, 
    Name = NULL) 
{
    op <- Operation(name = "CreateGroup", http_method = "POST", 
        http_path = "/greengrass/groups", paginator = list())
    input <- create_group_input(AmznClientToken = AmznClientToken, 
        InitialVersion = InitialVersion, Name = Name)
    output <- create_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a CA for the group
#'
#' Creates a CA for the group. If a CA already exists, it will rotate the existing CA.
#'
#' @param GroupId The ID of the AWS Greengrass group.
#' @param AmznClientToken A client token used to correlate requests and responses.
#'
#' @examples
#'
#' @export
create_group_certificate_authority <- function (GroupId, AmznClientToken = NULL) 
{
    op <- Operation(name = "CreateGroupCertificateAuthority", 
        http_method = "POST", http_path = "/greengrass/groups/{GroupId}/certificateauthorities", 
        paginator = list())
    input <- create_group_certificate_authority_input(GroupId = GroupId, 
        AmznClientToken = AmznClientToken)
    output <- create_group_certificate_authority_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a version of a group which has already been defined
#'
#' Creates a version of a group which has already been defined.
#'
#' @param GroupId The ID of the AWS Greengrass group.
#' @param AmznClientToken A client token used to correlate requests and responses.
#' @param CoreDefinitionVersionArn The ARN of the core definition version for this group.
#' @param DeviceDefinitionVersionArn The ARN of the device definition version for this group.
#' @param FunctionDefinitionVersionArn The ARN of the function definition version for this group.
#' @param LoggerDefinitionVersionArn The ARN of the logger definition version for this group.
#' @param ResourceDefinitionVersionArn The resource definition version ARN for this group.
#' @param SubscriptionDefinitionVersionArn The ARN of the subscription definition version for this group.
#'
#' @examples
#'
#' @export
create_group_version <- function (GroupId, AmznClientToken = NULL, 
    CoreDefinitionVersionArn = NULL, DeviceDefinitionVersionArn = NULL, 
    FunctionDefinitionVersionArn = NULL, LoggerDefinitionVersionArn = NULL, 
    ResourceDefinitionVersionArn = NULL, SubscriptionDefinitionVersionArn = NULL) 
{
    op <- Operation(name = "CreateGroupVersion", http_method = "POST", 
        http_path = "/greengrass/groups/{GroupId}/versions", 
        paginator = list())
    input <- create_group_version_input(GroupId = GroupId, AmznClientToken = AmznClientToken, 
        CoreDefinitionVersionArn = CoreDefinitionVersionArn, 
        DeviceDefinitionVersionArn = DeviceDefinitionVersionArn, 
        FunctionDefinitionVersionArn = FunctionDefinitionVersionArn, 
        LoggerDefinitionVersionArn = LoggerDefinitionVersionArn, 
        ResourceDefinitionVersionArn = ResourceDefinitionVersionArn, 
        SubscriptionDefinitionVersionArn = SubscriptionDefinitionVersionArn)
    output <- create_group_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a logger definition
#'
#' Creates a logger definition. You may provide the initial version of the logger definition now or use ''CreateLoggerDefinitionVersion'' at a later time.
#'
#' @param AmznClientToken A client token used to correlate requests and responses.
#' @param InitialVersion Information about the initial version of the logger definition.
#' @param Name The name of the logger definition.
#'
#' @examples
#'
#' @export
create_logger_definition <- function (AmznClientToken = NULL, 
    InitialVersion = NULL, Name = NULL) 
{
    op <- Operation(name = "CreateLoggerDefinition", http_method = "POST", 
        http_path = "/greengrass/definition/loggers", paginator = list())
    input <- create_logger_definition_input(AmznClientToken = AmznClientToken, 
        InitialVersion = InitialVersion, Name = Name)
    output <- create_logger_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a version of a logger definition that has already been defined
#'
#' Creates a version of a logger definition that has already been defined.
#'
#' @param LoggerDefinitionId The ID of the logger definition.
#' @param AmznClientToken A client token used to correlate requests and responses.
#' @param Loggers A list of loggers.
#'
#' @examples
#'
#' @export
create_logger_definition_version <- function (LoggerDefinitionId, 
    AmznClientToken = NULL, Loggers = NULL) 
{
    op <- Operation(name = "CreateLoggerDefinitionVersion", http_method = "POST", 
        http_path = "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", 
        paginator = list())
    input <- create_logger_definition_version_input(LoggerDefinitionId = LoggerDefinitionId, 
        AmznClientToken = AmznClientToken, Loggers = Loggers)
    output <- create_logger_definition_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a resource definition which contains a list of resources to be used in a group
#'
#' Creates a resource definition which contains a list of resources to be used in a group. You can create an initial version of the definition by providing a list of resources now, or use ''CreateResourceDefinitionVersion'' later.
#'
#' @param AmznClientToken A client token used to correlate requests and responses.
#' @param InitialVersion Information about the initial version of the resource definition.
#' @param Name The name of the resource definition.
#'
#' @examples
#'
#' @export
create_resource_definition <- function (AmznClientToken = NULL, 
    InitialVersion = NULL, Name = NULL) 
{
    op <- Operation(name = "CreateResourceDefinition", http_method = "POST", 
        http_path = "/greengrass/definition/resources", paginator = list())
    input <- create_resource_definition_input(AmznClientToken = AmznClientToken, 
        InitialVersion = InitialVersion, Name = Name)
    output <- create_resource_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a version of a resource definition that has already been defined
#'
#' Creates a version of a resource definition that has already been defined.
#'
#' @param ResourceDefinitionId The ID of the resource definition.
#' @param AmznClientToken A client token used to correlate requests and responses.
#' @param Resources A list of resources.
#'
#' @examples
#'
#' @export
create_resource_definition_version <- function (ResourceDefinitionId, 
    AmznClientToken = NULL, Resources = NULL) 
{
    op <- Operation(name = "CreateResourceDefinitionVersion", 
        http_method = "POST", http_path = "/greengrass/definition/resources/{ResourceDefinitionId}/versions", 
        paginator = list())
    input <- create_resource_definition_version_input(ResourceDefinitionId = ResourceDefinitionId, 
        AmznClientToken = AmznClientToken, Resources = Resources)
    output <- create_resource_definition_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a software update for a core or group of cores (specified as an IoT thing group
#'
#' Creates a software update for a core or group of cores (specified as an IoT thing group.) Use this to update the OTA Agent as well as the Greengrass core software. It makes use of the IoT Jobs feature which provides additional commands to manage a Greengrass core software update job.
#'
#' @param AmznClientToken A client token used to correlate requests and responses.
#' @param S3UrlSignerRole 
#' @param SoftwareToUpdate 
#' @param UpdateAgentLogLevel 
#' @param UpdateTargets 
#' @param UpdateTargetsArchitecture 
#' @param UpdateTargetsOperatingSystem 
#'
#' @examples
#'
#' @export
create_software_update_job <- function (AmznClientToken = NULL, 
    S3UrlSignerRole = NULL, SoftwareToUpdate = NULL, UpdateAgentLogLevel = NULL, 
    UpdateTargets = NULL, UpdateTargetsArchitecture = NULL, UpdateTargetsOperatingSystem = NULL) 
{
    op <- Operation(name = "CreateSoftwareUpdateJob", http_method = "POST", 
        http_path = "/greengrass/updates", paginator = list())
    input <- create_software_update_job_input(AmznClientToken = AmznClientToken, 
        S3UrlSignerRole = S3UrlSignerRole, SoftwareToUpdate = SoftwareToUpdate, 
        UpdateAgentLogLevel = UpdateAgentLogLevel, UpdateTargets = UpdateTargets, 
        UpdateTargetsArchitecture = UpdateTargetsArchitecture, 
        UpdateTargetsOperatingSystem = UpdateTargetsOperatingSystem)
    output <- create_software_update_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a subscription definition
#'
#' Creates a subscription definition. You may provide the initial version of the subscription definition now or use ''CreateSubscriptionDefinitionVersion'' at a later time.
#'
#' @param AmznClientToken A client token used to correlate requests and responses.
#' @param InitialVersion Information about the initial version of the subscription definition.
#' @param Name The name of the subscription definition.
#'
#' @examples
#'
#' @export
create_subscription_definition <- function (AmznClientToken = NULL, 
    InitialVersion = NULL, Name = NULL) 
{
    op <- Operation(name = "CreateSubscriptionDefinition", http_method = "POST", 
        http_path = "/greengrass/definition/subscriptions", paginator = list())
    input <- create_subscription_definition_input(AmznClientToken = AmznClientToken, 
        InitialVersion = InitialVersion, Name = Name)
    output <- create_subscription_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a version of a subscription definition which has already been defined
#'
#' Creates a version of a subscription definition which has already been defined.
#'
#' @param SubscriptionDefinitionId The ID of the subscription definition.
#' @param AmznClientToken A client token used to correlate requests and responses.
#' @param Subscriptions A list of subscriptions.
#'
#' @examples
#'
#' @export
create_subscription_definition_version <- function (SubscriptionDefinitionId, 
    AmznClientToken = NULL, Subscriptions = NULL) 
{
    op <- Operation(name = "CreateSubscriptionDefinitionVersion", 
        http_method = "POST", http_path = "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", 
        paginator = list())
    input <- create_subscription_definition_version_input(SubscriptionDefinitionId = SubscriptionDefinitionId, 
        AmznClientToken = AmznClientToken, Subscriptions = Subscriptions)
    output <- create_subscription_definition_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a core definition
#'
#' Deletes a core definition.
#'
#' @param CoreDefinitionId The ID of the core definition.
#'
#' @examples
#'
#' @export
delete_core_definition <- function (CoreDefinitionId) 
{
    op <- Operation(name = "DeleteCoreDefinition", http_method = "DELETE", 
        http_path = "/greengrass/definition/cores/{CoreDefinitionId}", 
        paginator = list())
    input <- delete_core_definition_input(CoreDefinitionId = CoreDefinitionId)
    output <- delete_core_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a device definition
#'
#' Deletes a device definition.
#'
#' @param DeviceDefinitionId The ID of the device definition.
#'
#' @examples
#'
#' @export
delete_device_definition <- function (DeviceDefinitionId) 
{
    op <- Operation(name = "DeleteDeviceDefinition", http_method = "DELETE", 
        http_path = "/greengrass/definition/devices/{DeviceDefinitionId}", 
        paginator = list())
    input <- delete_device_definition_input(DeviceDefinitionId = DeviceDefinitionId)
    output <- delete_device_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a Lambda function definition
#'
#' Deletes a Lambda function definition.
#'
#' @param FunctionDefinitionId The ID of the Lambda function definition.
#'
#' @examples
#'
#' @export
delete_function_definition <- function (FunctionDefinitionId) 
{
    op <- Operation(name = "DeleteFunctionDefinition", http_method = "DELETE", 
        http_path = "/greengrass/definition/functions/{FunctionDefinitionId}", 
        paginator = list())
    input <- delete_function_definition_input(FunctionDefinitionId = FunctionDefinitionId)
    output <- delete_function_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a group
#'
#' Deletes a group.
#'
#' @param GroupId The ID of the AWS Greengrass group.
#'
#' @examples
#'
#' @export
delete_group <- function (GroupId) 
{
    op <- Operation(name = "DeleteGroup", http_method = "DELETE", 
        http_path = "/greengrass/groups/{GroupId}", paginator = list())
    input <- delete_group_input(GroupId = GroupId)
    output <- delete_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a logger definition
#'
#' Deletes a logger definition.
#'
#' @param LoggerDefinitionId The ID of the logger definition.
#'
#' @examples
#'
#' @export
delete_logger_definition <- function (LoggerDefinitionId) 
{
    op <- Operation(name = "DeleteLoggerDefinition", http_method = "DELETE", 
        http_path = "/greengrass/definition/loggers/{LoggerDefinitionId}", 
        paginator = list())
    input <- delete_logger_definition_input(LoggerDefinitionId = LoggerDefinitionId)
    output <- delete_logger_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a resource definition
#'
#' Deletes a resource definition.
#'
#' @param ResourceDefinitionId The ID of the resource definition.
#'
#' @examples
#'
#' @export
delete_resource_definition <- function (ResourceDefinitionId) 
{
    op <- Operation(name = "DeleteResourceDefinition", http_method = "DELETE", 
        http_path = "/greengrass/definition/resources/{ResourceDefinitionId}", 
        paginator = list())
    input <- delete_resource_definition_input(ResourceDefinitionId = ResourceDefinitionId)
    output <- delete_resource_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a subscription definition
#'
#' Deletes a subscription definition.
#'
#' @param SubscriptionDefinitionId The ID of the subscription definition.
#'
#' @examples
#'
#' @export
delete_subscription_definition <- function (SubscriptionDefinitionId) 
{
    op <- Operation(name = "DeleteSubscriptionDefinition", http_method = "DELETE", 
        http_path = "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", 
        paginator = list())
    input <- delete_subscription_definition_input(SubscriptionDefinitionId = SubscriptionDefinitionId)
    output <- delete_subscription_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates the role from a group
#'
#' Disassociates the role from a group.
#'
#' @param GroupId The ID of the AWS Greengrass group.
#'
#' @examples
#'
#' @export
disassociate_role_from_group <- function (GroupId) 
{
    op <- Operation(name = "DisassociateRoleFromGroup", http_method = "DELETE", 
        http_path = "/greengrass/groups/{GroupId}/role", paginator = list())
    input <- disassociate_role_from_group_input(GroupId = GroupId)
    output <- disassociate_role_from_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates the service role from your account
#'
#' Disassociates the service role from your account. Without a service role, deployments will not work.
#'
#' @examples
#'
#' @export
disassociate_service_role_from_account <- function () 
{
    op <- Operation(name = "DisassociateServiceRoleFromAccount", 
        http_method = "DELETE", http_path = "/greengrass/servicerole", 
        paginator = list())
    input <- disassociate_service_role_from_account_input()
    output <- disassociate_service_role_from_account_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the role associated with a particular group
#'
#' Retrieves the role associated with a particular group.
#'
#' @param GroupId The ID of the AWS Greengrass group.
#'
#' @examples
#'
#' @export
get_associated_role <- function (GroupId) 
{
    op <- Operation(name = "GetAssociatedRole", http_method = "GET", 
        http_path = "/greengrass/groups/{GroupId}/role", paginator = list())
    input <- get_associated_role_input(GroupId = GroupId)
    output <- get_associated_role_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the connectivity information for a core
#'
#' Retrieves the connectivity information for a core.
#'
#' @param ThingName The thing name.
#'
#' @examples
#'
#' @export
get_connectivity_info <- function (ThingName) 
{
    op <- Operation(name = "GetConnectivityInfo", http_method = "GET", 
        http_path = "/greengrass/things/{ThingName}/connectivityInfo", 
        paginator = list())
    input <- get_connectivity_info_input(ThingName = ThingName)
    output <- get_connectivity_info_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves information about a core definition version
#'
#' Retrieves information about a core definition version.
#'
#' @param CoreDefinitionId The ID of the core definition.
#'
#' @examples
#'
#' @export
get_core_definition <- function (CoreDefinitionId) 
{
    op <- Operation(name = "GetCoreDefinition", http_method = "GET", 
        http_path = "/greengrass/definition/cores/{CoreDefinitionId}", 
        paginator = list())
    input <- get_core_definition_input(CoreDefinitionId = CoreDefinitionId)
    output <- get_core_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves information about a core definition version
#'
#' Retrieves information about a core definition version.
#'
#' @param CoreDefinitionId The ID of the core definition.
#' @param CoreDefinitionVersionId The ID of the core definition version.
#'
#' @examples
#'
#' @export
get_core_definition_version <- function (CoreDefinitionId, CoreDefinitionVersionId) 
{
    op <- Operation(name = "GetCoreDefinitionVersion", http_method = "GET", 
        http_path = "/greengrass/definition/cores/{CoreDefinitionId}/versions/{CoreDefinitionVersionId}", 
        paginator = list())
    input <- get_core_definition_version_input(CoreDefinitionId = CoreDefinitionId, 
        CoreDefinitionVersionId = CoreDefinitionVersionId)
    output <- get_core_definition_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the status of a deployment
#'
#' Returns the status of a deployment.
#'
#' @param GroupId The ID of the AWS Greengrass group.
#' @param DeploymentId The ID of the deployment.
#'
#' @examples
#'
#' @export
get_deployment_status <- function (GroupId, DeploymentId) 
{
    op <- Operation(name = "GetDeploymentStatus", http_method = "GET", 
        http_path = "/greengrass/groups/{GroupId}/deployments/{DeploymentId}/status", 
        paginator = list())
    input <- get_deployment_status_input(GroupId = GroupId, DeploymentId = DeploymentId)
    output <- get_deployment_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves information about a device definition
#'
#' Retrieves information about a device definition.
#'
#' @param DeviceDefinitionId The ID of the device definition.
#'
#' @examples
#'
#' @export
get_device_definition <- function (DeviceDefinitionId) 
{
    op <- Operation(name = "GetDeviceDefinition", http_method = "GET", 
        http_path = "/greengrass/definition/devices/{DeviceDefinitionId}", 
        paginator = list())
    input <- get_device_definition_input(DeviceDefinitionId = DeviceDefinitionId)
    output <- get_device_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves information about a device definition version
#'
#' Retrieves information about a device definition version.
#'
#' @param DeviceDefinitionVersionId The ID of the device definition version.
#' @param DeviceDefinitionId The ID of the device definition.
#'
#' @examples
#'
#' @export
get_device_definition_version <- function (DeviceDefinitionVersionId, 
    DeviceDefinitionId) 
{
    op <- Operation(name = "GetDeviceDefinitionVersion", http_method = "GET", 
        http_path = "/greengrass/definition/devices/{DeviceDefinitionId}/versions/{DeviceDefinitionVersionId}", 
        paginator = list())
    input <- get_device_definition_version_input(DeviceDefinitionVersionId = DeviceDefinitionVersionId, 
        DeviceDefinitionId = DeviceDefinitionId)
    output <- get_device_definition_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves information about a Lambda function definition, including its creation time and latest version
#'
#' Retrieves information about a Lambda function definition, including its creation time and latest version.
#'
#' @param FunctionDefinitionId The ID of the Lambda function definition.
#'
#' @examples
#'
#' @export
get_function_definition <- function (FunctionDefinitionId) 
{
    op <- Operation(name = "GetFunctionDefinition", http_method = "GET", 
        http_path = "/greengrass/definition/functions/{FunctionDefinitionId}", 
        paginator = list())
    input <- get_function_definition_input(FunctionDefinitionId = FunctionDefinitionId)
    output <- get_function_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves information about a Lambda function definition version, including which Lambda functions are included in the version and their configurations
#'
#' Retrieves information about a Lambda function definition version, including which Lambda functions are included in the version and their configurations.
#'
#' @param FunctionDefinitionId The ID of the Lambda function definition.
#' @param FunctionDefinitionVersionId The ID of the function definition version.
#'
#' @examples
#'
#' @export
get_function_definition_version <- function (FunctionDefinitionId, 
    FunctionDefinitionVersionId) 
{
    op <- Operation(name = "GetFunctionDefinitionVersion", http_method = "GET", 
        http_path = "/greengrass/definition/functions/{FunctionDefinitionId}/versions/{FunctionDefinitionVersionId}", 
        paginator = list())
    input <- get_function_definition_version_input(FunctionDefinitionId = FunctionDefinitionId, 
        FunctionDefinitionVersionId = FunctionDefinitionVersionId)
    output <- get_function_definition_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves information about a group
#'
#' Retrieves information about a group.
#'
#' @param GroupId The ID of the AWS Greengrass group.
#'
#' @examples
#'
#' @export
get_group <- function (GroupId) 
{
    op <- Operation(name = "GetGroup", http_method = "GET", http_path = "/greengrass/groups/{GroupId}", 
        paginator = list())
    input <- get_group_input(GroupId = GroupId)
    output <- get_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retreives the CA associated with a group
#'
#' Retreives the CA associated with a group. Returns the public key of the CA.
#'
#' @param CertificateAuthorityId The ID of the certificate authority.
#' @param GroupId The ID of the AWS Greengrass group.
#'
#' @examples
#'
#' @export
get_group_certificate_authority <- function (CertificateAuthorityId, 
    GroupId) 
{
    op <- Operation(name = "GetGroupCertificateAuthority", http_method = "GET", 
        http_path = "/greengrass/groups/{GroupId}/certificateauthorities/{CertificateAuthorityId}", 
        paginator = list())
    input <- get_group_certificate_authority_input(CertificateAuthorityId = CertificateAuthorityId, 
        GroupId = GroupId)
    output <- get_group_certificate_authority_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the current configuration for the CA used by the group
#'
#' Retrieves the current configuration for the CA used by the group.
#'
#' @param GroupId The ID of the AWS Greengrass group.
#'
#' @examples
#'
#' @export
get_group_certificate_configuration <- function (GroupId) 
{
    op <- Operation(name = "GetGroupCertificateConfiguration", 
        http_method = "GET", http_path = "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", 
        paginator = list())
    input <- get_group_certificate_configuration_input(GroupId = GroupId)
    output <- get_group_certificate_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves information about a group version
#'
#' Retrieves information about a group version.
#'
#' @param GroupVersionId The ID of the group version.
#' @param GroupId The ID of the AWS Greengrass group.
#'
#' @examples
#'
#' @export
get_group_version <- function (GroupVersionId, GroupId) 
{
    op <- Operation(name = "GetGroupVersion", http_method = "GET", 
        http_path = "/greengrass/groups/{GroupId}/versions/{GroupVersionId}", 
        paginator = list())
    input <- get_group_version_input(GroupVersionId = GroupVersionId, 
        GroupId = GroupId)
    output <- get_group_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves information about a logger definition
#'
#' Retrieves information about a logger definition.
#'
#' @param LoggerDefinitionId The ID of the logger definition.
#'
#' @examples
#'
#' @export
get_logger_definition <- function (LoggerDefinitionId) 
{
    op <- Operation(name = "GetLoggerDefinition", http_method = "GET", 
        http_path = "/greengrass/definition/loggers/{LoggerDefinitionId}", 
        paginator = list())
    input <- get_logger_definition_input(LoggerDefinitionId = LoggerDefinitionId)
    output <- get_logger_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves information about a logger definition version
#'
#' Retrieves information about a logger definition version.
#'
#' @param LoggerDefinitionVersionId The ID of the logger definition version.
#' @param LoggerDefinitionId The ID of the logger definition.
#'
#' @examples
#'
#' @export
get_logger_definition_version <- function (LoggerDefinitionVersionId, 
    LoggerDefinitionId) 
{
    op <- Operation(name = "GetLoggerDefinitionVersion", http_method = "GET", 
        http_path = "/greengrass/definition/loggers/{LoggerDefinitionId}/versions/{LoggerDefinitionVersionId}", 
        paginator = list())
    input <- get_logger_definition_version_input(LoggerDefinitionVersionId = LoggerDefinitionVersionId, 
        LoggerDefinitionId = LoggerDefinitionId)
    output <- get_logger_definition_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves information about a resource definition, including its creation time and latest version
#'
#' Retrieves information about a resource definition, including its creation time and latest version.
#'
#' @param ResourceDefinitionId The ID of the resource definition.
#'
#' @examples
#'
#' @export
get_resource_definition <- function (ResourceDefinitionId) 
{
    op <- Operation(name = "GetResourceDefinition", http_method = "GET", 
        http_path = "/greengrass/definition/resources/{ResourceDefinitionId}", 
        paginator = list())
    input <- get_resource_definition_input(ResourceDefinitionId = ResourceDefinitionId)
    output <- get_resource_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves information about a resource definition version, including which resources are included in the version
#'
#' Retrieves information about a resource definition version, including which resources are included in the version.
#'
#' @param ResourceDefinitionVersionId The ID of the resource definition version.
#' @param ResourceDefinitionId The ID of the resource definition.
#'
#' @examples
#'
#' @export
get_resource_definition_version <- function (ResourceDefinitionVersionId, 
    ResourceDefinitionId) 
{
    op <- Operation(name = "GetResourceDefinitionVersion", http_method = "GET", 
        http_path = "/greengrass/definition/resources/{ResourceDefinitionId}/versions/{ResourceDefinitionVersionId}", 
        paginator = list())
    input <- get_resource_definition_version_input(ResourceDefinitionVersionId = ResourceDefinitionVersionId, 
        ResourceDefinitionId = ResourceDefinitionId)
    output <- get_resource_definition_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the service role that is attached to your account
#'
#' Retrieves the service role that is attached to your account.
#'
#' @examples
#'
#' @export
get_service_role_for_account <- function () 
{
    op <- Operation(name = "GetServiceRoleForAccount", http_method = "GET", 
        http_path = "/greengrass/servicerole", paginator = list())
    input <- get_service_role_for_account_input()
    output <- get_service_role_for_account_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves information about a subscription definition
#'
#' Retrieves information about a subscription definition.
#'
#' @param SubscriptionDefinitionId The ID of the subscription definition.
#'
#' @examples
#'
#' @export
get_subscription_definition <- function (SubscriptionDefinitionId) 
{
    op <- Operation(name = "GetSubscriptionDefinition", http_method = "GET", 
        http_path = "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", 
        paginator = list())
    input <- get_subscription_definition_input(SubscriptionDefinitionId = SubscriptionDefinitionId)
    output <- get_subscription_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves information about a subscription definition version
#'
#' Retrieves information about a subscription definition version.
#'
#' @param SubscriptionDefinitionId The ID of the subscription definition.
#' @param SubscriptionDefinitionVersionId The ID of the subscription definition version.
#'
#' @examples
#'
#' @export
get_subscription_definition_version <- function (SubscriptionDefinitionId, 
    SubscriptionDefinitionVersionId) 
{
    op <- Operation(name = "GetSubscriptionDefinitionVersion", 
        http_method = "GET", http_path = "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions/{SubscriptionDefinitionVersionId}", 
        paginator = list())
    input <- get_subscription_definition_version_input(SubscriptionDefinitionId = SubscriptionDefinitionId, 
        SubscriptionDefinitionVersionId = SubscriptionDefinitionVersionId)
    output <- get_subscription_definition_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the versions of a core definition
#'
#' Lists the versions of a core definition.
#'
#' @param CoreDefinitionId The ID of the core definition.
#' @param MaxResults The maximum number of results to be returned per request.
#' @param NextToken The token for the next set of results, or ''null'' if there are no additional results.
#'
#' @examples
#'
#' @export
list_core_definition_versions <- function (CoreDefinitionId, 
    MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListCoreDefinitionVersions", http_method = "GET", 
        http_path = "/greengrass/definition/cores/{CoreDefinitionId}/versions", 
        paginator = list())
    input <- list_core_definition_versions_input(CoreDefinitionId = CoreDefinitionId, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- list_core_definition_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a list of core definitions
#'
#' Retrieves a list of core definitions.
#'
#' @param MaxResults The maximum number of results to be returned per request.
#' @param NextToken The token for the next set of results, or ''null'' if there are no additional results.
#'
#' @examples
#'
#' @export
list_core_definitions <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListCoreDefinitions", http_method = "GET", 
        http_path = "/greengrass/definition/cores", paginator = list())
    input <- list_core_definitions_input(MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- list_core_definitions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a history of deployments for the group
#'
#' Returns a history of deployments for the group.
#'
#' @param GroupId The ID of the AWS Greengrass group.
#' @param MaxResults The maximum number of results to be returned per request.
#' @param NextToken The token for the next set of results, or ''null'' if there are no additional results.
#'
#' @examples
#'
#' @export
list_deployments <- function (GroupId, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListDeployments", http_method = "GET", 
        http_path = "/greengrass/groups/{GroupId}/deployments", 
        paginator = list())
    input <- list_deployments_input(GroupId = GroupId, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- list_deployments_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the versions of a device definition
#'
#' Lists the versions of a device definition.
#'
#' @param DeviceDefinitionId The ID of the device definition.
#' @param MaxResults The maximum number of results to be returned per request.
#' @param NextToken The token for the next set of results, or ''null'' if there are no additional results.
#'
#' @examples
#'
#' @export
list_device_definition_versions <- function (DeviceDefinitionId, 
    MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListDeviceDefinitionVersions", http_method = "GET", 
        http_path = "/greengrass/definition/devices/{DeviceDefinitionId}/versions", 
        paginator = list())
    input <- list_device_definition_versions_input(DeviceDefinitionId = DeviceDefinitionId, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- list_device_definition_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a list of device definitions
#'
#' Retrieves a list of device definitions.
#'
#' @param MaxResults The maximum number of results to be returned per request.
#' @param NextToken The token for the next set of results, or ''null'' if there are no additional results.
#'
#' @examples
#'
#' @export
list_device_definitions <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListDeviceDefinitions", http_method = "GET", 
        http_path = "/greengrass/definition/devices", paginator = list())
    input <- list_device_definitions_input(MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- list_device_definitions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the versions of a Lambda function definition
#'
#' Lists the versions of a Lambda function definition.
#'
#' @param FunctionDefinitionId The ID of the Lambda function definition.
#' @param MaxResults The maximum number of results to be returned per request.
#' @param NextToken The token for the next set of results, or ''null'' if there are no additional results.
#'
#' @examples
#'
#' @export
list_function_definition_versions <- function (FunctionDefinitionId, 
    MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListFunctionDefinitionVersions", 
        http_method = "GET", http_path = "/greengrass/definition/functions/{FunctionDefinitionId}/versions", 
        paginator = list())
    input <- list_function_definition_versions_input(FunctionDefinitionId = FunctionDefinitionId, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- list_function_definition_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a list of Lambda function definitions
#'
#' Retrieves a list of Lambda function definitions.
#'
#' @param MaxResults The maximum number of results to be returned per request.
#' @param NextToken The token for the next set of results, or ''null'' if there are no additional results.
#'
#' @examples
#'
#' @export
list_function_definitions <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListFunctionDefinitions", http_method = "GET", 
        http_path = "/greengrass/definition/functions", paginator = list())
    input <- list_function_definitions_input(MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- list_function_definitions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the current CAs for a group
#'
#' Retrieves the current CAs for a group.
#'
#' @param GroupId The ID of the AWS Greengrass group.
#'
#' @examples
#'
#' @export
list_group_certificate_authorities <- function (GroupId) 
{
    op <- Operation(name = "ListGroupCertificateAuthorities", 
        http_method = "GET", http_path = "/greengrass/groups/{GroupId}/certificateauthorities", 
        paginator = list())
    input <- list_group_certificate_authorities_input(GroupId = GroupId)
    output <- list_group_certificate_authorities_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the versions of a group
#'
#' Lists the versions of a group.
#'
#' @param GroupId The ID of the AWS Greengrass group.
#' @param MaxResults The maximum number of results to be returned per request.
#' @param NextToken The token for the next set of results, or ''null'' if there are no additional results.
#'
#' @examples
#'
#' @export
list_group_versions <- function (GroupId, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "ListGroupVersions", http_method = "GET", 
        http_path = "/greengrass/groups/{GroupId}/versions", 
        paginator = list())
    input <- list_group_versions_input(GroupId = GroupId, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- list_group_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a list of groups
#'
#' Retrieves a list of groups.
#'
#' @param MaxResults The maximum number of results to be returned per request.
#' @param NextToken The token for the next set of results, or ''null'' if there are no additional results.
#'
#' @examples
#'
#' @export
list_groups <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListGroups", http_method = "GET", 
        http_path = "/greengrass/groups", paginator = list())
    input <- list_groups_input(MaxResults = MaxResults, NextToken = NextToken)
    output <- list_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the versions of a logger definition
#'
#' Lists the versions of a logger definition.
#'
#' @param LoggerDefinitionId The ID of the logger definition.
#' @param MaxResults The maximum number of results to be returned per request.
#' @param NextToken The token for the next set of results, or ''null'' if there are no additional results.
#'
#' @examples
#'
#' @export
list_logger_definition_versions <- function (LoggerDefinitionId, 
    MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListLoggerDefinitionVersions", http_method = "GET", 
        http_path = "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", 
        paginator = list())
    input <- list_logger_definition_versions_input(LoggerDefinitionId = LoggerDefinitionId, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- list_logger_definition_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a list of logger definitions
#'
#' Retrieves a list of logger definitions.
#'
#' @param MaxResults The maximum number of results to be returned per request.
#' @param NextToken The token for the next set of results, or ''null'' if there are no additional results.
#'
#' @examples
#'
#' @export
list_logger_definitions <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListLoggerDefinitions", http_method = "GET", 
        http_path = "/greengrass/definition/loggers", paginator = list())
    input <- list_logger_definitions_input(MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- list_logger_definitions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the versions of a resource definition
#'
#' Lists the versions of a resource definition.
#'
#' @param ResourceDefinitionId The ID of the resource definition.
#' @param MaxResults The maximum number of results to be returned per request.
#' @param NextToken The token for the next set of results, or ''null'' if there are no additional results.
#'
#' @examples
#'
#' @export
list_resource_definition_versions <- function (ResourceDefinitionId, 
    MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListResourceDefinitionVersions", 
        http_method = "GET", http_path = "/greengrass/definition/resources/{ResourceDefinitionId}/versions", 
        paginator = list())
    input <- list_resource_definition_versions_input(ResourceDefinitionId = ResourceDefinitionId, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- list_resource_definition_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a list of resource definitions
#'
#' Retrieves a list of resource definitions.
#'
#' @param MaxResults The maximum number of results to be returned per request.
#' @param NextToken The token for the next set of results, or ''null'' if there are no additional results.
#'
#' @examples
#'
#' @export
list_resource_definitions <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListResourceDefinitions", http_method = "GET", 
        http_path = "/greengrass/definition/resources", paginator = list())
    input <- list_resource_definitions_input(MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- list_resource_definitions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the versions of a subscription definition
#'
#' Lists the versions of a subscription definition.
#'
#' @param SubscriptionDefinitionId The ID of the subscription definition.
#' @param MaxResults The maximum number of results to be returned per request.
#' @param NextToken The token for the next set of results, or ''null'' if there are no additional results.
#'
#' @examples
#'
#' @export
list_subscription_definition_versions <- function (SubscriptionDefinitionId, 
    MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListSubscriptionDefinitionVersions", 
        http_method = "GET", http_path = "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", 
        paginator = list())
    input <- list_subscription_definition_versions_input(SubscriptionDefinitionId = SubscriptionDefinitionId, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- list_subscription_definition_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a list of subscription definitions
#'
#' Retrieves a list of subscription definitions.
#'
#' @param MaxResults The maximum number of results to be returned per request.
#' @param NextToken The token for the next set of results, or ''null'' if there are no additional results.
#'
#' @examples
#'
#' @export
list_subscription_definitions <- function (MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "ListSubscriptionDefinitions", http_method = "GET", 
        http_path = "/greengrass/definition/subscriptions", paginator = list())
    input <- list_subscription_definitions_input(MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- list_subscription_definitions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Resets a group's deployments
#'
#' Resets a group's deployments.
#'
#' @param GroupId The ID of the AWS Greengrass group.
#' @param AmznClientToken A client token used to correlate requests and responses.
#' @param Force If true, performs a best-effort only core reset.
#'
#' @examples
#'
#' @export
reset_deployments <- function (GroupId, AmznClientToken = NULL, 
    Force = NULL) 
{
    op <- Operation(name = "ResetDeployments", http_method = "POST", 
        http_path = "/greengrass/groups/{GroupId}/deployments/$reset", 
        paginator = list())
    input <- reset_deployments_input(GroupId = GroupId, AmznClientToken = AmznClientToken, 
        Force = Force)
    output <- reset_deployments_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the connectivity information for the core
#'
#' Updates the connectivity information for the core. Any devices that belong to the group which has this core will receive this information in order to find the location of the core and connect to it.
#'
#' @param ThingName The thing name.
#' @param ConnectivityInfo A list of connectivity info.
#'
#' @examples
#'
#' @export
update_connectivity_info <- function (ThingName, ConnectivityInfo = NULL) 
{
    op <- Operation(name = "UpdateConnectivityInfo", http_method = "PUT", 
        http_path = "/greengrass/things/{ThingName}/connectivityInfo", 
        paginator = list())
    input <- update_connectivity_info_input(ThingName = ThingName, 
        ConnectivityInfo = ConnectivityInfo)
    output <- update_connectivity_info_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a core definition
#'
#' Updates a core definition.
#'
#' @param CoreDefinitionId The ID of the core definition.
#' @param Name The name of the definition.
#'
#' @examples
#'
#' @export
update_core_definition <- function (CoreDefinitionId, Name = NULL) 
{
    op <- Operation(name = "UpdateCoreDefinition", http_method = "PUT", 
        http_path = "/greengrass/definition/cores/{CoreDefinitionId}", 
        paginator = list())
    input <- update_core_definition_input(CoreDefinitionId = CoreDefinitionId, 
        Name = Name)
    output <- update_core_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a device definition
#'
#' Updates a device definition.
#'
#' @param DeviceDefinitionId The ID of the device definition.
#' @param Name The name of the definition.
#'
#' @examples
#'
#' @export
update_device_definition <- function (DeviceDefinitionId, Name = NULL) 
{
    op <- Operation(name = "UpdateDeviceDefinition", http_method = "PUT", 
        http_path = "/greengrass/definition/devices/{DeviceDefinitionId}", 
        paginator = list())
    input <- update_device_definition_input(DeviceDefinitionId = DeviceDefinitionId, 
        Name = Name)
    output <- update_device_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a Lambda function definition
#'
#' Updates a Lambda function definition.
#'
#' @param FunctionDefinitionId The ID of the Lambda function definition.
#' @param Name The name of the definition.
#'
#' @examples
#'
#' @export
update_function_definition <- function (FunctionDefinitionId, 
    Name = NULL) 
{
    op <- Operation(name = "UpdateFunctionDefinition", http_method = "PUT", 
        http_path = "/greengrass/definition/functions/{FunctionDefinitionId}", 
        paginator = list())
    input <- update_function_definition_input(FunctionDefinitionId = FunctionDefinitionId, 
        Name = Name)
    output <- update_function_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a group
#'
#' Updates a group.
#'
#' @param GroupId The ID of the AWS Greengrass group.
#' @param Name The name of the definition.
#'
#' @examples
#'
#' @export
update_group <- function (GroupId, Name = NULL) 
{
    op <- Operation(name = "UpdateGroup", http_method = "PUT", 
        http_path = "/greengrass/groups/{GroupId}", paginator = list())
    input <- update_group_input(GroupId = GroupId, Name = Name)
    output <- update_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the Certificate expiry time for a group
#'
#' Updates the Certificate expiry time for a group.
#'
#' @param GroupId The ID of the AWS Greengrass group.
#' @param CertificateExpiryInMilliseconds The amount of time remaining before the certificate expires, in milliseconds.
#'
#' @examples
#'
#' @export
update_group_certificate_configuration <- function (GroupId, 
    CertificateExpiryInMilliseconds = NULL) 
{
    op <- Operation(name = "UpdateGroupCertificateConfiguration", 
        http_method = "PUT", http_path = "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", 
        paginator = list())
    input <- update_group_certificate_configuration_input(GroupId = GroupId, 
        CertificateExpiryInMilliseconds = CertificateExpiryInMilliseconds)
    output <- update_group_certificate_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a logger definition
#'
#' Updates a logger definition.
#'
#' @param LoggerDefinitionId The ID of the logger definition.
#' @param Name The name of the definition.
#'
#' @examples
#'
#' @export
update_logger_definition <- function (LoggerDefinitionId, Name = NULL) 
{
    op <- Operation(name = "UpdateLoggerDefinition", http_method = "PUT", 
        http_path = "/greengrass/definition/loggers/{LoggerDefinitionId}", 
        paginator = list())
    input <- update_logger_definition_input(LoggerDefinitionId = LoggerDefinitionId, 
        Name = Name)
    output <- update_logger_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a resource definition
#'
#' Updates a resource definition.
#'
#' @param ResourceDefinitionId The ID of the resource definition.
#' @param Name The name of the definition.
#'
#' @examples
#'
#' @export
update_resource_definition <- function (ResourceDefinitionId, 
    Name = NULL) 
{
    op <- Operation(name = "UpdateResourceDefinition", http_method = "PUT", 
        http_path = "/greengrass/definition/resources/{ResourceDefinitionId}", 
        paginator = list())
    input <- update_resource_definition_input(ResourceDefinitionId = ResourceDefinitionId, 
        Name = Name)
    output <- update_resource_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a subscription definition
#'
#' Updates a subscription definition.
#'
#' @param SubscriptionDefinitionId The ID of the subscription definition.
#' @param Name The name of the definition.
#'
#' @examples
#'
#' @export
update_subscription_definition <- function (SubscriptionDefinitionId, 
    Name = NULL) 
{
    op <- Operation(name = "UpdateSubscriptionDefinition", http_method = "PUT", 
        http_path = "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", 
        paginator = list())
    input <- update_subscription_definition_input(SubscriptionDefinitionId = SubscriptionDefinitionId, 
        Name = Name)
    output <- update_subscription_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
