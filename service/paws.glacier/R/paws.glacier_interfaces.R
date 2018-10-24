abort_multipart_upload_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string"), 
        UploadId = structure(logical(0), shape = "string", location = "uri", 
            locationName = "uploadId", type = "string")), shape = "AbortMultipartUploadInput", 
        type = "structure")
    return(populate(args, shape))
}

abort_multipart_upload_output <- function () 
{
    return(list())
}

abort_vault_lock_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string")), 
        shape = "AbortVaultLockInput", type = "structure")
    return(populate(args, shape))
}

abort_vault_lock_output <- function () 
{
    return(list())
}

add_tags_to_vault_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string"), 
        Tags = structure(list(structure(logical(0), shape = "TagValue", 
            type = "string")), shape = "TagMap", type = "map")), 
        shape = "AddTagsToVaultInput", type = "structure")
    return(populate(args, shape))
}

add_tags_to_vault_output <- function () 
{
    return(list())
}

complete_multipart_upload_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string"), 
        UploadId = structure(logical(0), shape = "string", location = "uri", 
            locationName = "uploadId", type = "string"), ArchiveSize = structure(logical(0), 
            shape = "string", location = "header", locationName = "archiveSize", 
            type = "string"), Checksum = structure(logical(0), 
            shape = "string", location = "header", locationName = "checksum", 
            type = "string")), shape = "CompleteMultipartUploadInput", 
        type = "structure")
    return(populate(args, shape))
}

complete_multipart_upload_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Location = structure(logical(0), 
        shape = "string", location = "header", locationName = "location", 
        type = "string"), Checksum = structure(logical(0), shape = "string", 
        location = "header", locationName = "checksum", type = "string"), 
        ArchiveId = structure(logical(0), shape = "string", location = "header", 
            locationName = "archiveId", type = "string")), shape = "ArchiveCreationOutput", 
        type = "structure")
    return(populate(args, shape))
}

complete_vault_lock_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string"), 
        LockId = structure(logical(0), shape = "string", location = "uri", 
            locationName = "lockId", type = "string")), shape = "CompleteVaultLockInput", 
        type = "structure")
    return(populate(args, shape))
}

complete_vault_lock_output <- function () 
{
    return(list())
}

create_vault_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string")), 
        shape = "CreateVaultInput", type = "structure")
    return(populate(args, shape))
}

create_vault_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Location = structure(logical(0), 
        shape = "string", location = "header", locationName = "location", 
        type = "string")), shape = "CreateVaultOutput", type = "structure")
    return(populate(args, shape))
}

delete_archive_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string"), 
        ArchiveId = structure(logical(0), shape = "string", location = "uri", 
            locationName = "archiveId", type = "string")), shape = "DeleteArchiveInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_archive_output <- function () 
{
    return(list())
}

delete_vault_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string")), 
        shape = "DeleteVaultInput", type = "structure")
    return(populate(args, shape))
}

delete_vault_output <- function () 
{
    return(list())
}

delete_vault_access_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string")), 
        shape = "DeleteVaultAccessPolicyInput", type = "structure")
    return(populate(args, shape))
}

delete_vault_access_policy_output <- function () 
{
    return(list())
}

delete_vault_notifications_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string")), 
        shape = "DeleteVaultNotificationsInput", type = "structure")
    return(populate(args, shape))
}

delete_vault_notifications_output <- function () 
{
    return(list())
}

