% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/machinelearning_operations.R
\name{machinelearning_describe_batch_predictions}
\alias{machinelearning_describe_batch_predictions}
\title{Returns a list of BatchPrediction operations that match the search
criteria in the request}
\usage{
machinelearning_describe_batch_predictions(
  FilterVariable = NULL,
  EQ = NULL,
  GT = NULL,
  LT = NULL,
  GE = NULL,
  LE = NULL,
  NE = NULL,
  Prefix = NULL,
  SortOrder = NULL,
  NextToken = NULL,
  Limit = NULL
)
}
\arguments{
\item{FilterVariable}{Use one of the following variables to filter a list of
\code{BatchPrediction}:
\itemize{
\item \code{CreatedAt} - Sets the search criteria to the \code{BatchPrediction}
creation date.
\item \code{Status} - Sets the search criteria to the \code{BatchPrediction} status.
\item \code{Name} - Sets the search criteria to the contents of the
\code{BatchPrediction} \code{Name}.
\item \code{IAMUser} - Sets the search criteria to the user account that
invoked the \code{BatchPrediction} creation.
\item \code{MLModelId} - Sets the search criteria to the \code{MLModel} used in the
\code{BatchPrediction}.
\item \code{DataSourceId} - Sets the search criteria to the \code{DataSource} used
in the \code{BatchPrediction}.
\item \code{DataURI} - Sets the search criteria to the data file(s) used in the
\code{BatchPrediction}. The URL can identify either a file or an Amazon
Simple Storage Solution (Amazon S3) bucket or directory.
}}

\item{EQ}{The equal to operator. The \code{BatchPrediction} results will have
\code{FilterVariable} values that exactly match the value specified with
\code{EQ}.}

\item{GT}{The greater than operator. The \code{BatchPrediction} results will have
\code{FilterVariable} values that are greater than the value specified with
\code{GT}.}

\item{LT}{The less than operator. The \code{BatchPrediction} results will have
\code{FilterVariable} values that are less than the value specified with
\code{LT}.}

\item{GE}{The greater than or equal to operator. The \code{BatchPrediction} results
will have \code{FilterVariable} values that are greater than or equal to the
value specified with \code{GE}.}

\item{LE}{The less than or equal to operator. The \code{BatchPrediction} results will
have \code{FilterVariable} values that are less than or equal to the value
specified with \code{LE}.}

\item{NE}{The not equal to operator. The \code{BatchPrediction} results will have
\code{FilterVariable} values not equal to the value specified with \code{NE}.}

\item{Prefix}{A string that is found at the beginning of a variable, such as \code{Name} or
\code{Id}.

For example, a \verb{Batch Prediction} operation could have the \code{Name}
\code{2014-09-09-HolidayGiftMailer}. To search for this \code{BatchPrediction},
select \code{Name} for the \code{FilterVariable} and any of the following strings
for the \code{Prefix}:
\itemize{
\item 2014-09
\item 2014-09-09
\item 2014-09-09-Holiday
}}

\item{SortOrder}{A two-value parameter that determines the sequence of the resulting list
of \code{MLModel}s.
\itemize{
\item \code{asc} - Arranges the list in ascending order (A-Z, 0-9).
\item \code{dsc} - Arranges the list in descending order (Z-A, 9-0).
}

Results are sorted by \code{FilterVariable}.}

\item{NextToken}{An ID of the page in the paginated results.}

\item{Limit}{The number of pages of information to include in the result. The range
of acceptable values is \code{1} through \code{100}. The default value is \code{100}.}
}
\description{
Returns a list of \code{BatchPrediction} operations that match the search criteria in the request.

See \url{https://www.paws-r-sdk.com/docs/machinelearning_describe_batch_predictions/} for full documentation.
}
\keyword{internal}
