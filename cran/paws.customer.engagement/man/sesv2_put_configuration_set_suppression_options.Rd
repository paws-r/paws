% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sesv2_operations.R
\name{sesv2_put_configuration_set_suppression_options}
\alias{sesv2_put_configuration_set_suppression_options}
\title{Specify the account suppression list preferences for a configuration set}
\usage{
sesv2_put_configuration_set_suppression_options(
  ConfigurationSetName,
  SuppressedReasons = NULL
)
}
\arguments{
\item{ConfigurationSetName}{[required] The name of the configuration set to change the suppression list
preferences for.}

\item{SuppressedReasons}{A list that contains the reasons that email addresses are automatically
added to the suppression list for your account. This list can contain
any or all of the following:
\itemize{
\item \code{COMPLAINT} – Amazon SES adds an email address to the suppression
list for your account when a message sent to that address results in
a complaint.
\item \code{BOUNCE} – Amazon SES adds an email address to the suppression list
for your account when a message sent to that address results in a
hard bounce.
}}
}
\description{
Specify the account suppression list preferences for a configuration set.

See \url{https://www.paws-r-sdk.com/docs/sesv2_put_configuration_set_suppression_options/} for full documentation.
}
\keyword{internal}
