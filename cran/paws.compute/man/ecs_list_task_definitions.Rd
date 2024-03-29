% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ecs_operations.R
\name{ecs_list_task_definitions}
\alias{ecs_list_task_definitions}
\title{Returns a list of task definitions that are registered to your account}
\usage{
ecs_list_task_definitions(
  familyPrefix = NULL,
  status = NULL,
  sort = NULL,
  nextToken = NULL,
  maxResults = NULL
)
}
\arguments{
\item{familyPrefix}{The full family name to filter the
\code{\link[=ecs_list_task_definitions]{list_task_definitions}} results with.
Specifying a \code{familyPrefix} limits the listed task definitions to task
definition revisions that belong to that family.}

\item{status}{The task definition status to filter the
\code{\link[=ecs_list_task_definitions]{list_task_definitions}} results with. By
default, only \code{ACTIVE} task definitions are listed. By setting this
parameter to \code{INACTIVE}, you can view task definitions that are
\code{INACTIVE} as long as an active task or service still references them.
If you paginate the resulting output, be sure to keep the \code{status} value
constant in each subsequent request.}

\item{sort}{The order to sort the results in. Valid values are \code{ASC} and \code{DESC}. By
default, (\code{ASC}) task definitions are listed lexicographically by family
name and in ascending numerical order by revision so that the newest
task definitions in a family are listed last. Setting this parameter to
\code{DESC} reverses the sort order on family name and revision. This is so
that the newest task definitions in a family are listed first.}

\item{nextToken}{The \code{nextToken} value returned from a
\code{\link[=ecs_list_task_definitions]{list_task_definitions}} request indicating
that more results are available to fulfill the request and further calls
will be needed. If \code{maxResults} was provided, it is possible the number
of results to be fewer than \code{maxResults}.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.}

\item{maxResults}{The maximum number of task definition results that
\code{\link[=ecs_list_task_definitions]{list_task_definitions}} returned in
paginated output. When this parameter is used,
\code{\link[=ecs_list_task_definitions]{list_task_definitions}} only returns
\code{maxResults} results in a single page along with a \code{nextToken} response
element. The remaining results of the initial request can be seen by
sending another \code{\link[=ecs_list_task_definitions]{list_task_definitions}}
request with the returned \code{nextToken} value. This value can be between 1
and 100. If this parameter isn't used, then
\code{\link[=ecs_list_task_definitions]{list_task_definitions}} returns up to 100
results and a \code{nextToken} value if applicable.}
}
\description{
Returns a list of task definitions that are registered to your account. You can filter the results by family name with the \code{familyPrefix} parameter or by status with the \code{status} parameter.

See \url{https://www.paws-r-sdk.com/docs/ecs_list_task_definitions/} for full documentation.
}
\keyword{internal}
