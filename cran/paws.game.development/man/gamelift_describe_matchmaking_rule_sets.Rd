% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_describe_matchmaking_rule_sets}
\alias{gamelift_describe_matchmaking_rule_sets}
\title{Retrieves the details for FlexMatch matchmaking rule sets}
\usage{
gamelift_describe_matchmaking_rule_sets(Names, Limit, NextToken)
}
\arguments{
\item{Names}{A list of one or more matchmaking rule set names to retrieve details
for. (Note: The rule set name is different from the optional "name"
field in the rule set body.) You can use either the rule set name or ARN
value.}

\item{Limit}{The maximum number of results to return. Use this parameter with
\code{NextToken} to get results as a set of sequential pages.}

\item{NextToken}{A token that indicates the start of the next sequential page of results.
Use the token that is returned with a previous call to this operation.
To start at the beginning of the result set, do not specify a value.}
}
\value{
A list with the following syntax:\preformatted{list(
  RuleSets = list(
    list(
      RuleSetName = "string",
      RuleSetArn = "string",
      RuleSetBody = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      )
    )
  ),
  NextToken = "string"
)
}
}
\description{
Retrieves the details for FlexMatch matchmaking rule sets. You can
request all existing rule sets for the Region, or provide a list of one
or more rule set names. When requesting multiple items, use the
pagination parameters to retrieve results as a set of sequential pages.
If successful, a rule set is returned for each requested name.

\strong{Learn more}
\itemize{
\item \href{https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html}{Build a Rule Set}
}

\strong{Related operations}
\itemize{
\item \code{\link[=gamelift_create_matchmaking_configuration]{create_matchmaking_configuration}}
\item \code{\link[=gamelift_describe_matchmaking_configurations]{describe_matchmaking_configurations}}
\item \code{\link[=gamelift_update_matchmaking_configuration]{update_matchmaking_configuration}}
\item \code{\link[=gamelift_delete_matchmaking_configuration]{delete_matchmaking_configuration}}
\item \code{\link[=gamelift_create_matchmaking_rule_set]{create_matchmaking_rule_set}}
\item \code{\link[=gamelift_describe_matchmaking_rule_sets]{describe_matchmaking_rule_sets}}
\item \code{\link[=gamelift_validate_matchmaking_rule_set]{validate_matchmaking_rule_set}}
\item \code{\link[=gamelift_delete_matchmaking_rule_set]{delete_matchmaking_rule_set}}
}
}
\section{Request syntax}{
\preformatted{svc$describe_matchmaking_rule_sets(
  Names = list(
    "string"
  ),
  Limit = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
