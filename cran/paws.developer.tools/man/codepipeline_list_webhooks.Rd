% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codepipeline_operations.R
\name{codepipeline_list_webhooks}
\alias{codepipeline_list_webhooks}
\title{Gets a listing of all the webhooks in this Amazon Web Services Region
for this account}
\usage{
codepipeline_list_webhooks(NextToken = NULL, MaxResults = NULL)
}
\arguments{
\item{NextToken}{The token that was returned from the previous ListWebhooks call, which
can be used to return the next set of webhooks in the list.}

\item{MaxResults}{The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned nextToken
value.}
}
\description{
Gets a listing of all the webhooks in this Amazon Web Services Region for this account. The output lists all webhooks and includes the webhook URL and ARN and the configuration for each webhook.

See \url{https://www.paws-r-sdk.com/docs/codepipeline_list_webhooks/} for full documentation.
}
\keyword{internal}
