% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/support_operations.R
\name{support_describe_supported_languages}
\alias{support_describe_supported_languages}
\title{Returns a list of supported languages for a specified categoryCode,
issueType and serviceCode}
\usage{
support_describe_supported_languages(issueType, serviceCode, categoryCode)
}
\arguments{
\item{issueType}{[required] The type of issue for the case. You can specify \code{customer-service} or
\code{technical}.}

\item{serviceCode}{[required] The code for the Amazon Web Services service. You can use the
\code{\link[=support_describe_services]{describe_services}} operation to get the
possible \code{serviceCode} values.}

\item{categoryCode}{[required] The category of problem for the support case. You also use the
\code{\link[=support_describe_services]{describe_services}} operation to get the
category code for a service. Each Amazon Web Services service defines
its own set of category codes.}
}
\description{
Returns a list of supported languages for a specified \code{categoryCode}, \code{issueType} and \code{serviceCode}. The returned supported languages will include a ISO 639-1 code for the \code{language}, and the language display name.

See \url{https://www.paws-r-sdk.com/docs/support_describe_supported_languages/} for full documentation.
}
\keyword{internal}
