% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_get_ops_item}
\alias{ssm_get_ops_item}
\title{Get information about an OpsItem by using the ID}
\usage{
ssm_get_ops_item(OpsItemId)
}
\arguments{
\item{OpsItemId}{[required] The ID of the OpsItem that you want to get.}
}
\description{
Get information about an OpsItem by using the ID. You must have
permission in AWS Identity and Access Management (IAM) to view
information about an OpsItem. For more information, see \href{http://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html}{Getting Started with OpsCenter}
in the \emph{AWS Systems Manager User Guide}.
}
\details{
Operations engineers and IT professionals use OpsCenter to view,
investigate, and remediate operational issues impacting the performance
and health of their AWS resources. For more information, see \href{http://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html}{AWS Systems Manager OpsCenter}
in the \emph{AWS Systems Manager User Guide}.
}
\section{Request syntax}{
\preformatted{svc$get_ops_item(
  OpsItemId = "string"
)
}
}

\keyword{internal}