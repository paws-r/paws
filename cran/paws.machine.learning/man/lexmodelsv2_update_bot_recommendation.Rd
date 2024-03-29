% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lexmodelsv2_operations.R
\name{lexmodelsv2_update_bot_recommendation}
\alias{lexmodelsv2_update_bot_recommendation}
\title{Updates an existing bot recommendation request}
\usage{
lexmodelsv2_update_bot_recommendation(
  botId,
  botVersion,
  localeId,
  botRecommendationId,
  encryptionSetting
)
}
\arguments{
\item{botId}{[required] The unique identifier of the bot containing the bot recommendation to be
updated.}

\item{botVersion}{[required] The version of the bot containing the bot recommendation to be updated.}

\item{localeId}{[required] The identifier of the language and locale of the bot recommendation to
update. The string must match one of the supported locales. For more
information, see \href{https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html}{Supported languages}}

\item{botRecommendationId}{[required] The unique identifier of the bot recommendation to be updated.}

\item{encryptionSetting}{[required] The object representing the passwords that will be used to encrypt the
data related to the bot recommendation results, as well as the KMS key
ARN used to encrypt the associated metadata.}
}
\description{
Updates an existing bot recommendation request.

See \url{https://www.paws-r-sdk.com/docs/lexmodelsv2_update_bot_recommendation/} for full documentation.
}
\keyword{internal}
