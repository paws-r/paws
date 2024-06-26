% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_set_ip_address_type}
\alias{lightsail_set_ip_address_type}
\title{Sets the IP address type for an Amazon Lightsail resource}
\usage{
lightsail_set_ip_address_type(resourceType, resourceName, ipAddressType)
}
\arguments{
\item{resourceType}{[required] The resource type.

The resource values are \code{Distribution}, \code{Instance}, and \code{LoadBalancer}.

Distribution-related APIs are available only in the N. Virginia
(\code{us-east-1}) Amazon Web Services Region. Set your Amazon Web Services
Region configuration to \code{us-east-1} to create, view, or edit
distributions.}

\item{resourceName}{[required] The name of the resource for which to set the IP address type.}

\item{ipAddressType}{[required] The IP address type to set for the specified resource.

The possible values are \code{ipv4} for IPv4 only, and \code{dualstack} for IPv4
and IPv6.}
}
\description{
Sets the IP address type for an Amazon Lightsail resource.

See \url{https://www.paws-r-sdk.com/docs/lightsail_set_ip_address_type/} for full documentation.
}
\keyword{internal}
