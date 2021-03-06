% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/devicefarm_operations.R
\name{devicefarm_update_device_instance}
\alias{devicefarm_update_device_instance}
\title{Updates information about a private device instance}
\usage{
devicefarm_update_device_instance(arn, profileArn, labels)
}
\arguments{
\item{arn}{[required] The Amazon Resource Name (ARN) of the device instance.}

\item{profileArn}{The ARN of the profile that you want to associate with the device
instance.}

\item{labels}{An array of strings that you want to associate with the device instance.}
}
\value{
A list with the following syntax:\preformatted{list(
  deviceInstance = list(
    arn = "string",
    deviceArn = "string",
    labels = list(
      "string"
    ),
    status = "IN_USE"|"PREPARING"|"AVAILABLE"|"NOT_AVAILABLE",
    udid = "string",
    instanceProfile = list(
      arn = "string",
      packageCleanup = TRUE|FALSE,
      excludeAppPackagesFromCleanup = list(
        "string"
      ),
      rebootAfterUse = TRUE|FALSE,
      name = "string",
      description = "string"
    )
  )
)
}
}
\description{
Updates information about a private device instance.
}
\section{Request syntax}{
\preformatted{svc$update_device_instance(
  arn = "string",
  profileArn = "string",
  labels = list(
    "string"
  )
)
}
}

\keyword{internal}
