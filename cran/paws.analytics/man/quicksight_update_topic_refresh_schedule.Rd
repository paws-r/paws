% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_update_topic_refresh_schedule}
\alias{quicksight_update_topic_refresh_schedule}
\title{Updates a topic refresh schedule}
\usage{
quicksight_update_topic_refresh_schedule(
  AwsAccountId,
  TopicId,
  DatasetId,
  RefreshSchedule
)
}
\arguments{
\item{AwsAccountId}{[required] The ID of the Amazon Web Services account that contains the topic whose
refresh schedule you want to update.}

\item{TopicId}{[required] The ID of the topic that you want to modify. This ID is unique per
Amazon Web Services Region for each Amazon Web Services account.}

\item{DatasetId}{[required] The ID of the dataset.}

\item{RefreshSchedule}{[required] The definition of a refresh schedule.}
}
\description{
Updates a topic refresh schedule.

See \url{https://www.paws-r-sdk.com/docs/quicksight_update_topic_refresh_schedule/} for full documentation.
}
\keyword{internal}