describe_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string"), 
        JobId = structure(logical(0), shape = "string", location = "uri", 
            locationName = "jobId", type = "string")), shape = "DescribeJobInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "string", 
        type = "string"), JobDescription = structure(logical(0), 
        shape = "string", type = "string"), Action = structure(logical(0), 
        shape = "ActionCode", type = "string"), ArchiveId = structure(logical(0), 
        shape = "string", type = "string"), VaultARN = structure(logical(0), 
        shape = "string", type = "string"), CreationDate = structure(logical(0), 
        shape = "string", type = "string"), Completed = structure(logical(0), 
        shape = "boolean", type = "boolean"), StatusCode = structure(logical(0), 
        shape = "StatusCode", type = "string"), StatusMessage = structure(logical(0), 
        shape = "string", type = "string"), ArchiveSizeInBytes = structure(logical(0), 
        shape = "Size", type = "long"), InventorySizeInBytes = structure(logical(0), 
        shape = "Size", type = "long"), SNSTopic = structure(logical(0), 
        shape = "string", type = "string"), CompletionDate = structure(logical(0), 
        shape = "string", type = "string"), SHA256TreeHash = structure(logical(0), 
        shape = "string", type = "string"), ArchiveSHA256TreeHash = structure(logical(0), 
        shape = "string", type = "string"), RetrievalByteRange = structure(logical(0), 
        shape = "string", type = "string"), Tier = structure(logical(0), 
        shape = "string", type = "string"), InventoryRetrievalParameters = structure(list(Format = structure(logical(0), 
        shape = "string", type = "string"), StartDate = structure(logical(0), 
        shape = "DateTime", type = "string"), EndDate = structure(logical(0), 
        shape = "DateTime", type = "string"), Limit = structure(logical(0), 
        shape = "string", type = "string"), Marker = structure(logical(0), 
        shape = "string", type = "string")), shape = "InventoryRetrievalJobDescription", 
        type = "structure"), JobOutputPath = structure(logical(0), 
        shape = "string", type = "string"), SelectParameters = structure(list(InputSerialization = structure(list(Csv = structure(list(FileHeaderInfo = structure(logical(0), 
        shape = "FileHeaderInfo", type = "string"), Comments = structure(logical(0), 
        shape = "string", type = "string"), QuoteEscapeCharacter = structure(logical(0), 
        shape = "string", type = "string"), RecordDelimiter = structure(logical(0), 
        shape = "string", type = "string"), FieldDelimiter = structure(logical(0), 
        shape = "string", type = "string"), QuoteCharacter = structure(logical(0), 
        shape = "string", type = "string")), shape = "CSVInput", 
        type = "structure", locationName = "csv")), shape = "InputSerialization", 
        type = "structure"), ExpressionType = structure(logical(0), 
        shape = "ExpressionType", type = "string"), Expression = structure(logical(0), 
        shape = "string", type = "string"), OutputSerialization = structure(list(Csv = structure(list(QuoteFields = structure(logical(0), 
        shape = "QuoteFields", type = "string"), QuoteEscapeCharacter = structure(logical(0), 
        shape = "string", type = "string"), RecordDelimiter = structure(logical(0), 
        shape = "string", type = "string"), FieldDelimiter = structure(logical(0), 
        shape = "string", type = "string"), QuoteCharacter = structure(logical(0), 
        shape = "string", type = "string")), shape = "CSVOutput", 
        type = "structure", locationName = "csv")), shape = "OutputSerialization", 
        type = "structure")), shape = "SelectParameters", type = "structure"), 
        OutputLocation = structure(list(S3 = structure(list(BucketName = structure(logical(0), 
            shape = "string", type = "string"), Prefix = structure(logical(0), 
            shape = "string", type = "string"), Encryption = structure(list(EncryptionType = structure(logical(0), 
            shape = "EncryptionType", type = "string"), KMSKeyId = structure(logical(0), 
            shape = "string", type = "string"), KMSContext = structure(logical(0), 
            shape = "string", type = "string")), shape = "Encryption", 
            type = "structure"), CannedACL = structure(logical(0), 
            shape = "CannedACL", type = "string"), AccessControlList = structure(list(structure(list(Grantee = structure(list(Type = structure(logical(0), 
            shape = "Type", type = "string"), DisplayName = structure(logical(0), 
            shape = "string", type = "string"), URI = structure(logical(0), 
            shape = "string", type = "string"), ID = structure(logical(0), 
            shape = "string", type = "string"), EmailAddress = structure(logical(0), 
            shape = "string", type = "string")), shape = "Grantee", 
            type = "structure"), Permission = structure(logical(0), 
            shape = "Permission", type = "string")), shape = "Grant", 
            type = "structure")), shape = "AccessControlPolicyList", 
            type = "list"), Tagging = structure(list(structure(logical(0), 
            shape = "string", type = "string")), shape = "hashmap", 
            type = "map"), UserMetadata = structure(list(structure(logical(0), 
            shape = "string", type = "string")), shape = "hashmap", 
            type = "map"), StorageClass = structure(logical(0), 
            shape = "StorageClass", type = "string")), shape = "S3Location", 
            type = "structure")), shape = "OutputLocation", type = "structure")), 
        shape = "GlacierJobDescription", type = "structure")
    return(populate(args, shape))
}

