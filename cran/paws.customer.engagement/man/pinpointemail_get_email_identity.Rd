% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpointemail_operations.R
\name{pinpointemail_get_email_identity}
\alias{pinpointemail_get_email_identity}
\title{Provides information about a specific identity associated with your
Amazon Pinpoint account, including the identity's verification status,
its DKIM authentication status, and its custom Mail-From settings}
\usage{
pinpointemail_get_email_identity(EmailIdentity)
}
\arguments{
\item{EmailIdentity}{[required] The email identity that you want to retrieve details for.}
}
\value{
A list with the following syntax:\preformatted{list(
  IdentityType = "EMAIL_ADDRESS"|"DOMAIN"|"MANAGED_DOMAIN",
  FeedbackForwardingStatus = TRUE|FALSE,
  VerifiedForSendingStatus = TRUE|FALSE,
  DkimAttributes = list(
    SigningEnabled = TRUE|FALSE,
    Status = "PENDING"|"SUCCESS"|"FAILED"|"TEMPORARY_FAILURE"|"NOT_STARTED",
    Tokens = list(
      "string"
    )
  ),
  MailFromAttributes = list(
    MailFromDomain = "string",
    MailFromDomainStatus = "PENDING"|"SUCCESS"|"FAILED"|"TEMPORARY_FAILURE",
    BehaviorOnMxFailure = "USE_DEFAULT_VALUE"|"REJECT_MESSAGE"
  ),
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}
\description{
Provides information about a specific identity associated with your
Amazon Pinpoint account, including the identity's verification status,
its DKIM authentication status, and its custom Mail-From settings.
}
\section{Request syntax}{
\preformatted{svc$get_email_identity(
  EmailIdentity = "string"
)
}
}

\keyword{internal}
