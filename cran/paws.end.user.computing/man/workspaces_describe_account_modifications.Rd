% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workspaces_operations.R
\name{workspaces_describe_account_modifications}
\alias{workspaces_describe_account_modifications}
\title{Retrieves a list that describes modifications to the configuration of
bring your own license (BYOL) for the specified account}
\usage{
workspaces_describe_account_modifications(NextToken)
}
\arguments{
\item{NextToken}{If you received a \code{NextToken} from a previous call that was paginated,
provide this token to receive the next set of results.}
}
\description{
Retrieves a list that describes modifications to the configuration of
bring your own license (BYOL) for the specified account.
}
\section{Request syntax}{
\preformatted{svc$describe_account_modifications(
  NextToken = "string"
)
}
}

\keyword{internal}