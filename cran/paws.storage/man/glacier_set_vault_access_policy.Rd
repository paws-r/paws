% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glacier_operations.R
\name{glacier_set_vault_access_policy}
\alias{glacier_set_vault_access_policy}
\title{This operation configures an access policy for a vault and will
overwrite an existing policy}
\usage{
glacier_set_vault_access_policy(accountId, vaultName, policy)
}
\arguments{
\item{accountId}{[required] The \code{AccountId} value is the AWS account ID of the account that owns the
vault. You can either specify an AWS account ID or optionally a single
'\code{-}' (hyphen), in which case Amazon Glacier uses the AWS account ID
associated with the credentials used to sign the request. If you use an
account ID, do not include any hyphens ('-') in the ID.}

\item{vaultName}{[required] The name of the vault.}

\item{policy}{The vault access policy as a JSON string.}
}
\description{
This operation configures an access policy for a vault and will
overwrite an existing policy. To configure a vault access policy, send a
PUT request to the \code{access-policy} subresource of the vault. An access
policy is specific to a vault and is also called a vault subresource.
You can set one access policy per vault and the policy can be up to 20
KB in size. For more information about vault access policies, see
\href{http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html}{Amazon Glacier Access Control with Vault Access Policies}.
}
\section{Request syntax}{
\preformatted{svc$set_vault_access_policy(
  accountId = "string",
  vaultName = "string",
  policy = list(
    Policy = "string"
  )
)
}
}

\examples{
# The example configures an access policy for the vault named
# examplevault.
\donttest{svc$set_vault_access_policy(
  accountId = "-",
  policy = list(
    Policy = "{\\"Version\\":\\"2012-10-17\\",\\"Statement\\":[{\\"Sid\\":..."
  ),
  vaultName = "examplevault"
)}

}
\keyword{internal}