% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudformation_operations.R
\name{cloudformation_describe_type_registration}
\alias{cloudformation_describe_type_registration}
\title{Returns information about an extension's registration, including its
current status and type and version identifiers}
\usage{
cloudformation_describe_type_registration(RegistrationToken)
}
\arguments{
\item{RegistrationToken}{[required] The identifier for this registration request.

This registration token is generated by CloudFormation when you initiate
a registration request using
\code{\link[=cloudformation_register_type]{register_type}}.}
}
\description{
Returns information about an extension's registration, including its current status and type and version identifiers.

See \url{https://www.paws-r-sdk.com/docs/cloudformation_describe_type_registration/} for full documentation.
}
\keyword{internal}
