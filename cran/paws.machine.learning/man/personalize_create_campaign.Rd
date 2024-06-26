% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/personalize_operations.R
\name{personalize_create_campaign}
\alias{personalize_create_campaign}
\title{You incur campaign costs while it is active}
\usage{
personalize_create_campaign(
  name,
  solutionVersionArn,
  minProvisionedTPS = NULL,
  campaignConfig = NULL,
  tags = NULL
)
}
\arguments{
\item{name}{[required] A name for the new campaign. The campaign name must be unique within
your account.}

\item{solutionVersionArn}{[required] The Amazon Resource Name (ARN) of the trained model to deploy with the
campaign. To specify the latest solution version of your solution,
specify the ARN of your \emph{solution} in \verb{SolutionArn/$LATEST} format. You
must use this format if you set \code{syncWithLatestSolutionVersion} to
\code{True} in the
\href{https://docs.aws.amazon.com/personalize/latest/dg/API_CampaignConfig.html}{CampaignConfig}.

To deploy a model that isn't the latest solution version of your
solution, specify the ARN of the solution version.

For more information about automatic campaign updates, see \href{https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-automatic-latest-sv-update}{Enabling automatic campaign updates}.}

\item{minProvisionedTPS}{Specifies the requested minimum provisioned transactions
(recommendations) per second that Amazon Personalize will support. A
high \code{minProvisionedTPS} will increase your bill. We recommend starting
with 1 for \code{minProvisionedTPS} (the default). Track your usage using
Amazon CloudWatch metrics, and increase the \code{minProvisionedTPS} as
necessary.}

\item{campaignConfig}{The configuration details of a campaign.}

\item{tags}{A list of
\href{https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html}{tags}
to apply to the campaign.}
}
\description{
You incur campaign costs while it is active. To avoid unnecessary costs, make sure to delete the campaign when you are finished. For information about campaign costs, see \href{https://aws.amazon.com/personalize/pricing/}{Amazon Personalize pricing}.

See \url{https://www.paws-r-sdk.com/docs/personalize_create_campaign/} for full documentation.
}
\keyword{internal}
