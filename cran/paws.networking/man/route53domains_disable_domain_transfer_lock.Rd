% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53domains_operations.R
\name{route53domains_disable_domain_transfer_lock}
\alias{route53domains_disable_domain_transfer_lock}
\title{This operation removes the transfer lock on the domain (specifically the
clientTransferProhibited status) to allow domain transfers}
\usage{
route53domains_disable_domain_transfer_lock(DomainName)
}
\arguments{
\item{DomainName}{[required] The name of the domain that you want to remove the transfer lock for.}
}
\description{
This operation removes the transfer lock on the domain (specifically the \code{clientTransferProhibited} status) to allow domain transfers. We recommend you refrain from performing this action unless you intend to transfer the domain to a different registrar. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.

See \url{https://www.paws-r-sdk.com/docs/route53domains_disable_domain_transfer_lock/} for full documentation.
}
\keyword{internal}
