#' Amazon Prometheus Service
#'
#' @description
#' Amazon Managed Service for Prometheus
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- prometheusservice(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- prometheusservice()
#' svc$create_alert_manager_definition(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p1:prometheusservice_create_alert_manager_definition]{create_alert_manager_definition} \tab Create an alert manager definition\cr
#'  \link[paws.management.p1:prometheusservice_create_rule_groups_namespace]{create_rule_groups_namespace} \tab Create a rule group namespace\cr
#'  \link[paws.management.p1:prometheusservice_create_workspace]{create_workspace} \tab Creates a new AMP workspace\cr
#'  \link[paws.management.p1:prometheusservice_delete_alert_manager_definition]{delete_alert_manager_definition} \tab Deletes an alert manager definition\cr
#'  \link[paws.management.p1:prometheusservice_delete_rule_groups_namespace]{delete_rule_groups_namespace} \tab Delete a rule groups namespace\cr
#'  \link[paws.management.p1:prometheusservice_delete_workspace]{delete_workspace} \tab Deletes an AMP workspace\cr
#'  \link[paws.management.p1:prometheusservice_describe_alert_manager_definition]{describe_alert_manager_definition} \tab Describes an alert manager definition\cr
#'  \link[paws.management.p1:prometheusservice_describe_rule_groups_namespace]{describe_rule_groups_namespace} \tab Describe a rule groups namespace\cr
#'  \link[paws.management.p1:prometheusservice_describe_workspace]{describe_workspace} \tab Describes an existing AMP workspace\cr
#'  \link[paws.management.p1:prometheusservice_list_rule_groups_namespaces]{list_rule_groups_namespaces} \tab Lists rule groups namespaces\cr
#'  \link[paws.management.p1:prometheusservice_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags you have assigned to the resource\cr
#'  \link[paws.management.p1:prometheusservice_list_workspaces]{list_workspaces} \tab Lists all AMP workspaces, including workspaces being created or deleted\cr
#'  \link[paws.management.p1:prometheusservice_put_alert_manager_definition]{put_alert_manager_definition} \tab Update an alert manager definition\cr
#'  \link[paws.management.p1:prometheusservice_put_rule_groups_namespace]{put_rule_groups_namespace} \tab Update a rule groups namespace\cr
#'  \link[paws.management.p1:prometheusservice_tag_resource]{tag_resource} \tab Creates tags for the specified resource\cr
#'  \link[paws.management.p1:prometheusservice_untag_resource]{untag_resource} \tab Deletes tags from the specified resource\cr
#'  \link[paws.management.p1:prometheusservice_update_workspace_alias]{update_workspace_alias} \tab Updates an AMP workspace alias
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname prometheusservice
#' @export
prometheusservice <- function(config = list()) {
  paws.management.p1::prometheusservice(config)
}

#' Application Auto Scaling
#'
#' @description
#' With Application Auto Scaling, you can configure automatic scaling for
#' the following resources:
#' 
#' -   Amazon AppStream 2.0 fleets
#' 
#' -   Amazon Aurora Replicas
#' 
#' -   Amazon Comprehend document classification and entity recognizer
#'     endpoints
#' 
#' -   Amazon DynamoDB tables and global secondary indexes throughput
#'     capacity
#' 
#' -   Amazon ECS services
#' 
#' -   Amazon ElastiCache for Redis clusters (replication groups)
#' 
#' -   Amazon EMR clusters
#' 
#' -   Amazon Keyspaces (for Apache Cassandra) tables
#' 
#' -   Lambda function provisioned concurrency
#' 
#' -   Amazon Managed Streaming for Apache Kafka broker storage
#' 
#' -   Amazon Neptune clusters
#' 
#' -   Amazon SageMaker endpoint variants
#' 
#' -   Spot Fleets (Amazon EC2)
#' 
#' -   Custom resources provided by your own applications or services
#' 
#' **API Summary**
#' 
#' The Application Auto Scaling service API includes three key sets of
#' actions:
#' 
#' -   Register and manage scalable targets - Register Amazon Web Services
#'     or custom resources as scalable targets (a resource that Application
#'     Auto Scaling can scale), set minimum and maximum capacity limits,
#'     and retrieve information on existing scalable targets.
#' 
#' -   Configure and manage automatic scaling - Define scaling policies to
#'     dynamically scale your resources in response to CloudWatch alarms,
#'     schedule one-time or recurring scaling actions, and retrieve your
#'     recent scaling activity history.
#' 
#' -   Suspend and resume scaling - Temporarily suspend and later resume
#'     automatic scaling by calling the
#'     `register_scalable_target`
#'     API action for any Application Auto Scaling scalable target. You can
#'     suspend and resume (individually or in combination) scale-out
#'     activities that are triggered by a scaling policy, scale-in
#'     activities that are triggered by a scaling policy, and scheduled
#'     scaling.
#' 
#' To learn more about Application Auto Scaling, including information
#' about granting IAM users required permissions for Application Auto
#' Scaling actions, see the [Application Auto Scaling User
#' Guide](https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- applicationautoscaling(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- applicationautoscaling()
#' # This example deletes a scaling policy for the Amazon ECS service called
#' # web-app, which is running in the default cluster.
#' svc$delete_scaling_policy(
#'   PolicyName = "web-app-cpu-lt-25",
#'   ResourceId = "service/default/web-app",
#'   ScalableDimension = "ecs:service:DesiredCount",
#'   ServiceNamespace = "ecs"
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p1:applicationautoscaling_delete_scaling_policy]{delete_scaling_policy} \tab Deletes the specified scaling policy for an Application Auto Scaling scalable target\cr
#'  \link[paws.management.p1:applicationautoscaling_delete_scheduled_action]{delete_scheduled_action} \tab Deletes the specified scheduled action for an Application Auto Scaling scalable target\cr
#'  \link[paws.management.p1:applicationautoscaling_deregister_scalable_target]{deregister_scalable_target} \tab Deregisters an Application Auto Scaling scalable target when you have finished using it\cr
#'  \link[paws.management.p1:applicationautoscaling_describe_scalable_targets]{describe_scalable_targets} \tab Gets information about the scalable targets in the specified namespace\cr
#'  \link[paws.management.p1:applicationautoscaling_describe_scaling_activities]{describe_scaling_activities} \tab Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks\cr
#'  \link[paws.management.p1:applicationautoscaling_describe_scaling_policies]{describe_scaling_policies} \tab Describes the Application Auto Scaling scaling policies for the specified service namespace\cr
#'  \link[paws.management.p1:applicationautoscaling_describe_scheduled_actions]{describe_scheduled_actions} \tab Describes the Application Auto Scaling scheduled actions for the specified service namespace\cr
#'  \link[paws.management.p1:applicationautoscaling_put_scaling_policy]{put_scaling_policy} \tab Creates or updates a scaling policy for an Application Auto Scaling scalable target\cr
#'  \link[paws.management.p1:applicationautoscaling_put_scheduled_action]{put_scheduled_action} \tab Creates or updates a scheduled action for an Application Auto Scaling scalable target\cr
#'  \link[paws.management.p1:applicationautoscaling_register_scalable_target]{register_scalable_target} \tab Registers or updates a scalable target
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname applicationautoscaling
#' @export
applicationautoscaling <- function(config = list()) {
  paws.management.p1::applicationautoscaling(config)
}

#' Amazon CloudWatch Application Insights
#'
#' @description
#' Amazon CloudWatch Application Insights is a service that helps you
#' detect common problems with your applications. It enables you to
#' pinpoint the source of issues in your applications (built with
#' technologies such as Microsoft IIS, .NET, and Microsoft SQL Server), by
#' providing key insights into detected problems.
#' 
#' After you onboard your application, CloudWatch Application Insights
#' identifies, recommends, and sets up metrics and logs. It continuously
#' analyzes and correlates your metrics and logs for unusual behavior to
#' surface actionable problems with your application. For example, if your
#' application is slow and unresponsive and leading to HTTP 500 errors in
#' your Application Load Balancer (ALB), Application Insights informs you
#' that a memory pressure problem with your SQL Server database is
#' occurring. It bases this analysis on impactful metrics and log errors.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- applicationinsights(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- applicationinsights()
#' svc$create_application(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p1:applicationinsights_create_application]{create_application} \tab Adds an application that is created from a resource group\cr
#'  \link[paws.management.p1:applicationinsights_create_component]{create_component} \tab Creates a custom component by grouping similar standalone instances to monitor\cr
#'  \link[paws.management.p1:applicationinsights_create_log_pattern]{create_log_pattern} \tab Adds an log pattern to a LogPatternSet\cr
#'  \link[paws.management.p1:applicationinsights_delete_application]{delete_application} \tab Removes the specified application from monitoring\cr
#'  \link[paws.management.p1:applicationinsights_delete_component]{delete_component} \tab Ungroups a custom component\cr
#'  \link[paws.management.p1:applicationinsights_delete_log_pattern]{delete_log_pattern} \tab Removes the specified log pattern from a LogPatternSet\cr
#'  \link[paws.management.p1:applicationinsights_describe_application]{describe_application} \tab Describes the application\cr
#'  \link[paws.management.p1:applicationinsights_describe_component]{describe_component} \tab Describes a component and lists the resources that are grouped together in a component\cr
#'  \link[paws.management.p1:applicationinsights_describe_component_configuration]{describe_component_configuration} \tab Describes the monitoring configuration of the component\cr
#'  \link[paws.management.p1:applicationinsights_describe_component_configuration_recommendation]{describe_component_configuration_recommendation} \tab Describes the recommended monitoring configuration of the component\cr
#'  \link[paws.management.p1:applicationinsights_describe_log_pattern]{describe_log_pattern} \tab Describe a specific log pattern from a LogPatternSet\cr
#'  \link[paws.management.p1:applicationinsights_describe_observation]{describe_observation} \tab Describes an anomaly or error with the application\cr
#'  \link[paws.management.p1:applicationinsights_describe_problem]{describe_problem} \tab Describes an application problem\cr
#'  \link[paws.management.p1:applicationinsights_describe_problem_observations]{describe_problem_observations} \tab Describes the anomalies or errors associated with the problem\cr
#'  \link[paws.management.p1:applicationinsights_list_applications]{list_applications} \tab Lists the IDs of the applications that you are monitoring\cr
#'  \link[paws.management.p1:applicationinsights_list_components]{list_components} \tab Lists the auto-grouped, standalone, and custom components of the application\cr
#'  \link[paws.management.p1:applicationinsights_list_configuration_history]{list_configuration_history} \tab Lists the INFO, WARN, and ERROR events for periodic configuration updates performed by Application Insights\cr
#'  \link[paws.management.p1:applicationinsights_list_log_patterns]{list_log_patterns} \tab Lists the log patterns in the specific log LogPatternSet\cr
#'  \link[paws.management.p1:applicationinsights_list_log_pattern_sets]{list_log_pattern_sets} \tab Lists the log pattern sets in the specific application\cr
#'  \link[paws.management.p1:applicationinsights_list_problems]{list_problems} \tab Lists the problems with your application\cr
#'  \link[paws.management.p1:applicationinsights_list_tags_for_resource]{list_tags_for_resource} \tab Retrieve a list of the tags (keys and values) that are associated with a specified application\cr
#'  \link[paws.management.p1:applicationinsights_tag_resource]{tag_resource} \tab Add one or more tags (keys and values) to a specified application\cr
#'  \link[paws.management.p1:applicationinsights_untag_resource]{untag_resource} \tab Remove one or more tags (keys and values) from a specified application\cr
#'  \link[paws.management.p1:applicationinsights_update_application]{update_application} \tab Updates the application\cr
#'  \link[paws.management.p1:applicationinsights_update_component]{update_component} \tab Updates the custom component name and/or the list of resources that make up the component\cr
#'  \link[paws.management.p1:applicationinsights_update_component_configuration]{update_component_configuration} \tab Updates the monitoring configurations for the component\cr
#'  \link[paws.management.p1:applicationinsights_update_log_pattern]{update_log_pattern} \tab Adds a log pattern to a LogPatternSet
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname applicationinsights
#' @export
applicationinsights <- function(config = list()) {
  paws.management.p1::applicationinsights(config)
}

#' AWS Application Cost Profiler
#'
#' @description
#' This reference provides descriptions of the AWS Application Cost
#' Profiler API.
#' 
#' The AWS Application Cost Profiler API provides programmatic access to
#' view, create, update, and delete application cost report definitions, as
#' well as to import your usage data into the Application Cost Profiler
#' service.
#' 
#' For more information about using this service, see the [AWS Application
#' Cost Profiler User
#' Guide](https://docs.aws.amazon.com/application-cost-profiler/latest/userguide/introduction.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- applicationcostprofiler(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- applicationcostprofiler()
#' svc$delete_report_definition(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p1:applicationcostprofiler_delete_report_definition]{delete_report_definition} \tab Deletes the specified report definition in AWS Application Cost Profiler\cr
#'  \link[paws.management.p1:applicationcostprofiler_get_report_definition]{get_report_definition} \tab Retrieves the definition of a report already configured in AWS Application Cost Profiler\cr
#'  \link[paws.management.p1:applicationcostprofiler_import_application_usage]{import_application_usage} \tab Ingests application usage data from Amazon Simple Storage Service (Amazon S3)\cr
#'  \link[paws.management.p1:applicationcostprofiler_list_report_definitions]{list_report_definitions} \tab Retrieves a list of all reports and their configurations for your AWS account\cr
#'  \link[paws.management.p1:applicationcostprofiler_put_report_definition]{put_report_definition} \tab Creates the report definition for a report in Application Cost Profiler\cr
#'  \link[paws.management.p1:applicationcostprofiler_update_report_definition]{update_report_definition} \tab Updates existing report in AWS Application Cost Profiler
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname applicationcostprofiler
#' @export
applicationcostprofiler <- function(config = list()) {
  paws.management.p1::applicationcostprofiler(config)
}

#' AWS Audit Manager
#'
#' @description
#' Welcome to the Audit Manager API reference. This guide is for developers
#' who need detailed information about the Audit Manager API operations,
#' data types, and errors.
#' 
#' Audit Manager is a service that provides automated evidence collection
#' so that you can continually audit your Amazon Web Services usage. You
#' can use it to assess the effectiveness of your controls, manage risk,
#' and simplify compliance.
#' 
#' Audit Manager provides prebuilt frameworks that structure and automate
#' assessments for a given compliance standard. Frameworks include a
#' prebuilt collection of controls with descriptions and testing
#' procedures. These controls are grouped according to the requirements of
#' the specified compliance standard or regulation. You can also customize
#' frameworks and controls to support internal audits with specific
#' requirements.
#' 
#' Use the following links to get started with the Audit Manager API:
#' 
#' -   [Actions](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Operations.html):
#'     An alphabetical list of all Audit Manager API operations.
#' 
#' -   [Data
#'     types](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Types.html):
#'     An alphabetical list of all Audit Manager data types.
#' 
#' -   [Common
#'     parameters](https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonParameters.html):
#'     Parameters that all Query operations can use.
#' 
#' -   [Common
#'     errors](https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonErrors.html):
#'     Client and server errors that all operations can return.
#' 
#' If you're new to Audit Manager, we recommend that you review the [Audit
#' Manager User
#' Guide](https://docs.aws.amazon.com/audit-manager/latest/userguide/what-is.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- auditmanager(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- auditmanager()
#' svc$associate_assessment_report_evidence_folder(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p1:auditmanager_associate_assessment_report_evidence_folder]{associate_assessment_report_evidence_folder} \tab Associates an evidence folder to an assessment report in a Audit Manager assessment\cr
#'  \link[paws.management.p1:auditmanager_batch_associate_assessment_report_evidence]{batch_associate_assessment_report_evidence} \tab Associates a list of evidence to an assessment report in an Audit Manager assessment\cr
#'  \link[paws.management.p1:auditmanager_batch_create_delegation_by_assessment]{batch_create_delegation_by_assessment} \tab Creates a batch of delegations for an assessment in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_batch_delete_delegation_by_assessment]{batch_delete_delegation_by_assessment} \tab Deletes a batch of delegations for an assessment in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_batch_disassociate_assessment_report_evidence]{batch_disassociate_assessment_report_evidence} \tab Disassociates a list of evidence from an assessment report in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_batch_import_evidence_to_assessment_control]{batch_import_evidence_to_assessment_control} \tab Uploads one or more pieces of evidence to a control in an Audit Manager assessment\cr
#'  \link[paws.management.p1:auditmanager_create_assessment]{create_assessment} \tab Creates an assessment in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_create_assessment_framework]{create_assessment_framework} \tab Creates a custom framework in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_create_assessment_report]{create_assessment_report} \tab Creates an assessment report for the specified assessment\cr
#'  \link[paws.management.p1:auditmanager_create_control]{create_control} \tab Creates a new custom control in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_delete_assessment]{delete_assessment} \tab Deletes an assessment in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_delete_assessment_framework]{delete_assessment_framework} \tab Deletes a custom framework in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_delete_assessment_framework_share]{delete_assessment_framework_share} \tab Deletes a share request for a custom framework in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_delete_assessment_report]{delete_assessment_report} \tab Deletes an assessment report in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_delete_control]{delete_control} \tab Deletes a custom control in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_deregister_account]{deregister_account} \tab Deregisters an account in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_deregister_organization_admin_account]{deregister_organization_admin_account} \tab Removes the specified Amazon Web Services account as a delegated administrator for Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_disassociate_assessment_report_evidence_folder]{disassociate_assessment_report_evidence_folder} \tab Disassociates an evidence folder from the specified assessment report in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_get_account_status]{get_account_status} \tab Returns the registration status of an account in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_get_assessment]{get_assessment} \tab Returns an assessment from Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_get_assessment_framework]{get_assessment_framework} \tab Returns a framework from Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_get_assessment_report_url]{get_assessment_report_url} \tab Returns the URL of an assessment report in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_get_change_logs]{get_change_logs} \tab Returns a list of changelogs from Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_get_control]{get_control} \tab Returns a control from Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_get_delegations]{get_delegations} \tab Returns a list of delegations from an audit owner to a delegate\cr
#'  \link[paws.management.p1:auditmanager_get_evidence]{get_evidence} \tab Returns evidence from Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_get_evidence_by_evidence_folder]{get_evidence_by_evidence_folder} \tab Returns all evidence from a specified evidence folder in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_get_evidence_folder]{get_evidence_folder} \tab Returns an evidence folder from the specified assessment in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_get_evidence_folders_by_assessment]{get_evidence_folders_by_assessment} \tab Returns the evidence folders from a specified assessment in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_get_evidence_folders_by_assessment_control]{get_evidence_folders_by_assessment_control} \tab Returns a list of evidence folders that are associated with a specified control of an assessment in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_get_insights]{get_insights} \tab Gets the latest analytics data for all your current active assessments\cr
#'  \link[paws.management.p1:auditmanager_get_insights_by_assessment]{get_insights_by_assessment} \tab Gets the latest analytics data for a specific active assessment\cr
#'  \link[paws.management.p1:auditmanager_get_organization_admin_account]{get_organization_admin_account} \tab Returns the name of the delegated Amazon Web Services administrator account for the organization\cr
#'  \link[paws.management.p1:auditmanager_get_services_in_scope]{get_services_in_scope} \tab Returns a list of the in-scope Amazon Web Services for the specified assessment\cr
#'  \link[paws.management.p1:auditmanager_get_settings]{get_settings} \tab Returns the settings for the specified Amazon Web Services account\cr
#'  \link[paws.management.p1:auditmanager_list_assessment_control_insights_by_control_domain]{list_assessment_control_insights_by_control_domain} \tab Lists the latest analytics data for controls within a specific control domain and a specific active assessment\cr
#'  \link[paws.management.p1:auditmanager_list_assessment_frameworks]{list_assessment_frameworks} \tab Returns a list of the frameworks that are available in the Audit Manager framework library\cr
#'  \link[paws.management.p1:auditmanager_list_assessment_framework_share_requests]{list_assessment_framework_share_requests} \tab Returns a list of sent or received share requests for custom frameworks in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_list_assessment_reports]{list_assessment_reports} \tab Returns a list of assessment reports created in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_list_assessments]{list_assessments} \tab Returns a list of current and past assessments from Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_list_control_domain_insights]{list_control_domain_insights} \tab Lists the latest analytics data for control domains across all of your active assessments\cr
#'  \link[paws.management.p1:auditmanager_list_control_domain_insights_by_assessment]{list_control_domain_insights_by_assessment} \tab Lists analytics data for control domains within a specified active assessment\cr
#'  \link[paws.management.p1:auditmanager_list_control_insights_by_control_domain]{list_control_insights_by_control_domain} \tab Lists the latest analytics data for controls within a specific control domain across all active assessments\cr
#'  \link[paws.management.p1:auditmanager_list_controls]{list_controls} \tab Returns a list of controls from Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_list_keywords_for_data_source]{list_keywords_for_data_source} \tab Returns a list of keywords that are pre-mapped to the specified control data source\cr
#'  \link[paws.management.p1:auditmanager_list_notifications]{list_notifications} \tab Returns a list of all Audit Manager notifications\cr
#'  \link[paws.management.p1:auditmanager_list_tags_for_resource]{list_tags_for_resource} \tab Returns a list of tags for the specified resource in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_register_account]{register_account} \tab Enables Audit Manager for the specified Amazon Web Services account\cr
#'  \link[paws.management.p1:auditmanager_register_organization_admin_account]{register_organization_admin_account} \tab Enables an Amazon Web Services account within the organization as the delegated administrator for Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_start_assessment_framework_share]{start_assessment_framework_share} \tab Creates a share request for a custom framework in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_tag_resource]{tag_resource} \tab Tags the specified resource in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_untag_resource]{untag_resource} \tab Removes a tag from a resource in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_update_assessment]{update_assessment} \tab Edits an Audit Manager assessment\cr
#'  \link[paws.management.p1:auditmanager_update_assessment_control]{update_assessment_control} \tab Updates a control within an assessment in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_update_assessment_control_set_status]{update_assessment_control_set_status} \tab Updates the status of a control set in an Audit Manager assessment\cr
#'  \link[paws.management.p1:auditmanager_update_assessment_framework]{update_assessment_framework} \tab Updates a custom framework in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_update_assessment_framework_share]{update_assessment_framework_share} \tab Updates a share request for a custom framework in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_update_assessment_status]{update_assessment_status} \tab Updates the status of an assessment in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_update_control]{update_control} \tab Updates a custom control in Audit Manager\cr
#'  \link[paws.management.p1:auditmanager_update_settings]{update_settings} \tab Updates Audit Manager settings for the current user account\cr
#'  \link[paws.management.p1:auditmanager_validate_assessment_report_integrity]{validate_assessment_report_integrity} \tab Validates the integrity of an assessment report in Audit Manager
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname auditmanager
#' @export
auditmanager <- function(config = list()) {
  paws.management.p1::auditmanager(config)
}

#' Auto Scaling
#'
#' @description
#' Amazon EC2 Auto Scaling
#' 
#' Amazon EC2 Auto Scaling is designed to automatically launch and
#' terminate EC2 instances based on user-defined scaling policies,
#' scheduled actions, and health checks.
#' 
#' For more information, see the [Amazon EC2 Auto Scaling User
#' Guide](https://docs.aws.amazon.com/autoscaling/ec2/userguide/) and the
#' [Amazon EC2 Auto Scaling API
#' Reference](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/Welcome.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- autoscaling(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- autoscaling()
#' # This example attaches the specified instance to the specified Auto
#' # Scaling group.
#' svc$attach_instances(
#'   AutoScalingGroupName = "my-auto-scaling-group",
#'   InstanceIds = list(
#'     "i-93633f9b"
#'   )
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p1:autoscaling_attach_instances]{attach_instances} \tab Attaches one or more EC2 instances to the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_attach_load_balancers]{attach_load_balancers} \tab To attach an Application Load Balancer, Network Load Balancer, or Gateway Load Balancer, use the AttachLoadBalancerTargetGroups API operation instead\cr
#'  \link[paws.management.p1:autoscaling_attach_load_balancer_target_groups]{attach_load_balancer_target_groups} \tab Attaches one or more target groups to the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_batch_delete_scheduled_action]{batch_delete_scheduled_action} \tab Deletes one or more scheduled actions for the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_batch_put_scheduled_update_group_action]{batch_put_scheduled_update_group_action} \tab Creates or updates one or more scheduled scaling actions for an Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_cancel_instance_refresh]{cancel_instance_refresh} \tab Cancels an instance refresh operation in progress\cr
#'  \link[paws.management.p1:autoscaling_complete_lifecycle_action]{complete_lifecycle_action} \tab Completes the lifecycle action for the specified token or instance with the specified result\cr
#'  \link[paws.management.p1:autoscaling_create_auto_scaling_group]{create_auto_scaling_group} \tab We strongly recommend using a launch template when calling this operation to ensure full functionality for Amazon EC2 Auto Scaling and Amazon EC2\cr
#'  \link[paws.management.p1:autoscaling_create_launch_configuration]{create_launch_configuration} \tab Creates a launch configuration\cr
#'  \link[paws.management.p1:autoscaling_create_or_update_tags]{create_or_update_tags} \tab Creates or updates tags for the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_delete_auto_scaling_group]{delete_auto_scaling_group} \tab Deletes the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_delete_launch_configuration]{delete_launch_configuration} \tab Deletes the specified launch configuration\cr
#'  \link[paws.management.p1:autoscaling_delete_lifecycle_hook]{delete_lifecycle_hook} \tab Deletes the specified lifecycle hook\cr
#'  \link[paws.management.p1:autoscaling_delete_notification_configuration]{delete_notification_configuration} \tab Deletes the specified notification\cr
#'  \link[paws.management.p1:autoscaling_delete_policy]{delete_policy} \tab Deletes the specified scaling policy\cr
#'  \link[paws.management.p1:autoscaling_delete_scheduled_action]{delete_scheduled_action} \tab Deletes the specified scheduled action\cr
#'  \link[paws.management.p1:autoscaling_delete_tags]{delete_tags} \tab Deletes the specified tags\cr
#'  \link[paws.management.p1:autoscaling_delete_warm_pool]{delete_warm_pool} \tab Deletes the warm pool for the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_describe_account_limits]{describe_account_limits} \tab Describes the current Amazon EC2 Auto Scaling resource quotas for your account\cr
#'  \link[paws.management.p1:autoscaling_describe_adjustment_types]{describe_adjustment_types} \tab Describes the available adjustment types for step scaling and simple scaling policies\cr
#'  \link[paws.management.p1:autoscaling_describe_auto_scaling_groups]{describe_auto_scaling_groups} \tab Gets information about the Auto Scaling groups in the account and Region\cr
#'  \link[paws.management.p1:autoscaling_describe_auto_scaling_instances]{describe_auto_scaling_instances} \tab Gets information about the Auto Scaling instances in the account and Region\cr
#'  \link[paws.management.p1:autoscaling_describe_auto_scaling_notification_types]{describe_auto_scaling_notification_types} \tab Describes the notification types that are supported by Amazon EC2 Auto Scaling\cr
#'  \link[paws.management.p1:autoscaling_describe_instance_refreshes]{describe_instance_refreshes} \tab Gets information about the instance refreshes for the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_describe_launch_configurations]{describe_launch_configurations} \tab Gets information about the launch configurations in the account and Region\cr
#'  \link[paws.management.p1:autoscaling_describe_lifecycle_hooks]{describe_lifecycle_hooks} \tab Gets information about the lifecycle hooks for the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_describe_lifecycle_hook_types]{describe_lifecycle_hook_types} \tab Describes the available types of lifecycle hooks\cr
#'  \link[paws.management.p1:autoscaling_describe_load_balancers]{describe_load_balancers} \tab Gets information about the load balancers for the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_describe_load_balancer_target_groups]{describe_load_balancer_target_groups} \tab Gets information about the Elastic Load Balancing target groups for the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_describe_metric_collection_types]{describe_metric_collection_types} \tab Describes the available CloudWatch metrics for Amazon EC2 Auto Scaling\cr
#'  \link[paws.management.p1:autoscaling_describe_notification_configurations]{describe_notification_configurations} \tab Gets information about the Amazon SNS notifications that are configured for one or more Auto Scaling groups\cr
#'  \link[paws.management.p1:autoscaling_describe_policies]{describe_policies} \tab Gets information about the scaling policies in the account and Region\cr
#'  \link[paws.management.p1:autoscaling_describe_scaling_activities]{describe_scaling_activities} \tab Gets information about the scaling activities in the account and Region\cr
#'  \link[paws.management.p1:autoscaling_describe_scaling_process_types]{describe_scaling_process_types} \tab Describes the scaling process types for use with the ResumeProcesses and SuspendProcesses APIs\cr
#'  \link[paws.management.p1:autoscaling_describe_scheduled_actions]{describe_scheduled_actions} \tab Gets information about the scheduled actions that haven't run or that have not reached their end time\cr
#'  \link[paws.management.p1:autoscaling_describe_tags]{describe_tags} \tab Describes the specified tags\cr
#'  \link[paws.management.p1:autoscaling_describe_termination_policy_types]{describe_termination_policy_types} \tab Describes the termination policies supported by Amazon EC2 Auto Scaling\cr
#'  \link[paws.management.p1:autoscaling_describe_warm_pool]{describe_warm_pool} \tab Gets information about a warm pool and its instances\cr
#'  \link[paws.management.p1:autoscaling_detach_instances]{detach_instances} \tab Removes one or more instances from the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_detach_load_balancers]{detach_load_balancers} \tab Detaches one or more Classic Load Balancers from the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_detach_load_balancer_target_groups]{detach_load_balancer_target_groups} \tab Detaches one or more target groups from the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_disable_metrics_collection]{disable_metrics_collection} \tab Disables group metrics collection for the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_enable_metrics_collection]{enable_metrics_collection} \tab Enables group metrics collection for the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_enter_standby]{enter_standby} \tab Moves the specified instances into the standby state\cr
#'  \link[paws.management.p1:autoscaling_execute_policy]{execute_policy} \tab Executes the specified policy\cr
#'  \link[paws.management.p1:autoscaling_exit_standby]{exit_standby} \tab Moves the specified instances out of the standby state\cr
#'  \link[paws.management.p1:autoscaling_get_predictive_scaling_forecast]{get_predictive_scaling_forecast} \tab Retrieves the forecast data for a predictive scaling policy\cr
#'  \link[paws.management.p1:autoscaling_put_lifecycle_hook]{put_lifecycle_hook} \tab Creates or updates a lifecycle hook for the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_put_notification_configuration]{put_notification_configuration} \tab Configures an Auto Scaling group to send notifications when specified events take place\cr
#'  \link[paws.management.p1:autoscaling_put_scaling_policy]{put_scaling_policy} \tab Creates or updates a scaling policy for an Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_put_scheduled_update_group_action]{put_scheduled_update_group_action} \tab Creates or updates a scheduled scaling action for an Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_put_warm_pool]{put_warm_pool} \tab Creates or updates a warm pool for the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_record_lifecycle_action_heartbeat]{record_lifecycle_action_heartbeat} \tab Records a heartbeat for the lifecycle action associated with the specified token or instance\cr
#'  \link[paws.management.p1:autoscaling_resume_processes]{resume_processes} \tab Resumes the specified suspended auto scaling processes, or all suspended process, for the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_set_desired_capacity]{set_desired_capacity} \tab Sets the size of the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_set_instance_health]{set_instance_health} \tab Sets the health status of the specified instance\cr
#'  \link[paws.management.p1:autoscaling_set_instance_protection]{set_instance_protection} \tab Updates the instance protection settings of the specified instances\cr
#'  \link[paws.management.p1:autoscaling_start_instance_refresh]{start_instance_refresh} \tab Starts a new instance refresh operation\cr
#'  \link[paws.management.p1:autoscaling_suspend_processes]{suspend_processes} \tab Suspends the specified auto scaling processes, or all processes, for the specified Auto Scaling group\cr
#'  \link[paws.management.p1:autoscaling_terminate_instance_in_auto_scaling_group]{terminate_instance_in_auto_scaling_group} \tab Terminates the specified instance and optionally adjusts the desired group size\cr
#'  \link[paws.management.p1:autoscaling_update_auto_scaling_group]{update_auto_scaling_group} \tab We strongly recommend that all Auto Scaling groups use launch templates to ensure full functionality for Amazon EC2 Auto Scaling and Amazon EC2
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname autoscaling
#' @export
autoscaling <- function(config = list()) {
  paws.management.p1::autoscaling(config)
}

