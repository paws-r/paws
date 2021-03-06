% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_register_task_with_maintenance_window}
\alias{ssm_register_task_with_maintenance_window}
\title{Adds a new task to a maintenance window}
\usage{
ssm_register_task_with_maintenance_window(WindowId, Targets, TaskArn,
  ServiceRoleArn, TaskType, TaskParameters, TaskInvocationParameters,
  Priority, MaxConcurrency, MaxErrors, LoggingInfo, Name, Description,
  ClientToken)
}
\arguments{
\item{WindowId}{[required] The ID of the maintenance window the task should be added to.}

\item{Targets}{The targets (either instances or maintenance window targets).

One or more targets must be specified for maintenance window Run
Command-type tasks. Depending on the task, targets are optional for
other maintenance window task types (Automation, AWS Lambda, and AWS
Step Functions). For more information about running tasks that do not
specify targets, see see \href{https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html}{Registering maintenance window tasks without targets}
in the \emph{AWS Systems Manager User Guide}.

Specify instances using the following format:

\verb{Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>}

Specify maintenance window targets using the following format:

\verb{Key=WindowTargetIds,Values=<window-target-id-1>,<window-target-id-2>}}

\item{TaskArn}{[required] The ARN of the task to run.}

\item{ServiceRoleArn}{The ARN of the IAM service role for Systems Manager to assume when
running a maintenance window task. If you do not specify a service role
ARN, Systems Manager uses your account's service-linked role. If no
service-linked role for Systems Manager exists in your account, it is
created when you run
\code{\link[=ssm_register_task_with_maintenance_window]{register_task_with_maintenance_window}}.

For more information, see the following topics in the in the \emph{AWS
Systems Manager User Guide}:
\itemize{
\item \href{https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions}{Using service-linked roles for Systems Manager}
\item \href{https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role}{Should I use a service-linked role or a custom service role to run maintenance window tasks?}
}}

\item{TaskType}{[required] The type of task being registered.}

\item{TaskParameters}{The parameters that should be passed to the task when it is run.

\code{TaskParameters} has been deprecated. To specify parameters to pass to a
task when it runs, instead use the \code{Parameters} option in the
\code{TaskInvocationParameters} structure. For information about how Systems
Manager handles these options for the supported maintenance window task
types, see MaintenanceWindowTaskInvocationParameters.}

\item{TaskInvocationParameters}{The parameters that the task should use during execution. Populate only
the fields that match the task type. All other fields should be empty.}

\item{Priority}{The priority of the task in the maintenance window, the lower the number
the higher the priority. Tasks in a maintenance window are scheduled in
priority order with tasks that have the same priority scheduled in
parallel.}

\item{MaxConcurrency}{The maximum number of targets this task can be run for in parallel.

For maintenance window tasks without a target specified, you cannot
supply a value for this option. Instead, the system inserts a
placeholder value of \code{1}. This value does not affect the running of your
task.}

\item{MaxErrors}{The maximum number of errors allowed before this task stops being
scheduled.

For maintenance window tasks without a target specified, you cannot
supply a value for this option. Instead, the system inserts a
placeholder value of \code{1}. This value does not affect the running of your
task.}

\item{LoggingInfo}{A structure containing information about an S3 bucket to write
instance-level logs to.

\code{LoggingInfo} has been deprecated. To specify an S3 bucket to contain
logs, instead use the \code{OutputS3BucketName} and \code{OutputS3KeyPrefix}
options in the \code{TaskInvocationParameters} structure. For information
about how Systems Manager handles these options for the supported
maintenance window task types, see
MaintenanceWindowTaskInvocationParameters.}

\item{Name}{An optional name for the task.}

\item{Description}{An optional description for the task.}

\item{ClientToken}{User-provided idempotency token.}
}
\value{
A list with the following syntax:\preformatted{list(
  WindowTaskId = "string"
)
}
}
\description{
Adds a new task to a maintenance window.
}
\section{Request syntax}{
\preformatted{svc$register_task_with_maintenance_window(
  WindowId = "string",
  Targets = list(
    list(
      Key = "string",
      Values = list(
        "string"
      )
    )
  ),
  TaskArn = "string",
  ServiceRoleArn = "string",
  TaskType = "RUN_COMMAND"|"AUTOMATION"|"STEP_FUNCTIONS"|"LAMBDA",
  TaskParameters = list(
    list(
      Values = list(
        "string"
      )
    )
  ),
  TaskInvocationParameters = list(
    RunCommand = list(
      Comment = "string",
      CloudWatchOutputConfig = list(
        CloudWatchLogGroupName = "string",
        CloudWatchOutputEnabled = TRUE|FALSE
      ),
      DocumentHash = "string",
      DocumentHashType = "Sha256"|"Sha1",
      DocumentVersion = "string",
      NotificationConfig = list(
        NotificationArn = "string",
        NotificationEvents = list(
          "All"|"InProgress"|"Success"|"TimedOut"|"Cancelled"|"Failed"
        ),
        NotificationType = "Command"|"Invocation"
      ),
      OutputS3BucketName = "string",
      OutputS3KeyPrefix = "string",
      Parameters = list(
        list(
          "string"
        )
      ),
      ServiceRoleArn = "string",
      TimeoutSeconds = 123
    ),
    Automation = list(
      DocumentVersion = "string",
      Parameters = list(
        list(
          "string"
        )
      )
    ),
    StepFunctions = list(
      Input = "string",
      Name = "string"
    ),
    Lambda = list(
      ClientContext = "string",
      Qualifier = "string",
      Payload = raw
    )
  ),
  Priority = 123,
  MaxConcurrency = "string",
  MaxErrors = "string",
  LoggingInfo = list(
    S3BucketName = "string",
    S3KeyPrefix = "string",
    S3Region = "string"
  ),
  Name = "string",
  Description = "string",
  ClientToken = "string"
)
}
}

\keyword{internal}
