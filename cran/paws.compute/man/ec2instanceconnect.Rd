% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2instanceconnect_service.R
\name{ec2instanceconnect}
\alias{ec2instanceconnect}
\title{AWS EC2 Instance Connect}
\usage{
ec2instanceconnect()
}
\description{
AWS EC2 Connect Service is a service that enables system administrators
to publish temporary SSH keys to their EC2 instances in order to
establish connections to their instances without leaving a permanent
authentication option.
}
\section{Operations}{

\tabular{ll}{
\link[=ec2instanceconnect_send_ssh_public_key]{send_ssh_public_key} \tab Pushes an SSH public key to a particular OS user on a given EC2 instance for 60 seconds
}
}

\examples{
# The following example pushes a sample SSH public key to the EC2 instance
# i-abcd1234 in AZ us-west-2b for use by the instance OS user ec2-user.
\donttest{svc <- ec2instanceconnect()
svc$send_ssh_public_key(
  AvailabilityZone = "us-west-2a",
  InstanceId = "i-abcd1234",
  InstanceOSUser = "ec2-user",
  SSHPublicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3FlHqj2eqCdrGHuA6dRjfZXQ4HX5lXEIRHa..."
)}

}