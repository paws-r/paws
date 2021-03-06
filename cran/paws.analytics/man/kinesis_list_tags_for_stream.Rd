% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kinesis_operations.R
\name{kinesis_list_tags_for_stream}
\alias{kinesis_list_tags_for_stream}
\title{Lists the tags for the specified Kinesis data stream}
\usage{
kinesis_list_tags_for_stream(StreamName, ExclusiveStartTagKey, Limit)
}
\arguments{
\item{StreamName}{[required] The name of the stream.}

\item{ExclusiveStartTagKey}{The key to use as the starting point for the list of tags. If this
parameter is set, \code{\link[=kinesis_list_tags_for_stream]{list_tags_for_stream}}
gets all tags that occur after \code{ExclusiveStartTagKey}.}

\item{Limit}{The number of tags to return. If this number is less than the total
number of tags associated with the stream, \code{HasMoreTags} is set to
\code{true}. To list additional tags, set \code{ExclusiveStartTagKey} to the last
key in the response.}
}
\value{
A list with the following syntax:\preformatted{list(
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  ),
  HasMoreTags = TRUE|FALSE
)
}
}
\description{
Lists the tags for the specified Kinesis data stream. This operation has
a limit of five transactions per second per account.
}
\section{Request syntax}{
\preformatted{svc$list_tags_for_stream(
  StreamName = "string",
  ExclusiveStartTagKey = "string",
  Limit = 123
)
}
}

\keyword{internal}
