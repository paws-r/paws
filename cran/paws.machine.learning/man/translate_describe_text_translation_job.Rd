% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/translate_operations.R
\name{translate_describe_text_translation_job}
\alias{translate_describe_text_translation_job}
\title{Gets the properties associated with an asycnhronous batch translation
job including name, ID, status, source and target languages,
input/output S3 buckets, and so on}
\usage{
translate_describe_text_translation_job(JobId)
}
\arguments{
\item{JobId}{[required] The identifier that Amazon Translate generated for the job. The
StartTextTranslationJob operation returns this identifier in its
response.}
}
\description{
Gets the properties associated with an asycnhronous batch translation
job including name, ID, status, source and target languages,
input/output S3 buckets, and so on.
}
\section{Request syntax}{
\preformatted{svc$describe_text_translation_job(
  JobId = "string"
)
}
}

\keyword{internal}