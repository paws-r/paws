% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/amplify_operations.R
\name{amplify_list_webhooks}
\alias{amplify_list_webhooks}
\title{Returns a list of webhooks for an Amplify app}
\usage{
amplify_list_webhooks(appId, nextToken, maxResults)
}
\arguments{
\item{appId}{[required] The unique ID for an Amplify app.}

\item{nextToken}{A pagination token. Set to null to start listing webhooks from the
start. If non-null,the pagination token is returned in a result. Pass
its value in here to list more webhooks.}

\item{maxResults}{The maximum number of records to list in a single response.}
}
\value{
A list with the following syntax:\preformatted{list(
  webhooks = list(
    list(
      webhookArn = "string",
      webhookId = "string",
      webhookUrl = "string",
      branchName = "string",
      description = "string",
      createTime = as.POSIXct(
        "2015-01-01"
      ),
      updateTime = as.POSIXct(
        "2015-01-01"
      )
    )
  ),
  nextToken = "string"
)
}
}
\description{
Returns a list of webhooks for an Amplify app.
}
\section{Request syntax}{
\preformatted{svc$list_webhooks(
  appId = "string",
  nextToken = "string",
  maxResults = 123
)
}
}

\keyword{internal}
