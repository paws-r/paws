% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/guardduty_operations.R
\name{guardduty_get_threat_intel_set}
\alias{guardduty_get_threat_intel_set}
\title{Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID}
\usage{
guardduty_get_threat_intel_set(DetectorId, ThreatIntelSetId)
}
\arguments{
\item{DetectorId}{[required] The unique ID of the detector that the threatIntelSet is associated
with.}

\item{ThreatIntelSetId}{[required] The unique ID of the threatIntelSet that you want to get.}
}
\value{
A list with the following syntax:\preformatted{list(
  Name = "string",
  Format = "TXT"|"STIX"|"OTX_CSV"|"ALIEN_VAULT"|"PROOF_POINT"|"FIRE_EYE",
  Location = "string",
  Status = "INACTIVE"|"ACTIVATING"|"ACTIVE"|"DEACTIVATING"|"ERROR"|"DELETE_PENDING"|"DELETED",
  Tags = list(
    "string"
  )
)
}
}
\description{
Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.
}
\section{Request syntax}{
\preformatted{svc$get_threat_intel_set(
  DetectorId = "string",
  ThreatIntelSetId = "string"
)
}
}

\keyword{internal}
