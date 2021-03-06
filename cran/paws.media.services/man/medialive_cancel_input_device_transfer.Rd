% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/medialive_operations.R
\name{medialive_cancel_input_device_transfer}
\alias{medialive_cancel_input_device_transfer}
\title{Cancel an input device transfer that you have requested}
\usage{
medialive_cancel_input_device_transfer(InputDeviceId)
}
\arguments{
\item{InputDeviceId}{[required] The unique ID of the input device to cancel. For example,
hd-123456789abcdef.}
}
\value{
An empty list.
}
\description{
Cancel an input device transfer that you have requested.
}
\section{Request syntax}{
\preformatted{svc$cancel_input_device_transfer(
  InputDeviceId = "string"
)
}
}

\keyword{internal}
