% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codepipeline_operations.R
\name{codepipeline_create_pipeline}
\alias{codepipeline_create_pipeline}
\title{Creates a pipeline}
\usage{
codepipeline_create_pipeline(pipeline, tags)
}
\arguments{
\item{pipeline}{[required] Represents the structure of actions and stages to be performed in the
pipeline.}

\item{tags}{The tags for the pipeline.}
}
\value{
A list with the following syntax:\preformatted{list(
  pipeline = list(
    name = "string",
    roleArn = "string",
    artifactStore = list(
      type = "S3",
      location = "string",
      encryptionKey = list(
        id = "string",
        type = "KMS"
      )
    ),
    artifactStores = list(
      list(
        type = "S3",
        location = "string",
        encryptionKey = list(
          id = "string",
          type = "KMS"
        )
      )
    ),
    stages = list(
      list(
        name = "string",
        blockers = list(
          list(
            name = "string",
            type = "Schedule"
          )
        ),
        actions = list(
          list(
            name = "string",
            actionTypeId = list(
              category = "Source"|"Build"|"Deploy"|"Test"|"Invoke"|"Approval",
              owner = "AWS"|"ThirdParty"|"Custom",
              provider = "string",
              version = "string"
            ),
            runOrder = 123,
            configuration = list(
              "string"
            ),
            outputArtifacts = list(
              list(
                name = "string"
              )
            ),
            inputArtifacts = list(
              list(
                name = "string"
              )
            ),
            roleArn = "string",
            region = "string",
            namespace = "string"
          )
        )
      )
    ),
    version = 123
  ),
  tags = list(
    list(
      key = "string",
      value = "string"
    )
  )
)
}
}
\description{
Creates a pipeline.

In the pipeline structure, you must include either \code{artifactStore} or
\code{artifactStores} in your pipeline, but you cannot use both. If you
create a cross-region action in your pipeline, you must use
\code{artifactStores}.
}
\section{Request syntax}{
\preformatted{svc$create_pipeline(
  pipeline = list(
    name = "string",
    roleArn = "string",
    artifactStore = list(
      type = "S3",
      location = "string",
      encryptionKey = list(
        id = "string",
        type = "KMS"
      )
    ),
    artifactStores = list(
      list(
        type = "S3",
        location = "string",
        encryptionKey = list(
          id = "string",
          type = "KMS"
        )
      )
    ),
    stages = list(
      list(
        name = "string",
        blockers = list(
          list(
            name = "string",
            type = "Schedule"
          )
        ),
        actions = list(
          list(
            name = "string",
            actionTypeId = list(
              category = "Source"|"Build"|"Deploy"|"Test"|"Invoke"|"Approval",
              owner = "AWS"|"ThirdParty"|"Custom",
              provider = "string",
              version = "string"
            ),
            runOrder = 123,
            configuration = list(
              "string"
            ),
            outputArtifacts = list(
              list(
                name = "string"
              )
            ),
            inputArtifacts = list(
              list(
                name = "string"
              )
            ),
            roleArn = "string",
            region = "string",
            namespace = "string"
          )
        )
      )
    ),
    version = 123
  ),
  tags = list(
    list(
      key = "string",
      value = "string"
    )
  )
)
}
}

\keyword{internal}
