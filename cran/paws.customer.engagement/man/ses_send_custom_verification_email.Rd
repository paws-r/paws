% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ses_operations.R
\name{ses_send_custom_verification_email}
\alias{ses_send_custom_verification_email}
\title{Adds an email address to the list of identities for your Amazon SES
account in the current AWS Region and attempts to verify it}
\usage{
ses_send_custom_verification_email(EmailAddress, TemplateName,
  ConfigurationSetName)
}
\arguments{
\item{EmailAddress}{[required] The email address to verify.}

\item{TemplateName}{[required] The name of the custom verification email template to use when sending
the verification email.}

\item{ConfigurationSetName}{Name of a configuration set to use when sending the verification email.}
}
\value{
A list with the following syntax:\preformatted{list(
  MessageId = "string"
)
}
}
\description{
Adds an email address to the list of identities for your Amazon SES
account in the current AWS Region and attempts to verify it. As a result
of executing this operation, a customized verification email is sent to
the specified address.

To use this operation, you must first create a custom verification email
template. For more information about creating and using custom
verification email templates, see \href{https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html}{Using Custom Verification Email Templates}
in the \emph{Amazon SES Developer Guide}.

You can execute this operation no more than once per second.
}
\section{Request syntax}{
\preformatted{svc$send_custom_verification_email(
  EmailAddress = "string",
  TemplateName = "string",
  ConfigurationSetName = "string"
)
}
}

\keyword{internal}
