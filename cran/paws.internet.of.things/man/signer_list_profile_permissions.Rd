% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/signer_operations.R
\name{signer_list_profile_permissions}
\alias{signer_list_profile_permissions}
\title{Lists the cross-account permissions associated with a signing profile}
\usage{
signer_list_profile_permissions(profileName, nextToken)
}
\arguments{
\item{profileName}{[required] Name of the signing profile containing the cross-account permissions.}

\item{nextToken}{String for specifying the next set of paginated results.}
}
\value{
A list with the following syntax:\preformatted{list(
  revisionId = "string",
  policySizeBytes = 123,
  permissions = list(
    list(
      action = "string",
      principal = "string",
      statementId = "string",
      profileVersion = "string"
    )
  ),
  nextToken = "string"
)
}
}
\description{
Lists the cross-account permissions associated with a signing profile.
}
\section{Request syntax}{
\preformatted{svc$list_profile_permissions(
  profileName = "string",
  nextToken = "string"
)
}
}

\keyword{internal}
