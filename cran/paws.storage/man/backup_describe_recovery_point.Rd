% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/backup_operations.R
\name{backup_describe_recovery_point}
\alias{backup_describe_recovery_point}
\title{Returns metadata associated with a recovery point, including ID, status,
encryption, and lifecycle}
\usage{
backup_describe_recovery_point(
  BackupVaultName,
  RecoveryPointArn,
  BackupVaultAccountId = NULL
)
}
\arguments{
\item{BackupVaultName}{[required] The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the Amazon Web Services Region where they are created.}

\item{RecoveryPointArn}{[required] An Amazon Resource Name (ARN) that uniquely identifies a recovery point;
for example,
\verb{arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45}.}

\item{BackupVaultAccountId}{The account ID of the specified backup vault.}
}
\description{
Returns metadata associated with a recovery point, including ID, status, encryption, and lifecycle.

See \url{https://www.paws-r-sdk.com/docs/backup_describe_recovery_point/} for full documentation.
}
\keyword{internal}
