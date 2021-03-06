% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iam_operations.R
\name{iam_put_user_policy}
\alias{iam_put_user_policy}
\title{Adds or updates an inline policy document that is embedded in the
specified IAM user}
\usage{
iam_put_user_policy(UserName, PolicyName, PolicyDocument)
}
\arguments{
\item{UserName}{[required] The name of the user to associate the policy with.

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
specified IAM user.

An IAM user can also have a managed policy attached to it. To attach a
managed policy to a user, use
\code{\link[=iam_attach_user_policy]{attach_user_policy}}. To create a new managed
policy, use \code{\link[=iam_create_policy]{create_policy}}. For information about
policies, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html}{Managed Policies and Inline Policies}
in the \emph{IAM User Guide}.

For information about limits on the number of inline policies that you
can embed in a user, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html}{Limitations on IAM Entities}
in the \emph{IAM User Guide}.

Because policy documents can be large, you should use POST rather than
GET when calling \code{\link[=iam_put_user_policy]{put_user_policy}}. For general
information about using the Query API with IAM, go to \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html}{Making Query Requests}
in the \emph{IAM User Guide}.
}
\section{Request syntax}{
\preformatted{svc$put_user_policy(
  UserName = "string",
  PolicyName = "string",
  PolicyDocument = "string"
)
}
}

\examples{
\dontrun{
# The following command attaches a policy to the IAM user named Bob.
svc$put_user_policy(
  PolicyDocument = "\{\"Version\":\"2012-10-17\",\"Statement\":\{\"Effect\":\"Allow\",\"...",
  PolicyName = "AllAccessPolicy",
  UserName = "Bob"
)
}

}
\keyword{internal}
