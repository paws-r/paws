% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_delete_thing_group}
\alias{iot_delete_thing_group}
\title{Deletes a thing group}
\usage{
iot_delete_thing_group(thingGroupName, expectedVersion)
}
\arguments{
\item{thingGroupName}{[required] The name of the thing group to delete.}

\item{expectedVersion}{The expected version of the thing group to delete.}
}
\value{
An empty list.
}
\description{
Deletes a thing group.
}
\section{Request syntax}{
\preformatted{svc$delete_thing_group(
  thingGroupName = "string",
  expectedVersion = 123
)
}
}

\keyword{internal}
