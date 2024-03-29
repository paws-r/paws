% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_tag_contact}
\alias{connect_tag_contact}
\title{Adds the specified tags to the contact resource}
\usage{
connect_tag_contact(ContactId, InstanceId, Tags)
}
\arguments{
\item{ContactId}{[required] The identifier of the contact in this instance of Amazon Connect.}

\item{InstanceId}{[required] The identifier of the Amazon Connect instance. You can \href{https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html}{find the instance ID}
in the Amazon Resource Name (ARN) of the instance.}

\item{Tags}{[required] The tags to be assigned to the contact resource. For example, \{
"Tags": \{"key1":"value1", "key2":"value2"\} \}.

Authorization is not supported by this tag.}
}
\description{
Adds the specified tags to the contact resource. For more information about this API is used, see \href{https://docs.aws.amazon.com/connect/latest/adminguide/granular-billing.html}{Set up granular billing for a detailed view of your Amazon Connect usage}.

See \url{https://www.paws-r-sdk.com/docs/connect_tag_contact/} for full documentation.
}
\keyword{internal}
