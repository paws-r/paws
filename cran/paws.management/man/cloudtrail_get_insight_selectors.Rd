% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudtrail_operations.R
\name{cloudtrail_get_insight_selectors}
\alias{cloudtrail_get_insight_selectors}
\title{Describes the settings for the Insights event selectors that you
configured for your trail}
\usage{
cloudtrail_get_insight_selectors(TrailName)
}
\arguments{
\item{TrailName}{[required] Specifies the name of the trail or trail ARN. If you specify a trail
name, the string must meet the following requirements:
\itemize{
\item Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
underscores (_), or dashes (-)
\item Start with a letter or number, and end with a letter or number
\item Be between 3 and 128 characters
\item Have no adjacent periods, underscores or dashes. Names like
\verb{my-_namespace} and \code{my--namespace} are not valid.
\item Not be in IP address format (for example, 192.168.5.4)
}

If you specify a trail ARN, it must be in the format:

\code{arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail}}
}
\value{
A list with the following syntax:\preformatted{list(
  TrailARN = "string",
  InsightSelectors = list(
    list(
      InsightType = "ApiCallRateInsight"
    )
  )
)
}
}
\description{
Describes the settings for the Insights event selectors that you
configured for your trail.
\code{\link[=cloudtrail_get_insight_selectors]{get_insight_selectors}} shows if
CloudTrail Insights event logging is enabled on the trail, and if it is,
which insight types are enabled. If you run
\code{\link[=cloudtrail_get_insight_selectors]{get_insight_selectors}} on a trail
that does not have Insights events enabled, the operation throws the
exception \code{InsightNotEnabledException}

For more information, see \href{https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html}{Logging CloudTrail Insights Events for Trails}
in the \emph{AWS CloudTrail User Guide}.
}
\section{Request syntax}{
\preformatted{svc$get_insight_selectors(
  TrailName = "string"
)
}
}

\keyword{internal}
