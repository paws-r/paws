% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitosync_operations.R
\name{cognitosync_bulk_publish}
\alias{cognitosync_bulk_publish}
\title{Initiates a bulk publish of all existing datasets for an Identity Pool
to the configured stream}
\usage{
cognitosync_bulk_publish(IdentityPoolId)
}
\arguments{
\item{IdentityPoolId}{[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.}
}
\description{
Initiates a bulk publish of all existing datasets for an Identity Pool to the configured stream. Customers are limited to one successful bulk publish per 24 hours. Bulk publish is an asynchronous request, customers can see the status of the request via the GetBulkPublishDetails operation.

See \url{https://www.paws-r-sdk.com/docs/cognitosync_bulk_publish/} for full documentation.
}
\keyword{internal}
