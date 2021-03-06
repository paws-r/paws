% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iam_operations.R
\name{iam_list_ssh_public_keys}
\alias{iam_list_ssh_public_keys}
\title{Returns information about the SSH public keys associated with the
specified IAM user}
\usage{
iam_list_ssh_public_keys(UserName, Marker, MaxItems)
}
\arguments{
\item{UserName}{The name of the IAM user to list SSH public keys for. If none is
specified, the \code{UserName} field is determined implicitly based on the
AWS access key used to sign the request.

This parameter allows (through its \href{https://en.wikipedia.org/wiki/Regex}{regex pattern}) a string of characters
consisting of upper and lowercase alphanumeric characters with no
spaces. You can also include any of the following characters: _+=,.@-}

\item{Marker}{Use this parameter only when paginating results and only after you
receive a response indicating that the results are truncated. Set it to
the value of the \code{Marker} element in the response that you received to
indicate where the next call should start.}

\item{MaxItems}{Use this only when paginating results to indicate the maximum number of
items you want in the response. If additional items exist beyond the
maximum you specify, the \code{IsTruncated} response element is \code{true}.

If you do not include this parameter, the number of items defaults to
100. Note that IAM might return fewer results, even when there are more
results available. In that case, the \code{IsTruncated} response element
returns \code{true}, and \code{Marker} contains a value to include in the
subsequent call that tells the service where to continue from.}
}
\value{
A list with the following syntax:\preformatted{list(
  SSHPublicKeys = list(
    list(
      UserName = "string",
      SSHPublicKeyId = "string",
      Status = "Active"|"Inactive",
      UploadDate = as.POSIXct(
        "2015-01-01"
      )
    )
  ),
  IsTruncated = TRUE|FALSE,
  Marker = "string"
)
}
}
\description{
Returns information about the SSH public keys associated with the
specified IAM user. If none exists, the operation returns an empty list.

The SSH public keys returned by this operation are used only for
authenticating the IAM user to an AWS CodeCommit repository. For more
information about using SSH keys to authenticate to an AWS CodeCommit
repository, see \href{https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up.html}{Set up AWS CodeCommit for SSH Connections}
in the \emph{AWS CodeCommit User Guide}.

Although each user is limited to a small number of keys, you can still
paginate the results using the \code{MaxItems} and \code{Marker} parameters.
}
\section{Request syntax}{
\preformatted{svc$list_ssh_public_keys(
  UserName = "string",
  Marker = "string",
  MaxItems = 123
)
}
}

\keyword{internal}