describe_vault_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string")), 
        shape = "DescribeVaultInput", type = "structure")
    return(populate(args, shape))
}

describe_vault_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VaultARN = structure(logical(0), 
        shape = "string", type = "string"), VaultName = structure(logical(0), 
        shape = "string", type = "string"), CreationDate = structure(logical(0), 
        shape = "string", type = "string"), LastInventoryDate = structure(logical(0), 
        shape = "string", type = "string"), NumberOfArchives = structure(logical(0), 
        shape = "long", type = "long"), SizeInBytes = structure(logical(0), 
        shape = "long", type = "long")), shape = "DescribeVaultOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_data_retrieval_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string")), shape = "GetDataRetrievalPolicyInput", 
        type = "structure")
    return(populate(args, shape))
}

get_data_retrieval_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policy = structure(list(Rules = structure(list(structure(list(Strategy = structure(logical(0), 
        shape = "string", type = "string"), BytesPerHour = structure(logical(0), 
        shape = "NullableLong", type = "long")), shape = "DataRetrievalRule", 
        type = "structure")), shape = "DataRetrievalRulesList", 
        type = "list")), shape = "DataRetrievalPolicy", type = "structure")), 
        shape = "GetDataRetrievalPolicyOutput", type = "structure")
    return(populate(args, shape))
}

get_job_output_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string"), 
        JobId = structure(logical(0), shape = "string", location = "uri", 
            locationName = "jobId", type = "string"), Range = structure(logical(0), 
            shape = "string", location = "header", locationName = "range", 
            type = "string")), shape = "GetJobOutputInput", type = "structure")
    return(populate(args, shape))
}

get_job_output_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Body = structure(logical(0), shape = "Stream", 
        type = "blob", streaming = TRUE, locationName = "body"), 
        Checksum = structure(logical(0), shape = "string", location = "header", 
            locationName = "checksum", type = "string"), Status = structure(logical(0), 
            shape = "httpstatus", location = "statusCode", type = "integer", 
            locationName = "status"), ContentRange = structure(logical(0), 
            shape = "string", location = "header", locationName = "contentRange", 
            type = "string"), AcceptRanges = structure(logical(0), 
            shape = "string", location = "header", locationName = "acceptRanges", 
            type = "string"), ContentType = structure(logical(0), 
            shape = "string", location = "header", locationName = "contentType", 
            type = "string"), ArchiveDescription = structure(logical(0), 
            shape = "string", location = "header", locationName = "archiveDescription", 
            type = "string")), shape = "GetJobOutputOutput", 
        type = "structure", payload = "body")
    return(populate(args, shape))
}

get_vault_access_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string")), 
        shape = "GetVaultAccessPolicyInput", type = "structure")
    return(populate(args, shape))
}

get_vault_access_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policy = structure(list(Policy = structure(logical(0), 
        shape = "string", type = "string")), shape = "VaultAccessPolicy", 
        type = "structure", locationName = "policy")), shape = "GetVaultAccessPolicyOutput", 
        type = "structure", payload = "policy")
    return(populate(args, shape))
}

get_vault_lock_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string")), 
        shape = "GetVaultLockInput", type = "structure")
    return(populate(args, shape))
}

get_vault_lock_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policy = structure(logical(0), shape = "string", 
        type = "string"), State = structure(logical(0), shape = "string", 
        type = "string"), ExpirationDate = structure(logical(0), 
        shape = "string", type = "string"), CreationDate = structure(logical(0), 
        shape = "string", type = "string")), shape = "GetVaultLockOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_vault_notifications_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string")), 
        shape = "GetVaultNotificationsInput", type = "structure")
    return(populate(args, shape))
}

get_vault_notifications_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VaultNotificationConfig = structure(list(SNSTopic = structure(logical(0), 
        shape = "string", type = "string"), Events = structure(list(structure(logical(0), 
        shape = "string", type = "string")), shape = "NotificationEventList", 
        type = "list")), shape = "VaultNotificationConfig", type = "structure", 
        locationName = "vaultNotificationConfig")), shape = "GetVaultNotificationsOutput", 
        type = "structure", payload = "vaultNotificationConfig")
    return(populate(args, shape))
}

