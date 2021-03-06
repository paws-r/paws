% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iam_operations.R
\name{iam_put_role_policy}
\alias{iam_put_role_policy}
\title{Adds or updates an inline policy document that is embedded in the
specified IAM role}
\usage{
iam_put_role_policy(RoleName, PolicyName, PolicyDocument)
}
\arguments{
\item{RoleName}{[required] The name of the role to associate the policy with.

This parameter allows (through its \href{https://en.wikipedia.org/wiki/Regex}{regex pattern}) a string of characters
consisting of upper and lowercase alphanumeric characters with no
spaces. You can also include any of the following characters: _+=,.@-}

\item{PolicyName}{[required] The name of the policy document.

This parameter allows (through its \href{https://en.wikipedia.org/wiki/Regex}{regex pattern}) a string of characters
consisting of upper and lowercase alphanumeric characters with no
spaces. You can also include any of the following characters: _+=,.@-}

\item{PolicyDocument}{[required] The policy document.

You must provide policies in JSON format in IAM. However, for AWS
CloudFormation templates formatted in YAML, you can provide the policy
in JSON or YAML format. AWS CloudFormation always converts a YAML policy
to JSON format before submitting it to IAM.

The \href{https://en.wikipedia.org/wiki/Regex}{regex pattern} used to
validate this parameter is a string of characters consisting of the
following:
\itemize{
\item Any printable ASCII character ranging from the space character
(\verb{\\u0020}) through the end of the ASCII character range
\item The printable characters in the Basic Latin and Latin-1 Supplement
character set (through \verb{\\u00FF})
\item The special characters tab (\verb{\\u0009}), line feed (\verb{\\u000A}), and
carriage return (\verb{\\u000D})
}}
}
\value{
An empty list.
}
\description{
Adds or updates an inline policy document that is embedded in the
specified IAM role.

When you embed an inline policy in a role, the inline policy is used as
part of the role's access (permissions) policy. The role's trust policy
is created at the same time as the role, using
\code{\link[=iam_create_role]{create_role}}. You can update a role's trust policy
using \code{\link[=iam_update_assume_role_policy]{update_assume_role_policy}}. For
more information about IAM roles, go to \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html}{Using Roles to Delegate Permissions and Federate Identities}.

A role can also have a managed policy attached to it. To attach a
managed policy to a role, use
\code{\link[=iam_attach_role_policy]{attach_role_policy}}. To create a new managed
policy, use \code{\link[=iam_create_policy]{create_policy}}. For information about
policies, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html}{Managed Policies and Inline Policies}
in the \emph{IAM User Guide}.

For information about limits on the number of inline policies that you
can embed with a role, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html}{Limitations on IAM Entities}
in the \emph{IAM User Guide}.

Because policy documents can be large, you should use POST rather than
GET when calling \code{\link[=iam_put_role_policy]{put_role_policy}}. For general
information about using the Query API with IAM, go to \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html}{Making Query Requests}
in the \emph{IAM User Guide}.
}
\section{Request syntax}{
\preformatted{svc$put_role_policy(
  RoleName = "string",
  PolicyName = "string",
  PolicyDocument = "string"
)
}
}

\examples{
\dontrun{
# The following command adds a permissions policy to the role named
# Test-Role.
svc$put_role_policy(
  PolicyDocument = "\{\"Version\":\"2012-10-17\",\"Statement\":\{\"Effect\":\"Allow\",\"...",
  PolicyName = "S3AccessPolicy",
  RoleName = "S3Access"
)
}

}
\keyword{internal}
