% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigatewayv2_operations.R
\name{apigatewayv2_delete_access_log_settings}
\alias{apigatewayv2_delete_access_log_settings}
\title{Deletes the AccessLogSettings for a Stage}
\usage{
apigatewayv2_delete_access_log_settings(ApiId, StageName)
}
\arguments{
\item{ApiId}{[required] The API identifier.}

\item{StageName}{[required] The stage name. Stage names can only contain alphanumeric characters,
hyphens, and underscores. Maximum length is 128 characters.}
}
\value{
An empty list.
}
\description{
Deletes the AccessLogSettings for a Stage. To disable access logging for
a Stage, delete its AccessLogSettings.
}
\section{Request syntax}{
\preformatted{svc$delete_access_log_settings(
  ApiId = "string",
  StageName = "string"
)
}
}

\keyword{internal}
