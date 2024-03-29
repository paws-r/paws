% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/storagegateway_operations.R
\name{storagegateway_describe_bandwidth_rate_limit_schedule}
\alias{storagegateway_describe_bandwidth_rate_limit_schedule}
\title{Returns information about the bandwidth rate limit schedule of a gateway}
\usage{
storagegateway_describe_bandwidth_rate_limit_schedule(GatewayARN)
}
\arguments{
\item{GatewayARN}{[required]}
}
\description{
Returns information about the bandwidth rate limit schedule of a gateway. By default, gateways do not have bandwidth rate limit schedules, which means no bandwidth rate limiting is in effect. This operation is supported only for volume, tape and S3 file gateways. FSx file gateways do not support bandwidth rate limits.

See \url{https://www.paws-r-sdk.com/docs/storagegateway_describe_bandwidth_rate_limit_schedule/} for full documentation.
}
\keyword{internal}
