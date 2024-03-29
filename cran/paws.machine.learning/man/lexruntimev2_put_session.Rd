% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lexruntimev2_operations.R
\name{lexruntimev2_put_session}
\alias{lexruntimev2_put_session}
\title{Creates a new session or modifies an existing session with an Amazon Lex
V2 bot}
\usage{
lexruntimev2_put_session(
  botId,
  botAliasId,
  localeId,
  sessionId,
  messages = NULL,
  sessionState,
  requestAttributes = NULL,
  responseContentType = NULL
)
}
\arguments{
\item{botId}{[required] The identifier of the bot that receives the session data.}

\item{botAliasId}{[required] The alias identifier of the bot that receives the session data.}

\item{localeId}{[required] The locale where the session is in use.}

\item{sessionId}{[required] The identifier of the session that receives the session data.}

\item{messages}{A list of messages to send to the user. Messages are sent in the order
that they are defined in the list.}

\item{sessionState}{[required] Sets the state of the session with the user. You can use this to set the
current intent, attributes, context, and dialog action. Use the dialog
action to determine the next step that Amazon Lex V2 should use in the
conversation with the user.}

\item{requestAttributes}{Request-specific information passed between Amazon Lex V2 and the client
application.

The namespace \verb{x-amz-lex:} is reserved for special attributes. Don't
create any request attributes with the prefix \verb{x-amz-lex:}.}

\item{responseContentType}{The message that Amazon Lex V2 returns in the response can be either
text or speech depending on the value of this parameter.
\itemize{
\item If the value is \verb{text/plain; charset=utf-8}, Amazon Lex V2 returns
text in the response.
}}
}
\description{
Creates a new session or modifies an existing session with an Amazon Lex V2 bot. Use this operation to enable your application to set the state of the bot.

See \url{https://www.paws-r-sdk.com/docs/lexruntimev2_put_session/} for full documentation.
}
\keyword{internal}
