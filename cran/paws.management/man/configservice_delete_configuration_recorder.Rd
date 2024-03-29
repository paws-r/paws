% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/configservice_operations.R
\name{configservice_delete_configuration_recorder}
\alias{configservice_delete_configuration_recorder}
\title{Deletes the configuration recorder}
\usage{
configservice_delete_configuration_recorder(ConfigurationRecorderName)
}
\arguments{
\item{ConfigurationRecorderName}{[required] The name of the configuration recorder to be deleted. You can retrieve
the name of your configuration recorder by using the
\code{\link[=configservice_describe_configuration_recorders]{describe_configuration_recorders}}
action.}
}
\description{
Deletes the configuration recorder.

See \url{https://www.paws-r-sdk.com/docs/configservice_delete_configuration_recorder/} for full documentation.
}
\keyword{internal}
