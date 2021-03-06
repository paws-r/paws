% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/robomaker_operations.R
\name{robomaker_create_deployment_job}
\alias{robomaker_create_deployment_job}
\title{Deploys a specific version of a robot application to robots in a fleet}
\usage{
robomaker_create_deployment_job(deploymentConfig, clientRequestToken,
  fleet, deploymentApplicationConfigs, tags)
}
\arguments{
\item{deploymentConfig}{The requested deployment configuration.}

\item{clientRequestToken}{[required] Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.}

\item{fleet}{[required] The Amazon Resource Name (ARN) of the fleet to deploy.}

\item{deploymentApplicationConfigs}{[required] The deployment application configuration.}

\item{tags}{A map that contains tag keys and tag values that are attached to the
deployment job.}
}
\value{
A list with the following syntax:\preformatted{list(
  arn = "string",
  fleet = "string",
  status = "Pending"|"Preparing"|"InProgress"|"Failed"|"Succeeded"|"Canceled",
  deploymentApplicationConfigs = list(
    list(
      application = "string",
      applicationVersion = "string",
      launchConfig = list(
        packageName = "string",
        preLaunchFile = "string",
        launchFile = "string",
        postLaunchFile = "string",
        environmentVariables = list(
          "string"
        )
      )
    )
  ),
  failureReason = "string",
  failureCode = "ResourceNotFound"|"EnvironmentSetupError"|"EtagMismatch"|"FailureThresholdBreached"|"RobotDeploymentAborted"|"RobotDeploymentNoResponse"|"RobotAgentConnectionTimeout"|"GreengrassDeploymentFailed"|"InvalidGreengrassGroup"|"MissingRobotArchitecture"|"MissingRobotApplicationArchitecture"|"MissingRobotDeploymentResource"|"GreengrassGroupVersionDoesNotExist"|"LambdaDeleted"|"ExtractingBundleFailure"|"PreLaunchFileFailure"|"PostLaunchFileFailure"|"BadPermissionError"|"DownloadConditionFailed"|"InternalServerError",
  createdAt = as.POSIXct(
    "2015-01-01"
  ),
  deploymentConfig = list(
    concurrentDeploymentPercentage = 123,
    failureThresholdPercentage = 123,
    robotDeploymentTimeoutInSeconds = 123,
    downloadConditionFile = list(
      bucket = "string",
      key = "string",
      etag = "string"
    )
  ),
  tags = list(
    "string"
  )
)
}
}
\description{
Deploys a specific version of a robot application to robots in a fleet.

The robot application must have a numbered \code{applicationVersion} for
consistency reasons. To create a new version, use
\code{\link[=robomaker_create_robot_application_version]{create_robot_application_version}}
or see \href{https://docs.aws.amazon.com/robomaker/latest/dg/create-robot-application-version.html}{Creating a Robot Application Version}.

After 90 days, deployment jobs expire and will be deleted. They will no
longer be accessible.
}
\section{Request syntax}{
\preformatted{svc$create_deployment_job(
  deploymentConfig = list(
    concurrentDeploymentPercentage = 123,
    failureThresholdPercentage = 123,
    robotDeploymentTimeoutInSeconds = 123,
    downloadConditionFile = list(
      bucket = "string",
      key = "string",
      etag = "string"
    )
  ),
  clientRequestToken = "string",
  fleet = "string",
  deploymentApplicationConfigs = list(
    list(
      application = "string",
      applicationVersion = "string",
      launchConfig = list(
        packageName = "string",
        preLaunchFile = "string",
        launchFile = "string",
        postLaunchFile = "string",
        environmentVariables = list(
          "string"
        )
      )
    )
  ),
  tags = list(
    "string"
  )
)
}
}

\keyword{internal}
