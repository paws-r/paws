% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lexmodelsv2_operations.R
\name{lexmodelsv2_create_bot_version}
\alias{lexmodelsv2_create_bot_version}
\title{Creates a new version of the bot based on the DRAFT version}
\usage{
lexmodelsv2_create_bot_version(
  botId,
  description = NULL,
  botVersionLocaleSpecification
)
}
\arguments{
\item{botId}{[required] The identifier of the bot to create the version for.}

\item{description}{A description of the version. Use the description to help identify the
version in lists.}

\item{botVersionLocaleSpecification}{[required] Specifies the locales that Amazon Lex adds to this version. You can
choose the \code{Draft} version or any other previously published version for
each locale. When you specify a source version, the locale data is
copied from the source version to the new version.}
}
\description{
Creates a new version of the bot based on the \code{DRAFT} version. If the \code{DRAFT} version of this resource hasn't changed since you created the last version, Amazon Lex doesn't create a new version, it returns the last created version.

See \url{https://paws-r.github.io/docs/lexmodelsv2/create_bot_version.html} for full documentation.
}
\keyword{internal}