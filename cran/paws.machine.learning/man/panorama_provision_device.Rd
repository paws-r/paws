% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/panorama_operations.R
\name{panorama_provision_device}
\alias{panorama_provision_device}
\title{Creates a device and returns a configuration archive}
\usage{
panorama_provision_device(
  Description = NULL,
  Name,
  NetworkingConfiguration = NULL,
  Tags = NULL
)
}
\arguments{
\item{Description}{A description for the device.}

\item{Name}{[required] A name for the device.}

\item{NetworkingConfiguration}{A networking configuration for the device.}

\item{Tags}{Tags for the device.}
}
\description{
Creates a device and returns a configuration archive. The configuration archive is a ZIP file that contains a provisioning certificate that is valid for 5 minutes. Name the configuration archive \code{certificates-omni_device-name.zip} and transfer it to the device within 5 minutes. Use the included USB storage device and connect it to the USB 3.0 port next to the HDMI output.

See \url{https://www.paws-r-sdk.com/docs/panorama_provision_device/} for full documentation.
}
\keyword{internal}
