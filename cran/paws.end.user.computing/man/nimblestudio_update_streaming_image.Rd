% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nimblestudio_operations.R
\name{nimblestudio_update_streaming_image}
\alias{nimblestudio_update_streaming_image}
\title{Update streaming image}
\usage{
nimblestudio_update_streaming_image(
  clientToken = NULL,
  description = NULL,
  name = NULL,
  streamingImageId,
  studioId
)
}
\arguments{
\item{clientToken}{Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don’t specify a client token, the
Amazon Web Services SDK automatically generates a client token and uses
it for the request to ensure idempotency.}

\item{description}{The description.}

\item{name}{The name for the streaming image.}

\item{streamingImageId}{[required] The streaming image ID.}

\item{studioId}{[required] The studio ID.}
}
\description{
Update streaming image.

See \url{https://www.paws-r-sdk.com/docs/nimblestudio_update_streaming_image/} for full documentation.
}
\keyword{internal}
