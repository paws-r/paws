% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/amplify_operations.R
\name{amplify_get_domain_association}
\alias{amplify_get_domain_association}
\title{Returns the domain information for an Amplify app}
\usage{
amplify_get_domain_association(appId, domainName)
}
\arguments{
\item{appId}{[required] The unique id for an Amplify app.}

\item{domainName}{[required] The name of the domain.}
}
\value{
A list with the following syntax:\preformatted{list(
  domainAssociation = list(
    domainAssociationArn = "string",
    domainName = "string",
    enableAutoSubDomain = TRUE|FALSE,
    autoSubDomainCreationPatterns = list(
      "string"
    ),
    autoSubDomainIAMRole = "string",
    domainStatus = "PENDING_VERIFICATION"|"IN_PROGRESS"|"AVAILABLE"|"PENDING_DEPLOYMENT"|"FAILED"|"CREATING"|"REQUESTING_CERTIFICATE"|"UPDATING",
    statusReason = "string",
    certificateVerificationDNSRecord = "string",
    subDomains = list(
      list(
        subDomainSetting = list(
          prefix = "string",
          branchName = "string"
        ),
        verified = TRUE|FALSE,
        dnsRecord = "string"
      )
    )
  )
)
}
}
\description{
Returns the domain information for an Amplify app.
}
\section{Request syntax}{
\preformatted{svc$get_domain_association(
  appId = "string",
  domainName = "string"
)
}
}

\keyword{internal}
