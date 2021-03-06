% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_add_thing_to_billing_group}
\alias{iot_add_thing_to_billing_group}
\title{Adds a thing to a billing group}
\usage{
iot_add_thing_to_billing_group(billingGroupName, billingGroupArn,
  thingName, thingArn)
}
\arguments{
\item{billingGroupName}{The name of the billing group.}

\item{billingGroupArn}{The ARN of the billing group.}

\item{thingName}{The name of the thing to be added to the billing group.}

\item{thingArn}{The ARN of the thing to be added to the billing group.}
}
\value{
An empty list.
}
\description{
Adds a thing to a billing group.
}
\section{Request syntax}{
\preformatted{svc$add_thing_to_billing_group(
  billingGroupName = "string",
  billingGroupArn = "string",
  thingName = "string",
  thingArn = "string"
)
}
}

\keyword{internal}
