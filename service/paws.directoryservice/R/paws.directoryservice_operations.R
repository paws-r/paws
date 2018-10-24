#' Accepts a directory sharing request that was sent from the directory owner account
#'
#' Accepts a directory sharing request that was sent from the directory owner account.
#'
#' @param SharedDirectoryId Identifier of the shared directory in the directory consumer account. This identifier is different for each directory owner account.
#'
#' @examples
#'
#' @export
accept_shared_directory <- function (SharedDirectoryId) 
{
    op <- Operation(name = "AcceptSharedDirectory", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- accept_shared_directory_input(SharedDirectoryId = SharedDirectoryId)
    output <- accept_shared_directory_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' If the DNS server for your on-premises domain uses a publicly addressable IP address, you must add a CIDR address block to correctly route traffic to and from your Microsoft AD on Amazon Web Services
#'
#' If the DNS server for your on-premises domain uses a publicly addressable IP address, you must add a CIDR address block to correctly route traffic to and from your Microsoft AD on Amazon Web Services. *AddIpRoutes* adds this address block. You can also use *AddIpRoutes* to facilitate routing traffic that uses public IP ranges from your Microsoft AD on AWS to a peer VPC.
#' 
#' Before you call *AddIpRoutes*, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the *AddIpRoutes* operation, see [AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
#'
#' @param DirectoryId Identifier (ID) of the directory to which to add the address block.
#' @param IpRoutes IP address blocks, using CIDR format, of the traffic to route. This is often the IP address block of the DNS server used for your on-premises domain.
#' @param UpdateSecurityGroupForDirectoryControllers If set to true, updates the inbound and outbound rules of the security group that has the description: \"AWS created security group for *directory ID* directory controllers.\" Following are the new rules:
#' 
#' Inbound:
#' 
#' -   Type: Custom UDP Rule, Protocol: UDP, Range: 88, Source: 0.0.0.0/0
#' 
#' -   Type: Custom UDP Rule, Protocol: UDP, Range: 123, Source: 0.0.0.0/0
#' 
#' -   Type: Custom UDP Rule, Protocol: UDP, Range: 138, Source: 0.0.0.0/0
#' 
#' -   Type: Custom UDP Rule, Protocol: UDP, Range: 389, Source: 0.0.0.0/0
#' 
#' -   Type: Custom UDP Rule, Protocol: UDP, Range: 464, Source: 0.0.0.0/0
#' 
#' -   Type: Custom UDP Rule, Protocol: UDP, Range: 445, Source: 0.0.0.0/0
#' 
#' -   Type: Custom TCP Rule, Protocol: TCP, Range: 88, Source: 0.0.0.0/0
#' 
#' -   Type: Custom TCP Rule, Protocol: TCP, Range: 135, Source: 0.0.0.0/0
#' 
#' -   Type: Custom TCP Rule, Protocol: TCP, Range: 445, Source: 0.0.0.0/0
#' 
#' -   Type: Custom TCP Rule, Protocol: TCP, Range: 464, Source: 0.0.0.0/0
#' 
#' -   Type: Custom TCP Rule, Protocol: TCP, Range: 636, Source: 0.0.0.0/0
#' 
#' -   Type: Custom TCP Rule, Protocol: TCP, Range: 1024-65535, Source: 0.0.0.0/0
#' 
#' -   Type: Custom TCP Rule, Protocol: TCP, Range: 3268-33269, Source: 0.0.0.0/0
#' 
#' -   Type: DNS (UDP), Protocol: UDP, Range: 53, Source: 0.0.0.0/0
#' 
#' -   Type: DNS (TCP), Protocol: TCP, Range: 53, Source: 0.0.0.0/0
#' 
#' -   Type: LDAP, Protocol: TCP, Range: 389, Source: 0.0.0.0/0
#' 
#' -   Type: All ICMP, Protocol: All, Range: N/A, Source: 0.0.0.0/0
#' 
#' Outbound:
#' 
#' -   Type: All traffic, Protocol: All, Range: All, Destination: 0.0.0.0/0
#' 
#' These security rules impact an internal network interface that is not exposed publicly.
#'
#' @examples
#'
#' @export
add_ip_routes <- function (DirectoryId, IpRoutes, UpdateSecurityGroupForDirectoryControllers = NULL) 
{
    op <- Operation(name = "AddIpRoutes", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- add_ip_routes_input(DirectoryId = DirectoryId, IpRoutes = IpRoutes, 
        UpdateSecurityGroupForDirectoryControllers = UpdateSecurityGroupForDirectoryControllers)
    output <- add_ip_routes_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds or overwrites one or more tags for the specified directory
#'
#' Adds or overwrites one or more tags for the specified directory. Each directory can have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be unique to each resource.
#'
#' @param ResourceId Identifier (ID) for the directory to which to add the tag.
#' @param Tags The tags to be assigned to the directory.
#'
#' @examples
#'
#' @export
add_tags_to_resource <- function (ResourceId, Tags) 
{
    op <- Operation(name = "AddTagsToResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- add_tags_to_resource_input(ResourceId = ResourceId, 
        Tags = Tags)
    output <- add_tags_to_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Cancels an in-progress schema extension to a Microsoft AD directory
#'
#' Cancels an in-progress schema extension to a Microsoft AD directory. Once a schema extension has started replicating to all domain controllers, the task can no longer be canceled. A schema extension can be canceled during any of the following states; `Initializing`, `CreatingSnapshot`, and `UpdatingSchema`.
#'
#' @param DirectoryId The identifier of the directory whose schema extension will be canceled.
#' @param SchemaExtensionId The identifier of the schema extension that will be canceled.
#'
#' @examples
#'
#' @export
cancel_schema_extension <- function (DirectoryId, SchemaExtensionId) 
{
    op <- Operation(name = "CancelSchemaExtension", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- cancel_schema_extension_input(DirectoryId = DirectoryId, 
        SchemaExtensionId = SchemaExtensionId)
    output <- cancel_schema_extension_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an AD Connector to connect to an on-premises directory
#'
#' Creates an AD Connector to connect to an on-premises directory.
#' 
#' Before you call `ConnectDirectory`, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the `ConnectDirectory` operation, see [AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
#'
#' @param Name The fully qualified name of the on-premises directory, such as `corp.example.com`.
#' @param Password The password for the on-premises user account.
#' @param Size The size of the directory.
#' @param ConnectSettings A DirectoryConnectSettings object that contains additional information for the operation.
#' @param ShortName The NetBIOS name of the on-premises directory, such as `CORP`.
#' @param Description A textual description for the directory.
#'
#' @examples
#'
#' @export
connect_directory <- function (Name, Password, Size, ConnectSettings, 
    ShortName = NULL, Description = NULL) 
{
    op <- Operation(name = "ConnectDirectory", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- connect_directory_input(Name = Name, Password = Password, 
        Size = Size, ConnectSettings = ConnectSettings, ShortName = ShortName, 
        Description = Description)
    output <- connect_directory_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an alias for a directory and assigns the alias to the directory
#'
#' Creates an alias for a directory and assigns the alias to the directory. The alias is used to construct the access URL for the directory, such as `http://<alias>.awsapps.com`.
#' 
#' After an alias has been created, it cannot be deleted or reused, so this operation should only be used when absolutely necessary.
#'
#' @param DirectoryId The identifier of the directory for which to create the alias.
#' @param Alias The requested alias.
#' 
#' The alias must be unique amongst all aliases in AWS. This operation throws an `EntityAlreadyExistsException` error if the alias already exists.
#'
#' @examples
#'
#' @export
create_alias <- function (DirectoryId, Alias) 
{
    op <- Operation(name = "CreateAlias", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_alias_input(DirectoryId = DirectoryId, Alias = Alias)
    output <- create_alias_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a computer account in the specified directory, and joins the computer to the directory
#'
#' Creates a computer account in the specified directory, and joins the computer to the directory.
#'
#' @param DirectoryId The identifier of the directory in which to create the computer account.
#' @param ComputerName The name of the computer account.
#' @param Password A one-time password that is used to join the computer to the directory. You should generate a random, strong password to use for this parameter.
#' @param OrganizationalUnitDistinguishedName The fully-qualified distinguished name of the organizational unit to place the computer account in.
#' @param ComputerAttributes An array of Attribute objects that contain any LDAP attributes to apply to the computer account.
#'
#' @examples
#'
#' @export
create_computer <- function (DirectoryId, ComputerName, Password, 
    OrganizationalUnitDistinguishedName = NULL, ComputerAttributes = NULL) 
{
    op <- Operation(name = "CreateComputer", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_computer_input(DirectoryId = DirectoryId, 
        ComputerName = ComputerName, Password = Password, OrganizationalUnitDistinguishedName = OrganizationalUnitDistinguishedName, 
        ComputerAttributes = ComputerAttributes)
    output <- create_computer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a conditional forwarder associated with your AWS directory
#'
#' Creates a conditional forwarder associated with your AWS directory. Conditional forwarders are required in order to set up a trust relationship with another domain. The conditional forwarder points to the trusted domain.
#'
#' @param DirectoryId The directory ID of the AWS directory for which you are creating the conditional forwarder.
#' @param RemoteDomainName The fully qualified domain name (FQDN) of the remote domain with which you will set up a trust relationship.
#' @param DnsIpAddrs The IP addresses of the remote DNS server associated with RemoteDomainName.
#'
#' @examples
#'
#' @export
create_conditional_forwarder <- function (DirectoryId, RemoteDomainName, 
    DnsIpAddrs) 
{
    op <- Operation(name = "CreateConditionalForwarder", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_conditional_forwarder_input(DirectoryId = DirectoryId, 
        RemoteDomainName = RemoteDomainName, DnsIpAddrs = DnsIpAddrs)
    output <- create_conditional_forwarder_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a Simple AD directory
#'
#' Creates a Simple AD directory.
#' 
#' Before you call `CreateDirectory`, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the `CreateDirectory` operation, see [AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
#'
#' @param Name The fully qualified name for the directory, such as `corp.example.com`.
#' @param Password The password for the directory administrator. The directory creation process creates a directory administrator account with the user name `Administrator` and this password.
#' @param Size The size of the directory.
#' @param ShortName The short name of the directory, such as `CORP`.
#' @param Description A textual description for the directory.
#' @param VpcSettings A DirectoryVpcSettings object that contains additional information for the operation.
#'
#' @examples
#'
#' @export
create_directory <- function (Name, Password, Size, ShortName = NULL, 
    Description = NULL, VpcSettings = NULL) 
{
    op <- Operation(name = "CreateDirectory", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_directory_input(Name = Name, Password = Password, 
        Size = Size, ShortName = ShortName, Description = Description, 
        VpcSettings = VpcSettings)
    output <- create_directory_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a subscription to forward real time Directory Service domain controller security logs to the specified CloudWatch log group in your AWS account
#'
#' Creates a subscription to forward real time Directory Service domain controller security logs to the specified CloudWatch log group in your AWS account.
#'
#' @param DirectoryId Identifier (ID) of the directory to which you want to subscribe and receive real-time logs to your specified CloudWatch log group.
#' @param LogGroupName The name of the CloudWatch log group where the real-time domain controller logs are forwarded.
#'
#' @examples
#'
#' @export
create_log_subscription <- function (DirectoryId, LogGroupName) 
{
    op <- Operation(name = "CreateLogSubscription", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_log_subscription_input(DirectoryId = DirectoryId, 
        LogGroupName = LogGroupName)
    output <- create_log_subscription_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an AWS Managed Microsoft AD directory
#'
#' Creates an AWS Managed Microsoft AD directory.
#' 
#' Before you call *CreateMicrosoftAD*, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the *CreateMicrosoftAD* operation, see [AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
#'
#' @param Name The fully qualified domain name for the directory, such as `corp.example.com`. This name will resolve inside your VPC only. It does not need to be publicly resolvable.
#' @param Password The password for the default administrative user named `Admin`.
#' @param VpcSettings Contains VPC information for the CreateDirectory or CreateMicrosoftAD operation.
#' @param ShortName The NetBIOS name for your domain. A short identifier for your domain, such as `CORP`. If you don\'t specify a NetBIOS name, it will default to the first part of your directory DNS. For example, `CORP` for the directory DNS `corp.example.com`.
#' @param Description A textual description for the directory. This label will appear on the AWS console `Directory Details` page after the directory is created.
#' @param Edition AWS Managed Microsoft AD is available in two editions: Standard and Enterprise. Enterprise is the default.
#'
#' @examples
#'
#' @export
create_microsoft_ad <- function (Name, Password, VpcSettings, 
    ShortName = NULL, Description = NULL, Edition = NULL) 
{
    op <- Operation(name = "CreateMicrosoftAD", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_microsoft_ad_input(Name = Name, Password = Password, 
        VpcSettings = VpcSettings, ShortName = ShortName, Description = Description, 
        Edition = Edition)
    output <- create_microsoft_ad_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a snapshot of a Simple AD or Microsoft AD directory in the AWS cloud
#'
#' Creates a snapshot of a Simple AD or Microsoft AD directory in the AWS cloud.
#' 
#' You cannot take snapshots of AD Connector directories.
#'
#' @param DirectoryId The identifier of the directory of which to take a snapshot.
#' @param Name The descriptive name to apply to the snapshot.
#'
#' @examples
#'
#' @export
create_snapshot <- function (DirectoryId, Name = NULL) 
{
    op <- Operation(name = "CreateSnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_snapshot_input(DirectoryId = DirectoryId, 
        Name = Name)
    output <- create_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' AWS Directory Service for Microsoft Active Directory allows you to configure trust relationships
#'
#' AWS Directory Service for Microsoft Active Directory allows you to configure trust relationships. For example, you can establish a trust between your AWS Managed Microsoft AD directory, and your existing on-premises Microsoft Active Directory. This would allow you to provide users and groups access to resources in either domain, with a single set of credentials.
#' 
#' This action initiates the creation of the AWS side of a trust relationship between an AWS Managed Microsoft AD directory and an external domain. You can create either a forest trust or an external trust.
#'
#' @param DirectoryId The Directory ID of the AWS Managed Microsoft AD directory for which to establish the trust relationship.
#' @param RemoteDomainName The Fully Qualified Domain Name (FQDN) of the external domain for which to create the trust relationship.
#' @param TrustPassword The trust password. The must be the same password that was used when creating the trust relationship on the external domain.
#' @param TrustDirection The direction of the trust relationship.
#' @param TrustType The trust relationship type. `Forest` is the default.
#' @param ConditionalForwarderIpAddrs The IP addresses of the remote DNS server associated with RemoteDomainName.
#' @param SelectiveAuth Optional parameter to enable selective authentication for the trust.
#'
#' @examples
#'
#' @export
create_trust <- function (DirectoryId, RemoteDomainName, TrustPassword, 
    TrustDirection, TrustType = NULL, ConditionalForwarderIpAddrs = NULL, 
    SelectiveAuth = NULL) 
{
    op <- Operation(name = "CreateTrust", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_trust_input(DirectoryId = DirectoryId, RemoteDomainName = RemoteDomainName, 
        TrustPassword = TrustPassword, TrustDirection = TrustDirection, 
        TrustType = TrustType, ConditionalForwarderIpAddrs = ConditionalForwarderIpAddrs, 
        SelectiveAuth = SelectiveAuth)
    output <- create_trust_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a conditional forwarder that has been set up for your AWS directory
#'
#' Deletes a conditional forwarder that has been set up for your AWS directory.
#'
#' @param DirectoryId The directory ID for which you are deleting the conditional forwarder.
#' @param RemoteDomainName The fully qualified domain name (FQDN) of the remote domain with which you are deleting the conditional forwarder.
#'
#' @examples
#'
#' @export
delete_conditional_forwarder <- function (DirectoryId, RemoteDomainName) 
{
    op <- Operation(name = "DeleteConditionalForwarder", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_conditional_forwarder_input(DirectoryId = DirectoryId, 
        RemoteDomainName = RemoteDomainName)
    output <- delete_conditional_forwarder_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an AWS Directory Service directory
#'
#' Deletes an AWS Directory Service directory.
#' 
#' Before you call `DeleteDirectory`, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the `DeleteDirectory` operation, see [AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
#'
#' @param DirectoryId The identifier of the directory to delete.
#'
#' @examples
#'
#' @export
delete_directory <- function (DirectoryId) 
{
    op <- Operation(name = "DeleteDirectory", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_directory_input(DirectoryId = DirectoryId)
    output <- delete_directory_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified log subscription
#'
#' Deletes the specified log subscription.
#'
#' @param DirectoryId Identifier (ID) of the directory whose log subscription you want to delete.
#'
#' @examples
#'
#' @export
delete_log_subscription <- function (DirectoryId) 
{
    op <- Operation(name = "DeleteLogSubscription", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_log_subscription_input(DirectoryId = DirectoryId)
    output <- delete_log_subscription_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a directory snapshot
#'
#' Deletes a directory snapshot.
#'
#' @param SnapshotId The identifier of the directory snapshot to be deleted.
#'
#' @examples
#'
#' @export
delete_snapshot <- function (SnapshotId) 
{
    op <- Operation(name = "DeleteSnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_snapshot_input(SnapshotId = SnapshotId)
    output <- delete_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an existing trust relationship between your AWS Managed Microsoft AD directory and an external domain
#'
#' Deletes an existing trust relationship between your AWS Managed Microsoft AD directory and an external domain.
#'
#' @param TrustId The Trust ID of the trust relationship to be deleted.
#' @param DeleteAssociatedConditionalForwarder Delete a conditional forwarder as part of a DeleteTrustRequest.
#'
#' @examples
#'
#' @export
delete_trust <- function (TrustId, DeleteAssociatedConditionalForwarder = NULL) 
{
    op <- Operation(name = "DeleteTrust", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_trust_input(TrustId = TrustId, DeleteAssociatedConditionalForwarder = DeleteAssociatedConditionalForwarder)
    output <- delete_trust_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes the specified directory as a publisher to the specified SNS topic
#'
#' Removes the specified directory as a publisher to the specified SNS topic.
#'
#' @param DirectoryId The Directory ID to remove as a publisher. This directory will no longer send messages to the specified SNS topic.
#' @param TopicName The name of the SNS topic from which to remove the directory as a publisher.
#'
#' @examples
#'
#' @export
deregister_event_topic <- function (DirectoryId, TopicName) 
{
    op <- Operation(name = "DeregisterEventTopic", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- deregister_event_topic_input(DirectoryId = DirectoryId, 
        TopicName = TopicName)
    output <- deregister_event_topic_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Obtains information about the conditional forwarders for this account
#'
#' Obtains information about the conditional forwarders for this account.
#' 
#' If no input parameters are provided for RemoteDomainNames, this request describes all conditional forwarders for the specified directory ID.
#'
#' @param DirectoryId The directory ID for which to get the list of associated conditional forwarders.
#' @param RemoteDomainNames The fully qualified domain names (FQDN) of the remote domains for which to get the list of associated conditional forwarders. If this member is null, all conditional forwarders are returned.
#'
#' @examples
#'
#' @export
describe_conditional_forwarders <- function (DirectoryId, RemoteDomainNames = NULL) 
{
    op <- Operation(name = "DescribeConditionalForwarders", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_conditional_forwarders_input(DirectoryId = DirectoryId, 
        RemoteDomainNames = RemoteDomainNames)
    output <- describe_conditional_forwarders_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Obtains information about the directories that belong to this account
#'
#' Obtains information about the directories that belong to this account.
#' 
#' You can retrieve information about specific directories by passing the directory identifiers in the `DirectoryIds` parameter. Otherwise, all directories that belong to the current account are returned.
#' 
#' This operation supports pagination with the use of the `NextToken` request and response parameters. If more results are available, the `DescribeDirectoriesResult.NextToken` member contains a token that you pass in the next call to DescribeDirectories to retrieve the next set of items.
#' 
#' You can also specify a maximum number of return results with the `Limit` parameter.
#'
#' @param DirectoryIds A list of identifiers of the directories for which to obtain the information. If this member is null, all directories that belong to the current account are returned.
#' 
#' An empty list results in an `InvalidParameterException` being thrown.
#' @param NextToken The `DescribeDirectoriesResult.NextToken` value from a previous call to DescribeDirectories. Pass null if this is the first call.
#' @param Limit The maximum number of items to return. If this value is zero, the maximum number of items is specified by the limitations of the operation.
#'
#' @examples
#'
#' @export
describe_directories <- function (DirectoryIds = NULL, NextToken = NULL, 
    Limit = NULL) 
{
    op <- Operation(name = "DescribeDirectories", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_directories_input(DirectoryIds = DirectoryIds, 
        NextToken = NextToken, Limit = Limit)
    output <- describe_directories_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides information about any domain controllers in your directory
#'
#' Provides information about any domain controllers in your directory.
#'
#' @param DirectoryId Identifier of the directory for which to retrieve the domain controller information.
#' @param DomainControllerIds A list of identifiers for the domain controllers whose information will be provided.
#' @param NextToken The *DescribeDomainControllers.NextToken* value from a previous call to DescribeDomainControllers. Pass null if this is the first call.
#' @param Limit The maximum number of items to return.
#'
#' @examples
#'
#' @export
describe_domain_controllers <- function (DirectoryId, DomainControllerIds = NULL, 
    NextToken = NULL, Limit = NULL) 
{
    op <- Operation(name = "DescribeDomainControllers", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_domain_controllers_input(DirectoryId = DirectoryId, 
        DomainControllerIds = DomainControllerIds, NextToken = NextToken, 
        Limit = Limit)
    output <- describe_domain_controllers_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Obtains information about which SNS topics receive status messages from the specified directory
#'
#' Obtains information about which SNS topics receive status messages from the specified directory.
#' 
#' If no input parameters are provided, such as DirectoryId or TopicName, this request describes all of the associations in the account.
#'
#' @param DirectoryId The Directory ID for which to get the list of associated SNS topics. If this member is null, associations for all Directory IDs are returned.
#' @param TopicNames A list of SNS topic names for which to obtain the information. If this member is null, all associations for the specified Directory ID are returned.
#' 
#' An empty list results in an `InvalidParameterException` being thrown.
#'
#' @examples
#'
#' @export
describe_event_topics <- function (DirectoryId = NULL, TopicNames = NULL) 
{
    op <- Operation(name = "DescribeEventTopics", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_event_topics_input(DirectoryId = DirectoryId, 
        TopicNames = TopicNames)
    output <- describe_event_topics_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the shared directories in your account
#'
#' Returns the shared directories in your account.
#'
#' @param OwnerDirectoryId Returns the identifier of the directory in the directory owner account.
#' @param SharedDirectoryIds A list of identifiers of all shared directories in your account.
#' @param NextToken The `DescribeSharedDirectoriesResult.NextToken` value from a previous call to DescribeSharedDirectories. Pass null if this is the first call.
#' @param Limit The number of shared directories to return in the response object.
#'
#' @examples
#'
#' @export
describe_shared_directories <- function (OwnerDirectoryId, SharedDirectoryIds = NULL, 
    NextToken = NULL, Limit = NULL) 
{
    op <- Operation(name = "DescribeSharedDirectories", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_shared_directories_input(OwnerDirectoryId = OwnerDirectoryId, 
        SharedDirectoryIds = SharedDirectoryIds, NextToken = NextToken, 
        Limit = Limit)
    output <- describe_shared_directories_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Obtains information about the directory snapshots that belong to this account
#'
#' Obtains information about the directory snapshots that belong to this account.
#' 
#' This operation supports pagination with the use of the *NextToken* request and response parameters. If more results are available, the *DescribeSnapshots.NextToken* member contains a token that you pass in the next call to DescribeSnapshots to retrieve the next set of items.
#' 
#' You can also specify a maximum number of return results with the *Limit* parameter.
#'
#' @param DirectoryId The identifier of the directory for which to retrieve snapshot information.
#' @param SnapshotIds A list of identifiers of the snapshots to obtain the information for. If this member is null or empty, all snapshots are returned using the *Limit* and *NextToken* members.
#' @param NextToken The *DescribeSnapshotsResult.NextToken* value from a previous call to DescribeSnapshots. Pass null if this is the first call.
#' @param Limit The maximum number of objects to return.
#'
#' @examples
#'
#' @export
describe_snapshots <- function (DirectoryId = NULL, SnapshotIds = NULL, 
    NextToken = NULL, Limit = NULL) 
{
    op <- Operation(name = "DescribeSnapshots", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_snapshots_input(DirectoryId = DirectoryId, 
        SnapshotIds = SnapshotIds, NextToken = NextToken, Limit = Limit)
    output <- describe_snapshots_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Obtains information about the trust relationships for this account
#'
#' Obtains information about the trust relationships for this account.
#' 
#' If no input parameters are provided, such as DirectoryId or TrustIds, this request describes all the trust relationships belonging to the account.
#'
#' @param DirectoryId The Directory ID of the AWS directory that is a part of the requested trust relationship.
#' @param TrustIds A list of identifiers of the trust relationships for which to obtain the information. If this member is null, all trust relationships that belong to the current account are returned.
#' 
#' An empty list results in an `InvalidParameterException` being thrown.
#' @param NextToken The *DescribeTrustsResult.NextToken* value from a previous call to DescribeTrusts. Pass null if this is the first call.
#' @param Limit The maximum number of objects to return.
#'
#' @examples
#'
#' @export
describe_trusts <- function (DirectoryId = NULL, TrustIds = NULL, 
    NextToken = NULL, Limit = NULL) 
{
    op <- Operation(name = "DescribeTrusts", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_trusts_input(DirectoryId = DirectoryId, 
        TrustIds = TrustIds, NextToken = NextToken, Limit = Limit)
    output <- describe_trusts_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory
#'
#' Disables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory.
#'
#' @param DirectoryId The identifier of the directory for which to disable MFA.
#'
#' @examples
#'
#' @export
disable_radius <- function (DirectoryId) 
{
    op <- Operation(name = "DisableRadius", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disable_radius_input(DirectoryId = DirectoryId)
    output <- disable_radius_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disables single-sign on for a directory
#'
#' Disables single-sign on for a directory.
#'
#' @param DirectoryId The identifier of the directory for which to disable single-sign on.
#' @param UserName The username of an alternate account to use to disable single-sign on. This is only used for AD Connector directories. This account must have privileges to remove a service principal name.
#' 
#' If the AD Connector service account does not have privileges to remove a service principal name, you can specify an alternate account with the *UserName* and *Password* parameters. These credentials are only used to disable single sign-on and are not stored by the service. The AD Connector service account is not changed.
#' @param Password The password of an alternate account to use to disable single-sign on. This is only used for AD Connector directories. For more information, see the *UserName* parameter.
#'
#' @examples
#'
#' @export
disable_sso <- function (DirectoryId, UserName = NULL, Password = NULL) 
{
    op <- Operation(name = "DisableSso", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disable_sso_input(DirectoryId = DirectoryId, UserName = UserName, 
        Password = Password)
    output <- disable_sso_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Enables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory
#'
#' Enables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory.
#'
#' @param DirectoryId The identifier of the directory for which to enable MFA.
#' @param RadiusSettings A RadiusSettings object that contains information about the RADIUS server.
#'
#' @examples
#'
#' @export
enable_radius <- function (DirectoryId, RadiusSettings) 
{
    op <- Operation(name = "EnableRadius", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- enable_radius_input(DirectoryId = DirectoryId, RadiusSettings = RadiusSettings)
    output <- enable_radius_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Enables single sign-on for a directory
#'
#' Enables single sign-on for a directory.
#'
#' @param DirectoryId The identifier of the directory for which to enable single-sign on.
#' @param UserName The username of an alternate account to use to enable single-sign on. This is only used for AD Connector directories. This account must have privileges to add a service principal name.
#' 
#' If the AD Connector service account does not have privileges to add a service principal name, you can specify an alternate account with the *UserName* and *Password* parameters. These credentials are only used to enable single sign-on and are not stored by the service. The AD Connector service account is not changed.
#' @param Password The password of an alternate account to use to enable single-sign on. This is only used for AD Connector directories. For more information, see the *UserName* parameter.
#'
#' @examples
#'
#' @export
enable_sso <- function (DirectoryId, UserName = NULL, Password = NULL) 
{
    op <- Operation(name = "EnableSso", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- enable_sso_input(DirectoryId = DirectoryId, UserName = UserName, 
        Password = Password)
    output <- enable_sso_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Obtains directory limit information for the current region
#'
#' Obtains directory limit information for the current region.
#'
#' @examples
#'
#' @export
get_directory_limits <- function () 
{
    op <- Operation(name = "GetDirectoryLimits", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_directory_limits_input()
    output <- get_directory_limits_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Obtains the manual snapshot limits for a directory
#'
#' Obtains the manual snapshot limits for a directory.
#'
#' @param DirectoryId Contains the identifier of the directory to obtain the limits for.
#'
#' @examples
#'
#' @export
get_snapshot_limits <- function (DirectoryId) 
{
    op <- Operation(name = "GetSnapshotLimits", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_snapshot_limits_input(DirectoryId = DirectoryId)
    output <- get_snapshot_limits_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the address blocks that you have added to a directory
#'
#' Lists the address blocks that you have added to a directory.
#'
#' @param DirectoryId Identifier (ID) of the directory for which you want to retrieve the IP addresses.
#' @param NextToken The *ListIpRoutes.NextToken* value from a previous call to ListIpRoutes. Pass null if this is the first call.
#' @param Limit Maximum number of items to return. If this value is zero, the maximum number of items is specified by the limitations of the operation.
#'
#' @examples
#'
#' @export
list_ip_routes <- function (DirectoryId, NextToken = NULL, Limit = NULL) 
{
    op <- Operation(name = "ListIpRoutes", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_ip_routes_input(DirectoryId = DirectoryId, 
        NextToken = NextToken, Limit = Limit)
    output <- list_ip_routes_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the active log subscriptions for the AWS account
#'
#' Lists the active log subscriptions for the AWS account.
#'
#' @param DirectoryId If a *DirectoryID* is provided, lists only the log subscription associated with that directory. If no *DirectoryId* is provided, lists all log subscriptions associated with your AWS account. If there are no log subscriptions for the AWS account or the directory, an empty list will be returned.
#' @param NextToken The token for the next set of items to return.
#' @param Limit The maximum number of items returned.
#'
#' @examples
#'
#' @export
list_log_subscriptions <- function (DirectoryId = NULL, NextToken = NULL, 
    Limit = NULL) 
{
    op <- Operation(name = "ListLogSubscriptions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_log_subscriptions_input(DirectoryId = DirectoryId, 
        NextToken = NextToken, Limit = Limit)
    output <- list_log_subscriptions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all schema extensions applied to a Microsoft AD Directory
#'
#' Lists all schema extensions applied to a Microsoft AD Directory.
#'
#' @param DirectoryId The identifier of the directory from which to retrieve the schema extension information.
#' @param NextToken The `ListSchemaExtensions.NextToken` value from a previous call to `ListSchemaExtensions`. Pass null if this is the first call.
#' @param Limit The maximum number of items to return.
#'
#' @examples
#'
#' @export
list_schema_extensions <- function (DirectoryId, NextToken = NULL, 
    Limit = NULL) 
{
    op <- Operation(name = "ListSchemaExtensions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_schema_extensions_input(DirectoryId = DirectoryId, 
        NextToken = NextToken, Limit = Limit)
    output <- list_schema_extensions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all tags on a directory
#'
#' Lists all tags on a directory.
#'
#' @param ResourceId Identifier (ID) of the directory for which you want to retrieve tags.
#' @param NextToken Reserved for future use.
#' @param Limit Reserved for future use.
#'
#' @examples
#'
#' @export
list_tags_for_resource <- function (ResourceId, NextToken = NULL, 
    Limit = NULL) 
{
    op <- Operation(name = "ListTagsForResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_tags_for_resource_input(ResourceId = ResourceId, 
        NextToken = NextToken, Limit = Limit)
    output <- list_tags_for_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates a directory with an SNS topic
#'
#' Associates a directory with an SNS topic. This establishes the directory as a publisher to the specified SNS topic. You can then receive email or text (SMS) messages when the status of your directory changes. You get notified if your directory goes from an Active status to an Impaired or Inoperable status. You also receive a notification when the directory returns to an Active status.
#'
#' @param DirectoryId The Directory ID that will publish status messages to the SNS topic.
#' @param TopicName The SNS topic name to which the directory will publish status messages. This SNS topic must be in the same region as the specified Directory ID.
#'
#' @examples
#'
#' @export
register_event_topic <- function (DirectoryId, TopicName) 
{
    op <- Operation(name = "RegisterEventTopic", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- register_event_topic_input(DirectoryId = DirectoryId, 
        TopicName = TopicName)
    output <- register_event_topic_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Rejects a directory sharing request that was sent from the directory owner account
#'
#' Rejects a directory sharing request that was sent from the directory owner account.
#'
#' @param SharedDirectoryId Identifier of the shared directory in the directory consumer account. This identifier is different for each directory owner account.
#'
#' @examples
#'
#' @export
reject_shared_directory <- function (SharedDirectoryId) 
{
    op <- Operation(name = "RejectSharedDirectory", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reject_shared_directory_input(SharedDirectoryId = SharedDirectoryId)
    output <- reject_shared_directory_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes IP address blocks from a directory
#'
#' Removes IP address blocks from a directory.
#'
#' @param DirectoryId Identifier (ID) of the directory from which you want to remove the IP addresses.
#' @param CidrIps IP address blocks that you want to remove.
#'
#' @examples
#'
#' @export
remove_ip_routes <- function (DirectoryId, CidrIps) 
{
    op <- Operation(name = "RemoveIpRoutes", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- remove_ip_routes_input(DirectoryId = DirectoryId, 
        CidrIps = CidrIps)
    output <- remove_ip_routes_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes tags from a directory
#'
#' Removes tags from a directory.
#'
#' @param ResourceId Identifier (ID) of the directory from which to remove the tag.
#' @param TagKeys The tag key (name) of the tag to be removed.
#'
#' @examples
#'
#' @export
remove_tags_from_resource <- function (ResourceId, TagKeys) 
{
    op <- Operation(name = "RemoveTagsFromResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- remove_tags_from_resource_input(ResourceId = ResourceId, 
        TagKeys = TagKeys)
    output <- remove_tags_from_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Resets the password for any user in your AWS Managed Microsoft AD or Simple AD directory
#'
#' Resets the password for any user in your AWS Managed Microsoft AD or Simple AD directory.
#'
#' @param DirectoryId Identifier of the AWS Managed Microsoft AD or Simple AD directory in which the user resides.
#' @param UserName The user name of the user whose password will be reset.
#' @param NewPassword The new password that will be reset.
#'
#' @examples
#'
#' @export
reset_user_password <- function (DirectoryId, UserName, NewPassword) 
{
    op <- Operation(name = "ResetUserPassword", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reset_user_password_input(DirectoryId = DirectoryId, 
        UserName = UserName, NewPassword = NewPassword)
    output <- reset_user_password_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Restores a directory using an existing directory snapshot
#'
#' Restores a directory using an existing directory snapshot.
#' 
#' When you restore a directory from a snapshot, any changes made to the directory after the snapshot date are overwritten.
#' 
#' This action returns as soon as the restore operation is initiated. You can monitor the progress of the restore operation by calling the DescribeDirectories operation with the directory identifier. When the **DirectoryDescription.Stage** value changes to `Active`, the restore operation is complete.
#'
#' @param SnapshotId The identifier of the snapshot to restore from.
#'
#' @examples
#'
#' @export
restore_from_snapshot <- function (SnapshotId) 
{
    op <- Operation(name = "RestoreFromSnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- restore_from_snapshot_input(SnapshotId = SnapshotId)
    output <- restore_from_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Shares a specified directory (`DirectoryId`) in your AWS account (directory owner) with another AWS account (directory consumer)
#'
#' Shares a specified directory (`DirectoryId`) in your AWS account (directory owner) with another AWS account (directory consumer). With this operation you can use your directory from any AWS account and from any Amazon VPC within an AWS Region.
#' 
#' When you share your AWS Managed Microsoft AD directory, AWS Directory Service creates a shared directory in the directory consumer account. This shared directory contains the metadata to provide access to the directory within the directory owner account. The shared directory is visible in all VPCs in the directory consumer account.
#' 
#' The `ShareMethod` parameter determines whether the specified directory can be shared between AWS accounts inside the same AWS organization (`ORGANIZATIONS`). It also determines whether you can share the directory with any other AWS account either inside or outside of the organization (`HANDSHAKE`).
#' 
#' The `ShareNotes` parameter is only used when `HANDSHAKE` is called, which sends a directory sharing request to the directory consumer.
#'
#' @param DirectoryId Identifier of the AWS Managed Microsoft AD directory that you want to share with other AWS accounts.
#' @param ShareTarget Identifier for the directory consumer account with whom the directory is to be shared.
#' @param ShareMethod The method used when sharing a directory to determine whether the directory should be shared within your AWS organization (`ORGANIZATIONS`) or with any AWS account by sending a directory sharing request (`HANDSHAKE`).
#' @param ShareNotes A directory share request that is sent by the directory owner to the directory consumer. The request includes a typed message to help the directory consumer administrator determine whether to approve or reject the share invitation.
#'
#' @examples
#'
#' @export
share_directory <- function (DirectoryId, ShareTarget, ShareMethod, 
    ShareNotes = NULL) 
{
    op <- Operation(name = "ShareDirectory", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- share_directory_input(DirectoryId = DirectoryId, 
        ShareTarget = ShareTarget, ShareMethod = ShareMethod, 
        ShareNotes = ShareNotes)
    output <- share_directory_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Applies a schema extension to a Microsoft AD directory
#'
#' Applies a schema extension to a Microsoft AD directory.
#'
#' @param DirectoryId The identifier of the directory for which the schema extension will be applied to.
#' @param CreateSnapshotBeforeSchemaExtension If true, creates a snapshot of the directory before applying the schema extension.
#' @param LdifContent The LDIF file represented as a string. To construct the LdifContent string, precede each line as it would be formatted in an ldif file with \\n. See the example request below for more details. The file size can be no larger than 1MB.
#' @param Description A description of the schema extension.
#'
#' @examples
#'
#' @export
start_schema_extension <- function (DirectoryId, CreateSnapshotBeforeSchemaExtension, 
    LdifContent, Description) 
{
    op <- Operation(name = "StartSchemaExtension", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_schema_extension_input(DirectoryId = DirectoryId, 
        CreateSnapshotBeforeSchemaExtension = CreateSnapshotBeforeSchemaExtension, 
        LdifContent = LdifContent, Description = Description)
    output <- start_schema_extension_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops the directory sharing between the directory owner and consumer accounts
#'
#' Stops the directory sharing between the directory owner and consumer accounts.
#'
#' @param DirectoryId The identifier of the AWS Managed Microsoft AD directory that you want to stop sharing.
#' @param UnshareTarget Identifier for the directory consumer account with whom the directory has to be unshared.
#'
#' @examples
#'
#' @export
unshare_directory <- function (DirectoryId, UnshareTarget) 
{
    op <- Operation(name = "UnshareDirectory", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- unshare_directory_input(DirectoryId = DirectoryId, 
        UnshareTarget = UnshareTarget)
    output <- unshare_directory_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a conditional forwarder that has been set up for your AWS directory
#'
#' Updates a conditional forwarder that has been set up for your AWS directory.
#'
#' @param DirectoryId The directory ID of the AWS directory for which to update the conditional forwarder.
#' @param RemoteDomainName The fully qualified domain name (FQDN) of the remote domain with which you will set up a trust relationship.
#' @param DnsIpAddrs The updated IP addresses of the remote DNS server associated with the conditional forwarder.
#'
#' @examples
#'
#' @export
update_conditional_forwarder <- function (DirectoryId, RemoteDomainName, 
    DnsIpAddrs) 
{
    op <- Operation(name = "UpdateConditionalForwarder", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_conditional_forwarder_input(DirectoryId = DirectoryId, 
        RemoteDomainName = RemoteDomainName, DnsIpAddrs = DnsIpAddrs)
    output <- update_conditional_forwarder_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds or removes domain controllers to or from the directory
#'
#' Adds or removes domain controllers to or from the directory. Based on the difference between current value and new value (provided through this API call), domain controllers will be added or removed. It may take up to 45 minutes for any new domain controllers to become fully active once the requested number of domain controllers is updated. During this time, you cannot make another update request.
#'
#' @param DirectoryId Identifier of the directory to which the domain controllers will be added or removed.
#' @param DesiredNumber The number of domain controllers desired in the directory.
#'
#' @examples
#'
#' @export
update_number_of_domain_controllers <- function (DirectoryId, 
    DesiredNumber) 
{
    op <- Operation(name = "UpdateNumberOfDomainControllers", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- update_number_of_domain_controllers_input(DirectoryId = DirectoryId, 
        DesiredNumber = DesiredNumber)
    output <- update_number_of_domain_controllers_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the Remote Authentication Dial In User Service (RADIUS) server information for an AD Connector or Microsoft AD directory
#'
#' Updates the Remote Authentication Dial In User Service (RADIUS) server information for an AD Connector or Microsoft AD directory.
#'
#' @param DirectoryId The identifier of the directory for which to update the RADIUS server information.
#' @param RadiusSettings A RadiusSettings object that contains information about the RADIUS server.
#'
#' @examples
#'
#' @export
update_radius <- function (DirectoryId, RadiusSettings) 
{
    op <- Operation(name = "UpdateRadius", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_radius_input(DirectoryId = DirectoryId, RadiusSettings = RadiusSettings)
    output <- update_radius_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the trust that has been set up between your AWS Managed Microsoft AD directory and an on-premises Active Directory
#'
#' Updates the trust that has been set up between your AWS Managed Microsoft AD directory and an on-premises Active Directory.
#'
#' @param TrustId Identifier of the trust relationship.
#' @param SelectiveAuth Updates selective authentication for the trust.
#'
#' @examples
#'
#' @export
update_trust <- function (TrustId, SelectiveAuth = NULL) 
{
    op <- Operation(name = "UpdateTrust", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_trust_input(TrustId = TrustId, SelectiveAuth = SelectiveAuth)
    output <- update_trust_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' AWS Directory Service for Microsoft Active Directory allows you to configure and verify trust relationships
#'
#' AWS Directory Service for Microsoft Active Directory allows you to configure and verify trust relationships.
#' 
#' This action verifies a trust relationship between your AWS Managed Microsoft AD directory and an external domain.
#'
#' @param TrustId The unique Trust ID of the trust relationship to verify.
#'
#' @examples
#'
#' @export
verify_trust <- function (TrustId) 
{
    op <- Operation(name = "VerifyTrust", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- verify_trust_input(TrustId = TrustId)
    output <- verify_trust_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
