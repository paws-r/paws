% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/proton_operations.R
\name{proton_update_environment}
\alias{proton_update_environment}
\title{Update an environment}
\usage{
proton_update_environment(
  codebuildRoleArn = NULL,
  componentRoleArn = NULL,
  deploymentType,
  description = NULL,
  environmentAccountConnectionId = NULL,
  name,
  protonServiceRoleArn = NULL,
  provisioningRepository = NULL,
  spec = NULL,
  templateMajorVersion = NULL,
  templateMinorVersion = NULL
)
}
\arguments{
\item{codebuildRoleArn}{The Amazon Resource Name (ARN) of the IAM service role that allows
Proton to provision infrastructure using CodeBuild-based provisioning on
your behalf.}

\item{componentRoleArn}{The Amazon Resource Name (ARN) of the IAM service role that Proton uses
when provisioning directly defined components in this environment. It
determines the scope of infrastructure that a component can provision.

The environment must have a \code{componentRoleArn} to allow directly defined
components to be associated with the environment.

For more information about components, see \href{https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html}{Proton components}
in the \emph{Proton User Guide}.}

\item{deploymentType}{[required] There are four modes for updating an environment. The \code{deploymentType}
field defines the mode.

\code{NONE}

In this mode, a deployment \emph{doesn't} occur. Only the requested metadata
parameters are updated.

\code{CURRENT_VERSION}

In this mode, the environment is deployed and updated with the new spec
that you provide. Only requested parameters are updated. \emph{Don’t} include
major or minor version parameters when you use this \code{deployment-type}.

\code{MINOR_VERSION}

In this mode, the environment is deployed and updated with the
published, recommended (latest) minor version of the current major
version in use, by default. You can also specify a different minor
version of the current major version in use.

\code{MAJOR_VERSION}

In this mode, the environment is deployed and updated with the
published, recommended (latest) major and minor version of the current
template, by default. You can also specify a different major version
that is higher than the major version in use and a minor version
(optional).}

\item{description}{A description of the environment update.}

\item{environmentAccountConnectionId}{The ID of the environment account connection.

You can only update to a new environment account connection if it was
created in the same environment account that the current environment
account connection was created in and is associated with the current
environment.}

\item{name}{[required] The name of the environment to update.}

\item{protonServiceRoleArn}{The Amazon Resource Name (ARN) of the Proton service role that allows
Proton to make API calls to other services your behalf.}

\item{provisioningRepository}{The linked repository that you use to host your rendered infrastructure
templates for self-managed provisioning. A linked repository is a
repository that has been registered with Proton. For more information,
see \code{\link[=proton_create_repository]{create_repository}}.}

\item{spec}{The formatted specification that defines the update.}

\item{templateMajorVersion}{The major version of the environment to update.}

\item{templateMinorVersion}{The minor version of the environment to update.}
}
\description{
Update an environment.

See \url{https://www.paws-r-sdk.com/docs/proton_update_environment/} for full documentation.
}
\keyword{internal}
