% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_create_sip_rule}
\alias{chime_create_sip_rule}
\title{Creates a SIP rule which can be used to run a SIP media application as a
target for a specific trigger type}
\usage{
chime_create_sip_rule(Name, TriggerType, TriggerValue, Disabled,
  TargetApplications)
}
\arguments{
\item{Name}{[required] The name of the SIP rule.}

\item{TriggerType}{[required] The type of trigger whose value is assigned to the SIP rule in
\code{TriggerValue}. Allowed trigger values are \code{RequestUriHostname} and
\code{ToPhoneNumber}.}

\item{TriggerValue}{[required] If \code{TriggerType} is \code{RequestUriHostname} then the value can be the
outbound host name of an Amazon Chime Voice Connector. If \code{TriggerType}
is \code{ToPhoneNumber} then the value can be a customer-owned phone number
in E164 format. \code{SipRule} is triggered if the SIP application requests a
host name, or a If \code{TriggerType} is \code{RequestUriHostname}, then the value
can be the outbound hostname of an Amazon Chime Voice Connector. If
\code{TriggerType} is \code{ToPhoneNumber}, then the value can be a customer-owned
phone number in E164 format. \code{SipRule} is triggered if the SIP
application requests a host name, or a \code{ToPhoneNumber} value matches the
incoming SIP request.}

\item{Disabled}{Enables or disables a rule. You must disable rules before you can delete
them.}

\item{TargetApplications}{[required] List of SIP media applications with priority and AWS Region. Only one
SIP application per AWS Region can be used.}
}
\value{
A list with the following syntax:\preformatted{list(
  SipRule = list(
    SipRuleId = "string",
    Name = "string",
    Disabled = TRUE|FALSE,
    TriggerType = "ToPhoneNumber"|"RequestUriHostname",
    TriggerValue = "string",
    TargetApplications = list(
      list(
        SipMediaApplicationId = "string",
        Priority = 123,
        AwsRegion = "string"
      )
    ),
    CreatedTimestamp = as.POSIXct(
      "2015-01-01"
    ),
    UpdatedTimestamp = as.POSIXct(
      "2015-01-01"
    )
  )
)
}
}
\description{
Creates a SIP rule which can be used to run a SIP media application as a
target for a specific trigger type.
}
\section{Request syntax}{
\preformatted{svc$create_sip_rule(
  Name = "string",
  TriggerType = "ToPhoneNumber"|"RequestUriHostname",
  TriggerValue = "string",
  Disabled = TRUE|FALSE,
  TargetApplications = list(
    list(
      SipMediaApplicationId = "string",
      Priority = 123,
      AwsRegion = "string"
    )
  )
)
}
}

\keyword{internal}
