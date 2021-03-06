% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_delete_user_pool_client}
\alias{cognitoidentityprovider_delete_user_pool_client}
\title{Allows the developer to delete the user pool client}
\usage{
cognitoidentityprovider_delete_user_pool_client(UserPoolId, ClientId)
}
\arguments{
\item{UserPoolId}{[required] The user pool ID for the user pool where you want to delete the client.}

\item{ClientId}{[required] The app client ID of the app associated with the user pool.}
}
\value{
An empty list.
}
\description{
Allows the developer to delete the user pool client.
}
\section{Request syntax}{
\preformatted{svc$delete_user_pool_client(
  UserPoolId = "string",
  ClientId = "string"
)
}
}

\keyword{internal}
