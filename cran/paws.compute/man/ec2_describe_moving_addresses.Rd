% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_moving_addresses}
\alias{ec2_describe_moving_addresses}
\title{Describes your Elastic IP addresses that are being moved to the EC2-VPC
platform, or that are being restored to the EC2-Classic platform}
\usage{
ec2_describe_moving_addresses(Filters, DryRun, MaxResults, NextToken,
  PublicIps)
}
\arguments{
\item{Filters}{One or more filters.
\itemize{
\item \code{moving-status} - The status of the Elastic IP address
(\code{MovingToVpc} \| \code{RestoringToClassic}).
}}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{MaxResults}{The maximum number of results to return for the request in a single
page. The remaining results of the initial request can be seen by
sending another request with the returned \code{NextToken} value. This value
can be between 5 and 1000; if \code{MaxResults} is given a value outside of
this range, an error is returned.

Default: If no value is provided, the default is 1000.}

\item{NextToken}{The token for the next page of results.}

\item{PublicIps}{One or more Elastic IP addresses.}
}
\description{
Describes your Elastic IP addresses that are being moved to the EC2-VPC
platform, or that are being restored to the EC2-Classic platform. This
request does not return information about any other Elastic IP addresses
in your account.
}
\section{Request syntax}{
\preformatted{svc$describe_moving_addresses(
  Filters = list(
    list(
      Name = "string",
      Values = list(
        "string"
      )
    )
  ),
  DryRun = TRUE|FALSE,
  MaxResults = 123,
  NextToken = "string",
  PublicIps = list(
    "string"
  )
)
}
}

\examples{
# This example describes all of your moving Elastic IP addresses.
\donttest{svc$describe_moving_addresses()}

}
\keyword{internal}