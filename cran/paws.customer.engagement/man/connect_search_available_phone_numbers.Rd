% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_search_available_phone_numbers}
\alias{connect_search_available_phone_numbers}
\title{Searches for available phone numbers that you can claim to your Amazon
Connect instance or traffic distribution group}
\usage{
connect_search_available_phone_numbers(
  TargetArn = NULL,
  InstanceId = NULL,
  PhoneNumberCountryCode,
  PhoneNumberType,
  PhoneNumberPrefix = NULL,
  MaxResults = NULL,
  NextToken = NULL
)
}
\arguments{
\item{TargetArn}{The Amazon Resource Name (ARN) for Amazon Connect instances or traffic
distribution groups that phone number inbound traffic is routed through.
You must enter \code{InstanceId} or \code{TargetArn}.}

\item{InstanceId}{The identifier of the Amazon Connect instance that phone numbers are
claimed to. You can \href{https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html}{find the instance ID}
in the Amazon Resource Name (ARN) of the instance. You must enter
\code{InstanceId} or \code{TargetArn}.}

\item{PhoneNumberCountryCode}{[required] The ISO country code.}

\item{PhoneNumberType}{[required] The type of phone number.}

\item{PhoneNumberPrefix}{The prefix of the phone number. If provided, it must contain \code{+} as part
of the country code.}

\item{MaxResults}{The maximum number of results to return per page.}

\item{NextToken}{The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.}
}
\description{
Searches for available phone numbers that you can claim to your Amazon Connect instance or traffic distribution group. If the provided \code{TargetArn} is a traffic distribution group, you can call this API in both Amazon Web Services Regions associated with the traffic distribution group.

See \url{https://www.paws-r-sdk.com/docs/connect_search_available_phone_numbers/} for full documentation.
}
\keyword{internal}