#' AWS Auto Scaling Plans
#'
#' @description
#' AWS Auto Scaling
#' 
#' Use AWS Auto Scaling to create scaling plans for your applications to
#' automatically scale your scalable AWS resources.
#' 
#' **API Summary**
#' 
#' You can use the AWS Auto Scaling service API to accomplish the following
#' tasks:
#' 
#' -   Create and manage scaling plans
#' 
#' -   Define target tracking scaling policies to dynamically scale your
#'     resources based on utilization
#' 
#' -   Scale Amazon EC2 Auto Scaling groups using predictive scaling and
#'     dynamic scaling to scale your Amazon EC2 capacity faster
#' 
#' -   Set minimum and maximum capacity limits
#' 
#' -   Retrieve information on existing scaling plans
#' 
#' -   Access current forecast data and historical forecast data for up to
#'     56 days previous
#' 
#' To learn more about AWS Auto Scaling, including information about
#' granting IAM users required permissions for AWS Auto Scaling actions,
#' see the [AWS Auto Scaling User
#' Guide](https://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-a-scaling-plan.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- autoscalingplans(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- autoscalingplans()
#' svc$create_scaling_plan(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p1:autoscalingplans_create_scaling_plan]{create_scaling_plan} \tab Creates a scaling plan\cr
#'  \link[paws.management.p1:autoscalingplans_delete_scaling_plan]{delete_scaling_plan} \tab Deletes the specified scaling plan\cr
#'  \link[paws.management.p1:autoscalingplans_describe_scaling_plan_resources]{describe_scaling_plan_resources} \tab Describes the scalable resources in the specified scaling plan\cr
#'  \link[paws.management.p1:autoscalingplans_describe_scaling_plans]{describe_scaling_plans} \tab Describes one or more of your scaling plans\cr
#'  \link[paws.management.p1:autoscalingplans_get_scaling_plan_resource_forecast_data]{get_scaling_plan_resource_forecast_data} \tab Retrieves the forecast data for a scalable resource\cr
#'  \link[paws.management.p1:autoscalingplans_update_scaling_plan]{update_scaling_plan} \tab Updates the specified scaling plan
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname autoscalingplans
#' @export
autoscalingplans <- function(config = list()) {
  paws.management.p1::autoscalingplans(config)
}

