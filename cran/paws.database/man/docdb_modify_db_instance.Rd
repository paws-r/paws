% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/docdb_operations.R
\name{docdb_modify_db_instance}
\alias{docdb_modify_db_instance}
\title{Modifies settings for an instance}
\usage{
docdb_modify_db_instance(
  DBInstanceIdentifier,
  DBInstanceClass = NULL,
  ApplyImmediately = NULL,
  PreferredMaintenanceWindow = NULL,
  AutoMinorVersionUpgrade = NULL,
  NewDBInstanceIdentifier = NULL,
  CACertificateIdentifier = NULL,
  CopyTagsToSnapshot = NULL,
  PromotionTier = NULL,
  EnablePerformanceInsights = NULL,
  PerformanceInsightsKMSKeyId = NULL,
  CertificateRotationRestart = NULL
)
}
\arguments{
\item{DBInstanceIdentifier}{[required] The instance identifier. This value is stored as a lowercase string.

Constraints:
\itemize{
\item Must match the identifier of an existing \code{DBInstance}.
}}

\item{DBInstanceClass}{The new compute and memory capacity of the instance; for example,
\code{db.r5.large}. Not all instance classes are available in all Amazon Web
Services Regions.

If you modify the instance class, an outage occurs during the change.
The change is applied during the next maintenance window, unless
\code{ApplyImmediately} is specified as \code{true} for this request.

Default: Uses existing setting.}

\item{ApplyImmediately}{Specifies whether the modifications in this request and any pending
modifications are asynchronously applied as soon as possible, regardless
of the \code{PreferredMaintenanceWindow} setting for the instance.

If this parameter is set to \code{false}, changes to the instance are applied
during the next maintenance window. Some parameter changes can cause an
outage and are applied on the next reboot.

Default: \code{false}}

\item{PreferredMaintenanceWindow}{The weekly time range (in UTC) during which system maintenance can
occur, which might result in an outage. Changing this parameter doesn't
result in an outage except in the following situation, and the change is
asynchronously applied as soon as possible. If there are pending actions
that cause a reboot, and the maintenance window is changed to include
the current time, changing this parameter causes a reboot of the
instance. If you are moving this window to the current time, there must
be at least 30 minutes between the current time and end of the window to
ensure that pending changes are applied.

Default: Uses existing setting.

Format: \code{ddd:hh24:mi-ddd:hh24:mi}

Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun

Constraints: Must be at least 30 minutes.}

\item{AutoMinorVersionUpgrade}{This parameter does not apply to Amazon DocumentDB. Amazon DocumentDB
does not perform minor version upgrades regardless of the value set.}

\item{NewDBInstanceIdentifier}{The new instance identifier for the instance when renaming an instance.
When you change the instance identifier, an instance reboot occurs
immediately if you set \verb{Apply Immediately} to \code{true}. It occurs during
the next maintenance window if you set \verb{Apply Immediately} to \code{false}.
This value is stored as a lowercase string.

Constraints:
\itemize{
\item Must contain from 1 to 63 letters, numbers, or hyphens.
\item The first character must be a letter.
\item Cannot end with a hyphen or contain two consecutive hyphens.
}

Example: \code{mydbinstance}}

\item{CACertificateIdentifier}{Indicates the certificate that needs to be associated with the instance.}

\item{CopyTagsToSnapshot}{A value that indicates whether to copy all tags from the DB instance to
snapshots of the DB instance. By default, tags are not copied.}

\item{PromotionTier}{A value that specifies the order in which an Amazon DocumentDB replica
is promoted to the primary instance after a failure of the existing
primary instance.

Default: 1

Valid values: 0-15}

\item{EnablePerformanceInsights}{A value that indicates whether to enable Performance Insights for the DB
Instance. For more information, see \href{https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html}{Using Amazon Performance Insights}.}

\item{PerformanceInsightsKMSKeyId}{The KMS key identifier for encryption of Performance Insights data.

The KMS key identifier is the key ARN, key ID, alias ARN, or alias name
for the KMS key.

If you do not specify a value for PerformanceInsightsKMSKeyId, then
Amazon DocumentDB uses your default KMS key. There is a default KMS key
for your Amazon Web Services account. Your Amazon Web Services account
has a different default KMS key for each Amazon Web Services region.}

\item{CertificateRotationRestart}{Specifies whether the DB instance is restarted when you rotate your
SSL/TLS certificate.

By default, the DB instance is restarted when you rotate your SSL/TLS
certificate. The certificate is not updated until the DB instance is
restarted.

Set this parameter only if you are \emph{not} using SSL/TLS to connect to the
DB instance.

If you are using SSL/TLS to connect to the DB instance, see \href{https://docs.aws.amazon.com/documentdb/latest/developerguide/ca_cert_rotation.html}{Updating Your Amazon DocumentDB TLS Certificates}
and \href{https://docs.aws.amazon.com/documentdb/latest/developerguide/security.encryption.ssl.html}{Encrypting Data in Transit}
in the \emph{Amazon DocumentDB Developer Guide}.}
}
\description{
Modifies settings for an instance. You can change one or more database configuration parameters by specifying these parameters and the new values in the request.

See \url{https://www.paws-r-sdk.com/docs/docdb_modify_db_instance/} for full documentation.
}
\keyword{internal}
