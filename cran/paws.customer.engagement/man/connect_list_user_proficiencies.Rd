% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_list_user_proficiencies}
\alias{connect_list_user_proficiencies}
\title{Lists proficiencies associated with a user}
\usage{
connect_list_user_proficiencies(
  InstanceId,
  UserId,
  NextToken = NULL,
  MaxResults = NULL
)
}
\arguments{
\item{InstanceId}{[required] The identifier of the Amazon Connect instance. You can find the instance
ID in the Amazon Resource Name (ARN) of the instance.}

\item{UserId}{[required] The identifier of the user account.}

\item{NextToken}{The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.}

\item{MaxResults}{The maximum number of results to return per page.}
}
\description{
Lists proficiencies associated with a user.

See \url{https://www.paws-r-sdk.com/docs/connect_list_user_proficiencies/} for full documentation.
}
\keyword{internal}
