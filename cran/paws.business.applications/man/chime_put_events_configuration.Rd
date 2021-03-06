% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_put_events_configuration}
\alias{chime_put_events_configuration}
\title{Creates an events configuration that allows a bot to receive outgoing
events sent by Amazon Chime}
\usage{
chime_put_events_configuration(AccountId, BotId,
  OutboundEventsHTTPSEndpoint, LambdaFunctionArn)
}
\arguments{
\item{AccountId}{[required] The Amazon Chime account ID.}

\item{BotId}{[required] The bot ID.}

\item{OutboundEventsHTTPSEndpoint}{HTTPS endpoint that allows the bot to receive outgoing events.}

\item{LambdaFunctionArn}{Lambda function ARN that allows the bot to receive outgoing events.}
}
\value{
A list with the following syntax:\preformatted{list(
  EventsConfiguration = list(
    BotId = "string",
    OutboundEventsHTTPSEndpoint = "string",
    LambdaFunctionArn = "string"
  )
)
}
}
\description{
Creates an events configuration that allows a bot to receive outgoing
events sent by Amazon Chime. Choose either an HTTPS endpoint or a Lambda
function ARN. For more information, see Bot.
}
\section{Request syntax}{
\preformatted{svc$put_events_configuration(
  AccountId = "string",
  BotId = "string",
  OutboundEventsHTTPSEndpoint = "string",
  LambdaFunctionArn = "string"
)
}
}

\keyword{internal}
