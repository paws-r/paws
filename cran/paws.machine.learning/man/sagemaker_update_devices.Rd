% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_update_devices}
\alias{sagemaker_update_devices}
\title{Updates one or more devices in a fleet}
\usage{
sagemaker_update_devices(DeviceFleetName, Devices)
}
\arguments{
\item{DeviceFleetName}{[required] The name of the fleet the devices belong to.}

\item{Devices}{[required] List of devices to register with Edge Manager agent.}
}
\value{
An empty list.
}
\description{
Updates one or more devices in a fleet.
}
\section{Request syntax}{
\preformatted{svc$update_devices(
  DeviceFleetName = "string",
  Devices = list(
    list(
      DeviceName = "string",
      Description = "string",
      IotThingName = "string"
    )
  )
)
}
}

\keyword{internal}
