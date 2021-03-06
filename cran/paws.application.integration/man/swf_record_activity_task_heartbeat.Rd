% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/swf_operations.R
\name{swf_record_activity_task_heartbeat}
\alias{swf_record_activity_task_heartbeat}
\title{Used by activity workers to report to the service that the ActivityTask
represented by the specified taskToken is still making progress}
\usage{
swf_record_activity_task_heartbeat(taskToken, details)
}
\arguments{
\item{taskToken}{[required] The \code{taskToken} of the ActivityTask.

\code{taskToken} is generated by the service and should be treated as an
opaque value. If the task is passed to another process, its \code{taskToken}
must also be passed. This enables it to provide its progress and respond
with results.}

\item{details}{If specified, contains details about the progress of the task.}
}
\value{
A list with the following syntax:\preformatted{list(
  cancelRequested = TRUE|FALSE
)
}
}
\description{
Used by activity workers to report to the service that the ActivityTask
represented by the specified \code{taskToken} is still making progress. The
worker can also specify details of the progress, for example percent
complete, using the \code{details} parameter. This action can also be used by
the worker as a mechanism to check if cancellation is being requested
for the activity task. If a cancellation is being attempted for the
specified task, then the boolean \code{cancelRequested} flag returned by the
service is set to \code{true}.

This action resets the \code{taskHeartbeatTimeout} clock. The
\code{taskHeartbeatTimeout} is specified in
\code{\link[=swf_register_activity_type]{register_activity_type}}.

This action doesn't in itself create an event in the workflow execution
history. However, if the task times out, the workflow execution history
contains a \code{ActivityTaskTimedOut} event that contains the information
from the last heartbeat generated by the activity worker.

The \code{taskStartToCloseTimeout} of an activity type is the maximum
duration of an activity task, regardless of the number of
\code{\link[=swf_record_activity_task_heartbeat]{record_activity_task_heartbeat}}
requests received. The \code{taskStartToCloseTimeout} is also specified in
\code{\link[=swf_register_activity_type]{register_activity_type}}.

This operation is only useful for long-lived activities to report
liveliness of the task and to determine if a cancellation is being
attempted.

If the \code{cancelRequested} flag returns \code{true}, a cancellation is being
attempted. If the worker can cancel the activity, it should respond with
\code{\link[=swf_respond_activity_task_canceled]{respond_activity_task_canceled}}.
Otherwise, it should ignore the cancellation request.

\strong{Access Control}

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:
\itemize{
\item Use a \code{Resource} element with the domain name to limit the action to
only specified domains.
\item Use an \code{Action} element to allow or deny permission to call this
action.
\item You cannot use an IAM policy to constrain this action's parameters.
}

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's \code{cause} parameter is set
to \code{OPERATION_NOT_PERMITTED}. For details and example IAM policies, see
\href{https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html}{Using IAM to Manage Access to Amazon SWF Workflows}
in the \emph{Amazon SWF Developer Guide}.
}
\section{Request syntax}{
\preformatted{svc$record_activity_task_heartbeat(
  taskToken = "string",
  details = "string"
)
}
}

\keyword{internal}
