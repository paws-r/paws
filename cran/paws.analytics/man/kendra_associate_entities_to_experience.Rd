% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kendra_operations.R
\name{kendra_associate_entities_to_experience}
\alias{kendra_associate_entities_to_experience}
\title{Grants users or groups in your Amazon Web Services SSO identity source
access to your Amazon Kendra experience}
\usage{
kendra_associate_entities_to_experience(Id, IndexId, EntityList)
}
\arguments{
\item{Id}{[required] The identifier of your Amazon Kendra experience.}

\item{IndexId}{[required] The identifier of the index for your Amazon Kendra experience.}

\item{EntityList}{[required] Lists users or groups in your Amazon Web Services SSO identity source.}
}
\description{
Grants users or groups in your Amazon Web Services SSO identity source access to your Amazon Kendra experience. You can create an Amazon Kendra experience such as a search application. For more information on creating a search application experience, see \href{https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html}{Building a search experience with no code}.

See \url{https://paws-r.github.io/docs/kendra/associate_entities_to_experience.html} for full documentation.
}
\keyword{internal}