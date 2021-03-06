% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53_operations.R
\name{route53_get_dnssec}
\alias{route53_get_dnssec}
\title{Returns information about DNSSEC for a specific hosted zone, including
the key signing keys (KSKs) and zone signing keys (ZSKs) in the hosted
zone}
\usage{
route53_get_dnssec(HostedZoneId)
}
\arguments{
\item{HostedZoneId}{[required] A unique string used to identify a hosted zone.}
}
\value{
A list with the following syntax:\preformatted{list(
  Status = list(
    ServeSignature = "string",
    StatusMessage = "string"
  ),
  KeySigningKeys = list(
    list(
      Name = "string",
      KmsArn = "string",
      Flag = 123,
      SigningAlgorithmMnemonic = "string",
      SigningAlgorithmType = 123,
      DigestAlgorithmMnemonic = "string",
      DigestAlgorithmType = 123,
      KeyTag = 123,
      DigestValue = "string",
      PublicKey = "string",
      DSRecord = "string",
      DNSKEYRecord = "string",
      Status = "string",
      StatusMessage = "string",
      CreatedDate = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedDate = as.POSIXct(
        "2015-01-01"
      )
    )
  )
)
}
}
\description{
Returns information about DNSSEC for a specific hosted zone, including
the key signing keys (KSKs) and zone signing keys (ZSKs) in the hosted
zone.
}
\section{Request syntax}{
\preformatted{svc$get_dnssec(
  HostedZoneId = "string"
)
}
}

\keyword{internal}
