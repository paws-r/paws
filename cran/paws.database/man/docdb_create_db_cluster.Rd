% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/docdb_operations.R
\name{docdb_create_db_cluster}
\alias{docdb_create_db_cluster}
\title{Creates a new Amazon DocumentDB cluster}
\usage{
docdb_create_db_cluster(AvailabilityZones, BackupRetentionPeriod,
  DBClusterIdentifier, DBClusterParameterGroupName, VpcSecurityGroupIds,
  DBSubnetGroupName, Engine, EngineVersion, Port, MasterUsername,
  MasterUserPassword, PreferredBackupWindow, PreferredMaintenanceWindow,
  Tags, StorageEncrypted, KmsKeyId, PreSignedUrl,
  EnableCloudwatchLogsExports, DeletionProtection)
}
\arguments{
\item{AvailabilityZones}{A list of Amazon EC2 Availability Zones that instances in the cluster
can be created in.}

\item{BackupRetentionPeriod}{The number of days for which automated backups are retained. You must
specify a minimum value of 1.

Default: 1

Constraints:
\itemize{
\item Must be a value from 1 to 35.
}}

\item{DBClusterIdentifier}{[required] The cluster identifier. This parameter is stored as a lowercase string.

Constraints:
\itemize{
\item Must contain from 1 to 63 letters, numbers, or hyphens.
\item The first character must be a letter.
\item Cannot end with a hyphen or contain two consecutive hyphens.
}

Example: \code{my-cluster}}

\item{DBClusterParameterGroupName}{The name of the cluster parameter group to associate with this cluster.}

\item{VpcSecurityGroupIds}{A list of EC2 VPC security groups to associate with this cluster.}

\item{DBSubnetGroupName}{A subnet group to associate with this cluster.

Constraints: Must match the name of an existing \code{DBSubnetGroup}. Must
not be default.

Example: \code{mySubnetgroup}}

\item{Engine}{[required] The name of the database engine to be used for this cluster.

Valid values: \code{docdb}}

\item{EngineVersion}{The version number of the database engine to use. The --engine-version
will default to the latest major engine version. For production
workloads, we recommend explicitly declaring this parameter with the
intended major engine version.}

\item{Port}{The port number on which the instances in the cluster accept
connections.}

\item{MasterUsername}{[required] The name of the master user for the cluster.

Constraints:
\itemize{
\item Must be from 1 to 63 letters or numbers.
\item The first character must be a letter.
\item Cannot be a reserved word for the chosen database engine.
}}

\item{MasterUserPassword}{[required] The password for the master database user. This password can contain any
printable ASCII character except forward slash (/), double quote ("), or
the "at" symbol (@).

Constraints: Must contain from 8 to 100 characters.}

\item{PreferredBackupWindow}{The daily time range during which automated backups are created if
automated backups are enabled using the \code{BackupRetentionPeriod}
parameter.

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region.

Constraints:
\itemize{
\item Must be in the format \code{hh24:mi-hh24:mi}.
\item Must be in Universal Coordinated Time (UTC).
\item Must not conflict with the preferred maintenance window.
\item Must be at least 30 minutes.
}}

\item{PreferredMaintenanceWindow}{The weekly time range during which system maintenance can occur, in
Universal Coordinated Time (UTC).

Format: \code{ddd:hh24:mi-ddd:hh24:mi}

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region, occurring on a random day of the
week.

Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun

Constraints: Minimum 30-minute window.}

\item{Tags}{The tags to be assigned to the cluster.}

\item{StorageEncrypted}{Specifies whether the cluster is encrypted.}

\item{KmsKeyId}{The AWS KMS key identifier for an encrypted cluster.

The AWS KMS key identifier is the Amazon Resource Name (ARN) for the AWS
KMS encryption key. If you are creating a cluster using the same AWS
account that owns the AWS KMS encryption key that is used to encrypt the
new cluster, you can use the AWS KMS key alias instead of the ARN for
the AWS KMS encryption key.

If an encryption key is not specified in \code{KmsKeyId}:
\itemize{
\item If the \code{StorageEncrypted} parameter is \code{true}, Amazon DocumentDB
uses your default encryption key.
}

AWS KMS creates the default encryption key for your AWS account. Your
AWS account has a different default encryption key for each AWS Region.}

\item{PreSignedUrl}{Not currently supported.}

\item{EnableCloudwatchLogsExports}{A list of log types that need to be enabled for exporting to Amazon
CloudWatch Logs. You can enable audit logs or profiler logs. For more
information, see \href{https://docs.aws.amazon.com/documentdb/latest/developerguide/event-auditing.html}{Auditing Amazon DocumentDB Events}
and \href{https://docs.aws.amazon.com/documentdb/latest/developerguide/profiling.html}{Profiling Amazon DocumentDB Operations}.}

\item{DeletionProtection}{Specifies whether this cluster can be deleted. If \code{DeletionProtection}
is enabled, the cluster cannot be deleted unless it is modified and
\code{DeletionProtection} is disabled. \code{DeletionProtection} protects clusters
from being accidentally deleted.}
}
\value{
A list with the following syntax:\preformatted{list(
  DBCluster = list(
    AvailabilityZones = list(
      "string"
    ),
    BackupRetentionPeriod = 123,
    DBClusterIdentifier = "string",
    DBClusterParameterGroup = "string",
    DBSubnetGroup = "string",
    Status = "string",
    PercentProgress = "string",
    EarliestRestorableTime = as.POSIXct(
      "2015-01-01"
    ),
    Endpoint = "string",
    ReaderEndpoint = "string",
    MultiAZ = TRUE|FALSE,
    Engine = "string",
    EngineVersion = "string",
    LatestRestorableTime = as.POSIXct(
      "2015-01-01"
    ),
    Port = 123,
    MasterUsername = "string",
    PreferredBackupWindow = "string",
    PreferredMaintenanceWindow = "string",
    DBClusterMembers = list(
      list(
        DBInstanceIdentifier = "string",
        IsClusterWriter = TRUE|FALSE,
        DBClusterParameterGroupStatus = "string",
        PromotionTier = 123
      )
    ),
    VpcSecurityGroups = list(
      list(
        VpcSecurityGroupId = "string",
        Status = "string"
      )
    ),
    HostedZoneId = "string",
    StorageEncrypted = TRUE|FALSE,
    KmsKeyId = "string",
    DbClusterResourceId = "string",
    DBClusterArn = "string",
    AssociatedRoles = list(
      list(
        RoleArn = "string",
        Status = "string"
      )
    ),
    ClusterCreateTime = as.POSIXct(
      "2015-01-01"
    ),
    EnabledCloudwatchLogsExports = list(
      "string"
    ),
    DeletionProtection = TRUE|FALSE
  )
)
}
}
\description{
Creates a new Amazon DocumentDB cluster.
}
\section{Request syntax}{
\preformatted{svc$create_db_cluster(
  AvailabilityZones = list(
    "string"
  ),
  BackupRetentionPeriod = 123,
  DBClusterIdentifier = "string",
  DBClusterParameterGroupName = "string",
  VpcSecurityGroupIds = list(
    "string"
  ),
  DBSubnetGroupName = "string",
  Engine = "string",
  EngineVersion = "string",
  Port = 123,
  MasterUsername = "string",
  MasterUserPassword = "string",
  PreferredBackupWindow = "string",
  PreferredMaintenanceWindow = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  ),
  StorageEncrypted = TRUE|FALSE,
  KmsKeyId = "string",
  PreSignedUrl = "string",
  EnableCloudwatchLogsExports = list(
    "string"
  ),
  DeletionProtection = TRUE|FALSE
)
}
}

\keyword{internal}
