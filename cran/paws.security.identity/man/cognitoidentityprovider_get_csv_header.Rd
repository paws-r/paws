% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_get_csv_header}
\alias{cognitoidentityprovider_get_csv_header}
\title{Gets the header information for the}
\usage{
cognitoidentityprovider_get_csv_header(UserPoolId)
}
\arguments{
\item{UserPoolId}{[required] The user pool ID for the user pool that the users are to be imported
into.}
}
\description{
Gets the header information for the .csv file to be used as input for
the user import job.
}
\section{Request syntax}{
\preformatted{svc$get_csv_header(
  UserPoolId = "string"
)
}
}

\keyword{internal}