initiate_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string"), 
        JobParameters = structure(list(Format = structure(logical(0), 
            shape = "string", type = "string"), Type = structure(logical(0), 
            shape = "string", type = "string"), ArchiveId = structure(logical(0), 
            shape = "string", type = "string"), Description = structure(logical(0), 
            shape = "string", type = "string"), SNSTopic = structure(logical(0), 
            shape = "string", type = "string"), RetrievalByteRange = structure(logical(0), 
            shape = "string", type = "string"), Tier = structure(logical(0), 
            shape = "string", type = "string"), InventoryRetrievalParameters = structure(list(StartDate = structure(logical(0), 
            shape = "string", type = "string"), EndDate = structure(logical(0), 
            shape = "string", type = "string"), Limit = structure(logical(0), 
            shape = "string", type = "string"), Marker = structure(logical(0), 
            shape = "string", type = "string")), shape = "InventoryRetrievalJobInput", 
            type = "structure"), SelectParameters = structure(list(InputSerialization = structure(list(Csv = structure(list(FileHeaderInfo = structure(logical(0), 
            shape = "FileHeaderInfo", type = "string"), Comments = structure(logical(0), 
            shape = "string", type = "string"), QuoteEscapeCharacter = structure(logical(0), 
            shape = "string", type = "string"), RecordDelimiter = structure(logical(0), 
            shape = "string", type = "string"), FieldDelimiter = structure(logical(0), 
            shape = "string", type = "string"), QuoteCharacter = structure(logical(0), 
            shape = "string", type = "string")), shape = "CSVInput", 
            type = "structure", locationName = "csv")), shape = "InputSerialization", 
            type = "structure"), ExpressionType = structure(logical(0), 
            shape = "ExpressionType", type = "string"), Expression = structure(logical(0), 
            shape = "string", type = "string"), OutputSerialization = structure(list(Csv = structure(list(QuoteFields = structure(logical(0), 
            shape = "QuoteFields", type = "string"), QuoteEscapeCharacter = structure(logical(0), 
            shape = "string", type = "string"), RecordDelimiter = structure(logical(0), 
            shape = "string", type = "string"), FieldDelimiter = structure(logical(0), 
            shape = "string", type = "string"), QuoteCharacter = structure(logical(0), 
            shape = "string", type = "string")), shape = "CSVOutput", 
            type = "structure", locationName = "csv")), shape = "OutputSerialization", 
            type = "structure")), shape = "SelectParameters", 
            type = "structure"), OutputLocation = structure(list(S3 = structure(list(BucketName = structure(logical(0), 
            shape = "string", type = "string"), Prefix = structure(logical(0), 
            shape = "string", type = "string"), Encryption = structure(list(EncryptionType = structure(logical(0), 
            shape = "EncryptionType", type = "string"), KMSKeyId = structure(logical(0), 
            shape = "string", type = "string"), KMSContext = structure(logical(0), 
            shape = "string", type = "string")), shape = "Encryption", 
            type = "structure"), CannedACL = structure(logical(0), 
            shape = "CannedACL", type = "string"), AccessControlList = structure(list(structure(list(Grantee = structure(list(Type = structure(logical(0), 
            shape = "Type", type = "string"), DisplayName = structure(logical(0), 
            shape = "string", type = "string"), URI = structure(logical(0), 
            shape = "string", type = "string"), ID = structure(logical(0), 
            shape = "string", type = "string"), EmailAddress = structure(logical(0), 
            shape = "string", type = "string")), shape = "Grantee", 
            type = "structure"), Permission = structure(logical(0), 
            shape = "Permission", type = "string")), shape = "Grant", 
            type = "structure")), shape = "AccessControlPolicyList", 
            type = "list"), Tagging = structure(list(structure(logical(0), 
            shape = "string", type = "string")), shape = "hashmap", 
            type = "map"), UserMetadata = structure(list(structure(logical(0), 
            shape = "string", type = "string")), shape = "hashmap", 
            type = "map"), StorageClass = structure(logical(0), 
            shape = "StorageClass", type = "string")), shape = "S3Location", 
            type = "structure")), shape = "OutputLocation", type = "structure")), 
            shape = "JobParameters", type = "structure", locationName = "jobParameters")), 
        shape = "InitiateJobInput", type = "structure", payload = "jobParameters")
    return(populate(args, shape))
}

