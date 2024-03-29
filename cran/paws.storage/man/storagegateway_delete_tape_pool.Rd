% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/storagegateway_operations.R
\name{storagegateway_delete_tape_pool}
\alias{storagegateway_delete_tape_pool}
\title{Delete a custom tape pool}
\usage{
storagegateway_delete_tape_pool(PoolARN)
}
\arguments{
\item{PoolARN}{[required] The Amazon Resource Name (ARN) of the custom tape pool to delete.}
}
\description{
Delete a custom tape pool. A custom tape pool can only be deleted if there are no tapes in the pool and if there are no automatic tape creation policies that reference the custom tape pool.

See \url{https://www.paws-r-sdk.com/docs/storagegateway_delete_tape_pool/} for full documentation.
}
\keyword{internal}
