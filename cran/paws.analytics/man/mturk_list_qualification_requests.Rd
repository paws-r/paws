% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mturk_operations.R
\name{mturk_list_qualification_requests}
\alias{mturk_list_qualification_requests}
\title{The ListQualificationRequests operation retrieves requests for
Qualifications of a particular Qualification type}
\usage{
mturk_list_qualification_requests(
  QualificationTypeId = NULL,
  NextToken = NULL,
  MaxResults = NULL
)
}
\arguments{
\item{QualificationTypeId}{The ID of the QualificationType.}

\item{NextToken}{}

\item{MaxResults}{The maximum number of results to return in a single call.}
}
\description{
The \code{\link[=mturk_list_qualification_requests]{list_qualification_requests}} operation retrieves requests for Qualifications of a particular Qualification type. The owner of the Qualification type calls this operation to poll for pending requests, and accepts them using the AcceptQualification operation.

See \url{https://www.paws-r-sdk.com/docs/mturk_list_qualification_requests/} for full documentation.
}
\keyword{internal}