initiate_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Location = structure(logical(0), 
        shape = "string", location = "header", locationName = "location", 
        type = "string"), JobId = structure(logical(0), shape = "string", 
        location = "header", locationName = "jobId", type = "string"), 
        JobOutputPath = structure(logical(0), shape = "string", 
            location = "header", locationName = "jobOutputPath", 
            type = "string")), shape = "InitiateJobOutput", type = "structure")
    return(populate(args, shape))
}

initiate_multipart_upload_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string"), 
        ArchiveDescription = structure(logical(0), shape = "string", 
            location = "header", locationName = "archiveDescription", 
            type = "string"), PartSize = structure(logical(0), 
            shape = "string", location = "header", locationName = "partSize", 
            type = "string")), shape = "InitiateMultipartUploadInput", 
        type = "structure")
    return(populate(args, shape))
}

initiate_multipart_upload_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Location = structure(logical(0), 
        shape = "string", location = "header", locationName = "location", 
        type = "string"), UploadId = structure(logical(0), shape = "string", 
        location = "header", locationName = "uploadId", type = "string")), 
        shape = "InitiateMultipartUploadOutput", type = "structure")
    return(populate(args, shape))
}

initiate_vault_lock_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string"), 
        Policy = structure(list(Policy = structure(logical(0), 
            shape = "string", type = "string")), shape = "VaultLockPolicy", 
            type = "structure", locationName = "policy")), shape = "InitiateVaultLockInput", 
        type = "structure", payload = "policy")
    return(populate(args, shape))
}

initiate_vault_lock_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LockId = structure(logical(0), shape = "string", 
        location = "header", locationName = "lockId", type = "string")), 
        shape = "InitiateVaultLockOutput", type = "structure")
    return(populate(args, shape))
}

list_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string"), 
        Limit = structure(logical(0), shape = "string", location = "querystring", 
            locationName = "limit", type = "string"), Marker = structure(logical(0), 
            shape = "string", location = "querystring", locationName = "marker", 
            type = "string"), Statuscode = structure(logical(0), 
            shape = "string", location = "querystring", locationName = "statuscode", 
            type = "string"), Completed = structure(logical(0), 
            shape = "string", location = "querystring", locationName = "completed", 
            type = "string")), shape = "ListJobsInput", type = "structure")
    return(populate(args, shape))
}

