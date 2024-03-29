% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rds_operations.R
\name{rds_start_export_task}
\alias{rds_start_export_task}
\title{Starts an export of DB snapshot or DB cluster data to Amazon S3}
\usage{
rds_start_export_task(
  ExportTaskIdentifier,
  SourceArn,
  S3BucketName,
  IamRoleArn,
  KmsKeyId,
  S3Prefix = NULL,
  ExportOnly = NULL
)
}
\arguments{
\item{ExportTaskIdentifier}{[required] A unique identifier for the export task. This ID isn't an identifier for
the Amazon S3 bucket where the data is to be exported.}

\item{SourceArn}{[required] The Amazon Resource Name (ARN) of the snapshot or cluster to export to
Amazon S3.}

\item{S3BucketName}{[required] The name of the Amazon S3 bucket to export the snapshot or cluster data
to.}

\item{IamRoleArn}{[required] The name of the IAM role to use for writing to the Amazon S3 bucket when
exporting a snapshot or cluster.

In the IAM policy attached to your IAM role, include the following
required actions to allow the transfer of files from Amazon RDS or
Amazon Aurora to an S3 bucket:
\itemize{
\item s3:PutObject*
\item s3:GetObject*
\item s3:ListBucket
\item s3:DeleteObject*
\item s3:GetBucketLocation
}

In the policy, include the resources to identify the S3 bucket and
objects in the bucket. The following list of resources shows the Amazon
Resource Name (ARN) format for accessing S3:
\itemize{
\item \code{arn:aws:s3:::your-s3-bucket }
\item \verb{arn:aws:s3:::your-s3-bucket/*}
}}

\item{KmsKeyId}{[required] The ID of the Amazon Web Services KMS key to use to encrypt the data
exported to Amazon S3. The Amazon Web Services KMS key identifier is the
key ARN, key ID, alias ARN, or alias name for the KMS key. The caller of
this operation must be authorized to run the following operations. These
can be set in the Amazon Web Services KMS key policy:
\itemize{
\item kms:Encrypt
\item kms:Decrypt
\item kms:GenerateDataKey
\item kms:GenerateDataKeyWithoutPlaintext
\item kms:ReEncryptFrom
\item kms:ReEncryptTo
\item kms:CreateGrant
\item kms:DescribeKey
\item kms:RetireGrant
}}

\item{S3Prefix}{The Amazon S3 bucket prefix to use as the file name and path of the
exported data.}

\item{ExportOnly}{The data to be exported from the snapshot or cluster. If this parameter
isn't provided, all of the data is exported.

Valid Values:
\itemize{
\item \code{database} - Export all the data from a specified database.
\item \code{database.table} \emph{table-name} - Export a table of the snapshot or
cluster. This format is valid only for RDS for MySQL, RDS for
MariaDB, and Aurora MySQL.
\item \code{database.schema} \emph{schema-name} - Export a database schema of the
snapshot or cluster. This format is valid only for RDS for
PostgreSQL and Aurora PostgreSQL.
\item \code{database.schema.table} \emph{table-name} - Export a table of the
database schema. This format is valid only for RDS for PostgreSQL
and Aurora PostgreSQL.
}}
}
\description{
Starts an export of DB snapshot or DB cluster data to Amazon S3. The provided IAM role must have access to the S3 bucket.

See \url{https://www.paws-r-sdk.com/docs/rds_start_export_task/} for full documentation.
}
\keyword{internal}
