% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudhsm_operations.R
\name{cloudhsm_create_hapg}
\alias{cloudhsm_create_hapg}
\title{This is documentation for AWS CloudHSM Classic}
\usage{
cloudhsm_create_hapg(Label)
}
\arguments{
\item{Label}{[required] The label of the new high-availability partition group.}
}
\value{
A list with the following syntax:\preformatted{list(
  HapgArn = "string"
)
}
}
\description{
This is documentation for \strong{AWS CloudHSM Classic}. For more
information, see \href{https://aws.amazon.com/cloudhsm/faqs/}{AWS CloudHSM Classic FAQs}, the \href{https://docs.aws.amazon.com/cloudhsm/classic/userguide/}{AWS CloudHSM Classic User Guide},
and the \href{https://docs.aws.amazon.com/cloudhsm/classic/APIReference/}{AWS CloudHSM Classic API Reference}.

\strong{For information about the current version of AWS CloudHSM}, see \href{https://aws.amazon.com/cloudhsm/}{AWS CloudHSM}, the \href{https://docs.aws.amazon.com/cloudhsm/latest/userguide/}{AWS CloudHSM User Guide}, and the
\href{https://docs.aws.amazon.com/cloudhsm/latest/APIReference/}{AWS CloudHSM API Reference}.

Creates a high-availability partition group. A high-availability
partition group is a group of partitions that spans multiple physical
HSMs.
}
\section{Request syntax}{
\preformatted{svc$create_hapg(
  Label = "string"
)
}
}

\keyword{internal}
