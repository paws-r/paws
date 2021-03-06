% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eventbridge_operations.R
\name{eventbridge_cancel_replay}
\alias{eventbridge_cancel_replay}
\title{Cancels the specified replay}
\usage{
eventbridge_cancel_replay(ReplayName)
}
\arguments{
\item{ReplayName}{[required] The name of the replay to cancel.}
}
\value{
A list with the following syntax:\preformatted{list(
  ReplayArn = "string",
  State = "STARTING"|"RUNNING"|"CANCELLING"|"COMPLETED"|"CANCELLED"|"FAILED",
  StateReason = "string"
)
}
}
\description{
Cancels the specified replay.
}
\section{Request syntax}{
\preformatted{svc$cancel_replay(
  ReplayName = "string"
)
}
}

\keyword{internal}
