% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_get_contact_methods}
\alias{lightsail_get_contact_methods}
\title{Returns information about the configured contact methods}
\usage{
lightsail_get_contact_methods(protocols = NULL)
}
\arguments{
\item{protocols}{The protocols used to send notifications, such as \code{Email}, or \code{SMS}
(text messaging).

Specify a protocol in your request to return information about a
specific contact method protocol.}
}
\description{
Returns information about the configured contact methods. Specify a protocol in your request to return information about a specific contact method.

See \url{https://www.paws-r-sdk.com/docs/lightsail_get_contact_methods/} for full documentation.
}
\keyword{internal}
