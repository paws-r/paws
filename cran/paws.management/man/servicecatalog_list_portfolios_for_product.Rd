% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/servicecatalog_operations.R
\name{servicecatalog_list_portfolios_for_product}
\alias{servicecatalog_list_portfolios_for_product}
\title{Lists all portfolios that the specified product is associated with}
\usage{
servicecatalog_list_portfolios_for_product(AcceptLanguage, ProductId,
  PageToken, PageSize)
}
\arguments{
\item{AcceptLanguage}{The language code.
\itemize{
\item \code{en} - English (default)
\item \code{jp} - Japanese
\item \code{zh} - Chinese
}}

\item{ProductId}{[required] The product identifier.}

\item{PageToken}{The page token for the next set of results. To retrieve the first set of
results, use null.}

\item{PageSize}{The maximum number of items to return with this call.}
}
\value{
A list with the following syntax:\preformatted{list(
  PortfolioDetails = list(
    list(
      Id = "string",
      ARN = "string",
      DisplayName = "string",
      Description = "string",
      CreatedTime = as.POSIXct(
        "2015-01-01"
      ),
      ProviderName = "string"
    )
  ),
  NextPageToken = "string"
)
}
}
\description{
Lists all portfolios that the specified product is associated with.
}
\section{Request syntax}{
\preformatted{svc$list_portfolios_for_product(
  AcceptLanguage = "string",
  ProductId = "string",
  PageToken = "string",
  PageSize = 123
)
}
}

\keyword{internal}
