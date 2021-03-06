% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_delete_topic_rule_destination}
\alias{iot_delete_topic_rule_destination}
\title{Deletes a topic rule destination}
\usage{
iot_delete_topic_rule_destination(arn)
}
\arguments{
\item{arn}{[required] The ARN of the topic rule destination to delete.}
}
\value{
An empty list.
}
\description{
Deletes a topic rule destination.
}
\section{Request syntax}{
\preformatted{svc$delete_topic_rule_destination(
  arn = "string"
)
}
}

\keyword{internal}
