% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rekognition_operations.R
\name{rekognition_start_label_detection}
\alias{rekognition_start_label_detection}
\title{Starts asynchronous detection of labels in a stored video}
\usage{
rekognition_start_label_detection(Video, ClientRequestToken,
  MinConfidence, NotificationChannel, JobTag)
}
\arguments{
\item{Video}{[required] The video in which you want to detect labels. The video must be stored
in an Amazon S3 bucket.}

\item{ClientRequestToken}{Idempotent token used to identify the start request. If you use the same
token with multiple \code{StartLabelDetection} requests, the same \code{JobId} is
returned. Use \code{ClientRequestToken} to prevent the same job from being
accidently started more than once.}

\item{MinConfidence}{Specifies the minimum confidence that Amazon Rekognition Video must have
in order to return a detected label. Confidence represents how certain
Amazon Rekognition is that a label is correctly identified.0 is the
lowest confidence. 100 is the highest confidence. Amazon Rekognition
Video doesn't return any labels with a confidence level lower than this
specified value.

If you don't specify \code{MinConfidence}, the operation returns labels with
confidence values greater than or equal to 50 percent.}

\item{NotificationChannel}{The Amazon SNS topic ARN you want Amazon Rekognition Video to publish
the completion status of the label detection operation to.}

\item{JobTag}{Unique identifier you specify to identify the job in the completion
status published to the Amazon Simple Notification Service topic.}
}
\description{
Starts asynchronous detection of labels in a stored video.
}
\details{
Amazon Rekognition Video can detect labels in a video. Labels are
instances of real-world entities. This includes objects like flower,
tree, and table; events like wedding, graduation, and birthday party;
concepts like landscape, evening, and nature; and activities like a
person getting out of a car or a person skiing.

The video must be stored in an Amazon S3 bucket. Use Video to specify
the bucket name and the filename of the video. \code{StartLabelDetection}
returns a job identifier (\code{JobId}) which you use to get the results of
the operation. When label detection is finished, Amazon Rekognition
Video publishes a completion status to the Amazon Simple Notification
Service topic that you specify in \code{NotificationChannel}.

To get the results of the label detection operation, first check that
the status value published to the Amazon SNS topic is \code{SUCCEEDED}. If
so, call GetLabelDetection and pass the job identifier (\code{JobId}) from
the initial call to \code{StartLabelDetection}.
}
\section{Request syntax}{
\preformatted{svc$start_label_detection(
  Video = list(
    S3Object = list(
      Bucket = "string",
      Name = "string",
      Version = "string"
    )
  ),
  ClientRequestToken = "string",
  MinConfidence = 123.0,
  NotificationChannel = list(
    SNSTopicArn = "string",
    RoleArn = "string"
  ),
  JobTag = "string"
)
}
}

\keyword{internal}