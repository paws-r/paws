% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workmail_operations.R
\name{workmail_describe_resource}
\alias{workmail_describe_resource}
\title{Returns the data available for the resource}
\usage{
workmail_describe_resource(OrganizationId, ResourceId)
}
\arguments{
\item{OrganizationId}{[required] The identifier associated with the organization for which the resource
is described.}

\item{ResourceId}{[required] The identifier of the resource to be described.}
}
\value{
A list with the following syntax:\preformatted{list(
  ResourceId = "string",
  Email = "string",
  Name = "string",
  Type = "ROOM"|"EQUIPMENT",
  BookingOptions = list(
    AutoAcceptRequests = TRUE|FALSE,
    AutoDeclineRecurringRequests = TRUE|FALSE,
    AutoDeclineConflictingRequests = TRUE|FALSE
  ),
  State = "ENABLED"|"DISABLED"|"DELETED",
  EnabledDate = as.POSIXct(
    "2015-01-01"
  ),
  DisabledDate = as.POSIXct(
    "2015-01-01"
  )
)
}
}
\description{
Returns the data available for the resource.
}
\section{Request syntax}{
\preformatted{svc$describe_resource(
  OrganizationId = "string",
  ResourceId = "string"
)
}
}

\keyword{internal}
