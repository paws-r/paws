% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simpledb_operations.R
\name{simpledb_delete_domain}
\alias{simpledb_delete_domain}
\title{The DeleteDomain operation deletes a domain}
\usage{
simpledb_delete_domain(DomainName)
}
\arguments{
\item{DomainName}{[required] The name of the domain to delete.}
}
\value{
An empty list.
}
\description{
The \code{\link[=simpledb_delete_domain]{delete_domain}} operation deletes a
domain. Any items (and their attributes) in the domain are deleted as
well. The \code{\link[=simpledb_delete_domain]{delete_domain}} operation might take
10 or more seconds to complete.

Running \code{\link[=simpledb_delete_domain]{delete_domain}} on a domain that does
not exist or running the function multiple times using the same domain
name will not result in an error response.
}
\section{Request syntax}{
\preformatted{svc$delete_domain(
  DomainName = "string"
)
}
}

\keyword{internal}
