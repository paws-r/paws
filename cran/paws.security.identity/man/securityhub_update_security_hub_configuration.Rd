% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/securityhub_operations.R
\name{securityhub_update_security_hub_configuration}
\alias{securityhub_update_security_hub_configuration}
\title{Updates configuration options for Security Hub}
\usage{
securityhub_update_security_hub_configuration(AutoEnableControls)
}
\arguments{
\item{AutoEnableControls}{Whether to automatically enable new controls when they are added to
standards that are enabled.

By default, this is set to \code{true}, and new controls are enabled
automatically. To not automatically enable new controls, set this to
\code{false}.}
}
\value{
An empty list.
}
\description{
Updates configuration options for Security Hub.
}
\section{Request syntax}{
\preformatted{svc$update_security_hub_configuration(
  AutoEnableControls = TRUE|FALSE
)
}
}

\keyword{internal}
