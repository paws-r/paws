#' Adds tags to on-premises instances
#'
#' Adds tags to on-premises instances.
#'
#' @param tags The tag key-value pairs to add to the on-premises instances.
#' 
#' Keys and values are both required. Keys cannot be null or empty strings. Value-only tags are not allowed.
#' @param instanceNames The names of the on-premises instances to which to add tags.
#'
#' @examples
#'
#' @export
add_tags_to_on_premises_instances <- function (tags, instanceNames) 
{
    op <- Operation(name = "AddTagsToOnPremisesInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- add_tags_to_on_premises_instances_input(tags = tags, 
        instanceNames = instanceNames)
    output <- add_tags_to_on_premises_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about one or more application revisions
#'
#' Gets information about one or more application revisions.
#'
#' @param applicationName The name of an AWS CodeDeploy application about which to get revision information.
#' @param revisions Information to get about the application revisions, including type and location.
#'
#' @examples
#'
#' @export
batch_get_application_revisions <- function (applicationName, 
    revisions) 
{
    op <- Operation(name = "BatchGetApplicationRevisions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_get_application_revisions_input(applicationName = applicationName, 
        revisions = revisions)
    output <- batch_get_application_revisions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about one or more applications
#'
#' Gets information about one or more applications.
#'
#' @param applicationNames A list of application names separated by spaces.
#'
#' @examples
#'
#' @export
batch_get_applications <- function (applicationNames) 
{
    op <- Operation(name = "BatchGetApplications", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_get_applications_input(applicationNames = applicationNames)
    output <- batch_get_applications_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about one or more deployment groups
#'
#' Gets information about one or more deployment groups.
#'
#' @param applicationName The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.
#' @param deploymentGroupNames The deployment groups\' names.
#'
#' @examples
#'
#' @export
batch_get_deployment_groups <- function (applicationName, deploymentGroupNames) 
{
    op <- Operation(name = "BatchGetDeploymentGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_get_deployment_groups_input(applicationName = applicationName, 
        deploymentGroupNames = deploymentGroupNames)
    output <- batch_get_deployment_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about one or more instance that are part of a deployment group
#'
#' Gets information about one or more instance that are part of a deployment group.
#'
#' @param deploymentId The unique ID of a deployment.
#' @param instanceIds The unique IDs of instances in the deployment group.
#'
#' @examples
#'
#' @export
batch_get_deployment_instances <- function (deploymentId, instanceIds) 
{
    op <- Operation(name = "BatchGetDeploymentInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_get_deployment_instances_input(deploymentId = deploymentId, 
        instanceIds = instanceIds)
    output <- batch_get_deployment_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about one or more deployments
#'
#' Gets information about one or more deployments.
#'
#' @param deploymentIds A list of deployment IDs, separated by spaces.
#'
#' @examples
#'
#' @export
batch_get_deployments <- function (deploymentIds) 
{
    op <- Operation(name = "BatchGetDeployments", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_get_deployments_input(deploymentIds = deploymentIds)
    output <- batch_get_deployments_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about one or more on-premises instances
#'
#' Gets information about one or more on-premises instances.
#'
#' @param instanceNames The names of the on-premises instances about which to get information.
#'
#' @examples
#'
#' @export
batch_get_on_premises_instances <- function (instanceNames) 
{
    op <- Operation(name = "BatchGetOnPremisesInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_get_on_premises_instances_input(instanceNames = instanceNames)
    output <- batch_get_on_premises_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' For a blue/green deployment, starts the process of rerouting traffic from instances in the original environment to instances in the replacement environment without waiting for a specified wait time to elapse
#'
#' For a blue/green deployment, starts the process of rerouting traffic from instances in the original environment to instances in the replacement environment without waiting for a specified wait time to elapse. (Traffic rerouting, which is achieved by registering instances in the replacement environment with the load balancer, can start as soon as all instances have a status of Ready.)
#'
#' @param deploymentId The deployment ID of the blue/green deployment for which you want to start rerouting traffic to the replacement environment.
#'
#' @examples
#'
#' @export
continue_deployment <- function (deploymentId = NULL) 
{
    op <- Operation(name = "ContinueDeployment", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- continue_deployment_input(deploymentId = deploymentId)
    output <- continue_deployment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an application
#'
#' Creates an application.
#'
#' @param applicationName The name of the application. This name must be unique with the applicable IAM user or AWS account.
#' @param computePlatform The destination platform type for the deployment (`Lambda` or `Server`).
#'
#' @examples
#'
#' @export
create_application <- function (applicationName, computePlatform = NULL) 
{
    op <- Operation(name = "CreateApplication", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_application_input(applicationName = applicationName, 
        computePlatform = computePlatform)
    output <- create_application_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deploys an application revision through the specified deployment group
#'
#' Deploys an application revision through the specified deployment group.
#'
#' @param applicationName The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.
#' @param deploymentGroupName The name of the deployment group.
#' @param revision The type and location of the revision to deploy.
#' @param deploymentConfigName The name of a deployment configuration associated with the applicable IAM user or AWS account.
#' 
#' If not specified, the value configured in the deployment group will be used as the default. If the deployment group does not have a deployment configuration associated with it, then CodeDeployDefault.OneAtATime will be used by default.
#' @param description A comment about the deployment.
#' @param ignoreApplicationStopFailures If set to true, then if the deployment causes the ApplicationStop deployment lifecycle event to an instance to fail, the deployment to that instance will not be considered to have failed at that point and will continue on to the BeforeInstall deployment lifecycle event.
#' 
#' If set to false or not specified, then if the deployment causes the ApplicationStop deployment lifecycle event to fail to an instance, the deployment to that instance will stop, and the deployment to that instance will be considered to have failed.
#' @param targetInstances Information about the instances that will belong to the replacement environment in a blue/green deployment.
#' @param autoRollbackConfiguration Configuration information for an automatic rollback that is added when a deployment is created.
#' @param updateOutdatedInstancesOnly Indicates whether to deploy to all instances or only to instances that are not running the latest application revision.
#' @param fileExistsBehavior Information about how AWS CodeDeploy handles files that already exist in a deployment target location but weren\'t part of the previous successful deployment.
#' 
#' The fileExistsBehavior parameter takes any of the following values:
#' 
#' -   DISALLOW: The deployment fails. This is also the default behavior if no option is specified.
#' 
#' -   OVERWRITE: The version of the file from the application revision currently being deployed replaces the version already on the instance.
#' 
#' -   RETAIN: The version of the file already on the instance is kept and used as part of the new deployment.
#'
#' @examples
#'
#' @export
create_deployment <- function (applicationName, deploymentGroupName = NULL, 
    revision = NULL, deploymentConfigName = NULL, description = NULL, 
    ignoreApplicationStopFailures = NULL, targetInstances = NULL, 
    autoRollbackConfiguration = NULL, updateOutdatedInstancesOnly = NULL, 
    fileExistsBehavior = NULL) 
{
    op <- Operation(name = "CreateDeployment", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_deployment_input(applicationName = applicationName, 
        deploymentGroupName = deploymentGroupName, revision = revision, 
        deploymentConfigName = deploymentConfigName, description = description, 
        ignoreApplicationStopFailures = ignoreApplicationStopFailures, 
        targetInstances = targetInstances, autoRollbackConfiguration = autoRollbackConfiguration, 
        updateOutdatedInstancesOnly = updateOutdatedInstancesOnly, 
        fileExistsBehavior = fileExistsBehavior)
    output <- create_deployment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a deployment configuration
#'
#' Creates a deployment configuration.
#'
#' @param deploymentConfigName The name of the deployment configuration to create.
#' @param minimumHealthyHosts The minimum number of healthy instances that should be available at any time during the deployment. There are two parameters expected in the input: type and value.
#' 
#' The type parameter takes either of the following values:
#' 
#' -   HOST\_COUNT: The value parameter represents the minimum number of healthy instances as an absolute value.
#' 
#' -   FLEET\_PERCENT: The value parameter represents the minimum number of healthy instances as a percentage of the total number of instances in the deployment. If you specify FLEET\_PERCENT, at the start of the deployment, AWS CodeDeploy converts the percentage to the equivalent number of instance and rounds up fractional instances.
#' 
#' The value parameter takes an integer.
#' 
#' For example, to set a minimum of 95% healthy instance, specify a type of FLEET\_PERCENT and a value of 95.
#' @param trafficRoutingConfig The configuration that specifies how the deployment traffic will be routed.
#' @param computePlatform The destination platform type for the deployment (`Lambda` or `Server`\>).
#'
#' @examples
#'
#' @export
create_deployment_config <- function (deploymentConfigName, minimumHealthyHosts = NULL, 
    trafficRoutingConfig = NULL, computePlatform = NULL) 
{
    op <- Operation(name = "CreateDeploymentConfig", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_deployment_config_input(deploymentConfigName = deploymentConfigName, 
        minimumHealthyHosts = minimumHealthyHosts, trafficRoutingConfig = trafficRoutingConfig, 
        computePlatform = computePlatform)
    output <- create_deployment_config_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a deployment group to which application revisions will be deployed
#'
#' Creates a deployment group to which application revisions will be deployed.
#'
#' @param applicationName The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.
#' @param deploymentGroupName The name of a new deployment group for the specified application.
#' @param serviceRoleArn A service role ARN that allows AWS CodeDeploy to act on the user\'s behalf when interacting with AWS services.
#' @param deploymentConfigName If specified, the deployment configuration name can be either one of the predefined configurations provided with AWS CodeDeploy or a custom deployment configuration that you create by calling the create deployment configuration operation.
#' 
#' CodeDeployDefault.OneAtATime is the default deployment configuration. It is used if a configuration isn\'t specified for the deployment or the deployment group.
#' 
#' For more information about the predefined deployment configurations in AWS CodeDeploy, see [Working with Deployment Groups in AWS CodeDeploy](http://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html) in the AWS CodeDeploy User Guide.
#' @param ec2TagFilters The Amazon EC2 tags on which to filter. The deployment group will include EC2 instances with any of the specified tags. Cannot be used in the same call as ec2TagSet.
#' @param onPremisesInstanceTagFilters The on-premises instance tags on which to filter. The deployment group will include on-premises instances with any of the specified tags. Cannot be used in the same call as OnPremisesTagSet.
#' @param autoScalingGroups A list of associated Auto Scaling groups.
#' @param triggerConfigurations Information about triggers to create when the deployment group is created. For examples, see [Create a Trigger for an AWS CodeDeploy Event](http://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-sns.html) in the AWS CodeDeploy User Guide.
#' @param alarmConfiguration Information to add about Amazon CloudWatch alarms when the deployment group is created.
#' @param autoRollbackConfiguration Configuration information for an automatic rollback that is added when a deployment group is created.
#' @param deploymentStyle Information about the type of deployment, in-place or blue/green, that you want to run and whether to route deployment traffic behind a load balancer.
#' @param blueGreenDeploymentConfiguration Information about blue/green deployment options for a deployment group.
#' @param loadBalancerInfo Information about the load balancer used in a deployment.
#' @param ec2TagSet Information about groups of tags applied to EC2 instances. The deployment group will include only EC2 instances identified by all the tag groups. Cannot be used in the same call as ec2TagFilters.
#' @param onPremisesTagSet Information about groups of tags applied to on-premises instances. The deployment group will include only on-premises instances identified by all the tag groups. Cannot be used in the same call as onPremisesInstanceTagFilters.
#'
#' @examples
#'
#' @export
create_deployment_group <- function (applicationName, deploymentGroupName, 
    serviceRoleArn, deploymentConfigName = NULL, ec2TagFilters = NULL, 
    onPremisesInstanceTagFilters = NULL, autoScalingGroups = NULL, 
    triggerConfigurations = NULL, alarmConfiguration = NULL, 
    autoRollbackConfiguration = NULL, deploymentStyle = NULL, 
    blueGreenDeploymentConfiguration = NULL, loadBalancerInfo = NULL, 
    ec2TagSet = NULL, onPremisesTagSet = NULL) 
{
    op <- Operation(name = "CreateDeploymentGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_deployment_group_input(applicationName = applicationName, 
        deploymentGroupName = deploymentGroupName, serviceRoleArn = serviceRoleArn, 
        deploymentConfigName = deploymentConfigName, ec2TagFilters = ec2TagFilters, 
        onPremisesInstanceTagFilters = onPremisesInstanceTagFilters, 
        autoScalingGroups = autoScalingGroups, triggerConfigurations = triggerConfigurations, 
        alarmConfiguration = alarmConfiguration, autoRollbackConfiguration = autoRollbackConfiguration, 
        deploymentStyle = deploymentStyle, blueGreenDeploymentConfiguration = blueGreenDeploymentConfiguration, 
        loadBalancerInfo = loadBalancerInfo, ec2TagSet = ec2TagSet, 
        onPremisesTagSet = onPremisesTagSet)
    output <- create_deployment_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an application
#'
#' Deletes an application.
#'
#' @param applicationName The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.
#'
#' @examples
#'
#' @export
delete_application <- function (applicationName) 
{
    op <- Operation(name = "DeleteApplication", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_application_input(applicationName = applicationName)
    output <- delete_application_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a deployment configuration
#'
#' Deletes a deployment configuration.
#' 
#' A deployment configuration cannot be deleted if it is currently in use. Predefined configurations cannot be deleted.
#'
#' @param deploymentConfigName The name of a deployment configuration associated with the applicable IAM user or AWS account.
#'
#' @examples
#'
#' @export
delete_deployment_config <- function (deploymentConfigName) 
{
    op <- Operation(name = "DeleteDeploymentConfig", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_deployment_config_input(deploymentConfigName = deploymentConfigName)
    output <- delete_deployment_config_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a deployment group
#'
#' Deletes a deployment group.
#'
#' @param applicationName The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.
#' @param deploymentGroupName The name of an existing deployment group for the specified application.
#'
#' @examples
#'
#' @export
delete_deployment_group <- function (applicationName, deploymentGroupName) 
{
    op <- Operation(name = "DeleteDeploymentGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_deployment_group_input(applicationName = applicationName, 
        deploymentGroupName = deploymentGroupName)
    output <- delete_deployment_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a GitHub account connection
#'
#' Deletes a GitHub account connection.
#'
#' @param tokenName The name of the GitHub account connection to delete.
#'
#' @examples
#'
#' @export
delete_git_hub_account_token <- function (tokenName = NULL) 
{
    op <- Operation(name = "DeleteGitHubAccountToken", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_git_hub_account_token_input(tokenName = tokenName)
    output <- delete_git_hub_account_token_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deregisters an on-premises instance
#'
#' Deregisters an on-premises instance.
#'
#' @param instanceName The name of the on-premises instance to deregister.
#'
#' @examples
#'
#' @export
deregister_on_premises_instance <- function (instanceName) 
{
    op <- Operation(name = "DeregisterOnPremisesInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- deregister_on_premises_instance_input(instanceName = instanceName)
    output <- deregister_on_premises_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about an application
#'
#' Gets information about an application.
#'
#' @param applicationName The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.
#'
#' @examples
#'
#' @export
get_application <- function (applicationName) 
{
    op <- Operation(name = "GetApplication", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_application_input(applicationName = applicationName)
    output <- get_application_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about an application revision
#'
#' Gets information about an application revision.
#'
#' @param applicationName The name of the application that corresponds to the revision.
#' @param revision Information about the application revision to get, including type and location.
#'
#' @examples
#'
#' @export
get_application_revision <- function (applicationName, revision) 
{
    op <- Operation(name = "GetApplicationRevision", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_application_revision_input(applicationName = applicationName, 
        revision = revision)
    output <- get_application_revision_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about a deployment
#'
#' Gets information about a deployment.
#'
#' @param deploymentId A deployment ID associated with the applicable IAM user or AWS account.
#'
#' @examples
#'
#' @export
get_deployment <- function (deploymentId) 
{
    op <- Operation(name = "GetDeployment", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_deployment_input(deploymentId = deploymentId)
    output <- get_deployment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about a deployment configuration
#'
#' Gets information about a deployment configuration.
#'
#' @param deploymentConfigName The name of a deployment configuration associated with the applicable IAM user or AWS account.
#'
#' @examples
#'
#' @export
get_deployment_config <- function (deploymentConfigName) 
{
    op <- Operation(name = "GetDeploymentConfig", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_deployment_config_input(deploymentConfigName = deploymentConfigName)
    output <- get_deployment_config_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about a deployment group
#'
#' Gets information about a deployment group.
#'
#' @param applicationName The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.
#' @param deploymentGroupName The name of an existing deployment group for the specified application.
#'
#' @examples
#'
#' @export
get_deployment_group <- function (applicationName, deploymentGroupName) 
{
    op <- Operation(name = "GetDeploymentGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_deployment_group_input(applicationName = applicationName, 
        deploymentGroupName = deploymentGroupName)
    output <- get_deployment_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about an instance as part of a deployment
#'
#' Gets information about an instance as part of a deployment.
#'
#' @param deploymentId The unique ID of a deployment.
#' @param instanceId The unique ID of an instance in the deployment group.
#'
#' @examples
#'
#' @export
get_deployment_instance <- function (deploymentId, instanceId) 
{
    op <- Operation(name = "GetDeploymentInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_deployment_instance_input(deploymentId = deploymentId, 
        instanceId = instanceId)
    output <- get_deployment_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about an on-premises instance
#'
#' Gets information about an on-premises instance.
#'
#' @param instanceName The name of the on-premises instance about which to get information.
#'
#' @examples
#'
#' @export
get_on_premises_instance <- function (instanceName) 
{
    op <- Operation(name = "GetOnPremisesInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_on_premises_instance_input(instanceName = instanceName)
    output <- get_on_premises_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists information about revisions for an application
#'
#' Lists information about revisions for an application.
#'
#' @param applicationName The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.
#' @param sortBy The column name to use to sort the list results:
#' 
#' -   registerTime: Sort by the time the revisions were registered with AWS CodeDeploy.
#' 
#' -   firstUsedTime: Sort by the time the revisions were first used in a deployment.
#' 
#' -   lastUsedTime: Sort by the time the revisions were last used in a deployment.
#' 
#' If not specified or set to null, the results will be returned in an arbitrary order.
#' @param sortOrder The order in which to sort the list results:
#' 
#' -   ascending: ascending order.
#' 
#' -   descending: descending order.
#' 
#' If not specified, the results will be sorted in ascending order.
#' 
#' If set to null, the results will be sorted in an arbitrary order.
#' @param s3Bucket An Amazon S3 bucket name to limit the search for revisions.
#' 
#' If set to null, all of the user\'s buckets will be searched.
#' @param s3KeyPrefix A key prefix for the set of Amazon S3 objects to limit the search for revisions.
#' @param deployed Whether to list revisions based on whether the revision is the target revision of an deployment group:
#' 
#' -   include: List revisions that are target revisions of a deployment group.
#' 
#' -   exclude: Do not list revisions that are target revisions of a deployment group.
#' 
#' -   ignore: List all revisions.
#' @param nextToken An identifier returned from the previous list application revisions call. It can be used to return the next set of applications in the list.
#'
#' @examples
#'
#' @export
list_application_revisions <- function (applicationName, sortBy = NULL, 
    sortOrder = NULL, s3Bucket = NULL, s3KeyPrefix = NULL, deployed = NULL, 
    nextToken = NULL) 
{
    op <- Operation(name = "ListApplicationRevisions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_application_revisions_input(applicationName = applicationName, 
        sortBy = sortBy, sortOrder = sortOrder, s3Bucket = s3Bucket, 
        s3KeyPrefix = s3KeyPrefix, deployed = deployed, nextToken = nextToken)
    output <- list_application_revisions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the applications registered with the applicable IAM user or AWS account
#'
#' Lists the applications registered with the applicable IAM user or AWS account.
#'
#' @param nextToken An identifier returned from the previous list applications call. It can be used to return the next set of applications in the list.
#'
#' @examples
#'
#' @export
list_applications <- function (nextToken = NULL) 
{
    op <- Operation(name = "ListApplications", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_applications_input(nextToken = nextToken)
    output <- list_applications_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the deployment configurations with the applicable IAM user or AWS account
#'
#' Lists the deployment configurations with the applicable IAM user or AWS account.
#'
#' @param nextToken An identifier returned from the previous list deployment configurations call. It can be used to return the next set of deployment configurations in the list.
#'
#' @examples
#'
#' @export
list_deployment_configs <- function (nextToken = NULL) 
{
    op <- Operation(name = "ListDeploymentConfigs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_deployment_configs_input(nextToken = nextToken)
    output <- list_deployment_configs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the deployment groups for an application registered with the applicable IAM user or AWS account
#'
#' Lists the deployment groups for an application registered with the applicable IAM user or AWS account.
#'
#' @param applicationName The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.
#' @param nextToken An identifier returned from the previous list deployment groups call. It can be used to return the next set of deployment groups in the list.
#'
#' @examples
#'
#' @export
list_deployment_groups <- function (applicationName, nextToken = NULL) 
{
    op <- Operation(name = "ListDeploymentGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_deployment_groups_input(applicationName = applicationName, 
        nextToken = nextToken)
    output <- list_deployment_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the instance for a deployment associated with the applicable IAM user or AWS account
#'
#' Lists the instance for a deployment associated with the applicable IAM user or AWS account.
#'
#' @param deploymentId The unique ID of a deployment.
#' @param nextToken An identifier returned from the previous list deployment instances call. It can be used to return the next set of deployment instances in the list.
#' @param instanceStatusFilter A subset of instances to list by status:
#' 
#' -   Pending: Include those instance with pending deployments.
#' 
#' -   InProgress: Include those instance where deployments are still in progress.
#' 
#' -   Succeeded: Include those instances with successful deployments.
#' 
#' -   Failed: Include those instance with failed deployments.
#' 
#' -   Skipped: Include those instance with skipped deployments.
#' 
#' -   Unknown: Include those instance with deployments in an unknown state.
#' @param instanceTypeFilter The set of instances in a blue/green deployment, either those in the original environment (\"BLUE\") or those in the replacement environment (\"GREEN\"), for which you want to view instance information.
#'
#' @examples
#'
#' @export
list_deployment_instances <- function (deploymentId, nextToken = NULL, 
    instanceStatusFilter = NULL, instanceTypeFilter = NULL) 
{
    op <- Operation(name = "ListDeploymentInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_deployment_instances_input(deploymentId = deploymentId, 
        nextToken = nextToken, instanceStatusFilter = instanceStatusFilter, 
        instanceTypeFilter = instanceTypeFilter)
    output <- list_deployment_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the deployments in a deployment group for an application registered with the applicable IAM user or AWS account
#'
#' Lists the deployments in a deployment group for an application registered with the applicable IAM user or AWS account.
#'
#' @param applicationName The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.
#' @param deploymentGroupName The name of an existing deployment group for the specified application.
#' @param includeOnlyStatuses A subset of deployments to list by status:
#' 
#' -   Created: Include created deployments in the resulting list.
#' 
#' -   Queued: Include queued deployments in the resulting list.
#' 
#' -   In Progress: Include in-progress deployments in the resulting list.
#' 
#' -   Succeeded: Include successful deployments in the resulting list.
#' 
#' -   Failed: Include failed deployments in the resulting list.
#' 
#' -   Stopped: Include stopped deployments in the resulting list.
#' @param createTimeRange A time range (start and end) for returning a subset of the list of deployments.
#' @param nextToken An identifier returned from the previous list deployments call. It can be used to return the next set of deployments in the list.
#'
#' @examples
#'
#' @export
list_deployments <- function (applicationName = NULL, deploymentGroupName = NULL, 
    includeOnlyStatuses = NULL, createTimeRange = NULL, nextToken = NULL) 
{
    op <- Operation(name = "ListDeployments", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_deployments_input(applicationName = applicationName, 
        deploymentGroupName = deploymentGroupName, includeOnlyStatuses = includeOnlyStatuses, 
        createTimeRange = createTimeRange, nextToken = nextToken)
    output <- list_deployments_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the names of stored connections to GitHub accounts
#'
#' Lists the names of stored connections to GitHub accounts.
#'
#' @param nextToken An identifier returned from the previous ListGitHubAccountTokenNames call. It can be used to return the next set of names in the list.
#'
#' @examples
#'
#' @export
list_git_hub_account_token_names <- function (nextToken = NULL) 
{
    op <- Operation(name = "ListGitHubAccountTokenNames", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_git_hub_account_token_names_input(nextToken = nextToken)
    output <- list_git_hub_account_token_names_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a list of names for one or more on-premises instances
#'
#' Gets a list of names for one or more on-premises instances.
#' 
#' Unless otherwise specified, both registered and deregistered on-premises instance names will be listed. To list only registered or deregistered on-premises instance names, use the registration status parameter.
#'
#' @param registrationStatus The registration status of the on-premises instances:
#' 
#' -   Deregistered: Include deregistered on-premises instances in the resulting list.
#' 
#' -   Registered: Include registered on-premises instances in the resulting list.
#' @param tagFilters The on-premises instance tags that will be used to restrict the corresponding on-premises instance names returned.
#' @param nextToken An identifier returned from the previous list on-premises instances call. It can be used to return the next set of on-premises instances in the list.
#'
#' @examples
#'
#' @export
list_on_premises_instances <- function (registrationStatus = NULL, 
    tagFilters = NULL, nextToken = NULL) 
{
    op <- Operation(name = "ListOnPremisesInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_on_premises_instances_input(registrationStatus = registrationStatus, 
        tagFilters = tagFilters, nextToken = nextToken)
    output <- list_on_premises_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the result of a Lambda validation function
#'
#' Sets the result of a Lambda validation function. The function validates one or both lifecycle events (`BeforeAllowTraffic` and `AfterAllowTraffic`) and returns `Succeeded` or `Failed`.
#'
#' @param deploymentId The ID of the deployment. Pass this ID to a Lambda function that validates a deployment lifecycle event.
#' @param lifecycleEventHookExecutionId The execution ID of a deployment\'s lifecycle hook. A deployment lifecycle hook is specified in the `hooks` section of the AppSpec file.
#' @param status The result of a Lambda function that validates a deployment lifecycle event (`Succeeded` or `Failed`).
#'
#' @examples
#'
#' @export
put_lifecycle_event_hook_execution_status <- function (deploymentId = NULL, 
    lifecycleEventHookExecutionId = NULL, status = NULL) 
{
    op <- Operation(name = "PutLifecycleEventHookExecutionStatus", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- put_lifecycle_event_hook_execution_status_input(deploymentId = deploymentId, 
        lifecycleEventHookExecutionId = lifecycleEventHookExecutionId, 
        status = status)
    output <- put_lifecycle_event_hook_execution_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Registers with AWS CodeDeploy a revision for the specified application
#'
#' Registers with AWS CodeDeploy a revision for the specified application.
#'
#' @param applicationName The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.
#' @param revision Information about the application revision to register, including type and location.
#' @param description A comment about the revision.
#'
#' @examples
#'
#' @export
register_application_revision <- function (applicationName, revision, 
    description = NULL) 
{
    op <- Operation(name = "RegisterApplicationRevision", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- register_application_revision_input(applicationName = applicationName, 
        revision = revision, description = description)
    output <- register_application_revision_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Registers an on-premises instance
#'
#' Registers an on-premises instance.
#' 
#' Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in the request. You cannot use both.
#'
#' @param instanceName The name of the on-premises instance to register.
#' @param iamSessionArn The ARN of the IAM session to associate with the on-premises instance.
#' @param iamUserArn The ARN of the IAM user to associate with the on-premises instance.
#'
#' @examples
#'
#' @export
register_on_premises_instance <- function (instanceName, iamSessionArn = NULL, 
    iamUserArn = NULL) 
{
    op <- Operation(name = "RegisterOnPremisesInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- register_on_premises_instance_input(instanceName = instanceName, 
        iamSessionArn = iamSessionArn, iamUserArn = iamUserArn)
    output <- register_on_premises_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes one or more tags from one or more on-premises instances
#'
#' Removes one or more tags from one or more on-premises instances.
#'
#' @param tags The tag key-value pairs to remove from the on-premises instances.
#' @param instanceNames The names of the on-premises instances from which to remove tags.
#'
#' @examples
#'
#' @export
remove_tags_from_on_premises_instances <- function (tags, instanceNames) 
{
    op <- Operation(name = "RemoveTagsFromOnPremisesInstances", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- remove_tags_from_on_premises_instances_input(tags = tags, 
        instanceNames = instanceNames)
    output <- remove_tags_from_on_premises_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' In a blue/green deployment, overrides any specified wait time and starts terminating instances immediately after the traffic routing is completed
#'
#' In a blue/green deployment, overrides any specified wait time and starts terminating instances immediately after the traffic routing is completed.
#'
#' @param deploymentId The ID of the blue/green deployment for which you want to skip the instance termination wait time.
#'
#' @examples
#'
#' @export
skip_wait_time_for_instance_termination <- function (deploymentId = NULL) 
{
    op <- Operation(name = "SkipWaitTimeForInstanceTermination", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- skip_wait_time_for_instance_termination_input(deploymentId = deploymentId)
    output <- skip_wait_time_for_instance_termination_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Attempts to stop an ongoing deployment
#'
#' Attempts to stop an ongoing deployment.
#'
#' @param deploymentId The unique ID of a deployment.
#' @param autoRollbackEnabled Indicates, when a deployment is stopped, whether instances that have been updated should be rolled back to the previous version of the application revision.
#'
#' @examples
#'
#' @export
stop_deployment <- function (deploymentId, autoRollbackEnabled = NULL) 
{
    op <- Operation(name = "StopDeployment", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_deployment_input(deploymentId = deploymentId, 
        autoRollbackEnabled = autoRollbackEnabled)
    output <- stop_deployment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes the name of an application
#'
#' Changes the name of an application.
#'
#' @param applicationName The current name of the application you want to change.
#' @param newApplicationName The new name to give the application.
#'
#' @examples
#'
#' @export
update_application <- function (applicationName = NULL, newApplicationName = NULL) 
{
    op <- Operation(name = "UpdateApplication", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_application_input(applicationName = applicationName, 
        newApplicationName = newApplicationName)
    output <- update_application_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes information about a deployment group
#'
#' Changes information about a deployment group.
#'
#' @param applicationName The application name corresponding to the deployment group to update.
#' @param currentDeploymentGroupName The current name of the deployment group.
#' @param newDeploymentGroupName The new name of the deployment group, if you want to change it.
#' @param deploymentConfigName The replacement deployment configuration name to use, if you want to change it.
#' @param ec2TagFilters The replacement set of Amazon EC2 tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.
#' @param onPremisesInstanceTagFilters The replacement set of on-premises instance tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.
#' @param autoScalingGroups The replacement list of Auto Scaling groups to be included in the deployment group, if you want to change them. To keep the Auto Scaling groups, enter their names. To remove Auto Scaling groups, do not enter any Auto Scaling group names.
#' @param serviceRoleArn A replacement ARN for the service role, if you want to change it.
#' @param triggerConfigurations Information about triggers to change when the deployment group is updated. For examples, see [Modify Triggers in an AWS CodeDeploy Deployment Group](http://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-edit.html) in the AWS CodeDeploy User Guide.
#' @param alarmConfiguration Information to add or change about Amazon CloudWatch alarms when the deployment group is updated.
#' @param autoRollbackConfiguration Information for an automatic rollback configuration that is added or changed when a deployment group is updated.
#' @param deploymentStyle Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.
#' @param blueGreenDeploymentConfiguration Information about blue/green deployment options for a deployment group.
#' @param loadBalancerInfo Information about the load balancer used in a deployment.
#' @param ec2TagSet Information about groups of tags applied to on-premises instances. The deployment group will include only EC2 instances identified by all the tag groups.
#' @param onPremisesTagSet Information about an on-premises instance tag set. The deployment group will include only on-premises instances identified by all the tag groups.
#'
#' @examples
#'
#' @export
update_deployment_group <- function (applicationName, currentDeploymentGroupName, 
    newDeploymentGroupName = NULL, deploymentConfigName = NULL, 
    ec2TagFilters = NULL, onPremisesInstanceTagFilters = NULL, 
    autoScalingGroups = NULL, serviceRoleArn = NULL, triggerConfigurations = NULL, 
    alarmConfiguration = NULL, autoRollbackConfiguration = NULL, 
    deploymentStyle = NULL, blueGreenDeploymentConfiguration = NULL, 
    loadBalancerInfo = NULL, ec2TagSet = NULL, onPremisesTagSet = NULL) 
{
    op <- Operation(name = "UpdateDeploymentGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_deployment_group_input(applicationName = applicationName, 
        currentDeploymentGroupName = currentDeploymentGroupName, 
        newDeploymentGroupName = newDeploymentGroupName, deploymentConfigName = deploymentConfigName, 
        ec2TagFilters = ec2TagFilters, onPremisesInstanceTagFilters = onPremisesInstanceTagFilters, 
        autoScalingGroups = autoScalingGroups, serviceRoleArn = serviceRoleArn, 
        triggerConfigurations = triggerConfigurations, alarmConfiguration = alarmConfiguration, 
        autoRollbackConfiguration = autoRollbackConfiguration, 
        deploymentStyle = deploymentStyle, blueGreenDeploymentConfiguration = blueGreenDeploymentConfiguration, 
        loadBalancerInfo = loadBalancerInfo, ec2TagSet = ec2TagSet, 
        onPremisesTagSet = onPremisesTagSet)
    output <- update_deployment_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
