% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glacier_operations.R
\name{glacier_list_provisioned_capacity}
\alias{glacier_list_provisioned_capacity}
\title{This operation lists the provisioned capacity units for the specified
AWS account}
\usage{
glacier_list_provisioned_capacity(accountId)
}
\arguments{
\item{accountId}{[required] The AWS account ID of the account that owns the vault. You can either
specify an AWS account ID or optionally a single '-' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, don't
include any hyphens ('-') in the ID.}
}
\value{
A list with the following syntax:\preformatted{list(
  ProvisionedCapacityList = list(
    list(
      CapacityId = "string",
      StartDate = "string",
      ExpirationDate = "string"
    )
  )
)
}
}
\description{
This operation lists the provisioned capacity units for the specified
AWS account.
}
\section{Request syntax}{
\preformatted{svc$list_provisioned_capacity(
  accountId = "string"
)
}
}

\examples{
\dontrun{
# The example lists the provisioned capacity units for an account.
svc$list_provisioned_capacity(
  accountId = "-"
)
}

}
\keyword{internal}
