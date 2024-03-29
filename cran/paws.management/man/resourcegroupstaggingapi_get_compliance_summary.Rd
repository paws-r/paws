% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resourcegroupstaggingapi_operations.R
\name{resourcegroupstaggingapi_get_compliance_summary}
\alias{resourcegroupstaggingapi_get_compliance_summary}
\title{Returns a table that shows counts of resources that are noncompliant
with their tag policies}
\usage{
resourcegroupstaggingapi_get_compliance_summary(
  TargetIdFilters = NULL,
  RegionFilters = NULL,
  ResourceTypeFilters = NULL,
  TagKeyFilters = NULL,
  GroupBy = NULL,
  MaxResults = NULL,
  PaginationToken = NULL
)
}
\arguments{
\item{TargetIdFilters}{Specifies target identifiers (usually, specific account IDs) to limit
the output by. If you use this parameter, the count of returned
noncompliant resources includes only resources with the specified target
IDs.}

\item{RegionFilters}{Specifies a list of Amazon Web Services Regions to limit the output to.
If you use this parameter, the count of returned noncompliant resources
includes only resources in the specified Regions.}

\item{ResourceTypeFilters}{Specifies that you want the response to include information for only
resources of the specified types. The format of each resource type is
\verb{service[:resourceType]}. For example, specifying a resource type of
\code{ec2} returns all Amazon EC2 resources (which includes EC2 instances).
Specifying a resource type of \code{ec2:instance} returns only EC2 instances.

The string for each service name and resource type is the same as that
embedded in a resource's Amazon Resource Name (ARN). Consult the \emph{\href{https://docs.aws.amazon.com/general/latest/gr/}{Amazon Web Services General Reference}} for the following:
\itemize{
\item For a list of service name strings, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html#genref-aws-service-namespaces}{Amazon Web Services Service Namespaces}.
\item For resource type strings, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html#arns-syntax}{Example ARNs}.
\item For more information about ARNs, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html}{Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces}.
}

You can specify multiple resource types by using a comma separated
array. The array can include up to 100 items. Note that the length
constraint requirement applies to each resource type filter.}

\item{TagKeyFilters}{Specifies that you want the response to include information for only
resources that have tags with the specified tag keys. If you use this
parameter, the count of returned noncompliant resources includes only
resources that have the specified tag keys.}

\item{GroupBy}{Specifies a list of attributes to group the counts of noncompliant
resources by. If supplied, the counts are sorted by those attributes.}

\item{MaxResults}{Specifies the maximum number of results to be returned in each page. A
query can return fewer than this maximum, even if there are more results
still to return. You should always check the \code{PaginationToken} response
value to see if there are more results. You can specify a minimum of 1
and a maximum value of 100.}

\item{PaginationToken}{Specifies a \code{PaginationToken} response value from a previous request to
indicate that you want the next page of results. Leave this parameter
empty in your initial request.}
}
\description{
Returns a table that shows counts of resources that are noncompliant with their tag policies.

See \url{https://www.paws-r-sdk.com/docs/resourcegroupstaggingapi_get_compliance_summary/} for full documentation.
}
\keyword{internal}
