#' Attaches tags to an existing Elasticsearch domain
#'
#' Attaches tags to an existing Elasticsearch domain. Tags are a set of case-sensitive key value pairs. An Elasticsearch domain may have up to 10 tags. See [Tagging Amazon Elasticsearch Service Domains for more information.](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-awsresorcetagging)
#'
#' @param ARN Specify the `ARN` for which you want to add the tags.
#' @param TagList List of `Tag` that need to be added for the Elasticsearch domain.
#'
#' @examples
#'
#' @export
add_tags <- function (ARN, TagList) 
{
    op <- Operation(name = "AddTags", http_method = "POST", http_path = "/2015-01-01/tags", 
        paginator = list())
    input <- add_tags_input(ARN = ARN, TagList = TagList)
    output <- add_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Cancels a scheduled service software update for an Amazon ES domain
#'
#' Cancels a scheduled service software update for an Amazon ES domain. You can only perform this operation before the `AutomatedUpdateDate` and when the `UpdateStatus` is in the `PENDING_UPDATE` state.
#'
#' @param DomainName The name of the domain that you want to stop the latest service software update on.
#'
#' @examples
#'
#' @export
cancel_elasticsearch_service_software_update <- function (DomainName) 
{
    op <- Operation(name = "CancelElasticsearchServiceSoftwareUpdate", 
        http_method = "POST", http_path = "/2015-01-01/es/serviceSoftwareUpdate/cancel", 
        paginator = list())
    input <- cancel_elasticsearch_service_software_update_input(DomainName = DomainName)
    output <- cancel_elasticsearch_service_software_update_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new Elasticsearch domain
#'
#' Creates a new Elasticsearch domain. For more information, see [Creating Elasticsearch Domains](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains) in the *Amazon Elasticsearch Service Developer Guide*.
#'
#' @param DomainName The name of the Elasticsearch domain that you are creating. Domain names are unique across the domains owned by an account within an AWS region. Domain names must start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).
#' @param ElasticsearchVersion String of format X.Y to specify version for the Elasticsearch domain eg. \"1.5\" or \"2.3\". For more information, see [Creating Elasticsearch Domains](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains) in the *Amazon Elasticsearch Service Developer Guide*.
#' @param ElasticsearchClusterConfig Configuration options for an Elasticsearch domain. Specifies the instance type and number of instances in the domain cluster.
#' @param EBSOptions Options to enable, disable and specify the type and size of EBS storage volumes.
#' @param AccessPolicies IAM access policy as a JSON-formatted string.
#' @param SnapshotOptions Option to set time, in UTC format, of the daily automated snapshot. Default value is 0 hours.
#' @param VPCOptions Options to specify the subnets and security groups for VPC endpoint. For more information, see [Creating a VPC](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc) in *VPC Endpoints for Amazon Elasticsearch Service Domains*
#' @param CognitoOptions Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see [Amazon Cognito Authentication for Kibana](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html).
#' @param EncryptionAtRestOptions Specifies the Encryption At Rest Options.
#' @param NodeToNodeEncryptionOptions Specifies the NodeToNodeEncryptionOptions.
#' @param AdvancedOptions Option to allow references to indices in an HTTP request body. Must be `false` when configuring access to individual sub-resources. By default, the value is `true`. See [Configuration Advanced Options](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options) for more information.
#' @param LogPublishingOptions Map of `LogType` and `LogPublishingOption`, each containing options to publish a given type of Elasticsearch log.
#'
#' @examples
#'
#' @export
create_elasticsearch_domain <- function (DomainName, ElasticsearchVersion = NULL, 
    ElasticsearchClusterConfig = NULL, EBSOptions = NULL, AccessPolicies = NULL, 
    SnapshotOptions = NULL, VPCOptions = NULL, CognitoOptions = NULL, 
    EncryptionAtRestOptions = NULL, NodeToNodeEncryptionOptions = NULL, 
    AdvancedOptions = NULL, LogPublishingOptions = NULL) 
{
    op <- Operation(name = "CreateElasticsearchDomain", http_method = "POST", 
        http_path = "/2015-01-01/es/domain", paginator = list())
    input <- create_elasticsearch_domain_input(DomainName = DomainName, 
        ElasticsearchVersion = ElasticsearchVersion, ElasticsearchClusterConfig = ElasticsearchClusterConfig, 
        EBSOptions = EBSOptions, AccessPolicies = AccessPolicies, 
        SnapshotOptions = SnapshotOptions, VPCOptions = VPCOptions, 
        CognitoOptions = CognitoOptions, EncryptionAtRestOptions = EncryptionAtRestOptions, 
        NodeToNodeEncryptionOptions = NodeToNodeEncryptionOptions, 
        AdvancedOptions = AdvancedOptions, LogPublishingOptions = LogPublishingOptions)
    output <- create_elasticsearch_domain_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently deletes the specified Elasticsearch domain and all of its data
#'
#' Permanently deletes the specified Elasticsearch domain and all of its data. Once a domain is deleted, it cannot be recovered.
#'
#' @param DomainName The name of the Elasticsearch domain that you want to permanently delete.
#'
#' @examples
#'
#' @export
delete_elasticsearch_domain <- function (DomainName) 
{
    op <- Operation(name = "DeleteElasticsearchDomain", http_method = "DELETE", 
        http_path = "/2015-01-01/es/domain/{DomainName}", paginator = list())
    input <- delete_elasticsearch_domain_input(DomainName = DomainName)
    output <- delete_elasticsearch_domain_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the service-linked role that Elasticsearch Service uses to manage and maintain VPC domains
#'
#' Deletes the service-linked role that Elasticsearch Service uses to manage and maintain VPC domains. Role deletion will fail if any existing VPC domains use the role. You must delete any such Elasticsearch domains before deleting the role. See [Deleting Elasticsearch Service Role](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-enabling-slr) in *VPC Endpoints for Amazon Elasticsearch Service Domains*.
#'

#'
#' @examples
#'
#' @export
delete_elasticsearch_service_role <- function () 
{
    op <- Operation(name = "DeleteElasticsearchServiceRole", 
        http_method = "DELETE", http_path = "/2015-01-01/es/role", 
        paginator = list())
    input <- delete_elasticsearch_service_role_input()
    output <- delete_elasticsearch_service_role_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns domain configuration information about the specified Elasticsearch domain, including the domain ID, domain endpoint, and domain ARN
#'
#' Returns domain configuration information about the specified Elasticsearch domain, including the domain ID, domain endpoint, and domain ARN.
#'
#' @param DomainName The name of the Elasticsearch domain for which you want information.
#'
#' @examples
#'
#' @export
describe_elasticsearch_domain <- function (DomainName) 
{
    op <- Operation(name = "DescribeElasticsearchDomain", http_method = "GET", 
        http_path = "/2015-01-01/es/domain/{DomainName}", paginator = list())
    input <- describe_elasticsearch_domain_input(DomainName = DomainName)
    output <- describe_elasticsearch_domain_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides cluster configuration information about the specified Elasticsearch domain, such as the state, creation date, update version, and update date for cluster options
#'
#' Provides cluster configuration information about the specified Elasticsearch domain, such as the state, creation date, update version, and update date for cluster options.
#'
#' @param DomainName The Elasticsearch domain that you want to get information about.
#'
#' @examples
#'
#' @export
describe_elasticsearch_domain_config <- function (DomainName) 
{
    op <- Operation(name = "DescribeElasticsearchDomainConfig", 
        http_method = "GET", http_path = "/2015-01-01/es/domain/{DomainName}/config", 
        paginator = list())
    input <- describe_elasticsearch_domain_config_input(DomainName = DomainName)
    output <- describe_elasticsearch_domain_config_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns domain configuration information about the specified Elasticsearch domains, including the domain ID, domain endpoint, and domain ARN
#'
#' Returns domain configuration information about the specified Elasticsearch domains, including the domain ID, domain endpoint, and domain ARN.
#'
#' @param DomainNames The Elasticsearch domains for which you want information.
#'
#' @examples
#'
#' @export
describe_elasticsearch_domains <- function (DomainNames) 
{
    op <- Operation(name = "DescribeElasticsearchDomains", http_method = "POST", 
        http_path = "/2015-01-01/es/domain-info", paginator = list())
    input <- describe_elasticsearch_domains_input(DomainNames = DomainNames)
    output <- describe_elasticsearch_domains_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion
#'
#' Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion. When modifying existing Domain, specify the ` DomainName DomainName ` to know what Limits are supported for modifying.
#'
#' @param InstanceType The instance type for an Elasticsearch cluster for which Elasticsearch ` Limits Limits ` are needed.
#' @param ElasticsearchVersion Version of Elasticsearch for which ` Limits Limits ` are needed.
#' @param DomainName DomainName represents the name of the Domain that we are trying to modify. This should be present only if we are querying for Elasticsearch ` Limits Limits ` for existing domain.
#'
#' @examples
#'
#' @export
describe_elasticsearch_instance_type_limits <- function (InstanceType, 
    ElasticsearchVersion, DomainName = NULL) 
{
    op <- Operation(name = "DescribeElasticsearchInstanceTypeLimits", 
        http_method = "GET", http_path = "/2015-01-01/es/instanceTypeLimits/{ElasticsearchVersion}/{InstanceType}", 
        paginator = list())
    input <- describe_elasticsearch_instance_type_limits_input(InstanceType = InstanceType, 
        ElasticsearchVersion = ElasticsearchVersion, DomainName = DomainName)
    output <- describe_elasticsearch_instance_type_limits_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists available reserved Elasticsearch instance offerings
#'
#' Lists available reserved Elasticsearch instance offerings.
#'
#' @param ReservedElasticsearchInstanceOfferingId The offering identifier filter value. Use this parameter to show only the available offering that matches the specified reservation identifier.
#' @param MaxResults Set this value to limit the number of results returned. If not specified, defaults to 100.
#' @param NextToken NextToken should be sent in case if earlier API call produced result containing NextToken. It is used for pagination.
#'
#' @examples
#'
#' @export
describe_reserved_elasticsearch_instance_offerings <- function (ReservedElasticsearchInstanceOfferingId = NULL, 
    MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeReservedElasticsearchInstanceOfferings", 
        http_method = "GET", http_path = "/2015-01-01/es/reservedInstanceOfferings", 
        paginator = list())
    input <- describe_reserved_elasticsearch_instance_offerings_input(ReservedElasticsearchInstanceOfferingId = ReservedElasticsearchInstanceOfferingId, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_reserved_elasticsearch_instance_offerings_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about reserved Elasticsearch instances for this account
#'
#' Returns information about reserved Elasticsearch instances for this account.
#'
#' @param ReservedElasticsearchInstanceId The reserved instance identifier filter value. Use this parameter to show only the reservation that matches the specified reserved Elasticsearch instance ID.
#' @param MaxResults Set this value to limit the number of results returned. If not specified, defaults to 100.
#' @param NextToken NextToken should be sent in case if earlier API call produced result containing NextToken. It is used for pagination.
#'
#' @examples
#'
#' @export
describe_reserved_elasticsearch_instances <- function (ReservedElasticsearchInstanceId = NULL, 
    MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeReservedElasticsearchInstances", 
        http_method = "GET", http_path = "/2015-01-01/es/reservedInstances", 
        paginator = list())
    input <- describe_reserved_elasticsearch_instances_input(ReservedElasticsearchInstanceId = ReservedElasticsearchInstanceId, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_reserved_elasticsearch_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of upgrade compatible Elastisearch versions
#'
#' Returns a list of upgrade compatible Elastisearch versions. You can optionally pass a ` DomainName DomainName ` to get all upgrade compatible Elasticsearch versions for that specific domain.
#'
#' @param DomainName 
#'
#' @examples
#'
#' @export
get_compatible_elasticsearch_versions <- function (DomainName = NULL) 
{
    op <- Operation(name = "GetCompatibleElasticsearchVersions", 
        http_method = "GET", http_path = "/2015-01-01/es/compatibleVersions", 
        paginator = list())
    input <- get_compatible_elasticsearch_versions_input(DomainName = DomainName)
    output <- get_compatible_elasticsearch_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the complete history of the last 10 upgrades that were performed on the domain
#'
#' Retrieves the complete history of the last 10 upgrades that were performed on the domain.
#'
#' @param DomainName 
#' @param MaxResults 
#' @param NextToken 
#'
#' @examples
#'
#' @export
get_upgrade_history <- function (DomainName, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "GetUpgradeHistory", http_method = "GET", 
        http_path = "/2015-01-01/es/upgradeDomain/{DomainName}/history", 
        paginator = list())
    input <- get_upgrade_history_input(DomainName = DomainName, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- get_upgrade_history_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the latest status of the last upgrade or upgrade eligibility check that was performed on the domain
#'
#' Retrieves the latest status of the last upgrade or upgrade eligibility check that was performed on the domain.
#'
#' @param DomainName 
#'
#' @examples
#'
#' @export
get_upgrade_status <- function (DomainName) 
{
    op <- Operation(name = "GetUpgradeStatus", http_method = "GET", 
        http_path = "/2015-01-01/es/upgradeDomain/{DomainName}/status", 
        paginator = list())
    input <- get_upgrade_status_input(DomainName = DomainName)
    output <- get_upgrade_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the name of all Elasticsearch domains owned by the current user\'s account
#'
#' Returns the name of all Elasticsearch domains owned by the current user\'s account.
#'

#'
#' @examples
#'
#' @export
list_domain_names <- function () 
{
    op <- Operation(name = "ListDomainNames", http_method = "GET", 
        http_path = "/2015-01-01/domain", paginator = list())
    input <- list_domain_names_input()
    output <- list_domain_names_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' List all Elasticsearch instance types that are supported for given ElasticsearchVersion
#'
#' List all Elasticsearch instance types that are supported for given ElasticsearchVersion
#'
#' @param ElasticsearchVersion Version of Elasticsearch for which list of supported elasticsearch instance types are needed.
#' @param DomainName DomainName represents the name of the Domain that we are trying to modify. This should be present only if we are querying for list of available Elasticsearch instance types when modifying existing domain.
#' @param MaxResults Set this value to limit the number of results returned. Value provided must be greater than 30 else it wont be honored.
#' @param NextToken NextToken should be sent in case if earlier API call produced result containing NextToken. It is used for pagination.
#'
#' @examples
#'
#' @export
list_elasticsearch_instance_types <- function (ElasticsearchVersion, 
    DomainName = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListElasticsearchInstanceTypes", 
        http_method = "GET", http_path = "/2015-01-01/es/instanceTypes/{ElasticsearchVersion}", 
        paginator = list())
    input <- list_elasticsearch_instance_types_input(ElasticsearchVersion = ElasticsearchVersion, 
        DomainName = DomainName, MaxResults = MaxResults, NextToken = NextToken)
    output <- list_elasticsearch_instance_types_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' List all supported Elasticsearch versions
#'
#' List all supported Elasticsearch versions
#'
#' @param MaxResults Set this value to limit the number of results returned. Value provided must be greater than 10 else it wont be honored.
#' @param NextToken 
#'
#' @examples
#'
#' @export
list_elasticsearch_versions <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListElasticsearchVersions", http_method = "GET", 
        http_path = "/2015-01-01/es/versions", paginator = list())
    input <- list_elasticsearch_versions_input(MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- list_elasticsearch_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns all tags for the given Elasticsearch domain
#'
#' Returns all tags for the given Elasticsearch domain.
#'
#' @param ARN Specify the `ARN` for the Elasticsearch domain to which the tags are attached that you want to view.
#'
#' @examples
#'
#' @export
list_tags <- function (ARN) 
{
    op <- Operation(name = "ListTags", http_method = "GET", http_path = "/2015-01-01/tags/", 
        paginator = list())
    input <- list_tags_input(ARN = ARN)
    output <- list_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Allows you to purchase reserved Elasticsearch instances
#'
#' Allows you to purchase reserved Elasticsearch instances.
#'
#' @param ReservedElasticsearchInstanceOfferingId The ID of the reserved Elasticsearch instance offering to purchase.
#' @param ReservationName A customer-specified identifier to track this reservation.
#' @param InstanceCount The number of Elasticsearch instances to reserve.
#'
#' @examples
#'
#' @export
purchase_reserved_elasticsearch_instance_offering <- function (ReservedElasticsearchInstanceOfferingId, 
    ReservationName, InstanceCount = NULL) 
{
    op <- Operation(name = "PurchaseReservedElasticsearchInstanceOffering", 
        http_method = "POST", http_path = "/2015-01-01/es/purchaseReservedInstanceOffering", 
        paginator = list())
    input <- purchase_reserved_elasticsearch_instance_offering_input(ReservedElasticsearchInstanceOfferingId = ReservedElasticsearchInstanceOfferingId, 
        ReservationName = ReservationName, InstanceCount = InstanceCount)
    output <- purchase_reserved_elasticsearch_instance_offering_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes the specified set of tags from the specified Elasticsearch domain
#'
#' Removes the specified set of tags from the specified Elasticsearch domain.
#'
#' @param ARN Specifies the `ARN` for the Elasticsearch domain from which you want to delete the specified tags.
#' @param TagKeys Specifies the `TagKey` list which you want to remove from the Elasticsearch domain.
#'
#' @examples
#'
#' @export
remove_tags <- function (ARN, TagKeys) 
{
    op <- Operation(name = "RemoveTags", http_method = "POST", 
        http_path = "/2015-01-01/tags-removal", paginator = list())
    input <- remove_tags_input(ARN = ARN, TagKeys = TagKeys)
    output <- remove_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Schedules a service software update for an Amazon ES domain
#'
#' Schedules a service software update for an Amazon ES domain.
#'
#' @param DomainName The name of the domain that you want to update to the latest service software.
#'
#' @examples
#'
#' @export
start_elasticsearch_service_software_update <- function (DomainName) 
{
    op <- Operation(name = "StartElasticsearchServiceSoftwareUpdate", 
        http_method = "POST", http_path = "/2015-01-01/es/serviceSoftwareUpdate/start", 
        paginator = list())
    input <- start_elasticsearch_service_software_update_input(DomainName = DomainName)
    output <- start_elasticsearch_service_software_update_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances
#'
#' Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances.
#'
#' @param DomainName The name of the Elasticsearch domain that you are updating.
#' @param ElasticsearchClusterConfig The type and number of instances to instantiate for the domain cluster.
#' @param EBSOptions Specify the type and size of the EBS volume that you want to use.
#' @param SnapshotOptions Option to set the time, in UTC format, for the daily automated snapshot. Default value is `0` hours.
#' @param VPCOptions Options to specify the subnets and security groups for VPC endpoint. For more information, see [Creating a VPC](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc) in *VPC Endpoints for Amazon Elasticsearch Service Domains*
#' @param CognitoOptions Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see [Amazon Cognito Authentication for Kibana](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html).
#' @param AdvancedOptions Modifies the advanced option to allow references to indices in an HTTP request body. Must be `false` when configuring access to individual sub-resources. By default, the value is `true`. See [Configuration Advanced Options](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options) for more information.
#' @param AccessPolicies IAM access policy as a JSON-formatted string.
#' @param LogPublishingOptions Map of `LogType` and `LogPublishingOption`, each containing options to publish a given type of Elasticsearch log.
#'
#' @examples
#'
#' @export
update_elasticsearch_domain_config <- function (DomainName, ElasticsearchClusterConfig = NULL, 
    EBSOptions = NULL, SnapshotOptions = NULL, VPCOptions = NULL, 
    CognitoOptions = NULL, AdvancedOptions = NULL, AccessPolicies = NULL, 
    LogPublishingOptions = NULL) 
{
    op <- Operation(name = "UpdateElasticsearchDomainConfig", 
        http_method = "POST", http_path = "/2015-01-01/es/domain/{DomainName}/config", 
        paginator = list())
    input <- update_elasticsearch_domain_config_input(DomainName = DomainName, 
        ElasticsearchClusterConfig = ElasticsearchClusterConfig, 
        EBSOptions = EBSOptions, SnapshotOptions = SnapshotOptions, 
        VPCOptions = VPCOptions, CognitoOptions = CognitoOptions, 
        AdvancedOptions = AdvancedOptions, AccessPolicies = AccessPolicies, 
        LogPublishingOptions = LogPublishingOptions)
    output <- update_elasticsearch_domain_config_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Allows you to either upgrade your domain or perform an Upgrade eligibility check to a compatible Elasticsearch version
#'
#' Allows you to either upgrade your domain or perform an Upgrade eligibility check to a compatible Elasticsearch version.
#'
#' @param DomainName 
#' @param TargetVersion The version of Elasticsearch that you intend to upgrade the domain to.
#' @param PerformCheckOnly This flag, when set to True, indicates that an Upgrade Eligibility Check needs to be performed. This will not actually perform the Upgrade.
#'
#' @examples
#'
#' @export
upgrade_elasticsearch_domain <- function (DomainName, TargetVersion, 
    PerformCheckOnly = NULL) 
{
    op <- Operation(name = "UpgradeElasticsearchDomain", http_method = "POST", 
        http_path = "/2015-01-01/es/upgradeDomain", paginator = list())
    input <- upgrade_elasticsearch_domain_input(DomainName = DomainName, 
        TargetVersion = TargetVersion, PerformCheckOnly = PerformCheckOnly)
    output <- upgrade_elasticsearch_domain_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