list_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobList = structure(list(structure(list(JobId = structure(logical(0), 
        shape = "string", type = "string"), JobDescription = structure(logical(0), 
        shape = "string", type = "string"), Action = structure(logical(0), 
        shape = "ActionCode", type = "string"), ArchiveId = structure(logical(0), 
        shape = "string", type = "string"), VaultARN = structure(logical(0), 
        shape = "string", type = "string"), CreationDate = structure(logical(0), 
        shape = "string", type = "string"), Completed = structure(logical(0), 
        shape = "boolean", type = "boolean"), StatusCode = structure(logical(0), 
        shape = "StatusCode", type = "string"), StatusMessage = structure(logical(0), 
        shape = "string", type = "string"), ArchiveSizeInBytes = structure(logical(0), 
        shape = "Size", type = "long"), InventorySizeInBytes = structure(logical(0), 
        shape = "Size", type = "long"), SNSTopic = structure(logical(0), 
        shape = "string", type = "string"), CompletionDate = structure(logical(0), 
        shape = "string", type = "string"), SHA256TreeHash = structure(logical(0), 
        shape = "string", type = "string"), ArchiveSHA256TreeHash = structure(logical(0), 
        shape = "string", type = "string"), RetrievalByteRange = structure(logical(0), 
        shape = "string", type = "string"), Tier = structure(logical(0), 
        shape = "string", type = "string"), InventoryRetrievalParameters = structure(list(Format = structure(logical(0), 
        shape = "string", type = "string"), StartDate = structure(logical(0), 
        shape = "DateTime", type = "string"), EndDate = structure(logical(0), 
        shape = "DateTime", type = "string"), Limit = structure(logical(0), 
        shape = "string", type = "string"), Marker = structure(logical(0), 
        shape = "string", type = "string")), shape = "InventoryRetrievalJobDescription", 
        type = "structure"), JobOutputPath = structure(logical(0), 
        shape = "string", type = "string"), SelectParameters = structure(list(InputSerialization = structure(list(Csv = structure(list(FileHeaderInfo = structure(logical(0), 
        shape = "FileHeaderInfo", type = "string"), Comments = structure(logical(0), 
        shape = "string", type = "string"), QuoteEscapeCharacter = structure(logical(0), 
        shape = "string", type = "string"), RecordDelimiter = structure(logical(0), 
        shape = "string", type = "string"), FieldDelimiter = structure(logical(0), 
        shape = "string", type = "string"), QuoteCharacter = structure(logical(0), 
        shape = "string", type = "string")), shape = "CSVInput", 
        type = "structure", locationName = "csv")), shape = "InputSerialization", 
        type = "structure"), ExpressionType = structure(logical(0), 
        shape = "ExpressionType", type = "string"), Expression = structure(logical(0), 
        shape = "string", type = "string"), OutputSerialization = structure(list(Csv = structure(list(QuoteFields = structure(logical(0), 
        shape = "QuoteFields", type = "string"), QuoteEscapeCharacter = structure(logical(0), 
        shape = "string", type = "string"), RecordDelimiter = structure(logical(0), 
        shape = "string", type = "string"), FieldDelimiter = structure(logical(0), 
        shape = "string", type = "string"), QuoteCharacter = structure(logical(0), 
        shape = "string", type = "string")), shape = "CSVOutput", 
        type = "structure", locationName = "csv")), shape = "OutputSerialization", 
        type = "structure")), shape = "SelectParameters", type = "structure"), 
        OutputLocation = structure(list(S3 = structure(list(BucketName = structure(logical(0), 
            shape = "string", type = "string"), Prefix = structure(logical(0), 
            shape = "string", type = "string"), Encryption = structure(list(EncryptionType = structure(logical(0), 
            shape = "EncryptionType", type = "string"), KMSKeyId = structure(logical(0), 
            shape = "string", type = "string"), KMSContext = structure(logical(0), 
            shape = "string", type = "string")), shape = "Encryption", 
            type = "structure"), CannedACL = structure(logical(0), 
            shape = "CannedACL", type = "string"), AccessControlList = structure(list(structure(list(Grantee = structure(list(Type = structure(logical(0), 
            shape = "Type", type = "string"), DisplayName = structure(logical(0), 
            shape = "string", type = "string"), URI = structure(logical(0), 
            shape = "string", type = "string"), ID = structure(logical(0), 
            shape = "string", type = "string"), EmailAddress = structure(logical(0), 
            shape = "string", type = "string")), shape = "Grantee", 
            type = "structure"), Permission = structure(logical(0), 
            shape = "Permission", type = "string")), shape = "Grant", 
            type = "structure")), shape = "AccessControlPolicyList", 
            type = "list"), Tagging = structure(list(structure(logical(0), 
            shape = "string", type = "string")), shape = "hashmap", 
            type = "map"), UserMetadata = structure(list(structure(logical(0), 
            shape = "string", type = "string")), shape = "hashmap", 
            type = "map"), StorageClass = structure(logical(0), 
            shape = "StorageClass", type = "string")), shape = "S3Location", 
            type = "structure")), shape = "OutputLocation", type = "structure")), 
        shape = "GlacierJobDescription", type = "structure")), 
        shape = "JobList", type = "list"), Marker = structure(logical(0), 
        shape = "string", type = "string")), shape = "ListJobsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_multipart_uploads_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string"), 
        Marker = structure(logical(0), shape = "string", location = "querystring", 
            locationName = "marker", type = "string"), Limit = structure(logical(0), 
            shape = "string", location = "querystring", locationName = "limit", 
            type = "string")), shape = "ListMultipartUploadsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_multipart_uploads_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UploadsList = structure(list(structure(list(MultipartUploadId = structure(logical(0), 
        shape = "string", type = "string"), VaultARN = structure(logical(0), 
        shape = "string", type = "string"), ArchiveDescription = structure(logical(0), 
        shape = "string", type = "string"), PartSizeInBytes = structure(logical(0), 
        shape = "long", type = "long"), CreationDate = structure(logical(0), 
        shape = "string", type = "string")), shape = "UploadListElement", 
        type = "structure")), shape = "UploadsList", type = "list"), 
        Marker = structure(logical(0), shape = "string", type = "string")), 
        shape = "ListMultipartUploadsOutput", type = "structure")
    return(populate(args, shape))
}

