% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lexmodelsv2_operations.R
\name{lexmodelsv2_describe_bot_recommendation}
\alias{lexmodelsv2_describe_bot_recommendation}
\title{Provides metadata information about a bot recommendation}
\usage{
lexmodelsv2_describe_bot_recommendation(
  botId,
  botVersion,
  localeId,
  botRecommendationId
)
}
\arguments{
\item{botId}{[required] The unique identifier of the bot associated with the bot recommendation.}

\item{botVersion}{[required] The version of the bot associated with the bot recommendation.}

\item{localeId}{[required] The identifier of the language and locale of the bot recommendation to
describe. The string must match one of the supported locales. For more
information, see \href{https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html}{Supported languages}.}

\item{botRecommendationId}{[required] The identifier of the bot recommendation to describe.}
}
\description{
Provides metadata information about a bot recommendation. This information will enable you to get a description on the request inputs, to download associated transcripts after processing is complete, and to download intents and slot-types generated by the bot recommendation.

See \url{https://www.paws-r-sdk.com/docs/lexmodelsv2_describe_bot_recommendation/} for full documentation.
}
\keyword{internal}
