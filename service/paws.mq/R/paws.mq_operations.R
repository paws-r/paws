#' Creates a broker
#'
#' Creates a broker. Note: This API is asynchronous.
#'
#' @param AutoMinorVersionUpgrade Required. Enables automatic upgrades to new minor versions for brokers, as Apache releases the versions. The automatic upgrades occur during the maintenance window of the broker or after a manual broker reboot.
#' @param BrokerName Required. The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
#' @param Configuration A list of information about the configuration.
#' @param CreatorRequestId The unique ID that the requester receives for the created broker. Amazon MQ passes your ID with the API action. Note: We recommend using a Universally Unique Identifier (UUID) for the creatorRequestId. You may omit the creatorRequestId if your application doesn't require idempotency.
#' @param DeploymentMode Required. The deployment mode of the broker.
#' @param EngineType Required. The type of broker engine. Note: Currently, Amazon MQ supports only ACTIVEMQ.
#' @param EngineVersion Required. The version of the broker engine. Note: Currently, Amazon MQ supports only 5.15.6 and 5.15.0.
#' @param HostInstanceType Required. The broker's instance type.
#' @param Logs Enables Amazon CloudWatch logging for brokers.
#' @param MaintenanceWindowStartTime The parameters that determine the WeeklyStartTime.
#' @param PubliclyAccessible Required. Enables connections from applications outside of the VPC that hosts the broker's subnets.
#' @param SecurityGroups The list of rules (1 minimum, 125 maximum) that authorize connections to brokers.
#' @param SubnetIds The list of groups (2 maximum) that define which subnets and IP ranges the broker can use from different Availability Zones. A SINGLE_INSTANCE deployment requires one subnet (for example, the default subnet). An ACTIVE_STANDBY_MULTI_AZ deployment requires two subnets.
#' @param Users Required. The list of ActiveMQ users (persons or applications) who can access queues and topics. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
#'
#' @examples
#'
#' @export
create_broker <- function (AutoMinorVersionUpgrade = NULL, BrokerName = NULL, 
    Configuration = NULL, CreatorRequestId = NULL, DeploymentMode = NULL, 
    EngineType = NULL, EngineVersion = NULL, HostInstanceType = NULL, 
    Logs = NULL, MaintenanceWindowStartTime = NULL, PubliclyAccessible = NULL, 
    SecurityGroups = NULL, SubnetIds = NULL, Users = NULL) 
{
    op <- Operation(name = "CreateBroker", http_method = "POST", 
        http_path = "/v1/brokers", paginator = list())
    input <- create_broker_input(AutoMinorVersionUpgrade = AutoMinorVersionUpgrade, 
        BrokerName = BrokerName, Configuration = Configuration, 
        CreatorRequestId = CreatorRequestId, DeploymentMode = DeploymentMode, 
        EngineType = EngineType, EngineVersion = EngineVersion, 
        HostInstanceType = HostInstanceType, Logs = Logs, MaintenanceWindowStartTime = MaintenanceWindowStartTime, 
        PubliclyAccessible = PubliclyAccessible, SecurityGroups = SecurityGroups, 
        SubnetIds = SubnetIds, Users = Users)
    output <- create_broker_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new configuration for the specified configuration name
#'
#' Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version).
#'
#' @param EngineType Required. The type of broker engine. Note: Currently, Amazon MQ supports only ACTIVEMQ.
#' @param EngineVersion Required. The version of the broker engine. Note: Currently, Amazon MQ supports only 5.15.6 and 5.15.0.
#' @param Name Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.
#'
#' @examples
#'
#' @export
create_configuration <- function (EngineType = NULL, EngineVersion = NULL, 
    Name = NULL) 
{
    op <- Operation(name = "CreateConfiguration", http_method = "POST", 
        http_path = "/v1/configurations", paginator = list())
    input <- create_configuration_input(EngineType = EngineType, 
        EngineVersion = EngineVersion, Name = Name)
    output <- create_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an ActiveMQ user
#'
#' Creates an ActiveMQ user.
#'
#' @param Username The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
#' @param BrokerId The unique ID that Amazon MQ generates for the broker.
#' @param ConsoleAccess Enables access to the the ActiveMQ Web Console for the ActiveMQ user.
#' @param Groups The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
#' @param Password Required. The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas.
#'
#' @examples
#'
#' @export
create_user <- function (Username, BrokerId, ConsoleAccess = NULL, 
    Groups = NULL, Password = NULL) 
{
    op <- Operation(name = "CreateUser", http_method = "POST", 
        http_path = "/v1/brokers/{broker-id}/users/{username}", 
        paginator = list())
    input <- create_user_input(Username = Username, BrokerId = BrokerId, 
        ConsoleAccess = ConsoleAccess, Groups = Groups, Password = Password)
    output <- create_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a broker
#'
#' Deletes a broker. Note: This API is asynchronous.
#'
#' @param BrokerId The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
#'
#' @examples
#'
#' @export
delete_broker <- function (BrokerId) 
{
    op <- Operation(name = "DeleteBroker", http_method = "DELETE", 
        http_path = "/v1/brokers/{broker-id}", paginator = list())
    input <- delete_broker_input(BrokerId = BrokerId)
    output <- delete_broker_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an ActiveMQ user
#'
#' Deletes an ActiveMQ user.
#'
#' @param Username The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
#' @param BrokerId The unique ID that Amazon MQ generates for the broker.
#'
#' @examples
#'
#' @export
delete_user <- function (Username, BrokerId) 
{
    op <- Operation(name = "DeleteUser", http_method = "DELETE", 
        http_path = "/v1/brokers/{broker-id}/users/{username}", 
        paginator = list())
    input <- delete_user_input(Username = Username, BrokerId = BrokerId)
    output <- delete_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about the specified broker
#'
#' Returns information about the specified broker.
#'
#' @param BrokerId The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
#'
#' @examples
#'
#' @export
describe_broker <- function (BrokerId) 
{
    op <- Operation(name = "DescribeBroker", http_method = "GET", 
        http_path = "/v1/brokers/{broker-id}", paginator = list())
    input <- describe_broker_input(BrokerId = BrokerId)
    output <- describe_broker_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about the specified configuration
#'
#' Returns information about the specified configuration.
#'
#' @param ConfigurationId The unique ID that Amazon MQ generates for the configuration.
#'
#' @examples
#'
#' @export
describe_configuration <- function (ConfigurationId) 
{
    op <- Operation(name = "DescribeConfiguration", http_method = "GET", 
        http_path = "/v1/configurations/{configuration-id}", 
        paginator = list())
    input <- describe_configuration_input(ConfigurationId = ConfigurationId)
    output <- describe_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the specified configuration revision for the specified configuration
#'
#' Returns the specified configuration revision for the specified configuration.
#'
#' @param ConfigurationRevision The revision of the configuration.
#' @param ConfigurationId The unique ID that Amazon MQ generates for the configuration.
#'
#' @examples
#'
#' @export
describe_configuration_revision <- function (ConfigurationRevision, 
    ConfigurationId) 
{
    op <- Operation(name = "DescribeConfigurationRevision", http_method = "GET", 
        http_path = "/v1/configurations/{configuration-id}/revisions/{configuration-revision}", 
        paginator = list())
    input <- describe_configuration_revision_input(ConfigurationRevision = ConfigurationRevision, 
        ConfigurationId = ConfigurationId)
    output <- describe_configuration_revision_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about an ActiveMQ user
#'
#' Returns information about an ActiveMQ user.
#'
#' @param Username The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
#' @param BrokerId The unique ID that Amazon MQ generates for the broker.
#'
#' @examples
#'
#' @export
describe_user <- function (Username, BrokerId) 
{
    op <- Operation(name = "DescribeUser", http_method = "GET", 
        http_path = "/v1/brokers/{broker-id}/users/{username}", 
        paginator = list())
    input <- describe_user_input(Username = Username, BrokerId = BrokerId)
    output <- describe_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of all brokers
#'
#' Returns a list of all brokers.
#'
#' @param MaxResults The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
#' @param NextToken The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
#'
#' @examples
#'
#' @export
list_brokers <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListBrokers", http_method = "GET", 
        http_path = "/v1/brokers", paginator = list())
    input <- list_brokers_input(MaxResults = MaxResults, NextToken = NextToken)
    output <- list_brokers_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of all revisions for the specified configuration
#'
#' Returns a list of all revisions for the specified configuration.
#'
#' @param ConfigurationId The unique ID that Amazon MQ generates for the configuration.
#' @param MaxResults The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
#' @param NextToken The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
#'
#' @examples
#'
#' @export
list_configuration_revisions <- function (ConfigurationId, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "ListConfigurationRevisions", http_method = "GET", 
        http_path = "/v1/configurations/{configuration-id}/revisions", 
        paginator = list())
    input <- list_configuration_revisions_input(ConfigurationId = ConfigurationId, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- list_configuration_revisions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of all configurations
#'
#' Returns a list of all configurations.
#'
#' @param MaxResults The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
#' @param NextToken The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
#'
#' @examples
#'
#' @export
list_configurations <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListConfigurations", http_method = "GET", 
        http_path = "/v1/configurations", paginator = list())
    input <- list_configurations_input(MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- list_configurations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of all ActiveMQ users
#'
#' Returns a list of all ActiveMQ users.
#'
#' @param BrokerId The unique ID that Amazon MQ generates for the broker.
#' @param MaxResults The maximum number of ActiveMQ users that can be returned per page (20 by default). This value must be an integer from 5 to 100.
#' @param NextToken The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
#'
#' @examples
#'
#' @export
list_users <- function (BrokerId, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListUsers", http_method = "GET", 
        http_path = "/v1/brokers/{broker-id}/users", paginator = list())
    input <- list_users_input(BrokerId = BrokerId, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- list_users_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Reboots a broker
#'
#' Reboots a broker. Note: This API is asynchronous.
#'
#' @param BrokerId The unique ID that Amazon MQ generates for the broker.
#'
#' @examples
#'
#' @export
reboot_broker <- function (BrokerId) 
{
    op <- Operation(name = "RebootBroker", http_method = "POST", 
        http_path = "/v1/brokers/{broker-id}/reboot", paginator = list())
    input <- reboot_broker_input(BrokerId = BrokerId)
    output <- reboot_broker_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds a pending configuration change to a broker
#'
#' Adds a pending configuration change to a broker.
#'
#' @param BrokerId The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
#' @param AutoMinorVersionUpgrade Enables automatic upgrades to new minor versions for brokers, as Apache releases the versions. The automatic upgrades occur during the maintenance window of the broker or after a manual broker reboot.
#' @param Configuration A list of information about the configuration.
#' @param EngineVersion The version of the broker engine. Note: Currently, Amazon MQ supports only 5.15.6 and 5.15.0.
#' @param Logs Enables Amazon CloudWatch logging for brokers.
#'
#' @examples
#'
#' @export
update_broker <- function (BrokerId, AutoMinorVersionUpgrade = NULL, 
    Configuration = NULL, EngineVersion = NULL, Logs = NULL) 
{
    op <- Operation(name = "UpdateBroker", http_method = "PUT", 
        http_path = "/v1/brokers/{broker-id}", paginator = list())
    input <- update_broker_input(BrokerId = BrokerId, AutoMinorVersionUpgrade = AutoMinorVersionUpgrade, 
        Configuration = Configuration, EngineVersion = EngineVersion, 
        Logs = Logs)
    output <- update_broker_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the specified configuration
#'
#' Updates the specified configuration.
#'
#' @param ConfigurationId The unique ID that Amazon MQ generates for the configuration.
#' @param Data Required. The base64-encoded XML configuration.
#' @param Description The description of the configuration.
#'
#' @examples
#'
#' @export
update_configuration <- function (ConfigurationId, Data = NULL, 
    Description = NULL) 
{
    op <- Operation(name = "UpdateConfiguration", http_method = "PUT", 
        http_path = "/v1/configurations/{configuration-id}", 
        paginator = list())
    input <- update_configuration_input(ConfigurationId = ConfigurationId, 
        Data = Data, Description = Description)
    output <- update_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the information for an ActiveMQ user
#'
#' Updates the information for an ActiveMQ user.
#'
#' @param Username Required. The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
#' @param BrokerId The unique ID that Amazon MQ generates for the broker.
#' @param ConsoleAccess Enables access to the the ActiveMQ Web Console for the ActiveMQ user.
#' @param Groups The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
#' @param Password The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas.
#'
#' @examples
#'
#' @export
update_user <- function (Username, BrokerId, ConsoleAccess = NULL, 
    Groups = NULL, Password = NULL) 
{
    op <- Operation(name = "UpdateUser", http_method = "PUT", 
        http_path = "/v1/brokers/{broker-id}/users/{username}", 
        paginator = list())
    input <- update_user_input(Username = Username, BrokerId = BrokerId, 
        ConsoleAccess = ConsoleAccess, Groups = Groups, Password = Password)
    output <- update_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