list_parts_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string"), 
        UploadId = structure(logical(0), shape = "string", location = "uri", 
            locationName = "uploadId", type = "string"), Marker = structure(logical(0), 
            shape = "string", location = "querystring", locationName = "marker", 
            type = "string"), Limit = structure(logical(0), shape = "string", 
            location = "querystring", locationName = "limit", 
            type = "string")), shape = "ListPartsInput", type = "structure")
    return(populate(args, shape))
}

list_parts_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MultipartUploadId = structure(logical(0), 
        shape = "string", type = "string"), VaultARN = structure(logical(0), 
        shape = "string", type = "string"), ArchiveDescription = structure(logical(0), 
        shape = "string", type = "string"), PartSizeInBytes = structure(logical(0), 
        shape = "long", type = "long"), CreationDate = structure(logical(0), 
        shape = "string", type = "string"), Parts = structure(list(structure(list(RangeInBytes = structure(logical(0), 
        shape = "string", type = "string"), SHA256TreeHash = structure(logical(0), 
        shape = "string", type = "string")), shape = "PartListElement", 
        type = "structure")), shape = "PartList", type = "list"), 
        Marker = structure(logical(0), shape = "string", type = "string")), 
        shape = "ListPartsOutput", type = "structure")
    return(populate(args, shape))
}

list_provisioned_capacity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string")), shape = "ListProvisionedCapacityInput", 
        type = "structure")
    return(populate(args, shape))
}

list_provisioned_capacity_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProvisionedCapacityList = structure(list(structure(list(CapacityId = structure(logical(0), 
        shape = "string", type = "string"), StartDate = structure(logical(0), 
        shape = "string", type = "string"), ExpirationDate = structure(logical(0), 
        shape = "string", type = "string")), shape = "ProvisionedCapacityDescription", 
        type = "structure")), shape = "ProvisionedCapacityList", 
        type = "list")), shape = "ListProvisionedCapacityOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_vault_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string")), 
        shape = "ListTagsForVaultInput", type = "structure")
    return(populate(args, shape))
}

list_tags_for_vault_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(logical(0), 
        shape = "TagValue", type = "string")), shape = "TagMap", 
        type = "map")), shape = "ListTagsForVaultOutput", type = "structure")
    return(populate(args, shape))
}

list_vaults_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), Marker = structure(logical(0), shape = "string", 
        location = "querystring", locationName = "marker", type = "string"), 
        Limit = structure(logical(0), shape = "string", location = "querystring", 
            locationName = "limit", type = "string")), shape = "ListVaultsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_vaults_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VaultList = structure(list(structure(list(VaultARN = structure(logical(0), 
        shape = "string", type = "string"), VaultName = structure(logical(0), 
        shape = "string", type = "string"), CreationDate = structure(logical(0), 
        shape = "string", type = "string"), LastInventoryDate = structure(logical(0), 
        shape = "string", type = "string"), NumberOfArchives = structure(logical(0), 
        shape = "long", type = "long"), SizeInBytes = structure(logical(0), 
        shape = "long", type = "long")), shape = "DescribeVaultOutput", 
        type = "structure")), shape = "VaultList", type = "list"), 
        Marker = structure(logical(0), shape = "string", type = "string")), 
        shape = "ListVaultsOutput", type = "structure")
    return(populate(args, shape))
}

purchase_provisioned_capacity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string")), shape = "PurchaseProvisionedCapacityInput", 
        type = "structure")
    return(populate(args, shape))
}

purchase_provisioned_capacity_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CapacityId = structure(logical(0), 
        shape = "string", location = "header", locationName = "capacityId", 
        type = "string")), shape = "PurchaseProvisionedCapacityOutput", 
        type = "structure")
    return(populate(args, shape))
}

