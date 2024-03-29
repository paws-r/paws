% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lookoutmetrics_operations.R
\name{lookoutmetrics_list_anomaly_group_related_metrics}
\alias{lookoutmetrics_list_anomaly_group_related_metrics}
\title{Returns a list of measures that are potential causes or effects of an
anomaly group}
\usage{
lookoutmetrics_list_anomaly_group_related_metrics(
  AnomalyDetectorArn,
  AnomalyGroupId,
  RelationshipTypeFilter = NULL,
  MaxResults = NULL,
  NextToken = NULL
)
}
\arguments{
\item{AnomalyDetectorArn}{[required] The Amazon Resource Name (ARN) of the anomaly detector.}

\item{AnomalyGroupId}{[required] The ID of the anomaly group.}

\item{RelationshipTypeFilter}{Filter for potential causes (\code{CAUSE_OF_INPUT_ANOMALY_GROUP}) or
downstream effects (\code{EFFECT_OF_INPUT_ANOMALY_GROUP}) of the anomaly
group.}

\item{MaxResults}{The maximum number of results to return.}

\item{NextToken}{Specify the pagination token that's returned by a previous request to
retrieve the next page of results.}
}
\description{
Returns a list of measures that are potential causes or effects of an anomaly group.

See \url{https://www.paws-r-sdk.com/docs/lookoutmetrics_list_anomaly_group_related_metrics/} for full documentation.
}
\keyword{internal}
