% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kinesis_operations.R
\name{kinesis_register_stream_consumer}
\alias{kinesis_register_stream_consumer}
\title{Registers a consumer with a Kinesis data stream}
\usage{
kinesis_register_stream_consumer(StreamARN, ConsumerName)
}
\arguments{
\item{StreamARN}{[required] The ARN of the Kinesis data stream that you want to register the
consumer with. For more info, see \href{https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams}{Amazon Resource Names (ARNs) and AWS Service Namespaces}.}

\item{ConsumerName}{[required] For a given Kinesis data stream, each consumer must have a unique name.
However, consumer names don't have to be unique across data streams.}
}
\value{
A list with the following syntax:\preformatted{list(
  Consumer = list(
    ConsumerName = "string",
    ConsumerARN = "string",
    ConsumerStatus = "CREATING"|"DELETING"|"ACTIVE",
    ConsumerCreationTimestamp = as.POSIXct(
      "2015-01-01"
    )
  )
)
}
}
\description{
Registers a consumer with a Kinesis data stream. When you use this
operation, the consumer you register can then call SubscribeToShard to
receive data from the stream using enhanced fan-out, at a rate of up to
2 MiB per second for every shard you subscribe to. This rate is
unaffected by the total number of consumers that read from the same
stream.

You can register up to 20 consumers per stream. A given consumer can
only be registered with one stream at a time.

For an example of how to use this operations, see Enhanced Fan-Out Using
the Kinesis Data Streams API.

The use of this operation has a limit of five transactions per second
per account. Also, only 5 consumers can be created simultaneously. In
other words, you cannot have more than 5 consumers in a \code{CREATING}
status at the same time. Registering a 6th consumer while there are 5 in
a \code{CREATING} status results in a \code{LimitExceededException}.
}
\section{Request syntax}{
\preformatted{svc$register_stream_consumer(
  StreamARN = "string",
  ConsumerName = "string"
)
}
}

\keyword{internal}
