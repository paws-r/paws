% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/medialive_operations.R
\name{medialive_accept_input_device_transfer}
\alias{medialive_accept_input_device_transfer}
\title{Accept an incoming input device transfer}
\usage{
medialive_accept_input_device_transfer(InputDeviceId)
}
\arguments{
\item{InputDeviceId}{[required] The unique ID of the input device to accept. For example,
hd-123456789abcdef.}
}
\value{
An empty list.
}
\description{
Accept an incoming input device transfer. The ownership of the device
will transfer to your AWS account.
}
\section{Request syntax}{
\preformatted{svc$accept_input_device_transfer(
  InputDeviceId = "string"
)
}
}

\keyword{internal}
