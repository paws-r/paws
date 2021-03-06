% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kafka_operations.R
\name{kafka_list_kafka_versions}
\alias{kafka_list_kafka_versions}
\title{Returns a list of Kafka versions}
\usage{
kafka_list_kafka_versions(MaxResults, NextToken)
}
\arguments{
\item{MaxResults}{The maximum number of results to return in the response. If there are
more results, the response includes a NextToken parameter.}

\item{NextToken}{The paginated results marker. When the result of the operation is
truncated, the call returns NextToken in the response. To get the next
batch, provide this token in your next request.}
}
\value{
A list with the following syntax:\preformatted{list(
  KafkaVersions = list(
    list(
      Version = "string",
      Status = "ACTIVE"|"DEPRECATED"
    )
  ),
  NextToken = "string"
)
}
}
\description{
Returns a list of Kafka versions.
}
\section{Request syntax}{
\preformatted{svc$list_kafka_versions(
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
