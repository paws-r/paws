% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_create_trigger}
\alias{glue_create_trigger}
\title{Creates a new trigger}
\usage{
glue_create_trigger(
  Name,
  WorkflowName = NULL,
  Type,
  Schedule = NULL,
  Predicate = NULL,
  Actions,
  Description = NULL,
  StartOnCreation = NULL,
  Tags = NULL,
  EventBatchingCondition = NULL
)
}
\arguments{
\item{Name}{[required] The name of the trigger.}

\item{WorkflowName}{The name of the workflow associated with the trigger.}

\item{Type}{[required] The type of the new trigger.}

\item{Schedule}{A \code{cron} expression used to specify the schedule (see \href{https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html}{Time-Based Schedules for Jobs and Crawlers}.
For example, to run something every day at 12:15 UTC, you would specify:
\verb{cron(15 12 * * ? *)}.

This field is required when the trigger type is SCHEDULED.}

\item{Predicate}{A predicate to specify when the new trigger should fire.

This field is required when the trigger type is \code{CONDITIONAL}.}

\item{Actions}{[required] The actions initiated by this trigger when it fires.}

\item{Description}{A description of the new trigger.}

\item{StartOnCreation}{Set to \code{true} to start \code{SCHEDULED} and \code{CONDITIONAL} triggers when
created. True is not supported for \code{ON_DEMAND} triggers.}

\item{Tags}{The tags to use with this trigger. You may use tags to limit access to
the trigger. For more information about tags in Glue, see \href{https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html}{Amazon Web Services Tags in Glue} in
the developer guide.}

\item{EventBatchingCondition}{Batch condition that must be met (specified number of events received or
batch time window expired) before EventBridge event trigger fires.}
}
\description{
Creates a new trigger.

See \url{https://www.paws-r-sdk.com/docs/glue_create_trigger/} for full documentation.
}
\keyword{internal}
