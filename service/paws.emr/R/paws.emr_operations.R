#' Adds an instance fleet to a running cluster
#'
#' Adds an instance fleet to a running cluster.
#' 
#' The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x.
#'
#' @param ClusterId The unique identifier of the cluster.
#' @param InstanceFleet Specifies the configuration of the instance fleet.
#'
#' @examples
#'
#' @export
add_instance_fleet <- function (ClusterId, InstanceFleet) 
{
    op <- Operation(name = "AddInstanceFleet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- add_instance_fleet_input(ClusterId = ClusterId, 
        InstanceFleet = InstanceFleet)
    output <- add_instance_fleet_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds one or more instance groups to a running cluster
#'
#' Adds one or more instance groups to a running cluster.
#'
#' @param InstanceGroups Instance groups to add.
#' @param JobFlowId Job flow in which to add the instance groups.
#'
#' @examples
#'
#' @export
add_instance_groups <- function (InstanceGroups, JobFlowId) 
{
    op <- Operation(name = "AddInstanceGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- add_instance_groups_input(InstanceGroups = InstanceGroups, 
        JobFlowId = JobFlowId)
    output <- add_instance_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' AddJobFlowSteps adds new steps to a running cluster
#'
#' AddJobFlowSteps adds new steps to a running cluster. A maximum of 256 steps are allowed in each job flow.
#' 
#' If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using SSH to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see [Add More than 256 Steps to a Cluster](http://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html) in the *Amazon EMR Management Guide*.
#' 
#' A step specifies the location of a JAR file stored either on the master node of the cluster or in Amazon S3. Each step is performed by the main function of the main class of the JAR file. The main class can be specified either in the manifest of the JAR or by using the MainFunction parameter of the step.
#' 
#' Amazon EMR executes each step in the order listed. For a step to be considered complete, the main function must exit with a zero exit code and all Hadoop jobs started while the step was running must have completed and run successfully.
#' 
#' You can only add steps to a cluster that is in one of the following states: STARTING, BOOTSTRAPPING, RUNNING, or WAITING.
#'
#' @param JobFlowId A string that uniquely identifies the job flow. This identifier is returned by RunJobFlow and can also be obtained from ListClusters.
#' @param Steps A list of StepConfig to be executed by the job flow.
#'
#' @examples
#'
#' @export
add_job_flow_steps <- function (JobFlowId, Steps) 
{
    op <- Operation(name = "AddJobFlowSteps", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- add_job_flow_steps_input(JobFlowId = JobFlowId, 
        Steps = Steps)
    output <- add_job_flow_steps_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds tags to an Amazon EMR resource
#'
#' Adds tags to an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see [Tag Clusters](http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html).
#'
#' @param ResourceId The Amazon EMR resource identifier to which tags will be added. This value must be a cluster identifier.
#' @param Tags A list of tags to associate with a cluster and propagate to EC2 instances. Tags are user-defined key/value pairs that consist of a required key string with a maximum of 128 characters, and an optional value string with a maximum of 256 characters.
#'
#' @examples
#'
#' @export
add_tags <- function (ResourceId, Tags) 
{
    op <- Operation(name = "AddTags", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- add_tags_input(ResourceId = ResourceId, Tags = Tags)
    output <- add_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Cancels a pending step or steps in a running cluster
#'
#' Cancels a pending step or steps in a running cluster. Available only in Amazon EMR versions 4.8.0 and later, excluding version 5.0.0. A maximum of 256 steps are allowed in each CancelSteps request. CancelSteps is idempotent but asynchronous; it does not guarantee a step will be canceled, even if the request is successfully submitted. You can only cancel steps that are in a `PENDING` state.
#'
#' @param ClusterId The `ClusterID` for which specified steps will be canceled. Use RunJobFlow and ListClusters to get ClusterIDs.
#' @param StepIds The list of `StepIDs` to cancel. Use ListSteps to get steps and their states for the specified cluster.
#'
#' @examples
#'
#' @export
cancel_steps <- function (ClusterId = NULL, StepIds = NULL) 
{
    op <- Operation(name = "CancelSteps", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- cancel_steps_input(ClusterId = ClusterId, StepIds = StepIds)
    output <- cancel_steps_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a security configuration, which is stored in the service and can be specified when a cluster is created
#'
#' Creates a security configuration, which is stored in the service and can be specified when a cluster is created.
#'
#' @param Name The name of the security configuration.
#' @param SecurityConfiguration The security configuration details in JSON format. For JSON parameters and examples, see [Use Security Configurations to Set Up Cluster Security](http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-security-configurations.html) in the *Amazon EMR Management Guide*.
#'
#' @examples
#'
#' @export
create_security_configuration <- function (Name, SecurityConfiguration) 
{
    op <- Operation(name = "CreateSecurityConfiguration", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_security_configuration_input(Name = Name, 
        SecurityConfiguration = SecurityConfiguration)
    output <- create_security_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a security configuration
#'
#' Deletes a security configuration.
#'
#' @param Name The name of the security configuration.
#'
#' @examples
#'
#' @export
delete_security_configuration <- function (Name) 
{
    op <- Operation(name = "DeleteSecurityConfiguration", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_security_configuration_input(Name = Name)
    output <- delete_security_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides cluster-level details including status, hardware and software configuration, VPC settings, and so on
#'
#' Provides cluster-level details including status, hardware and software configuration, VPC settings, and so on.
#'
#' @param ClusterId The identifier of the cluster to describe.
#'
#' @examples
#'
#' @export
describe_cluster <- function (ClusterId) 
{
    op <- Operation(name = "DescribeCluster", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_cluster_input(ClusterId = ClusterId)
    output <- describe_cluster_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This API is deprecated and will eventually be removed
#'
#' This API is deprecated and will eventually be removed. We recommend you use ListClusters, DescribeCluster, ListSteps, ListInstanceGroups and ListBootstrapActions instead.
#' 
#' DescribeJobFlows returns a list of job flows that match all of the supplied parameters. The parameters can include a list of job flow IDs, job flow states, and restrictions on job flow creation date and time.
#' 
#' Regardless of supplied parameters, only job flows created within the last two months are returned.
#' 
#' If no parameters are supplied, then job flows matching either of the following criteria are returned:
#' 
#' -   Job flows created and completed in the last two weeks
#' 
#' -   Job flows created within the last two months that are in one of the following states: `RUNNING`, `WAITING`, `SHUTTING_DOWN`, `STARTING`
#' 
#' Amazon EMR can return a maximum of 512 job flow descriptions.
#'
#' @param CreatedAfter Return only job flows created after this date and time.
#' @param CreatedBefore Return only job flows created before this date and time.
#' @param JobFlowIds Return only job flows whose job flow ID is contained in this list.
#' @param JobFlowStates Return only job flows whose state is contained in this list.
#'
#' @examples
#'
#' @export
describe_job_flows <- function (CreatedAfter = NULL, CreatedBefore = NULL, 
    JobFlowIds = NULL, JobFlowStates = NULL) 
{
    op <- Operation(name = "DescribeJobFlows", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_job_flows_input(CreatedAfter = CreatedAfter, 
        CreatedBefore = CreatedBefore, JobFlowIds = JobFlowIds, 
        JobFlowStates = JobFlowStates)
    output <- describe_job_flows_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides the details of a security configuration by returning the configuration JSON
#'
#' Provides the details of a security configuration by returning the configuration JSON.
#'
#' @param Name The name of the security configuration.
#'
#' @examples
#'
#' @export
describe_security_configuration <- function (Name) 
{
    op <- Operation(name = "DescribeSecurityConfiguration", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_security_configuration_input(Name = Name)
    output <- describe_security_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides more detail about the cluster step
#'
#' Provides more detail about the cluster step.
#'
#' @param ClusterId The identifier of the cluster with steps to describe.
#' @param StepId The identifier of the step to describe.
#'
#' @examples
#'
#' @export
describe_step <- function (ClusterId, StepId) 
{
    op <- Operation(name = "DescribeStep", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_step_input(ClusterId = ClusterId, StepId = StepId)
    output <- describe_step_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides information about the bootstrap actions associated with a cluster
#'
#' Provides information about the bootstrap actions associated with a cluster.
#'
#' @param ClusterId The cluster identifier for the bootstrap actions to list.
#' @param Marker The pagination token that indicates the next set of results to retrieve.
#'
#' @examples
#'
#' @export
list_bootstrap_actions <- function (ClusterId, Marker = NULL) 
{
    op <- Operation(name = "ListBootstrapActions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_bootstrap_actions_input(ClusterId = ClusterId, 
        Marker = Marker)
    output <- list_bootstrap_actions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides the status of all clusters visible to this AWS account
#'
#' Provides the status of all clusters visible to this AWS account. Allows you to filter the list of clusters based on certain criteria; for example, filtering by cluster creation date and time or by status. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListClusters calls.
#'
#' @param CreatedAfter The creation date and time beginning value filter for listing clusters.
#' @param CreatedBefore The creation date and time end value filter for listing clusters.
#' @param ClusterStates The cluster state filters to apply when listing clusters.
#' @param Marker The pagination token that indicates the next set of results to retrieve.
#'
#' @examples
#'
#' @export
list_clusters <- function (CreatedAfter = NULL, CreatedBefore = NULL, 
    ClusterStates = NULL, Marker = NULL) 
{
    op <- Operation(name = "ListClusters", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_clusters_input(CreatedAfter = CreatedAfter, 
        CreatedBefore = CreatedBefore, ClusterStates = ClusterStates, 
        Marker = Marker)
    output <- list_clusters_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all available details about the instance fleets in a cluster
#'
#' Lists all available details about the instance fleets in a cluster.
#' 
#' The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.
#'
#' @param ClusterId The unique identifier of the cluster.
#' @param Marker The pagination token that indicates the next set of results to retrieve.
#'
#' @examples
#'
#' @export
list_instance_fleets <- function (ClusterId, Marker = NULL) 
{
    op <- Operation(name = "ListInstanceFleets", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_instance_fleets_input(ClusterId = ClusterId, 
        Marker = Marker)
    output <- list_instance_fleets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides all available details about the instance groups in a cluster
#'
#' Provides all available details about the instance groups in a cluster.
#'
#' @param ClusterId The identifier of the cluster for which to list the instance groups.
#' @param Marker The pagination token that indicates the next set of results to retrieve.
#'
#' @examples
#'
#' @export
list_instance_groups <- function (ClusterId, Marker = NULL) 
{
    op <- Operation(name = "ListInstanceGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_instance_groups_input(ClusterId = ClusterId, 
        Marker = Marker)
    output <- list_instance_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides information for all active EC2 instances and EC2 instances terminated in the last 30 days, up to a maximum of 2,000
#'
#' Provides information for all active EC2 instances and EC2 instances terminated in the last 30 days, up to a maximum of 2,000. EC2 instances in any of the following states are considered active: AWAITING\_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING.
#'
#' @param ClusterId The identifier of the cluster for which to list the instances.
#' @param InstanceGroupId The identifier of the instance group for which to list the instances.
#' @param InstanceGroupTypes The type of instance group for which to list the instances.
#' @param InstanceFleetId The unique identifier of the instance fleet.
#' @param InstanceFleetType The node type of the instance fleet. For example MASTER, CORE, or TASK.
#' @param InstanceStates A list of instance states that will filter the instances returned with this request.
#' @param Marker The pagination token that indicates the next set of results to retrieve.
#'
#' @examples
#'
#' @export
list_instances <- function (ClusterId, InstanceGroupId = NULL, 
    InstanceGroupTypes = NULL, InstanceFleetId = NULL, InstanceFleetType = NULL, 
    InstanceStates = NULL, Marker = NULL) 
{
    op <- Operation(name = "ListInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_instances_input(ClusterId = ClusterId, InstanceGroupId = InstanceGroupId, 
        InstanceGroupTypes = InstanceGroupTypes, InstanceFleetId = InstanceFleetId, 
        InstanceFleetType = InstanceFleetType, InstanceStates = InstanceStates, 
        Marker = Marker)
    output <- list_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all the security configurations visible to this account, providing their creation dates and times, and their names
#'
#' Lists all the security configurations visible to this account, providing their creation dates and times, and their names. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListSecurityConfigurations calls.
#'
#' @param Marker The pagination token that indicates the set of results to retrieve.
#'
#' @examples
#'
#' @export
list_security_configurations <- function (Marker = NULL) 
{
    op <- Operation(name = "ListSecurityConfigurations", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_security_configurations_input(Marker = Marker)
    output <- list_security_configurations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides a list of steps for the cluster in reverse order unless you specify stepIds with the request
#'
#' Provides a list of steps for the cluster in reverse order unless you specify stepIds with the request.
#'
#' @param ClusterId The identifier of the cluster for which to list the steps.
#' @param StepStates The filter to limit the step list based on certain states.
#' @param StepIds The filter to limit the step list based on the identifier of the steps.
#' @param Marker The pagination token that indicates the next set of results to retrieve.
#'
#' @examples
#'
#' @export
list_steps <- function (ClusterId, StepStates = NULL, StepIds = NULL, 
    Marker = NULL) 
{
    op <- Operation(name = "ListSteps", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_steps_input(ClusterId = ClusterId, StepStates = StepStates, 
        StepIds = StepIds, Marker = Marker)
    output <- list_steps_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the target On-Demand and target Spot capacities for the instance fleet with the specified InstanceFleetID within the cluster specified using ClusterID
#'
#' Modifies the target On-Demand and target Spot capacities for the instance fleet with the specified InstanceFleetID within the cluster specified using ClusterID. The call either succeeds or fails atomically.
#' 
#' The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.
#'
#' @param ClusterId The unique identifier of the cluster.
#' @param InstanceFleet The unique identifier of the instance fleet.
#'
#' @examples
#'
#' @export
modify_instance_fleet <- function (ClusterId, InstanceFleet) 
{
    op <- Operation(name = "ModifyInstanceFleet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_instance_fleet_input(ClusterId = ClusterId, 
        InstanceFleet = InstanceFleet)
    output <- modify_instance_fleet_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' ModifyInstanceGroups modifies the number of nodes and configuration settings of an instance group
#'
#' ModifyInstanceGroups modifies the number of nodes and configuration settings of an instance group. The input parameters include the new target instance count for the group and the instance group ID. The call will either succeed or fail atomically.
#'
#' @param ClusterId The ID of the cluster to which the instance group belongs.
#' @param InstanceGroups Instance groups to change.
#'
#' @examples
#'
#' @export
modify_instance_groups <- function (ClusterId = NULL, InstanceGroups = NULL) 
{
    op <- Operation(name = "ModifyInstanceGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_instance_groups_input(ClusterId = ClusterId, 
        InstanceGroups = InstanceGroups)
    output <- modify_instance_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates or updates an automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster
#'
#' Creates or updates an automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric.
#'
#' @param ClusterId Specifies the ID of a cluster. The instance group to which the automatic scaling policy is applied is within this cluster.
#' @param InstanceGroupId Specifies the ID of the instance group to which the automatic scaling policy is applied.
#' @param AutoScalingPolicy Specifies the definition of the automatic scaling policy.
#'
#' @examples
#'
#' @export
put_auto_scaling_policy <- function (ClusterId, InstanceGroupId, 
    AutoScalingPolicy) 
{
    op <- Operation(name = "PutAutoScalingPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_auto_scaling_policy_input(ClusterId = ClusterId, 
        InstanceGroupId = InstanceGroupId, AutoScalingPolicy = AutoScalingPolicy)
    output <- put_auto_scaling_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes an automatic scaling policy from a specified instance group within an EMR cluster
#'
#' Removes an automatic scaling policy from a specified instance group within an EMR cluster.
#'
#' @param ClusterId Specifies the ID of a cluster. The instance group to which the automatic scaling policy is applied is within this cluster.
#' @param InstanceGroupId Specifies the ID of the instance group to which the scaling policy is applied.
#'
#' @examples
#'
#' @export
remove_auto_scaling_policy <- function (ClusterId, InstanceGroupId) 
{
    op <- Operation(name = "RemoveAutoScalingPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- remove_auto_scaling_policy_input(ClusterId = ClusterId, 
        InstanceGroupId = InstanceGroupId)
    output <- remove_auto_scaling_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes tags from an Amazon EMR resource
#'
#' Removes tags from an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see [Tag Clusters](http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html).
#' 
#' The following example removes the stack tag with value Prod from a cluster:
#'
#' @param ResourceId The Amazon EMR resource identifier from which tags will be removed. This value must be a cluster identifier.
#' @param TagKeys A list of tag keys to remove from a resource.
#'
#' @examples
#'
#' @export
remove_tags <- function (ResourceId, TagKeys) 
{
    op <- Operation(name = "RemoveTags", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- remove_tags_input(ResourceId = ResourceId, TagKeys = TagKeys)
    output <- remove_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' RunJobFlow creates and starts running a new cluster (job flow)
#'
#' RunJobFlow creates and starts running a new cluster (job flow). The cluster runs the steps specified. After the steps complete, the cluster stops and the HDFS partition is lost. To prevent loss of data, configure the last step of the job flow to store results in Amazon S3. If the JobFlowInstancesConfig `KeepJobFlowAliveWhenNoSteps` parameter is set to `TRUE`, the cluster transitions to the WAITING state rather than shutting down after the steps have completed.
#' 
#' For additional protection, you can set the JobFlowInstancesConfig `TerminationProtected` parameter to `TRUE` to lock the cluster and prevent it from being terminated by API call, user intervention, or in the event of a job flow error.
#' 
#' A maximum of 256 steps are allowed in each job flow.
#' 
#' If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using the SSH shell to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see [Add More than 256 Steps to a Cluster](http://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html) in the *Amazon EMR Management Guide*.
#' 
#' For long running clusters, we recommend that you periodically store your results.
#' 
#' The instance fleets configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. The RunJobFlow request can contain InstanceFleets parameters or InstanceGroups parameters, but not both.
#'
#' @param Name The name of the job flow.
#' @param Instances A specification of the number and type of Amazon EC2 instances.
#' @param LogUri The location in Amazon S3 to write the log files of the job flow. If a value is not provided, logs are not created.
#' @param AdditionalInfo A JSON string for selecting additional features.
#' @param AmiVersion Applies only to Amazon EMR AMI versions 3.x and 2.x. For Amazon EMR releases 4.0 and later, `ReleaseLabel` is used. To specify a custom AMI, use `CustomAmiID`.
#' @param ReleaseLabel The Amazon EMR release label, which determines the version of open-source application packages installed on the cluster. Release labels are in the form `emr-x.x.x`, where x.x.x is an Amazon EMR release version, for example, `emr-5.14.0`. For more information about Amazon EMR release versions and included application versions and features, see <http://docs.aws.amazon.com/emr/latest/ReleaseGuide/>. The release label applies only to Amazon EMR releases versions 4.x and later. Earlier versions use `AmiVersion`.
#' @param Steps A list of steps to run.
#' @param BootstrapActions A list of bootstrap actions to run before Hadoop starts on the cluster nodes.
#' @param SupportedProducts For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and later, use Applications.
#' 
#' A list of strings that indicates third-party software to use. For more information, see the [Amazon EMR Developer Guide](http://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf). Currently supported values are:
#' 
#' -   \"mapr-m3\" - launch the job flow using MapR M3 Edition.
#' 
#' -   \"mapr-m5\" - launch the job flow using MapR M5 Edition.
#' @param NewSupportedProducts For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and later, use Applications.
#' 
#' A list of strings that indicates third-party software to use with the job flow that accepts a user argument list. EMR accepts and forwards the argument list to the corresponding installation script as bootstrap action arguments. For more information, see \"Launch a Job Flow on the MapR Distribution for Hadoop\" in the [Amazon EMR Developer Guide](http://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf). Supported values are:
#' 
#' -   \"mapr-m3\" - launch the cluster using MapR M3 Edition.
#' 
#' -   \"mapr-m5\" - launch the cluster using MapR M5 Edition.
#' 
#' -   \"mapr\" with the user arguments specifying \"\--edition,m3\" or \"\--edition,m5\" - launch the job flow using MapR M3 or M5 Edition respectively.
#' 
#' -   \"mapr-m7\" - launch the cluster using MapR M7 Edition.
#' 
#' -   \"hunk\" - launch the cluster with the Hunk Big Data Analtics Platform.
#' 
#' -   \"hue\"- launch the cluster with Hue installed.
#' 
#' -   \"spark\" - launch the cluster with Apache Spark installed.
#' 
#' -   \"ganglia\" - launch the cluster with the Ganglia Monitoring System installed.
#' @param Applications For Amazon EMR releases 4.0 and later. A list of applications for the cluster. Valid values are: \"Hadoop\", \"Hive\", \"Mahout\", \"Pig\", and \"Spark.\" They are case insensitive.
#' @param Configurations For Amazon EMR releases 4.0 and later. The list of configurations supplied for the EMR cluster you are creating.
#' @param VisibleToAllUsers Whether the cluster is visible to all IAM users of the AWS account associated with the cluster. If this value is set to `true`, all IAM users of that AWS account can view and (if they have the proper policy permissions set) manage the cluster. If it is set to `false`, only the IAM user that created the cluster can view and manage it.
#' @param JobFlowRole Also called instance profile and EC2 role. An IAM role for an EMR cluster. The EC2 instances of the cluster assume this role. The default role is `EMR_EC2_DefaultRole`. In order to use the default role, you must have already created it using the CLI or console.
#' @param ServiceRole The IAM role that will be assumed by the Amazon EMR service to access AWS resources on your behalf.
#' @param Tags A list of tags to associate with a cluster and propagate to Amazon EC2 instances.
#' @param SecurityConfiguration The name of a security configuration to apply to the cluster.
#' @param AutoScalingRole An IAM role for automatic scaling policies. The default role is `EMR_AutoScaling_DefaultRole`. The IAM role provides permissions that the automatic scaling feature requires to launch and terminate EC2 instances in an instance group.
#' @param ScaleDownBehavior Specifies the way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an instance group is resized. `TERMINATE_AT_INSTANCE_HOUR` indicates that Amazon EMR terminates nodes at the instance-hour boundary, regardless of when the request to terminate the instance was submitted. This option is only available with Amazon EMR 5.1.0 and later and is the default for clusters created using that version. `TERMINATE_AT_TASK_COMPLETION` indicates that Amazon EMR blacklists and drains tasks from nodes before terminating the Amazon EC2 instances, regardless of the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes first and blocks instance termination if it could lead to HDFS corruption. `TERMINATE_AT_TASK_COMPLETION` available only in Amazon EMR version 4.1.0 and later, and is the default for versions of Amazon EMR earlier than 5.1.0.
#' @param CustomAmiId Available only in Amazon EMR version 5.7.0 and later. The ID of a custom Amazon EBS-backed Linux AMI. If specified, Amazon EMR uses this AMI when it launches cluster EC2 instances. For more information about custom AMIs in Amazon EMR, see [Using a Custom AMI](http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-custom-ami.html) in the *Amazon EMR Management Guide*. If omitted, the cluster uses the base Linux AMI for the `ReleaseLabel` specified. For Amazon EMR versions 2.x and 3.x, use `AmiVersion` instead.
#' 
#' For information about creating a custom AMI, see [Creating an Amazon EBS-Backed Linux AMI](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html) in the *Amazon Elastic Compute Cloud User Guide for Linux Instances*. For information about finding an AMI ID, see [Finding a Linux AMI](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html).
#' @param EbsRootVolumeSize The size, in GiB, of the EBS root device volume of the Linux AMI that is used for each EC2 instance. Available in Amazon EMR version 4.x and later.
#' @param RepoUpgradeOnBoot Applies only when `CustomAmiID` is used. Specifies which updates from the Amazon Linux AMI package repositories to apply automatically when the instance boots using the AMI. If omitted, the default is `SECURITY`, which indicates that only security updates are applied. If `NONE` is specified, no updates are applied, and all updates must be applied manually.
#' @param KerberosAttributes Attributes for Kerberos configuration when Kerberos authentication is enabled using a security configuration. For more information see [Use Kerberos Authentication](http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html) in the *EMR Management Guide*.
#'
#' @examples
#'
#' @export
run_job_flow <- function (Name, Instances, LogUri = NULL, AdditionalInfo = NULL, 
    AmiVersion = NULL, ReleaseLabel = NULL, Steps = NULL, BootstrapActions = NULL, 
    SupportedProducts = NULL, NewSupportedProducts = NULL, Applications = NULL, 
    Configurations = NULL, VisibleToAllUsers = NULL, JobFlowRole = NULL, 
    ServiceRole = NULL, Tags = NULL, SecurityConfiguration = NULL, 
    AutoScalingRole = NULL, ScaleDownBehavior = NULL, CustomAmiId = NULL, 
    EbsRootVolumeSize = NULL, RepoUpgradeOnBoot = NULL, KerberosAttributes = NULL) 
{
    op <- Operation(name = "RunJobFlow", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- run_job_flow_input(Name = Name, Instances = Instances, 
        LogUri = LogUri, AdditionalInfo = AdditionalInfo, AmiVersion = AmiVersion, 
        ReleaseLabel = ReleaseLabel, Steps = Steps, BootstrapActions = BootstrapActions, 
        SupportedProducts = SupportedProducts, NewSupportedProducts = NewSupportedProducts, 
        Applications = Applications, Configurations = Configurations, 
        VisibleToAllUsers = VisibleToAllUsers, JobFlowRole = JobFlowRole, 
        ServiceRole = ServiceRole, Tags = Tags, SecurityConfiguration = SecurityConfiguration, 
        AutoScalingRole = AutoScalingRole, ScaleDownBehavior = ScaleDownBehavior, 
        CustomAmiId = CustomAmiId, EbsRootVolumeSize = EbsRootVolumeSize, 
        RepoUpgradeOnBoot = RepoUpgradeOnBoot, KerberosAttributes = KerberosAttributes)
    output <- run_job_flow_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' SetTerminationProtection locks a cluster (job flow) so the EC2 instances in the cluster cannot be terminated by user intervention, an API call, or in the event of a job-flow error
#'
#' SetTerminationProtection locks a cluster (job flow) so the EC2 instances in the cluster cannot be terminated by user intervention, an API call, or in the event of a job-flow error. The cluster still terminates upon successful completion of the job flow. Calling `SetTerminationProtection` on a cluster is similar to calling the Amazon EC2 `DisableAPITermination` API on all EC2 instances in a cluster.
#' 
#' `SetTerminationProtection` is used to prevent accidental termination of a cluster and to ensure that in the event of an error, the instances persist so that you can recover any data stored in their ephemeral instance storage.
#' 
#' To terminate a cluster that has been locked by setting `SetTerminationProtection` to `true`, you must first unlock the job flow by a subsequent call to `SetTerminationProtection` in which you set the value to `false`.
#' 
#' For more information, see[Managing Cluster Termination](http://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html) in the *Amazon EMR Management Guide*.
#'
#' @param JobFlowIds A list of strings that uniquely identify the clusters to protect. This identifier is returned by RunJobFlow and can also be obtained from DescribeJobFlows .
#' @param TerminationProtected A Boolean that indicates whether to protect the cluster and prevent the Amazon EC2 instances in the cluster from shutting down due to API calls, user intervention, or job-flow error.
#'
#' @examples
#'
#' @export
set_termination_protection <- function (JobFlowIds, TerminationProtected) 
{
    op <- Operation(name = "SetTerminationProtection", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- set_termination_protection_input(JobFlowIds = JobFlowIds, 
        TerminationProtected = TerminationProtected)
    output <- set_termination_protection_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets whether all AWS Identity and Access Management (IAM) users under your account can access the specified clusters (job flows)
#'
#' Sets whether all AWS Identity and Access Management (IAM) users under your account can access the specified clusters (job flows). This action works on running clusters. You can also set the visibility of a cluster when you launch it using the `VisibleToAllUsers` parameter of RunJobFlow. The SetVisibleToAllUsers action can be called only by an IAM user who created the cluster or the AWS account that owns the cluster.
#'
#' @param JobFlowIds Identifiers of the job flows to receive the new visibility setting.
#' @param VisibleToAllUsers Whether the specified clusters are visible to all IAM users of the AWS account associated with the cluster. If this value is set to True, all IAM users of that AWS account can view and, if they have the proper IAM policy permissions set, manage the clusters. If it is set to False, only the IAM user that created a cluster can view and manage it.
#'
#' @examples
#'
#' @export
set_visible_to_all_users <- function (JobFlowIds, VisibleToAllUsers) 
{
    op <- Operation(name = "SetVisibleToAllUsers", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- set_visible_to_all_users_input(JobFlowIds = JobFlowIds, 
        VisibleToAllUsers = VisibleToAllUsers)
    output <- set_visible_to_all_users_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' TerminateJobFlows shuts a list of clusters (job flows) down
#'
#' TerminateJobFlows shuts a list of clusters (job flows) down. When a job flow is shut down, any step not yet completed is canceled and the EC2 instances on which the cluster is running are stopped. Any log files not already saved are uploaded to Amazon S3 if a LogUri was specified when the cluster was created.
#' 
#' The maximum number of clusters allowed is 10. The call to `TerminateJobFlows` is asynchronous. Depending on the configuration of the cluster, it may take up to 1-5 minutes for the cluster to completely terminate and release allocated resources, such as Amazon EC2 instances.
#'
#' @param JobFlowIds A list of job flows to be shutdown.
#'
#' @examples
#'
#' @export
terminate_job_flows <- function (JobFlowIds) 
{
    op <- Operation(name = "TerminateJobFlows", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- terminate_job_flows_input(JobFlowIds = JobFlowIds)
    output <- terminate_job_flows_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
