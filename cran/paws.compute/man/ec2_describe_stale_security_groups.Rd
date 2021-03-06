% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_stale_security_groups}
\alias{ec2_describe_stale_security_groups}
\title{[VPC only] Describes the stale security group rules for security
groups in a specified VPC}
\usage{
ec2_describe_stale_security_groups(DryRun, MaxResults, NextToken, VpcId)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{MaxResults}{The maximum number of items to return for this request. The request
returns a token that you can specify in a subsequent call to get the
next set of results.}

\item{NextToken}{The token for the next set of items to return. (You received this token
from a prior call.)}

\item{VpcId}{[required] The ID of the VPC.}
}
\value{
A list with the following syntax:\preformatted{list(
  NextToken = "string",
  StaleSecurityGroupSet = list(
    list(
      Description = "string",
      GroupId = "string",
      GroupName = "string",
      StaleIpPermissions = list(
        list(
          FromPort = 123,
          IpProtocol = "string",
          IpRanges = list(
            "string"
          ),
          PrefixListIds = list(
            "string"
          ),
          ToPort = 123,
          UserIdGroupPairs = list(
            list(
              Description = "string",
              GroupId = "string",
              GroupName = "string",
              PeeringStatus = "string",
              UserId = "string",
              VpcId = "string",
              VpcPeeringConnectionId = "string"
            )
          )
        )
      ),
      StaleIpPermissionsEgress = list(
        list(
          FromPort = 123,
          IpProtocol = "string",
          IpRanges = list(
            "string"
          ),
          PrefixListIds = list(
            "string"
          ),
          ToPort = 123,
          UserIdGroupPairs = list(
            list(
              Description = "string",
              GroupId = "string",
              GroupName = "string",
              PeeringStatus = "string",
              UserId = "string",
              VpcId = "string",
              VpcPeeringConnectionId = "string"
            )
          )
        )
      ),
      VpcId = "string"
    )
  )
)
}
}
\description{
[VPC only] Describes the stale security group rules for security
groups in a specified VPC. Rules are stale when they reference a deleted
security group in a peer VPC, or a security group in a peer VPC for
which the VPC peering connection has been deleted.
}
\section{Request syntax}{
\preformatted{svc$describe_stale_security_groups(
  DryRun = TRUE|FALSE,
  MaxResults = 123,
  NextToken = "string",
  VpcId = "string"
)
}
}

\keyword{internal}
