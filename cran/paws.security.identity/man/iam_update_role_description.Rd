% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iam_operations.R
\name{iam_update_role_description}
\alias{iam_update_role_description}
\title{Use UpdateRole instead}
\usage{
iam_update_role_description(RoleName, Description)
}
\arguments{
\item{RoleName}{[required] The name of the role that you want to modify.}

\item{Description}{[required] The new description that you want to apply to the specified role.}
}
\description{
Use UpdateRole instead.
}
\details{
Modifies only the description of a role. This operation performs the
same function as the \code{Description} parameter in the \code{UpdateRole}
operation.
}
\section{Request syntax}{
\preformatted{svc$update_role_description(
  RoleName = "string",
  Description = "string"
)
}
}

\keyword{internal}