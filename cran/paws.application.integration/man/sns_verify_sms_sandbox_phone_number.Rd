% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sns_operations.R
\name{sns_verify_sms_sandbox_phone_number}
\alias{sns_verify_sms_sandbox_phone_number}
\title{Verifies a destination phone number with a one-time password (OTP) for
the calling Amazon Web Services account}
\usage{
sns_verify_sms_sandbox_phone_number(PhoneNumber, OneTimePassword)
}
\arguments{
\item{PhoneNumber}{[required] The destination phone number to verify.}

\item{OneTimePassword}{[required] The OTP sent to the destination number from the
\code{CreateSMSSandBoxPhoneNumber} call.}
}
\description{
Verifies a destination phone number with a one-time password (OTP) for the calling Amazon Web Services account.

See \url{https://www.paws-r-sdk.com/docs/sns_verify_sms_sandbox_phone_number/} for full documentation.
}
\keyword{internal}
