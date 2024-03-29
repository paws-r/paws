% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/globalaccelerator_operations.R
\name{globalaccelerator_allow_custom_routing_traffic}
\alias{globalaccelerator_allow_custom_routing_traffic}
\title{Specify the Amazon EC2 instance (destination) IP addresses and ports for
a VPC subnet endpoint that can receive traffic for a custom routing
accelerator}
\usage{
globalaccelerator_allow_custom_routing_traffic(
  EndpointGroupArn,
  EndpointId,
  DestinationAddresses = NULL,
  DestinationPorts = NULL,
  AllowAllTrafficToEndpoint = NULL
)
}
\arguments{
\item{EndpointGroupArn}{[required] The Amazon Resource Name (ARN) of the endpoint group.}

\item{EndpointId}{[required] An ID for the endpoint. For custom routing accelerators, this is the
virtual private cloud (VPC) subnet ID.}

\item{DestinationAddresses}{A list of specific Amazon EC2 instance IP addresses (destination
addresses) in a subnet that you want to allow to receive traffic. The IP
addresses must be a subset of the IP addresses that you specified for
the endpoint group.

\code{DestinationAddresses} is required if \code{AllowAllTrafficToEndpoint} is
\code{FALSE} or is not specified.}

\item{DestinationPorts}{A list of specific Amazon EC2 instance ports (destination ports) that
you want to allow to receive traffic.}

\item{AllowAllTrafficToEndpoint}{Indicates whether all destination IP addresses and ports for a specified
VPC subnet endpoint can receive traffic from a custom routing
accelerator. The value is TRUE or FALSE.

When set to TRUE, \emph{all} destinations in the custom routing VPC subnet
can receive traffic. Note that you cannot specify destination IP
addresses and ports when the value is set to TRUE.

When set to FALSE (or not specified), you \emph{must} specify a list of
destination IP addresses that are allowed to receive traffic. A list of
ports is optional. If you don't specify a list of ports, the ports that
can accept traffic is the same as the ports configured for the endpoint
group.

The default value is FALSE.}
}
\description{
Specify the Amazon EC2 instance (destination) IP addresses and ports for a VPC subnet endpoint that can receive traffic for a custom routing accelerator. You can allow traffic to all destinations in the subnet endpoint, or allow traffic to a specified list of destination IP addresses and ports in the subnet. Note that you cannot specify IP addresses or ports outside of the range that you configured for the endpoint group.

See \url{https://www.paws-r-sdk.com/docs/globalaccelerator_allow_custom_routing_traffic/} for full documentation.
}
\keyword{internal}
