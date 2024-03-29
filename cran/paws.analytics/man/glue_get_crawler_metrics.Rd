% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_get_crawler_metrics}
\alias{glue_get_crawler_metrics}
\title{Retrieves metrics about specified crawlers}
\usage{
glue_get_crawler_metrics(
  CrawlerNameList = NULL,
  MaxResults = NULL,
  NextToken = NULL
)
}
\arguments{
\item{CrawlerNameList}{A list of the names of crawlers about which to retrieve metrics.}

\item{MaxResults}{The maximum size of a list to return.}

\item{NextToken}{A continuation token, if this is a continuation call.}
}
\description{
Retrieves metrics about specified crawlers.

See \url{https://www.paws-r-sdk.com/docs/glue_get_crawler_metrics/} for full documentation.
}
\keyword{internal}
