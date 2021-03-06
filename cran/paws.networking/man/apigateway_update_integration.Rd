% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_update_integration}
\alias{apigateway_update_integration}
\title{Represents an update integration}
\usage{
apigateway_update_integration(restApiId, resourceId, httpMethod,
  patchOperations)
}
\arguments{
\item{restApiId}{[required] [Required] The string identifier of the associated RestApi.}

\item{resourceId}{[required] [Required] Represents an update integration request's resource
identifier.}

\item{httpMethod}{[required] [Required] Represents an update integration request's HTTP method.}

\item{patchOperations}{A list of update operations to be applied to the specified resource and
in the order specified in this list.}
}
\value{
A list with the following syntax:\preformatted{list(
  type = "HTTP"|"AWS"|"MOCK"|"HTTP_PROXY"|"AWS_PROXY",
  httpMethod = "string",
  uri = "string",
  connectionType = "INTERNET"|"VPC_LINK",
  connectionId = "string",
  credentials = "string",
  requestParameters = list(
    "string"
  ),
  requestTemplates = list(
    "string"
  ),
  passthroughBehavior = "string",
  contentHandling = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT",
  timeoutInMillis = 123,
  cacheNamespace = "string",
  cacheKeyParameters = list(
    "string"
  ),
  integrationResponses = list(
    list(
      statusCode = "string",
      selectionPattern = "string",
      responseParameters = list(
        "string"
      ),
      responseTemplates = list(
        "string"
      ),
      contentHandling = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT"
    )
  ),
  tlsConfig = list(
    insecureSkipVerification = TRUE|FALSE
  )
)
}
}
\description{
Represents an update integration.
}
\section{Request syntax}{
\preformatted{svc$update_integration(
  restApiId = "string",
  resourceId = "string",
  httpMethod = "string",
  patchOperations = list(
    list(
      op = "add"|"remove"|"replace"|"move"|"copy"|"test",
      path = "string",
      value = "string",
      from = "string"
    )
  )
)
}
}

\keyword{internal}
