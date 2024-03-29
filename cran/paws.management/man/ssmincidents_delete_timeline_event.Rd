% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssmincidents_operations.R
\name{ssmincidents_delete_timeline_event}
\alias{ssmincidents_delete_timeline_event}
\title{Deletes a timeline event from an incident}
\usage{
ssmincidents_delete_timeline_event(eventId, incidentRecordArn)
}
\arguments{
\item{eventId}{[required] The ID of the event to update. You can use
\code{\link[=ssmincidents_list_timeline_events]{list_timeline_events}} to find an
event's ID.}

\item{incidentRecordArn}{[required] The Amazon Resource Name (ARN) of the incident that includes the
timeline event.}
}
\description{
Deletes a timeline event from an incident.

See \url{https://www.paws-r-sdk.com/docs/ssmincidents_delete_timeline_event/} for full documentation.
}
\keyword{internal}
