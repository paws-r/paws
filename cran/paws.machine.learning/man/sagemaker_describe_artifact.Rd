% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_describe_artifact}
\alias{sagemaker_describe_artifact}
\title{Describes an artifact}
\usage{
sagemaker_describe_artifact(ArtifactArn)
}
\arguments{
\item{ArtifactArn}{[required] The Amazon Resource Name (ARN) of the artifact to describe.}
}
\value{
A list with the following syntax:\preformatted{list(
  ArtifactName = "string",
  ArtifactArn = "string",
  Source = list(
    SourceUri = "string",
    SourceTypes = list(
      list(
        SourceIdType = "MD5Hash"|"S3ETag"|"S3Version"|"Custom",
        Value = "string"
      )
    )
  ),
  ArtifactType = "string",
  Properties = list(
    "string"
  ),
  CreationTime = as.POSIXct(
    "2015-01-01"
  ),
  CreatedBy = list(
    UserProfileArn = "string",
    UserProfileName = "string",
    DomainId = "string"
  ),
  LastModifiedTime = as.POSIXct(
    "2015-01-01"
  ),
  LastModifiedBy = list(
    UserProfileArn = "string",
    UserProfileName = "string",
    DomainId = "string"
  ),
  MetadataProperties = list(
    CommitId = "string",
    Repository = "string",
    GeneratedBy = "string",
    ProjectId = "string"
  )
)
}
}
\description{
Describes an artifact.
}
\section{Request syntax}{
\preformatted{svc$describe_artifact(
  ArtifactArn = "string"
)
}
}

\keyword{internal}
