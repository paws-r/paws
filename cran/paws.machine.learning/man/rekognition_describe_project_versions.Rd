% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rekognition_operations.R
\name{rekognition_describe_project_versions}
\alias{rekognition_describe_project_versions}
\title{Lists and describes the versions of an Amazon Rekognition project}
\usage{
rekognition_describe_project_versions(
  ProjectArn,
  VersionNames = NULL,
  NextToken = NULL,
  MaxResults = NULL
)
}
\arguments{
\item{ProjectArn}{[required] The Amazon Resource Name (ARN) of the project that contains the
model/adapter you want to describe.}

\item{VersionNames}{A list of model or project version names that you want to describe. You
can add up to 10 model or project version names to the list. If you
don't specify a value, all project version descriptions are returned. A
version name is part of a project version ARN. For example,
\verb{my-model.2020-01-21T09.10.15} is the version name in the following ARN.
\verb{arn:aws:rekognition:us-east-1:123456789012:project/getting-started/version/my-model.2020-01-21T09.10.15/1234567890123}.}

\item{NextToken}{If the previous response was incomplete (because there is more results
to retrieve), Amazon Rekognition returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
results.}

\item{MaxResults}{The maximum number of results to return per paginated call. The largest
value you can specify is 100. If you specify a value greater than 100, a
ValidationException error occurs. The default value is 100.}
}
\description{
Lists and describes the versions of an Amazon Rekognition project. You can specify up to 10 model or adapter versions in \code{ProjectVersionArns}. If you don't specify a value, descriptions for all model/adapter versions in the project are returned.

See \url{https://www.paws-r-sdk.com/docs/rekognition_describe_project_versions/} for full documentation.
}
\keyword{internal}
