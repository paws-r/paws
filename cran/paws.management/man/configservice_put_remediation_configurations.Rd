% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/configservice_operations.R
\name{configservice_put_remediation_configurations}
\alias{configservice_put_remediation_configurations}
\title{Adds or updates the remediation configuration with a specific Config
rule with the selected target or action}
\usage{
configservice_put_remediation_configurations(RemediationConfigurations)
}
\arguments{
\item{RemediationConfigurations}{[required] A list of remediation configuration objects.}
}
\description{
Adds or updates the remediation configuration with a specific Config rule with the selected target or action. The API creates the \code{RemediationConfiguration} object for the Config rule. The Config rule must already exist for you to add a remediation configuration. The target (SSM document) must exist and have permissions to use the target.

See \url{https://www.paws-r-sdk.com/docs/configservice_put_remediation_configurations/} for full documentation.
}
\keyword{internal}
