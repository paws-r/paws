% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/robomaker_operations.R
\name{robomaker_describe_simulation_job_batch}
\alias{robomaker_describe_simulation_job_batch}
\title{Describes a simulation job batch}
\usage{
robomaker_describe_simulation_job_batch(batch)
}
\arguments{
\item{batch}{[required] The id of the batch to describe.}
}
\value{
A list with the following syntax:\preformatted{list(
  arn = "string",
  status = "Pending"|"InProgress"|"Failed"|"Completed"|"Canceled"|"Canceling"|"Completing"|"TimingOut"|"TimedOut",
  lastUpdatedAt = as.POSIXct(
    "2015-01-01"
  ),
  createdAt = as.POSIXct(
    "2015-01-01"
  ),
  clientRequestToken = "string",
  batchPolicy = list(
    timeoutInSeconds = 123,
    maxConcurrency = 123
  ),
  failureCode = "InternalServiceError",
  failureReason = "string",
  failedRequests = list(
    list(
      request = list(
        outputLocation = list(
          s3Bucket = "string",
          s3Prefix = "string"
        ),
        loggingConfig = list(
          recordAllRosTopics = TRUE|FALSE
        ),
        maxJobDurationInSeconds = 123,
        iamRole = "string",
        failureBehavior = "Fail"|"Continue",
        useDefaultApplications = TRUE|FALSE,
        robotApplications = list(
          list(
            application = "string",
            applicationVersion = "string",
            launchConfig = list(
              packageName = "string",
              launchFile = "string",
              environmentVariables = list(
                "string"
              ),
              portForwardingConfig = list(
                portMappings = list(
                  list(
                    jobPort = 123,
                    applicationPort = 123,
                    enableOnPublicIp = TRUE|FALSE
                  )
                )
              ),
              streamUI = TRUE|FALSE
            )
          )
        ),
        simulationApplications = list(
          list(
            application = "string",
            applicationVersion = "string",
            launchConfig = list(
              packageName = "string",
              launchFile = "string",
              environmentVariables = list(
                "string"
              ),
              portForwardingConfig = list(
                portMappings = list(
                  list(
                    jobPort = 123,
                    applicationPort = 123,
                    enableOnPublicIp = TRUE|FALSE
                  )
                )
              ),
              streamUI = TRUE|FALSE
            ),
            worldConfigs = list(
              list(
                world = "string"
              )
            )
          )
        ),
        dataSources = list(
          list(
            name = "string",
            s3Bucket = "string",
            s3Keys = list(
              "string"
            )
          )
        ),
        vpcConfig = list(
          subnets = list(
            "string"
          ),
          securityGroups = list(
            "string"
          ),
          assignPublicIp = TRUE|FALSE
        ),
        compute = list(
          simulationUnitLimit = 123
        ),
        tags = list(
          "string"
        )
      ),
      failureReason = "string",
      failureCode = "InternalServiceError"|"RobotApplicationCrash"|"SimulationApplicationCrash"|"BadPermissionsRobotApplication"|"BadPermissionsSimulationApplication"|"BadPermissionsS3Object"|"BadPermissionsS3Output"|"BadPermissionsCloudwatchLogs"|"SubnetIpLimitExceeded"|"ENILimitExceeded"|"BadPermissionsUserCredentials"|"InvalidBundleRobotApplication"|"InvalidBundleSimulationApplication"|"InvalidS3Resource"|"LimitExceeded"|"MismatchedEtag"|"RobotApplicationVersionMismatchedEtag"|"SimulationApplicationVersionMismatchedEtag"|"ResourceNotFound"|"RequestThrottled"|"BatchTimedOut"|"BatchCanceled"|"InvalidInput"|"WrongRegionS3Bucket"|"WrongRegionS3Output"|"WrongRegionRobotApplication"|"WrongRegionSimulationApplication",
      failedAt = as.POSIXct(
        "2015-01-01"
      )
    )
  ),
  pendingRequests = list(
    list(
      outputLocation = list(
        s3Bucket = "string",
        s3Prefix = "string"
      ),
      loggingConfig = list(
        recordAllRosTopics = TRUE|FALSE
      ),
      maxJobDurationInSeconds = 123,
      iamRole = "string",
      failureBehavior = "Fail"|"Continue",
      useDefaultApplications = TRUE|FALSE,
      robotApplications = list(
        list(
          application = "string",
          applicationVersion = "string",
          launchConfig = list(
            packageName = "string",
            launchFile = "string",
            environmentVariables = list(
              "string"
            ),
            portForwardingConfig = list(
              portMappings = list(
                list(
                  jobPort = 123,
                  applicationPort = 123,
                  enableOnPublicIp = TRUE|FALSE
                )
              )
            ),
            streamUI = TRUE|FALSE
          )
        )
      ),
      simulationApplications = list(
        list(
          application = "string",
          applicationVersion = "string",
          launchConfig = list(
            packageName = "string",
            launchFile = "string",
            environmentVariables = list(
              "string"
            ),
            portForwardingConfig = list(
              portMappings = list(
                list(
                  jobPort = 123,
                  applicationPort = 123,
                  enableOnPublicIp = TRUE|FALSE
                )
              )
            ),
            streamUI = TRUE|FALSE
          ),
          worldConfigs = list(
            list(
              world = "string"
            )
          )
        )
      ),
      dataSources = list(
        list(
          name = "string",
          s3Bucket = "string",
          s3Keys = list(
            "string"
          )
        )
      ),
      vpcConfig = list(
        subnets = list(
          "string"
        ),
        securityGroups = list(
          "string"
        ),
        assignPublicIp = TRUE|FALSE
      ),
      compute = list(
        simulationUnitLimit = 123
      ),
      tags = list(
        "string"
      )
    )
  ),
  createdRequests = list(
    list(
      arn = "string",
      lastUpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      name = "string",
      status = "Pending"|"Preparing"|"Running"|"Restarting"|"Completed"|"Failed"|"RunningFailed"|"Terminating"|"Terminated"|"Canceled",
      simulationApplicationNames = list(
        "string"
      ),
      robotApplicationNames = list(
        "string"
      ),
      dataSourceNames = list(
        "string"
      )
    )
  ),
  tags = list(
    "string"
  )
)
}
}
\description{
Describes a simulation job batch.
}
\section{Request syntax}{
\preformatted{svc$describe_simulation_job_batch(
  batch = "string"
)
}
}

\keyword{internal}
