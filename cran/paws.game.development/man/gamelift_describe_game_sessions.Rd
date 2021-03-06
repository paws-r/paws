% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_describe_game_sessions}
\alias{gamelift_describe_game_sessions}
\title{Retrieves a set of one or more game sessions}
\usage{
gamelift_describe_game_sessions(FleetId, GameSessionId, AliasId,
  StatusFilter, Limit, NextToken)
}
\arguments{
\item{FleetId}{A unique identifier for a fleet to retrieve all game sessions for. You
can use either the fleet ID or ARN value.}

\item{GameSessionId}{A unique identifier for the game session to retrieve.}

\item{AliasId}{A unique identifier for an alias associated with the fleet to retrieve
all game sessions for. You can use either the alias ID or ARN value.}

\item{StatusFilter}{Game session status to filter results on. Possible game session statuses
include \code{ACTIVE}, \code{TERMINATED}, \code{ACTIVATING}, and \code{TERMINATING} (the
last two are transitory).}

\item{Limit}{The maximum number of results to return. Use this parameter with
\code{NextToken} to get results as a set of sequential pages.}

\item{NextToken}{Token that indicates the start of the next sequential page of results.
Use the token that is returned with a previous call to this operation.
To start at the beginning of the result set, do not specify a value.}
}
\value{
A list with the following syntax:\preformatted{list(
  GameSessions = list(
    list(
      GameSessionId = "string",
      Name = "string",
      FleetId = "string",
      FleetArn = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      TerminationTime = as.POSIXct(
        "2015-01-01"
      ),
      CurrentPlayerSessionCount = 123,
      MaximumPlayerSessionCount = 123,
      Status = "ACTIVE"|"ACTIVATING"|"TERMINATED"|"TERMINATING"|"ERROR",
      StatusReason = "INTERRUPTED",
      GameProperties = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      IpAddress = "string",
      DnsName = "string",
      Port = 123,
      PlayerSessionCreationPolicy = "ACCEPT_ALL"|"DENY_ALL",
      CreatorId = "string",
      GameSessionData = "string",
      MatchmakerData = "string"
    )
  ),
  NextToken = "string"
)
}
}
\description{
Retrieves a set of one or more game sessions. Request a specific game
session or request all game sessions on a fleet. Alternatively, use
\code{\link[=gamelift_search_game_sessions]{search_game_sessions}} to request a set
of active game sessions that are filtered by certain criteria. To
retrieve protection policy settings for game sessions, use
\code{\link[=gamelift_describe_game_session_details]{describe_game_session_details}}.

To get game sessions, specify one of the following: game session ID,
fleet ID, or alias ID. You can filter this request by game session
status. Use the pagination parameters to retrieve results as a set of
sequential pages. If successful, a GameSession object is returned for
each game session matching the request.

\emph{Available in Amazon GameLift Local.}
\itemize{
\item \code{\link[=gamelift_create_game_session]{create_game_session}}
\item \code{\link[=gamelift_describe_game_sessions]{describe_game_sessions}}
\item \code{\link[=gamelift_describe_game_session_details]{describe_game_session_details}}
\item \code{\link[=gamelift_search_game_sessions]{search_game_sessions}}
\item \code{\link[=gamelift_update_game_session]{update_game_session}}
\item \code{\link[=gamelift_get_game_session_log_url]{get_game_session_log_url}}
\item Game session placements
\itemize{
\item \code{\link[=gamelift_start_game_session_placement]{start_game_session_placement}}
\item \code{\link[=gamelift_describe_game_session_placement]{describe_game_session_placement}}
\item \code{\link[=gamelift_stop_game_session_placement]{stop_game_session_placement}}
}
}
}
\section{Request syntax}{
\preformatted{svc$describe_game_sessions(
  FleetId = "string",
  GameSessionId = "string",
  AliasId = "string",
  StatusFilter = "string",
  Limit = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
