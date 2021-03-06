% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iam_operations.R
\name{iam_delete_virtual_mfa_device}
\alias{iam_delete_virtual_mfa_device}
\title{Deletes a virtual MFA device}
\usage{
iam_delete_virtual_mfa_device(SerialNumber)
}
\arguments{
\item{SerialNumber}{[required] The serial number that uniquely identifies the MFA device. For virtual
MFA devices, the serial number is the same as the ARN.

This parameter allows (through its \href{https://en.wikipedia.org/wiki/Regex}{regex pattern}) a string of characters
consisting of upper and lowercase alphanumeric characters with no
spaces. You can also include any of the following characters: =,.@:/-}
}
\value{
An empty list.
}
\description{
Deletes a virtual MFA device.

You must deactivate a user's virtual MFA device before you can delete
it. For information about deactivating MFA devices, see
\code{\link[=iam_deactivate_mfa_device]{deactivate_mfa_device}}.
}
\section{Request syntax}{
\preformatted{svc$delete_virtual_mfa_device(
  SerialNumber = "string"
)
}
}

\examples{
\dontrun{
# The following delete-virtual-mfa-device command removes the specified
# MFA device from the current AWS account.
svc$delete_virtual_mfa_device(
  SerialNumber = "arn:aws:iam::123456789012:mfa/ExampleName"
)
}

}
\keyword{internal}
