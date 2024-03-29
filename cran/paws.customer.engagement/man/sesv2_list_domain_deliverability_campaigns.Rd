% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sesv2_operations.R
\name{sesv2_list_domain_deliverability_campaigns}
\alias{sesv2_list_domain_deliverability_campaigns}
\title{Retrieve deliverability data for all the campaigns that used a specific
domain to send email during a specified time range}
\usage{
sesv2_list_domain_deliverability_campaigns(
  StartDate,
  EndDate,
  SubscribedDomain,
  NextToken = NULL,
  PageSize = NULL
)
}
\arguments{
\item{StartDate}{[required] The first day that you want to obtain deliverability data for.}

\item{EndDate}{[required] The last day that you want to obtain deliverability data for. This value
has to be less than or equal to 30 days after the value of the
\code{StartDate} parameter.}

\item{SubscribedDomain}{[required] The domain to obtain deliverability data for.}

\item{NextToken}{A token that’s returned from a previous call to the
\code{\link[=sesv2_list_domain_deliverability_campaigns]{list_domain_deliverability_campaigns}}
operation. This token indicates the position of a campaign in the list
of campaigns.}

\item{PageSize}{The maximum number of results to include in response to a single call to
the
\code{\link[=sesv2_list_domain_deliverability_campaigns]{list_domain_deliverability_campaigns}}
operation. If the number of results is larger than the number that you
specify in this parameter, the response includes a \code{NextToken} element,
which you can use to obtain additional results.}
}
\description{
Retrieve deliverability data for all the campaigns that used a specific domain to send email during a specified time range. This data is available for a domain only if you enabled the Deliverability dashboard for the domain.

See \url{https://www.paws-r-sdk.com/docs/sesv2_list_domain_deliverability_campaigns/} for full documentation.
}
\keyword{internal}
