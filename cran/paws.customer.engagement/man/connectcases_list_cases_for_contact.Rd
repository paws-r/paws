% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connectcases_operations.R
\name{connectcases_list_cases_for_contact}
\alias{connectcases_list_cases_for_contact}
\title{Lists cases for a given contact}
\usage{
connectcases_list_cases_for_contact(
  contactArn,
  domainId,
  maxResults = NULL,
  nextToken = NULL
)
}
\arguments{
\item{contactArn}{[required] A unique identifier of a contact in Amazon Connect.}

\item{domainId}{[required] The unique identifier of the Cases domain.}

\item{maxResults}{The maximum number of results to return per page.}

\item{nextToken}{The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.}
}
\description{
Lists cases for a given contact.

See \url{https://www.paws-r-sdk.com/docs/connectcases_list_cases_for_contact/} for full documentation.
}
\keyword{internal}
