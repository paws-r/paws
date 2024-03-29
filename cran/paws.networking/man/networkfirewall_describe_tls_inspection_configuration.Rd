% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/networkfirewall_operations.R
\name{networkfirewall_describe_tls_inspection_configuration}
\alias{networkfirewall_describe_tls_inspection_configuration}
\title{Returns the data objects for the specified TLS inspection configuration}
\usage{
networkfirewall_describe_tls_inspection_configuration(
  TLSInspectionConfigurationArn = NULL,
  TLSInspectionConfigurationName = NULL
)
}
\arguments{
\item{TLSInspectionConfigurationArn}{The Amazon Resource Name (ARN) of the TLS inspection configuration.

You must specify the ARN or the name, and you can specify both.}

\item{TLSInspectionConfigurationName}{The descriptive name of the TLS inspection configuration. You can't
change the name of a TLS inspection configuration after you create it.

You must specify the ARN or the name, and you can specify both.}
}
\description{
Returns the data objects for the specified TLS inspection configuration.

See \url{https://www.paws-r-sdk.com/docs/networkfirewall_describe_tls_inspection_configuration/} for full documentation.
}
\keyword{internal}
