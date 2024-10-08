% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lexmodelsv2_operations.R
\name{lexmodelsv2_list_bot_alias_replicas}
\alias{lexmodelsv2_list_bot_alias_replicas}
\title{The action to list the replicated bots created from the source bot alias}
\usage{
lexmodelsv2_list_bot_alias_replicas(
  botId,
  replicaRegion,
  maxResults = NULL,
  nextToken = NULL
)
}
\arguments{
\item{botId}{[required] The request for the unique bot ID of the replicated bot created from the
source bot alias.}

\item{replicaRegion}{[required] The request for the secondary region of the replicated bot created from
the source bot alias.}

\item{maxResults}{The request for maximum results to list the replicated bots created from
the source bot alias.}

\item{nextToken}{The request for the next token for the replicated bot created from the
source bot alias.}
}
\description{
The action to list the replicated bots created from the source bot alias.

See \url{https://www.paws-r-sdk.com/docs/lexmodelsv2_list_bot_alias_replicas/} for full documentation.
}
\keyword{internal}
