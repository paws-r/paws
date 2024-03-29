% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/textract_operations.R
\name{textract_start_document_analysis}
\alias{textract_start_document_analysis}
\title{Starts the asynchronous analysis of an input document for relationships
between detected items such as key-value pairs, tables, and selection
elements}
\usage{
textract_start_document_analysis(
  DocumentLocation,
  FeatureTypes,
  ClientRequestToken = NULL,
  JobTag = NULL,
  NotificationChannel = NULL,
  OutputConfig = NULL,
  KMSKeyId = NULL,
  QueriesConfig = NULL,
  AdaptersConfig = NULL
)
}
\arguments{
\item{DocumentLocation}{[required] The location of the document to be processed.}

\item{FeatureTypes}{[required] A list of the types of analysis to perform. Add TABLES to the list to
return information about the tables that are detected in the input
document. Add FORMS to return detected form data. To perform both types
of analysis, add TABLES and FORMS to \code{FeatureTypes}. All lines and words
detected in the document are included in the response (including text
that isn't related to the value of \code{FeatureTypes}).}

\item{ClientRequestToken}{The idempotent token that you use to identify the start request. If you
use the same token with multiple
\code{\link[=textract_start_document_analysis]{start_document_analysis}} requests,
the same \code{JobId} is returned. Use \code{ClientRequestToken} to prevent the
same job from being accidentally started more than once. For more
information, see \href{https://docs.aws.amazon.com/textract/latest/dg/api-async.html}{Calling Amazon Textract Asynchronous Operations}.}

\item{JobTag}{An identifier that you specify that's included in the completion
notification published to the Amazon SNS topic. For example, you can use
\code{JobTag} to identify the type of document that the completion
notification corresponds to (such as a tax form or a receipt).}

\item{NotificationChannel}{The Amazon SNS topic ARN that you want Amazon Textract to publish the
completion status of the operation to.}

\item{OutputConfig}{Sets if the output will go to a customer defined bucket. By default,
Amazon Textract will save the results internally to be accessed by the
GetDocumentAnalysis operation.}

\item{KMSKeyId}{The KMS key used to encrypt the inference results. This can be in either
Key ID or Key Alias format. When a KMS key is provided, the KMS key will
be used for server-side encryption of the objects in the customer
bucket. When this parameter is not enabled, the result will be encrypted
server side,using SSE-S3.}

\item{QueriesConfig}{}

\item{AdaptersConfig}{Specifies the adapter to be used when analyzing a document.}
}
\description{
Starts the asynchronous analysis of an input document for relationships between detected items such as key-value pairs, tables, and selection elements.

See \url{https://www.paws-r-sdk.com/docs/textract_start_document_analysis/} for full documentation.
}
\keyword{internal}
