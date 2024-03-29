% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frauddetector_operations.R
\name{frauddetector_delete_event}
\alias{frauddetector_delete_event}
\title{Deletes the specified event}
\usage{
frauddetector_delete_event(eventId, eventTypeName, deleteAuditHistory = NULL)
}
\arguments{
\item{eventId}{[required] The ID of the event to delete.}

\item{eventTypeName}{[required] The name of the event type.}

\item{deleteAuditHistory}{Specifies whether or not to delete any predictions associated with the
event. If set to \code{True},}
}
\description{
Deletes the specified event.

See \url{https://www.paws-r-sdk.com/docs/frauddetector_delete_event/} for full documentation.
}
\keyword{internal}
