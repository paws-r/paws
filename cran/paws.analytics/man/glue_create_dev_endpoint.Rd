% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_create_dev_endpoint}
\alias{glue_create_dev_endpoint}
\title{Creates a new development endpoint}
\usage{
glue_create_dev_endpoint(
  EndpointName,
  RoleArn,
  SecurityGroupIds = NULL,
  SubnetId = NULL,
  PublicKey = NULL,
  PublicKeys = NULL,
  NumberOfNodes = NULL,
  WorkerType = NULL,
  GlueVersion = NULL,
  NumberOfWorkers = NULL,
  ExtraPythonLibsS3Path = NULL,
  ExtraJarsS3Path = NULL,
  SecurityConfiguration = NULL,
  Tags = NULL,
  Arguments = NULL
)
}
\arguments{
\item{EndpointName}{[required] The name to be assigned to the new \code{DevEndpoint}.}

\item{RoleArn}{[required] The IAM role for the \code{DevEndpoint}.}

\item{SecurityGroupIds}{Security group IDs for the security groups to be used by the new
\code{DevEndpoint}.}

\item{SubnetId}{The subnet ID for the new \code{DevEndpoint} to use.}

\item{PublicKey}{The public key to be used by this \code{DevEndpoint} for authentication. This
attribute is provided for backward compatibility because the recommended
attribute to use is public keys.}

\item{PublicKeys}{A list of public keys to be used by the development endpoints for
authentication. The use of this attribute is preferred over a single
public key because the public keys allow you to have a different private
key per client.

If you previously created an endpoint with a public key, you must remove
that key to be able to set a list of public keys. Call the
\code{\link[=glue_update_dev_endpoint]{update_dev_endpoint}} API with the public
key content in the \code{deletePublicKeys} attribute, and the list of new
keys in the \code{addPublicKeys} attribute.}

\item{NumberOfNodes}{The number of Glue Data Processing Units (DPUs) to allocate to this
\code{DevEndpoint}.}

\item{WorkerType}{The type of predefined worker that is allocated to the development
endpoint. Accepts a value of Standard, G.1X, or G.2X.
\itemize{
\item For the \code{Standard} worker type, each worker provides 4 vCPU, 16 GB
of memory and a 50GB disk, and 2 executors per worker.
\item For the \code{G.1X} worker type, each worker maps to 1 DPU (4 vCPU, 16 GB
of memory, 64 GB disk), and provides 1 executor per worker. We
recommend this worker type for memory-intensive jobs.
\item For the \code{G.2X} worker type, each worker maps to 2 DPU (8 vCPU, 32 GB
of memory, 128 GB disk), and provides 1 executor per worker. We
recommend this worker type for memory-intensive jobs.
}

Known issue: when a development endpoint is created with the \code{G.2X}
\code{WorkerType} configuration, the Spark drivers for the development
endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk.}

\item{GlueVersion}{Glue version determines the versions of Apache Spark and Python that
Glue supports. The Python version indicates the version supported for
running your ETL scripts on development endpoints.

For more information about the available Glue versions and corresponding
Spark and Python versions, see \href{https://docs.aws.amazon.com/glue/latest/dg/add-job.html}{Glue version} in the
developer guide.

Development endpoints that are created without specifying a Glue version
default to Glue 0.9.

You can specify a version of Python support for development endpoints by
using the \code{Arguments} parameter in the
\code{\link[=glue_create_dev_endpoint]{create_dev_endpoint}} or
\code{\link[=glue_update_dev_endpoint]{update_dev_endpoint}} APIs. If no arguments
are provided, the version defaults to Python 2.}

\item{NumberOfWorkers}{The number of workers of a defined \code{workerType} that are allocated to
the development endpoint.

The maximum number of workers you can define are 299 for \code{G.1X}, and 149
for \code{G.2X}.}

\item{ExtraPythonLibsS3Path}{The paths to one or more Python libraries in an Amazon S3 bucket that
should be loaded in your \code{DevEndpoint}. Multiple values must be complete
paths separated by a comma.

You can only use pure Python libraries with a \code{DevEndpoint}. Libraries
that rely on C extensions, such as the
\href{http://pandas.pydata.org/}{pandas} Python data analysis library, are
not yet supported.}

\item{ExtraJarsS3Path}{The path to one or more Java \code{.jar} files in an S3 bucket that should be
loaded in your \code{DevEndpoint}.}

\item{SecurityConfiguration}{The name of the \code{SecurityConfiguration} structure to be used with this
\code{DevEndpoint}.}

\item{Tags}{The tags to use with this DevEndpoint. You may use tags to limit access
to the DevEndpoint. For more information about tags in Glue, see \href{https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html}{Amazon Web Services Tags in Glue} in
the developer guide.}

\item{Arguments}{A map of arguments used to configure the \code{DevEndpoint}.}
}
\description{
Creates a new development endpoint.

See \url{https://www.paws-r-sdk.com/docs/glue_create_dev_endpoint/} for full documentation.
}
\keyword{internal}
