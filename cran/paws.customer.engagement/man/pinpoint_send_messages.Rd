% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpoint_operations.R
\name{pinpoint_send_messages}
\alias{pinpoint_send_messages}
\title{Creates and sends a direct message}
\usage{
pinpoint_send_messages(ApplicationId, MessageRequest)
}
\arguments{
\item{ApplicationId}{[required] The unique identifier for the application. This identifier is displayed
as the \strong{Project ID} on the Amazon Pinpoint console.}

\item{MessageRequest}{[required]}
}
\value{
A list with the following syntax:\preformatted{list(
  MessageResponse = list(
    ApplicationId = "string",
    EndpointResult = list(
      list(
        Address = "string",
        DeliveryStatus = "SUCCESSFUL"|"THROTTLED"|"TEMPORARY_FAILURE"|"PERMANENT_FAILURE"|"UNKNOWN_FAILURE"|"OPT_OUT"|"DUPLICATE",
        MessageId = "string",
        StatusCode = 123,
        StatusMessage = "string",
        UpdatedToken = "string"
      )
    ),
    RequestId = "string",
    Result = list(
      list(
        DeliveryStatus = "SUCCESSFUL"|"THROTTLED"|"TEMPORARY_FAILURE"|"PERMANENT_FAILURE"|"UNKNOWN_FAILURE"|"OPT_OUT"|"DUPLICATE",
        MessageId = "string",
        StatusCode = 123,
        StatusMessage = "string",
        UpdatedToken = "string"
      )
    )
  )
)
}
}
\description{
Creates and sends a direct message.
}
\section{Request syntax}{
\preformatted{svc$send_messages(
  ApplicationId = "string",
  MessageRequest = list(
    Addresses = list(
      list(
        BodyOverride = "string",
        ChannelType = "PUSH"|"GCM"|"APNS"|"APNS_SANDBOX"|"APNS_VOIP"|"APNS_VOIP_SANDBOX"|"ADM"|"SMS"|"VOICE"|"EMAIL"|"BAIDU"|"CUSTOM",
        Context = list(
          "string"
        ),
        RawContent = "string",
        Substitutions = list(
          list(
            "string"
          )
        ),
        TitleOverride = "string"
      )
    ),
    Context = list(
      "string"
    ),
    Endpoints = list(
      list(
        BodyOverride = "string",
        Context = list(
          "string"
        ),
        RawContent = "string",
        Substitutions = list(
          list(
            "string"
          )
        ),
        TitleOverride = "string"
      )
    ),
    MessageConfiguration = list(
      ADMMessage = list(
        Action = "OPEN_APP"|"DEEP_LINK"|"URL",
        Body = "string",
        ConsolidationKey = "string",
        Data = list(
          "string"
        ),
        ExpiresAfter = "string",
        IconReference = "string",
        ImageIconUrl = "string",
        ImageUrl = "string",
        MD5 = "string",
        RawContent = "string",
        SilentPush = TRUE|FALSE,
        SmallImageIconUrl = "string",
        Sound = "string",
        Substitutions = list(
          list(
            "string"
          )
        ),
        Title = "string",
        Url = "string"
      ),
      APNSMessage = list(
        APNSPushType = "string",
        Action = "OPEN_APP"|"DEEP_LINK"|"URL",
        Badge = 123,
        Body = "string",
        Category = "string",
        CollapseId = "string",
        Data = list(
          "string"
        ),
        MediaUrl = "string",
        PreferredAuthenticationMethod = "string",
        Priority = "string",
        RawContent = "string",
        SilentPush = TRUE|FALSE,
        Sound = "string",
        Substitutions = list(
          list(
            "string"
          )
        ),
        ThreadId = "string",
        TimeToLive = 123,
        Title = "string",
        Url = "string"
      ),
      BaiduMessage = list(
        Action = "OPEN_APP"|"DEEP_LINK"|"URL",
        Body = "string",
        Data = list(
          "string"
        ),
        IconReference = "string",
        ImageIconUrl = "string",
        ImageUrl = "string",
        RawContent = "string",
        SilentPush = TRUE|FALSE,
        SmallImageIconUrl = "string",
        Sound = "string",
        Substitutions = list(
          list(
            "string"
          )
        ),
        TimeToLive = 123,
        Title = "string",
        Url = "string"
      ),
      DefaultMessage = list(
        Body = "string",
        Substitutions = list(
          list(
            "string"
          )
        )
      ),
      DefaultPushNotificationMessage = list(
        Action = "OPEN_APP"|"DEEP_LINK"|"URL",
        Body = "string",
        Data = list(
          "string"
        ),
        SilentPush = TRUE|FALSE,
        Substitutions = list(
          list(
            "string"
          )
        ),
        Title = "string",
        Url = "string"
      ),
      EmailMessage = list(
        Body = "string",
        FeedbackForwardingAddress = "string",
        FromAddress = "string",
        RawEmail = list(
          Data = raw
        ),
        ReplyToAddresses = list(
          "string"
        ),
        SimpleEmail = list(
          HtmlPart = list(
            Charset = "string",
            Data = "string"
          ),
          Subject = list(
            Charset = "string",
            Data = "string"
          ),
          TextPart = list(
            Charset = "string",
            Data = "string"
          )
        ),
        Substitutions = list(
          list(
            "string"
          )
        )
      ),
      GCMMessage = list(
        Action = "OPEN_APP"|"DEEP_LINK"|"URL",
        Body = "string",
        CollapseKey = "string",
        Data = list(
          "string"
        ),
        IconReference = "string",
        ImageIconUrl = "string",
        ImageUrl = "string",
        Priority = "string",
        RawContent = "string",
        RestrictedPackageName = "string",
        SilentPush = TRUE|FALSE,
        SmallImageIconUrl = "string",
        Sound = "string",
        Substitutions = list(
          list(
            "string"
          )
        ),
        TimeToLive = 123,
        Title = "string",
        Url = "string"
      ),
      SMSMessage = list(
        Body = "string",
        Keyword = "string",
        MediaUrl = "string",
        MessageType = "TRANSACTIONAL"|"PROMOTIONAL",
        OriginationNumber = "string",
        SenderId = "string",
        Substitutions = list(
          list(
            "string"
          )
        )
      ),
      VoiceMessage = list(
        Body = "string",
        LanguageCode = "string",
        OriginationNumber = "string",
        Substitutions = list(
          list(
            "string"
          )
        ),
        VoiceId = "string"
      )
    ),
    TemplateConfiguration = list(
      EmailTemplate = list(
        Name = "string",
        Version = "string"
      ),
      PushTemplate = list(
        Name = "string",
        Version = "string"
      ),
      SMSTemplate = list(
        Name = "string",
        Version = "string"
      ),
      VoiceTemplate = list(
        Name = "string",
        Version = "string"
      )
    ),
    TraceId = "string"
  )
)
}
}

\keyword{internal}
