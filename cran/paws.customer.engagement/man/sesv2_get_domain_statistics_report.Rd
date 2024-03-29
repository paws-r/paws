% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sesv2_operations.R
\name{sesv2_get_domain_statistics_report}
\alias{sesv2_get_domain_statistics_report}
\title{Retrieve inbox placement and engagement rates for the domains that you
use to send email}
\usage{
sesv2_get_domain_statistics_report(Domain, StartDate, EndDate)
}
\arguments{
\item{Domain}{[required] The domain that you want to obtain deliverability metrics for.}

\item{StartDate}{[required] The first day (in Unix time) that you want to obtain domain
deliverability metrics for.}

\item{EndDate}{[required] The last day (in Unix time) that you want to obtain domain
deliverability metrics for. The \code{EndDate} that you specify has to be
less than or equal to 30 days after the \code{StartDate}.}
}
\description{
Retrieve inbox placement and engagement rates for the domains that you use to send email.

See \url{https://www.paws-r-sdk.com/docs/sesv2_get_domain_statistics_report/} for full documentation.
}
\keyword{internal}
