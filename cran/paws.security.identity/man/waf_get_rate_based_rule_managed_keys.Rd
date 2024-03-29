% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/waf_operations.R
\name{waf_get_rate_based_rule_managed_keys}
\alias{waf_get_rate_based_rule_managed_keys}
\title{This is AWS WAF Classic documentation}
\usage{
waf_get_rate_based_rule_managed_keys(RuleId, NextMarker = NULL)
}
\arguments{
\item{RuleId}{[required] The \code{RuleId} of the RateBasedRule for which you want to get a list of
\code{ManagedKeys}. \code{RuleId} is returned by
\code{\link[=waf_create_rate_based_rule]{create_rate_based_rule}} and by
\code{\link[=waf_list_rate_based_rules]{list_rate_based_rules}}.}

\item{NextMarker}{A null value and not currently used. Do not include this in your
request.}
}
\description{
This is \strong{AWS WAF Classic} documentation. For more information, see \href{https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html}{AWS WAF Classic} in the developer guide.

See \url{https://www.paws-r-sdk.com/docs/waf_get_rate_based_rule_managed_keys/} for full documentation.
}
\keyword{internal}
