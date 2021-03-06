% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mq_operations.R
\name{mq_list_brokers}
\alias{mq_list_brokers}
\title{Returns a list of all brokers}
\usage{
mq_list_brokers(MaxResults, NextToken)
}
\arguments{
\item{MaxResults}{The maximum number of brokers that Amazon MQ can return per page (20 by
default). This value must be an integer from 5 to 100.}

\item{NextToken}{The token that specifies the next page of results Amazon MQ should
return. To request the first page, leave nextToken empty.}
}
\value{
A list with the following syntax:\preformatted{list(
  BrokerSummaries = list(
    list(
      BrokerArn = "string",
      BrokerId = "string",
      BrokerName = "string",
      BrokerState = "CREATION_IN_PROGRESS"|"CREATION_FAILED"|"DELETION_IN_PROGRESS"|"RUNNING"|"REBOOT_IN_PROGRESS",
      Created = as.POSIXct(
        "2015-01-01"
      ),
      DeploymentMode = "SINGLE_INSTANCE"|"ACTIVE_STANDBY_MULTI_AZ"|"CLUSTER_MULTI_AZ",
      EngineType = "ACTIVEMQ"|"RABBITMQ",
      HostInstanceType = "string"
    )
  ),
  NextToken = "string"
)
}
}
\description{
Returns a list of all brokers.
}
\section{Request syntax}{
\preformatted{svc$list_brokers(
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
