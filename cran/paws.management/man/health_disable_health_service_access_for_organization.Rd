% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/health_operations.R
\name{health_disable_health_service_access_for_organization}
\alias{health_disable_health_service_access_for_organization}
\title{Disables AWS Health from working with AWS Organizations}
\usage{
health_disable_health_service_access_for_organization()
}
\value{
An empty list.
}
\description{
Disables AWS Health from working with AWS Organizations. To call this
operation, you must sign in as an AWS Identity and Access Management
(IAM) user, assume an IAM role, or sign in as the root user (not
recommended) in the organization's master AWS account. For more
information, see \href{https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html}{Aggregating AWS Health events}
in the \emph{AWS Health User Guide}.

This operation doesn't remove the service-linked role (SLR) from the AWS
master account in your organization. You must use the IAM console, API,
or AWS Command Line Interface (AWS CLI) to remove the SLR. For more
information, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html#delete-service-linked-role}{Deleting a Service-Linked Role}
in the \emph{IAM User Guide}.

You can also disable the organizational feature by using the
Organizations
\href{https://docs.aws.amazon.com/organizations/latest/APIReference/API_DisableAWSServiceAccess.html}{DisableAWSServiceAccess}
API operation. After you call this operation, AWS Health stops
aggregating events for all other AWS accounts in your organization. If
you call the AWS Health API operations for organizational view, AWS
Health returns an error. AWS Health continues to aggregate health events
for your AWS account.
}
\keyword{internal}
