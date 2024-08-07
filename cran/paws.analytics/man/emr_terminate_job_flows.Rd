% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emr_operations.R
\name{emr_terminate_job_flows}
\alias{emr_terminate_job_flows}
\title{TerminateJobFlows shuts a list of clusters (job flows) down}
\usage{
emr_terminate_job_flows(JobFlowIds)
}
\arguments{
\item{JobFlowIds}{[required] A list of job flows to be shut down.}
}
\description{
TerminateJobFlows shuts a list of clusters (job flows) down. When a job flow is shut down, any step not yet completed is canceled and the Amazon EC2 instances on which the cluster is running are stopped. Any log files not already saved are uploaded to Amazon S3 if a LogUri was specified when the cluster was created.

See \url{https://www.paws-r-sdk.com/docs/emr_terminate_job_flows/} for full documentation.
}
\keyword{internal}
