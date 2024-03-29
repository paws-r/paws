% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iam_operations.R
\name{iam_create_policy}
\alias{iam_create_policy}
\title{Creates a new managed policy for your Amazon Web Services account}
\usage{
iam_create_policy(
  PolicyName,
  Path = NULL,
  PolicyDocument,
  Description = NULL,
  Tags = NULL
)
}
\arguments{
\item{PolicyName}{[required] The friendly name of the policy.

IAM user, group, role, and policy names must be unique within the
account. Names are not distinguished by case. For example, you cannot
create resources named both "MyResource" and "myresource".}

\item{Path}{The path for the policy.

For more information about paths, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html}{IAM identifiers}
in the \emph{IAM User Guide}.

This parameter is optional. If it is not included, it defaults to a
slash (/).

This parameter allows (through its \href{https://en.wikipedia.org/wiki/Regex}{regex pattern}) a string of characters
consisting of either a forward slash (/) by itself or a string that must
begin and end with forward slashes. In addition, it can contain any
ASCII character from the ! (\code{U+0021}) through the DEL character
(\verb{U+007F}), including most punctuation characters, digits, and upper and
lowercased letters.

You cannot use an asterisk (*) in the path name.}

\item{PolicyDocument}{[required] The JSON policy document that you want to use as the content for the new
policy.

You must provide policies in JSON format in IAM. However, for
CloudFormation templates formatted in YAML, you can provide the policy
in JSON or YAML format. CloudFormation always converts a YAML policy to
JSON format before submitting it to IAM.

The maximum length of the policy document that you can pass in this
operation, including whitespace, is listed below. To view the maximum
character counts of a managed policy with no whitespaces, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length}{IAM and STS character quotas}.

To learn more about JSON policy grammar, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_grammar.html}{Grammar of the IAM JSON policy language}
in the \emph{IAM User Guide}.

The \href{https://en.wikipedia.org/wiki/Regex}{regex pattern} used to
validate this parameter is a string of characters consisting of the
following:
\itemize{
\item Any printable ASCII character ranging from the space character
(\code{U+0020}) through the end of the ASCII character range
\item The printable characters in the Basic Latin and Latin-1 Supplement
character set (through \verb{U+00FF})
\item The special characters tab (\code{U+0009}), line feed (\verb{U+000A}), and
carriage return (\verb{U+000D})
}}

\item{Description}{A friendly description of the policy.

Typically used to store information about the permissions defined in the
policy. For example, "Grants access to production DynamoDB tables."

The policy description is immutable. After a value is assigned, it
cannot be changed.}

\item{Tags}{A list of tags that you want to attach to the new IAM customer managed
policy. Each tag consists of a key name and an associated value. For
more information about tagging, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html}{Tagging IAM resources}
in the \emph{IAM User Guide}.

If any one of the tags is invalid or if you exceed the allowed maximum
number of tags, then the entire request fails and the resource is not
created.}
}
\description{
Creates a new managed policy for your Amazon Web Services account.

See \url{https://www.paws-r-sdk.com/docs/iam_create_policy/} for full documentation.
}
\keyword{internal}
