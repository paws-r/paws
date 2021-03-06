% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eks_operations.R
\name{eks_delete_fargate_profile}
\alias{eks_delete_fargate_profile}
\title{Deletes an AWS Fargate profile}
\usage{
eks_delete_fargate_profile(clusterName, fargateProfileName)
}
\arguments{
\item{clusterName}{[required] The name of the Amazon EKS cluster associated with the Fargate profile
to delete.}

\item{fargateProfileName}{[required] The name of the Fargate profile to delete.}
}
\value{
A list with the following syntax:\preformatted{list(
  fargateProfile = list(
    fargateProfileName = "string",
    fargateProfileArn = "string",
    clusterName = "string",
    createdAt = as.POSIXct(
      "2015-01-01"
    ),
    podExecutionRoleArn = "string",
    subnets = list(
      "string"
    ),
    selectors = list(
      list(
        namespace = "string",
        labels = list(
          "string"
        )
      )
    ),
    status = "CREATING"|"ACTIVE"|"DELETING"|"CREATE_FAILED"|"DELETE_FAILED",
    tags = list(
      "string"
    )
  )
)
}
}
\description{
Deletes an AWS Fargate profile.

When you delete a Fargate profile, any pods running on Fargate that were
created with the profile are deleted. If those pods match another
Fargate profile, then they are scheduled on Fargate with that profile.
If they no longer match any Fargate profiles, then they are not
scheduled on Fargate and they may remain in a pending state.

Only one Fargate profile in a cluster can be in the \code{DELETING} status at
a time. You must wait for a Fargate profile to finish deleting before
you can delete any other profiles in that cluster.
}
\section{Request syntax}{
\preformatted{svc$delete_fargate_profile(
  clusterName = "string",
  fargateProfileName = "string"
)
}
}

\keyword{internal}
