% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/robomaker_operations.R
\name{robomaker_list_world_templates}
\alias{robomaker_list_world_templates}
\title{Lists world templates}
\usage{
robomaker_list_world_templates(nextToken, maxResults)
}
\arguments{
\item{nextToken}{If the previous paginated request did not return all of the remaining
results, the response object's \code{nextToken} parameter value is set to a
token. To retrieve the next set of results, call
\code{\link[=robomaker_list_world_templates]{list_world_templates}} again and
assign that token to the request object's \code{nextToken} parameter. If
there are no remaining results, the previous response object's NextToken
parameter is set to null.}

\item{maxResults}{When this parameter is used,
\code{\link[=robomaker_list_world_templates]{list_world_templates}} only returns
\code{maxResults} results in a single page along with a \code{nextToken} response
element. The remaining results of the initial request can be seen by
sending another \code{\link[=robomaker_list_world_templates]{list_world_templates}}
request with the returned \code{nextToken} value. This value can be between 1
and 100. If this parameter is not used, then
\code{\link[=robomaker_list_world_templates]{list_world_templates}} returns up to
100 results and a \code{nextToken} value if applicable.}
}
\value{
A list with the following syntax:\preformatted{list(
  templateSummaries = list(
    list(
      arn = "string",
      createdAt = as.POSIXct(
        "2015-01-01"
      ),
      lastUpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      name = "string"
    )
  ),
  nextToken = "string"
)
}
}
\description{
Lists world templates.
}
\section{Request syntax}{
\preformatted{svc$list_world_templates(
  nextToken = "string",
  maxResults = 123
)
}
}

\keyword{internal}
