% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fms_operations.R
\name{fms_put_notification_channel}
\alias{fms_put_notification_channel}
\title{Designates the IAM role and Amazon Simple Notification Service (SNS)
topic that AWS Firewall Manager uses to record SNS logs}
\usage{
fms_put_notification_channel(SnsTopicArn, SnsRoleName)
}
\arguments{
\item{SnsTopicArn}{[required] The Amazon Resource Name (ARN) of the SNS topic that collects
notifications from AWS Firewall Manager.}

\item{SnsRoleName}{[required] The Amazon Resource Name (ARN) of the IAM role that allows Amazon SNS to
record AWS Firewall Manager activity.}
}
\value{
An empty list.
}
\description{
Designates the IAM role and Amazon Simple Notification Service (SNS)
topic that AWS Firewall Manager uses to record SNS logs.

To perform this action outside of the console, you must configure the
SNS topic to allow the Firewall Manager role \code{AWSServiceRoleForFMS} to
publish SNS logs. For more information, see \href{https://docs.aws.amazon.com/waf/latest/developerguide/fms-api-permissions-ref.html}{Firewall Manager required permissions for API actions}
in the \emph{AWS Firewall Manager Developer Guide}.
}
\section{Request syntax}{
\preformatted{svc$put_notification_channel(
  SnsTopicArn = "string",
  SnsRoleName = "string"
)
}
}

\keyword{internal}
