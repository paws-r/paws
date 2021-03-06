% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appsync_operations.R
\name{appsync_get_graphql_api}
\alias{appsync_get_graphql_api}
\title{Retrieves a GraphqlApi object}
\usage{
appsync_get_graphql_api(apiId)
}
\arguments{
\item{apiId}{[required] The API ID for the GraphQL API.}
}
\value{
A list with the following syntax:\preformatted{list(
  graphqlApi = list(
    name = "string",
    apiId = "string",
    authenticationType = "API_KEY"|"AWS_IAM"|"AMAZON_COGNITO_USER_POOLS"|"OPENID_CONNECT",
    logConfig = list(
      fieldLogLevel = "NONE"|"ERROR"|"ALL",
      cloudWatchLogsRoleArn = "string",
      excludeVerboseContent = TRUE|FALSE
    ),
    userPoolConfig = list(
      userPoolId = "string",
      awsRegion = "string",
      defaultAction = "ALLOW"|"DENY",
      appIdClientRegex = "string"
    ),
    openIDConnectConfig = list(
      issuer = "string",
      clientId = "string",
      iatTTL = 123,
      authTTL = 123
    ),
    arn = "string",
    uris = list(
      "string"
    ),
    tags = list(
      "string"
    ),
    additionalAuthenticationProviders = list(
      list(
        authenticationType = "API_KEY"|"AWS_IAM"|"AMAZON_COGNITO_USER_POOLS"|"OPENID_CONNECT",
        openIDConnectConfig = list(
          issuer = "string",
          clientId = "string",
          iatTTL = 123,
          authTTL = 123
        ),
        userPoolConfig = list(
          userPoolId = "string",
          awsRegion = "string",
          appIdClientRegex = "string"
        )
      )
    ),
    xrayEnabled = TRUE|FALSE,
    wafWebAclArn = "string"
  )
)
}
}
\description{
Retrieves a \code{GraphqlApi} object.
}
\section{Request syntax}{
\preformatted{svc$get_graphql_api(
  apiId = "string"
)
}
}

\keyword{internal}
