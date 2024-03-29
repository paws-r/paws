% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/accessanalyzer_operations.R
\name{accessanalyzer_get_access_preview}
\alias{accessanalyzer_get_access_preview}
\title{Retrieves information about an access preview for the specified analyzer}
\usage{
accessanalyzer_get_access_preview(accessPreviewId, analyzerArn)
}
\arguments{
\item{accessPreviewId}{[required] The unique ID for the access preview.}

\item{analyzerArn}{[required] The \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources}{ARN of the analyzer}
used to generate the access preview.}
}
\description{
Retrieves information about an access preview for the specified analyzer.

See \url{https://www.paws-r-sdk.com/docs/accessanalyzer_get_access_preview/} for full documentation.
}
\keyword{internal}
