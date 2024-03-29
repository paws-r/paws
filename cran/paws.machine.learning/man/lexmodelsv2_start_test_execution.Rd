% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lexmodelsv2_operations.R
\name{lexmodelsv2_start_test_execution}
\alias{lexmodelsv2_start_test_execution}
\title{The action to start test set execution}
\usage{
lexmodelsv2_start_test_execution(
  testSetId,
  target,
  apiMode,
  testExecutionModality = NULL
)
}
\arguments{
\item{testSetId}{[required] The test set Id for the test set execution.}

\item{target}{[required] The target bot for the test set execution.}

\item{apiMode}{[required] Indicates whether we use streaming or non-streaming APIs for the test
set execution. For streaming, StartConversation Runtime API is used.
Whereas, for non-streaming, RecognizeUtterance and RecognizeText Amazon
Lex Runtime API are used.}

\item{testExecutionModality}{Indicates whether audio or text is used.}
}
\description{
The action to start test set execution.

See \url{https://www.paws-r-sdk.com/docs/lexmodelsv2_start_test_execution/} for full documentation.
}
\keyword{internal}
