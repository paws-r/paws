% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workdocs_operations.R
\name{workdocs_describe_activities}
\alias{workdocs_describe_activities}
\title{Describes the user activities in a specified time period}
\usage{
workdocs_describe_activities(AuthenticationToken, StartTime, EndTime,
  OrganizationId, ActivityTypes, ResourceId, UserId,
  IncludeIndirectActivities, Limit, Marker)
}
\arguments{
\item{AuthenticationToken}{Amazon WorkDocs authentication token. Not required when using AWS
administrator credentials to access the API.}

\item{StartTime}{The timestamp that determines the starting time of the activities. The
response includes the activities performed after the specified
timestamp.}

\item{EndTime}{The timestamp that determines the end time of the activities. The
response includes the activities performed before the specified
timestamp.}

\item{OrganizationId}{The ID of the organization. This is a mandatory parameter when using
administrative API (SigV4) requests.}

\item{ActivityTypes}{Specifies which activity types to include in the response. If this field
is left empty, all activity types are returned.}

\item{ResourceId}{The document or folder ID for which to describe activity types.}

\item{UserId}{The ID of the user who performed the action. The response includes
activities pertaining to this user. This is an optional parameter and is
only applicable for administrative API (SigV4) requests.}

\item{IncludeIndirectActivities}{Includes indirect activities. An indirect activity results from a direct
activity performed on a parent resource. For example, sharing a parent
folder (the direct activity) shares all of the subfolders and documents
within the parent folder (the indirect activity).}

\item{Limit}{The maximum number of items to return.}

\item{Marker}{The marker for the next set of results.}
}
\value{
A list with the following syntax:\preformatted{list(
  UserActivities = list(
    list(
      Type = "DOCUMENT_CHECKED_IN"|"DOCUMENT_CHECKED_OUT"|"DOCUMENT_RENAMED"|"DOCUMENT_VERSION_UPLOADED"|"DOCUMENT_VERSION_DELETED"|"DOCUMENT_VERSION_VIEWED"|"DOCUMENT_VERSION_DOWNLOADED"|"DOCUMENT_RECYCLED"|"DOCUMENT_RESTORED"|"DOCUMENT_REVERTED"|"DOCUMENT_SHARED"|"DOCUMENT_UNSHARED"|"DOCUMENT_SHARE_PERMISSION_CHANGED"|"DOCUMENT_SHAREABLE_LINK_CREATED"|"DOCUMENT_SHAREABLE_LINK_REMOVED"|"DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED"|"DOCUMENT_MOVED"|"DOCUMENT_COMMENT_ADDED"|"DOCUMENT_COMMENT_DELETED"|"DOCUMENT_ANNOTATION_ADDED"|"DOCUMENT_ANNOTATION_DELETED"|"FOLDER_CREATED"|"FOLDER_DELETED"|"FOLDER_RENAMED"|"FOLDER_RECYCLED"|"FOLDER_RESTORED"|"FOLDER_SHARED"|"FOLDER_UNSHARED"|"FOLDER_SHARE_PERMISSION_CHANGED"|"FOLDER_SHAREABLE_LINK_CREATED"|"FOLDER_SHAREABLE_LINK_REMOVED"|"FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED"|"FOLDER_MOVED",
      TimeStamp = as.POSIXct(
        "2015-01-01"
      ),
      IsIndirectActivity = TRUE|FALSE,
      OrganizationId = "string",
      Initiator = list(
        Id = "string",
        Username = "string",
        GivenName = "string",
        Surname = "string",
        EmailAddress = "string"
      ),
      Participants = list(
        Users = list(
          list(
            Id = "string",
            Username = "string",
            GivenName = "string",
            Surname = "string",
            EmailAddress = "string"
          )
        ),
        Groups = list(
          list(
            Id = "string",
            Name = "string"
          )
        )
      ),
      ResourceMetadata = list(
        Type = "FOLDER"|"DOCUMENT",
        Name = "string",
        OriginalName = "string",
        Id = "string",
        VersionId = "string",
        Owner = list(
          Id = "string",
          Username = "string",
          GivenName = "string",
          Surname = "string",
          EmailAddress = "string"
        ),
        ParentId = "string"
      ),
      OriginalParent = list(
        Type = "FOLDER"|"DOCUMENT",
        Name = "string",
        OriginalName = "string",
        Id = "string",
        VersionId = "string",
        Owner = list(
          Id = "string",
          Username = "string",
          GivenName = "string",
          Surname = "string",
          EmailAddress = "string"
        ),
        ParentId = "string"
      ),
      CommentMetadata = list(
        CommentId = "string",
        Contributor = list(
          Id = "string",
          Username = "string",
          EmailAddress = "string",
          GivenName = "string",
          Surname = "string",
          OrganizationId = "string",
          RootFolderId = "string",
          RecycleBinFolderId = "string",
          Status = "ACTIVE"|"INACTIVE"|"PENDING",
          Type = "USER"|"ADMIN"|"POWERUSER"|"MINIMALUSER"|"WORKSPACESUSER",
          CreatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          ModifiedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          TimeZoneId = "string",
          Locale = "en"|"fr"|"ko"|"de"|"es"|"ja"|"ru"|"zh_CN"|"zh_TW"|"pt_BR"|"default",
          Storage = list(
            StorageUtilizedInBytes = 123,
            StorageRule = list(
              StorageAllocatedInBytes = 123,
              StorageType = "UNLIMITED"|"QUOTA"
            )
          )
        ),
        CreatedTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        CommentStatus = "DRAFT"|"PUBLISHED"|"DELETED",
        RecipientId = "string"
      )
    )
  ),
  Marker = "string"
)
}
}
\description{
Describes the user activities in a specified time period.
}
\section{Request syntax}{
\preformatted{svc$describe_activities(
  AuthenticationToken = "string",
  StartTime = as.POSIXct(
    "2015-01-01"
  ),
  EndTime = as.POSIXct(
    "2015-01-01"
  ),
  OrganizationId = "string",
  ActivityTypes = "string",
  ResourceId = "string",
  UserId = "string",
  IncludeIndirectActivities = TRUE|FALSE,
  Limit = 123,
  Marker = "string"
)
}
}

\keyword{internal}
