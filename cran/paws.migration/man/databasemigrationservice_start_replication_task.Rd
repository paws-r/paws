% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/databasemigrationservice_operations.R
\name{databasemigrationservice_start_replication_task}
\alias{databasemigrationservice_start_replication_task}
\title{Starts the replication task}
\usage{
databasemigrationservice_start_replication_task(ReplicationTaskArn,
  StartReplicationTaskType, CdcStartTime, CdcStartPosition,
  CdcStopPosition)
}
\arguments{
\item{ReplicationTaskArn}{[required] The Amazon Resource Name (ARN) of the replication task to be started.}

\item{StartReplicationTaskType}{[required] A type of replication task.}

\item{CdcStartTime}{Indicates the start time for a change data capture (CDC) operation. Use
either CdcStartTime or CdcStartPosition to specify when you want a CDC
operation to start. Specifying both values results in an error.

Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”}

\item{CdcStartPosition}{Indicates when you want a change data capture (CDC) operation to start.
Use either CdcStartPosition or CdcStartTime to specify when you want a
CDC operation to start. Specifying both values results in an error.

The value can be in date, checkpoint, or LSN/SCN format.

Date Example: --cdc-start-position “2018-03-08T12:12:12”

Checkpoint Example: --cdc-start-position
"checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"

LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”

When you use this task setting with a source PostgreSQL database, a
logical replication slot should already be created and associated with
the source endpoint. You can verify this by setting the \code{slotName} extra
connection attribute to the name of this logical replication slot. For
more information, see \href{https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib}{Extra Connection Attributes When Using PostgreSQL as a Source for AWS DMS}.}

\item{CdcStopPosition}{Indicates when you want a change data capture (CDC) operation to stop.
The value can be either server time or commit time.

Server time example: --cdc-stop-position
“server_time:2018-02-09T12:12:12”

Commit time example: --cdc-stop-position “commit_time:
2018-02-09T12:12:12 “}
}
\value{
A list with the following syntax:\preformatted{list(
  ReplicationTask = list(
    ReplicationTaskIdentifier = "string",
    SourceEndpointArn = "string",
    TargetEndpointArn = "string",
    ReplicationInstanceArn = "string",
    MigrationType = "full-load"|"cdc"|"full-load-and-cdc",
    TableMappings = "string",
    ReplicationTaskSettings = "string",
    Status = "string",
    LastFailureMessage = "string",
    StopReason = "string",
    ReplicationTaskCreationDate = as.POSIXct(
      "2015-01-01"
    ),
    ReplicationTaskStartDate = as.POSIXct(
      "2015-01-01"
    ),
    CdcStartPosition = "string",
    CdcStopPosition = "string",
    RecoveryCheckpoint = "string",
    ReplicationTaskArn = "string",
    ReplicationTaskStats = list(
      FullLoadProgressPercent = 123,
      ElapsedTimeMillis = 123,
      TablesLoaded = 123,
      TablesLoading = 123,
      TablesQueued = 123,
      TablesErrored = 123,
      FreshStartDate = as.POSIXct(
        "2015-01-01"
      ),
      StartDate = as.POSIXct(
        "2015-01-01"
      ),
      StopDate = as.POSIXct(
        "2015-01-01"
      ),
      FullLoadStartDate = as.POSIXct(
        "2015-01-01"
      ),
      FullLoadFinishDate = as.POSIXct(
        "2015-01-01"
      )
    ),
    TaskData = "string",
    TargetReplicationInstanceArn = "string"
  )
)
}
}
\description{
Starts the replication task.

For more information about AWS DMS tasks, see \href{https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html}{Working with Migration Tasks}
in the \emph{AWS Database Migration Service User Guide.}
}
\section{Request syntax}{
\preformatted{svc$start_replication_task(
  ReplicationTaskArn = "string",
  StartReplicationTaskType = "start-replication"|"resume-processing"|"reload-target",
  CdcStartTime = as.POSIXct(
    "2015-01-01"
  ),
  CdcStartPosition = "string",
  CdcStopPosition = "string"
)
}
}

\examples{
\dontrun{
# Starts the replication task.
svc$start_replication_task(
  CdcStartTime = "2016-12-14T13:33:20Z",
  ReplicationTaskArn = "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
  StartReplicationTaskType = "start-replication"
)
}

}
\keyword{internal}