#' AWS CloudFormation
#'
#' @description
#' CloudFormation
#' 
#' CloudFormation allows you to create and manage Amazon Web Services
#' infrastructure deployments predictably and repeatedly. You can use
#' CloudFormation to leverage Amazon Web Services products, such as Amazon
#' Elastic Compute Cloud, Amazon Elastic Block Store, Amazon Simple
#' Notification Service, Elastic Load Balancing, and Auto Scaling to build
#' highly reliable, highly scalable, cost-effective applications without
#' creating or configuring the underlying Amazon Web Services
#' infrastructure.
#' 
#' With CloudFormation, you declare all your resources and dependencies in
#' a template file. The template defines a collection of resources as a
#' single unit called a stack. CloudFormation creates and deletes all
#' member resources of the stack together and manages all dependencies
#' between the resources for you.
#' 
#' For more information about CloudFormation, see the [CloudFormation
#' product page](https://aws.amazon.com/cloudformation/).
#' 
#' CloudFormation makes use of other Amazon Web Services products. If you
#' need additional technical information about a specific Amazon Web
#' Services product, you can find the product's technical documentation at
#' [`docs.aws.amazon.com`](https://docs.aws.amazon.com/) .
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- cloudformation(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- cloudformation()
#' svc$activate_type(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p1:cloudformation_activate_type]{activate_type} \tab Activates a public third-party extension, making it available for use in stack templates\cr
#'  \link[paws.management.p1:cloudformation_batch_describe_type_configurations]{batch_describe_type_configurations} \tab Returns configuration data for the specified CloudFormation extensions, from the CloudFormation registry for the account and region\cr
#'  \link[paws.management.p1:cloudformation_cancel_update_stack]{cancel_update_stack} \tab Cancels an update on the specified stack\cr
#'  \link[paws.management.p1:cloudformation_continue_update_rollback]{continue_update_rollback} \tab For a specified stack that's in the UPDATE_ROLLBACK_FAILED state, continues rolling it back to the UPDATE_ROLLBACK_COMPLETE state\cr
#'  \link[paws.management.p1:cloudformation_create_change_set]{create_change_set} \tab Creates a list of changes that will be applied to a stack so that you can review the changes before executing them\cr
#'  \link[paws.management.p1:cloudformation_create_stack]{create_stack} \tab Creates a stack as specified in the template\cr
#'  \link[paws.management.p1:cloudformation_create_stack_instances]{create_stack_instances} \tab Creates stack instances for the specified accounts, within the specified Amazon Web Services Regions\cr
#'  \link[paws.management.p1:cloudformation_create_stack_set]{create_stack_set} \tab Creates a stack set\cr
#'  \link[paws.management.p1:cloudformation_deactivate_type]{deactivate_type} \tab Deactivates a public extension that was previously activated in this account and region\cr
#'  \link[paws.management.p1:cloudformation_delete_change_set]{delete_change_set} \tab Deletes the specified change set\cr
#'  \link[paws.management.p1:cloudformation_delete_stack]{delete_stack} \tab Deletes a specified stack\cr
#'  \link[paws.management.p1:cloudformation_delete_stack_instances]{delete_stack_instances} \tab Deletes stack instances for the specified accounts, in the specified Amazon Web Services Regions\cr
#'  \link[paws.management.p1:cloudformation_delete_stack_set]{delete_stack_set} \tab Deletes a stack set\cr
#'  \link[paws.management.p1:cloudformation_deregister_type]{deregister_type} \tab Marks an extension or extension version as DEPRECATED in the CloudFormation registry, removing it from active use\cr
#'  \link[paws.management.p1:cloudformation_describe_account_limits]{describe_account_limits} \tab Retrieves your account's CloudFormation limits, such as the maximum number of stacks that you can create in your account\cr
#'  \link[paws.management.p1:cloudformation_describe_change_set]{describe_change_set} \tab Returns the inputs for the change set and a list of changes that CloudFormation will make if you execute the change set\cr
#'  \link[paws.management.p1:cloudformation_describe_change_set_hooks]{describe_change_set_hooks} \tab Returns hook-related information for the change set and a list of changes that CloudFormation makes when you run the change set\cr
#'  \link[paws.management.p1:cloudformation_describe_publisher]{describe_publisher} \tab Returns information about a CloudFormation extension publisher\cr
#'  \link[paws.management.p1:cloudformation_describe_stack_drift_detection_status]{describe_stack_drift_detection_status} \tab Returns information about a stack drift detection operation\cr
#'  \link[paws.management.p1:cloudformation_describe_stack_events]{describe_stack_events} \tab Returns all stack related events for a specified stack in reverse chronological order\cr
#'  \link[paws.management.p1:cloudformation_describe_stack_instance]{describe_stack_instance} \tab Returns the stack instance that's associated with the specified stack set, Amazon Web Services account, and Region\cr
#'  \link[paws.management.p1:cloudformation_describe_stack_resource]{describe_stack_resource} \tab Returns a description of the specified resource in the specified stack\cr
#'  \link[paws.management.p1:cloudformation_describe_stack_resource_drifts]{describe_stack_resource_drifts} \tab Returns drift information for the resources that have been checked for drift in the specified stack\cr
#'  \link[paws.management.p1:cloudformation_describe_stack_resources]{describe_stack_resources} \tab Returns Amazon Web Services resource descriptions for running and deleted stacks\cr
#'  \link[paws.management.p1:cloudformation_describe_stacks]{describe_stacks} \tab Returns the description for the specified stack; if no stack name was specified, then it returns the description for all the stacks created\cr
#'  \link[paws.management.p1:cloudformation_describe_stack_set]{describe_stack_set} \tab Returns the description of the specified stack set\cr
#'  \link[paws.management.p1:cloudformation_describe_stack_set_operation]{describe_stack_set_operation} \tab Returns the description of the specified stack set operation\cr
#'  \link[paws.management.p1:cloudformation_describe_type]{describe_type} \tab Returns detailed information about an extension that has been registered\cr
#'  \link[paws.management.p1:cloudformation_describe_type_registration]{describe_type_registration} \tab Returns information about an extension's registration, including its current status and type and version identifiers\cr
#'  \link[paws.management.p1:cloudformation_detect_stack_drift]{detect_stack_drift} \tab Detects whether a stack's actual configuration differs, or has drifted, from it's expected configuration, as defined in the stack template and any values specified as template parameters\cr
#'  \link[paws.management.p1:cloudformation_detect_stack_resource_drift]{detect_stack_resource_drift} \tab Returns information about whether a resource's actual configuration differs, or has drifted, from it's expected configuration, as defined in the stack template and any values specified as template parameters\cr
#'  \link[paws.management.p1:cloudformation_detect_stack_set_drift]{detect_stack_set_drift} \tab Detect drift on a stack set\cr
#'  \link[paws.management.p1:cloudformation_estimate_template_cost]{estimate_template_cost} \tab Returns the estimated monthly cost of a template\cr
#'  \link[paws.management.p1:cloudformation_execute_change_set]{execute_change_set} \tab Updates a stack using the input information that was provided when the specified change set was created\cr
#'  \link[paws.management.p1:cloudformation_get_stack_policy]{get_stack_policy} \tab Returns the stack policy for a specified stack\cr
#'  \link[paws.management.p1:cloudformation_get_template]{get_template} \tab Returns the template body for a specified stack\cr
#'  \link[paws.management.p1:cloudformation_get_template_summary]{get_template_summary} \tab Returns information about a new or existing template\cr
#'  \link[paws.management.p1:cloudformation_import_stacks_to_stack_set]{import_stacks_to_stack_set} \tab Import existing stacks into a new stack sets\cr
#'  \link[paws.management.p1:cloudformation_list_change_sets]{list_change_sets} \tab Returns the ID and status of each active change set for a stack\cr
#'  \link[paws.management.p1:cloudformation_list_exports]{list_exports} \tab Lists all exported output values in the account and Region in which you call this action\cr
#'  \link[paws.management.p1:cloudformation_list_imports]{list_imports} \tab Lists all stacks that are importing an exported output value\cr
#'  \link[paws.management.p1:cloudformation_list_stack_instances]{list_stack_instances} \tab Returns summary information about stack instances that are associated with the specified stack set\cr
#'  \link[paws.management.p1:cloudformation_list_stack_resources]{list_stack_resources} \tab Returns descriptions of all resources of the specified stack\cr
#'  \link[paws.management.p1:cloudformation_list_stacks]{list_stacks} \tab Returns the summary information for stacks whose status matches the specified StackStatusFilter\cr
#'  \link[paws.management.p1:cloudformation_list_stack_set_operation_results]{list_stack_set_operation_results} \tab Returns summary information about the results of a stack set operation\cr
#'  \link[paws.management.p1:cloudformation_list_stack_set_operations]{list_stack_set_operations} \tab Returns summary information about operations performed on a stack set\cr
#'  \link[paws.management.p1:cloudformation_list_stack_sets]{list_stack_sets} \tab Returns summary information about stack sets that are associated with the user\cr
#'  \link[paws.management.p1:cloudformation_list_type_registrations]{list_type_registrations} \tab Returns a list of registration tokens for the specified extension(s)\cr
#'  \link[paws.management.p1:cloudformation_list_types]{list_types} \tab Returns summary information about extension that have been registered with CloudFormation\cr
#'  \link[paws.management.p1:cloudformation_list_type_versions]{list_type_versions} \tab Returns summary information about the versions of an extension\cr
#'  \link[paws.management.p1:cloudformation_publish_type]{publish_type} \tab Publishes the specified extension to the CloudFormation registry as a public extension in this region\cr
#'  \link[paws.management.p1:cloudformation_record_handler_progress]{record_handler_progress} \tab Reports progress of a resource handler to CloudFormation\cr
#'  \link[paws.management.p1:cloudformation_register_publisher]{register_publisher} \tab Registers your account as a publisher of public extensions in the CloudFormation registry\cr
#'  \link[paws.management.p1:cloudformation_register_type]{register_type} \tab Registers an extension with the CloudFormation service\cr
#'  \link[paws.management.p1:cloudformation_rollback_stack]{rollback_stack} \tab When specifying RollbackStack, you preserve the state of previously provisioned resources when an operation fails\cr
#'  \link[paws.management.p1:cloudformation_set_stack_policy]{set_stack_policy} \tab Sets a stack policy for a specified stack\cr
#'  \link[paws.management.p1:cloudformation_set_type_configuration]{set_type_configuration} \tab Specifies the configuration data for a registered CloudFormation extension, in the given account and region\cr
#'  \link[paws.management.p1:cloudformation_set_type_default_version]{set_type_default_version} \tab Specify the default version of an extension\cr
#'  \link[paws.management.p1:cloudformation_signal_resource]{signal_resource} \tab Sends a signal to the specified resource with a success or failure status\cr
#'  \link[paws.management.p1:cloudformation_stop_stack_set_operation]{stop_stack_set_operation} \tab Stops an in-progress operation on a stack set and its associated stack instances\cr
#'  \link[paws.management.p1:cloudformation_test_type]{test_type} \tab Tests a registered extension to make sure it meets all necessary requirements for being published in the CloudFormation registry\cr
#'  \link[paws.management.p1:cloudformation_update_stack]{update_stack} \tab Updates a stack as specified in the template\cr
#'  \link[paws.management.p1:cloudformation_update_stack_instances]{update_stack_instances} \tab Updates the parameter values for stack instances for the specified accounts, within the specified Amazon Web Services Regions\cr
#'  \link[paws.management.p1:cloudformation_update_stack_set]{update_stack_set} \tab Updates the stack set, and associated stack instances in the specified accounts and Amazon Web Services Regions\cr
#'  \link[paws.management.p1:cloudformation_update_termination_protection]{update_termination_protection} \tab Updates termination protection for the specified stack\cr
#'  \link[paws.management.p1:cloudformation_validate_template]{validate_template} \tab Validates a specified template
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname cloudformation
#' @export
cloudformation <- function(config = list()) {
  paws.management.p1::cloudformation(config)
}

#' AWS CloudTrail
#'
#' @description
#' CloudTrail
#' 
#' This is the CloudTrail API Reference. It provides descriptions of
#' actions, data types, common parameters, and common errors for
#' CloudTrail.
#' 
#' CloudTrail is a web service that records Amazon Web Services API calls
#' for your Amazon Web Services account and delivers log files to an Amazon
#' S3 bucket. The recorded information includes the identity of the user,
#' the start time of the Amazon Web Services API call, the source IP
#' address, the request parameters, and the response elements returned by
#' the service.
#' 
#' As an alternative to the API, you can use one of the Amazon Web Services
#' SDKs, which consist of libraries and sample code for various programming
#' languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs
#' provide programmatic access to CloudTrail. For example, the SDKs handle
#' cryptographically signing requests, managing errors, and retrying
#' requests automatically. For more information about the Amazon Web
#' Services SDKs, including how to download and install them, see [Tools to
#' Build on Amazon Web Services](https://aws.amazon.com/developer/tools/).
#' 
#' See the [CloudTrail User
#' Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html)
#' for information about the data that is included with each Amazon Web
#' Services API call listed in the log files.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- cloudtrail(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- cloudtrail()
#' svc$add_tags(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p1:cloudtrail_add_tags]{add_tags} \tab Adds one or more tags to a trail or event data store, up to a limit of 50\cr
#'  \link[paws.management.p1:cloudtrail_cancel_query]{cancel_query} \tab Cancels a query if the query is not in a terminated state, such as CANCELLED, FAILED, TIMED_OUT, or FINISHED\cr
#'  \link[paws.management.p1:cloudtrail_create_event_data_store]{create_event_data_store} \tab Creates a new event data store\cr
#'  \link[paws.management.p1:cloudtrail_create_trail]{create_trail} \tab Creates a trail that specifies the settings for delivery of log data to an Amazon S3 bucket\cr
#'  \link[paws.management.p1:cloudtrail_delete_event_data_store]{delete_event_data_store} \tab Disables the event data store specified by EventDataStore, which accepts an event data store ARN\cr
#'  \link[paws.management.p1:cloudtrail_delete_trail]{delete_trail} \tab Deletes a trail\cr
#'  \link[paws.management.p1:cloudtrail_describe_query]{describe_query} \tab Returns metadata about a query, including query run time in milliseconds, number of events scanned and matched, and query status\cr
#'  \link[paws.management.p1:cloudtrail_describe_trails]{describe_trails} \tab Retrieves settings for one or more trails associated with the current region for your account\cr
#'  \link[paws.management.p1:cloudtrail_get_event_data_store]{get_event_data_store} \tab Returns information about an event data store specified as either an ARN or the ID portion of the ARN\cr
#'  \link[paws.management.p1:cloudtrail_get_event_selectors]{get_event_selectors} \tab Describes the settings for the event selectors that you configured for your trail\cr
#'  \link[paws.management.p1:cloudtrail_get_insight_selectors]{get_insight_selectors} \tab Describes the settings for the Insights event selectors that you configured for your trail\cr
#'  \link[paws.management.p1:cloudtrail_get_query_results]{get_query_results} \tab Gets event data results of a query\cr
#'  \link[paws.management.p1:cloudtrail_get_trail]{get_trail} \tab Returns settings information for a specified trail\cr
#'  \link[paws.management.p1:cloudtrail_get_trail_status]{get_trail_status} \tab Returns a JSON-formatted list of information about the specified trail\cr
#'  \link[paws.management.p1:cloudtrail_list_event_data_stores]{list_event_data_stores} \tab Returns information about all event data stores in the account, in the current region\cr
#'  \link[paws.management.p1:cloudtrail_list_public_keys]{list_public_keys} \tab Returns all public keys whose private keys were used to sign the digest files within the specified time range\cr
#'  \link[paws.management.p1:cloudtrail_list_queries]{list_queries} \tab Returns a list of queries and query statuses for the past seven days\cr
#'  \link[paws.management.p1:cloudtrail_list_tags]{list_tags} \tab Lists the tags for the trail or event data store in the current region\cr
#'  \link[paws.management.p1:cloudtrail_list_trails]{list_trails} \tab Lists trails that are in the current account\cr
#'  \link[paws.management.p1:cloudtrail_lookup_events]{lookup_events} \tab Looks up management events or CloudTrail Insights events that are captured by CloudTrail\cr
#'  \link[paws.management.p1:cloudtrail_put_event_selectors]{put_event_selectors} \tab Configures an event selector or advanced event selectors for your trail\cr
#'  \link[paws.management.p1:cloudtrail_put_insight_selectors]{put_insight_selectors} \tab Lets you enable Insights event logging by specifying the Insights selectors that you want to enable on an existing trail\cr
#'  \link[paws.management.p1:cloudtrail_remove_tags]{remove_tags} \tab Removes the specified tags from a trail or event data store\cr
#'  \link[paws.management.p1:cloudtrail_restore_event_data_store]{restore_event_data_store} \tab Restores a deleted event data store specified by EventDataStore, which accepts an event data store ARN\cr
#'  \link[paws.management.p1:cloudtrail_start_logging]{start_logging} \tab Starts the recording of Amazon Web Services API calls and log file delivery for a trail\cr
#'  \link[paws.management.p1:cloudtrail_start_query]{start_query} \tab Starts a CloudTrail Lake query\cr
#'  \link[paws.management.p1:cloudtrail_stop_logging]{stop_logging} \tab Suspends the recording of Amazon Web Services API calls and log file delivery for the specified trail\cr
#'  \link[paws.management.p1:cloudtrail_update_event_data_store]{update_event_data_store} \tab Updates an event data store\cr
#'  \link[paws.management.p1:cloudtrail_update_trail]{update_trail} \tab Updates trail settings that control what events you are logging, and how to handle log files
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname cloudtrail
#' @export
cloudtrail <- function(config = list()) {
  paws.management.p1::cloudtrail(config)
}

#' AWS Config
#'
#' @description
#' Config
#' 
#' Config provides a way to keep track of the configurations of all the
#' Amazon Web Services resources associated with your Amazon Web Services
#' account. You can use Config to get the current and historical
#' configurations of each Amazon Web Services resource and also to get
#' information about the relationship between the resources. An Amazon Web
#' Services resource can be an Amazon Compute Cloud (Amazon EC2) instance,
#' an Elastic Block Store (EBS) volume, an elastic network Interface (ENI),
#' or a security group. For a complete list of resources currently
#' supported by Config, see [Supported Amazon Web Services
#' resources](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources).
#' 
#' You can access and manage Config through the Amazon Web Services
#' Management Console, the Amazon Web Services Command Line Interface
#' (Amazon Web Services CLI), the Config API, or the Amazon Web Services
#' SDKs for Config. This reference guide contains documentation for the
#' Config API and the Amazon Web Services CLI commands that you can use to
#' manage Config. The Config API uses the Signature Version 4 protocol for
#' signing requests. For more information about how to sign a request with
#' this protocol, see [Signature Version 4 Signing
#' Process](https://docs.aws.amazon.com/general/latest/gr/signing-aws-api-requests.html).
#' For detailed information about Config features and their associated
#' actions or commands, as well as how to work with Amazon Web Services
#' Management Console, see [What Is
#' Config](https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html)
#' in the *Config Developer Guide*.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- configservice(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- configservice()
#' svc$batch_get_aggregate_resource_config(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p1:configservice_batch_get_aggregate_resource_config]{batch_get_aggregate_resource_config} \tab Returns the current configuration items for resources that are present in your Config aggregator\cr
#'  \link[paws.management.p1:configservice_batch_get_resource_config]{batch_get_resource_config} \tab Returns the BaseConfigurationItem for one or more requested resources\cr
#'  \link[paws.management.p1:configservice_delete_aggregation_authorization]{delete_aggregation_authorization} \tab Deletes the authorization granted to the specified configuration aggregator account in a specified region\cr
#'  \link[paws.management.p1:configservice_delete_config_rule]{delete_config_rule} \tab Deletes the specified Config rule and all of its evaluation results\cr
#'  \link[paws.management.p1:configservice_delete_configuration_aggregator]{delete_configuration_aggregator} \tab Deletes the specified configuration aggregator and the aggregated data associated with the aggregator\cr
#'  \link[paws.management.p1:configservice_delete_configuration_recorder]{delete_configuration_recorder} \tab Deletes the configuration recorder\cr
#'  \link[paws.management.p1:configservice_delete_conformance_pack]{delete_conformance_pack} \tab Deletes the specified conformance pack and all the Config rules, remediation actions, and all evaluation results within that conformance pack\cr
#'  \link[paws.management.p1:configservice_delete_delivery_channel]{delete_delivery_channel} \tab Deletes the delivery channel\cr
#'  \link[paws.management.p1:configservice_delete_evaluation_results]{delete_evaluation_results} \tab Deletes the evaluation results for the specified Config rule\cr
#'  \link[paws.management.p1:configservice_delete_organization_config_rule]{delete_organization_config_rule} \tab Deletes the specified organization Config rule and all of its evaluation results from all member accounts in that organization\cr
#'  \link[paws.management.p1:configservice_delete_organization_conformance_pack]{delete_organization_conformance_pack} \tab Deletes the specified organization conformance pack and all of the Config rules and remediation actions from all member accounts in that organization\cr
#'  \link[paws.management.p1:configservice_delete_pending_aggregation_request]{delete_pending_aggregation_request} \tab Deletes pending authorization requests for a specified aggregator account in a specified region\cr
#'  \link[paws.management.p1:configservice_delete_remediation_configuration]{delete_remediation_configuration} \tab Deletes the remediation configuration\cr
#'  \link[paws.management.p1:configservice_delete_remediation_exceptions]{delete_remediation_exceptions} \tab Deletes one or more remediation exceptions mentioned in the resource keys\cr
#'  \link[paws.management.p1:configservice_delete_resource_config]{delete_resource_config} \tab Records the configuration state for a custom resource that has been deleted\cr
#'  \link[paws.management.p1:configservice_delete_retention_configuration]{delete_retention_configuration} \tab Deletes the retention configuration\cr
#'  \link[paws.management.p1:configservice_delete_stored_query]{delete_stored_query} \tab Deletes the stored query for a single Amazon Web Services account and a single Amazon Web Services Region\cr
#'  \link[paws.management.p1:configservice_deliver_config_snapshot]{deliver_config_snapshot} \tab Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the specified delivery channel\cr
#'  \link[paws.management.p1:configservice_describe_aggregate_compliance_by_config_rules]{describe_aggregate_compliance_by_config_rules} \tab Returns a list of compliant and noncompliant rules with the number of resources for compliant and noncompliant rules\cr
#'  \link[paws.management.p1:configservice_describe_aggregate_compliance_by_conformance_packs]{describe_aggregate_compliance_by_conformance_packs} \tab Returns a list of the conformance packs and their associated compliance status with the count of compliant and noncompliant Config rules within each conformance pack\cr
#'  \link[paws.management.p1:configservice_describe_aggregation_authorizations]{describe_aggregation_authorizations} \tab Returns a list of authorizations granted to various aggregator accounts and regions\cr
#'  \link[paws.management.p1:configservice_describe_compliance_by_config_rule]{describe_compliance_by_config_rule} \tab Indicates whether the specified Config rules are compliant\cr
#'  \link[paws.management.p1:configservice_describe_compliance_by_resource]{describe_compliance_by_resource} \tab Indicates whether the specified Amazon Web Services resources are compliant\cr
#'  \link[paws.management.p1:configservice_describe_config_rule_evaluation_status]{describe_config_rule_evaluation_status} \tab Returns status information for each of your Config managed rules\cr
#'  \link[paws.management.p1:configservice_describe_config_rules]{describe_config_rules} \tab Returns details about your Config rules\cr
#'  \link[paws.management.p1:configservice_describe_configuration_aggregators]{describe_configuration_aggregators} \tab Returns the details of one or more configuration aggregators\cr
#'  \link[paws.management.p1:configservice_describe_configuration_aggregator_sources_status]{describe_configuration_aggregator_sources_status} \tab Returns status information for sources within an aggregator\cr
#'  \link[paws.management.p1:configservice_describe_configuration_recorders]{describe_configuration_recorders} \tab Returns the details for the specified configuration recorders\cr
#'  \link[paws.management.p1:configservice_describe_configuration_recorder_status]{describe_configuration_recorder_status} \tab Returns the current status of the specified configuration recorder\cr
#'  \link[paws.management.p1:configservice_describe_conformance_pack_compliance]{describe_conformance_pack_compliance} \tab Returns compliance details for each rule in that conformance pack\cr
#'  \link[paws.management.p1:configservice_describe_conformance_packs]{describe_conformance_packs} \tab Returns a list of one or more conformance packs\cr
#'  \link[paws.management.p1:configservice_describe_conformance_pack_status]{describe_conformance_pack_status} \tab Provides one or more conformance packs deployment status\cr
#'  \link[paws.management.p1:configservice_describe_delivery_channels]{describe_delivery_channels} \tab Returns details about the specified delivery channel\cr
#'  \link[paws.management.p1:configservice_describe_delivery_channel_status]{describe_delivery_channel_status} \tab Returns the current status of the specified delivery channel\cr
#'  \link[paws.management.p1:configservice_describe_organization_config_rules]{describe_organization_config_rules} \tab Returns a list of organization Config rules\cr
#'  \link[paws.management.p1:configservice_describe_organization_config_rule_statuses]{describe_organization_config_rule_statuses} \tab Provides organization Config rule deployment status for an organization\cr
#'  \link[paws.management.p1:configservice_describe_organization_conformance_packs]{describe_organization_conformance_packs} \tab Returns a list of organization conformance packs\cr
#'  \link[paws.management.p1:configservice_describe_organization_conformance_pack_statuses]{describe_organization_conformance_pack_statuses} \tab Provides organization conformance pack deployment status for an organization\cr
#'  \link[paws.management.p1:configservice_describe_pending_aggregation_requests]{describe_pending_aggregation_requests} \tab Returns a list of all pending aggregation requests\cr
#'  \link[paws.management.p1:configservice_describe_remediation_configurations]{describe_remediation_configurations} \tab Returns the details of one or more remediation configurations\cr
#'  \link[paws.management.p1:configservice_describe_remediation_exceptions]{describe_remediation_exceptions} \tab Returns the details of one or more remediation exceptions\cr
#'  \link[paws.management.p1:configservice_describe_remediation_execution_status]{describe_remediation_execution_status} \tab Provides a detailed view of a Remediation Execution for a set of resources including state, timestamps for when steps for the remediation execution occur, and any error messages for steps that have failed\cr
#'  \link[paws.management.p1:configservice_describe_retention_configurations]{describe_retention_configurations} \tab Returns the details of one or more retention configurations\cr
#'  \link[paws.management.p1:configservice_get_aggregate_compliance_details_by_config_rule]{get_aggregate_compliance_details_by_config_rule} \tab Returns the evaluation results for the specified Config rule for a specific resource in a rule\cr
#'  \link[paws.management.p1:configservice_get_aggregate_config_rule_compliance_summary]{get_aggregate_config_rule_compliance_summary} \tab Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator\cr
#'  \link[paws.management.p1:configservice_get_aggregate_conformance_pack_compliance_summary]{get_aggregate_conformance_pack_compliance_summary} \tab Returns the count of compliant and noncompliant conformance packs across all Amazon Web Services accounts and Amazon Web Services Regions in an aggregator\cr
#'  \link[paws.management.p1:configservice_get_aggregate_discovered_resource_counts]{get_aggregate_discovered_resource_counts} \tab Returns the resource counts across accounts and regions that are present in your Config aggregator\cr
#'  \link[paws.management.p1:configservice_get_aggregate_resource_config]{get_aggregate_resource_config} \tab Returns configuration item that is aggregated for your specific resource in a specific source account and region\cr
#'  \link[paws.management.p1:configservice_get_compliance_details_by_config_rule]{get_compliance_details_by_config_rule} \tab Returns the evaluation results for the specified Config rule\cr
#'  \link[paws.management.p1:configservice_get_compliance_details_by_resource]{get_compliance_details_by_resource} \tab Returns the evaluation results for the specified Amazon Web Services resource\cr
#'  \link[paws.management.p1:configservice_get_compliance_summary_by_config_rule]{get_compliance_summary_by_config_rule} \tab Returns the number of Config rules that are compliant and noncompliant, up to a maximum of 25 for each\cr
#'  \link[paws.management.p1:configservice_get_compliance_summary_by_resource_type]{get_compliance_summary_by_resource_type} \tab Returns the number of resources that are compliant and the number that are noncompliant\cr
#'  \link[paws.management.p1:configservice_get_conformance_pack_compliance_details]{get_conformance_pack_compliance_details} \tab Returns compliance details of a conformance pack for all Amazon Web Services resources that are monitered by conformance pack\cr
#'  \link[paws.management.p1:configservice_get_conformance_pack_compliance_summary]{get_conformance_pack_compliance_summary} \tab Returns compliance details for the conformance pack based on the cumulative compliance results of all the rules in that conformance pack\cr
#'  \link[paws.management.p1:configservice_get_custom_rule_policy]{get_custom_rule_policy} \tab Returns the policy definition containing the logic for your Config Custom Policy rule\cr
#'  \link[paws.management.p1:configservice_get_discovered_resource_counts]{get_discovered_resource_counts} \tab Returns the resource types, the number of each resource type, and the total number of resources that Config is recording in this region for your Amazon Web Services account\cr
#'  \link[paws.management.p1:configservice_get_organization_config_rule_detailed_status]{get_organization_config_rule_detailed_status} \tab Returns detailed status for each member account within an organization for a given organization Config rule\cr
#'  \link[paws.management.p1:configservice_get_organization_conformance_pack_detailed_status]{get_organization_conformance_pack_detailed_status} \tab Returns detailed status for each member account within an organization for a given organization conformance pack\cr
#'  \link[paws.management.p1:configservice_get_organization_custom_rule_policy]{get_organization_custom_rule_policy} \tab Returns the policy definition containing the logic for your organization Config Custom Policy rule\cr
#'  \link[paws.management.p1:configservice_get_resource_config_history]{get_resource_config_history} \tab Returns a list of ConfigurationItems for the specified resource\cr
#'  \link[paws.management.p1:configservice_get_stored_query]{get_stored_query} \tab Returns the details of a specific stored query\cr
#'  \link[paws.management.p1:configservice_list_aggregate_discovered_resources]{list_aggregate_discovered_resources} \tab Accepts a resource type and returns a list of resource identifiers that are aggregated for a specific resource type across accounts and regions\cr
#'  \link[paws.management.p1:configservice_list_conformance_pack_compliance_scores]{list_conformance_pack_compliance_scores} \tab Returns a list of conformance pack compliance scores\cr
#'  \link[paws.management.p1:configservice_list_discovered_resources]{list_discovered_resources} \tab Accepts a resource type and returns a list of resource identifiers for the resources of that type\cr
#'  \link[paws.management.p1:configservice_list_stored_queries]{list_stored_queries} \tab Lists the stored queries for a single Amazon Web Services account and a single Amazon Web Services Region\cr
#'  \link[paws.management.p1:configservice_list_tags_for_resource]{list_tags_for_resource} \tab List the tags for Config resource\cr
#'  \link[paws.management.p1:configservice_put_aggregation_authorization]{put_aggregation_authorization} \tab Authorizes the aggregator account and region to collect data from the source account and region\cr
#'  \link[paws.management.p1:configservice_put_config_rule]{put_config_rule} \tab Adds or updates an Config rule to evaluate if your Amazon Web Services resources comply with your desired configurations\cr
#'  \link[paws.management.p1:configservice_put_configuration_aggregator]{put_configuration_aggregator} \tab Creates and updates the configuration aggregator with the selected source accounts and regions\cr
#'  \link[paws.management.p1:configservice_put_configuration_recorder]{put_configuration_recorder} \tab Creates a new configuration recorder to record the selected resource configurations\cr
#'  \link[paws.management.p1:configservice_put_conformance_pack]{put_conformance_pack} \tab Creates or updates a conformance pack\cr
#'  \link[paws.management.p1:configservice_put_delivery_channel]{put_delivery_channel} \tab Creates a delivery channel object to deliver configuration information to an Amazon S3 bucket and Amazon SNS topic\cr
#'  \link[paws.management.p1:configservice_put_evaluations]{put_evaluations} \tab Used by an Lambda function to deliver evaluation results to Config\cr
#'  \link[paws.management.p1:configservice_put_external_evaluation]{put_external_evaluation} \tab Add or updates the evaluations for process checks\cr
#'  \link[paws.management.p1:configservice_put_organization_config_rule]{put_organization_config_rule} \tab Adds or updates an Config rule for your entire organization to evaluate if your Amazon Web Services resources comply with your desired configurations\cr
#'  \link[paws.management.p1:configservice_put_organization_conformance_pack]{put_organization_conformance_pack} \tab Deploys conformance packs across member accounts in an Amazon Web Services Organization\cr
#'  \link[paws.management.p1:configservice_put_remediation_configurations]{put_remediation_configurations} \tab Adds or updates the remediation configuration with a specific Config rule with the selected target or action\cr
#'  \link[paws.management.p1:configservice_put_remediation_exceptions]{put_remediation_exceptions} \tab A remediation exception is when a specific resource is no longer considered for auto-remediation\cr
#'  \link[paws.management.p1:configservice_put_resource_config]{put_resource_config} \tab Records the configuration state for the resource provided in the request\cr
#'  \link[paws.management.p1:configservice_put_retention_configuration]{put_retention_configuration} \tab Creates and updates the retention configuration with details about retention period (number of days) that Config stores your historical information\cr
#'  \link[paws.management.p1:configservice_put_stored_query]{put_stored_query} \tab Saves a new query or updates an existing saved query\cr
#'  \link[paws.management.p1:configservice_select_aggregate_resource_config]{select_aggregate_resource_config} \tab Accepts a structured query language (SQL) SELECT command and an aggregator to query configuration state of Amazon Web Services resources across multiple accounts and regions, performs the corresponding search, and returns resource configurations matching the properties\cr
#'  \link[paws.management.p1:configservice_select_resource_config]{select_resource_config} \tab Accepts a structured query language (SQL) SELECT command, performs the corresponding search, and returns resource configurations matching the properties\cr
#'  \link[paws.management.p1:configservice_start_config_rules_evaluation]{start_config_rules_evaluation} \tab Runs an on-demand evaluation for the specified Config rules against the last known configuration state of the resources\cr
#'  \link[paws.management.p1:configservice_start_configuration_recorder]{start_configuration_recorder} \tab Starts recording configurations of the Amazon Web Services resources you have selected to record in your Amazon Web Services account\cr
#'  \link[paws.management.p1:configservice_start_remediation_execution]{start_remediation_execution} \tab Runs an on-demand remediation for the specified Config rules against the last known remediation configuration\cr
#'  \link[paws.management.p1:configservice_stop_configuration_recorder]{stop_configuration_recorder} \tab Stops recording configurations of the Amazon Web Services resources you have selected to record in your Amazon Web Services account\cr
#'  \link[paws.management.p1:configservice_tag_resource]{tag_resource} \tab Associates the specified tags to a resource with the specified resourceArn\cr
#'  \link[paws.management.p1:configservice_untag_resource]{untag_resource} \tab Deletes specified tags from a resource
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname configservice
#' @export
configservice <- function(config = list()) {
  paws.management.p1::configservice(config)
}

#' Amazon CloudWatch Events
#'
#' @description
#' Amazon EventBridge helps you to respond to state changes in your Amazon
#' Web Services resources. When your resources change state, they
#' automatically send events to an event stream. You can create rules that
#' match selected events in the stream and route them to targets to take
#' action. You can also use rules to take action on a predetermined
#' schedule. For example, you can configure rules to:
#' 
#' -   Automatically invoke an Lambda function to update DNS entries when
#'     an event notifies you that Amazon EC2 instance enters the running
#'     state.
#' 
#' -   Direct specific API records from CloudTrail to an Amazon Kinesis
#'     data stream for detailed analysis of potential security or
#'     availability risks.
#' 
#' -   Periodically invoke a built-in target to create a snapshot of an
#'     Amazon EBS volume.
#' 
#' For more information about the features of Amazon EventBridge, see the
#' [Amazon EventBridge User
#' Guide](https://docs.aws.amazon.com/eventbridge/latest/userguide/).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- cloudwatchevents(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- cloudwatchevents()
#' svc$activate_event_source(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p1:cloudwatchevents_activate_event_source]{activate_event_source} \tab Activates a partner event source that has been deactivated\cr
#'  \link[paws.management.p1:cloudwatchevents_cancel_replay]{cancel_replay} \tab Cancels the specified replay\cr
#'  \link[paws.management.p1:cloudwatchevents_create_api_destination]{create_api_destination} \tab Creates an API destination, which is an HTTP invocation endpoint configured as a target for events\cr
#'  \link[paws.management.p1:cloudwatchevents_create_archive]{create_archive} \tab Creates an archive of events with the specified settings\cr
#'  \link[paws.management.p1:cloudwatchevents_create_connection]{create_connection} \tab Creates a connection\cr
#'  \link[paws.management.p1:cloudwatchevents_create_event_bus]{create_event_bus} \tab Creates a new event bus within your account\cr
#'  \link[paws.management.p1:cloudwatchevents_create_partner_event_source]{create_partner_event_source} \tab Called by an SaaS partner to create a partner event source\cr
#'  \link[paws.management.p1:cloudwatchevents_deactivate_event_source]{deactivate_event_source} \tab You can use this operation to temporarily stop receiving events from the specified partner event source\cr
#'  \link[paws.management.p1:cloudwatchevents_deauthorize_connection]{deauthorize_connection} \tab Removes all authorization parameters from the connection\cr
#'  \link[paws.management.p1:cloudwatchevents_delete_api_destination]{delete_api_destination} \tab Deletes the specified API destination\cr
#'  \link[paws.management.p1:cloudwatchevents_delete_archive]{delete_archive} \tab Deletes the specified archive\cr
#'  \link[paws.management.p1:cloudwatchevents_delete_connection]{delete_connection} \tab Deletes a connection\cr
#'  \link[paws.management.p1:cloudwatchevents_delete_event_bus]{delete_event_bus} \tab Deletes the specified custom event bus or partner event bus\cr
#'  \link[paws.management.p1:cloudwatchevents_delete_partner_event_source]{delete_partner_event_source} \tab This operation is used by SaaS partners to delete a partner event source\cr
#'  \link[paws.management.p1:cloudwatchevents_delete_rule]{delete_rule} \tab Deletes the specified rule\cr
#'  \link[paws.management.p1:cloudwatchevents_describe_api_destination]{describe_api_destination} \tab Retrieves details about an API destination\cr
#'  \link[paws.management.p1:cloudwatchevents_describe_archive]{describe_archive} \tab Retrieves details about an archive\cr
#'  \link[paws.management.p1:cloudwatchevents_describe_connection]{describe_connection} \tab Retrieves details about a connection\cr
#'  \link[paws.management.p1:cloudwatchevents_describe_event_bus]{describe_event_bus} \tab Displays details about an event bus in your account\cr
#'  \link[paws.management.p1:cloudwatchevents_describe_event_source]{describe_event_source} \tab This operation lists details about a partner event source that is shared with your account\cr
#'  \link[paws.management.p1:cloudwatchevents_describe_partner_event_source]{describe_partner_event_source} \tab An SaaS partner can use this operation to list details about a partner event source that they have created\cr
#'  \link[paws.management.p1:cloudwatchevents_describe_replay]{describe_replay} \tab Retrieves details about a replay\cr
#'  \link[paws.management.p1:cloudwatchevents_describe_rule]{describe_rule} \tab Describes the specified rule\cr
#'  \link[paws.management.p1:cloudwatchevents_disable_rule]{disable_rule} \tab Disables the specified rule\cr
#'  \link[paws.management.p1:cloudwatchevents_enable_rule]{enable_rule} \tab Enables the specified rule\cr
#'  \link[paws.management.p1:cloudwatchevents_list_api_destinations]{list_api_destinations} \tab Retrieves a list of API destination in the account in the current Region\cr
#'  \link[paws.management.p1:cloudwatchevents_list_archives]{list_archives} \tab Lists your archives\cr
#'  \link[paws.management.p1:cloudwatchevents_list_connections]{list_connections} \tab Retrieves a list of connections from the account\cr
#'  \link[paws.management.p1:cloudwatchevents_list_event_buses]{list_event_buses} \tab Lists all the event buses in your account, including the default event bus, custom event buses, and partner event buses\cr
#'  \link[paws.management.p1:cloudwatchevents_list_event_sources]{list_event_sources} \tab You can use this to see all the partner event sources that have been shared with your Amazon Web Services account\cr
#'  \link[paws.management.p1:cloudwatchevents_list_partner_event_source_accounts]{list_partner_event_source_accounts} \tab An SaaS partner can use this operation to display the Amazon Web Services account ID that a particular partner event source name is associated with\cr
#'  \link[paws.management.p1:cloudwatchevents_list_partner_event_sources]{list_partner_event_sources} \tab An SaaS partner can use this operation to list all the partner event source names that they have created\cr
#'  \link[paws.management.p1:cloudwatchevents_list_replays]{list_replays} \tab Lists your replays\cr
#'  \link[paws.management.p1:cloudwatchevents_list_rule_names_by_target]{list_rule_names_by_target} \tab Lists the rules for the specified target\cr
#'  \link[paws.management.p1:cloudwatchevents_list_rules]{list_rules} \tab Lists your Amazon EventBridge rules\cr
#'  \link[paws.management.p1:cloudwatchevents_list_tags_for_resource]{list_tags_for_resource} \tab Displays the tags associated with an EventBridge resource\cr
#'  \link[paws.management.p1:cloudwatchevents_list_targets_by_rule]{list_targets_by_rule} \tab Lists the targets assigned to the specified rule\cr
#'  \link[paws.management.p1:cloudwatchevents_put_events]{put_events} \tab Sends custom events to Amazon EventBridge so that they can be matched to rules\cr
#'  \link[paws.management.p1:cloudwatchevents_put_partner_events]{put_partner_events} \tab This is used by SaaS partners to write events to a customer's partner event bus\cr
#'  \link[paws.management.p1:cloudwatchevents_put_permission]{put_permission} \tab Running PutPermission permits the specified Amazon Web Services account or Amazon Web Services organization to put events to the specified event bus\cr
#'  \link[paws.management.p1:cloudwatchevents_put_rule]{put_rule} \tab Creates or updates the specified rule\cr
#'  \link[paws.management.p1:cloudwatchevents_put_targets]{put_targets} \tab Adds the specified targets to the specified rule, or updates the targets if they are already associated with the rule\cr
#'  \link[paws.management.p1:cloudwatchevents_remove_permission]{remove_permission} \tab Revokes the permission of another Amazon Web Services account to be able to put events to the specified event bus\cr
#'  \link[paws.management.p1:cloudwatchevents_remove_targets]{remove_targets} \tab Removes the specified targets from the specified rule\cr
#'  \link[paws.management.p1:cloudwatchevents_start_replay]{start_replay} \tab Starts the specified replay\cr
#'  \link[paws.management.p1:cloudwatchevents_tag_resource]{tag_resource} \tab Assigns one or more tags (key-value pairs) to the specified EventBridge resource\cr
#'  \link[paws.management.p1:cloudwatchevents_test_event_pattern]{test_event_pattern} \tab Tests whether the specified event pattern matches the provided event\cr
#'  \link[paws.management.p1:cloudwatchevents_untag_resource]{untag_resource} \tab Removes one or more tags from the specified EventBridge resource\cr
#'  \link[paws.management.p1:cloudwatchevents_update_api_destination]{update_api_destination} \tab Updates an API destination\cr
#'  \link[paws.management.p1:cloudwatchevents_update_archive]{update_archive} \tab Updates the specified archive\cr
#'  \link[paws.management.p1:cloudwatchevents_update_connection]{update_connection} \tab Updates settings for a connection
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname cloudwatchevents
#' @export
cloudwatchevents <- function(config = list()) {
  paws.management.p1::cloudwatchevents(config)
}

#' Amazon CloudWatch Evidently
#'
#' @description
#' You can use Amazon CloudWatch Evidently to safely validate new features
#' by serving them to a specified percentage of your users while you roll
#' out the feature. You can monitor the performance of the new feature to
#' help you decide when to ramp up traffic to your users. This helps you
#' reduce risk and identify unintended consequences before you fully launch
#' the feature.
#' 
#' You can also conduct A/B experiments to make feature design decisions
#' based on evidence and data. An experiment can test as many as five
#' variations at once. Evidently collects experiment data and analyzes it
#' using statistical methods. It also provides clear recommendations about
#' which variations perform better. You can test both user-facing features
#' and backend features.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- cloudwatchevidently(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- cloudwatchevidently()
#' svc$batch_evaluate_feature(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p1:cloudwatchevidently_batch_evaluate_feature]{batch_evaluate_feature} \tab This operation assigns feature variation to user sessions\cr
#'  \link[paws.management.p1:cloudwatchevidently_create_experiment]{create_experiment} \tab Creates an Evidently experiment\cr
#'  \link[paws.management.p1:cloudwatchevidently_create_feature]{create_feature} \tab Creates an Evidently feature that you want to launch or test\cr
#'  \link[paws.management.p1:cloudwatchevidently_create_launch]{create_launch} \tab Creates a launch of a given feature\cr
#'  \link[paws.management.p1:cloudwatchevidently_create_project]{create_project} \tab Creates a project, which is the logical object in Evidently that can contain features, launches, and experiments\cr
#'  \link[paws.management.p1:cloudwatchevidently_create_segment]{create_segment} \tab Use this operation to define a segment of your audience\cr
#'  \link[paws.management.p1:cloudwatchevidently_delete_experiment]{delete_experiment} \tab Deletes an Evidently experiment\cr
#'  \link[paws.management.p1:cloudwatchevidently_delete_feature]{delete_feature} \tab Deletes an Evidently feature\cr
#'  \link[paws.management.p1:cloudwatchevidently_delete_launch]{delete_launch} \tab Deletes an Evidently launch\cr
#'  \link[paws.management.p1:cloudwatchevidently_delete_project]{delete_project} \tab Deletes an Evidently project\cr
#'  \link[paws.management.p1:cloudwatchevidently_delete_segment]{delete_segment} \tab Deletes a segment\cr
#'  \link[paws.management.p1:cloudwatchevidently_evaluate_feature]{evaluate_feature} \tab This operation assigns a feature variation to one given user session\cr
#'  \link[paws.management.p1:cloudwatchevidently_get_experiment]{get_experiment} \tab Returns the details about one experiment\cr
#'  \link[paws.management.p1:cloudwatchevidently_get_experiment_results]{get_experiment_results} \tab Retrieves the results of a running or completed experiment\cr
#'  \link[paws.management.p1:cloudwatchevidently_get_feature]{get_feature} \tab Returns the details about one feature\cr
#'  \link[paws.management.p1:cloudwatchevidently_get_launch]{get_launch} \tab Returns the details about one launch\cr
#'  \link[paws.management.p1:cloudwatchevidently_get_project]{get_project} \tab Returns the details about one launch\cr
#'  \link[paws.management.p1:cloudwatchevidently_get_segment]{get_segment} \tab Returns information about the specified segment\cr
#'  \link[paws.management.p1:cloudwatchevidently_list_experiments]{list_experiments} \tab Returns configuration details about all the experiments in the specified project\cr
#'  \link[paws.management.p1:cloudwatchevidently_list_features]{list_features} \tab Returns configuration details about all the features in the specified project\cr
#'  \link[paws.management.p1:cloudwatchevidently_list_launches]{list_launches} \tab Returns configuration details about all the launches in the specified project\cr
#'  \link[paws.management.p1:cloudwatchevidently_list_projects]{list_projects} \tab Returns configuration details about all the projects in the current Region in your account\cr
#'  \link[paws.management.p1:cloudwatchevidently_list_segment_references]{list_segment_references} \tab Use this operation to find which experiments or launches are using a specified segment\cr
#'  \link[paws.management.p1:cloudwatchevidently_list_segments]{list_segments} \tab Returns a list of audience segments that you have created in your account in this Region\cr
#'  \link[paws.management.p1:cloudwatchevidently_list_tags_for_resource]{list_tags_for_resource} \tab Displays the tags associated with an Evidently resource\cr
#'  \link[paws.management.p1:cloudwatchevidently_put_project_events]{put_project_events} \tab Sends performance events to Evidently\cr
#'  \link[paws.management.p1:cloudwatchevidently_start_experiment]{start_experiment} \tab Starts an existing experiment\cr
#'  \link[paws.management.p1:cloudwatchevidently_start_launch]{start_launch} \tab Starts an existing launch\cr
#'  \link[paws.management.p1:cloudwatchevidently_stop_experiment]{stop_experiment} \tab Stops an experiment that is currently running\cr
#'  \link[paws.management.p1:cloudwatchevidently_stop_launch]{stop_launch} \tab Stops a launch that is currently running\cr
#'  \link[paws.management.p1:cloudwatchevidently_tag_resource]{tag_resource} \tab Assigns one or more tags (key-value pairs) to the specified CloudWatch Evidently resource\cr
#'  \link[paws.management.p1:cloudwatchevidently_test_segment_pattern]{test_segment_pattern} \tab Use this operation to test a rules pattern that you plan to use to create an audience segment\cr
#'  \link[paws.management.p1:cloudwatchevidently_untag_resource]{untag_resource} \tab Removes one or more tags from the specified resource\cr
#'  \link[paws.management.p1:cloudwatchevidently_update_experiment]{update_experiment} \tab Updates an Evidently experiment\cr
#'  \link[paws.management.p1:cloudwatchevidently_update_feature]{update_feature} \tab Updates an existing feature\cr
#'  \link[paws.management.p1:cloudwatchevidently_update_launch]{update_launch} \tab Updates a launch of a given feature\cr
#'  \link[paws.management.p1:cloudwatchevidently_update_project]{update_project} \tab Updates the description of an existing project\cr
#'  \link[paws.management.p1:cloudwatchevidently_update_project_data_delivery]{update_project_data_delivery} \tab Updates the data storage options for this project
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname cloudwatchevidently
#' @export
cloudwatchevidently <- function(config = list()) {
  paws.management.p1::cloudwatchevidently(config)
}

#' FinSpace User Environment Management service
#'
#' @description
#' The FinSpace management service provides the APIs for managing FinSpace
#' environments.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- finspace(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- finspace()
#' svc$create_environment(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p1:finspace_create_environment]{create_environment} \tab Create a new FinSpace environment\cr
#'  \link[paws.management.p1:finspace_delete_environment]{delete_environment} \tab Delete an FinSpace environment\cr
#'  \link[paws.management.p1:finspace_get_environment]{get_environment} \tab Returns the FinSpace environment object\cr
#'  \link[paws.management.p1:finspace_list_environments]{list_environments} \tab A list of all of your FinSpace environments\cr
#'  \link[paws.management.p1:finspace_list_tags_for_resource]{list_tags_for_resource} \tab A list of all tags for a resource\cr
#'  \link[paws.management.p1:finspace_tag_resource]{tag_resource} \tab Adds metadata tags to a FinSpace resource\cr
#'  \link[paws.management.p1:finspace_untag_resource]{untag_resource} \tab Removes metadata tags from a FinSpace resource\cr
#'  \link[paws.management.p1:finspace_update_environment]{update_environment} \tab Update your FinSpace environment
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname finspace
#' @export
finspace <- function(config = list()) {
  paws.management.p1::finspace(config)
}

#' Amazon Managed Grafana
#'
#' @description
#' Amazon Managed Grafana is a fully managed and secure data visualization
#' service that you can use to instantly query, correlate, and visualize
#' operational metrics, logs, and traces from multiple sources. Amazon
#' Managed Grafana makes it easy to deploy, operate, and scale Grafana, a
#' widely deployed data visualization tool that is popular for its
#' extensible data support.
#' 
#' With Amazon Managed Grafana, you create logically isolated Grafana
#' servers called *workspaces*. In a workspace, you can create Grafana
#' dashboards and visualizations to analyze your metrics, logs, and traces
#' without having to build, package, or deploy any hardware to run Grafana
#' servers.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- managedgrafana(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- managedgrafana()
#' svc$associate_license(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p1:managedgrafana_associate_license]{associate_license} \tab Assigns a Grafana Enterprise license to a workspace\cr
#'  \link[paws.management.p1:managedgrafana_create_workspace]{create_workspace} \tab Creates a workspace\cr
#'  \link[paws.management.p1:managedgrafana_create_workspace_api_key]{create_workspace_api_key} \tab Creates an API key for the workspace\cr
#'  \link[paws.management.p1:managedgrafana_delete_workspace]{delete_workspace} \tab Deletes an Amazon Managed Grafana workspace\cr
#'  \link[paws.management.p1:managedgrafana_delete_workspace_api_key]{delete_workspace_api_key} \tab Deletes an API key for a workspace\cr
#'  \link[paws.management.p1:managedgrafana_describe_workspace]{describe_workspace} \tab Displays information about one Amazon Managed Grafana workspace\cr
#'  \link[paws.management.p1:managedgrafana_describe_workspace_authentication]{describe_workspace_authentication} \tab Displays information about the authentication methods used in one Amazon Managed Grafana workspace\cr
#'  \link[paws.management.p1:managedgrafana_disassociate_license]{disassociate_license} \tab Removes the Grafana Enterprise license from a workspace\cr
#'  \link[paws.management.p1:managedgrafana_list_permissions]{list_permissions} \tab Lists the users and groups who have the Grafana Admin and Editor roles in this workspace\cr
#'  \link[paws.management.p1:managedgrafana_list_tags_for_resource]{list_tags_for_resource} \tab The ListTagsForResource operation returns the tags that are associated with the Amazon Managed Service for Grafana resource specified by the resourceArn\cr
#'  \link[paws.management.p1:managedgrafana_list_workspaces]{list_workspaces} \tab Returns a list of Amazon Managed Grafana workspaces in the account, with some information about each workspace\cr
#'  \link[paws.management.p1:managedgrafana_tag_resource]{tag_resource} \tab The TagResource operation associates tags with an Amazon Managed Grafana resource\cr
#'  \link[paws.management.p1:managedgrafana_untag_resource]{untag_resource} \tab The UntagResource operation removes the association of the tag with the Amazon Managed Grafana resource\cr
#'  \link[paws.management.p1:managedgrafana_update_permissions]{update_permissions} \tab Updates which users in a workspace have the Grafana Admin or Editor roles\cr
#'  \link[paws.management.p1:managedgrafana_update_workspace]{update_workspace} \tab Modifies an existing Amazon Managed Grafana workspace\cr
#'  \link[paws.management.p1:managedgrafana_update_workspace_authentication]{update_workspace_authentication} \tab Use this operation to define the identity provider (IdP) that this workspace authenticates users from, using SAML
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname managedgrafana
#' @export
managedgrafana <- function(config = list()) {
  paws.management.p1::managedgrafana(config)
}

#' AWS Health APIs and Notifications
#'
#' @description
#' Health
#' 
#' The Health API provides programmatic access to the Health information
#' that appears in the [Personal Health
#' Dashboard](https://health.aws.amazon.com/health/home#/). You can use the
#' API operations to get information about events that might affect your
#' Amazon Web Services services and resources.
#' 
#' -   You must have a Business, Enterprise On-Ramp, or Enterprise Support
#'     plan from [Amazon Web Services
#'     Support](https://aws.amazon.com/premiumsupport/) to use the Health
#'     API. If you call the Health API from an Amazon Web Services account
#'     that doesn't have a Business, Enterprise On-Ramp, or Enterprise
#'     Support plan, you receive a `SubscriptionRequiredException` error.
#' 
#' -   You can use the Health endpoint health.us-east-1.amazonaws.com
#'     (HTTPS) to call the Health API operations. Health supports a
#'     multi-Region application architecture and has two regional endpoints
#'     in an active-passive configuration. You can use the high
#'     availability endpoint example to determine which Amazon Web Services
#'     Region is active, so that you can get the latest information from
#'     the API. For more information, see [Accessing the Health
#'     API](https://docs.aws.amazon.com/health/latest/ug/health-api.html)
#'     in the *Health User Guide*.
#' 
#' For authentication of requests, Health uses the [Signature Version 4
#' Signing
#' Process](https://docs.aws.amazon.com/general/latest/gr/signing-aws-api-requests.html).
#' 
#' If your Amazon Web Services account is part of Organizations, you can
#' use the Health organizational view feature. This feature provides a
#' centralized view of Health events across all accounts in your
#' organization. You can aggregate Health events in real time to identify
#' accounts in your organization that are affected by an operational event
#' or get notified of security vulnerabilities. Use the organizational view
#' API operations to enable this feature and return event information. For
#' more information, see [Aggregating Health
#' events](https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html)
#' in the *Health User Guide*.
#' 
#' When you use the Health API operations to return Health events, see the
#' following recommendations:
#' 
#' -   Use the
#'     [eventScopeCode](https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html#AWSHealth-Type-Event-eventScopeCode)
#'     parameter to specify whether to return Health events that are public
#'     or account-specific.
#' 
#' -   Use pagination to view all events from the response. For example, if
#'     you call the
#'     `describe_events_for_organization`
#'     operation to get all events in your organization, you might receive
#'     several page results. Specify the `nextToken` in the next request to
#'     return more results.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- health(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- health()
#' svc$describe_affected_accounts_for_organization(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p1:health_describe_affected_accounts_for_organization]{describe_affected_accounts_for_organization} \tab Returns a list of accounts in the organization from Organizations that are affected by the provided event\cr
#'  \link[paws.management.p1:health_describe_affected_entities]{describe_affected_entities} \tab Returns a list of entities that have been affected by the specified events, based on the specified filter criteria\cr
#'  \link[paws.management.p1:health_describe_affected_entities_for_organization]{describe_affected_entities_for_organization} \tab Returns a list of entities that have been affected by one or more events for one or more accounts in your organization in Organizations, based on the filter criteria\cr
#'  \link[paws.management.p1:health_describe_entity_aggregates]{describe_entity_aggregates} \tab Returns the number of entities that are affected by each of the specified events\cr
#'  \link[paws.management.p1:health_describe_event_aggregates]{describe_event_aggregates} \tab Returns the number of events of each event type (issue, scheduled change, and account notification)\cr
#'  \link[paws.management.p1:health_describe_event_details]{describe_event_details} \tab Returns detailed information about one or more specified events\cr
#'  \link[paws.management.p1:health_describe_event_details_for_organization]{describe_event_details_for_organization} \tab Returns detailed information about one or more specified events for one or more Amazon Web Services accounts in your organization\cr
#'  \link[paws.management.p1:health_describe_events]{describe_events} \tab Returns information about events that meet the specified filter criteria\cr
#'  \link[paws.management.p1:health_describe_events_for_organization]{describe_events_for_organization} \tab Returns information about events across your organization in Organizations\cr
#'  \link[paws.management.p1:health_describe_event_types]{describe_event_types} \tab Returns the event types that meet the specified filter criteria\cr
#'  \link[paws.management.p1:health_describe_health_service_status_for_organization]{describe_health_service_status_for_organization} \tab This operation provides status information on enabling or disabling Health to work with your organization\cr
#'  \link[paws.management.p1:health_disable_health_service_access_for_organization]{disable_health_service_access_for_organization} \tab Disables Health from working with Organizations\cr
#'  \link[paws.management.p1:health_enable_health_service_access_for_organization]{enable_health_service_access_for_organization} \tab Enables Health to work with Organizations
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname health
#' @export
health <- function(config = list()) {
  paws.management.p1::health(config)
}

#' AWS License Manager
#'
#' @description
#' License Manager makes it easier to manage licenses from software vendors
#' across multiple Amazon Web Services accounts and on-premises servers.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- licensemanager(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- licensemanager()
#' svc$accept_grant(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p1:licensemanager_accept_grant]{accept_grant} \tab Accepts the specified grant\cr
#'  \link[paws.management.p1:licensemanager_check_in_license]{check_in_license} \tab Checks in the specified license\cr
#'  \link[paws.management.p1:licensemanager_checkout_borrow_license]{checkout_borrow_license} \tab Checks out the specified license for offline use\cr
#'  \link[paws.management.p1:licensemanager_checkout_license]{checkout_license} \tab Checks out the specified license\cr
#'  \link[paws.management.p1:licensemanager_create_grant]{create_grant} \tab Creates a grant for the specified license\cr
#'  \link[paws.management.p1:licensemanager_create_grant_version]{create_grant_version} \tab Creates a new version of the specified grant\cr
#'  \link[paws.management.p1:licensemanager_create_license]{create_license} \tab Creates a license\cr
#'  \link[paws.management.p1:licensemanager_create_license_configuration]{create_license_configuration} \tab Creates a license configuration\cr
#'  \link[paws.management.p1:licensemanager_create_license_conversion_task_for_resource]{create_license_conversion_task_for_resource} \tab Creates a new license conversion task\cr
#'  \link[paws.management.p1:licensemanager_create_license_manager_report_generator]{create_license_manager_report_generator} \tab Creates a report generator\cr
#'  \link[paws.management.p1:licensemanager_create_license_version]{create_license_version} \tab Creates a new version of the specified license\cr
#'  \link[paws.management.p1:licensemanager_create_token]{create_token} \tab Creates a long-lived token\cr
#'  \link[paws.management.p1:licensemanager_delete_grant]{delete_grant} \tab Deletes the specified grant\cr
#'  \link[paws.management.p1:licensemanager_delete_license]{delete_license} \tab Deletes the specified license\cr
#'  \link[paws.management.p1:licensemanager_delete_license_configuration]{delete_license_configuration} \tab Deletes the specified license configuration\cr
#'  \link[paws.management.p1:licensemanager_delete_license_manager_report_generator]{delete_license_manager_report_generator} \tab Deletes the specified report generator\cr
#'  \link[paws.management.p1:licensemanager_delete_token]{delete_token} \tab Deletes the specified token\cr
#'  \link[paws.management.p1:licensemanager_extend_license_consumption]{extend_license_consumption} \tab Extends the expiration date for license consumption\cr
#'  \link[paws.management.p1:licensemanager_get_access_token]{get_access_token} \tab Gets a temporary access token to use with AssumeRoleWithWebIdentity\cr
#'  \link[paws.management.p1:licensemanager_get_grant]{get_grant} \tab Gets detailed information about the specified grant\cr
#'  \link[paws.management.p1:licensemanager_get_license]{get_license} \tab Gets detailed information about the specified license\cr
#'  \link[paws.management.p1:licensemanager_get_license_configuration]{get_license_configuration} \tab Gets detailed information about the specified license configuration\cr
#'  \link[paws.management.p1:licensemanager_get_license_conversion_task]{get_license_conversion_task} \tab Gets information about the specified license type conversion task\cr
#'  \link[paws.management.p1:licensemanager_get_license_manager_report_generator]{get_license_manager_report_generator} \tab Gets information about the specified report generator\cr
#'  \link[paws.management.p1:licensemanager_get_license_usage]{get_license_usage} \tab Gets detailed information about the usage of the specified license\cr
#'  \link[paws.management.p1:licensemanager_get_service_settings]{get_service_settings} \tab Gets the License Manager settings for the current Region\cr
#'  \link[paws.management.p1:licensemanager_list_associations_for_license_configuration]{list_associations_for_license_configuration} \tab Lists the resource associations for the specified license configuration\cr
#'  \link[paws.management.p1:licensemanager_list_distributed_grants]{list_distributed_grants} \tab Lists the grants distributed for the specified license\cr
#'  \link[paws.management.p1:licensemanager_list_failures_for_license_configuration_operations]{list_failures_for_license_configuration_operations} \tab Lists the license configuration operations that failed\cr
#'  \link[paws.management.p1:licensemanager_list_license_configurations]{list_license_configurations} \tab Lists the license configurations for your account\cr
#'  \link[paws.management.p1:licensemanager_list_license_conversion_tasks]{list_license_conversion_tasks} \tab Lists the license type conversion tasks for your account\cr
#'  \link[paws.management.p1:licensemanager_list_license_manager_report_generators]{list_license_manager_report_generators} \tab Lists the report generators for your account\cr
#'  \link[paws.management.p1:licensemanager_list_licenses]{list_licenses} \tab Lists the licenses for your account\cr
#'  \link[paws.management.p1:licensemanager_list_license_specifications_for_resource]{list_license_specifications_for_resource} \tab Describes the license configurations for the specified resource\cr
#'  \link[paws.management.p1:licensemanager_list_license_versions]{list_license_versions} \tab Lists all versions of the specified license\cr
#'  \link[paws.management.p1:licensemanager_list_received_grants]{list_received_grants} \tab Lists grants that are received but not accepted\cr
#'  \link[paws.management.p1:licensemanager_list_received_licenses]{list_received_licenses} \tab Lists received licenses\cr
#'  \link[paws.management.p1:licensemanager_list_resource_inventory]{list_resource_inventory} \tab Lists resources managed using Systems Manager inventory\cr
#'  \link[paws.management.p1:licensemanager_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags for the specified license configuration\cr
#'  \link[paws.management.p1:licensemanager_list_tokens]{list_tokens} \tab Lists your tokens\cr
#'  \link[paws.management.p1:licensemanager_list_usage_for_license_configuration]{list_usage_for_license_configuration} \tab Lists all license usage records for a license configuration, displaying license consumption details by resource at a selected point in time\cr
#'  \link[paws.management.p1:licensemanager_reject_grant]{reject_grant} \tab Rejects the specified grant\cr
#'  \link[paws.management.p1:licensemanager_tag_resource]{tag_resource} \tab Adds the specified tags to the specified license configuration\cr
#'  \link[paws.management.p1:licensemanager_untag_resource]{untag_resource} \tab Removes the specified tags from the specified license configuration\cr
#'  \link[paws.management.p1:licensemanager_update_license_configuration]{update_license_configuration} \tab Modifies the attributes of an existing license configuration\cr
#'  \link[paws.management.p1:licensemanager_update_license_manager_report_generator]{update_license_manager_report_generator} \tab Updates a report generator\cr
#'  \link[paws.management.p1:licensemanager_update_license_specifications_for_resource]{update_license_specifications_for_resource} \tab Adds or removes the specified license configurations for the specified Amazon Web Services resource\cr
#'  \link[paws.management.p1:licensemanager_update_service_settings]{update_service_settings} \tab Updates License Manager settings for the current Region
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname licensemanager
#' @export
licensemanager <- function(config = list()) {
  paws.management.p1::licensemanager(config)
}

#' AWS License Manager User Subscriptions
#'
#' @description
#' With License Manager, you can create user-based subscriptions to utilize
#' licensed software with a per user subscription fee on Amazon EC2
#' instances.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- licensemanagerusersubscriptions(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- licensemanagerusersubscriptions()
#' svc$associate_user(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p1:licensemanagerusersubscriptions_associate_user]{associate_user} \tab Associates the user to an EC2 instance to utilize user-based subscriptions\cr
#'  \link[paws.management.p1:licensemanagerusersubscriptions_deregister_identity_provider]{deregister_identity_provider} \tab Deregisters the identity provider from providing user-based subscriptions\cr
#'  \link[paws.management.p1:licensemanagerusersubscriptions_disassociate_user]{disassociate_user} \tab Disassociates the user from an EC2 instance providing user-based subscriptions\cr
#'  \link[paws.management.p1:licensemanagerusersubscriptions_list_identity_providers]{list_identity_providers} \tab Lists the identity providers for user-based subscriptions\cr
#'  \link[paws.management.p1:licensemanagerusersubscriptions_list_instances]{list_instances} \tab Lists the EC2 instances providing user-based subscriptions\cr
#'  \link[paws.management.p1:licensemanagerusersubscriptions_list_product_subscriptions]{list_product_subscriptions} \tab Lists the user-based subscription products available from an identity provider\cr
#'  \link[paws.management.p1:licensemanagerusersubscriptions_list_user_associations]{list_user_associations} \tab Lists user associations for an identity provider\cr
#'  \link[paws.management.p1:licensemanagerusersubscriptions_register_identity_provider]{register_identity_provider} \tab Registers an identity provider for user-based subscriptions\cr
#'  \link[paws.management.p1:licensemanagerusersubscriptions_start_product_subscription]{start_product_subscription} \tab Starts a product subscription for a user with the specified identity provider\cr
#'  \link[paws.management.p1:licensemanagerusersubscriptions_stop_product_subscription]{stop_product_subscription} \tab Stops a product subscription for a user with the specified identity provider
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname licensemanagerusersubscriptions
#' @export
licensemanagerusersubscriptions <- function(config = list()) {
  paws.management.p1::licensemanagerusersubscriptions(config)
}

#' Amazon CloudWatch Logs
#'
#' @description
#' You can use Amazon CloudWatch Logs to monitor, store, and access your
#' log files from EC2 instances, CloudTrail, and other sources. You can
#' then retrieve the associated log data from CloudWatch Logs using the
#' CloudWatch console, CloudWatch Logs commands in the Amazon Web Services
#' CLI, CloudWatch Logs API, or CloudWatch Logs SDK.
#' 
#' You can use CloudWatch Logs to:
#' 
#' -   **Monitor logs from EC2 instances in real-time**: You can use
#'     CloudWatch Logs to monitor applications and systems using log data.
#'     For example, CloudWatch Logs can track the number of errors that
#'     occur in your application logs and send you a notification whenever
#'     the rate of errors exceeds a threshold that you specify. CloudWatch
#'     Logs uses your log data for monitoring so no code changes are
#'     required. For example, you can monitor application logs for specific
#'     literal terms (such as "NullReferenceException") or count the number
#'     of occurrences of a literal term at a particular position in log
#'     data (such as "404" status codes in an Apache access log). When the
#'     term you are searching for is found, CloudWatch Logs reports the
#'     data to a CloudWatch metric that you specify.
#' 
#' -   **Monitor CloudTrail logged events**: You can create alarms in
#'     CloudWatch and receive notifications of particular API activity as
#'     captured by CloudTrail. You can use the notification to perform
#'     troubleshooting.
#' 
#' -   **Archive log data**: You can use CloudWatch Logs to store your log
#'     data in highly durable storage. You can change the log retention
#'     setting so that any log events older than this setting are
#'     automatically deleted. The CloudWatch Logs agent makes it easy to
#'     quickly send both rotated and non-rotated log data off of a host and
#'     into the log service. You can then access the raw log data when you
#'     need it.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- cloudwatchlogs(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- cloudwatchlogs()
#' svc$associate_kms_key(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p1:cloudwatchlogs_associate_kms_key]{associate_kms_key} \tab Associates the specified Key Management Service customer master key (CMK) with the specified log group\cr
#'  \link[paws.management.p1:cloudwatchlogs_cancel_export_task]{cancel_export_task} \tab Cancels the specified export task\cr
#'  \link[paws.management.p1:cloudwatchlogs_create_export_task]{create_export_task} \tab Creates an export task, which allows you to efficiently export data from a log group to an Amazon S3 bucket\cr
#'  \link[paws.management.p1:cloudwatchlogs_create_log_group]{create_log_group} \tab Creates a log group with the specified name\cr
#'  \link[paws.management.p1:cloudwatchlogs_create_log_stream]{create_log_stream} \tab Creates a log stream for the specified log group\cr
#'  \link[paws.management.p1:cloudwatchlogs_delete_destination]{delete_destination} \tab Deletes the specified destination, and eventually disables all the subscription filters that publish to it\cr
#'  \link[paws.management.p1:cloudwatchlogs_delete_log_group]{delete_log_group} \tab Deletes the specified log group and permanently deletes all the archived log events associated with the log group\cr
#'  \link[paws.management.p1:cloudwatchlogs_delete_log_stream]{delete_log_stream} \tab Deletes the specified log stream and permanently deletes all the archived log events associated with the log stream\cr
#'  \link[paws.management.p1:cloudwatchlogs_delete_metric_filter]{delete_metric_filter} \tab Deletes the specified metric filter\cr
#'  \link[paws.management.p1:cloudwatchlogs_delete_query_definition]{delete_query_definition} \tab Deletes a saved CloudWatch Logs Insights query definition\cr
#'  \link[paws.management.p1:cloudwatchlogs_delete_resource_policy]{delete_resource_policy} \tab Deletes a resource policy from this account\cr
#'  \link[paws.management.p1:cloudwatchlogs_delete_retention_policy]{delete_retention_policy} \tab Deletes the specified retention policy\cr
#'  \link[paws.management.p1:cloudwatchlogs_delete_subscription_filter]{delete_subscription_filter} \tab Deletes the specified subscription filter\cr
#'  \link[paws.management.p1:cloudwatchlogs_describe_destinations]{describe_destinations} \tab Lists all your destinations\cr
#'  \link[paws.management.p1:cloudwatchlogs_describe_export_tasks]{describe_export_tasks} \tab Lists the specified export tasks\cr
#'  \link[paws.management.p1:cloudwatchlogs_describe_log_groups]{describe_log_groups} \tab Lists the specified log groups\cr
#'  \link[paws.management.p1:cloudwatchlogs_describe_log_streams]{describe_log_streams} \tab Lists the log streams for the specified log group\cr
#'  \link[paws.management.p1:cloudwatchlogs_describe_metric_filters]{describe_metric_filters} \tab Lists the specified metric filters\cr
#'  \link[paws.management.p1:cloudwatchlogs_describe_queries]{describe_queries} \tab Returns a list of CloudWatch Logs Insights queries that are scheduled, executing, or have been executed recently in this account\cr
#'  \link[paws.management.p1:cloudwatchlogs_describe_query_definitions]{describe_query_definitions} \tab This operation returns a paginated list of your saved CloudWatch Logs Insights query definitions\cr
#'  \link[paws.management.p1:cloudwatchlogs_describe_resource_policies]{describe_resource_policies} \tab Lists the resource policies in this account\cr
#'  \link[paws.management.p1:cloudwatchlogs_describe_subscription_filters]{describe_subscription_filters} \tab Lists the subscription filters for the specified log group\cr
#'  \link[paws.management.p1:cloudwatchlogs_disassociate_kms_key]{disassociate_kms_key} \tab Disassociates the associated Key Management Service customer master key (CMK) from the specified log group\cr
#'  \link[paws.management.p1:cloudwatchlogs_filter_log_events]{filter_log_events} \tab Lists log events from the specified log group\cr
#'  \link[paws.management.p1:cloudwatchlogs_get_log_events]{get_log_events} \tab Lists log events from the specified log stream\cr
#'  \link[paws.management.p1:cloudwatchlogs_get_log_group_fields]{get_log_group_fields} \tab Returns a list of the fields that are included in log events in the specified log group, along with the percentage of log events that contain each field\cr
#'  \link[paws.management.p1:cloudwatchlogs_get_log_record]{get_log_record} \tab Retrieves all of the fields and values of a single log event\cr
#'  \link[paws.management.p1:cloudwatchlogs_get_query_results]{get_query_results} \tab Returns the results from the specified query\cr
#'  \link[paws.management.p1:cloudwatchlogs_list_tags_log_group]{list_tags_log_group} \tab Lists the tags for the specified log group\cr
#'  \link[paws.management.p1:cloudwatchlogs_put_destination]{put_destination} \tab Creates or updates a destination\cr
#'  \link[paws.management.p1:cloudwatchlogs_put_destination_policy]{put_destination_policy} \tab Creates or updates an access policy associated with an existing destination\cr
#'  \link[paws.management.p1:cloudwatchlogs_put_log_events]{put_log_events} \tab Uploads a batch of log events to the specified log stream\cr
#'  \link[paws.management.p1:cloudwatchlogs_put_metric_filter]{put_metric_filter} \tab Creates or updates a metric filter and associates it with the specified log group\cr
#'  \link[paws.management.p1:cloudwatchlogs_put_query_definition]{put_query_definition} \tab Creates or updates a query definition for CloudWatch Logs Insights\cr
#'  \link[paws.management.p1:cloudwatchlogs_put_resource_policy]{put_resource_policy} \tab Creates or updates a resource policy allowing other Amazon Web Services services to put log events to this account, such as Amazon Route 53\cr
#'  \link[paws.management.p1:cloudwatchlogs_put_retention_policy]{put_retention_policy} \tab Sets the retention of the specified log group\cr
#'  \link[paws.management.p1:cloudwatchlogs_put_subscription_filter]{put_subscription_filter} \tab Creates or updates a subscription filter and associates it with the specified log group\cr
#'  \link[paws.management.p1:cloudwatchlogs_start_query]{start_query} \tab Schedules a query of a log group using CloudWatch Logs Insights\cr
#'  \link[paws.management.p1:cloudwatchlogs_stop_query]{stop_query} \tab Stops a CloudWatch Logs Insights query that is in progress\cr
#'  \link[paws.management.p1:cloudwatchlogs_tag_log_group]{tag_log_group} \tab Adds or updates the specified tags for the specified log group\cr
#'  \link[paws.management.p1:cloudwatchlogs_test_metric_filter]{test_metric_filter} \tab Tests the filter pattern of a metric filter against a sample of log event messages\cr
#'  \link[paws.management.p1:cloudwatchlogs_untag_log_group]{untag_log_group} \tab Removes the specified tags from the specified log group
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname cloudwatchlogs
#' @export
cloudwatchlogs <- function(config = list()) {
  paws.management.p1::cloudwatchlogs(config)
}

#' Amazon CloudWatch
#'
#' @description
#' Amazon CloudWatch monitors your Amazon Web Services (Amazon Web
#' Services) resources and the applications you run on Amazon Web Services
#' in real time. You can use CloudWatch to collect and track metrics, which
#' are the variables you want to measure for your resources and
#' applications.
#' 
#' CloudWatch alarms send notifications or automatically change the
#' resources you are monitoring based on rules that you define. For
#' example, you can monitor the CPU usage and disk reads and writes of your
#' Amazon EC2 instances. Then, use this data to determine whether you
#' should launch additional instances to handle increased load. You can
#' also use this data to stop under-used instances to save money.
#' 
#' In addition to monitoring the built-in metrics that come with Amazon Web
#' Services, you can monitor your own custom metrics. With CloudWatch, you
#' gain system-wide visibility into resource utilization, application
#' performance, and operational health.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- cloudwatch(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- cloudwatch()
#' svc$delete_alarms(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p2:cloudwatch_delete_alarms]{delete_alarms} \tab Deletes the specified alarms\cr
#'  \link[paws.management.p2:cloudwatch_delete_anomaly_detector]{delete_anomaly_detector} \tab Deletes the specified anomaly detection model from your account\cr
#'  \link[paws.management.p2:cloudwatch_delete_dashboards]{delete_dashboards} \tab Deletes all dashboards that you specify\cr
#'  \link[paws.management.p2:cloudwatch_delete_insight_rules]{delete_insight_rules} \tab Permanently deletes the specified Contributor Insights rules\cr
#'  \link[paws.management.p2:cloudwatch_delete_metric_stream]{delete_metric_stream} \tab Permanently deletes the metric stream that you specify\cr
#'  \link[paws.management.p2:cloudwatch_describe_alarm_history]{describe_alarm_history} \tab Retrieves the history for the specified alarm\cr
#'  \link[paws.management.p2:cloudwatch_describe_alarms]{describe_alarms} \tab Retrieves the specified alarms\cr
#'  \link[paws.management.p2:cloudwatch_describe_alarms_for_metric]{describe_alarms_for_metric} \tab Retrieves the alarms for the specified metric\cr
#'  \link[paws.management.p2:cloudwatch_describe_anomaly_detectors]{describe_anomaly_detectors} \tab Lists the anomaly detection models that you have created in your account\cr
#'  \link[paws.management.p2:cloudwatch_describe_insight_rules]{describe_insight_rules} \tab Returns a list of all the Contributor Insights rules in your account\cr
#'  \link[paws.management.p2:cloudwatch_disable_alarm_actions]{disable_alarm_actions} \tab Disables the actions for the specified alarms\cr
#'  \link[paws.management.p2:cloudwatch_disable_insight_rules]{disable_insight_rules} \tab Disables the specified Contributor Insights rules\cr
#'  \link[paws.management.p2:cloudwatch_enable_alarm_actions]{enable_alarm_actions} \tab Enables the actions for the specified alarms\cr
#'  \link[paws.management.p2:cloudwatch_enable_insight_rules]{enable_insight_rules} \tab Enables the specified Contributor Insights rules\cr
#'  \link[paws.management.p2:cloudwatch_get_dashboard]{get_dashboard} \tab Displays the details of the dashboard that you specify\cr
#'  \link[paws.management.p2:cloudwatch_get_insight_rule_report]{get_insight_rule_report} \tab This operation returns the time series data collected by a Contributor Insights rule\cr
#'  \link[paws.management.p2:cloudwatch_get_metric_data]{get_metric_data} \tab You can use the GetMetricData API to retrieve CloudWatch metric values\cr
#'  \link[paws.management.p2:cloudwatch_get_metric_statistics]{get_metric_statistics} \tab Gets statistics for the specified metric\cr
#'  \link[paws.management.p2:cloudwatch_get_metric_stream]{get_metric_stream} \tab Returns information about the metric stream that you specify\cr
#'  \link[paws.management.p2:cloudwatch_get_metric_widget_image]{get_metric_widget_image} \tab You can use the GetMetricWidgetImage API to retrieve a snapshot graph of one or more Amazon CloudWatch metrics as a bitmap image\cr
#'  \link[paws.management.p2:cloudwatch_list_dashboards]{list_dashboards} \tab Returns a list of the dashboards for your account\cr
#'  \link[paws.management.p2:cloudwatch_list_metrics]{list_metrics} \tab List the specified metrics\cr
#'  \link[paws.management.p2:cloudwatch_list_metric_streams]{list_metric_streams} \tab Returns a list of metric streams in this account\cr
#'  \link[paws.management.p2:cloudwatch_list_tags_for_resource]{list_tags_for_resource} \tab Displays the tags associated with a CloudWatch resource\cr
#'  \link[paws.management.p2:cloudwatch_put_anomaly_detector]{put_anomaly_detector} \tab Creates an anomaly detection model for a CloudWatch metric\cr
#'  \link[paws.management.p2:cloudwatch_put_composite_alarm]{put_composite_alarm} \tab Creates or updates a composite alarm\cr
#'  \link[paws.management.p2:cloudwatch_put_dashboard]{put_dashboard} \tab Creates a dashboard if it does not already exist, or updates an existing dashboard\cr
#'  \link[paws.management.p2:cloudwatch_put_insight_rule]{put_insight_rule} \tab Creates a Contributor Insights rule\cr
#'  \link[paws.management.p2:cloudwatch_put_metric_alarm]{put_metric_alarm} \tab Creates or updates an alarm and associates it with the specified metric, metric math expression, or anomaly detection model\cr
#'  \link[paws.management.p2:cloudwatch_put_metric_data]{put_metric_data} \tab Publishes metric data points to Amazon CloudWatch\cr
#'  \link[paws.management.p2:cloudwatch_put_metric_stream]{put_metric_stream} \tab Creates or updates a metric stream\cr
#'  \link[paws.management.p2:cloudwatch_set_alarm_state]{set_alarm_state} \tab Temporarily sets the state of an alarm for testing purposes\cr
#'  \link[paws.management.p2:cloudwatch_start_metric_streams]{start_metric_streams} \tab Starts the streaming of metrics for one or more of your metric streams\cr
#'  \link[paws.management.p2:cloudwatch_stop_metric_streams]{stop_metric_streams} \tab Stops the streaming of metrics for one or more of your metric streams\cr
#'  \link[paws.management.p2:cloudwatch_tag_resource]{tag_resource} \tab Assigns one or more tags (key-value pairs) to the specified CloudWatch resource\cr
#'  \link[paws.management.p2:cloudwatch_untag_resource]{untag_resource} \tab Removes one or more tags from the specified resource
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname cloudwatch
#' @export
cloudwatch <- function(config = list()) {
  paws.management.p2::cloudwatch(config)
}

#' AWS OpsWorks
#'
#' @description
#' Welcome to the *AWS OpsWorks Stacks API Reference*. This guide provides
#' descriptions, syntax, and usage examples for AWS OpsWorks Stacks actions
#' and data types, including common parameters and error codes.
#' 
#' AWS OpsWorks Stacks is an application management service that provides
#' an integrated experience for overseeing the complete application
#' lifecycle. For information about this product, go to the [AWS
#' OpsWorks](https://aws.amazon.com/opsworks/) details page.
#' 
#' **SDKs and CLI**
#' 
#' The most common way to use the AWS OpsWorks Stacks API is by using the
#' AWS Command Line Interface (CLI) or by using one of the AWS SDKs to
#' implement applications in your preferred language. For more information,
#' see:
#' 
#' -   [AWS
#'     CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)
#' 
#' -   [AWS SDK for
#'     Java](https://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/opsworks/AWSOpsWorksClient.html)
#' 
#' -   AWS SDK for .NET
#' 
#' -   AWS SDK for PHP 2
#' 
#' -   [AWS SDK for Ruby](https://docs.aws.amazon.com/sdk-for-ruby/v2/api/)
#' 
#' -   [AWS SDK for
#'     Node.js](https://docs.aws.amazon.com/sdk-for-javascript/index.html)
#' 
#' -   [AWS SDK for
#'     Python(Boto)](http://docs.pythonboto.org/en/latest/ref/opsworks.html)
#' 
#' **Endpoints**
#' 
#' AWS OpsWorks Stacks supports the following endpoints, all HTTPS. You
#' must connect to one of the following endpoints. Stacks can only be
#' accessed or managed within the endpoint in which they are created.
#' 
#' -   opsworks.us-east-1.amazonaws.com
#' 
#' -   opsworks.us-east-2.amazonaws.com
#' 
#' -   opsworks.us-west-1.amazonaws.com
#' 
#' -   opsworks.us-west-2.amazonaws.com
#' 
#' -   opsworks.ca-central-1.amazonaws.com (API only; not available in the
#'     AWS console)
#' 
#' -   opsworks.eu-west-1.amazonaws.com
#' 
#' -   opsworks.eu-west-2.amazonaws.com
#' 
#' -   opsworks.eu-west-3.amazonaws.com
#' 
#' -   opsworks.eu-central-1.amazonaws.com
#' 
#' -   opsworks.ap-northeast-1.amazonaws.com
#' 
#' -   opsworks.ap-northeast-2.amazonaws.com
#' 
#' -   opsworks.ap-south-1.amazonaws.com
#' 
#' -   opsworks.ap-southeast-1.amazonaws.com
#' 
#' -   opsworks.ap-southeast-2.amazonaws.com
#' 
#' -   opsworks.sa-east-1.amazonaws.com
#' 
#' **Chef Versions**
#' 
#' When you call `create_stack`,
#' `clone_stack`, or
#' `update_stack` we recommend you use the
#' `ConfigurationManager` parameter to specify the Chef version. The
#' recommended and default value for Linux stacks is currently 12. Windows
#' stacks use Chef 12.2. For more information, see [Chef
#' Versions](https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-chef11.html).
#' 
#' You can specify Chef 12, 11.10, or 11.4 for your Linux stack. We
#' recommend migrating your existing Linux stacks to Chef 12 as soon as
#' possible.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- opsworks(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- opsworks()
#' svc$assign_instance(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p2:opsworks_assign_instance]{assign_instance} \tab Assign a registered instance to a layer\cr
#'  \link[paws.management.p2:opsworks_assign_volume]{assign_volume} \tab Assigns one of the stack's registered Amazon EBS volumes to a specified instance\cr
#'  \link[paws.management.p2:opsworks_associate_elastic_ip]{associate_elastic_ip} \tab Associates one of the stack's registered Elastic IP addresses with a specified instance\cr
#'  \link[paws.management.p2:opsworks_attach_elastic_load_balancer]{attach_elastic_load_balancer} \tab Attaches an Elastic Load Balancing load balancer to a specified layer\cr
#'  \link[paws.management.p2:opsworks_clone_stack]{clone_stack} \tab Creates a clone of a specified stack\cr
#'  \link[paws.management.p2:opsworks_create_app]{create_app} \tab Creates an app for a specified stack\cr
#'  \link[paws.management.p2:opsworks_create_deployment]{create_deployment} \tab Runs deployment or stack commands\cr
#'  \link[paws.management.p2:opsworks_create_instance]{create_instance} \tab Creates an instance in a specified stack\cr
#'  \link[paws.management.p2:opsworks_create_layer]{create_layer} \tab Creates a layer\cr
#'  \link[paws.management.p2:opsworks_create_stack]{create_stack} \tab Creates a new stack\cr
#'  \link[paws.management.p2:opsworks_create_user_profile]{create_user_profile} \tab Creates a new user profile\cr
#'  \link[paws.management.p2:opsworks_delete_app]{delete_app} \tab Deletes a specified app\cr
#'  \link[paws.management.p2:opsworks_delete_instance]{delete_instance} \tab Deletes a specified instance, which terminates the associated Amazon EC2 instance\cr
#'  \link[paws.management.p2:opsworks_delete_layer]{delete_layer} \tab Deletes a specified layer\cr
#'  \link[paws.management.p2:opsworks_delete_stack]{delete_stack} \tab Deletes a specified stack\cr
#'  \link[paws.management.p2:opsworks_delete_user_profile]{delete_user_profile} \tab Deletes a user profile\cr
#'  \link[paws.management.p2:opsworks_deregister_ecs_cluster]{deregister_ecs_cluster} \tab Deregisters a specified Amazon ECS cluster from a stack\cr
#'  \link[paws.management.p2:opsworks_deregister_elastic_ip]{deregister_elastic_ip} \tab Deregisters a specified Elastic IP address\cr
#'  \link[paws.management.p2:opsworks_deregister_instance]{deregister_instance} \tab Deregister a registered Amazon EC2 or on-premises instance\cr
#'  \link[paws.management.p2:opsworks_deregister_rds_db_instance]{deregister_rds_db_instance} \tab Deregisters an Amazon RDS instance\cr
#'  \link[paws.management.p2:opsworks_deregister_volume]{deregister_volume} \tab Deregisters an Amazon EBS volume\cr
#'  \link[paws.management.p2:opsworks_describe_agent_versions]{describe_agent_versions} \tab Describes the available AWS OpsWorks Stacks agent versions\cr
#'  \link[paws.management.p2:opsworks_describe_apps]{describe_apps} \tab Requests a description of a specified set of apps\cr
#'  \link[paws.management.p2:opsworks_describe_commands]{describe_commands} \tab Describes the results of specified commands\cr
#'  \link[paws.management.p2:opsworks_describe_deployments]{describe_deployments} \tab Requests a description of a specified set of deployments\cr
#'  \link[paws.management.p2:opsworks_describe_ecs_clusters]{describe_ecs_clusters} \tab Describes Amazon ECS clusters that are registered with a stack\cr
#'  \link[paws.management.p2:opsworks_describe_elastic_ips]{describe_elastic_ips} \tab Describes Elastic IP addresses\cr
#'  \link[paws.management.p2:opsworks_describe_elastic_load_balancers]{describe_elastic_load_balancers} \tab Describes a stack's Elastic Load Balancing instances\cr
#'  \link[paws.management.p2:opsworks_describe_instances]{describe_instances} \tab Requests a description of a set of instances\cr
#'  \link[paws.management.p2:opsworks_describe_layers]{describe_layers} \tab Requests a description of one or more layers in a specified stack\cr
#'  \link[paws.management.p2:opsworks_describe_load_based_auto_scaling]{describe_load_based_auto_scaling} \tab Describes load-based auto scaling configurations for specified layers\cr
#'  \link[paws.management.p2:opsworks_describe_my_user_profile]{describe_my_user_profile} \tab Describes a user's SSH information\cr
#'  \link[paws.management.p2:opsworks_describe_operating_systems]{describe_operating_systems} \tab Describes the operating systems that are supported by AWS OpsWorks Stacks\cr
#'  \link[paws.management.p2:opsworks_describe_permissions]{describe_permissions} \tab Describes the permissions for a specified stack\cr
#'  \link[paws.management.p2:opsworks_describe_raid_arrays]{describe_raid_arrays} \tab Describe an instance's RAID arrays\cr
#'  \link[paws.management.p2:opsworks_describe_rds_db_instances]{describe_rds_db_instances} \tab Describes Amazon RDS instances\cr
#'  \link[paws.management.p2:opsworks_describe_service_errors]{describe_service_errors} \tab Describes AWS OpsWorks Stacks service errors\cr
#'  \link[paws.management.p2:opsworks_describe_stack_provisioning_parameters]{describe_stack_provisioning_parameters} \tab Requests a description of a stack's provisioning parameters\cr
#'  \link[paws.management.p2:opsworks_describe_stacks]{describe_stacks} \tab Requests a description of one or more stacks\cr
#'  \link[paws.management.p2:opsworks_describe_stack_summary]{describe_stack_summary} \tab Describes the number of layers and apps in a specified stack, and the number of instances in each state, such as running_setup or online\cr
#'  \link[paws.management.p2:opsworks_describe_time_based_auto_scaling]{describe_time_based_auto_scaling} \tab Describes time-based auto scaling configurations for specified instances\cr
#'  \link[paws.management.p2:opsworks_describe_user_profiles]{describe_user_profiles} \tab Describe specified users\cr
#'  \link[paws.management.p2:opsworks_describe_volumes]{describe_volumes} \tab Describes an instance's Amazon EBS volumes\cr
#'  \link[paws.management.p2:opsworks_detach_elastic_load_balancer]{detach_elastic_load_balancer} \tab Detaches a specified Elastic Load Balancing instance from its layer\cr
#'  \link[paws.management.p2:opsworks_disassociate_elastic_ip]{disassociate_elastic_ip} \tab Disassociates an Elastic IP address from its instance\cr
#'  \link[paws.management.p2:opsworks_get_hostname_suggestion]{get_hostname_suggestion} \tab Gets a generated host name for the specified layer, based on the current host name theme\cr
#'  \link[paws.management.p2:opsworks_grant_access]{grant_access} \tab This action can be used only with Windows stacks\cr
#'  \link[paws.management.p2:opsworks_list_tags]{list_tags} \tab Returns a list of tags that are applied to the specified stack or layer\cr
#'  \link[paws.management.p2:opsworks_reboot_instance]{reboot_instance} \tab Reboots a specified instance\cr
#'  \link[paws.management.p2:opsworks_register_ecs_cluster]{register_ecs_cluster} \tab Registers a specified Amazon ECS cluster with a stack\cr
#'  \link[paws.management.p2:opsworks_register_elastic_ip]{register_elastic_ip} \tab Registers an Elastic IP address with a specified stack\cr
#'  \link[paws.management.p2:opsworks_register_instance]{register_instance} \tab Registers instances that were created outside of AWS OpsWorks Stacks with a specified stack\cr
#'  \link[paws.management.p2:opsworks_register_rds_db_instance]{register_rds_db_instance} \tab Registers an Amazon RDS instance with a stack\cr
#'  \link[paws.management.p2:opsworks_register_volume]{register_volume} \tab Registers an Amazon EBS volume with a specified stack\cr
#'  \link[paws.management.p2:opsworks_set_load_based_auto_scaling]{set_load_based_auto_scaling} \tab Specify the load-based auto scaling configuration for a specified layer\cr
#'  \link[paws.management.p2:opsworks_set_permission]{set_permission} \tab Specifies a user's permissions\cr
#'  \link[paws.management.p2:opsworks_set_time_based_auto_scaling]{set_time_based_auto_scaling} \tab Specify the time-based auto scaling configuration for a specified instance\cr
#'  \link[paws.management.p2:opsworks_start_instance]{start_instance} \tab Starts a specified instance\cr
#'  \link[paws.management.p2:opsworks_start_stack]{start_stack} \tab Starts a stack's instances\cr
#'  \link[paws.management.p2:opsworks_stop_instance]{stop_instance} \tab Stops a specified instance\cr
#'  \link[paws.management.p2:opsworks_stop_stack]{stop_stack} \tab Stops a specified stack\cr
#'  \link[paws.management.p2:opsworks_tag_resource]{tag_resource} \tab Apply cost-allocation tags to a specified stack or layer in AWS OpsWorks Stacks\cr
#'  \link[paws.management.p2:opsworks_unassign_instance]{unassign_instance} \tab Unassigns a registered instance from all layers that are using the instance\cr
#'  \link[paws.management.p2:opsworks_unassign_volume]{unassign_volume} \tab Unassigns an assigned Amazon EBS volume\cr
#'  \link[paws.management.p2:opsworks_untag_resource]{untag_resource} \tab Removes tags from a specified stack or layer\cr
#'  \link[paws.management.p2:opsworks_update_app]{update_app} \tab Updates a specified app\cr
#'  \link[paws.management.p2:opsworks_update_elastic_ip]{update_elastic_ip} \tab Updates a registered Elastic IP address's name\cr
#'  \link[paws.management.p2:opsworks_update_instance]{update_instance} \tab Updates a specified instance\cr
#'  \link[paws.management.p2:opsworks_update_layer]{update_layer} \tab Updates a specified layer\cr
#'  \link[paws.management.p2:opsworks_update_my_user_profile]{update_my_user_profile} \tab Updates a user's SSH public key\cr
#'  \link[paws.management.p2:opsworks_update_rds_db_instance]{update_rds_db_instance} \tab Updates an Amazon RDS instance\cr
#'  \link[paws.management.p2:opsworks_update_stack]{update_stack} \tab Updates a specified stack\cr
#'  \link[paws.management.p2:opsworks_update_user_profile]{update_user_profile} \tab Updates a specified user profile\cr
#'  \link[paws.management.p2:opsworks_update_volume]{update_volume} \tab Updates an Amazon EBS volume's name or mount point
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname opsworks
#' @export
opsworks <- function(config = list()) {
  paws.management.p2::opsworks(config)
}

#' AWS OpsWorks CM
#'
#' @description
#' AWS OpsWorks for configuration management (CM) is a service that runs
#' and manages configuration management servers. You can use AWS OpsWorks
#' CM to create and manage AWS OpsWorks for Chef Automate and AWS OpsWorks
#' for Puppet Enterprise servers, and add or remove nodes for the servers
#' to manage.
#' 
#' **Glossary of terms**
#' 
#' -   **Server**: A configuration management server that can be
#'     highly-available. The configuration management server runs on an
#'     Amazon Elastic Compute Cloud (EC2) instance, and may use various
#'     other AWS services, such as Amazon Relational Database Service (RDS)
#'     and Elastic Load Balancing. A server is a generic abstraction over
#'     the configuration manager that you want to use, much like Amazon
#'     RDS. In AWS OpsWorks CM, you do not start or stop servers. After you
#'     create servers, they continue to run until they are deleted.
#' 
#' -   **Engine**: The engine is the specific configuration manager that
#'     you want to use. Valid values in this release include `ChefAutomate`
#'     and `Puppet`.
#' 
#' -   **Backup**: This is an application-level backup of the data that the
#'     configuration manager stores. AWS OpsWorks CM creates an S3 bucket
#'     for backups when you launch the first server. A backup maintains a
#'     snapshot of a server's configuration-related attributes at the time
#'     the backup starts.
#' 
#' -   **Events**: Events are always related to a server. Events are
#'     written during server creation, when health checks run, when backups
#'     are created, when system maintenance is performed, etc. When you
#'     delete a server, the server's events are also deleted.
#' 
#' -   **Account attributes**: Every account has attributes that are
#'     assigned in the AWS OpsWorks CM database. These attributes store
#'     information about configuration limits (servers, backups, etc.) and
#'     your customer account.
#' 
#' **Endpoints**
#' 
#' AWS OpsWorks CM supports the following endpoints, all HTTPS. You must
#' connect to one of the following endpoints. Your servers can only be
#' accessed or managed within the endpoint in which they are created.
#' 
#' -   opsworks-cm.us-east-1.amazonaws.com
#' 
#' -   opsworks-cm.us-east-2.amazonaws.com
#' 
#' -   opsworks-cm.us-west-1.amazonaws.com
#' 
#' -   opsworks-cm.us-west-2.amazonaws.com
#' 
#' -   opsworks-cm.ap-northeast-1.amazonaws.com
#' 
#' -   opsworks-cm.ap-southeast-1.amazonaws.com
#' 
#' -   opsworks-cm.ap-southeast-2.amazonaws.com
#' 
#' -   opsworks-cm.eu-central-1.amazonaws.com
#' 
#' -   opsworks-cm.eu-west-1.amazonaws.com
#' 
#' For more information, see [AWS OpsWorks endpoints and
#' quotas](https://docs.aws.amazon.com/general/latest/gr/opsworks-service.html)
#' in the AWS General Reference.
#' 
#' **Throttling limits**
#' 
#' All API operations allow for five requests per second with a burst of 10
#' requests per second.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- opsworkscm(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- opsworkscm()
#' svc$associate_node(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p2:opsworkscm_associate_node]{associate_node} \tab Associates a new node with the server\cr
#'  \link[paws.management.p2:opsworkscm_create_backup]{create_backup} \tab Creates an application-level backup of a server\cr
#'  \link[paws.management.p2:opsworkscm_create_server]{create_server} \tab Creates and immedately starts a new server\cr
#'  \link[paws.management.p2:opsworkscm_delete_backup]{delete_backup} \tab Deletes a backup\cr
#'  \link[paws.management.p2:opsworkscm_delete_server]{delete_server} \tab Deletes the server and the underlying AWS CloudFormation stacks (including the server's EC2 instance)\cr
#'  \link[paws.management.p2:opsworkscm_describe_account_attributes]{describe_account_attributes} \tab Describes your OpsWorks-CM account attributes\cr
#'  \link[paws.management.p2:opsworkscm_describe_backups]{describe_backups} \tab Describes backups\cr
#'  \link[paws.management.p2:opsworkscm_describe_events]{describe_events} \tab Describes events for a specified server\cr
#'  \link[paws.management.p2:opsworkscm_describe_node_association_status]{describe_node_association_status} \tab Returns the current status of an existing association or disassociation request\cr
#'  \link[paws.management.p2:opsworkscm_describe_servers]{describe_servers} \tab Lists all configuration management servers that are identified with your account\cr
#'  \link[paws.management.p2:opsworkscm_disassociate_node]{disassociate_node} \tab Disassociates a node from an AWS OpsWorks CM server, and removes the node from the server's managed nodes\cr
#'  \link[paws.management.p2:opsworkscm_export_server_engine_attribute]{export_server_engine_attribute} \tab Exports a specified server engine attribute as a base64-encoded string\cr
#'  \link[paws.management.p2:opsworkscm_list_tags_for_resource]{list_tags_for_resource} \tab Returns a list of tags that are applied to the specified AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise servers or backups\cr
#'  \link[paws.management.p2:opsworkscm_restore_server]{restore_server} \tab Restores a backup to a server that is in a CONNECTION_LOST, HEALTHY, RUNNING, UNHEALTHY, or TERMINATED state\cr
#'  \link[paws.management.p2:opsworkscm_start_maintenance]{start_maintenance} \tab Manually starts server maintenance\cr
#'  \link[paws.management.p2:opsworkscm_tag_resource]{tag_resource} \tab Applies tags to an AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise server, or to server backups\cr
#'  \link[paws.management.p2:opsworkscm_untag_resource]{untag_resource} \tab Removes specified tags from an AWS OpsWorks-CM server or backup\cr
#'  \link[paws.management.p2:opsworkscm_update_server]{update_server} \tab Updates settings for a server\cr
#'  \link[paws.management.p2:opsworkscm_update_server_engine_attributes]{update_server_engine_attributes} \tab Updates engine-specific attributes on a specified server
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname opsworkscm
#' @export
opsworkscm <- function(config = list()) {
  paws.management.p2::opsworkscm(config)
}

#' AWS Organizations
#'
#' @description
#' Organizations is a web service that enables you to consolidate your
#' multiple Amazon Web Services accounts into an *organization* and
#' centrally manage your accounts and their resources.
#' 
#' This guide provides descriptions of the Organizations operations. For
#' more information about using this service, see the [Organizations User
#' Guide](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html).
#' 
#' **Support and feedback for Organizations**
#' 
#' We welcome your feedback. Send your comments to
#' <feedback-awsorganizations@@amazon.com> or post your feedback and
#' questions in the [Organizations support
#' forum](https://repost.aws/tags/TA6BEgyePwRAKiMatMcHghcA?forumID=219).
#' For more information about the Amazon Web Services support forums, see
#' [Forums Help](https://repost.aws/forums?origin=help.jspa).
#' 
#' **Endpoint to call When using the CLI or the Amazon Web Services SDK**
#' 
#' For the current release of Organizations, specify the `us-east-1` region
#' for all Amazon Web Services API and CLI calls made from the commercial
#' Amazon Web Services Regions outside of China. If calling from one of the
#' Amazon Web Services Regions in China, then specify `cn-northwest-1`. You
#' can do this in the CLI by using these parameters and commands:
#' 
#' -   Use the following parameter with each command to specify both the
#'     endpoint and its region:
#' 
#'     `--endpoint-url https://organizations.us-east-1.amazonaws.com`
#'     *(from commercial Amazon Web Services Regions outside of China)*
#' 
#'     or
#' 
#'     `--endpoint-url https://organizations.cn-northwest-1.amazonaws.com.cn`
#'     *(from Amazon Web Services Regions in China)*
#' 
#' -   Use the default endpoint, but configure your default region with
#'     this command:
#' 
#'     `aws configure set default.region us-east-1` *(from commercial
#'     Amazon Web Services Regions outside of China)*
#' 
#'     or
#' 
#'     `aws configure set default.region cn-northwest-1` *(from Amazon Web
#'     Services Regions in China)*
#' 
#' -   Use the following parameter with each command to specify the
#'     endpoint:
#' 
#'     `--region us-east-1` *(from commercial Amazon Web Services Regions
#'     outside of China)*
#' 
#'     or
#' 
#'     `--region cn-northwest-1` *(from Amazon Web Services Regions in
#'     China)*
#' 
#' **Recording API Requests**
#' 
#' Organizations supports CloudTrail, a service that records Amazon Web
#' Services API calls for your Amazon Web Services account and delivers log
#' files to an Amazon S3 bucket. By using information collected by
#' CloudTrail, you can determine which requests the Organizations service
#' received, who made the request and when, and so on. For more about
#' Organizations and its support for CloudTrail, see [Logging Organizations
#' Events with
#' CloudTrail](https://docs.aws.amazon.com/organizations/latest/userguide/#orgs_cloudtrail-integration)
#' in the *Organizations User Guide*. To learn more about CloudTrail,
#' including how to turn it on and find your log files, see the [CloudTrail
#' User
#' Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- organizations(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- organizations()
#' # Bill is the owner of an organization, and he invites Juan's account
#' # (222222222222) to join his organization. The following example shows
#' # Juan's account accepting the handshake and thus agreeing to the
#' # invitation.
#' svc$accept_handshake(
#'   HandshakeId = "h-examplehandshakeid111"
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p2:organizations_accept_handshake]{accept_handshake} \tab Sends a response to the originator of a handshake agreeing to the action proposed by the handshake request\cr
#'  \link[paws.management.p2:organizations_attach_policy]{attach_policy} \tab Attaches a policy to a root, an organizational unit (OU), or an individual account\cr
#'  \link[paws.management.p2:organizations_cancel_handshake]{cancel_handshake} \tab Cancels a handshake\cr
#'  \link[paws.management.p2:organizations_close_account]{close_account} \tab Closes an Amazon Web Services member account within an organization\cr
#'  \link[paws.management.p2:organizations_create_account]{create_account} \tab Creates an Amazon Web Services account that is automatically a member of the organization whose credentials made the request\cr
#'  \link[paws.management.p2:organizations_create_gov_cloud_account]{create_gov_cloud_account} \tab This action is available if all of the following are true:\cr
#'  \link[paws.management.p2:organizations_create_organization]{create_organization} \tab Creates an Amazon Web Services organization\cr
#'  \link[paws.management.p2:organizations_create_organizational_unit]{create_organizational_unit} \tab Creates an organizational unit (OU) within a root or parent OU\cr
#'  \link[paws.management.p2:organizations_create_policy]{create_policy} \tab Creates a policy of a specified type that you can attach to a root, an organizational unit (OU), or an individual Amazon Web Services account\cr
#'  \link[paws.management.p2:organizations_decline_handshake]{decline_handshake} \tab Declines a handshake request\cr
#'  \link[paws.management.p2:organizations_delete_organization]{delete_organization} \tab Deletes the organization\cr
#'  \link[paws.management.p2:organizations_delete_organizational_unit]{delete_organizational_unit} \tab Deletes an organizational unit (OU) from a root or another OU\cr
#'  \link[paws.management.p2:organizations_delete_policy]{delete_policy} \tab Deletes the specified policy from your organization\cr
#'  \link[paws.management.p2:organizations_deregister_delegated_administrator]{deregister_delegated_administrator} \tab Removes the specified member Amazon Web Services account as a delegated administrator for the specified Amazon Web Services service\cr
#'  \link[paws.management.p2:organizations_describe_account]{describe_account} \tab Retrieves Organizations-related information about the specified account\cr
#'  \link[paws.management.p2:organizations_describe_create_account_status]{describe_create_account_status} \tab Retrieves the current status of an asynchronous request to create an account\cr
#'  \link[paws.management.p2:organizations_describe_effective_policy]{describe_effective_policy} \tab Returns the contents of the effective policy for specified policy type and account\cr
#'  \link[paws.management.p2:organizations_describe_handshake]{describe_handshake} \tab Retrieves information about a previously requested handshake\cr
#'  \link[paws.management.p2:organizations_describe_organization]{describe_organization} \tab Retrieves information about the organization that the user's account belongs to\cr
#'  \link[paws.management.p2:organizations_describe_organizational_unit]{describe_organizational_unit} \tab Retrieves information about an organizational unit (OU)\cr
#'  \link[paws.management.p2:organizations_describe_policy]{describe_policy} \tab Retrieves information about a policy\cr
#'  \link[paws.management.p2:organizations_detach_policy]{detach_policy} \tab Detaches a policy from a target root, organizational unit (OU), or account\cr
#'  \link[paws.management.p2:organizations_disable_aws_service_access]{disable_aws_service_access} \tab Disables the integration of an Amazon Web Services service (the service that is specified by ServicePrincipal) with Organizations\cr
#'  \link[paws.management.p2:organizations_disable_policy_type]{disable_policy_type} \tab Disables an organizational policy type in a root\cr
#'  \link[paws.management.p2:organizations_enable_all_features]{enable_all_features} \tab Enables all features in an organization\cr
#'  \link[paws.management.p2:organizations_enable_aws_service_access]{enable_aws_service_access} \tab Enables the integration of an Amazon Web Services service (the service that is specified by ServicePrincipal) with Organizations\cr
#'  \link[paws.management.p2:organizations_enable_policy_type]{enable_policy_type} \tab Enables a policy type in a root\cr
#'  \link[paws.management.p2:organizations_invite_account_to_organization]{invite_account_to_organization} \tab Sends an invitation to another account to join your organization as a member account\cr
#'  \link[paws.management.p2:organizations_leave_organization]{leave_organization} \tab Removes a member account from its parent organization\cr
#'  \link[paws.management.p2:organizations_list_accounts]{list_accounts} \tab Lists all the accounts in the organization\cr
#'  \link[paws.management.p2:organizations_list_accounts_for_parent]{list_accounts_for_parent} \tab Lists the accounts in an organization that are contained by the specified target root or organizational unit (OU)\cr
#'  \link[paws.management.p2:organizations_list_aws_service_access_for_organization]{list_aws_service_access_for_organization} \tab Returns a list of the Amazon Web Services services that you enabled to integrate with your organization\cr
#'  \link[paws.management.p2:organizations_list_children]{list_children} \tab Lists all of the organizational units (OUs) or accounts that are contained in the specified parent OU or root\cr
#'  \link[paws.management.p2:organizations_list_create_account_status]{list_create_account_status} \tab Lists the account creation requests that match the specified status that is currently being tracked for the organization\cr
#'  \link[paws.management.p2:organizations_list_delegated_administrators]{list_delegated_administrators} \tab Lists the Amazon Web Services accounts that are designated as delegated administrators in this organization\cr
#'  \link[paws.management.p2:organizations_list_delegated_services_for_account]{list_delegated_services_for_account} \tab List the Amazon Web Services services for which the specified account is a delegated administrator\cr
#'  \link[paws.management.p2:organizations_list_handshakes_for_account]{list_handshakes_for_account} \tab Lists the current handshakes that are associated with the account of the requesting user\cr
#'  \link[paws.management.p2:organizations_list_handshakes_for_organization]{list_handshakes_for_organization} \tab Lists the handshakes that are associated with the organization that the requesting user is part of\cr
#'  \link[paws.management.p2:organizations_list_organizational_units_for_parent]{list_organizational_units_for_parent} \tab Lists the organizational units (OUs) in a parent organizational unit or root\cr
#'  \link[paws.management.p2:organizations_list_parents]{list_parents} \tab Lists the root or organizational units (OUs) that serve as the immediate parent of the specified child OU or account\cr
#'  \link[paws.management.p2:organizations_list_policies]{list_policies} \tab Retrieves the list of all policies in an organization of a specified type\cr
#'  \link[paws.management.p2:organizations_list_policies_for_target]{list_policies_for_target} \tab Lists the policies that are directly attached to the specified target root, organizational unit (OU), or account\cr
#'  \link[paws.management.p2:organizations_list_roots]{list_roots} \tab Lists the roots that are defined in the current organization\cr
#'  \link[paws.management.p2:organizations_list_tags_for_resource]{list_tags_for_resource} \tab Lists tags that are attached to the specified resource\cr
#'  \link[paws.management.p2:organizations_list_targets_for_policy]{list_targets_for_policy} \tab Lists all the roots, organizational units (OUs), and accounts that the specified policy is attached to\cr
#'  \link[paws.management.p2:organizations_move_account]{move_account} \tab Moves an account from its current source parent root or organizational unit (OU) to the specified destination parent root or OU\cr
#'  \link[paws.management.p2:organizations_register_delegated_administrator]{register_delegated_administrator} \tab Enables the specified member account to administer the Organizations features of the specified Amazon Web Services service\cr
#'  \link[paws.management.p2:organizations_remove_account_from_organization]{remove_account_from_organization} \tab Removes the specified account from the organization\cr
#'  \link[paws.management.p2:organizations_tag_resource]{tag_resource} \tab Adds one or more tags to the specified resource\cr
#'  \link[paws.management.p2:organizations_untag_resource]{untag_resource} \tab Removes any tags with the specified keys from the specified resource\cr
#'  \link[paws.management.p2:organizations_update_organizational_unit]{update_organizational_unit} \tab Renames the specified organizational unit (OU)\cr
#'  \link[paws.management.p2:organizations_update_policy]{update_policy} \tab Updates an existing policy with a new name, description, or content
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname organizations
#' @export
organizations <- function(config = list()) {
  paws.management.p2::organizations(config)
}

