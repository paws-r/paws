% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ecs_operations.R
\name{ecs_update_service}
\alias{ecs_update_service}
\title{Updating the task placement strategies and constraints on an Amazon ECS
service remains in preview and is a Beta Service as defined by and
subject to the Beta Service Participation Service Terms located at
https://aws}
\usage{
ecs_update_service(cluster, service, desiredCount, taskDefinition,
  capacityProviderStrategy, deploymentConfiguration, networkConfiguration,
  placementConstraints, placementStrategy, platformVersion,
  forceNewDeployment, healthCheckGracePeriodSeconds)
}
\arguments{
\item{cluster}{The short name or full Amazon Resource Name (ARN) of the cluster that
your service is running on. If you do not specify a cluster, the default
cluster is assumed.}

\item{service}{[required] The name of the service to update.}

\item{desiredCount}{The number of instantiations of the task to place and keep running in
your service.}

\item{taskDefinition}{The \code{family} and \code{revision} (\code{family:revision}) or full ARN of the task
definition to run in your service. If a \code{revision} is not specified, the
latest \code{ACTIVE} revision is used. If you modify the task definition with
\code{\link[=ecs_update_service]{update_service}}, Amazon ECS spawns a task with
the new version of the task definition and then stops an old task after
the new version is running.}

\item{capacityProviderStrategy}{The capacity provider strategy to update the service to use.

If the service is using the default capacity provider strategy for the
cluster, the service can be updated to use one or more capacity
providers as opposed to the default capacity provider strategy. However,
when a service is using a capacity provider strategy that is not the
default capacity provider strategy, the service cannot be updated to use
the cluster's default capacity provider strategy.

A capacity provider strategy consists of one or more capacity providers
along with the \code{base} and \code{weight} to assign to them. A capacity
provider must be associated with the cluster to be used in a capacity
provider strategy. The
\code{\link[=ecs_put_cluster_capacity_providers]{put_cluster_capacity_providers}}
API is used to associate a capacity provider with a cluster. Only
capacity providers with an \code{ACTIVE} or \code{UPDATING} status can be used.

If specifying a capacity provider that uses an Auto Scaling group, the
capacity provider must already be created. New capacity providers can be
created with the
\code{\link[=ecs_create_capacity_provider]{create_capacity_provider}} API
operation.

To use a AWS Fargate capacity provider, specify either the \code{FARGATE} or
\code{FARGATE_SPOT} capacity providers. The AWS Fargate capacity providers
are available to all accounts and only need to be associated with a
cluster to be used.

The
\code{\link[=ecs_put_cluster_capacity_providers]{put_cluster_capacity_providers}}
API operation is used to update the list of available capacity providers
for a cluster after the cluster is created.}

\item{deploymentConfiguration}{Optional deployment parameters that control how many tasks run during
the deployment and the ordering of stopping and starting tasks.}

\item{networkConfiguration}{}

\item{placementConstraints}{An array of task placement constraint objects to update the service to
use. If no value is specified, the existing placement constraints for
the service will remain unchanged. If this value is specified, it will
override any existing placement constraints defined for the service. To
remove all existing placement constraints, specify an empty array.

You can specify a maximum of 10 constraints per task (this limit
includes constraints in the task definition and those specified at
runtime).}

\item{placementStrategy}{The task placement strategy objects to update the service to use. If no
value is specified, the existing placement strategy for the service will
remain unchanged. If this value is specified, it will override the
existing placement strategy defined for the service. To remove an
existing placement strategy, specify an empty object.

You can specify a maximum of five strategy rules per service.}

\item{platformVersion}{The platform version on which your tasks in the service are running. A
platform version is only specified for tasks using the Fargate launch
type. If a platform version is not specified, the \code{LATEST} platform
version is used by default. For more information, see \href{https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html}{AWS Fargate Platform Versions}
in the \emph{Amazon Elastic Container Service Developer Guide}.}

\item{forceNewDeployment}{Whether to force a new deployment of the service. Deployments are not
forced by default. You can use this option to trigger a new deployment
with no service definition changes. For example, you can update a
service's tasks to use a newer Docker image with the same image/tag
combination (\code{my_image:latest}) or to roll Fargate tasks onto a newer
platform version.}

\item{healthCheckGracePeriodSeconds}{The period of time, in seconds, that the Amazon ECS service scheduler
should ignore unhealthy Elastic Load Balancing target health checks
after a task has first started. This is only valid if your service is
configured to use a load balancer. If your service's tasks take a while
to start and respond to Elastic Load Balancing health checks, you can
specify a health check grace period of up to 2,147,483,647 seconds.
During that time, the Amazon ECS service scheduler ignores the Elastic
Load Balancing health check status. This grace period can prevent the
ECS service scheduler from marking tasks as unhealthy and stopping them
before they have time to come up.}
}
\value{
A list with the following syntax:\preformatted{list(
  service = list(
    serviceArn = "string",
    serviceName = "string",
    clusterArn = "string",
    loadBalancers = list(
      list(
        targetGroupArn = "string",
        loadBalancerName = "string",
        containerName = "string",
        containerPort = 123
      )
    ),
    serviceRegistries = list(
      list(
        registryArn = "string",
        port = 123,
        containerName = "string",
        containerPort = 123
      )
    ),
    status = "string",
    desiredCount = 123,
    runningCount = 123,
    pendingCount = 123,
    launchType = "EC2"|"FARGATE",
    capacityProviderStrategy = list(
      list(
        capacityProvider = "string",
        weight = 123,
        base = 123
      )
    ),
    platformVersion = "string",
    taskDefinition = "string",
    deploymentConfiguration = list(
      deploymentCircuitBreaker = list(
        enable = TRUE|FALSE,
        rollback = TRUE|FALSE
      ),
      maximumPercent = 123,
      minimumHealthyPercent = 123
    ),
    taskSets = list(
      list(
        id = "string",
        taskSetArn = "string",
        serviceArn = "string",
        clusterArn = "string",
        startedBy = "string",
        externalId = "string",
        status = "string",
        taskDefinition = "string",
        computedDesiredCount = 123,
        pendingCount = 123,
        runningCount = 123,
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        updatedAt = as.POSIXct(
          "2015-01-01"
        ),
        launchType = "EC2"|"FARGATE",
        capacityProviderStrategy = list(
          list(
            capacityProvider = "string",
            weight = 123,
            base = 123
          )
        ),
        platformVersion = "string",
        networkConfiguration = list(
          awsvpcConfiguration = list(
            subnets = list(
              "string"
            ),
            securityGroups = list(
              "string"
            ),
            assignPublicIp = "ENABLED"|"DISABLED"
          )
        ),
        loadBalancers = list(
          list(
            targetGroupArn = "string",
            loadBalancerName = "string",
            containerName = "string",
            containerPort = 123
          )
        ),
        serviceRegistries = list(
          list(
            registryArn = "string",
            port = 123,
            containerName = "string",
            containerPort = 123
          )
        ),
        scale = list(
          value = 123.0,
          unit = "PERCENT"
        ),
        stabilityStatus = "STEADY_STATE"|"STABILIZING",
        stabilityStatusAt = as.POSIXct(
          "2015-01-01"
        ),
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        )
      )
    ),
    deployments = list(
      list(
        id = "string",
        status = "string",
        taskDefinition = "string",
        desiredCount = 123,
        pendingCount = 123,
        runningCount = 123,
        failedTasks = 123,
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        updatedAt = as.POSIXct(
          "2015-01-01"
        ),
        capacityProviderStrategy = list(
          list(
            capacityProvider = "string",
            weight = 123,
            base = 123
          )
        ),
        launchType = "EC2"|"FARGATE",
        platformVersion = "string",
        networkConfiguration = list(
          awsvpcConfiguration = list(
            subnets = list(
              "string"
            ),
            securityGroups = list(
              "string"
            ),
            assignPublicIp = "ENABLED"|"DISABLED"
          )
        ),
        rolloutState = "COMPLETED"|"FAILED"|"IN_PROGRESS",
        rolloutStateReason = "string"
      )
    ),
    roleArn = "string",
    events = list(
      list(
        id = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        message = "string"
      )
    ),
    createdAt = as.POSIXct(
      "2015-01-01"
    ),
    placementConstraints = list(
      list(
        type = "distinctInstance"|"memberOf",
        expression = "string"
      )
    ),
    placementStrategy = list(
      list(
        type = "random"|"spread"|"binpack",
        field = "string"
      )
    ),
    networkConfiguration = list(
      awsvpcConfiguration = list(
        subnets = list(
          "string"
        ),
        securityGroups = list(
          "string"
        ),
        assignPublicIp = "ENABLED"|"DISABLED"
      )
    ),
    healthCheckGracePeriodSeconds = 123,
    schedulingStrategy = "REPLICA"|"DAEMON",
    deploymentController = list(
      type = "ECS"|"CODE_DEPLOY"|"EXTERNAL"
    ),
    tags = list(
      list(
        key = "string",
        value = "string"
      )
    ),
    createdBy = "string",
    enableECSManagedTags = TRUE|FALSE,
    propagateTags = "TASK_DEFINITION"|"SERVICE"
  )
)
}
}
\description{
Updating the task placement strategies and constraints on an Amazon ECS
service remains in preview and is a Beta Service as defined by and
subject to the Beta Service Participation Service Terms located at
\href{https://aws.amazon.com/service-terms/}{https://aws.amazon.com/service-terms}
("Beta Terms"). These Beta Terms apply to your participation in this
preview.

Modifies the parameters of a service.

For services using the rolling update (\code{ECS}) deployment controller, the
desired count, deployment configuration, network configuration, task
placement constraints and strategies, or task definition used can be
updated.

For services using the blue/green (\code{CODE_DEPLOY}) deployment controller,
only the desired count, deployment configuration, task placement
constraints and strategies, and health check grace period can be updated
using this API. If the network configuration, platform version, or task
definition need to be updated, a new AWS CodeDeploy deployment should be
created. For more information, see
\href{https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_CreateDeployment.html}{CreateDeployment}
in the \emph{AWS CodeDeploy API Reference}.

For services using an external deployment controller, you can update
only the desired count, task placement constraints and strategies, and
health check grace period using this API. If the launch type, load
balancer, network configuration, platform version, or task definition
need to be updated, you should create a new task set. For more
information, see \code{\link[=ecs_create_task_set]{create_task_set}}.

You can add to or subtract from the number of instantiations of a task
definition in a service by specifying the cluster that the service is
running in and a new \code{desiredCount} parameter.

If you have updated the Docker image of your application, you can create
a new task definition with that image and deploy it to your service. The
service scheduler uses the minimum healthy percent and maximum percent
parameters (in the service's deployment configuration) to determine the
deployment strategy.

If your updated Docker image uses the same tag as what is in the
existing task definition for your service (for example,
\code{my_image:latest}), you do not need to create a new revision of your
task definition. You can update the service using the
\code{forceNewDeployment} option. The new tasks launched by the deployment
pull the current image/tag combination from your repository when they
start.

You can also update the deployment configuration of a service. When a
deployment is triggered by updating the task definition of a service,
the service scheduler uses the deployment configuration parameters,
\code{minimumHealthyPercent} and \code{maximumPercent}, to determine the
deployment strategy.
\itemize{
\item If \code{minimumHealthyPercent} is below 100\%, the scheduler can ignore
\code{desiredCount} temporarily during a deployment. For example, if
\code{desiredCount} is four tasks, a minimum of 50\% allows the scheduler
to stop two existing tasks before starting two new tasks. Tasks for
services that do not use a load balancer are considered healthy if
they are in the \code{RUNNING} state. Tasks for services that use a load
balancer are considered healthy if they are in the \code{RUNNING} state
and the container instance they are hosted on is reported as healthy
by the load balancer.
\item The \code{maximumPercent} parameter represents an upper limit on the
number of running tasks during a deployment, which enables you to
define the deployment batch size. For example, if \code{desiredCount} is
four tasks, a maximum of 200\% starts four new tasks before stopping
the four older tasks (provided that the cluster resources required
to do this are available).
}

When \code{\link[=ecs_update_service]{update_service}} stops a task during a
deployment, the equivalent of \verb{docker stop} is issued to the containers
running in the task. This results in a \code{SIGTERM} and a 30-second
timeout, after which \code{SIGKILL} is sent and the containers are forcibly
stopped. If the container handles the \code{SIGTERM} gracefully and exits
within 30 seconds from receiving it, no \code{SIGKILL} is sent.

When the service scheduler launches new tasks, it determines task
placement in your cluster with the following logic:
\itemize{
\item Determine which of the container instances in your cluster can
support your service's task definition (for example, they have the
required CPU, memory, ports, and container instance attributes).
\item By default, the service scheduler attempts to balance tasks across
Availability Zones in this manner (although you can choose a
different placement strategy):
\itemize{
\item Sort the valid container instances by the fewest number of
running tasks for this service in the same Availability Zone as
the instance. For example, if zone A has one running service
task and zones B and C each have zero, valid container instances
in either zone B or C are considered optimal for placement.
\item Place the new service task on a valid container instance in an
optimal Availability Zone (based on the previous steps),
favoring container instances with the fewest number of running
tasks for this service.
}
}

When the service scheduler stops running tasks, it attempts to maintain
balance across the Availability Zones in your cluster using the
following logic:
\itemize{
\item Sort the container instances by the largest number of running tasks
for this service in the same Availability Zone as the instance. For
example, if zone A has one running service task and zones B and C
each have two, container instances in either zone B or C are
considered optimal for termination.
\item Stop the task on a container instance in an optimal Availability
Zone (based on the previous steps), favoring container instances
with the largest number of running tasks for this service.
}
}
\section{Request syntax}{
\preformatted{svc$update_service(
  cluster = "string",
  service = "string",
  desiredCount = 123,
  taskDefinition = "string",
  capacityProviderStrategy = list(
    list(
      capacityProvider = "string",
      weight = 123,
      base = 123
    )
  ),
  deploymentConfiguration = list(
    deploymentCircuitBreaker = list(
      enable = TRUE|FALSE,
      rollback = TRUE|FALSE
    ),
    maximumPercent = 123,
    minimumHealthyPercent = 123
  ),
  networkConfiguration = list(
    awsvpcConfiguration = list(
      subnets = list(
        "string"
      ),
      securityGroups = list(
        "string"
      ),
      assignPublicIp = "ENABLED"|"DISABLED"
    )
  ),
  placementConstraints = list(
    list(
      type = "distinctInstance"|"memberOf",
      expression = "string"
    )
  ),
  placementStrategy = list(
    list(
      type = "random"|"spread"|"binpack",
      field = "string"
    )
  ),
  platformVersion = "string",
  forceNewDeployment = TRUE|FALSE,
  healthCheckGracePeriodSeconds = 123
)
}
}

\examples{
\dontrun{
# This example updates the my-http-service service to use the
# amazon-ecs-sample task definition.
svc$update_service(
  service = "my-http-service",
  taskDefinition = "amazon-ecs-sample"
)

# This example updates the desired count of the my-http-service service to
# 10.
svc$update_service(
  desiredCount = 10L,
  service = "my-http-service"
)
}

}
\keyword{internal}
