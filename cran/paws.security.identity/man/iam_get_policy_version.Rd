% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iam_operations.R
\name{iam_get_policy_version}
\alias{iam_get_policy_version}
\title{Retrieves information about the specified version of the specified
managed policy, including the policy document}
\usage{
iam_get_policy_version(PolicyArn, VersionId)
}
\arguments{
\item{PolicyArn}{[required] The Amazon Resource Name (ARN) of the managed policy that you want
information about.

For more information about ARNs, see \href{https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html}{Amazon Resource Names (ARNs) and AWS Service Namespaces}
in the \emph{AWS General Reference}.}

\item{VersionId}{[required] Identifies the policy version to retrieve.

This parameter allows (through its \href{https://en.wikipedia.org/wiki/Regex}{regex pattern}) a string of characters
that consists of the lowercase letter 'v' followed by one or two digits,
and optionally followed by a period '.' and a string of letters and
digits.}
}
\value{
A list with the following syntax:\preformatted{list(
  PolicyVersion = list(
    Document = "string",
    VersionId = "string",
    IsDefaultVersion = TRUE|FALSE,
    CreateDate = as.POSIXct(
      "2015-01-01"
    )
  )
)
}
}
\description{
Retrieves information about the specified version of the specified
managed policy, including the policy document.

Policies returned by this API are URL-encoded compliant with \href{https://tools.ietf.org/html/rfc3986}{RFC 3986}. You can use a URL decoding
method to convert the policy back to plain JSON text. For example, if
you use Java, you can use the \code{decode} method of the
\code{java.net.URLDecoder} utility class in the Java SDK. Other languages and
SDKs provide similar functionality.

To list the available versions for a policy, use
\code{\link[=iam_list_policy_versions]{list_policy_versions}}.

This API retrieves information about managed policies. To retrieve
information about an inline policy that is embedded in a user, group, or
role, use the \code{\link[=iam_get_user_policy]{get_user_policy}},
\code{\link[=iam_get_group_policy]{get_group_policy}}, or
\code{\link[=iam_get_role_policy]{get_role_policy}} API.

For more information about the types of policies, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html}{Managed Policies and Inline Policies}
in the \emph{IAM User Guide}.

For more information about managed policy versions, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-versioning.html}{Versioning for Managed Policies}
in the \emph{IAM User Guide}.
}
\section{Request syntax}{
\preformatted{svc$get_policy_version(
  PolicyArn = "string",
  VersionId = "string"
)
}
}

\keyword{internal}
