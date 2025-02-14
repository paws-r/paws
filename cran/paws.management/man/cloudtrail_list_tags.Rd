% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudtrail_operations.R
\name{cloudtrail_list_tags}
\alias{cloudtrail_list_tags}
\title{Lists the tags for the specified trails, event data stores, dashboards,
or channels in the current Region}
\usage{
cloudtrail_list_tags(ResourceIdList, NextToken = NULL)
}
\arguments{
\item{ResourceIdList}{[required] Specifies a list of trail, event data store, dashboard, or channel ARNs
whose tags will be listed. The list has a limit of 20 ARNs.

Example trail ARN format:
\code{arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail}

Example event data store ARN format:
\verb{arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE}

Example dashboard ARN format:
\code{arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash}

Example channel ARN format:
\code{arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890}}

\item{NextToken}{Reserved for future use.}
}
\description{
Lists the tags for the specified trails, event data stores, dashboards, or channels in the current Region.

See \url{https://www.paws-r-sdk.com/docs/cloudtrail_list_tags/} for full documentation.
}
\keyword{internal}
