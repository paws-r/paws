% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resiliencehub_operations.R
\name{resiliencehub_delete_app}
\alias{resiliencehub_delete_app}
\title{Deletes an Resilience Hub application}
\usage{
resiliencehub_delete_app(appArn, clientToken = NULL, forceDelete = NULL)
}
\arguments{
\item{appArn}{[required] Amazon Resource Name (ARN) of the Resilience Hub application. The format
for this ARN is:
arn:\code{partition}:resiliencehub:\code{region}:\code{account}:app/\code{app-id}. For more
information about ARNs, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html}{Amazon Resource Names (ARNs)}
in the \emph{Amazon Web Services General Reference} guide.}

\item{clientToken}{Used for an idempotency token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. You should not reuse
the same client token for other API requests.}

\item{forceDelete}{A boolean option to force the deletion of an Resilience Hub application.}
}
\description{
Deletes an Resilience Hub application. This is a destructive action that can't be undone.

See \url{https://www.paws-r-sdk.com/docs/resiliencehub_delete_app/} for full documentation.
}
\keyword{internal}
