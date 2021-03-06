% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_get_classifier}
\alias{glue_get_classifier}
\title{Retrieve a classifier by name}
\usage{
glue_get_classifier(Name)
}
\arguments{
\item{Name}{[required] Name of the classifier to retrieve.}
}
\value{
A list with the following syntax:\preformatted{list(
  Classifier = list(
    GrokClassifier = list(
      Name = "string",
      Classification = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastUpdated = as.POSIXct(
        "2015-01-01"
      ),
      Version = 123,
      GrokPattern = "string",
      CustomPatterns = "string"
    ),
    XMLClassifier = list(
      Name = "string",
      Classification = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastUpdated = as.POSIXct(
        "2015-01-01"
      ),
      Version = 123,
      RowTag = "string"
    ),
    JsonClassifier = list(
      Name = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastUpdated = as.POSIXct(
        "2015-01-01"
      ),
      Version = 123,
      JsonPath = "string"
    ),
    CsvClassifier = list(
      Name = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastUpdated = as.POSIXct(
        "2015-01-01"
      ),
      Version = 123,
      Delimiter = "string",
      QuoteSymbol = "string",
      ContainsHeader = "UNKNOWN"|"PRESENT"|"ABSENT",
      Header = list(
        "string"
      ),
      DisableValueTrimming = TRUE|FALSE,
      AllowSingleColumn = TRUE|FALSE
    )
  )
)
}
}
\description{
Retrieve a classifier by name.
}
\section{Request syntax}{
\preformatted{svc$get_classifier(
  Name = "string"
)
}
}

\keyword{internal}
