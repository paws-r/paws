% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpoint_operations.R
\name{pinpoint_update_endpoints_batch}
\alias{pinpoint_update_endpoints_batch}
\title{Use to update a batch of endpoints}
\usage{
pinpoint_update_endpoints_batch(ApplicationId, EndpointBatchRequest)
}
\arguments{
\item{ApplicationId}{[required] The unique ID of your Amazon Pinpoint application.}

\item{EndpointBatchRequest}{[required]}
}
\description{
Use to update a batch of endpoints.
}
\section{Request syntax}{
\preformatted{svc$update_endpoints_batch(
  ApplicationId = "string",
  EndpointBatchRequest = list(
    Item = list(
      list(
        Address = "string",
        Attributes = list(
          list(
            "string"
          )
        ),
        ChannelType = "GCM"|"APNS"|"APNS_SANDBOX"|"APNS_VOIP"|"APNS_VOIP_SANDBOX"|"ADM"|"SMS"|"VOICE"|"EMAIL"|"BAIDU"|"CUSTOM",
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
  )
)
}
}

\keyword{internal}