remove_tags_from_vault_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string"), 
        TagKeys = structure(list(structure(logical(0), shape = "string", 
            type = "string")), shape = "TagKeyList", type = "list")), 
        shape = "RemoveTagsFromVaultInput", type = "structure")
    return(populate(args, shape))
}

remove_tags_from_vault_output <- function () 
{
    return(list())
}

set_data_retrieval_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), Policy = structure(list(Rules = structure(list(structure(list(Strategy = structure(logical(0), 
        shape = "string", type = "string"), BytesPerHour = structure(logical(0), 
        shape = "NullableLong", type = "long")), shape = "DataRetrievalRule", 
        type = "structure")), shape = "DataRetrievalRulesList", 
        type = "list")), shape = "DataRetrievalPolicy", type = "structure")), 
        shape = "SetDataRetrievalPolicyInput", type = "structure")
    return(populate(args, shape))
}

set_data_retrieval_policy_output <- function () 
{
    return(list())
}

set_vault_access_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string"), 
        Policy = structure(list(Policy = structure(logical(0), 
            shape = "string", type = "string")), shape = "VaultAccessPolicy", 
            type = "structure", locationName = "policy")), shape = "SetVaultAccessPolicyInput", 
        type = "structure", payload = "policy")
    return(populate(args, shape))
}

set_vault_access_policy_output <- function () 
{
    return(list())
}

set_vault_notifications_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string"), 
        VaultNotificationConfig = structure(list(SNSTopic = structure(logical(0), 
            shape = "string", type = "string"), Events = structure(list(structure(logical(0), 
            shape = "string", type = "string")), shape = "NotificationEventList", 
            type = "list")), shape = "VaultNotificationConfig", 
            type = "structure", locationName = "vaultNotificationConfig")), 
        shape = "SetVaultNotificationsInput", type = "structure", 
        payload = "vaultNotificationConfig")
    return(populate(args, shape))
}

set_vault_notifications_output <- function () 
{
    return(list())
}

upload_archive_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VaultName = structure(logical(0), 
        shape = "string", location = "uri", locationName = "vaultName", 
        type = "string"), AccountId = structure(logical(0), shape = "string", 
        location = "uri", locationName = "accountId", type = "string"), 
        ArchiveDescription = structure(logical(0), shape = "string", 
            location = "header", locationName = "archiveDescription", 
            type = "string"), Checksum = structure(logical(0), 
            shape = "string", location = "header", locationName = "checksum", 
            type = "string"), Body = structure(logical(0), shape = "Stream", 
            type = "blob", streaming = TRUE, locationName = "body")), 
        shape = "UploadArchiveInput", type = "structure", payload = "body")
    return(populate(args, shape))
}

upload_archive_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Location = structure(logical(0), 
        shape = "string", location = "header", locationName = "location", 
        type = "string"), Checksum = structure(logical(0), shape = "string", 
        location = "header", locationName = "checksum", type = "string"), 
        ArchiveId = structure(logical(0), shape = "string", location = "header", 
            locationName = "archiveId", type = "string")), shape = "ArchiveCreationOutput", 
        type = "structure")
    return(populate(args, shape))
}

upload_multipart_part_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "string", location = "uri", locationName = "accountId", 
        type = "string"), VaultName = structure(logical(0), shape = "string", 
        location = "uri", locationName = "vaultName", type = "string"), 
        UploadId = structure(logical(0), shape = "string", location = "uri", 
            locationName = "uploadId", type = "string"), Checksum = structure(logical(0), 
            shape = "string", location = "header", locationName = "checksum", 
            type = "string"), Range = structure(logical(0), shape = "string", 
            location = "header", locationName = "range", type = "string"), 
        Body = structure(logical(0), shape = "Stream", type = "blob", 
            streaming = TRUE, locationName = "body")), shape = "UploadMultipartPartInput", 
        type = "structure", payload = "body")
    return(populate(args, shape))
}

upload_multipart_part_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Checksum = structure(logical(0), 
        shape = "string", location = "header", locationName = "checksum", 
        type = "string")), shape = "UploadMultipartPartOutput", 
        type = "structure")
    return(populate(args, shape))
}
