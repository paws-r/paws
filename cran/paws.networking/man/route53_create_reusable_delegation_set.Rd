% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53_operations.R
\name{route53_create_reusable_delegation_set}
\alias{route53_create_reusable_delegation_set}
\title{Creates a delegation set (a group of four name servers) that can be
reused by multiple hosted zones that were created by the same Amazon Web
Services account}
\usage{
route53_create_reusable_delegation_set(CallerReference, HostedZoneId = NULL)
}
\arguments{
\item{CallerReference}{[required] A unique string that identifies the request, and that allows you to
retry failed
\code{\link[=route53_create_reusable_delegation_set]{create_reusable_delegation_set}}
requests without the risk of executing the operation twice. You must use
a unique \code{CallerReference} string every time you submit a
\code{\link[=route53_create_reusable_delegation_set]{create_reusable_delegation_set}}
request. \code{CallerReference} can be any unique string, for example a
date/time stamp.}

\item{HostedZoneId}{If you want to mark the delegation set for an existing hosted zone as
reusable, the ID for that hosted zone.}
}
\description{
Creates a delegation set (a group of four name servers) that can be reused by multiple hosted zones that were created by the same Amazon Web Services account.

See \url{https://www.paws-r-sdk.com/docs/route53_create_reusable_delegation_set/} for full documentation.
}
\keyword{internal}
