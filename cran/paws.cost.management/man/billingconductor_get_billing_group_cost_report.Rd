% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/billingconductor_operations.R
\name{billingconductor_get_billing_group_cost_report}
\alias{billingconductor_get_billing_group_cost_report}
\title{Retrieves the margin summary report, which includes the Amazon Web
Services cost and charged amount (pro forma cost) by Amazon Web Service
for a specific billing group}
\usage{
billingconductor_get_billing_group_cost_report(
  Arn,
  BillingPeriodRange = NULL,
  GroupBy = NULL,
  MaxResults = NULL,
  NextToken = NULL
)
}
\arguments{
\item{Arn}{[required] The Amazon Resource Number (ARN) that uniquely identifies the billing
group.}

\item{BillingPeriodRange}{A time range for which the margin summary is effective. You can specify
up to 12 months.}

\item{GroupBy}{A list of strings that specify the attributes that are used to break
down costs in the margin summary reports for the billing group. For
example, you can view your costs by the Amazon Web Service name or the
billing period.}

\item{MaxResults}{The maximum number of margin summary reports to retrieve.}

\item{NextToken}{The pagination token used on subsequent calls to get reports.}
}
\description{
Retrieves the margin summary report, which includes the Amazon Web Services cost and charged amount (pro forma cost) by Amazon Web Service for a specific billing group.

See \url{https://www.paws-r-sdk.com/docs/billingconductor_get_billing_group_cost_report/} for full documentation.
}
\keyword{internal}
