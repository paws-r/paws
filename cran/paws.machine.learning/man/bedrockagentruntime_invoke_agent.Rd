% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bedrockagentruntime_operations.R
\name{bedrockagentruntime_invoke_agent}
\alias{bedrockagentruntime_invoke_agent}
\title{Sends a prompt for the agent to process and respond to}
\usage{
bedrockagentruntime_invoke_agent(
  agentAliasId,
  agentId,
  bedrockModelConfigurations = NULL,
  enableTrace = NULL,
  endSession = NULL,
  inputText = NULL,
  memoryId = NULL,
  sessionId,
  sessionState = NULL,
  sourceArn = NULL,
  streamingConfigurations = NULL
)
}
\arguments{
\item{agentAliasId}{[required] The alias of the agent to use.}

\item{agentId}{[required] The unique identifier of the agent to use.}

\item{bedrockModelConfigurations}{Model performance settings for the request.}

\item{enableTrace}{Specifies whether to turn on the trace or not to track the agent's
reasoning process. For more information, see \href{https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-events}{Trace enablement}.}

\item{endSession}{Specifies whether to end the session with the agent or not.}

\item{inputText}{The prompt text to send the agent.

If you include \code{returnControlInvocationResults} in the \code{sessionState}
field, the \code{inputText} field will be ignored.}

\item{memoryId}{The unique identifier of the agent memory.}

\item{sessionId}{[required] The unique identifier of the session. Use the same value across requests
to continue the same conversation.}

\item{sessionState}{Contains parameters that specify various attributes of the session. For
more information, see \href{https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html}{Control session context}.

If you include \code{returnControlInvocationResults} in the \code{sessionState}
field, the \code{inputText} field will be ignored.}

\item{sourceArn}{The ARN of the resource making the request.}

\item{streamingConfigurations}{Specifies the configurations for streaming.

To use agent streaming, you need permissions to perform the
\code{bedrock:InvokeModelWithResponseStream} action.}
}
\description{
Sends a prompt for the agent to process and respond to. Note the following fields for the request:

See \url{https://www.paws-r-sdk.com/docs/bedrockagentruntime_invoke_agent/} for full documentation.
}
\keyword{internal}
