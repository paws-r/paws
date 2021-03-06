% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpoint_operations.R
\name{pinpoint_get_endpoint}
\alias{pinpoint_get_endpoint}
\title{Retrieves information about the settings and attributes of a specific
endpoint for an application}
\usage{
pinpoint_get_endpoint(ApplicationId, EndpointId)
}
\arguments{
\item{ApplicationId}{[required] The unique identifier for the application. This identifier is displayed
as the \strong{Project ID} on the Amazon Pinpoint console.}

\item{EndpointId}{[required] The unique identifier for the endpoint.}
}
\value{
A list with the following syntax:\preformatted{list(
  EndpointResponse = list(
    Address = "string",
    ApplicationId = "string",
    Attributes = list(
      list(
        "string"
      )
    ),
    ChannelType = "PUSH"|"GCM"|"APNS"|"APNS_SANDBOX"|"APNS_VOIP"|"APNS_VOIP_SANDBOX"|"ADM"|"SMS"|"VOICE"|"EMAIL"|"BAIDU"|"CUSTOM",
    CohortId = "string",
    CreationDate = "string",
    Demographic = list(
      AppVersion = "string",
      Locale = "string",
      Make = "string",
      Model = "string",
      ModelVersion = "string",
      Platform = "string",
      PlatformVersion = "string",
      Timezone = "string"
    ),
    EffectiveDate = "string",
    EndpointStatus = "string",
    Id = "string",
    Location = list(
      City = "string",
      Country = "string",
      Latitude = 123.0,
      Longitude = 123.0,
      PostalCode = "string",
      Region = "string"
    ),
    Metrics = list(
      123.0
    ),
    OptOut = "string",
    RequestId = "string",
    User = list(
      UserAttributes = list(
        list(
          "string"
        )
      ),
      UserId = "string"
    )
  )
)
}
}
\description{
Retrieves information about the settings and attributes of a specific
endpoint for an application.
}
\section{Request syntax}{
\preformatted{svc$get_endpoint(
  ApplicationId = "string",
  EndpointId = "string"
)
}
}

\keyword{internal}
