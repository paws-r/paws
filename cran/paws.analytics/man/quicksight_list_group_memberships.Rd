% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_list_group_memberships}
\alias{quicksight_list_group_memberships}
\title{Lists member users in a group}
\usage{
quicksight_list_group_memberships(GroupName, NextToken, MaxResults,
  AwsAccountId, Namespace)
}
\arguments{
\item{GroupName}{[required] The name of the group that you want to see a membership list of.}

\item{NextToken}{A pagination token that can be used in a subsequent request.}

\item{MaxResults}{The maximum number of results to return from this request.}

\item{AwsAccountId}{[required] The ID for the AWS account that the group is in. Currently, you use the
ID for the AWS account that contains your Amazon QuickSight account.}

\item{Namespace}{[required] The namespace. Currently, you should set this to \code{default}.}
}
\value{
A list with the following syntax:\preformatted{list(
  GroupMemberList = list(
    list(
      Arn = "string",
      MemberName = "string"
    )
  ),
  NextToken = "string",
  RequestId = "string",
  Status = 123
)
}
}
\description{
Lists member users in a group.
}
\section{Request syntax}{
\preformatted{svc$list_group_memberships(
  GroupName = "string",
  NextToken = "string",
  MaxResults = 123,
  AwsAccountId = "string",
  Namespace = "string"
)
}
}

\keyword{internal}
