% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpoint_operations.R
\name{pinpoint_get_recommender_configurations}
\alias{pinpoint_get_recommender_configurations}
\title{Retrieves information about all the recommender model configurations
that are associated with your Amazon Pinpoint account}
\usage{
pinpoint_get_recommender_configurations(PageSize, Token)
}
\arguments{
\item{PageSize}{The maximum number of items to include in each page of a paginated
response. This parameter is not supported for application, campaign, and
journey metrics.}

\item{Token}{The NextToken string that specifies which page of results to return in a
paginated response.}
}
\value{
A list with the following syntax:\preformatted{list(
  ListRecommenderConfigurationsResponse = list(
    Item = list(
      list(
        Attributes = list(
          "string"
        ),
        CreationDate = "string",
        Description = "string",
        Id = "string",
        LastModifiedDate = "string",
        Name = "string",
        RecommendationProviderIdType = "string",
        RecommendationProviderRoleArn = "string",
        RecommendationProviderUri = "string",
        RecommendationTransformerUri = "string",
        RecommendationsDisplayName = "string",
        RecommendationsPerMessage = 123
      )
    ),
    NextToken = "string"
  )
)
}
}
\description{
Retrieves information about all the recommender model configurations
that are associated with your Amazon Pinpoint account.
}
\section{Request syntax}{
\preformatted{svc$get_recommender_configurations(
  PageSize = "string",
  Token = "string"
)
}
}

\keyword{internal}
