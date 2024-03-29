% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_associate_phone_number_contact_flow}
\alias{connect_associate_phone_number_contact_flow}
\title{Associates a flow with a phone number claimed to your Amazon Connect
instance}
\usage{
connect_associate_phone_number_contact_flow(
  PhoneNumberId,
  InstanceId,
  ContactFlowId
)
}
\arguments{
\item{PhoneNumberId}{[required] A unique identifier for the phone number.}

\item{InstanceId}{[required] The identifier of the Amazon Connect instance. You can \href{https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html}{find the instance ID}
in the Amazon Resource Name (ARN) of the instance.}

\item{ContactFlowId}{[required] The identifier of the flow.}
}
\description{
Associates a flow with a phone number claimed to your Amazon Connect instance.

See \url{https://www.paws-r-sdk.com/docs/connect_associate_phone_number_contact_flow/} for full documentation.
}
\keyword{internal}
