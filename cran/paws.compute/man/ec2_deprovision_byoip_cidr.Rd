% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_deprovision_byoip_cidr}
\alias{ec2_deprovision_byoip_cidr}
\title{Releases the specified address range that you provisioned for use with
your AWS resources through bring your own IP addresses (BYOIP) and
deletes the corresponding address pool}
\usage{
ec2_deprovision_byoip_cidr(Cidr, DryRun)
}
\arguments{
\item{Cidr}{[required] The address range, in CIDR notation. The prefix must be the same prefix
that you specified when you provisioned the address range.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\value{
A list with the following syntax:\preformatted{list(
  ByoipCidr = list(
    Cidr = "string",
    Description = "string",
    StatusMessage = "string",
    State = "advertised"|"deprovisioned"|"failed-deprovision"|"failed-provision"|"pending-deprovision"|"pending-provision"|"provisioned"|"provisioned-not-publicly-advertisable"
  )
)
}
}
\description{
Releases the specified address range that you provisioned for use with
your AWS resources through bring your own IP addresses (BYOIP) and
deletes the corresponding address pool.

Before you can release an address range, you must stop advertising it
using \code{\link[=ec2_withdraw_byoip_cidr]{withdraw_byoip_cidr}} and you must not
have any IP addresses allocated from its address range.
}
\section{Request syntax}{
\preformatted{svc$deprovision_byoip_cidr(
  Cidr = "string",
  DryRun = TRUE|FALSE
)
}
}

\keyword{internal}
