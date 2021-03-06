% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/robomaker_operations.R
\name{robomaker_deregister_robot}
\alias{robomaker_deregister_robot}
\title{Deregisters a robot}
\usage{
robomaker_deregister_robot(fleet, robot)
}
\arguments{
\item{fleet}{[required] The Amazon Resource Name (ARN) of the fleet.}

\item{robot}{[required] The Amazon Resource Name (ARN) of the robot.}
}
\value{
A list with the following syntax:\preformatted{list(
  fleet = "string",
  robot = "string"
)
}
}
\description{
Deregisters a robot.
}
\section{Request syntax}{
\preformatted{svc$deregister_robot(
  fleet = "string",
  robot = "string"
)
}
}

\keyword{internal}
