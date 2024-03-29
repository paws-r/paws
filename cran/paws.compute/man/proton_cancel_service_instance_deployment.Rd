% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/proton_operations.R
\name{proton_cancel_service_instance_deployment}
\alias{proton_cancel_service_instance_deployment}
\title{Attempts to cancel a service instance deployment on an
UpdateServiceInstance action, if the deployment is IN_PROGRESS}
\usage{
proton_cancel_service_instance_deployment(serviceInstanceName, serviceName)
}
\arguments{
\item{serviceInstanceName}{[required] The name of the service instance with the deployment to cancel.}

\item{serviceName}{[required] The name of the service with the service instance deployment to cancel.}
}
\description{
Attempts to cancel a service instance deployment on an \code{\link[=proton_update_service_instance]{update_service_instance}} action, if the deployment is \code{IN_PROGRESS}. For more information, see \href{https://docs.aws.amazon.com/proton/latest/userguide/ag-svc-instance-update.html}{Update a service instance} in the \emph{Proton User guide}.

See \url{https://www.paws-r-sdk.com/docs/proton_cancel_service_instance_deployment/} for full documentation.
}
\keyword{internal}
