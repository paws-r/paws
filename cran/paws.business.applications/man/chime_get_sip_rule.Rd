% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_get_sip_rule}
\alias{chime_get_sip_rule}
\title{Retrieves the details of a SIP rule, such as the rule ID, name,
triggers, and target endpoints}
\usage{
chime_get_sip_rule(SipRuleId)
}
\arguments{
\item{SipRuleId}{[required] The SIP rule ID.}
}
\description{
Retrieves the details of a SIP rule, such as the rule ID, name,
triggers, and target endpoints.
}
\section{Request syntax}{
\preformatted{svc$get_sip_rule(
  SipRuleId = "string"
)
}
}

\keyword{internal}