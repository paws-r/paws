% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_create_provisioning_template_version}
\alias{iot_create_provisioning_template_version}
\title{Creates a new version of a fleet provisioning template}
\usage{
iot_create_provisioning_template_version(templateName, templateBody,
  setAsDefault)
}
\arguments{
\item{templateName}{[required] The name of the fleet provisioning template.}

\item{templateBody}{[required] The JSON formatted contents of the fleet provisioning template.}

\item{setAsDefault}{Sets a fleet provision template version as the default version.}
}
\value{
A list with the following syntax:\preformatted{list(
  templateArn = "string",
  templateName = "string",
  versionId = 123,
  isDefaultVersion = TRUE|FALSE
)
}
}
\description{
Creates a new version of a fleet provisioning template.
}
\section{Request syntax}{
\preformatted{svc$create_provisioning_template_version(
  templateName = "string",
  templateBody = "string",
  setAsDefault = TRUE|FALSE
)
}
}

\keyword{internal}
