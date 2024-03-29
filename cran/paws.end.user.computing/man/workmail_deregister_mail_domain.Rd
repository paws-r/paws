% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workmail_operations.R
\name{workmail_deregister_mail_domain}
\alias{workmail_deregister_mail_domain}
\title{Removes a domain from WorkMail, stops email routing to WorkMail, and
removes the authorization allowing WorkMail use}
\usage{
workmail_deregister_mail_domain(OrganizationId, DomainName)
}
\arguments{
\item{OrganizationId}{[required] The WorkMail organization for which the domain will be deregistered.}

\item{DomainName}{[required] The domain to deregister in WorkMail and SES.}
}
\description{
Removes a domain from WorkMail, stops email routing to WorkMail, and removes the authorization allowing WorkMail use. SES keeps the domain because other applications may use it. You must first remove any email address used by WorkMail entities before you remove the domain.

See \url{https://www.paws-r-sdk.com/docs/workmail_deregister_mail_domain/} for full documentation.
}
\keyword{internal}
