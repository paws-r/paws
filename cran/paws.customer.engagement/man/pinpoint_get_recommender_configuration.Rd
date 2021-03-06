% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpoint_operations.R
\name{pinpoint_get_recommender_configuration}
\alias{pinpoint_get_recommender_configuration}
\title{Retrieves information about an Amazon Pinpoint configuration for a
recommender model}
\usage{
pinpoint_get_recommender_configuration(RecommenderId)
}
\arguments{
\item{RecommenderId}{[required] The unique identifier for the recommender model configuration. This
identifier is displayed as the \strong{Recommender ID} on the Amazon Pinpoint
console.}
}
\value{
A list with the following syntax:\preformatted{list(
  RecommenderConfigurationResponse = list(
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
)
}
}
\description{
Retrieves information about an Amazon Pinpoint configuration for a
recommender model.
}
\section{Request syntax}{
\preformatted{svc$get_recommender_configuration(
  RecommenderId = "string"
)
}
}

\keyword{internal}