#' AWS Performance Insights
#'
#' @description
#' Amazon RDS Performance Insights
#' 
#' Amazon RDS Performance Insights enables you to monitor and explore
#' different dimensions of database load based on data captured from a
#' running DB instance. The guide provides detailed information about
#' Performance Insights data types, parameters and errors.
#' 
#' When Performance Insights is enabled, the Amazon RDS Performance
#' Insights API provides visibility into the performance of your DB
#' instance. Amazon CloudWatch provides the authoritative source for Amazon
#' Web Services service-vended monitoring metrics. Performance Insights
#' offers a domain-specific view of DB load.
#' 
#' DB load is measured as average active sessions. Performance Insights
#' provides the data to API consumers as a two-dimensional time-series
#' dataset. The time dimension provides DB load data for each time point in
#' the queried time range. Each time point decomposes overall load in
#' relation to the requested dimensions, measured at that time point.
#' Examples include SQL, Wait event, User, and Host.
#' 
#' -   To learn more about Performance Insights and Amazon Aurora DB
#'     instances, go to the *<span
#'     href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html">
#'     Amazon Aurora User Guide</span>* .
#' 
#' -   To learn more about Performance Insights and Amazon RDS DB
#'     instances, go to the *<span
#'     href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html">
#'     Amazon RDS User Guide</span>* .
#' 
#' -   To learn more about Performance Insights and Amazon DocumentDB
#'     clusters, go to the *<span
#'     href="https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html">
#'     Amazon DocumentDB Developer Guide</span>* .
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- pi(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- pi()
#' svc$describe_dimension_keys(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p2:pi_describe_dimension_keys]{describe_dimension_keys} \tab For a specific time period, retrieve the top N dimension keys for a metric\cr
#'  \link[paws.management.p2:pi_get_dimension_key_details]{get_dimension_key_details} \tab Get the attributes of the specified dimension group for a DB instance or data source\cr
#'  \link[paws.management.p2:pi_get_resource_metadata]{get_resource_metadata} \tab Retrieve the metadata for different features\cr
#'  \link[paws.management.p2:pi_get_resource_metrics]{get_resource_metrics} \tab Retrieve Performance Insights metrics for a set of data sources over a time period\cr
#'  \link[paws.management.p2:pi_list_available_resource_dimensions]{list_available_resource_dimensions} \tab Retrieve the dimensions that can be queried for each specified metric type on a specified DB instance\cr
#'  \link[paws.management.p2:pi_list_available_resource_metrics]{list_available_resource_metrics} \tab Retrieve metrics of the specified types that can be queried for a specified DB instance
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname pi
#' @export
pi <- function(config = list()) {
  paws.management.p2::pi(config)
}

#' AWS Resilience Hub
#'
#' @description
#' AWS Resilience Hub helps you proactively prepare and protect your Amazon
#' Web Services applications from disruptions. Resilience Hub offers
#' continuous resiliency assessment and validation that integrates into
#' your software development lifecycle. This enables you to uncover
#' resiliency weaknesses, ensure recovery time objective (RTO) and recovery
#' point objective (RPO) targets for your applications are met, and resolve
#' issues before they are released into production.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- resiliencehub(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- resiliencehub()
#' svc$add_draft_app_version_resource_mappings(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p2:resiliencehub_add_draft_app_version_resource_mappings]{add_draft_app_version_resource_mappings} \tab Adds the resource mapping for the draft application version\cr
#'  \link[paws.management.p2:resiliencehub_create_app]{create_app} \tab Creates a Resilience Hub application\cr
#'  \link[paws.management.p2:resiliencehub_create_recommendation_template]{create_recommendation_template} \tab Creates a new recommendation template\cr
#'  \link[paws.management.p2:resiliencehub_create_resiliency_policy]{create_resiliency_policy} \tab Creates a resiliency policy for an application\cr
#'  \link[paws.management.p2:resiliencehub_delete_app]{delete_app} \tab Deletes an AWS Resilience Hub application\cr
#'  \link[paws.management.p2:resiliencehub_delete_app_assessment]{delete_app_assessment} \tab Deletes an AWS Resilience Hub application assessment\cr
#'  \link[paws.management.p2:resiliencehub_delete_recommendation_template]{delete_recommendation_template} \tab Deletes a recommendation template\cr
#'  \link[paws.management.p2:resiliencehub_delete_resiliency_policy]{delete_resiliency_policy} \tab Deletes a resiliency policy\cr
#'  \link[paws.management.p2:resiliencehub_describe_app]{describe_app} \tab Describes an AWS Resilience Hub application\cr
#'  \link[paws.management.p2:resiliencehub_describe_app_assessment]{describe_app_assessment} \tab Describes an assessment for an AWS Resilience Hub application\cr
#'  \link[paws.management.p2:resiliencehub_describe_app_version_resources_resolution_status]{describe_app_version_resources_resolution_status} \tab Returns the resolution status for the specified resolution identifier for an application version\cr
#'  \link[paws.management.p2:resiliencehub_describe_app_version_template]{describe_app_version_template} \tab Describes details about an AWS Resilience Hub\cr
#'  \link[paws.management.p2:resiliencehub_describe_draft_app_version_resources_import_status]{describe_draft_app_version_resources_import_status} \tab Describes the status of importing resources to an application version\cr
#'  \link[paws.management.p2:resiliencehub_describe_resiliency_policy]{describe_resiliency_policy} \tab Describes a specified resiliency policy for an AWS Resilience Hub application\cr
#'  \link[paws.management.p2:resiliencehub_import_resources_to_draft_app_version]{import_resources_to_draft_app_version} \tab Imports resources from sources such as a CloudFormation stack, resource-groups, or application registry app to a draft application version\cr
#'  \link[paws.management.p2:resiliencehub_list_alarm_recommendations]{list_alarm_recommendations} \tab Lists the alarm recommendations for a AWS Resilience Hub application\cr
#'  \link[paws.management.p2:resiliencehub_list_app_assessments]{list_app_assessments} \tab Lists the assessments for an AWS Resilience Hub application\cr
#'  \link[paws.management.p2:resiliencehub_list_app_component_compliances]{list_app_component_compliances} \tab Lists the compliances for an AWS Resilience Hub component\cr
#'  \link[paws.management.p2:resiliencehub_list_app_component_recommendations]{list_app_component_recommendations} \tab Lists the recommendations for an AWS Resilience Hub component\cr
#'  \link[paws.management.p2:resiliencehub_list_apps]{list_apps} \tab Lists your Resilience Hub applications\cr
#'  \link[paws.management.p2:resiliencehub_list_app_version_resource_mappings]{list_app_version_resource_mappings} \tab Lists how the resources in an application version are mapped/sourced from\cr
#'  \link[paws.management.p2:resiliencehub_list_app_version_resources]{list_app_version_resources} \tab Lists all the resources in an application version\cr
#'  \link[paws.management.p2:resiliencehub_list_app_versions]{list_app_versions} \tab Lists the different versions for the Resilience Hub applications\cr
#'  \link[paws.management.p2:resiliencehub_list_recommendation_templates]{list_recommendation_templates} \tab Lists the recommendation templates for the Resilience Hub applications\cr
#'  \link[paws.management.p2:resiliencehub_list_resiliency_policies]{list_resiliency_policies} \tab Lists the resiliency policies for the Resilience Hub applications\cr
#'  \link[paws.management.p2:resiliencehub_list_sop_recommendations]{list_sop_recommendations} \tab Lists the standard operating procedure (SOP) recommendations for the Resilience Hub applications\cr
#'  \link[paws.management.p2:resiliencehub_list_suggested_resiliency_policies]{list_suggested_resiliency_policies} \tab Lists the suggested resiliency policies for the Resilience Hub applications\cr
#'  \link[paws.management.p2:resiliencehub_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags for your resources in your Resilience Hub applications\cr
#'  \link[paws.management.p2:resiliencehub_list_test_recommendations]{list_test_recommendations} \tab Lists the test recommendations for the Resilience Hub application\cr
#'  \link[paws.management.p2:resiliencehub_list_unsupported_app_version_resources]{list_unsupported_app_version_resources} \tab Lists the resources that are not currently supported in AWS Resilience Hub\cr
#'  \link[paws.management.p2:resiliencehub_publish_app_version]{publish_app_version} \tab Publishes a new version of a specific Resilience Hub application\cr
#'  \link[paws.management.p2:resiliencehub_put_draft_app_version_template]{put_draft_app_version_template} \tab Adds or updates the app template for a draft version of a Resilience Hub app\cr
#'  \link[paws.management.p2:resiliencehub_remove_draft_app_version_resource_mappings]{remove_draft_app_version_resource_mappings} \tab Removes resource mappings from a draft application version\cr
#'  \link[paws.management.p2:resiliencehub_resolve_app_version_resources]{resolve_app_version_resources} \tab Resolves the resources for an application version\cr
#'  \link[paws.management.p2:resiliencehub_start_app_assessment]{start_app_assessment} \tab Creates a new application assessment for an application\cr
#'  \link[paws.management.p2:resiliencehub_tag_resource]{tag_resource} \tab Applies one or more tags to a resource\cr
#'  \link[paws.management.p2:resiliencehub_untag_resource]{untag_resource} \tab Removes one or more tags from a resource\cr
#'  \link[paws.management.p2:resiliencehub_update_app]{update_app} \tab Updates an application\cr
#'  \link[paws.management.p2:resiliencehub_update_resiliency_policy]{update_resiliency_policy} \tab Updates a resiliency policy
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname resiliencehub
#' @export
resiliencehub <- function(config = list()) {
  paws.management.p2::resiliencehub(config)
}

#' AWS Resource Groups
#'
#' @description
#' AWS Resource Groups lets you organize AWS resources such as Amazon EC2
#' instances, Amazon Relational Database Service databases, and Amazon S3
#' buckets into groups using criteria that you define as tags. A resource
#' group is a collection of resources that match the resource types
#' specified in a query, and share one or more tags or portions of tags.
#' You can create a group of resources based on their roles in your cloud
#' infrastructure, lifecycle stages, regions, application layers, or
#' virtually any criteria. Resource Groups enable you to automate
#' management tasks, such as those in AWS Systems Manager Automation
#' documents, on tag-related resources in AWS Systems Manager. Groups of
#' tagged resources also let you quickly view a custom console in AWS
#' Systems Manager that shows AWS Config compliance and other monitoring
#' data about member resources.
#' 
#' To create a resource group, build a resource query, and specify tags
#' that identify the criteria that members of the group have in common.
#' Tags are key-value pairs.
#' 
#' For more information about Resource Groups, see the [AWS Resource Groups
#' User Guide](https://docs.aws.amazon.com/ARG/latest/userguide/).
#' 
#' AWS Resource Groups uses a REST-compliant API that you can use to
#' perform the following types of operations.
#' 
#' -   Create, Read, Update, and Delete (CRUD) operations on resource
#'     groups and resource query entities
#' 
#' -   Applying, editing, and removing tags from resource groups
#' 
#' -   Resolving resource group member ARNs so they can be returned as
#'     search results
#' 
#' -   Getting data about resources that are members of a group
#' 
#' -   Searching AWS resources based on a resource query
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- resourcegroups(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- resourcegroups()
#' svc$create_group(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p2:resourcegroups_create_group]{create_group} \tab Creates a resource group with the specified name and description\cr
#'  \link[paws.management.p2:resourcegroups_delete_group]{delete_group} \tab Deletes the specified resource group\cr
#'  \link[paws.management.p2:resourcegroups_get_group]{get_group} \tab Returns information about a specified resource group\cr
#'  \link[paws.management.p2:resourcegroups_get_group_configuration]{get_group_configuration} \tab Returns the service configuration associated with the specified resource group\cr
#'  \link[paws.management.p2:resourcegroups_get_group_query]{get_group_query} \tab Retrieves the resource query associated with the specified resource group\cr
#'  \link[paws.management.p2:resourcegroups_get_tags]{get_tags} \tab Returns a list of tags that are associated with a resource group, specified by an ARN\cr
#'  \link[paws.management.p2:resourcegroups_group_resources]{group_resources} \tab Adds the specified resources to the specified group\cr
#'  \link[paws.management.p2:resourcegroups_list_group_resources]{list_group_resources} \tab Returns a list of ARNs of the resources that are members of a specified resource group\cr
#'  \link[paws.management.p2:resourcegroups_list_groups]{list_groups} \tab Returns a list of existing resource groups in your account\cr
#'  \link[paws.management.p2:resourcegroups_put_group_configuration]{put_group_configuration} \tab Attaches a service configuration to the specified group\cr
#'  \link[paws.management.p2:resourcegroups_search_resources]{search_resources} \tab Returns a list of AWS resource identifiers that matches the specified query\cr
#'  \link[paws.management.p2:resourcegroups_tag]{tag} \tab Adds tags to a resource group with the specified ARN\cr
#'  \link[paws.management.p2:resourcegroups_ungroup_resources]{ungroup_resources} \tab Removes the specified resources from the specified group\cr
#'  \link[paws.management.p2:resourcegroups_untag]{untag} \tab Deletes tags from a specified resource group\cr
#'  \link[paws.management.p2:resourcegroups_update_group]{update_group} \tab Updates the description for an existing group\cr
#'  \link[paws.management.p2:resourcegroups_update_group_query]{update_group_query} \tab Updates the resource query of a group
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname resourcegroups
#' @export
resourcegroups <- function(config = list()) {
  paws.management.p2::resourcegroups(config)
}

#' AWS Resource Groups Tagging API
#'
#' @description
#' Resource Groups Tagging API
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- resourcegroupstaggingapi(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- resourcegroupstaggingapi()
#' svc$describe_report_creation(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p2:resourcegroupstaggingapi_describe_report_creation]{describe_report_creation} \tab Describes the status of the StartReportCreation operation\cr
#'  \link[paws.management.p2:resourcegroupstaggingapi_get_compliance_summary]{get_compliance_summary} \tab Returns a table that shows counts of resources that are noncompliant with their tag policies\cr
#'  \link[paws.management.p2:resourcegroupstaggingapi_get_resources]{get_resources} \tab Returns all the tagged or previously tagged resources that are located in the specified Amazon Web Services Region for the account\cr
#'  \link[paws.management.p2:resourcegroupstaggingapi_get_tag_keys]{get_tag_keys} \tab Returns all tag keys currently in use in the specified Amazon Web Services Region for the calling account\cr
#'  \link[paws.management.p2:resourcegroupstaggingapi_get_tag_values]{get_tag_values} \tab Returns all tag values for the specified key that are used in the specified Amazon Web Services Region for the calling account\cr
#'  \link[paws.management.p2:resourcegroupstaggingapi_start_report_creation]{start_report_creation} \tab Generates a report that lists all tagged resources in the accounts across your organization and tells whether each resource is compliant with the effective tag policy\cr
#'  \link[paws.management.p2:resourcegroupstaggingapi_tag_resources]{tag_resources} \tab Applies one or more tags to the specified resources\cr
#'  \link[paws.management.p2:resourcegroupstaggingapi_untag_resources]{untag_resources} \tab Removes the specified tags from the specified resources
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname resourcegroupstaggingapi
#' @export
resourcegroupstaggingapi <- function(config = list()) {
  paws.management.p2::resourcegroupstaggingapi(config)
}

#' CloudWatch RUM
#'
#' @description
#' With Amazon CloudWatch RUM, you can perform real-user monitoring to
#' collect client-side data about your web application performance from
#' actual user sessions in real time. The data collected includes page load
#' times, client-side errors, and user behavior. When you view this data,
#' you can see it all aggregated together and also see breakdowns by the
#' browsers and devices that your customers use.
#' 
#'      <p>You can use the collected data to quickly identify and debug client-side performance issues. CloudWatch RUM helps you visualize anomalies in your application performance and find relevant debugging data such as error messages, stack traces, and user sessions. You can also use RUM to understand the range of end-user impact including the number of users, geolocations, and browsers used.</p> 
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- cloudwatchrum(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- cloudwatchrum()
#' svc$create_app_monitor(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p2:cloudwatchrum_create_app_monitor]{create_app_monitor} \tab Creates a Amazon CloudWatch RUM app monitor, which collects telemetry data from your application and sends that data to RUM\cr
#'  \link[paws.management.p2:cloudwatchrum_delete_app_monitor]{delete_app_monitor} \tab Deletes an existing app monitor\cr
#'  \link[paws.management.p2:cloudwatchrum_get_app_monitor]{get_app_monitor} \tab Retrieves the complete configuration information for one app monitor\cr
#'  \link[paws.management.p2:cloudwatchrum_get_app_monitor_data]{get_app_monitor_data} \tab Retrieves the raw performance events that RUM has collected from your web application, so that you can do your own processing or analysis of this data\cr
#'  \link[paws.management.p2:cloudwatchrum_list_app_monitors]{list_app_monitors} \tab Returns a list of the Amazon CloudWatch RUM app monitors in the account\cr
#'  \link[paws.management.p2:cloudwatchrum_list_tags_for_resource]{list_tags_for_resource} \tab Displays the tags associated with a CloudWatch RUM resource\cr
#'  \link[paws.management.p2:cloudwatchrum_put_rum_events]{put_rum_events} \tab Sends telemetry events about your application performance and user behavior to CloudWatch RUM\cr
#'  \link[paws.management.p2:cloudwatchrum_tag_resource]{tag_resource} \tab Assigns one or more tags (key-value pairs) to the specified CloudWatch RUM resource\cr
#'  \link[paws.management.p2:cloudwatchrum_untag_resource]{untag_resource} \tab Removes one or more tags from the specified resource\cr
#'  \link[paws.management.p2:cloudwatchrum_update_app_monitor]{update_app_monitor} \tab Updates the configuration of an existing app monitor
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname cloudwatchrum
#' @export
cloudwatchrum <- function(config = list()) {
  paws.management.p2::cloudwatchrum(config)
}

#' Service Quotas
#'
#' @description
#' With Service Quotas, you can view and manage your quotas easily as your
#' AWS workloads grow. Quotas, also referred to as limits, are the maximum
#' number of resources that you can create in your AWS account. For more
#' information, see the [Service Quotas User
#' Guide](https://docs.aws.amazon.com/servicequotas/latest/userguide/).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- servicequotas(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- servicequotas()
#' svc$associate_service_quota_template(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p2:servicequotas_associate_service_quota_template]{associate_service_quota_template} \tab Associates your quota request template with your organization\cr
#'  \link[paws.management.p2:servicequotas_delete_service_quota_increase_request_from_template]{delete_service_quota_increase_request_from_template} \tab Deletes the quota increase request for the specified quota from your quota request template\cr
#'  \link[paws.management.p2:servicequotas_disassociate_service_quota_template]{disassociate_service_quota_template} \tab Disables your quota request template\cr
#'  \link[paws.management.p2:servicequotas_get_association_for_service_quota_template]{get_association_for_service_quota_template} \tab Retrieves the status of the association for the quota request template\cr
#'  \link[paws.management.p2:servicequotas_get_aws_default_service_quota]{get_aws_default_service_quota} \tab Retrieves the default value for the specified quota\cr
#'  \link[paws.management.p2:servicequotas_get_requested_service_quota_change]{get_requested_service_quota_change} \tab Retrieves information about the specified quota increase request\cr
#'  \link[paws.management.p2:servicequotas_get_service_quota]{get_service_quota} \tab Retrieves the applied quota value for the specified quota\cr
#'  \link[paws.management.p2:servicequotas_get_service_quota_increase_request_from_template]{get_service_quota_increase_request_from_template} \tab Retrieves information about the specified quota increase request in your quota request template\cr
#'  \link[paws.management.p2:servicequotas_list_aws_default_service_quotas]{list_aws_default_service_quotas} \tab Lists the default values for the quotas for the specified AWS service\cr
#'  \link[paws.management.p2:servicequotas_list_requested_service_quota_change_history]{list_requested_service_quota_change_history} \tab Retrieves the quota increase requests for the specified service\cr
#'  \link[paws.management.p2:servicequotas_list_requested_service_quota_change_history_by_quota]{list_requested_service_quota_change_history_by_quota} \tab Retrieves the quota increase requests for the specified quota\cr
#'  \link[paws.management.p2:servicequotas_list_service_quota_increase_requests_in_template]{list_service_quota_increase_requests_in_template} \tab Lists the quota increase requests in the specified quota request template\cr
#'  \link[paws.management.p2:servicequotas_list_service_quotas]{list_service_quotas} \tab Lists the applied quota values for the specified AWS service\cr
#'  \link[paws.management.p2:servicequotas_list_services]{list_services} \tab Lists the names and codes for the services integrated with Service Quotas\cr
#'  \link[paws.management.p2:servicequotas_list_tags_for_resource]{list_tags_for_resource} \tab Returns a list of the tags assigned to the specified applied quota\cr
#'  \link[paws.management.p2:servicequotas_put_service_quota_increase_request_into_template]{put_service_quota_increase_request_into_template} \tab Adds a quota increase request to your quota request template\cr
#'  \link[paws.management.p2:servicequotas_request_service_quota_increase]{request_service_quota_increase} \tab Submits a quota increase request for the specified quota\cr
#'  \link[paws.management.p2:servicequotas_tag_resource]{tag_resource} \tab Adds tags to the specified applied quota\cr
#'  \link[paws.management.p2:servicequotas_untag_resource]{untag_resource} \tab Removes tags from the specified applied quota
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname servicequotas
#' @export
servicequotas <- function(config = list()) {
  paws.management.p2::servicequotas(config)
}

#' AWS Service Catalog
#'
#' @description
#' [AWS Service Catalog](https://aws.amazon.com/servicecatalog/) enables
#' organizations to create and manage catalogs of IT services that are
#' approved for AWS. To get the most out of this documentation, you should
#' be familiar with the terminology discussed in [AWS Service Catalog
#' Concepts](https://docs.aws.amazon.com/servicecatalog/latest/adminguide/what-is_concepts.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- servicecatalog(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- servicecatalog()
#' svc$accept_portfolio_share(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p2:servicecatalog_accept_portfolio_share]{accept_portfolio_share} \tab Accepts an offer to share the specified portfolio\cr
#'  \link[paws.management.p2:servicecatalog_associate_budget_with_resource]{associate_budget_with_resource} \tab Associates the specified budget with the specified resource\cr
#'  \link[paws.management.p2:servicecatalog_associate_principal_with_portfolio]{associate_principal_with_portfolio} \tab Associates the specified principal ARN with the specified portfolio\cr
#'  \link[paws.management.p2:servicecatalog_associate_product_with_portfolio]{associate_product_with_portfolio} \tab Associates the specified product with the specified portfolio\cr
#'  \link[paws.management.p2:servicecatalog_associate_service_action_with_provisioning_artifact]{associate_service_action_with_provisioning_artifact} \tab Associates a self-service action with a provisioning artifact\cr
#'  \link[paws.management.p2:servicecatalog_associate_tag_option_with_resource]{associate_tag_option_with_resource} \tab Associate the specified TagOption with the specified portfolio or product\cr
#'  \link[paws.management.p2:servicecatalog_batch_associate_service_action_with_provisioning_artifact]{batch_associate_service_action_with_provisioning_artifact} \tab Associates multiple self-service actions with provisioning artifacts\cr
#'  \link[paws.management.p2:servicecatalog_batch_disassociate_service_action_from_provisioning_artifact]{batch_disassociate_service_action_from_provisioning_artifact} \tab Disassociates a batch of self-service actions from the specified provisioning artifact\cr
#'  \link[paws.management.p2:servicecatalog_copy_product]{copy_product} \tab Copies the specified source product to the specified target product or a new product\cr
#'  \link[paws.management.p2:servicecatalog_create_constraint]{create_constraint} \tab Creates a constraint\cr
#'  \link[paws.management.p2:servicecatalog_create_portfolio]{create_portfolio} \tab Creates a portfolio\cr
#'  \link[paws.management.p2:servicecatalog_create_portfolio_share]{create_portfolio_share} \tab Shares the specified portfolio with the specified account or organization node\cr
#'  \link[paws.management.p2:servicecatalog_create_product]{create_product} \tab Creates a product\cr
#'  \link[paws.management.p2:servicecatalog_create_provisioned_product_plan]{create_provisioned_product_plan} \tab Creates a plan\cr
#'  \link[paws.management.p2:servicecatalog_create_provisioning_artifact]{create_provisioning_artifact} \tab Creates a provisioning artifact (also known as a version) for the specified product\cr
#'  \link[paws.management.p2:servicecatalog_create_service_action]{create_service_action} \tab Creates a self-service action\cr
#'  \link[paws.management.p2:servicecatalog_create_tag_option]{create_tag_option} \tab Creates a TagOption\cr
#'  \link[paws.management.p2:servicecatalog_delete_constraint]{delete_constraint} \tab Deletes the specified constraint\cr
#'  \link[paws.management.p2:servicecatalog_delete_portfolio]{delete_portfolio} \tab Deletes the specified portfolio\cr
#'  \link[paws.management.p2:servicecatalog_delete_portfolio_share]{delete_portfolio_share} \tab Stops sharing the specified portfolio with the specified account or organization node\cr
#'  \link[paws.management.p2:servicecatalog_delete_product]{delete_product} \tab Deletes the specified product\cr
#'  \link[paws.management.p2:servicecatalog_delete_provisioned_product_plan]{delete_provisioned_product_plan} \tab Deletes the specified plan\cr
#'  \link[paws.management.p2:servicecatalog_delete_provisioning_artifact]{delete_provisioning_artifact} \tab Deletes the specified provisioning artifact (also known as a version) for the specified product\cr
#'  \link[paws.management.p2:servicecatalog_delete_service_action]{delete_service_action} \tab Deletes a self-service action\cr
#'  \link[paws.management.p2:servicecatalog_delete_tag_option]{delete_tag_option} \tab Deletes the specified TagOption\cr
#'  \link[paws.management.p2:servicecatalog_describe_constraint]{describe_constraint} \tab Gets information about the specified constraint\cr
#'  \link[paws.management.p2:servicecatalog_describe_copy_product_status]{describe_copy_product_status} \tab Gets the status of the specified copy product operation\cr
#'  \link[paws.management.p2:servicecatalog_describe_portfolio]{describe_portfolio} \tab Gets information about the specified portfolio\cr
#'  \link[paws.management.p2:servicecatalog_describe_portfolio_shares]{describe_portfolio_shares} \tab Returns a summary of each of the portfolio shares that were created for the specified portfolio\cr
#'  \link[paws.management.p2:servicecatalog_describe_portfolio_share_status]{describe_portfolio_share_status} \tab Gets the status of the specified portfolio share operation\cr
#'  \link[paws.management.p2:servicecatalog_describe_product]{describe_product} \tab Gets information about the specified product\cr
#'  \link[paws.management.p2:servicecatalog_describe_product_as_admin]{describe_product_as_admin} \tab Gets information about the specified product\cr
#'  \link[paws.management.p2:servicecatalog_describe_product_view]{describe_product_view} \tab Gets information about the specified product\cr
#'  \link[paws.management.p2:servicecatalog_describe_provisioned_product]{describe_provisioned_product} \tab Gets information about the specified provisioned product\cr
#'  \link[paws.management.p2:servicecatalog_describe_provisioned_product_plan]{describe_provisioned_product_plan} \tab Gets information about the resource changes for the specified plan\cr
#'  \link[paws.management.p2:servicecatalog_describe_provisioning_artifact]{describe_provisioning_artifact} \tab Gets information about the specified provisioning artifact (also known as a version) for the specified product\cr
#'  \link[paws.management.p2:servicecatalog_describe_provisioning_parameters]{describe_provisioning_parameters} \tab Gets information about the configuration required to provision the specified product using the specified provisioning artifact\cr
#'  \link[paws.management.p2:servicecatalog_describe_record]{describe_record} \tab Gets information about the specified request operation\cr
#'  \link[paws.management.p2:servicecatalog_describe_service_action]{describe_service_action} \tab Describes a self-service action\cr
#'  \link[paws.management.p2:servicecatalog_describe_service_action_execution_parameters]{describe_service_action_execution_parameters} \tab Finds the default parameters for a specific self-service action on a specific provisioned product and returns a map of the results to the user\cr
#'  \link[paws.management.p2:servicecatalog_describe_tag_option]{describe_tag_option} \tab Gets information about the specified TagOption\cr
#'  \link[paws.management.p2:servicecatalog_disable_aws_organizations_access]{disable_aws_organizations_access} \tab Disable portfolio sharing through AWS Organizations feature\cr
#'  \link[paws.management.p2:servicecatalog_disassociate_budget_from_resource]{disassociate_budget_from_resource} \tab Disassociates the specified budget from the specified resource\cr
#'  \link[paws.management.p2:servicecatalog_disassociate_principal_from_portfolio]{disassociate_principal_from_portfolio} \tab Disassociates a previously associated principal ARN from a specified portfolio\cr
#'  \link[paws.management.p2:servicecatalog_disassociate_product_from_portfolio]{disassociate_product_from_portfolio} \tab Disassociates the specified product from the specified portfolio\cr
#'  \link[paws.management.p2:servicecatalog_disassociate_service_action_from_provisioning_artifact]{disassociate_service_action_from_provisioning_artifact} \tab Disassociates the specified self-service action association from the specified provisioning artifact\cr
#'  \link[paws.management.p2:servicecatalog_disassociate_tag_option_from_resource]{disassociate_tag_option_from_resource} \tab Disassociates the specified TagOption from the specified resource\cr
#'  \link[paws.management.p2:servicecatalog_enable_aws_organizations_access]{enable_aws_organizations_access} \tab Enable portfolio sharing feature through AWS Organizations\cr
#'  \link[paws.management.p2:servicecatalog_execute_provisioned_product_plan]{execute_provisioned_product_plan} \tab Provisions or modifies a product based on the resource changes for the specified plan\cr
#'  \link[paws.management.p2:servicecatalog_execute_provisioned_product_service_action]{execute_provisioned_product_service_action} \tab Executes a self-service action against a provisioned product\cr
#'  \link[paws.management.p2:servicecatalog_get_aws_organizations_access_status]{get_aws_organizations_access_status} \tab Get the Access Status for AWS Organization portfolio share feature\cr
#'  \link[paws.management.p2:servicecatalog_get_provisioned_product_outputs]{get_provisioned_product_outputs} \tab This API takes either a ProvisonedProductId or a ProvisionedProductName, along with a list of one or more output keys, and responds with the key/value pairs of those outputs\cr
#'  \link[paws.management.p2:servicecatalog_import_as_provisioned_product]{import_as_provisioned_product} \tab Requests the import of a resource as a Service Catalog provisioned product that is associated to a Service Catalog product and provisioning artifact\cr
#'  \link[paws.management.p2:servicecatalog_list_accepted_portfolio_shares]{list_accepted_portfolio_shares} \tab Lists all imported portfolios for which account-to-account shares were accepted by this account\cr
#'  \link[paws.management.p2:servicecatalog_list_budgets_for_resource]{list_budgets_for_resource} \tab Lists all the budgets associated to the specified resource\cr
#'  \link[paws.management.p2:servicecatalog_list_constraints_for_portfolio]{list_constraints_for_portfolio} \tab Lists the constraints for the specified portfolio and product\cr
#'  \link[paws.management.p2:servicecatalog_list_launch_paths]{list_launch_paths} \tab Lists the paths to the specified product\cr
#'  \link[paws.management.p2:servicecatalog_list_organization_portfolio_access]{list_organization_portfolio_access} \tab Lists the organization nodes that have access to the specified portfolio\cr
#'  \link[paws.management.p2:servicecatalog_list_portfolio_access]{list_portfolio_access} \tab Lists the account IDs that have access to the specified portfolio\cr
#'  \link[paws.management.p2:servicecatalog_list_portfolios]{list_portfolios} \tab Lists all portfolios in the catalog\cr
#'  \link[paws.management.p2:servicecatalog_list_portfolios_for_product]{list_portfolios_for_product} \tab Lists all portfolios that the specified product is associated with\cr
#'  \link[paws.management.p2:servicecatalog_list_principals_for_portfolio]{list_principals_for_portfolio} \tab Lists all principal ARNs associated with the specified portfolio\cr
#'  \link[paws.management.p2:servicecatalog_list_provisioned_product_plans]{list_provisioned_product_plans} \tab Lists the plans for the specified provisioned product or all plans to which the user has access\cr
#'  \link[paws.management.p2:servicecatalog_list_provisioning_artifacts]{list_provisioning_artifacts} \tab Lists all provisioning artifacts (also known as versions) for the specified product\cr
#'  \link[paws.management.p2:servicecatalog_list_provisioning_artifacts_for_service_action]{list_provisioning_artifacts_for_service_action} \tab Lists all provisioning artifacts (also known as versions) for the specified self-service action\cr
#'  \link[paws.management.p2:servicecatalog_list_record_history]{list_record_history} \tab Lists the specified requests or all performed requests\cr
#'  \link[paws.management.p2:servicecatalog_list_resources_for_tag_option]{list_resources_for_tag_option} \tab Lists the resources associated with the specified TagOption\cr
#'  \link[paws.management.p2:servicecatalog_list_service_actions]{list_service_actions} \tab Lists all self-service actions\cr
#'  \link[paws.management.p2:servicecatalog_list_service_actions_for_provisioning_artifact]{list_service_actions_for_provisioning_artifact} \tab Returns a paginated list of self-service actions associated with the specified Product ID and Provisioning Artifact ID\cr
#'  \link[paws.management.p2:servicecatalog_list_stack_instances_for_provisioned_product]{list_stack_instances_for_provisioned_product} \tab Returns summary information about stack instances that are associated with the specified CFN_STACKSET type provisioned product\cr
#'  \link[paws.management.p2:servicecatalog_list_tag_options]{list_tag_options} \tab Lists the specified TagOptions or all TagOptions\cr
#'  \link[paws.management.p2:servicecatalog_provision_product]{provision_product} \tab Provisions the specified product\cr
#'  \link[paws.management.p2:servicecatalog_reject_portfolio_share]{reject_portfolio_share} \tab Rejects an offer to share the specified portfolio\cr
#'  \link[paws.management.p2:servicecatalog_scan_provisioned_products]{scan_provisioned_products} \tab Lists the provisioned products that are available (not terminated)\cr
#'  \link[paws.management.p2:servicecatalog_search_products]{search_products} \tab Gets information about the products to which the caller has access\cr
#'  \link[paws.management.p2:servicecatalog_search_products_as_admin]{search_products_as_admin} \tab Gets information about the products for the specified portfolio or all products\cr
#'  \link[paws.management.p2:servicecatalog_search_provisioned_products]{search_provisioned_products} \tab Gets information about the provisioned products that meet the specified criteria\cr
#'  \link[paws.management.p2:servicecatalog_terminate_provisioned_product]{terminate_provisioned_product} \tab Terminates the specified provisioned product\cr
#'  \link[paws.management.p2:servicecatalog_update_constraint]{update_constraint} \tab Updates the specified constraint\cr
#'  \link[paws.management.p2:servicecatalog_update_portfolio]{update_portfolio} \tab Updates the specified portfolio\cr
#'  \link[paws.management.p2:servicecatalog_update_portfolio_share]{update_portfolio_share} \tab Updates the specified portfolio share\cr
#'  \link[paws.management.p2:servicecatalog_update_product]{update_product} \tab Updates the specified product\cr
#'  \link[paws.management.p2:servicecatalog_update_provisioned_product]{update_provisioned_product} \tab Requests updates to the configuration of the specified provisioned product\cr
#'  \link[paws.management.p2:servicecatalog_update_provisioned_product_properties]{update_provisioned_product_properties} \tab Requests updates to the properties of the specified provisioned product\cr
#'  \link[paws.management.p2:servicecatalog_update_provisioning_artifact]{update_provisioning_artifact} \tab Updates the specified provisioning artifact (also known as a version) for the specified product\cr
#'  \link[paws.management.p2:servicecatalog_update_service_action]{update_service_action} \tab Updates a self-service action\cr
#'  \link[paws.management.p2:servicecatalog_update_tag_option]{update_tag_option} \tab Updates the specified TagOption
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname servicecatalog
#' @export
servicecatalog <- function(config = list()) {
  paws.management.p2::servicecatalog(config)
}

#' AWS Service Catalog App Registry
#'
#' @description
#' Amazon Web Services Service Catalog AppRegistry enables organizations to
#' understand the application context of their Amazon Web Services
#' resources. AppRegistry provides a repository of your applications, their
#' resources, and the application metadata that you use within your
#' enterprise.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- appregistry(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- appregistry()
#' svc$associate_attribute_group(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p2:appregistry_associate_attribute_group]{associate_attribute_group} \tab Associates an attribute group with an application to augment the application's metadata with the group's attributes\cr
#'  \link[paws.management.p2:appregistry_associate_resource]{associate_resource} \tab Associates a resource with an application\cr
#'  \link[paws.management.p2:appregistry_create_application]{create_application} \tab Creates a new application that is the top-level node in a hierarchy of related cloud resource abstractions\cr
#'  \link[paws.management.p2:appregistry_create_attribute_group]{create_attribute_group} \tab Creates a new attribute group as a container for user-defined attributes\cr
#'  \link[paws.management.p2:appregistry_delete_application]{delete_application} \tab Deletes an application that is specified either by its application ID or name\cr
#'  \link[paws.management.p2:appregistry_delete_attribute_group]{delete_attribute_group} \tab Deletes an attribute group, specified either by its attribute group ID or name\cr
#'  \link[paws.management.p2:appregistry_disassociate_attribute_group]{disassociate_attribute_group} \tab Disassociates an attribute group from an application to remove the extra attributes contained in the attribute group from the application's metadata\cr
#'  \link[paws.management.p2:appregistry_disassociate_resource]{disassociate_resource} \tab Disassociates a resource from application\cr
#'  \link[paws.management.p2:appregistry_get_application]{get_application} \tab Retrieves metadata information about one of your applications\cr
#'  \link[paws.management.p2:appregistry_get_associated_resource]{get_associated_resource} \tab Gets the resource associated with the application\cr
#'  \link[paws.management.p2:appregistry_get_attribute_group]{get_attribute_group} \tab Retrieves an attribute group, either by its name or its ID\cr
#'  \link[paws.management.p2:appregistry_list_applications]{list_applications} \tab Retrieves a list of all of your applications\cr
#'  \link[paws.management.p2:appregistry_list_associated_attribute_groups]{list_associated_attribute_groups} \tab Lists all attribute groups that are associated with specified application\cr
#'  \link[paws.management.p2:appregistry_list_associated_resources]{list_associated_resources} \tab Lists all resources that are associated with specified application\cr
#'  \link[paws.management.p2:appregistry_list_attribute_groups]{list_attribute_groups} \tab Lists all attribute groups which you have access to\cr
#'  \link[paws.management.p2:appregistry_list_attribute_groups_for_application]{list_attribute_groups_for_application} \tab Lists the details of all attribute groups associated with a specific application\cr
#'  \link[paws.management.p2:appregistry_list_tags_for_resource]{list_tags_for_resource} \tab Lists all of the tags on the resource\cr
#'  \link[paws.management.p2:appregistry_sync_resource]{sync_resource} \tab Syncs the resource with current AppRegistry records\cr
#'  \link[paws.management.p2:appregistry_tag_resource]{tag_resource} \tab Assigns one or more tags (key-value pairs) to the specified resource\cr
#'  \link[paws.management.p2:appregistry_untag_resource]{untag_resource} \tab Removes tags from a resource\cr
#'  \link[paws.management.p2:appregistry_update_application]{update_application} \tab Updates an existing application with new attributes\cr
#'  \link[paws.management.p2:appregistry_update_attribute_group]{update_attribute_group} \tab Updates an existing attribute group with new details
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname appregistry
#' @export
appregistry <- function(config = list()) {
  paws.management.p2::appregistry(config)
}

#' Amazon Simple Systems Manager (SSM)
#'
#' @description
#' Amazon Web Services Systems Manager is a collection of capabilities to
#' help you manage your applications and infrastructure running in the
#' Amazon Web Services Cloud;. Systems Manager simplifies application and
#' resource management, shortens the time to detect and resolve operational
#' problems, and helps you manage your Amazon Web Services resources
#' securely at scale.
#' 
#' This reference is intended to be used with the [Amazon Web Services
#' Systems Manager User
#' Guide](https://docs.aws.amazon.com/systems-manager/latest/userguide/).
#' 
#' To get started, verify prerequisites. For more information, see [Setting
#' up Amazon Web Services Systems
#' Manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-setting-up.html).
#' 
#' **Related resources**
#' 
#' -   For information about how to use a Query API, see [Making API
#'     requests](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/making-api-requests.html).
#' 
#' -   For information about other API operations you can perform on EC2
#'     instances, see the [Amazon EC2 API
#'     Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/).
#' 
#' -   For information about AppConfig, a capability of Systems Manager,
#'     see the [AppConfig User
#'     Guide](https://docs.aws.amazon.com/appconfig/latest/userguide/) and
#'     the [AppConfig API
#'     Reference](https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/).
#' 
#' -   For information about Incident Manager, a capability of Systems
#'     Manager, see the [Incident Manager User
#'     Guide](https://docs.aws.amazon.com/incident-manager/latest/userguide/)
#'     and the [Incident Manager API
#'     Reference](https://docs.aws.amazon.com/incident-manager/latest/APIReference/).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- ssm(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- ssm()
#' svc$add_tags_to_resource(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p2:ssm_add_tags_to_resource]{add_tags_to_resource} \tab Adds or overwrites one or more tags for the specified resource\cr
#'  \link[paws.management.p2:ssm_associate_ops_item_related_item]{associate_ops_item_related_item} \tab Associates a related item to a Systems Manager OpsCenter OpsItem\cr
#'  \link[paws.management.p2:ssm_cancel_command]{cancel_command} \tab Attempts to cancel the command specified by the Command ID\cr
#'  \link[paws.management.p2:ssm_cancel_maintenance_window_execution]{cancel_maintenance_window_execution} \tab Stops a maintenance window execution that is already in progress and cancels any tasks in the window that haven't already starting running\cr
#'  \link[paws.management.p2:ssm_create_activation]{create_activation} \tab Generates an activation code and activation ID you can use to register your on-premises servers, edge devices, or virtual machine (VM) with Amazon Web Services Systems Manager\cr
#'  \link[paws.management.p2:ssm_create_association]{create_association} \tab A State Manager association defines the state that you want to maintain on your managed nodes\cr
#'  \link[paws.management.p2:ssm_create_association_batch]{create_association_batch} \tab Associates the specified Amazon Web Services Systems Manager document (SSM document) with the specified managed nodes or targets\cr
#'  \link[paws.management.p2:ssm_create_document]{create_document} \tab Creates a Amazon Web Services Systems Manager (SSM document)\cr
#'  \link[paws.management.p2:ssm_create_maintenance_window]{create_maintenance_window} \tab Creates a new maintenance window\cr
#'  \link[paws.management.p2:ssm_create_ops_item]{create_ops_item} \tab Creates a new OpsItem\cr
#'  \link[paws.management.p2:ssm_create_ops_metadata]{create_ops_metadata} \tab If you create a new application in Application Manager, Amazon Web Services Systems Manager calls this API operation to specify information about the new application, including the application type\cr
#'  \link[paws.management.p2:ssm_create_patch_baseline]{create_patch_baseline} \tab Creates a patch baseline\cr
#'  \link[paws.management.p2:ssm_create_resource_data_sync]{create_resource_data_sync} \tab A resource data sync helps you view data from multiple sources in a single location\cr
#'  \link[paws.management.p2:ssm_delete_activation]{delete_activation} \tab Deletes an activation\cr
#'  \link[paws.management.p2:ssm_delete_association]{delete_association} \tab Disassociates the specified Amazon Web Services Systems Manager document (SSM document) from the specified managed node\cr
#'  \link[paws.management.p2:ssm_delete_document]{delete_document} \tab Deletes the Amazon Web Services Systems Manager document (SSM document) and all managed node associations to the document\cr
#'  \link[paws.management.p2:ssm_delete_inventory]{delete_inventory} \tab Delete a custom inventory type or the data associated with a custom Inventory type\cr
#'  \link[paws.management.p2:ssm_delete_maintenance_window]{delete_maintenance_window} \tab Deletes a maintenance window\cr
#'  \link[paws.management.p2:ssm_delete_ops_metadata]{delete_ops_metadata} \tab Delete OpsMetadata related to an application\cr
#'  \link[paws.management.p2:ssm_delete_parameter]{delete_parameter} \tab Delete a parameter from the system\cr
#'  \link[paws.management.p2:ssm_delete_parameters]{delete_parameters} \tab Delete a list of parameters\cr
#'  \link[paws.management.p2:ssm_delete_patch_baseline]{delete_patch_baseline} \tab Deletes a patch baseline\cr
#'  \link[paws.management.p2:ssm_delete_resource_data_sync]{delete_resource_data_sync} \tab Deletes a resource data sync configuration\cr
#'  \link[paws.management.p2:ssm_deregister_managed_instance]{deregister_managed_instance} \tab Removes the server or virtual machine from the list of registered servers\cr
#'  \link[paws.management.p2:ssm_deregister_patch_baseline_for_patch_group]{deregister_patch_baseline_for_patch_group} \tab Removes a patch group from a patch baseline\cr
#'  \link[paws.management.p2:ssm_deregister_target_from_maintenance_window]{deregister_target_from_maintenance_window} \tab Removes a target from a maintenance window\cr
#'  \link[paws.management.p2:ssm_deregister_task_from_maintenance_window]{deregister_task_from_maintenance_window} \tab Removes a task from a maintenance window\cr
#'  \link[paws.management.p2:ssm_describe_activations]{describe_activations} \tab Describes details about the activation, such as the date and time the activation was created, its expiration date, the Identity and Access Management (IAM) role assigned to the managed nodes in the activation, and the number of nodes registered by using this activation\cr
#'  \link[paws.management.p2:ssm_describe_association]{describe_association} \tab Describes the association for the specified target or managed node\cr
#'  \link[paws.management.p2:ssm_describe_association_executions]{describe_association_executions} \tab Views all executions for a specific association ID\cr
#'  \link[paws.management.p2:ssm_describe_association_execution_targets]{describe_association_execution_targets} \tab Views information about a specific execution of a specific association\cr
#'  \link[paws.management.p2:ssm_describe_automation_executions]{describe_automation_executions} \tab Provides details about all active and terminated Automation executions\cr
#'  \link[paws.management.p2:ssm_describe_automation_step_executions]{describe_automation_step_executions} \tab Information about all active and terminated step executions in an Automation workflow\cr
#'  \link[paws.management.p2:ssm_describe_available_patches]{describe_available_patches} \tab Lists all patches eligible to be included in a patch baseline\cr
#'  \link[paws.management.p2:ssm_describe_document]{describe_document} \tab Describes the specified Amazon Web Services Systems Manager document (SSM document)\cr
#'  \link[paws.management.p2:ssm_describe_document_permission]{describe_document_permission} \tab Describes the permissions for a Amazon Web Services Systems Manager document (SSM document)\cr
#'  \link[paws.management.p2:ssm_describe_effective_instance_associations]{describe_effective_instance_associations} \tab All associations for the managed node(s)\cr
#'  \link[paws.management.p2:ssm_describe_effective_patches_for_patch_baseline]{describe_effective_patches_for_patch_baseline} \tab Retrieves the current effective patches (the patch and the approval state) for the specified patch baseline\cr
#'  \link[paws.management.p2:ssm_describe_instance_associations_status]{describe_instance_associations_status} \tab The status of the associations for the managed node(s)\cr
#'  \link[paws.management.p2:ssm_describe_instance_information]{describe_instance_information} \tab Describes one or more of your managed nodes, including information about the operating system platform, the version of SSM Agent installed on the managed node, node status, and so on\cr
#'  \link[paws.management.p2:ssm_describe_instance_patches]{describe_instance_patches} \tab Retrieves information about the patches on the specified managed node and their state relative to the patch baseline being used for the node\cr
#'  \link[paws.management.p2:ssm_describe_instance_patch_states]{describe_instance_patch_states} \tab Retrieves the high-level patch state of one or more managed nodes\cr
#'  \link[paws.management.p2:ssm_describe_instance_patch_states_for_patch_group]{describe_instance_patch_states_for_patch_group} \tab Retrieves the high-level patch state for the managed nodes in the specified patch group\cr
#'  \link[paws.management.p2:ssm_describe_inventory_deletions]{describe_inventory_deletions} \tab Describes a specific delete inventory operation\cr
#'  \link[paws.management.p2:ssm_describe_maintenance_window_executions]{describe_maintenance_window_executions} \tab Lists the executions of a maintenance window\cr
#'  \link[paws.management.p2:ssm_describe_maintenance_window_execution_task_invocations]{describe_maintenance_window_execution_task_invocations} \tab Retrieves the individual task executions (one per target) for a particular task run as part of a maintenance window execution\cr
#'  \link[paws.management.p2:ssm_describe_maintenance_window_execution_tasks]{describe_maintenance_window_execution_tasks} \tab For a given maintenance window execution, lists the tasks that were run\cr
#'  \link[paws.management.p2:ssm_describe_maintenance_windows]{describe_maintenance_windows} \tab Retrieves the maintenance windows in an Amazon Web Services account\cr
#'  \link[paws.management.p2:ssm_describe_maintenance_window_schedule]{describe_maintenance_window_schedule} \tab Retrieves information about upcoming executions of a maintenance window\cr
#'  \link[paws.management.p2:ssm_describe_maintenance_windows_for_target]{describe_maintenance_windows_for_target} \tab Retrieves information about the maintenance window targets or tasks that a managed node is associated with\cr
#'  \link[paws.management.p2:ssm_describe_maintenance_window_targets]{describe_maintenance_window_targets} \tab Lists the targets registered with the maintenance window\cr
#'  \link[paws.management.p2:ssm_describe_maintenance_window_tasks]{describe_maintenance_window_tasks} \tab Lists the tasks in a maintenance window\cr
#'  \link[paws.management.p2:ssm_describe_ops_items]{describe_ops_items} \tab Query a set of OpsItems\cr
#'  \link[paws.management.p2:ssm_describe_parameters]{describe_parameters} \tab Get information about a parameter\cr
#'  \link[paws.management.p2:ssm_describe_patch_baselines]{describe_patch_baselines} \tab Lists the patch baselines in your Amazon Web Services account\cr
#'  \link[paws.management.p2:ssm_describe_patch_groups]{describe_patch_groups} \tab Lists all patch groups that have been registered with patch baselines\cr
#'  \link[paws.management.p2:ssm_describe_patch_group_state]{describe_patch_group_state} \tab Returns high-level aggregated patch compliance state information for a patch group\cr
#'  \link[paws.management.p2:ssm_describe_patch_properties]{describe_patch_properties} \tab Lists the properties of available patches organized by product, product family, classification, severity, and other properties of available patches\cr
#'  \link[paws.management.p2:ssm_describe_sessions]{describe_sessions} \tab Retrieves a list of all active sessions (both connected and disconnected) or terminated sessions from the past 30 days\cr
#'  \link[paws.management.p2:ssm_disassociate_ops_item_related_item]{disassociate_ops_item_related_item} \tab Deletes the association between an OpsItem and a related item\cr
#'  \link[paws.management.p2:ssm_get_automation_execution]{get_automation_execution} \tab Get detailed information about a particular Automation execution\cr
#'  \link[paws.management.p2:ssm_get_calendar_state]{get_calendar_state} \tab Gets the state of a Amazon Web Services Systems Manager change calendar at the current time or a specified time\cr
#'  \link[paws.management.p2:ssm_get_command_invocation]{get_command_invocation} \tab Returns detailed information about command execution for an invocation or plugin\cr
#'  \link[paws.management.p2:ssm_get_connection_status]{get_connection_status} \tab Retrieves the Session Manager connection status for a managed node to determine whether it is running and ready to receive Session Manager connections\cr
#'  \link[paws.management.p2:ssm_get_default_patch_baseline]{get_default_patch_baseline} \tab Retrieves the default patch baseline\cr
#'  \link[paws.management.p2:ssm_get_deployable_patch_snapshot_for_instance]{get_deployable_patch_snapshot_for_instance} \tab Retrieves the current snapshot for the patch baseline the managed node uses\cr
#'  \link[paws.management.p2:ssm_get_document]{get_document} \tab Gets the contents of the specified Amazon Web Services Systems Manager document (SSM document)\cr
#'  \link[paws.management.p2:ssm_get_inventory]{get_inventory} \tab Query inventory information\cr
#'  \link[paws.management.p2:ssm_get_inventory_schema]{get_inventory_schema} \tab Return a list of inventory type names for the account, or return a list of attribute names for a specific Inventory item type\cr
#'  \link[paws.management.p2:ssm_get_maintenance_window]{get_maintenance_window} \tab Retrieves a maintenance window\cr
#'  \link[paws.management.p2:ssm_get_maintenance_window_execution]{get_maintenance_window_execution} \tab Retrieves details about a specific a maintenance window execution\cr
#'  \link[paws.management.p2:ssm_get_maintenance_window_execution_task]{get_maintenance_window_execution_task} \tab Retrieves the details about a specific task run as part of a maintenance window execution\cr
#'  \link[paws.management.p2:ssm_get_maintenance_window_execution_task_invocation]{get_maintenance_window_execution_task_invocation} \tab Retrieves information about a specific task running on a specific target\cr
#'  \link[paws.management.p2:ssm_get_maintenance_window_task]{get_maintenance_window_task} \tab Retrieves the details of a maintenance window task\cr
#'  \link[paws.management.p2:ssm_get_ops_item]{get_ops_item} \tab Get information about an OpsItem by using the ID\cr
#'  \link[paws.management.p2:ssm_get_ops_metadata]{get_ops_metadata} \tab View operational metadata related to an application in Application Manager\cr
#'  \link[paws.management.p2:ssm_get_ops_summary]{get_ops_summary} \tab View a summary of operations metadata (OpsData) based on specified filters and aggregators\cr
#'  \link[paws.management.p2:ssm_get_parameter]{get_parameter} \tab Get information about a single parameter by specifying the parameter name\cr
#'  \link[paws.management.p2:ssm_get_parameter_history]{get_parameter_history} \tab Retrieves the history of all changes to a parameter\cr
#'  \link[paws.management.p2:ssm_get_parameters]{get_parameters} \tab Get information about one or more parameters by specifying multiple parameter names\cr
#'  \link[paws.management.p2:ssm_get_parameters_by_path]{get_parameters_by_path} \tab Retrieve information about one or more parameters in a specific hierarchy\cr
#'  \link[paws.management.p2:ssm_get_patch_baseline]{get_patch_baseline} \tab Retrieves information about a patch baseline\cr
#'  \link[paws.management.p2:ssm_get_patch_baseline_for_patch_group]{get_patch_baseline_for_patch_group} \tab Retrieves the patch baseline that should be used for the specified patch group\cr
#'  \link[paws.management.p2:ssm_get_service_setting]{get_service_setting} \tab ServiceSetting is an account-level setting for an Amazon Web Services service\cr
#'  \link[paws.management.p2:ssm_label_parameter_version]{label_parameter_version} \tab A parameter label is a user-defined alias to help you manage different versions of a parameter\cr
#'  \link[paws.management.p2:ssm_list_associations]{list_associations} \tab Returns all State Manager associations in the current Amazon Web Services account and Amazon Web Services Region\cr
#'  \link[paws.management.p2:ssm_list_association_versions]{list_association_versions} \tab Retrieves all versions of an association for a specific association ID\cr
#'  \link[paws.management.p2:ssm_list_command_invocations]{list_command_invocations} \tab An invocation is copy of a command sent to a specific managed node\cr
#'  \link[paws.management.p2:ssm_list_commands]{list_commands} \tab Lists the commands requested by users of the Amazon Web Services account\cr
#'  \link[paws.management.p2:ssm_list_compliance_items]{list_compliance_items} \tab For a specified resource ID, this API operation returns a list of compliance statuses for different resource types\cr
#'  \link[paws.management.p2:ssm_list_compliance_summaries]{list_compliance_summaries} \tab Returns a summary count of compliant and non-compliant resources for a compliance type\cr
#'  \link[paws.management.p2:ssm_list_document_metadata_history]{list_document_metadata_history} \tab Information about approval reviews for a version of a change template in Change Manager\cr
#'  \link[paws.management.p2:ssm_list_documents]{list_documents} \tab Returns all Systems Manager (SSM) documents in the current Amazon Web Services account and Amazon Web Services Region\cr
#'  \link[paws.management.p2:ssm_list_document_versions]{list_document_versions} \tab List all versions for a document\cr
#'  \link[paws.management.p2:ssm_list_inventory_entries]{list_inventory_entries} \tab A list of inventory items returned by the request\cr
#'  \link[paws.management.p2:ssm_list_ops_item_events]{list_ops_item_events} \tab Returns a list of all OpsItem events in the current Amazon Web Services Region and Amazon Web Services account\cr
#'  \link[paws.management.p2:ssm_list_ops_item_related_items]{list_ops_item_related_items} \tab Lists all related-item resources associated with a Systems Manager OpsCenter OpsItem\cr
#'  \link[paws.management.p2:ssm_list_ops_metadata]{list_ops_metadata} \tab Amazon Web Services Systems Manager calls this API operation when displaying all Application Manager OpsMetadata objects or blobs\cr
#'  \link[paws.management.p2:ssm_list_resource_compliance_summaries]{list_resource_compliance_summaries} \tab Returns a resource-level summary count\cr
#'  \link[paws.management.p2:ssm_list_resource_data_sync]{list_resource_data_sync} \tab Lists your resource data sync configurations\cr
#'  \link[paws.management.p2:ssm_list_tags_for_resource]{list_tags_for_resource} \tab Returns a list of the tags assigned to the specified resource\cr
#'  \link[paws.management.p2:ssm_modify_document_permission]{modify_document_permission} \tab Shares a Amazon Web Services Systems Manager document (SSM document)publicly or privately\cr
#'  \link[paws.management.p2:ssm_put_compliance_items]{put_compliance_items} \tab Registers a compliance type and other compliance details on a designated resource\cr
#'  \link[paws.management.p2:ssm_put_inventory]{put_inventory} \tab Bulk update custom inventory items on one or more managed nodes\cr
#'  \link[paws.management.p2:ssm_put_parameter]{put_parameter} \tab Add a parameter to the system\cr
#'  \link[paws.management.p2:ssm_register_default_patch_baseline]{register_default_patch_baseline} \tab Defines the default patch baseline for the relevant operating system\cr
#'  \link[paws.management.p2:ssm_register_patch_baseline_for_patch_group]{register_patch_baseline_for_patch_group} \tab Registers a patch baseline for a patch group\cr
#'  \link[paws.management.p2:ssm_register_target_with_maintenance_window]{register_target_with_maintenance_window} \tab Registers a target with a maintenance window\cr
#'  \link[paws.management.p2:ssm_register_task_with_maintenance_window]{register_task_with_maintenance_window} \tab Adds a new task to a maintenance window\cr
#'  \link[paws.management.p2:ssm_remove_tags_from_resource]{remove_tags_from_resource} \tab Removes tag keys from the specified resource\cr
#'  \link[paws.management.p2:ssm_reset_service_setting]{reset_service_setting} \tab ServiceSetting is an account-level setting for an Amazon Web Services service\cr
#'  \link[paws.management.p2:ssm_resume_session]{resume_session} \tab Reconnects a session to a managed node after it has been disconnected\cr
#'  \link[paws.management.p2:ssm_send_automation_signal]{send_automation_signal} \tab Sends a signal to an Automation execution to change the current behavior or status of the execution\cr
#'  \link[paws.management.p2:ssm_send_command]{send_command} \tab Runs commands on one or more managed nodes\cr
#'  \link[paws.management.p2:ssm_start_associations_once]{start_associations_once} \tab Runs an association immediately and only one time\cr
#'  \link[paws.management.p2:ssm_start_automation_execution]{start_automation_execution} \tab Initiates execution of an Automation runbook\cr
#'  \link[paws.management.p2:ssm_start_change_request_execution]{start_change_request_execution} \tab Creates a change request for Change Manager\cr
#'  \link[paws.management.p2:ssm_start_session]{start_session} \tab Initiates a connection to a target (for example, a managed node) for a Session Manager session\cr
#'  \link[paws.management.p2:ssm_stop_automation_execution]{stop_automation_execution} \tab Stop an Automation that is currently running\cr
#'  \link[paws.management.p2:ssm_terminate_session]{terminate_session} \tab Permanently ends a session and closes the data connection between the Session Manager client and SSM Agent on the managed node\cr
#'  \link[paws.management.p2:ssm_unlabel_parameter_version]{unlabel_parameter_version} \tab Remove a label or labels from a parameter\cr
#'  \link[paws.management.p2:ssm_update_association]{update_association} \tab Updates an association\cr
#'  \link[paws.management.p2:ssm_update_association_status]{update_association_status} \tab Updates the status of the Amazon Web Services Systems Manager document (SSM document) associated with the specified managed node\cr
#'  \link[paws.management.p2:ssm_update_document]{update_document} \tab Updates one or more values for an SSM document\cr
#'  \link[paws.management.p2:ssm_update_document_default_version]{update_document_default_version} \tab Set the default version of a document\cr
#'  \link[paws.management.p2:ssm_update_document_metadata]{update_document_metadata} \tab Updates information related to approval reviews for a specific version of a change template in Change Manager\cr
#'  \link[paws.management.p2:ssm_update_maintenance_window]{update_maintenance_window} \tab Updates an existing maintenance window\cr
#'  \link[paws.management.p2:ssm_update_maintenance_window_target]{update_maintenance_window_target} \tab Modifies the target of an existing maintenance window\cr
#'  \link[paws.management.p2:ssm_update_maintenance_window_task]{update_maintenance_window_task} \tab Modifies a task assigned to a maintenance window\cr
#'  \link[paws.management.p2:ssm_update_managed_instance_role]{update_managed_instance_role} \tab Changes the Identity and Access Management (IAM) role that is assigned to the on-premises server, edge device, or virtual machines (VM)\cr
#'  \link[paws.management.p2:ssm_update_ops_item]{update_ops_item} \tab Edit or change an OpsItem\cr
#'  \link[paws.management.p2:ssm_update_ops_metadata]{update_ops_metadata} \tab Amazon Web Services Systems Manager calls this API operation when you edit OpsMetadata in Application Manager\cr
#'  \link[paws.management.p2:ssm_update_patch_baseline]{update_patch_baseline} \tab Modifies an existing patch baseline\cr
#'  \link[paws.management.p2:ssm_update_resource_data_sync]{update_resource_data_sync} \tab Update a resource data sync\cr
#'  \link[paws.management.p2:ssm_update_service_setting]{update_service_setting} \tab ServiceSetting is an account-level setting for an Amazon Web Services service
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname ssm
#' @export
ssm <- function(config = list()) {
  paws.management.p2::ssm(config)
}

#' AWS Systems Manager Incident Manager Contacts
#'
#' @description
#' Systems Manager Incident Manager is an incident management console
#' designed to help users mitigate and recover from incidents affecting
#' their Amazon Web Services-hosted applications. An incident is any
#' unplanned interruption or reduction in quality of services.
#' 
#' Incident Manager increases incident resolution by notifying responders
#' of impact, highlighting relevant troubleshooting data, and providing
#' collaboration tools to get services back up and running. To achieve the
#' primary goal of reducing the time-to-resolution of critical incidents,
#' Incident Manager automates response plans and enables responder team
#' escalation.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- ssmcontacts(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- ssmcontacts()
#' # The following accept-page operation uses an accept code sent to the
#' # contact channel to accept a page.
#' svc$accept_page(
#'   AcceptCode = "425440",
#'   AcceptType = "READ",
#'   PageId = "arn:aws:ssm-contacts:us-east-2:682428703967:page/akuam/94ea0c7b..."
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p2:ssmcontacts_accept_page]{accept_page} \tab Used to acknowledge an engagement to a contact channel during an incident\cr
#'  \link[paws.management.p2:ssmcontacts_activate_contact_channel]{activate_contact_channel} \tab Activates a contact's contact channel\cr
#'  \link[paws.management.p2:ssmcontacts_create_contact]{create_contact} \tab Contacts are either the contacts that Incident Manager engages during an incident or the escalation plans that Incident Manager uses to engage contacts in phases during an incident\cr
#'  \link[paws.management.p2:ssmcontacts_create_contact_channel]{create_contact_channel} \tab A contact channel is the method that Incident Manager uses to engage your contact\cr
#'  \link[paws.management.p2:ssmcontacts_deactivate_contact_channel]{deactivate_contact_channel} \tab To no longer receive Incident Manager engagements to a contact channel, you can deactivate the channel\cr
#'  \link[paws.management.p2:ssmcontacts_delete_contact]{delete_contact} \tab To remove a contact from Incident Manager, you can delete the contact\cr
#'  \link[paws.management.p2:ssmcontacts_delete_contact_channel]{delete_contact_channel} \tab To no longer receive engagements on a contact channel, you can delete the channel from a contact\cr
#'  \link[paws.management.p2:ssmcontacts_describe_engagement]{describe_engagement} \tab Incident Manager uses engagements to engage contacts and escalation plans during an incident\cr
#'  \link[paws.management.p2:ssmcontacts_describe_page]{describe_page} \tab Lists details of the engagement to a contact channel\cr
#'  \link[paws.management.p2:ssmcontacts_get_contact]{get_contact} \tab Retrieves information about the specified contact or escalation plan\cr
#'  \link[paws.management.p2:ssmcontacts_get_contact_channel]{get_contact_channel} \tab List details about a specific contact channel\cr
#'  \link[paws.management.p2:ssmcontacts_get_contact_policy]{get_contact_policy} \tab Retrieves the resource policies attached to the specified contact or escalation plan\cr
#'  \link[paws.management.p2:ssmcontacts_list_contact_channels]{list_contact_channels} \tab Lists all contact channels for the specified contact\cr
#'  \link[paws.management.p2:ssmcontacts_list_contacts]{list_contacts} \tab Lists all contacts and escalation plans in Incident Manager\cr
#'  \link[paws.management.p2:ssmcontacts_list_engagements]{list_engagements} \tab Lists all engagements that have happened in an incident\cr
#'  \link[paws.management.p2:ssmcontacts_list_page_receipts]{list_page_receipts} \tab Lists all of the engagements to contact channels that have been acknowledged\cr
#'  \link[paws.management.p2:ssmcontacts_list_pages_by_contact]{list_pages_by_contact} \tab Lists the engagements to a contact's contact channels\cr
#'  \link[paws.management.p2:ssmcontacts_list_pages_by_engagement]{list_pages_by_engagement} \tab Lists the engagements to contact channels that occurred by engaging a contact\cr
#'  \link[paws.management.p2:ssmcontacts_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags of an escalation plan or contact\cr
#'  \link[paws.management.p2:ssmcontacts_put_contact_policy]{put_contact_policy} \tab Adds a resource policy to the specified contact or escalation plan\cr
#'  \link[paws.management.p2:ssmcontacts_send_activation_code]{send_activation_code} \tab Sends an activation code to a contact channel\cr
#'  \link[paws.management.p2:ssmcontacts_start_engagement]{start_engagement} \tab Starts an engagement to a contact or escalation plan\cr
#'  \link[paws.management.p2:ssmcontacts_stop_engagement]{stop_engagement} \tab Stops an engagement before it finishes the final stage of the escalation plan or engagement plan\cr
#'  \link[paws.management.p2:ssmcontacts_tag_resource]{tag_resource} \tab Tags a contact or escalation plan\cr
#'  \link[paws.management.p2:ssmcontacts_untag_resource]{untag_resource} \tab Removes tags from the specified resource\cr
#'  \link[paws.management.p2:ssmcontacts_update_contact]{update_contact} \tab Updates the contact or escalation plan specified\cr
#'  \link[paws.management.p2:ssmcontacts_update_contact_channel]{update_contact_channel} \tab Updates a contact's contact channel
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname ssmcontacts
#' @export
ssmcontacts <- function(config = list()) {
  paws.management.p2::ssmcontacts(config)
}

#' AWS Systems Manager Incident Manager
#'
#' @description
#' Systems Manager Incident Manager is an incident management console
#' designed to help users mitigate and recover from incidents affecting
#' their Amazon Web Services-hosted applications. An incident is any
#' unplanned interruption or reduction in quality of services.
#' 
#' Incident Manager increases incident resolution by notifying responders
#' of impact, highlighting relevant troubleshooting data, and providing
#' collaboration tools to get services back up and running. To achieve the
#' primary goal of reducing the time-to-resolution of critical incidents,
#' Incident Manager automates response plans and enables responder team
#' escalation.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- ssmincidents(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- ssmincidents()
#' svc$create_replication_set(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p2:ssmincidents_create_replication_set]{create_replication_set} \tab A replication set replicates and encrypts your data to the provided Regions with the provided KMS key\cr
#'  \link[paws.management.p2:ssmincidents_create_response_plan]{create_response_plan} \tab Creates a response plan that automates the initial response to incidents\cr
#'  \link[paws.management.p2:ssmincidents_create_timeline_event]{create_timeline_event} \tab Creates a custom timeline event on the incident details page of an incident record\cr
#'  \link[paws.management.p2:ssmincidents_delete_incident_record]{delete_incident_record} \tab Delete an incident record from Incident Manager\cr
#'  \link[paws.management.p2:ssmincidents_delete_replication_set]{delete_replication_set} \tab Deletes all Regions in your replication set\cr
#'  \link[paws.management.p2:ssmincidents_delete_resource_policy]{delete_resource_policy} \tab Deletes the resource policy that Resource Access Manager uses to share your Incident Manager resource\cr
#'  \link[paws.management.p2:ssmincidents_delete_response_plan]{delete_response_plan} \tab Deletes the specified response plan\cr
#'  \link[paws.management.p2:ssmincidents_delete_timeline_event]{delete_timeline_event} \tab Deletes a timeline event from an incident\cr
#'  \link[paws.management.p2:ssmincidents_get_incident_record]{get_incident_record} \tab Returns the details for the specified incident record\cr
#'  \link[paws.management.p2:ssmincidents_get_replication_set]{get_replication_set} \tab Retrieve your Incident Manager replication set\cr
#'  \link[paws.management.p2:ssmincidents_get_resource_policies]{get_resource_policies} \tab Retrieves the resource policies attached to the specified response plan\cr
#'  \link[paws.management.p2:ssmincidents_get_response_plan]{get_response_plan} \tab Retrieves the details of the specified response plan\cr
#'  \link[paws.management.p2:ssmincidents_get_timeline_event]{get_timeline_event} \tab Retrieves a timeline event based on its ID and incident record\cr
#'  \link[paws.management.p2:ssmincidents_list_incident_records]{list_incident_records} \tab Lists all incident records in your account\cr
#'  \link[paws.management.p2:ssmincidents_list_related_items]{list_related_items} \tab List all related items for an incident record\cr
#'  \link[paws.management.p2:ssmincidents_list_replication_sets]{list_replication_sets} \tab Lists details about the replication set configured in your account\cr
#'  \link[paws.management.p2:ssmincidents_list_response_plans]{list_response_plans} \tab Lists all response plans in your account\cr
#'  \link[paws.management.p2:ssmincidents_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags that are attached to the specified response plan\cr
#'  \link[paws.management.p2:ssmincidents_list_timeline_events]{list_timeline_events} \tab Lists timeline events for the specified incident record\cr
#'  \link[paws.management.p2:ssmincidents_put_resource_policy]{put_resource_policy} \tab Adds a resource policy to the specified response plan\cr
#'  \link[paws.management.p2:ssmincidents_start_incident]{start_incident} \tab Used to start an incident from CloudWatch alarms, EventBridge events, or manually\cr
#'  \link[paws.management.p2:ssmincidents_tag_resource]{tag_resource} \tab Adds a tag to a response plan\cr
#'  \link[paws.management.p2:ssmincidents_untag_resource]{untag_resource} \tab Removes a tag from a resource\cr
#'  \link[paws.management.p2:ssmincidents_update_deletion_protection]{update_deletion_protection} \tab Update deletion protection to either allow or deny deletion of the final Region in a replication set\cr
#'  \link[paws.management.p2:ssmincidents_update_incident_record]{update_incident_record} \tab Update the details of an incident record\cr
#'  \link[paws.management.p2:ssmincidents_update_related_items]{update_related_items} \tab Add or remove related items from the related items tab of an incident record\cr
#'  \link[paws.management.p2:ssmincidents_update_replication_set]{update_replication_set} \tab Add or delete Regions from your replication set\cr
#'  \link[paws.management.p2:ssmincidents_update_response_plan]{update_response_plan} \tab Updates the specified response plan\cr
#'  \link[paws.management.p2:ssmincidents_update_timeline_event]{update_timeline_event} \tab Updates a timeline event
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname ssmincidents
#' @export
ssmincidents <- function(config = list()) {
  paws.management.p2::ssmincidents(config)
}

#' AWS Support
#'
#' @description
#' Amazon Web Services Support
#' 
#' The *Amazon Web Services Support API Reference* is intended for
#' programmers who need detailed information about the Amazon Web Services
#' Support operations and data types. You can use the API to manage your
#' support cases programmatically. The Amazon Web Services Support API uses
#' HTTP methods that return results in JSON format.
#' 
#' -   You must have a Business, Enterprise On-Ramp, or Enterprise Support
#'     plan to use the Amazon Web Services Support API.
#' 
#' -   If you call the Amazon Web Services Support API from an account that
#'     does not have a Business, Enterprise On-Ramp, or Enterprise Support
#'     plan, the `SubscriptionRequiredException` error message appears. For
#'     information about changing your support plan, see [Amazon Web
#'     Services Support](https://aws.amazon.com/premiumsupport/).
#' 
#' The Amazon Web Services Support service also exposes a set of [Trusted
#' Advisor](https://aws.amazon.com/premiumsupport/technology/trusted-advisor/)
#' features. You can retrieve a list of checks and their descriptions, get
#' check results, specify checks to refresh, and get the refresh status of
#' checks.
#' 
#' The following list describes the Amazon Web Services Support case
#' management operations:
#' 
#' -   Service names, issue categories, and available severity levels - The
#'     `describe_services` and
#'     `describe_severity_levels`
#'     operations return Amazon Web Services service names, service codes,
#'     service categories, and problem severity levels. You use these
#'     values when you call the `create_case`
#'     operation.
#' 
#' -   Case creation, case details, and case resolution - The
#'     `create_case`,
#'     `describe_cases`,
#'     `describe_attachment`, and
#'     `resolve_case` operations create Amazon Web
#'     Services Support cases, retrieve information about cases, and
#'     resolve cases.
#' 
#' -   Case communication - The
#'     `describe_communications`,
#'     `add_communication_to_case`,
#'     and `add_attachments_to_set`
#'     operations retrieve and add communications and attachments to Amazon
#'     Web Services Support cases.
#' 
#' The following list describes the operations available from the Amazon
#' Web Services Support service for Trusted Advisor:
#' 
#' -   `describe_trusted_advisor_checks`
#'     returns the list of checks that run against your Amazon Web Services
#'     resources.
#' 
#' -   Using the `checkId` for a specific check returned by
#'     `describe_trusted_advisor_checks`,
#'     you can call
#'     `describe_trusted_advisor_check_result`
#'     to obtain the results for the check that you specified.
#' 
#' -   `describe_trusted_advisor_check_summaries`
#'     returns summarized results for one or more Trusted Advisor checks.
#' 
#' -   `refresh_trusted_advisor_check`
#'     requests that Trusted Advisor rerun a specified check.
#' 
#' -   `describe_trusted_advisor_check_refresh_statuses`
#'     reports the refresh status of one or more checks.
#' 
#' For authentication of requests, Amazon Web Services Support uses
#' [Signature Version 4 Signing
#' Process](https://docs.aws.amazon.com/general/latest/gr/signing-aws-api-requests.html).
#' 
#' See [About the Amazon Web Services Support
#' API](https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html)
#' in the *Amazon Web Services Support User Guide* for information about
#' how to use this service to create and manage your support cases, and how
#' to call Trusted Advisor for results of checks on your resources.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- support(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- support()
#' svc$add_attachments_to_set(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p2:support_add_attachments_to_set]{add_attachments_to_set} \tab Adds one or more attachments to an attachment set\cr
#'  \link[paws.management.p2:support_add_communication_to_case]{add_communication_to_case} \tab Adds additional customer communication to an Amazon Web Services Support case\cr
#'  \link[paws.management.p2:support_create_case]{create_case} \tab Creates a case in the Amazon Web Services Support Center\cr
#'  \link[paws.management.p2:support_describe_attachment]{describe_attachment} \tab Returns the attachment that has the specified ID\cr
#'  \link[paws.management.p2:support_describe_cases]{describe_cases} \tab Returns a list of cases that you specify by passing one or more case IDs\cr
#'  \link[paws.management.p2:support_describe_communications]{describe_communications} \tab Returns communications and attachments for one or more support cases\cr
#'  \link[paws.management.p2:support_describe_services]{describe_services} \tab Returns the current list of Amazon Web Services services and a list of service categories for each service\cr
#'  \link[paws.management.p2:support_describe_severity_levels]{describe_severity_levels} \tab Returns the list of severity levels that you can assign to a support case\cr
#'  \link[paws.management.p2:support_describe_trusted_advisor_check_refresh_statuses]{describe_trusted_advisor_check_refresh_statuses} \tab Returns the refresh status of the Trusted Advisor checks that have the specified check IDs\cr
#'  \link[paws.management.p2:support_describe_trusted_advisor_check_result]{describe_trusted_advisor_check_result} \tab Returns the results of the Trusted Advisor check that has the specified check ID\cr
#'  \link[paws.management.p2:support_describe_trusted_advisor_checks]{describe_trusted_advisor_checks} \tab Returns information about all available Trusted Advisor checks, including the name, ID, category, description, and metadata\cr
#'  \link[paws.management.p2:support_describe_trusted_advisor_check_summaries]{describe_trusted_advisor_check_summaries} \tab Returns the results for the Trusted Advisor check summaries for the check IDs that you specified\cr
#'  \link[paws.management.p2:support_refresh_trusted_advisor_check]{refresh_trusted_advisor_check} \tab Refreshes the Trusted Advisor check that you specify using the check ID\cr
#'  \link[paws.management.p2:support_resolve_case]{resolve_case} \tab Resolves a support case
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname support
#' @export
support <- function(config = list()) {
  paws.management.p2::support(config)
}

#' Synthetics
#'
#' @description
#' Amazon CloudWatch Synthetics
#' 
#' You can use Amazon CloudWatch Synthetics to continually monitor your
#' services. You can create and manage *canaries*, which are modular,
#' lightweight scripts that monitor your endpoints and APIs from the
#' outside-in. You can set up your canaries to run 24 hours a day, once per
#' minute. The canaries help you check the availability and latency of your
#' web services and troubleshoot anomalies by investigating load time data,
#' screenshots of the UI, logs, and metrics. The canaries seamlessly
#' integrate with CloudWatch ServiceLens to help you trace the causes of
#' impacted nodes in your applications. For more information, see [Using
#' ServiceLens to Monitor the Health of Your
#' Applications](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ServiceLens.html)
#' in the *Amazon CloudWatch User Guide*.
#' 
#' Before you create and manage canaries, be aware of the security
#' considerations. For more information, see [Security Considerations for
#' Synthetics
#' Canaries](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- synthetics(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- synthetics()
#' svc$associate_resource(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.management.p2:synthetics_associate_resource]{associate_resource} \tab Associates a canary with a group\cr
#'  \link[paws.management.p2:synthetics_create_canary]{create_canary} \tab Creates a canary\cr
#'  \link[paws.management.p2:synthetics_create_group]{create_group} \tab Creates a group which you can use to associate canaries with each other, including cross-Region canaries\cr
#'  \link[paws.management.p2:synthetics_delete_canary]{delete_canary} \tab Permanently deletes the specified canary\cr
#'  \link[paws.management.p2:synthetics_delete_group]{delete_group} \tab Deletes a group\cr
#'  \link[paws.management.p2:synthetics_describe_canaries]{describe_canaries} \tab This operation returns a list of the canaries in your account, along with full details about each canary\cr
#'  \link[paws.management.p2:synthetics_describe_canaries_last_run]{describe_canaries_last_run} \tab Use this operation to see information from the most recent run of each canary that you have created\cr
#'  \link[paws.management.p2:synthetics_describe_runtime_versions]{describe_runtime_versions} \tab Returns a list of Synthetics canary runtime versions\cr
#'  \link[paws.management.p2:synthetics_disassociate_resource]{disassociate_resource} \tab Removes a canary from a group\cr
#'  \link[paws.management.p2:synthetics_get_canary]{get_canary} \tab Retrieves complete information about one canary\cr
#'  \link[paws.management.p2:synthetics_get_canary_runs]{get_canary_runs} \tab Retrieves a list of runs for a specified canary\cr
#'  \link[paws.management.p2:synthetics_get_group]{get_group} \tab Returns information about one group\cr
#'  \link[paws.management.p2:synthetics_list_associated_groups]{list_associated_groups} \tab Returns a list of the groups that the specified canary is associated with\cr
#'  \link[paws.management.p2:synthetics_list_group_resources]{list_group_resources} \tab This operation returns a list of the ARNs of the canaries that are associated with the specified group\cr
#'  \link[paws.management.p2:synthetics_list_groups]{list_groups} \tab Returns a list of all groups in the account, displaying their names, unique IDs, and ARNs\cr
#'  \link[paws.management.p2:synthetics_list_tags_for_resource]{list_tags_for_resource} \tab Displays the tags associated with a canary or group\cr
#'  \link[paws.management.p2:synthetics_start_canary]{start_canary} \tab Use this operation to run a canary that has already been created\cr
#'  \link[paws.management.p2:synthetics_stop_canary]{stop_canary} \tab Stops the canary to prevent all future runs\cr
#'  \link[paws.management.p2:synthetics_tag_resource]{tag_resource} \tab Assigns one or more tags (key-value pairs) to the specified canary or group\cr
#'  \link[paws.management.p2:synthetics_untag_resource]{untag_resource} \tab Removes one or more tags from the specified resource\cr
#'  \link[paws.management.p2:synthetics_update_canary]{update_canary} \tab Updates the configuration of a canary that has already been created
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname synthetics
#' @export
synthetics <- function(config = list()) {
  paws.management.p2::synthetics(config)
}
