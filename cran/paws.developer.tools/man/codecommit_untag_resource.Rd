% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codecommit_operations.R
\name{codecommit_untag_resource}
\alias{codecommit_untag_resource}
\title{Removes tags for a resource in CodeCommit}
\usage{
codecommit_untag_resource(resourceArn, tagKeys)
}
\arguments{
\item{resourceArn}{[required] The Amazon Resource Name (ARN) of the resource to which you want to
remove tags.}

\item{tagKeys}{[required] The tag key for each tag that you want to remove from the resource.}
}
\description{
Removes tags for a resource in CodeCommit. For a list of valid resources in CodeCommit, see \href{https://docs.aws.amazon.com/codecommit/latest/userguide/#arn-formats}{CodeCommit Resources and Operations} in the \emph{CodeCommit User Guide}.

See \url{https://www.paws-r-sdk.com/docs/codecommit_untag_resource/} for full documentation.
}
\keyword{internal}
