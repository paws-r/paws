#' Creates a DAX cluster
#'
#' Creates a DAX cluster. All nodes in the cluster run the same DAX caching software.
#'
#' @param ClusterName The cluster identifier. This parameter is stored as a lowercase string.
#' 
#' **Constraints:**
#' 
#' -   A name must contain from 1 to 20 alphanumeric characters or hyphens.
#' 
#' -   The first character must be a letter.
#' 
#' -   A name cannot end with a hyphen or contain two consecutive hyphens.
#' @param NodeType The compute and memory capacity of the nodes in the cluster.
#' @param ReplicationFactor The number of nodes in the DAX cluster. A replication factor of 1 will create a single-node cluster, without any read replicas. For additional fault tolerance, you can create a multiple node cluster with one or more read replicas. To do this, set *ReplicationFactor* to 2 or more.
#' 
#' AWS recommends that you have at least two read replicas per cluster.
#' @param IamRoleArn A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX will assume this role and use the role\'s permissions to access DynamoDB on your behalf.
#' @param Description A description of the cluster.
#' @param AvailabilityZones The Availability Zones (AZs) in which the cluster nodes will be created. All nodes belonging to the cluster are placed in these Availability Zones. Use this parameter if you want to distribute the nodes across multiple AZs.
#' @param SubnetGroupName The name of the subnet group to be used for the replication group.
#' 
#' DAX clusters can only run in an Amazon VPC environment. All of the subnets that you specify in a subnet group must exist in the same VPC.
#' @param SecurityGroupIds A list of security group IDs to be assigned to each node in the DAX cluster. (Each of the security group ID is system-generated.)
#' 
#' If this parameter is not specified, DAX assigns the default VPC security group to each node.
#' @param PreferredMaintenanceWindow Specifies the weekly time range during which maintenance on the DAX cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Valid values for `ddd` are:
#' 
#' -   `sun`
#' 
#' -   `mon`
#' 
#' -   `tue`
#' 
#' -   `wed`
#' 
#' -   `thu`
#' 
#' -   `fri`
#' 
#' -   `sat`
#' 
#' Example: `sun:05:00-sun:09:00`
#' 
#' If you don\'t specify a preferred maintenance window when you create or modify a cache cluster, DAX assigns a 60-minute maintenance window on a randomly selected day of the week.
#' @param NotificationTopicArn The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications will be sent.
#' 
#' The Amazon SNS topic owner must be same as the DAX cluster owner.
#' @param ParameterGroupName The parameter group to be associated with the DAX cluster.
#' @param Tags A set of tags to associate with the DAX cluster.
#' @param SSESpecification Represents the settings used to enable server-side encryption on the cluster.
#'
#' @examples
#'
#' @export
create_cluster <- function (ClusterName, NodeType, ReplicationFactor, 
    IamRoleArn, Description = NULL, AvailabilityZones = NULL, 
    SubnetGroupName = NULL, SecurityGroupIds = NULL, PreferredMaintenanceWindow = NULL, 
    NotificationTopicArn = NULL, ParameterGroupName = NULL, Tags = NULL, 
    SSESpecification = NULL) 
{
    op <- Operation(name = "CreateCluster", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_cluster_input(ClusterName = ClusterName, 
        NodeType = NodeType, ReplicationFactor = ReplicationFactor, 
        IamRoleArn = IamRoleArn, Description = Description, AvailabilityZones = AvailabilityZones, 
        SubnetGroupName = SubnetGroupName, SecurityGroupIds = SecurityGroupIds, 
        PreferredMaintenanceWindow = PreferredMaintenanceWindow, 
        NotificationTopicArn = NotificationTopicArn, ParameterGroupName = ParameterGroupName, 
        Tags = Tags, SSESpecification = SSESpecification)
    output <- create_cluster_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new parameter group
#'
#' Creates a new parameter group. A parameter group is a collection of parameters that you apply to all of the nodes in a DAX cluster.
#'
#' @param ParameterGroupName The name of the parameter group to apply to all of the clusters in this replication group.
#' @param Description A description of the parameter group.
#'
#' @examples
#'
#' @export
create_parameter_group <- function (ParameterGroupName, Description = NULL) 
{
    op <- Operation(name = "CreateParameterGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_parameter_group_input(ParameterGroupName = ParameterGroupName, 
        Description = Description)
    output <- create_parameter_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new subnet group
#'
#' Creates a new subnet group.
#'
#' @param SubnetGroupName A name for the subnet group. This value is stored as a lowercase string.
#' @param SubnetIds A list of VPC subnet IDs for the subnet group.
#' @param Description A description for the subnet group
#'
#' @examples
#'
#' @export
create_subnet_group <- function (SubnetGroupName, SubnetIds, 
    Description = NULL) 
{
    op <- Operation(name = "CreateSubnetGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_subnet_group_input(SubnetGroupName = SubnetGroupName, 
        SubnetIds = SubnetIds, Description = Description)
    output <- create_subnet_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes one or more nodes from a DAX cluster
#'
#' Removes one or more nodes from a DAX cluster.
#' 
#' You cannot use `DecreaseReplicationFactor` to remove the last node in a DAX cluster. If you need to do this, use `DeleteCluster` instead.
#'
#' @param ClusterName The name of the DAX cluster from which you want to remove nodes.
#' @param NewReplicationFactor The new number of nodes for the DAX cluster.
#' @param AvailabilityZones The Availability Zone(s) from which to remove nodes.
#' @param NodeIdsToRemove The unique identifiers of the nodes to be removed from the cluster.
#'
#' @examples
#'
#' @export
decrease_replication_factor <- function (ClusterName, NewReplicationFactor, 
    AvailabilityZones = NULL, NodeIdsToRemove = NULL) 
{
    op <- Operation(name = "DecreaseReplicationFactor", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- decrease_replication_factor_input(ClusterName = ClusterName, 
        NewReplicationFactor = NewReplicationFactor, AvailabilityZones = AvailabilityZones, 
        NodeIdsToRemove = NodeIdsToRemove)
    output <- decrease_replication_factor_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a previously provisioned DAX cluster
#'
#' Deletes a previously provisioned DAX cluster. *DeleteCluster* deletes all associated nodes, node endpoints and the DAX cluster itself. When you receive a successful response from this action, DAX immediately begins deleting the cluster; you cannot cancel or revert this action.
#'
#' @param ClusterName The name of the cluster to be deleted.
#'
#' @examples
#'
#' @export
delete_cluster <- function (ClusterName) 
{
    op <- Operation(name = "DeleteCluster", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_cluster_input(ClusterName = ClusterName)
    output <- delete_cluster_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified parameter group
#'
#' Deletes the specified parameter group. You cannot delete a parameter group if it is associated with any DAX clusters.
#'
#' @param ParameterGroupName The name of the parameter group to delete.
#'
#' @examples
#'
#' @export
delete_parameter_group <- function (ParameterGroupName) 
{
    op <- Operation(name = "DeleteParameterGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_parameter_group_input(ParameterGroupName = ParameterGroupName)
    output <- delete_parameter_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a subnet group
#'
#' Deletes a subnet group.
#' 
#' You cannot delete a subnet group if it is associated with any DAX clusters.
#'
#' @param SubnetGroupName The name of the subnet group to delete.
#'
#' @examples
#'
#' @export
delete_subnet_group <- function (SubnetGroupName) 
{
    op <- Operation(name = "DeleteSubnetGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_subnet_group_input(SubnetGroupName = SubnetGroupName)
    output <- delete_subnet_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about all provisioned DAX clusters if no cluster identifier is specified, or about a specific DAX cluster if a cluster identifier is supplied
#'
#' Returns information about all provisioned DAX clusters if no cluster identifier is specified, or about a specific DAX cluster if a cluster identifier is supplied.
#' 
#' If the cluster is in the CREATING state, only cluster level information will be displayed until all of the nodes are successfully provisioned.
#' 
#' If the cluster is in the DELETING state, only cluster level information will be displayed.
#' 
#' If nodes are currently being added to the DAX cluster, node endpoint information and creation time for the additional nodes will not be displayed until they are completely provisioned. When the DAX cluster state is *available*, the cluster is ready for use.
#' 
#' If nodes are currently being removed from the DAX cluster, no endpoint information for the removed nodes is displayed.
#'
#' @param ClusterNames The names of the DAX clusters being described.
#' @param MaxResults The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.
#' 
#' The value for `MaxResults` must be between 20 and 100.
#' @param NextToken An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.
#'
#' @examples
#'
#' @export
describe_clusters <- function (ClusterNames = NULL, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "DescribeClusters", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_clusters_input(ClusterNames = ClusterNames, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_clusters_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the default system parameter information for the DAX caching software
#'
#' Returns the default system parameter information for the DAX caching software.
#'
#' @param MaxResults The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.
#' 
#' The value for `MaxResults` must be between 20 and 100.
#' @param NextToken An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.
#'
#' @examples
#'
#' @export
describe_default_parameters <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeDefaultParameters", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_default_parameters_input(MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- describe_default_parameters_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns events related to DAX clusters and parameter groups
#'
#' Returns events related to DAX clusters and parameter groups. You can obtain events specific to a particular DAX cluster or parameter group by providing the name as a parameter.
#' 
#' By default, only the events occurring within the last hour are returned; however, you can retrieve up to 14 days\' worth of events if necessary.
#'
#' @param SourceName The identifier of the event source for which events will be returned. If not specified, then all sources are included in the response.
#' @param SourceType The event source to retrieve events for. If no value is specified, all events are returned.
#' @param StartTime The beginning of the time interval to retrieve events for, specified in ISO 8601 format.
#' @param EndTime The end of the time interval for which to retrieve events, specified in ISO 8601 format.
#' @param Duration The number of minutes\' worth of events to retrieve.
#' @param MaxResults The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.
#' 
#' The value for `MaxResults` must be between 20 and 100.
#' @param NextToken An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.
#'
#' @examples
#'
#' @export
describe_events <- function (SourceName = NULL, SourceType = NULL, 
    StartTime = NULL, EndTime = NULL, Duration = NULL, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "DescribeEvents", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_events_input(SourceName = SourceName, SourceType = SourceType, 
        StartTime = StartTime, EndTime = EndTime, Duration = Duration, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_events_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of parameter group descriptions
#'
#' Returns a list of parameter group descriptions. If a parameter group name is specified, the list will contain only the descriptions for that group.
#'
#' @param ParameterGroupNames The names of the parameter groups.
#' @param MaxResults The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.
#' 
#' The value for `MaxResults` must be between 20 and 100.
#' @param NextToken An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.
#'
#' @examples
#'
#' @export
describe_parameter_groups <- function (ParameterGroupNames = NULL, 
    MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeParameterGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_parameter_groups_input(ParameterGroupNames = ParameterGroupNames, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_parameter_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the detailed parameter list for a particular parameter group
#'
#' Returns the detailed parameter list for a particular parameter group.
#'
#' @param ParameterGroupName The name of the parameter group.
#' @param Source How the parameter is defined. For example, `system` denotes a system-defined parameter.
#' @param MaxResults The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.
#' 
#' The value for `MaxResults` must be between 20 and 100.
#' @param NextToken An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.
#'
#' @examples
#'
#' @export
describe_parameters <- function (ParameterGroupName, Source = NULL, 
    MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeParameters", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_parameters_input(ParameterGroupName = ParameterGroupName, 
        Source = Source, MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_parameters_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of subnet group descriptions
#'
#' Returns a list of subnet group descriptions. If a subnet group name is specified, the list will contain only the description of that group.
#'
#' @param SubnetGroupNames The name of the subnet group.
#' @param MaxResults The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.
#' 
#' The value for `MaxResults` must be between 20 and 100.
#' @param NextToken An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.
#'
#' @examples
#'
#' @export
describe_subnet_groups <- function (SubnetGroupNames = NULL, 
    MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeSubnetGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_subnet_groups_input(SubnetGroupNames = SubnetGroupNames, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_subnet_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds one or more nodes to a DAX cluster
#'
#' Adds one or more nodes to a DAX cluster.
#'
#' @param ClusterName The name of the DAX cluster that will receive additional nodes.
#' @param NewReplicationFactor The new number of nodes for the DAX cluster.
#' @param AvailabilityZones The Availability Zones (AZs) in which the cluster nodes will be created. All nodes belonging to the cluster are placed in these Availability Zones. Use this parameter if you want to distribute the nodes across multiple AZs.
#'
#' @examples
#'
#' @export
increase_replication_factor <- function (ClusterName, NewReplicationFactor, 
    AvailabilityZones = NULL) 
{
    op <- Operation(name = "IncreaseReplicationFactor", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- increase_replication_factor_input(ClusterName = ClusterName, 
        NewReplicationFactor = NewReplicationFactor, AvailabilityZones = AvailabilityZones)
    output <- increase_replication_factor_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' List all of the tags for a DAX cluster
#'
#' List all of the tags for a DAX cluster. You can call `ListTags` up to 10 times per second, per account.
#'
#' @param ResourceName The name of the DAX resource to which the tags belong.
#' @param NextToken An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token.
#'
#' @examples
#'
#' @export
list_tags <- function (ResourceName, NextToken = NULL) 
{
    op <- Operation(name = "ListTags", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_tags_input(ResourceName = ResourceName, NextToken = NextToken)
    output <- list_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Reboots a single node of a DAX cluster
#'
#' Reboots a single node of a DAX cluster. The reboot action takes place as soon as possible. During the reboot, the node status is set to REBOOTING.
#'
#' @param ClusterName The name of the DAX cluster containing the node to be rebooted.
#' @param NodeId The system-assigned ID of the node to be rebooted.
#'
#' @examples
#'
#' @export
reboot_node <- function (ClusterName, NodeId) 
{
    op <- Operation(name = "RebootNode", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reboot_node_input(ClusterName = ClusterName, NodeId = NodeId)
    output <- reboot_node_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates a set of tags with a DAX resource
#'
#' Associates a set of tags with a DAX resource. You can call `TagResource` up to 5 times per second, per account.
#'
#' @param ResourceName The name of the DAX resource to which tags should be added.
#' @param Tags The tags to be assigned to the DAX resource.
#'
#' @examples
#'
#' @export
tag_resource <- function (ResourceName, Tags) 
{
    op <- Operation(name = "TagResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- tag_resource_input(ResourceName = ResourceName, 
        Tags = Tags)
    output <- tag_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes the association of tags from a DAX resource
#'
#' Removes the association of tags from a DAX resource. You can call `UntagResource` up to 5 times per second, per account.
#'
#' @param ResourceName The name of the DAX resource from which the tags should be removed.
#' @param TagKeys A list of tag keys. If the DAX cluster has any tags with these keys, then the tags are removed from the cluster.
#'
#' @examples
#'
#' @export
untag_resource <- function (ResourceName, TagKeys) 
{
    op <- Operation(name = "UntagResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- untag_resource_input(ResourceName = ResourceName, 
        TagKeys = TagKeys)
    output <- untag_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the settings for a DAX cluster
#'
#' Modifies the settings for a DAX cluster. You can use this action to change one or more cluster configuration parameters by specifying the parameters and the new values.
#'
#' @param ClusterName The name of the DAX cluster to be modified.
#' @param Description A description of the changes being made to the cluster.
#' @param PreferredMaintenanceWindow A range of time when maintenance of DAX cluster software will be performed. For example: `sun:01:00-sun:09:00`. Cluster maintenance normally takes less than 30 minutes, and is performed automatically within the maintenance window.
#' @param NotificationTopicArn The Amazon Resource Name (ARN) that identifies the topic.
#' @param NotificationTopicStatus The current state of the topic.
#' @param ParameterGroupName The name of a parameter group for this cluster.
#' @param SecurityGroupIds A list of user-specified security group IDs to be assigned to each node in the DAX cluster. If this parameter is not specified, DAX assigns the default VPC security group to each node.
#'
#' @examples
#'
#' @export
update_cluster <- function (ClusterName, Description = NULL, 
    PreferredMaintenanceWindow = NULL, NotificationTopicArn = NULL, 
    NotificationTopicStatus = NULL, ParameterGroupName = NULL, 
    SecurityGroupIds = NULL) 
{
    op <- Operation(name = "UpdateCluster", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_cluster_input(ClusterName = ClusterName, 
        Description = Description, PreferredMaintenanceWindow = PreferredMaintenanceWindow, 
        NotificationTopicArn = NotificationTopicArn, NotificationTopicStatus = NotificationTopicStatus, 
        ParameterGroupName = ParameterGroupName, SecurityGroupIds = SecurityGroupIds)
    output <- update_cluster_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the parameters of a parameter group
#'
#' Modifies the parameters of a parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.
#'
#' @param ParameterGroupName The name of the parameter group.
#' @param ParameterNameValues An array of name-value pairs for the parameters in the group. Each element in the array represents a single parameter.
#'
#' @examples
#'
#' @export
update_parameter_group <- function (ParameterGroupName, ParameterNameValues) 
{
    op <- Operation(name = "UpdateParameterGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_parameter_group_input(ParameterGroupName = ParameterGroupName, 
        ParameterNameValues = ParameterNameValues)
    output <- update_parameter_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies an existing subnet group
#'
#' Modifies an existing subnet group.
#'
#' @param SubnetGroupName The name of the subnet group.
#' @param Description A description of the subnet group.
#' @param SubnetIds A list of subnet IDs in the subnet group.
#'
#' @examples
#'
#' @export
update_subnet_group <- function (SubnetGroupName, Description = NULL, 
    SubnetIds = NULL) 
{
    op <- Operation(name = "UpdateSubnetGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_subnet_group_input(SubnetGroupName = SubnetGroupName, 
        Description = Description, SubnetIds = SubnetIds)
    output <- update_subnet_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
