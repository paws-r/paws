% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_list_namespaces}
\alias{quicksight_list_namespaces}
\title{Lists the namespaces for the specified AWS account}
\usage{
quicksight_list_namespaces(AwsAccountId, NextToken, MaxResults)
}
\arguments{
\item{AwsAccountId}{[required] The ID for the AWS account that contains the QuickSight namespaces that
you want to list.}

\item{NextToken}{A pagination token that can be used in a subsequent request.}

\item{MaxResults}{The maximum number of results to return.}
}
\value{
A list with the following syntax:\preformatted{list(
  Namespaces = list(
    list(
      Name = "string",
      Arn = "string",
      CapacityRegion = "string",
      CreationStatus = "CREATED"|"CREATING"|"DELETING"|"RETRYABLE_FAILURE"|"NON_RETRYABLE_FAILURE",
      IdentityStore = "QUICKSIGHT",
      NamespaceError = list(
        Type = "PERMISSION_DENIED"|"INTERNAL_SERVICE_ERROR",
        Message = "string"
      )
    )
  ),
  NextToken = "string",
  RequestId = "string",
  Status = 123
)
}
}
\description{
Lists the namespaces for the specified AWS account.
}
\section{Request syntax}{
\preformatted{svc$list_namespaces(
  AwsAccountId = "string",
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}
