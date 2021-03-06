% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_describe_ec2_instance_limits}
\alias{gamelift_describe_ec2_instance_limits}
\title{Retrieves the following information for the specified EC2 instance type:}
\usage{
gamelift_describe_ec2_instance_limits(EC2InstanceType)
}
\arguments{
\item{EC2InstanceType}{Name of an EC2 instance type that is supported in Amazon GameLift. A
fleet instance type determines the computing resources of each instance
in the fleet, including CPU, memory, storage, and networking capacity.
Amazon GameLift supports the following EC2 instance types. See \href{https://aws.amazon.com/ec2/instance-types/}{Amazon EC2 Instance Types} for
detailed descriptions. Leave this parameter blank to retrieve limits for
all types.}
}
\value{
A list with the following syntax:\preformatted{list(
  EC2InstanceLimits = list(
    list(
      EC2InstanceType = "t2.micro"|"t2.small"|"t2.medium"|"t2.large"|"c3.large"|"c3.xlarge"|"c3.2xlarge"|"c3.4xlarge"|"c3.8xlarge"|"c4.large"|"c4.xlarge"|"c4.2xlarge"|"c4.4xlarge"|"c4.8xlarge"|"c5.large"|"c5.xlarge"|"c5.2xlarge"|"c5.4xlarge"|"c5.9xlarge"|"c5.12xlarge"|"c5.18xlarge"|"c5.24xlarge"|"c5a.large"|"c5a.xlarge"|"c5a.2xlarge"|"c5a.4xlarge"|"c5a.8xlarge"|"c5a.12xlarge"|"c5a.16xlarge"|"c5a.24xlarge"|"r3.large"|"r3.xlarge"|"r3.2xlarge"|"r3.4xlarge"|"r3.8xlarge"|"r4.large"|"r4.xlarge"|"r4.2xlarge"|"r4.4xlarge"|"r4.8xlarge"|"r4.16xlarge"|"r5.large"|"r5.xlarge"|"r5.2xlarge"|"r5.4xlarge"|"r5.8xlarge"|"r5.12xlarge"|"r5.16xlarge"|"r5.24xlarge"|"r5a.large"|"r5a.xlarge"|"r5a.2xlarge"|"r5a.4xlarge"|"r5a.8xlarge"|"r5a.12xlarge"|"r5a.16xlarge"|"r5a.24xlarge"|"m3.medium"|"m3.large"|"m3.xlarge"|"m3.2xlarge"|"m4.large"|"m4.xlarge"|"m4.2xlarge"|"m4.4xlarge"|"m4.10xlarge"|"m5.large"|"m5.xlarge"|"m5.2xlarge"|"m5.4xlarge"|"m5.8xlarge"|"m5.12xlarge"|"m5.16xlarge"|"m5.24xlarge"|"m5a.large"|"m5a.xlarge"|"m5a.2xlarge"|"m5a.4xlarge"|"m5a.8xlarge"|"m5a.12xlarge"|"m5a.16xlarge"|"m5a.24xlarge",
      CurrentInstances = 123,
      InstanceLimit = 123
    )
  )
)
}
}
\description{
Retrieves the following information for the specified EC2 instance type:
\itemize{
\item Maximum number of instances allowed per AWS account (service limit).
\item Current usage for the AWS account.
}

To learn more about the capabilities of each instance type, see \href{https://aws.amazon.com/ec2/instance-types/}{Amazon EC2 Instance Types}. Note
that the instance types offered may vary depending on the region.

\strong{Learn more}

\href{https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html}{Setting up GameLift Fleets}

\strong{Related operations}
\itemize{
\item \code{\link[=gamelift_create_fleet]{create_fleet}}
\item \code{\link[=gamelift_list_fleets]{list_fleets}}
\item \code{\link[=gamelift_delete_fleet]{delete_fleet}}
\item \code{\link[=gamelift_describe_fleet_attributes]{describe_fleet_attributes}}
\item \code{\link[=gamelift_update_fleet_attributes]{update_fleet_attributes}}
\item \code{\link[=gamelift_start_fleet_actions]{start_fleet_actions}} or
\code{\link[=gamelift_stop_fleet_actions]{stop_fleet_actions}}
}
}
\section{Request syntax}{
\preformatted{svc$describe_ec2_instance_limits(
  EC2InstanceType = "t2.micro"|"t2.small"|"t2.medium"|"t2.large"|"c3.large"|"c3.xlarge"|"c3.2xlarge"|"c3.4xlarge"|"c3.8xlarge"|"c4.large"|"c4.xlarge"|"c4.2xlarge"|"c4.4xlarge"|"c4.8xlarge"|"c5.large"|"c5.xlarge"|"c5.2xlarge"|"c5.4xlarge"|"c5.9xlarge"|"c5.12xlarge"|"c5.18xlarge"|"c5.24xlarge"|"c5a.large"|"c5a.xlarge"|"c5a.2xlarge"|"c5a.4xlarge"|"c5a.8xlarge"|"c5a.12xlarge"|"c5a.16xlarge"|"c5a.24xlarge"|"r3.large"|"r3.xlarge"|"r3.2xlarge"|"r3.4xlarge"|"r3.8xlarge"|"r4.large"|"r4.xlarge"|"r4.2xlarge"|"r4.4xlarge"|"r4.8xlarge"|"r4.16xlarge"|"r5.large"|"r5.xlarge"|"r5.2xlarge"|"r5.4xlarge"|"r5.8xlarge"|"r5.12xlarge"|"r5.16xlarge"|"r5.24xlarge"|"r5a.large"|"r5a.xlarge"|"r5a.2xlarge"|"r5a.4xlarge"|"r5a.8xlarge"|"r5a.12xlarge"|"r5a.16xlarge"|"r5a.24xlarge"|"m3.medium"|"m3.large"|"m3.xlarge"|"m3.2xlarge"|"m4.large"|"m4.xlarge"|"m4.2xlarge"|"m4.4xlarge"|"m4.10xlarge"|"m5.large"|"m5.xlarge"|"m5.2xlarge"|"m5.4xlarge"|"m5.8xlarge"|"m5.12xlarge"|"m5.16xlarge"|"m5.24xlarge"|"m5a.large"|"m5a.xlarge"|"m5a.2xlarge"|"m5a.4xlarge"|"m5a.8xlarge"|"m5a.12xlarge"|"m5a.16xlarge"|"m5a.24xlarge"
)
}
}

\keyword{internal}
