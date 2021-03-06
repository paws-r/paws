% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/alexaforbusiness_operations.R
\name{alexaforbusiness_forget_smart_home_appliances}
\alias{alexaforbusiness_forget_smart_home_appliances}
\title{Forgets smart home appliances associated to a room}
\usage{
alexaforbusiness_forget_smart_home_appliances(RoomArn)
}
\arguments{
\item{RoomArn}{[required] The room that the appliances are associated with.}
}
\value{
An empty list.
}
\description{
Forgets smart home appliances associated to a room.
}
\section{Request syntax}{
\preformatted{svc$forget_smart_home_appliances(
  RoomArn = "string"
)
}
}

\keyword{internal}
