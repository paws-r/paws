% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ecrpublic_operations.R
\name{ecrpublic_describe_repositories}
\alias{ecrpublic_describe_repositories}
\title{Describes repositories that are in a public registry}
\usage{
ecrpublic_describe_repositories(
  registryId = NULL,
  repositoryNames = NULL,
  nextToken = NULL,
  maxResults = NULL
)
}
\arguments{
\item{registryId}{The Amazon Web Services account ID that's associated with the registry
that contains the repositories to be described. If you do not specify a
registry, the default public registry is assumed.}

\item{repositoryNames}{A list of repositories to describe. If this parameter is omitted, then
all repositories in a registry are described.}

\item{nextToken}{The \code{nextToken} value that's returned from a previous paginated
\code{\link[=ecrpublic_describe_repositories]{describe_repositories}} request where
\code{maxResults} was used and the results exceeded the value of that
parameter. Pagination continues from the end of the previous results
that returned the \code{nextToken} value. If there are no more results to
return, this value is \code{null}. If you specify repositories with
\code{repositoryNames}, you can't use this option.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.}

\item{maxResults}{The maximum number of repository results that's returned by
\code{\link[=ecrpublic_describe_repositories]{describe_repositories}} in paginated
output. When this parameter is used,
\code{\link[=ecrpublic_describe_repositories]{describe_repositories}} only returns
\code{maxResults} results in a single page along with a \code{nextToken} response
element. You can see the remaining results of the initial request by
sending another
\code{\link[=ecrpublic_describe_repositories]{describe_repositories}} request with
the returned \code{nextToken} value. This value can be between 1 and 1000. If
this parameter isn't used, then
\code{\link[=ecrpublic_describe_repositories]{describe_repositories}} returns up to
100 results and a \code{nextToken} value, if applicable. If you specify
repositories with \code{repositoryNames}, you can't use this option.}
}
\description{
Describes repositories that are in a public registry.

See \url{https://www.paws-r-sdk.com/docs/ecrpublic_describe_repositories/} for full documentation.
}
\keyword{internal}
