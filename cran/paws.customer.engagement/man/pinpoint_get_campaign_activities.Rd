% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpoint_operations.R
\name{pinpoint_get_campaign_activities}
\alias{pinpoint_get_campaign_activities}
\title{Retrieves information about all the activities for a campaign}
\usage{
pinpoint_get_campaign_activities(ApplicationId, CampaignId, PageSize,
  Token)
}
\arguments{
\item{ApplicationId}{[required] The unique identifier for the application. This identifier is displayed
as the \strong{Project ID} on the Amazon Pinpoint console.}

\item{CampaignId}{[required] The unique identifier for the campaign.}

\item{PageSize}{The maximum number of items to include in each page of a paginated
response. This parameter is not supported for application, campaign, and
journey metrics.}

\item{Token}{The NextToken string that specifies which page of results to return in a
paginated response.}
}
\value{
A list with the following syntax:\preformatted{list(
  ActivitiesResponse = list(
    Item = list(
      list(
        ApplicationId = "string",
        CampaignId = "string",
        End = "string",
        Id = "string",
        Result = "string",
        ScheduledStart = "string",
        Start = "string",
        State = "string",
        SuccessfulEndpointCount = 123,
        TimezonesCompletedCount = 123,
        TimezonesTotalCount = 123,
        TotalEndpointCount = 123,
        TreatmentId = "string"
      )
    ),
    NextToken = "string"
  )
)
}
}
\description{
Retrieves information about all the activities for a campaign.
}
\section{Request syntax}{
\preformatted{svc$get_campaign_activities(
  ApplicationId = "string",
  CampaignId = "string",
  PageSize = "string",
  Token = "string"
)
}
}

\keyword{internal}
