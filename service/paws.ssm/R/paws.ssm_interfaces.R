add_tags_to_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceType = structure(logical(0), 
        shape = "ResourceTypeForTagging", type = "string"), ResourceId = structure(logical(0), 
        shape = "ResourceId", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "^(?!^(?i)aws:)(?=^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$).*$"), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
        shape = "Tag", type = "structure")), shape = "TagList", 
        type = "list")), shape = "AddTagsToResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

add_tags_to_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AddTagsToResourceResult", 
        type = "structure")
    return(populate(args, shape))
}

cancel_command_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CommandId = structure(logical(0), 
        shape = "CommandId", type = "string", max = 36L, min = 36L), 
        InstanceIds = structure(list(structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)")), 
            shape = "InstanceIdList", type = "list", max = 50L, 
            min = 0L)), shape = "CancelCommandRequest", type = "structure")
    return(populate(args, shape))
}

cancel_command_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CancelCommandResult", 
        type = "structure")
    return(populate(args, shape))
}

cancel_maintenance_window_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowExecutionId = structure(logical(0), 
        shape = "MaintenanceWindowExecutionId", type = "string", 
        max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$")), 
        shape = "CancelMaintenanceWindowExecutionRequest", type = "structure")
    return(populate(args, shape))
}

cancel_maintenance_window_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowExecutionId = structure(logical(0), 
        shape = "MaintenanceWindowExecutionId", type = "string", 
        max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$")), 
        shape = "CancelMaintenanceWindowExecutionResult", type = "structure")
    return(populate(args, shape))
}

create_activation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Description = structure(logical(0), 
        shape = "ActivationDescription", type = "string", max = 256L, 
        min = 0L), DefaultInstanceName = structure(logical(0), 
        shape = "DefaultInstanceName", type = "string", max = 256L, 
        min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        IamRole = structure(logical(0), shape = "IamRole", type = "string", 
            max = 64L), RegistrationLimit = structure(logical(0), 
            shape = "RegistrationLimit", box = TRUE, type = "integer", 
            max = 1000L, min = 1L), ExpirationDate = structure(logical(0), 
            shape = "ExpirationDate", type = "timestamp")), shape = "CreateActivationRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_activation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActivationId = structure(logical(0), 
        shape = "ActivationId", type = "string", pattern = "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"), 
        ActivationCode = structure(logical(0), shape = "ActivationCode", 
            type = "string", max = 250L, min = 20L)), shape = "CreateActivationResult", 
        type = "structure")
    return(populate(args, shape))
}

create_association_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "DocumentName", 
        type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        Parameters = structure(list(structure(list(structure(logical(0), 
            shape = "ParameterValue", type = "string")), shape = "ParameterValueList", 
            type = "list")), shape = "Parameters", type = "map"), 
        Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        ScheduleExpression = structure(logical(0), shape = "ScheduleExpression", 
            type = "string", max = 256L, min = 1L), OutputLocation = structure(list(S3Location = structure(list(OutputS3Region = structure(logical(0), 
            shape = "S3Region", type = "string", max = 20L, min = 3L), 
            OutputS3BucketName = structure(logical(0), shape = "S3BucketName", 
                type = "string", max = 63L, min = 3L), OutputS3KeyPrefix = structure(logical(0), 
                shape = "S3KeyPrefix", type = "string", max = 500L)), 
            shape = "S3OutputLocation", type = "structure")), 
            shape = "InstanceAssociationOutputLocation", type = "structure"), 
        AssociationName = structure(logical(0), shape = "AssociationName", 
            type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$")), 
        shape = "CreateAssociationRequest", type = "structure")
    return(populate(args, shape))
}

create_association_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationDescription = structure(list(Name = structure(logical(0), 
        shape = "DocumentName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        AssociationVersion = structure(logical(0), shape = "AssociationVersion", 
            type = "string", pattern = "([$]LATEST)|([1-9][0-9]*)"), 
        Date = structure(logical(0), shape = "DateTime", type = "timestamp"), 
        LastUpdateAssociationDate = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), Status = structure(list(Date = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), Name = structure(logical(0), 
            shape = "AssociationStatusName", type = "string"), 
            Message = structure(logical(0), shape = "StatusMessage", 
                type = "string", max = 1024L, min = 1L), AdditionalInfo = structure(logical(0), 
                shape = "StatusAdditionalInfo", type = "string", 
                max = 1024L)), shape = "AssociationStatus", type = "structure"), 
        Overview = structure(list(Status = structure(logical(0), 
            shape = "StatusName", type = "string"), DetailedStatus = structure(logical(0), 
            shape = "StatusName", type = "string"), AssociationStatusAggregatedCount = structure(list(structure(logical(0), 
            shape = "InstanceCount", type = "integer")), shape = "AssociationStatusAggregatedCount", 
            type = "map")), shape = "AssociationOverview", type = "structure"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        Parameters = structure(list(structure(list(structure(logical(0), 
            shape = "ParameterValue", type = "string")), shape = "ParameterValueList", 
            type = "list")), shape = "Parameters", type = "map"), 
        AssociationId = structure(logical(0), shape = "AssociationId", 
            type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), 
        Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        ScheduleExpression = structure(logical(0), shape = "ScheduleExpression", 
            type = "string", max = 256L, min = 1L), OutputLocation = structure(list(S3Location = structure(list(OutputS3Region = structure(logical(0), 
            shape = "S3Region", type = "string", max = 20L, min = 3L), 
            OutputS3BucketName = structure(logical(0), shape = "S3BucketName", 
                type = "string", max = 63L, min = 3L), OutputS3KeyPrefix = structure(logical(0), 
                shape = "S3KeyPrefix", type = "string", max = 500L)), 
            shape = "S3OutputLocation", type = "structure")), 
            shape = "InstanceAssociationOutputLocation", type = "structure"), 
        LastExecutionDate = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), LastSuccessfulExecutionDate = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), AssociationName = structure(logical(0), 
            shape = "AssociationName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$")), 
        shape = "AssociationDescription", type = "structure")), 
        shape = "CreateAssociationResult", type = "structure")
    return(populate(args, shape))
}

create_association_batch_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Entries = structure(list(structure(list(Name = structure(logical(0), 
        shape = "DocumentName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        Parameters = structure(list(structure(list(structure(logical(0), 
            shape = "ParameterValue", type = "string")), shape = "ParameterValueList", 
            type = "list")), shape = "Parameters", type = "map"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        ScheduleExpression = structure(logical(0), shape = "ScheduleExpression", 
            type = "string", max = 256L, min = 1L), OutputLocation = structure(list(S3Location = structure(list(OutputS3Region = structure(logical(0), 
            shape = "S3Region", type = "string", max = 20L, min = 3L), 
            OutputS3BucketName = structure(logical(0), shape = "S3BucketName", 
                type = "string", max = 63L, min = 3L), OutputS3KeyPrefix = structure(logical(0), 
                shape = "S3KeyPrefix", type = "string", max = 500L)), 
            shape = "S3OutputLocation", type = "structure")), 
            shape = "InstanceAssociationOutputLocation", type = "structure"), 
        AssociationName = structure(logical(0), shape = "AssociationName", 
            type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$")), 
        shape = "CreateAssociationBatchRequestEntry", type = "structure")), 
        shape = "CreateAssociationBatchRequestEntries", type = "list", 
        min = 1L)), shape = "CreateAssociationBatchRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_association_batch_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Successful = structure(list(structure(list(Name = structure(logical(0), 
        shape = "DocumentName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        AssociationVersion = structure(logical(0), shape = "AssociationVersion", 
            type = "string", pattern = "([$]LATEST)|([1-9][0-9]*)"), 
        Date = structure(logical(0), shape = "DateTime", type = "timestamp"), 
        LastUpdateAssociationDate = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), Status = structure(list(Date = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), Name = structure(logical(0), 
            shape = "AssociationStatusName", type = "string"), 
            Message = structure(logical(0), shape = "StatusMessage", 
                type = "string", max = 1024L, min = 1L), AdditionalInfo = structure(logical(0), 
                shape = "StatusAdditionalInfo", type = "string", 
                max = 1024L)), shape = "AssociationStatus", type = "structure"), 
        Overview = structure(list(Status = structure(logical(0), 
            shape = "StatusName", type = "string"), DetailedStatus = structure(logical(0), 
            shape = "StatusName", type = "string"), AssociationStatusAggregatedCount = structure(list(structure(logical(0), 
            shape = "InstanceCount", type = "integer")), shape = "AssociationStatusAggregatedCount", 
            type = "map")), shape = "AssociationOverview", type = "structure"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        Parameters = structure(list(structure(list(structure(logical(0), 
            shape = "ParameterValue", type = "string")), shape = "ParameterValueList", 
            type = "list")), shape = "Parameters", type = "map"), 
        AssociationId = structure(logical(0), shape = "AssociationId", 
            type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), 
        Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        ScheduleExpression = structure(logical(0), shape = "ScheduleExpression", 
            type = "string", max = 256L, min = 1L), OutputLocation = structure(list(S3Location = structure(list(OutputS3Region = structure(logical(0), 
            shape = "S3Region", type = "string", max = 20L, min = 3L), 
            OutputS3BucketName = structure(logical(0), shape = "S3BucketName", 
                type = "string", max = 63L, min = 3L), OutputS3KeyPrefix = structure(logical(0), 
                shape = "S3KeyPrefix", type = "string", max = 500L)), 
            shape = "S3OutputLocation", type = "structure")), 
            shape = "InstanceAssociationOutputLocation", type = "structure"), 
        LastExecutionDate = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), LastSuccessfulExecutionDate = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), AssociationName = structure(logical(0), 
            shape = "AssociationName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$")), 
        shape = "AssociationDescription", type = "structure")), 
        shape = "AssociationDescriptionList", type = "list"), 
        Failed = structure(list(structure(list(Entry = structure(list(Name = structure(logical(0), 
            shape = "DocumentName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
            InstanceId = structure(logical(0), shape = "InstanceId", 
                type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
            Parameters = structure(list(structure(list(structure(logical(0), 
                shape = "ParameterValue", type = "string")), 
                shape = "ParameterValueList", type = "list")), 
                shape = "Parameters", type = "map"), DocumentVersion = structure(logical(0), 
                shape = "DocumentVersion", type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
            Targets = structure(list(structure(list(Key = structure(logical(0), 
                shape = "TargetKey", type = "string", max = 128L, 
                min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
                Values = structure(list(structure(logical(0), 
                  shape = "TargetValue", type = "string")), shape = "TargetValues", 
                  type = "list", max = 50L, min = 0L)), shape = "Target", 
                type = "structure")), shape = "Targets", type = "list", 
                max = 5L, min = 0L), ScheduleExpression = structure(logical(0), 
                shape = "ScheduleExpression", type = "string", 
                max = 256L, min = 1L), OutputLocation = structure(list(S3Location = structure(list(OutputS3Region = structure(logical(0), 
                shape = "S3Region", type = "string", max = 20L, 
                min = 3L), OutputS3BucketName = structure(logical(0), 
                shape = "S3BucketName", type = "string", max = 63L, 
                min = 3L), OutputS3KeyPrefix = structure(logical(0), 
                shape = "S3KeyPrefix", type = "string", max = 500L)), 
                shape = "S3OutputLocation", type = "structure")), 
                shape = "InstanceAssociationOutputLocation", 
                type = "structure"), AssociationName = structure(logical(0), 
                shape = "AssociationName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$")), 
            shape = "CreateAssociationBatchRequestEntry", type = "structure"), 
            Message = structure(logical(0), shape = "BatchErrorMessage", 
                type = "string"), Fault = structure(logical(0), 
                shape = "Fault", type = "string")), shape = "FailedCreateAssociation", 
            type = "structure")), shape = "FailedCreateAssociationList", 
            type = "list")), shape = "CreateAssociationBatchResult", 
        type = "structure")
    return(populate(args, shape))
}

create_document_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Content = structure(logical(0), shape = "DocumentContent", 
        type = "string", min = 1L), Name = structure(logical(0), 
        shape = "DocumentName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        DocumentType = structure(logical(0), shape = "DocumentType", 
            type = "string"), DocumentFormat = structure(logical(0), 
            shape = "DocumentFormat", type = "string"), TargetType = structure(logical(0), 
            shape = "TargetType", type = "string", max = 200L, 
            pattern = "^\\/[\\w\\.\\-\\:\\/]*$")), shape = "CreateDocumentRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_document_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DocumentDescription = structure(list(Sha1 = structure(logical(0), 
        shape = "DocumentSha1", type = "string"), Hash = structure(logical(0), 
        shape = "DocumentHash", type = "string", max = 256L), 
        HashType = structure(logical(0), shape = "DocumentHashType", 
            type = "string"), Name = structure(logical(0), shape = "DocumentARN", 
            type = "string", pattern = "^[a-zA-Z0-9_\\-.:/]{3,128}$"), 
        Owner = structure(logical(0), shape = "DocumentOwner", 
            type = "string"), CreatedDate = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), Status = structure(logical(0), 
            shape = "DocumentStatus", type = "string"), DocumentVersion = structure(logical(0), 
            shape = "DocumentVersion", type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        Description = structure(logical(0), shape = "DescriptionInDocument", 
            type = "string"), Parameters = structure(list(structure(list(Name = structure(logical(0), 
            shape = "DocumentParameterName", type = "string"), 
            Type = structure(logical(0), shape = "DocumentParameterType", 
                type = "string"), Description = structure(logical(0), 
                shape = "DocumentParameterDescrption", type = "string"), 
            DefaultValue = structure(logical(0), shape = "DocumentParameterDefaultValue", 
                type = "string")), shape = "DocumentParameter", 
            type = "structure")), shape = "DocumentParameterList", 
            type = "list"), PlatformTypes = structure(list(structure(logical(0), 
            shape = "PlatformType", type = "string")), shape = "PlatformTypeList", 
            type = "list"), DocumentType = structure(logical(0), 
            shape = "DocumentType", type = "string"), SchemaVersion = structure(logical(0), 
            shape = "DocumentSchemaVersion", type = "string", 
            pattern = "([0-9]+)\\.([0-9]+)"), LatestVersion = structure(logical(0), 
            shape = "DocumentVersion", type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        DefaultVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        DocumentFormat = structure(logical(0), shape = "DocumentFormat", 
            type = "string"), TargetType = structure(logical(0), 
            shape = "TargetType", type = "string", max = 200L, 
            pattern = "^\\/[\\w\\.\\-\\:\\/]*$"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^(?!^(?i)aws:)(?=^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$).*$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list")), shape = "DocumentDescription", type = "structure")), 
        shape = "CreateDocumentResult", type = "structure")
    return(populate(args, shape))
}

create_maintenance_window_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "MaintenanceWindowName", 
        type = "string", max = 128L, min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        Description = structure(logical(0), shape = "MaintenanceWindowDescription", 
            type = "string", max = 128L, min = 1L, sensitive = TRUE), 
        StartDate = structure(logical(0), shape = "MaintenanceWindowStringDateTime", 
            type = "string"), EndDate = structure(logical(0), 
            shape = "MaintenanceWindowStringDateTime", type = "string"), 
        Schedule = structure(logical(0), shape = "MaintenanceWindowSchedule", 
            type = "string", max = 256L, min = 1L), ScheduleTimezone = structure(logical(0), 
            shape = "MaintenanceWindowTimezone", type = "string"), 
        Duration = structure(logical(0), shape = "MaintenanceWindowDurationHours", 
            type = "integer", max = 24L, min = 1L), Cutoff = structure(logical(0), 
            shape = "MaintenanceWindowCutoff", type = "integer", 
            max = 23L, min = 0L), AllowUnassociatedTargets = structure(logical(0), 
            shape = "MaintenanceWindowAllowUnassociatedTargets", 
            type = "boolean"), ClientToken = structure(logical(0), 
            shape = "ClientToken", idempotencyToken = TRUE, type = "string", 
            max = 64L, min = 1L)), shape = "CreateMaintenanceWindowRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_maintenance_window_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$")), shape = "CreateMaintenanceWindowResult", 
        type = "structure")
    return(populate(args, shape))
}

create_patch_baseline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperatingSystem = structure(logical(0), 
        shape = "OperatingSystem", type = "string"), Name = structure(logical(0), 
        shape = "BaselineName", type = "string", max = 128L, 
        min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), GlobalFilters = structure(list(PatchFilters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "PatchFilterKey", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "PatchFilterValue", type = "string", max = 64L, 
        min = 1L)), shape = "PatchFilterValueList", type = "list", 
        max = 20L, min = 1L)), shape = "PatchFilter", type = "structure")), 
        shape = "PatchFilterList", type = "list", max = 4L, min = 0L)), 
        shape = "PatchFilterGroup", type = "structure"), ApprovalRules = structure(list(PatchRules = structure(list(structure(list(PatchFilterGroup = structure(list(PatchFilters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "PatchFilterKey", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "PatchFilterValue", type = "string", max = 64L, 
        min = 1L)), shape = "PatchFilterValueList", type = "list", 
        max = 20L, min = 1L)), shape = "PatchFilter", type = "structure")), 
        shape = "PatchFilterList", type = "list", max = 4L, min = 0L)), 
        shape = "PatchFilterGroup", type = "structure"), ComplianceLevel = structure(logical(0), 
        shape = "PatchComplianceLevel", type = "string"), ApproveAfterDays = structure(logical(0), 
        shape = "ApproveAfterDays", box = TRUE, type = "integer", 
        max = 100L, min = 0L), EnableNonSecurity = structure(logical(0), 
        shape = "Boolean", box = TRUE, type = "boolean")), shape = "PatchRule", 
        type = "structure")), shape = "PatchRuleList", type = "list", 
        max = 10L, min = 0L)), shape = "PatchRuleGroup", type = "structure"), 
        ApprovedPatches = structure(list(structure(logical(0), 
            shape = "PatchId", type = "string", max = 100L, min = 1L)), 
            shape = "PatchIdList", type = "list", max = 50L, 
            min = 0L), ApprovedPatchesComplianceLevel = structure(logical(0), 
            shape = "PatchComplianceLevel", type = "string"), 
        ApprovedPatchesEnableNonSecurity = structure(logical(0), 
            shape = "Boolean", box = TRUE, type = "boolean"), 
        RejectedPatches = structure(list(structure(logical(0), 
            shape = "PatchId", type = "string", max = 100L, min = 1L)), 
            shape = "PatchIdList", type = "list", max = 50L, 
            min = 0L), RejectedPatchesAction = structure(logical(0), 
            shape = "PatchAction", type = "string"), Description = structure(logical(0), 
            shape = "BaselineDescription", type = "string", max = 1024L, 
            min = 1L), Sources = structure(list(structure(list(Name = structure(logical(0), 
            shape = "PatchSourceName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,50}$"), 
            Products = structure(list(structure(logical(0), shape = "PatchSourceProduct", 
                type = "string", max = 128L, min = 1L)), shape = "PatchSourceProductList", 
                type = "list", max = 20L, min = 1L), Configuration = structure(logical(0), 
                shape = "PatchSourceConfiguration", type = "string", 
                max = 512L, min = 1L, sensitive = TRUE)), shape = "PatchSource", 
            type = "structure")), shape = "PatchSourceList", 
            type = "list", max = 20L, min = 0L), ClientToken = structure(logical(0), 
            shape = "ClientToken", idempotencyToken = TRUE, type = "string", 
            max = 64L, min = 1L)), shape = "CreatePatchBaselineRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_patch_baseline_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BaselineId = structure(logical(0), 
        shape = "BaselineId", type = "string", max = 128L, min = 20L, 
        pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$")), shape = "CreatePatchBaselineResult", 
        type = "structure")
    return(populate(args, shape))
}

create_resource_data_sync_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SyncName = structure(logical(0), 
        shape = "ResourceDataSyncName", type = "string", max = 64L, 
        min = 1L), S3Destination = structure(list(BucketName = structure(logical(0), 
        shape = "ResourceDataSyncS3BucketName", type = "string", 
        max = 2048L, min = 1L), Prefix = structure(logical(0), 
        shape = "ResourceDataSyncS3Prefix", type = "string", 
        max = 256L, min = 1L), SyncFormat = structure(logical(0), 
        shape = "ResourceDataSyncS3Format", type = "string"), 
        Region = structure(logical(0), shape = "ResourceDataSyncS3Region", 
            type = "string", max = 64L, min = 1L), AWSKMSKeyARN = structure(logical(0), 
            shape = "ResourceDataSyncAWSKMSKeyARN", type = "string", 
            max = 512L, min = 1L, pattern = "arn:.*")), shape = "ResourceDataSyncS3Destination", 
        type = "structure")), shape = "CreateResourceDataSyncRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_resource_data_sync_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateResourceDataSyncResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_activation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActivationId = structure(logical(0), 
        shape = "ActivationId", type = "string", pattern = "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$")), 
        shape = "DeleteActivationRequest", type = "structure")
    return(populate(args, shape))
}

delete_activation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteActivationResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_association_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "DocumentName", 
        type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        AssociationId = structure(logical(0), shape = "AssociationId", 
            type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}")), 
        shape = "DeleteAssociationRequest", type = "structure")
    return(populate(args, shape))
}

delete_association_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteAssociationResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_document_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "DocumentName", 
        type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$")), 
        shape = "DeleteDocumentRequest", type = "structure")
    return(populate(args, shape))
}

delete_document_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteDocumentResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_inventory_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TypeName = structure(logical(0), 
        shape = "InventoryItemTypeName", type = "string", max = 100L, 
        min = 1L, pattern = "^(AWS|Custom):.*$"), SchemaDeleteOption = structure(logical(0), 
        shape = "InventorySchemaDeleteOption", type = "string"), 
        DryRun = structure(logical(0), shape = "DryRun", type = "boolean"), 
        ClientToken = structure(logical(0), shape = "ClientToken", 
            idempotencyToken = TRUE, type = "string", max = 64L, 
            min = 1L)), shape = "DeleteInventoryRequest", type = "structure")
    return(populate(args, shape))
}

delete_inventory_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeletionId = structure(logical(0), 
        shape = "InventoryDeletionId", type = "string"), TypeName = structure(logical(0), 
        shape = "InventoryItemTypeName", type = "string", max = 100L, 
        min = 1L, pattern = "^(AWS|Custom):.*$"), DeletionSummary = structure(list(TotalCount = structure(logical(0), 
        shape = "TotalCount", type = "integer"), RemainingCount = structure(logical(0), 
        shape = "RemainingCount", type = "integer"), SummaryItems = structure(list(structure(list(Version = structure(logical(0), 
        shape = "InventoryItemSchemaVersion", type = "string", 
        pattern = "^([0-9]{1,6})(\\.[0-9]{1,6})$"), Count = structure(logical(0), 
        shape = "ResourceCount", type = "integer"), RemainingCount = structure(logical(0), 
        shape = "RemainingCount", type = "integer")), shape = "InventoryDeletionSummaryItem", 
        type = "structure")), shape = "InventoryDeletionSummaryItems", 
        type = "list")), shape = "InventoryDeletionSummary", 
        type = "structure")), shape = "DeleteInventoryResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_maintenance_window_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$")), shape = "DeleteMaintenanceWindowRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_maintenance_window_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$")), shape = "DeleteMaintenanceWindowResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_parameter_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "PSParameterName", 
        type = "string", max = 2048L, min = 1L)), shape = "DeleteParameterRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_parameter_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteParameterResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_parameters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Names = structure(list(structure(logical(0), 
        shape = "PSParameterName", type = "string", max = 2048L, 
        min = 1L)), shape = "ParameterNameList", type = "list", 
        max = 10L, min = 1L)), shape = "DeleteParametersRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_parameters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeletedParameters = structure(list(structure(logical(0), 
        shape = "PSParameterName", type = "string", max = 2048L, 
        min = 1L)), shape = "ParameterNameList", type = "list", 
        max = 10L, min = 1L), InvalidParameters = structure(list(structure(logical(0), 
        shape = "PSParameterName", type = "string", max = 2048L, 
        min = 1L)), shape = "ParameterNameList", type = "list", 
        max = 10L, min = 1L)), shape = "DeleteParametersResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_patch_baseline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BaselineId = structure(logical(0), 
        shape = "BaselineId", type = "string", max = 128L, min = 20L, 
        pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$")), shape = "DeletePatchBaselineRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_patch_baseline_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BaselineId = structure(logical(0), 
        shape = "BaselineId", type = "string", max = 128L, min = 20L, 
        pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$")), shape = "DeletePatchBaselineResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_resource_data_sync_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SyncName = structure(logical(0), 
        shape = "ResourceDataSyncName", type = "string", max = 64L, 
        min = 1L)), shape = "DeleteResourceDataSyncRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_resource_data_sync_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteResourceDataSyncResult", 
        type = "structure")
    return(populate(args, shape))
}

deregister_managed_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "ManagedInstanceId", type = "string", pattern = "^mi-[0-9a-f]{17}$")), 
        shape = "DeregisterManagedInstanceRequest", type = "structure")
    return(populate(args, shape))
}

deregister_managed_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeregisterManagedInstanceResult", 
        type = "structure")
    return(populate(args, shape))
}

deregister_patch_baseline_for_patch_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BaselineId = structure(logical(0), 
        shape = "BaselineId", type = "string", max = 128L, min = 20L, 
        pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$"), PatchGroup = structure(logical(0), 
        shape = "PatchGroup", type = "string", max = 256L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "DeregisterPatchBaselineForPatchGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

deregister_patch_baseline_for_patch_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BaselineId = structure(logical(0), 
        shape = "BaselineId", type = "string", max = 128L, min = 20L, 
        pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$"), PatchGroup = structure(logical(0), 
        shape = "PatchGroup", type = "string", max = 256L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "DeregisterPatchBaselineForPatchGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

deregister_target_from_maintenance_window_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), WindowTargetId = structure(logical(0), 
        shape = "MaintenanceWindowTargetId", type = "string", 
        max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        Safe = structure(logical(0), shape = "Boolean", box = TRUE, 
            type = "boolean")), shape = "DeregisterTargetFromMaintenanceWindowRequest", 
        type = "structure")
    return(populate(args, shape))
}

deregister_target_from_maintenance_window_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), WindowTargetId = structure(logical(0), 
        shape = "MaintenanceWindowTargetId", type = "string", 
        max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$")), 
        shape = "DeregisterTargetFromMaintenanceWindowResult", 
        type = "structure")
    return(populate(args, shape))
}

deregister_task_from_maintenance_window_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), WindowTaskId = structure(logical(0), 
        shape = "MaintenanceWindowTaskId", type = "string", max = 36L, 
        min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$")), 
        shape = "DeregisterTaskFromMaintenanceWindowRequest", 
        type = "structure")
    return(populate(args, shape))
}

deregister_task_from_maintenance_window_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), WindowTaskId = structure(logical(0), 
        shape = "MaintenanceWindowTaskId", type = "string", max = 36L, 
        min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$")), 
        shape = "DeregisterTaskFromMaintenanceWindowResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_activations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(FilterKey = structure(logical(0), 
        shape = "DescribeActivationsFilterKeys", type = "string"), 
        FilterValues = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "StringList", type = "list")), 
        shape = "DescribeActivationsFilter", type = "structure")), 
        shape = "DescribeActivationsFilterList", type = "list"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            box = TRUE, type = "integer", max = 50L, min = 1L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "DescribeActivationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_activations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActivationList = structure(list(structure(list(ActivationId = structure(logical(0), 
        shape = "ActivationId", type = "string", pattern = "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"), 
        Description = structure(logical(0), shape = "ActivationDescription", 
            type = "string", max = 256L, min = 0L), DefaultInstanceName = structure(logical(0), 
            shape = "DefaultInstanceName", type = "string", max = 256L, 
            min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        IamRole = structure(logical(0), shape = "IamRole", type = "string", 
            max = 64L), RegistrationLimit = structure(logical(0), 
            shape = "RegistrationLimit", type = "integer", max = 1000L, 
            min = 1L), RegistrationsCount = structure(logical(0), 
            shape = "RegistrationsCount", type = "integer", max = 1000L, 
            min = 1L), ExpirationDate = structure(logical(0), 
            shape = "ExpirationDate", type = "timestamp"), Expired = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CreatedDate = structure(logical(0), 
            shape = "CreatedDate", type = "timestamp")), shape = "Activation", 
        type = "structure")), shape = "ActivationList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "DescribeActivationsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_association_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "DocumentName", 
        type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        AssociationId = structure(logical(0), shape = "AssociationId", 
            type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), 
        AssociationVersion = structure(logical(0), shape = "AssociationVersion", 
            type = "string", pattern = "([$]LATEST)|([1-9][0-9]*)")), 
        shape = "DescribeAssociationRequest", type = "structure")
    return(populate(args, shape))
}

describe_association_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationDescription = structure(list(Name = structure(logical(0), 
        shape = "DocumentName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        AssociationVersion = structure(logical(0), shape = "AssociationVersion", 
            type = "string", pattern = "([$]LATEST)|([1-9][0-9]*)"), 
        Date = structure(logical(0), shape = "DateTime", type = "timestamp"), 
        LastUpdateAssociationDate = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), Status = structure(list(Date = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), Name = structure(logical(0), 
            shape = "AssociationStatusName", type = "string"), 
            Message = structure(logical(0), shape = "StatusMessage", 
                type = "string", max = 1024L, min = 1L), AdditionalInfo = structure(logical(0), 
                shape = "StatusAdditionalInfo", type = "string", 
                max = 1024L)), shape = "AssociationStatus", type = "structure"), 
        Overview = structure(list(Status = structure(logical(0), 
            shape = "StatusName", type = "string"), DetailedStatus = structure(logical(0), 
            shape = "StatusName", type = "string"), AssociationStatusAggregatedCount = structure(list(structure(logical(0), 
            shape = "InstanceCount", type = "integer")), shape = "AssociationStatusAggregatedCount", 
            type = "map")), shape = "AssociationOverview", type = "structure"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        Parameters = structure(list(structure(list(structure(logical(0), 
            shape = "ParameterValue", type = "string")), shape = "ParameterValueList", 
            type = "list")), shape = "Parameters", type = "map"), 
        AssociationId = structure(logical(0), shape = "AssociationId", 
            type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), 
        Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        ScheduleExpression = structure(logical(0), shape = "ScheduleExpression", 
            type = "string", max = 256L, min = 1L), OutputLocation = structure(list(S3Location = structure(list(OutputS3Region = structure(logical(0), 
            shape = "S3Region", type = "string", max = 20L, min = 3L), 
            OutputS3BucketName = structure(logical(0), shape = "S3BucketName", 
                type = "string", max = 63L, min = 3L), OutputS3KeyPrefix = structure(logical(0), 
                shape = "S3KeyPrefix", type = "string", max = 500L)), 
            shape = "S3OutputLocation", type = "structure")), 
            shape = "InstanceAssociationOutputLocation", type = "structure"), 
        LastExecutionDate = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), LastSuccessfulExecutionDate = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), AssociationName = structure(logical(0), 
            shape = "AssociationName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$")), 
        shape = "AssociationDescription", type = "structure")), 
        shape = "DescribeAssociationResult", type = "structure")
    return(populate(args, shape))
}

describe_association_execution_targets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationId = structure(logical(0), 
        shape = "AssociationId", type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), 
        ExecutionId = structure(logical(0), shape = "AssociationExecutionId", 
            type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), 
        Filters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "AssociationExecutionTargetsFilterKey", type = "string"), 
            Value = structure(logical(0), shape = "AssociationExecutionTargetsFilterValue", 
                type = "string", min = 1L)), shape = "AssociationExecutionTargetsFilter", 
            type = "structure")), shape = "AssociationExecutionTargetsFilterList", 
            type = "list", min = 1L), MaxResults = structure(logical(0), 
            shape = "MaxResults", box = TRUE, type = "integer", 
            max = 50L, min = 1L), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string")), shape = "DescribeAssociationExecutionTargetsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_association_execution_targets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationExecutionTargets = structure(list(structure(list(AssociationId = structure(logical(0), 
        shape = "AssociationId", type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), 
        AssociationVersion = structure(logical(0), shape = "AssociationVersion", 
            type = "string", pattern = "([$]LATEST)|([1-9][0-9]*)"), 
        ExecutionId = structure(logical(0), shape = "AssociationExecutionId", 
            type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), 
        ResourceId = structure(logical(0), shape = "AssociationResourceId", 
            type = "string", max = 100L, min = 1L), ResourceType = structure(logical(0), 
            shape = "AssociationResourceType", type = "string", 
            max = 50L, min = 1L), Status = structure(logical(0), 
            shape = "StatusName", type = "string"), DetailedStatus = structure(logical(0), 
            shape = "StatusName", type = "string"), LastExecutionDate = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), OutputSource = structure(list(OutputSourceId = structure(logical(0), 
            shape = "OutputSourceId", type = "string", max = 36L, 
            min = 36L), OutputSourceType = structure(logical(0), 
            shape = "OutputSourceType", type = "string")), shape = "OutputSource", 
            type = "structure")), shape = "AssociationExecutionTarget", 
        type = "structure")), shape = "AssociationExecutionTargetsList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "DescribeAssociationExecutionTargetsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_association_executions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationId = structure(logical(0), 
        shape = "AssociationId", type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), 
        Filters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "AssociationExecutionFilterKey", type = "string"), 
            Value = structure(logical(0), shape = "AssociationExecutionFilterValue", 
                type = "string", min = 1L), Type = structure(logical(0), 
                shape = "AssociationFilterOperatorType", type = "string")), 
            shape = "AssociationExecutionFilter", type = "structure")), 
            shape = "AssociationExecutionFilterList", type = "list", 
            min = 1L), MaxResults = structure(logical(0), shape = "MaxResults", 
            box = TRUE, type = "integer", max = 50L, min = 1L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "DescribeAssociationExecutionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_association_executions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationExecutions = structure(list(structure(list(AssociationId = structure(logical(0), 
        shape = "AssociationId", type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), 
        AssociationVersion = structure(logical(0), shape = "AssociationVersion", 
            type = "string", pattern = "([$]LATEST)|([1-9][0-9]*)"), 
        ExecutionId = structure(logical(0), shape = "AssociationExecutionId", 
            type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), 
        Status = structure(logical(0), shape = "StatusName", 
            type = "string"), DetailedStatus = structure(logical(0), 
            shape = "StatusName", type = "string"), CreatedTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), LastExecutionDate = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), ResourceCountByStatus = structure(logical(0), 
            shape = "ResourceCountByStatus", type = "string")), 
        shape = "AssociationExecution", type = "structure")), 
        shape = "AssociationExecutionsList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "DescribeAssociationExecutionsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_automation_executions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "AutomationExecutionFilterKey", type = "string"), 
        Values = structure(list(structure(logical(0), shape = "AutomationExecutionFilterValue", 
            type = "string", max = 150L, min = 1L)), shape = "AutomationExecutionFilterValueList", 
            type = "list", max = 10L, min = 1L)), shape = "AutomationExecutionFilter", 
        type = "structure")), shape = "AutomationExecutionFilterList", 
        type = "list", max = 10L, min = 1L), MaxResults = structure(logical(0), 
        shape = "MaxResults", box = TRUE, type = "integer", max = 50L, 
        min = 1L), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "DescribeAutomationExecutionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_automation_executions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutomationExecutionMetadataList = structure(list(structure(list(AutomationExecutionId = structure(logical(0), 
        shape = "AutomationExecutionId", type = "string", max = 36L, 
        min = 36L), DocumentName = structure(logical(0), shape = "DocumentName", 
        type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        AutomationExecutionStatus = structure(logical(0), shape = "AutomationExecutionStatus", 
            type = "string"), ExecutionStartTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), ExecutionEndTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), ExecutedBy = structure(logical(0), 
            shape = "String", type = "string"), LogFile = structure(logical(0), 
            shape = "String", type = "string"), Outputs = structure(list(structure(list(structure(logical(0), 
            shape = "AutomationParameterValue", type = "string", 
            max = 512L, min = 1L)), shape = "AutomationParameterValueList", 
            type = "list", max = 10L, min = 0L)), shape = "AutomationParameterMap", 
            type = "map", max = 200L, min = 1L), Mode = structure(logical(0), 
            shape = "ExecutionMode", type = "string"), ParentAutomationExecutionId = structure(logical(0), 
            shape = "AutomationExecutionId", type = "string", 
            max = 36L, min = 36L), CurrentStepName = structure(logical(0), 
            shape = "String", type = "string"), CurrentAction = structure(logical(0), 
            shape = "String", type = "string"), FailureMessage = structure(logical(0), 
            shape = "String", type = "string"), TargetParameterName = structure(logical(0), 
            shape = "AutomationParameterKey", type = "string", 
            max = 30L, min = 1L), Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        TargetMaps = structure(list(structure(list(structure(list(structure(logical(0), 
            shape = "TargetMapValue", type = "string", max = 50L, 
            min = 1L)), shape = "TargetMapValueList", type = "list", 
            max = 25L, min = 0L)), shape = "TargetMap", type = "map", 
            max = 20L, min = 1L)), shape = "TargetMaps", type = "list", 
            max = 300L, min = 0L), ResolvedTargets = structure(list(ParameterValues = structure(list(structure(logical(0), 
            shape = "ParameterValue", type = "string")), shape = "TargetParameterList", 
            type = "list"), Truncated = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "ResolvedTargets", 
            type = "structure"), MaxConcurrency = structure(logical(0), 
            shape = "MaxConcurrency", type = "string", max = 7L, 
            min = 1L, pattern = "^([1-9][0-9]*|[1-9][0-9]%|[1-9]%|100%)$"), 
        MaxErrors = structure(logical(0), shape = "MaxErrors", 
            type = "string", max = 7L, min = 1L, pattern = "^([1-9][0-9]*|[0]|[1-9][0-9]%|[0-9]%|100%)$"), 
        Target = structure(logical(0), shape = "String", type = "string")), 
        shape = "AutomationExecutionMetadata", type = "structure")), 
        shape = "AutomationExecutionMetadataList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "DescribeAutomationExecutionsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_automation_step_executions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutomationExecutionId = structure(logical(0), 
        shape = "AutomationExecutionId", type = "string", max = 36L, 
        min = 36L), Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "StepExecutionFilterKey", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "StepExecutionFilterValue", type = "string", 
        max = 150L, min = 1L)), shape = "StepExecutionFilterValueList", 
        type = "list", max = 10L, min = 1L)), shape = "StepExecutionFilter", 
        type = "structure")), shape = "StepExecutionFilterList", 
        type = "list", max = 6L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", box = TRUE, type = "integer", max = 50L, 
        min = 1L), ReverseOrder = structure(logical(0), shape = "Boolean", 
        box = TRUE, type = "boolean")), shape = "DescribeAutomationStepExecutionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_automation_step_executions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StepExecutions = structure(list(structure(list(StepName = structure(logical(0), 
        shape = "String", type = "string"), Action = structure(logical(0), 
        shape = "AutomationActionName", type = "string", pattern = "^aws:[a-zA-Z]{3,25}$"), 
        TimeoutSeconds = structure(logical(0), shape = "Long", 
            box = TRUE, type = "long"), OnFailure = structure(logical(0), 
            shape = "String", type = "string"), MaxAttempts = structure(logical(0), 
            shape = "Integer", box = TRUE, type = "integer"), 
        ExecutionStartTime = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), ExecutionEndTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), StepStatus = structure(logical(0), 
            shape = "AutomationExecutionStatus", type = "string"), 
        ResponseCode = structure(logical(0), shape = "String", 
            type = "string"), Inputs = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "NormalStringMap", 
            type = "map"), Outputs = structure(list(structure(list(structure(logical(0), 
            shape = "AutomationParameterValue", type = "string", 
            max = 512L, min = 1L)), shape = "AutomationParameterValueList", 
            type = "list", max = 10L, min = 0L)), shape = "AutomationParameterMap", 
            type = "map", max = 200L, min = 1L), Response = structure(logical(0), 
            shape = "String", type = "string"), FailureMessage = structure(logical(0), 
            shape = "String", type = "string"), FailureDetails = structure(list(FailureStage = structure(logical(0), 
            shape = "String", type = "string"), FailureType = structure(logical(0), 
            shape = "String", type = "string"), Details = structure(list(structure(list(structure(logical(0), 
            shape = "AutomationParameterValue", type = "string", 
            max = 512L, min = 1L)), shape = "AutomationParameterValueList", 
            type = "list", max = 10L, min = 0L)), shape = "AutomationParameterMap", 
            type = "map", max = 200L, min = 1L)), shape = "FailureDetails", 
            type = "structure"), StepExecutionId = structure(logical(0), 
            shape = "String", type = "string"), OverriddenParameters = structure(list(structure(list(structure(logical(0), 
            shape = "AutomationParameterValue", type = "string", 
            max = 512L, min = 1L)), shape = "AutomationParameterValueList", 
            type = "list", max = 10L, min = 0L)), shape = "AutomationParameterMap", 
            type = "map", max = 200L, min = 1L), IsEnd = structure(logical(0), 
            shape = "Boolean", box = TRUE, type = "boolean"), 
        NextStep = structure(logical(0), shape = "String", box = TRUE, 
            type = "string"), IsCritical = structure(logical(0), 
            shape = "Boolean", box = TRUE, type = "boolean"), 
        ValidNextSteps = structure(list(structure(logical(0), 
            shape = "ValidNextStep", type = "string", max = 65535L, 
            min = 1L)), shape = "ValidNextStepList", type = "list")), 
        shape = "StepExecution", type = "structure")), shape = "StepExecutionList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "DescribeAutomationStepExecutionsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_available_patches_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "PatchOrchestratorFilterKey", type = "string", 
        max = 128L, min = 1L), Values = structure(list(structure(logical(0), 
        shape = "PatchOrchestratorFilterValue", type = "string", 
        max = 256L, min = 1L)), shape = "PatchOrchestratorFilterValues", 
        type = "list")), shape = "PatchOrchestratorFilter", type = "structure")), 
        shape = "PatchOrchestratorFilterList", type = "list", 
        max = 5L, min = 0L), MaxResults = structure(logical(0), 
        shape = "PatchBaselineMaxResults", box = TRUE, type = "integer", 
        max = 100L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribeAvailablePatchesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_available_patches_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Patches = structure(list(structure(list(Id = structure(logical(0), 
        shape = "PatchId", type = "string", max = 100L, min = 1L), 
        ReleaseDate = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), Title = structure(logical(0), 
            shape = "PatchTitle", type = "string"), Description = structure(logical(0), 
            shape = "PatchDescription", type = "string"), ContentUrl = structure(logical(0), 
            shape = "PatchContentUrl", type = "string"), Vendor = structure(logical(0), 
            shape = "PatchVendor", type = "string"), ProductFamily = structure(logical(0), 
            shape = "PatchProductFamily", type = "string"), Product = structure(logical(0), 
            shape = "PatchProduct", type = "string"), Classification = structure(logical(0), 
            shape = "PatchClassification", type = "string"), 
        MsrcSeverity = structure(logical(0), shape = "PatchMsrcSeverity", 
            type = "string"), KbNumber = structure(logical(0), 
            shape = "PatchKbNumber", type = "string"), MsrcNumber = structure(logical(0), 
            shape = "PatchMsrcNumber", type = "string"), Language = structure(logical(0), 
            shape = "PatchLanguage", type = "string")), shape = "Patch", 
        type = "structure")), shape = "PatchList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "DescribeAvailablePatchesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_document_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "DocumentARN", 
        type = "string", pattern = "^[a-zA-Z0-9_\\-.:/]{3,128}$"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)")), 
        shape = "DescribeDocumentRequest", type = "structure")
    return(populate(args, shape))
}

describe_document_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Document = structure(list(Sha1 = structure(logical(0), 
        shape = "DocumentSha1", type = "string"), Hash = structure(logical(0), 
        shape = "DocumentHash", type = "string", max = 256L), 
        HashType = structure(logical(0), shape = "DocumentHashType", 
            type = "string"), Name = structure(logical(0), shape = "DocumentARN", 
            type = "string", pattern = "^[a-zA-Z0-9_\\-.:/]{3,128}$"), 
        Owner = structure(logical(0), shape = "DocumentOwner", 
            type = "string"), CreatedDate = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), Status = structure(logical(0), 
            shape = "DocumentStatus", type = "string"), DocumentVersion = structure(logical(0), 
            shape = "DocumentVersion", type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        Description = structure(logical(0), shape = "DescriptionInDocument", 
            type = "string"), Parameters = structure(list(structure(list(Name = structure(logical(0), 
            shape = "DocumentParameterName", type = "string"), 
            Type = structure(logical(0), shape = "DocumentParameterType", 
                type = "string"), Description = structure(logical(0), 
                shape = "DocumentParameterDescrption", type = "string"), 
            DefaultValue = structure(logical(0), shape = "DocumentParameterDefaultValue", 
                type = "string")), shape = "DocumentParameter", 
            type = "structure")), shape = "DocumentParameterList", 
            type = "list"), PlatformTypes = structure(list(structure(logical(0), 
            shape = "PlatformType", type = "string")), shape = "PlatformTypeList", 
            type = "list"), DocumentType = structure(logical(0), 
            shape = "DocumentType", type = "string"), SchemaVersion = structure(logical(0), 
            shape = "DocumentSchemaVersion", type = "string", 
            pattern = "([0-9]+)\\.([0-9]+)"), LatestVersion = structure(logical(0), 
            shape = "DocumentVersion", type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        DefaultVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        DocumentFormat = structure(logical(0), shape = "DocumentFormat", 
            type = "string"), TargetType = structure(logical(0), 
            shape = "TargetType", type = "string", max = 200L, 
            pattern = "^\\/[\\w\\.\\-\\:\\/]*$"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^(?!^(?i)aws:)(?=^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$).*$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list")), shape = "DocumentDescription", type = "structure")), 
        shape = "DescribeDocumentResult", type = "structure")
    return(populate(args, shape))
}

describe_document_permission_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "DocumentName", 
        type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        PermissionType = structure(logical(0), shape = "DocumentPermissionType", 
            type = "string")), shape = "DescribeDocumentPermissionRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_document_permission_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountIds = structure(list(structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "(?i)all|[0-9]{12}")), 
        shape = "AccountIdList", type = "list", max = 20L)), 
        shape = "DescribeDocumentPermissionResponse", type = "structure")
    return(populate(args, shape))
}

describe_effective_instance_associations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        MaxResults = structure(logical(0), shape = "EffectiveInstanceAssociationMaxResults", 
            box = TRUE, type = "integer", max = 5L, min = 1L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "DescribeEffectiveInstanceAssociationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_effective_instance_associations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Associations = structure(list(structure(list(AssociationId = structure(logical(0), 
        shape = "AssociationId", type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        Content = structure(logical(0), shape = "DocumentContent", 
            type = "string", min = 1L), AssociationVersion = structure(logical(0), 
            shape = "AssociationVersion", type = "string", pattern = "([$]LATEST)|([1-9][0-9]*)")), 
        shape = "InstanceAssociation", type = "structure")), 
        shape = "InstanceAssociationList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribeEffectiveInstanceAssociationsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_effective_patches_for_patch_baseline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BaselineId = structure(logical(0), 
        shape = "BaselineId", type = "string", max = 128L, min = 20L, 
        pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$"), MaxResults = structure(logical(0), 
        shape = "PatchBaselineMaxResults", box = TRUE, type = "integer", 
        max = 100L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribeEffectivePatchesForPatchBaselineRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_effective_patches_for_patch_baseline_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EffectivePatches = structure(list(structure(list(Patch = structure(list(Id = structure(logical(0), 
        shape = "PatchId", type = "string", max = 100L, min = 1L), 
        ReleaseDate = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), Title = structure(logical(0), 
            shape = "PatchTitle", type = "string"), Description = structure(logical(0), 
            shape = "PatchDescription", type = "string"), ContentUrl = structure(logical(0), 
            shape = "PatchContentUrl", type = "string"), Vendor = structure(logical(0), 
            shape = "PatchVendor", type = "string"), ProductFamily = structure(logical(0), 
            shape = "PatchProductFamily", type = "string"), Product = structure(logical(0), 
            shape = "PatchProduct", type = "string"), Classification = structure(logical(0), 
            shape = "PatchClassification", type = "string"), 
        MsrcSeverity = structure(logical(0), shape = "PatchMsrcSeverity", 
            type = "string"), KbNumber = structure(logical(0), 
            shape = "PatchKbNumber", type = "string"), MsrcNumber = structure(logical(0), 
            shape = "PatchMsrcNumber", type = "string"), Language = structure(logical(0), 
            shape = "PatchLanguage", type = "string")), shape = "Patch", 
        type = "structure"), PatchStatus = structure(list(DeploymentStatus = structure(logical(0), 
        shape = "PatchDeploymentStatus", type = "string"), ComplianceLevel = structure(logical(0), 
        shape = "PatchComplianceLevel", type = "string"), ApprovalDate = structure(logical(0), 
        shape = "DateTime", type = "timestamp")), shape = "PatchStatus", 
        type = "structure")), shape = "EffectivePatch", type = "structure")), 
        shape = "EffectivePatchList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribeEffectivePatchesForPatchBaselineResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_instance_associations_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            box = TRUE, type = "integer", max = 50L, min = 1L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "DescribeInstanceAssociationsStatusRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_instance_associations_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceAssociationStatusInfos = structure(list(structure(list(AssociationId = structure(logical(0), 
        shape = "AssociationId", type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), 
        Name = structure(logical(0), shape = "DocumentName", 
            type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        AssociationVersion = structure(logical(0), shape = "AssociationVersion", 
            type = "string", pattern = "([$]LATEST)|([1-9][0-9]*)"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        ExecutionDate = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), Status = structure(logical(0), 
            shape = "StatusName", type = "string"), DetailedStatus = structure(logical(0), 
            shape = "StatusName", type = "string"), ExecutionSummary = structure(logical(0), 
            shape = "InstanceAssociationExecutionSummary", type = "string", 
            max = 512L, min = 1L), ErrorCode = structure(logical(0), 
            shape = "AgentErrorCode", type = "string", max = 10L), 
        OutputUrl = structure(list(S3OutputUrl = structure(list(OutputUrl = structure(logical(0), 
            shape = "Url", type = "string")), shape = "S3OutputUrl", 
            type = "structure")), shape = "InstanceAssociationOutputUrl", 
            type = "structure"), AssociationName = structure(logical(0), 
            shape = "AssociationName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$")), 
        shape = "InstanceAssociationStatusInfo", type = "structure")), 
        shape = "InstanceAssociationStatusInfos", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "DescribeInstanceAssociationsStatusResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_instance_information_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceInformationFilterList = structure(list(structure(list(Key = structure(logical(0), 
        shape = "InstanceInformationFilterKey", type = "string", 
        locationName = "key"), ValueSet = structure(list(structure(logical(0), 
        shape = "InstanceInformationFilterValue", type = "string", 
        min = 1L)), shape = "InstanceInformationFilterValueSet", 
        type = "list", max = 100L, min = 1L, locationName = "valueSet")), 
        shape = "InstanceInformationFilter", type = "structure")), 
        shape = "InstanceInformationFilterList", type = "list", 
        min = 0L), Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "InstanceInformationStringFilterKey", type = "string", 
        min = 1L), Values = structure(list(structure(logical(0), 
        shape = "InstanceInformationFilterValue", type = "string", 
        min = 1L)), shape = "InstanceInformationFilterValueSet", 
        type = "list", max = 100L, min = 1L)), shape = "InstanceInformationStringFilter", 
        type = "structure")), shape = "InstanceInformationStringFilterList", 
        type = "list", min = 0L), MaxResults = structure(logical(0), 
        shape = "MaxResultsEC2Compatible", box = TRUE, type = "integer", 
        max = 50L, min = 5L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribeInstanceInformationRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_instance_information_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceInformationList = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        PingStatus = structure(logical(0), shape = "PingStatus", 
            type = "string"), LastPingDateTime = structure(logical(0), 
            shape = "DateTime", box = TRUE, type = "timestamp"), 
        AgentVersion = structure(logical(0), shape = "Version", 
            type = "string", pattern = "^[0-9]{1,6}(\\.[0-9]{1,6}){2,3}$"), 
        IsLatestVersion = structure(logical(0), shape = "Boolean", 
            box = TRUE, type = "boolean"), PlatformType = structure(logical(0), 
            shape = "PlatformType", type = "string"), PlatformName = structure(logical(0), 
            shape = "String", type = "string"), PlatformVersion = structure(logical(0), 
            shape = "String", type = "string"), ActivationId = structure(logical(0), 
            shape = "ActivationId", type = "string", pattern = "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"), 
        IamRole = structure(logical(0), shape = "IamRole", type = "string", 
            max = 64L), RegistrationDate = structure(logical(0), 
            shape = "DateTime", box = TRUE, type = "timestamp"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string"), Name = structure(logical(0), shape = "String", 
            type = "string"), IPAddress = structure(logical(0), 
            shape = "IPAddress", type = "string", max = 46L, 
            min = 1L), ComputerName = structure(logical(0), shape = "ComputerName", 
            type = "string", max = 255L, min = 1L), AssociationStatus = structure(logical(0), 
            shape = "StatusName", type = "string"), LastAssociationExecutionDate = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), LastSuccessfulAssociationExecutionDate = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), AssociationOverview = structure(list(DetailedStatus = structure(logical(0), 
            shape = "StatusName", type = "string"), InstanceAssociationStatusAggregatedCount = structure(list(structure(logical(0), 
            shape = "InstanceCount", type = "integer")), shape = "InstanceAssociationStatusAggregatedCount", 
            type = "map")), shape = "InstanceAggregatedAssociationOverview", 
            type = "structure")), shape = "InstanceInformation", 
        type = "structure")), shape = "InstanceInformationList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "DescribeInstanceInformationResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_instance_patch_states_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceIds = structure(list(structure(logical(0), 
        shape = "InstanceId", type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)")), 
        shape = "InstanceIdList", type = "list", max = 50L, min = 0L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "PatchComplianceMaxResults", box = TRUE, 
            type = "integer", max = 100L, min = 10L)), shape = "DescribeInstancePatchStatesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_instance_patch_states_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstancePatchStates = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        PatchGroup = structure(logical(0), shape = "PatchGroup", 
            type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        BaselineId = structure(logical(0), shape = "BaselineId", 
            type = "string", max = 128L, min = 20L, pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$"), 
        SnapshotId = structure(logical(0), shape = "SnapshotId", 
            type = "string", max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"), 
        InstallOverrideList = structure(logical(0), shape = "InstallOverrideList", 
            type = "string", max = 256L, min = 1L, pattern = "^https://.+$|^s3://([^/]+)/(.*?([^/]+))$"), 
        OwnerInformation = structure(logical(0), shape = "OwnerInformation", 
            type = "string", max = 128L, min = 1L, sensitive = TRUE), 
        InstalledCount = structure(logical(0), shape = "PatchInstalledCount", 
            type = "integer"), InstalledOtherCount = structure(logical(0), 
            shape = "PatchInstalledOtherCount", type = "integer"), 
        InstalledRejectedCount = structure(logical(0), shape = "PatchInstalledRejectedCount", 
            box = TRUE, type = "integer"), MissingCount = structure(logical(0), 
            shape = "PatchMissingCount", type = "integer"), FailedCount = structure(logical(0), 
            shape = "PatchFailedCount", type = "integer"), NotApplicableCount = structure(logical(0), 
            shape = "PatchNotApplicableCount", type = "integer"), 
        OperationStartTime = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), OperationEndTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), Operation = structure(logical(0), 
            shape = "PatchOperationType", type = "string")), 
        shape = "InstancePatchState", type = "structure")), shape = "InstancePatchStateList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "DescribeInstancePatchStatesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_instance_patch_states_for_patch_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PatchGroup = structure(logical(0), 
        shape = "PatchGroup", type = "string", max = 256L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "InstancePatchStateFilterKey", type = "string", 
        max = 200L, min = 1L), Values = structure(list(structure(logical(0), 
        shape = "InstancePatchStateFilterValue", type = "string")), 
        shape = "InstancePatchStateFilterValues", type = "list", 
        max = 1L, min = 1L), Type = structure(logical(0), shape = "InstancePatchStateOperatorType", 
        type = "string")), shape = "InstancePatchStateFilter", 
        type = "structure")), shape = "InstancePatchStateFilterList", 
        type = "list", max = 4L, min = 0L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "PatchComplianceMaxResults", box = TRUE, type = "integer", 
        max = 100L, min = 10L)), shape = "DescribeInstancePatchStatesForPatchGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_instance_patch_states_for_patch_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstancePatchStates = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        PatchGroup = structure(logical(0), shape = "PatchGroup", 
            type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        BaselineId = structure(logical(0), shape = "BaselineId", 
            type = "string", max = 128L, min = 20L, pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$"), 
        SnapshotId = structure(logical(0), shape = "SnapshotId", 
            type = "string", max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"), 
        InstallOverrideList = structure(logical(0), shape = "InstallOverrideList", 
            type = "string", max = 256L, min = 1L, pattern = "^https://.+$|^s3://([^/]+)/(.*?([^/]+))$"), 
        OwnerInformation = structure(logical(0), shape = "OwnerInformation", 
            type = "string", max = 128L, min = 1L, sensitive = TRUE), 
        InstalledCount = structure(logical(0), shape = "PatchInstalledCount", 
            type = "integer"), InstalledOtherCount = structure(logical(0), 
            shape = "PatchInstalledOtherCount", type = "integer"), 
        InstalledRejectedCount = structure(logical(0), shape = "PatchInstalledRejectedCount", 
            box = TRUE, type = "integer"), MissingCount = structure(logical(0), 
            shape = "PatchMissingCount", type = "integer"), FailedCount = structure(logical(0), 
            shape = "PatchFailedCount", type = "integer"), NotApplicableCount = structure(logical(0), 
            shape = "PatchNotApplicableCount", type = "integer"), 
        OperationStartTime = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), OperationEndTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), Operation = structure(logical(0), 
            shape = "PatchOperationType", type = "string")), 
        shape = "InstancePatchState", type = "structure")), shape = "InstancePatchStatesList", 
        type = "list", max = 5L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribeInstancePatchStatesForPatchGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_instance_patches_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        Filters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "PatchOrchestratorFilterKey", type = "string", 
            max = 128L, min = 1L), Values = structure(list(structure(logical(0), 
            shape = "PatchOrchestratorFilterValue", type = "string", 
            max = 256L, min = 1L)), shape = "PatchOrchestratorFilterValues", 
            type = "list")), shape = "PatchOrchestratorFilter", 
            type = "structure")), shape = "PatchOrchestratorFilterList", 
            type = "list", max = 5L, min = 0L), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
            shape = "PatchComplianceMaxResults", box = TRUE, 
            type = "integer", max = 100L, min = 10L)), shape = "DescribeInstancePatchesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_instance_patches_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Patches = structure(list(structure(list(Title = structure(logical(0), 
        shape = "PatchTitle", type = "string"), KBId = structure(logical(0), 
        shape = "PatchKbNumber", type = "string"), Classification = structure(logical(0), 
        shape = "PatchClassification", type = "string"), Severity = structure(logical(0), 
        shape = "PatchSeverity", type = "string"), State = structure(logical(0), 
        shape = "PatchComplianceDataState", type = "string"), 
        InstalledTime = structure(logical(0), shape = "DateTime", 
            type = "timestamp")), shape = "PatchComplianceData", 
        type = "structure")), shape = "PatchComplianceDataList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "DescribeInstancePatchesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_inventory_deletions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeletionId = structure(logical(0), 
        shape = "InventoryDeletionId", type = "string"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", box = TRUE, type = "integer", max = 50L, 
        min = 1L)), shape = "DescribeInventoryDeletionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_inventory_deletions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InventoryDeletions = structure(list(structure(list(DeletionId = structure(logical(0), 
        shape = "InventoryDeletionId", type = "string"), TypeName = structure(logical(0), 
        shape = "InventoryItemTypeName", type = "string", max = 100L, 
        min = 1L, pattern = "^(AWS|Custom):.*$"), DeletionStartTime = structure(logical(0), 
        shape = "InventoryDeletionStartTime", type = "timestamp"), 
        LastStatus = structure(logical(0), shape = "InventoryDeletionStatus", 
            type = "string"), LastStatusMessage = structure(logical(0), 
            shape = "InventoryDeletionLastStatusMessage", type = "string"), 
        DeletionSummary = structure(list(TotalCount = structure(logical(0), 
            shape = "TotalCount", type = "integer"), RemainingCount = structure(logical(0), 
            shape = "RemainingCount", type = "integer"), SummaryItems = structure(list(structure(list(Version = structure(logical(0), 
            shape = "InventoryItemSchemaVersion", type = "string", 
            pattern = "^([0-9]{1,6})(\\.[0-9]{1,6})$"), Count = structure(logical(0), 
            shape = "ResourceCount", type = "integer"), RemainingCount = structure(logical(0), 
            shape = "RemainingCount", type = "integer")), shape = "InventoryDeletionSummaryItem", 
            type = "structure")), shape = "InventoryDeletionSummaryItems", 
            type = "list")), shape = "InventoryDeletionSummary", 
            type = "structure"), LastStatusUpdateTime = structure(logical(0), 
            shape = "InventoryDeletionLastStatusUpdateTime", 
            type = "timestamp")), shape = "InventoryDeletionStatusItem", 
        type = "structure")), shape = "InventoryDeletionsList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "DescribeInventoryDeletionsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_maintenance_window_execution_task_invocations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowExecutionId = structure(logical(0), 
        shape = "MaintenanceWindowExecutionId", type = "string", 
        max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        TaskId = structure(logical(0), shape = "MaintenanceWindowExecutionTaskId", 
            type = "string", max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        Filters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "MaintenanceWindowFilterKey", type = "string", 
            max = 128L, min = 1L), Values = structure(list(structure(logical(0), 
            shape = "MaintenanceWindowFilterValue", type = "string", 
            max = 256L, min = 1L)), shape = "MaintenanceWindowFilterValues", 
            type = "list")), shape = "MaintenanceWindowFilter", 
            type = "structure")), shape = "MaintenanceWindowFilterList", 
            type = "list", max = 5L, min = 0L), MaxResults = structure(logical(0), 
            shape = "MaintenanceWindowMaxResults", box = TRUE, 
            type = "integer", max = 100L, min = 10L), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string")), shape = "DescribeMaintenanceWindowExecutionTaskInvocationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_maintenance_window_execution_task_invocations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowExecutionTaskInvocationIdentities = structure(list(structure(list(WindowExecutionId = structure(logical(0), 
        shape = "MaintenanceWindowExecutionId", type = "string", 
        max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        TaskExecutionId = structure(logical(0), shape = "MaintenanceWindowExecutionTaskId", 
            type = "string", max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        InvocationId = structure(logical(0), shape = "MaintenanceWindowExecutionTaskInvocationId", 
            type = "string", max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        ExecutionId = structure(logical(0), shape = "MaintenanceWindowExecutionTaskExecutionId", 
            type = "string"), TaskType = structure(logical(0), 
            shape = "MaintenanceWindowTaskType", type = "string"), 
        Parameters = structure(logical(0), shape = "MaintenanceWindowExecutionTaskInvocationParameters", 
            type = "string", sensitive = TRUE), Status = structure(logical(0), 
            shape = "MaintenanceWindowExecutionStatus", type = "string"), 
        StatusDetails = structure(logical(0), shape = "MaintenanceWindowExecutionStatusDetails", 
            type = "string", max = 250L, min = 0L), StartTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), OwnerInformation = structure(logical(0), 
            shape = "OwnerInformation", type = "string", max = 128L, 
            min = 1L, sensitive = TRUE), WindowTargetId = structure(logical(0), 
            shape = "MaintenanceWindowTaskTargetId", type = "string", 
            max = 36L)), shape = "MaintenanceWindowExecutionTaskInvocationIdentity", 
        type = "structure")), shape = "MaintenanceWindowExecutionTaskInvocationIdentityList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "DescribeMaintenanceWindowExecutionTaskInvocationsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_maintenance_window_execution_tasks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowExecutionId = structure(logical(0), 
        shape = "MaintenanceWindowExecutionId", type = "string", 
        max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        Filters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "MaintenanceWindowFilterKey", type = "string", 
            max = 128L, min = 1L), Values = structure(list(structure(logical(0), 
            shape = "MaintenanceWindowFilterValue", type = "string", 
            max = 256L, min = 1L)), shape = "MaintenanceWindowFilterValues", 
            type = "list")), shape = "MaintenanceWindowFilter", 
            type = "structure")), shape = "MaintenanceWindowFilterList", 
            type = "list", max = 5L, min = 0L), MaxResults = structure(logical(0), 
            shape = "MaintenanceWindowMaxResults", box = TRUE, 
            type = "integer", max = 100L, min = 10L), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string")), shape = "DescribeMaintenanceWindowExecutionTasksRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_maintenance_window_execution_tasks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowExecutionTaskIdentities = structure(list(structure(list(WindowExecutionId = structure(logical(0), 
        shape = "MaintenanceWindowExecutionId", type = "string", 
        max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        TaskExecutionId = structure(logical(0), shape = "MaintenanceWindowExecutionTaskId", 
            type = "string", max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        Status = structure(logical(0), shape = "MaintenanceWindowExecutionStatus", 
            type = "string"), StatusDetails = structure(logical(0), 
            shape = "MaintenanceWindowExecutionStatusDetails", 
            type = "string", max = 250L, min = 0L), StartTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), TaskArn = structure(logical(0), 
            shape = "MaintenanceWindowTaskArn", type = "string", 
            max = 1600L, min = 1L), TaskType = structure(logical(0), 
            shape = "MaintenanceWindowTaskType", type = "string")), 
        shape = "MaintenanceWindowExecutionTaskIdentity", type = "structure")), 
        shape = "MaintenanceWindowExecutionTaskIdentityList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "DescribeMaintenanceWindowExecutionTasksResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_maintenance_window_executions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "MaintenanceWindowFilterKey", type = "string", 
        max = 128L, min = 1L), Values = structure(list(structure(logical(0), 
        shape = "MaintenanceWindowFilterValue", type = "string", 
        max = 256L, min = 1L)), shape = "MaintenanceWindowFilterValues", 
        type = "list")), shape = "MaintenanceWindowFilter", type = "structure")), 
        shape = "MaintenanceWindowFilterList", type = "list", 
        max = 5L, min = 0L), MaxResults = structure(logical(0), 
        shape = "MaintenanceWindowMaxResults", box = TRUE, type = "integer", 
        max = 100L, min = 10L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribeMaintenanceWindowExecutionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_maintenance_window_executions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowExecutions = structure(list(structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), WindowExecutionId = structure(logical(0), 
        shape = "MaintenanceWindowExecutionId", type = "string", 
        max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        Status = structure(logical(0), shape = "MaintenanceWindowExecutionStatus", 
            type = "string"), StatusDetails = structure(logical(0), 
            shape = "MaintenanceWindowExecutionStatusDetails", 
            type = "string", max = 250L, min = 0L), StartTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp")), shape = "MaintenanceWindowExecution", 
        type = "structure")), shape = "MaintenanceWindowExecutionList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "DescribeMaintenanceWindowExecutionsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_maintenance_window_schedule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), Targets = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TargetKey", type = "string", max = 128L, min = 1L, 
        pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), Values = structure(list(structure(logical(0), 
        shape = "TargetValue", type = "string")), shape = "TargetValues", 
        type = "list", max = 50L, min = 0L)), shape = "Target", 
        type = "structure")), shape = "Targets", type = "list", 
        max = 5L, min = 0L), ResourceType = structure(logical(0), 
        shape = "MaintenanceWindowResourceType", type = "string"), 
        Filters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "PatchOrchestratorFilterKey", type = "string", 
            max = 128L, min = 1L), Values = structure(list(structure(logical(0), 
            shape = "PatchOrchestratorFilterValue", type = "string", 
            max = 256L, min = 1L)), shape = "PatchOrchestratorFilterValues", 
            type = "list")), shape = "PatchOrchestratorFilter", 
            type = "structure")), shape = "PatchOrchestratorFilterList", 
            type = "list", max = 5L, min = 0L), MaxResults = structure(logical(0), 
            shape = "MaintenanceWindowSearchMaxResults", box = TRUE, 
            type = "integer", min = 1L), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string")), shape = "DescribeMaintenanceWindowScheduleRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_maintenance_window_schedule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScheduledWindowExecutions = structure(list(structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), Name = structure(logical(0), 
        shape = "MaintenanceWindowName", type = "string", max = 128L, 
        min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), ExecutionTime = structure(logical(0), 
        shape = "MaintenanceWindowStringDateTime", type = "string")), 
        shape = "ScheduledWindowExecution", type = "structure")), 
        shape = "ScheduledWindowExecutionList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "DescribeMaintenanceWindowScheduleResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_maintenance_window_targets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "MaintenanceWindowFilterKey", type = "string", 
        max = 128L, min = 1L), Values = structure(list(structure(logical(0), 
        shape = "MaintenanceWindowFilterValue", type = "string", 
        max = 256L, min = 1L)), shape = "MaintenanceWindowFilterValues", 
        type = "list")), shape = "MaintenanceWindowFilter", type = "structure")), 
        shape = "MaintenanceWindowFilterList", type = "list", 
        max = 5L, min = 0L), MaxResults = structure(logical(0), 
        shape = "MaintenanceWindowMaxResults", box = TRUE, type = "integer", 
        max = 100L, min = 10L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribeMaintenanceWindowTargetsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_maintenance_window_targets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Targets = structure(list(structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), WindowTargetId = structure(logical(0), 
        shape = "MaintenanceWindowTargetId", type = "string", 
        max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        ResourceType = structure(logical(0), shape = "MaintenanceWindowResourceType", 
            type = "string"), Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        OwnerInformation = structure(logical(0), shape = "OwnerInformation", 
            type = "string", max = 128L, min = 1L, sensitive = TRUE), 
        Name = structure(logical(0), shape = "MaintenanceWindowName", 
            type = "string", max = 128L, min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        Description = structure(logical(0), shape = "MaintenanceWindowDescription", 
            type = "string", max = 128L, min = 1L, sensitive = TRUE)), 
        shape = "MaintenanceWindowTarget", type = "structure")), 
        shape = "MaintenanceWindowTargetList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "DescribeMaintenanceWindowTargetsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_maintenance_window_tasks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "MaintenanceWindowFilterKey", type = "string", 
        max = 128L, min = 1L), Values = structure(list(structure(logical(0), 
        shape = "MaintenanceWindowFilterValue", type = "string", 
        max = 256L, min = 1L)), shape = "MaintenanceWindowFilterValues", 
        type = "list")), shape = "MaintenanceWindowFilter", type = "structure")), 
        shape = "MaintenanceWindowFilterList", type = "list", 
        max = 5L, min = 0L), MaxResults = structure(logical(0), 
        shape = "MaintenanceWindowMaxResults", box = TRUE, type = "integer", 
        max = 100L, min = 10L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribeMaintenanceWindowTasksRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_maintenance_window_tasks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tasks = structure(list(structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), WindowTaskId = structure(logical(0), 
        shape = "MaintenanceWindowTaskId", type = "string", max = 36L, 
        min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        TaskArn = structure(logical(0), shape = "MaintenanceWindowTaskArn", 
            type = "string", max = 1600L, min = 1L), Type = structure(logical(0), 
            shape = "MaintenanceWindowTaskType", type = "string"), 
        Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        TaskParameters = structure(list(structure(list(Values = structure(list(structure(logical(0), 
            shape = "MaintenanceWindowTaskParameterValue", type = "string", 
            max = 255L, min = 1L, sensitive = TRUE)), shape = "MaintenanceWindowTaskParameterValueList", 
            type = "list", sensitive = TRUE)), shape = "MaintenanceWindowTaskParameterValueExpression", 
            type = "structure", sensitive = TRUE)), shape = "MaintenanceWindowTaskParameters", 
            type = "map", sensitive = TRUE), Priority = structure(logical(0), 
            shape = "MaintenanceWindowTaskPriority", type = "integer", 
            min = 0L), LoggingInfo = structure(list(S3BucketName = structure(logical(0), 
            shape = "S3BucketName", type = "string", max = 63L, 
            min = 3L), S3KeyPrefix = structure(logical(0), shape = "S3KeyPrefix", 
            type = "string", max = 500L), S3Region = structure(logical(0), 
            shape = "S3Region", type = "string", max = 20L, min = 3L)), 
            shape = "LoggingInfo", type = "structure"), ServiceRoleArn = structure(logical(0), 
            shape = "ServiceRole", type = "string"), MaxConcurrency = structure(logical(0), 
            shape = "MaxConcurrency", type = "string", max = 7L, 
            min = 1L, pattern = "^([1-9][0-9]*|[1-9][0-9]%|[1-9]%|100%)$"), 
        MaxErrors = structure(logical(0), shape = "MaxErrors", 
            type = "string", max = 7L, min = 1L, pattern = "^([1-9][0-9]*|[0]|[1-9][0-9]%|[0-9]%|100%)$"), 
        Name = structure(logical(0), shape = "MaintenanceWindowName", 
            type = "string", max = 128L, min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        Description = structure(logical(0), shape = "MaintenanceWindowDescription", 
            type = "string", max = 128L, min = 1L, sensitive = TRUE)), 
        shape = "MaintenanceWindowTask", type = "structure")), 
        shape = "MaintenanceWindowTaskList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "DescribeMaintenanceWindowTasksResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_maintenance_windows_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "MaintenanceWindowFilterKey", type = "string", 
        max = 128L, min = 1L), Values = structure(list(structure(logical(0), 
        shape = "MaintenanceWindowFilterValue", type = "string", 
        max = 256L, min = 1L)), shape = "MaintenanceWindowFilterValues", 
        type = "list")), shape = "MaintenanceWindowFilter", type = "structure")), 
        shape = "MaintenanceWindowFilterList", type = "list", 
        max = 5L, min = 0L), MaxResults = structure(logical(0), 
        shape = "MaintenanceWindowMaxResults", box = TRUE, type = "integer", 
        max = 100L, min = 10L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribeMaintenanceWindowsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_maintenance_windows_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowIdentities = structure(list(structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), Name = structure(logical(0), 
        shape = "MaintenanceWindowName", type = "string", max = 128L, 
        min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), Description = structure(logical(0), 
        shape = "MaintenanceWindowDescription", type = "string", 
        max = 128L, min = 1L, sensitive = TRUE), Enabled = structure(logical(0), 
        shape = "MaintenanceWindowEnabled", type = "boolean"), 
        Duration = structure(logical(0), shape = "MaintenanceWindowDurationHours", 
            type = "integer", max = 24L, min = 1L), Cutoff = structure(logical(0), 
            shape = "MaintenanceWindowCutoff", type = "integer", 
            max = 23L, min = 0L), Schedule = structure(logical(0), 
            shape = "MaintenanceWindowSchedule", type = "string", 
            max = 256L, min = 1L), ScheduleTimezone = structure(logical(0), 
            shape = "MaintenanceWindowTimezone", type = "string"), 
        EndDate = structure(logical(0), shape = "MaintenanceWindowStringDateTime", 
            type = "string"), StartDate = structure(logical(0), 
            shape = "MaintenanceWindowStringDateTime", type = "string"), 
        NextExecutionTime = structure(logical(0), shape = "MaintenanceWindowStringDateTime", 
            type = "string")), shape = "MaintenanceWindowIdentity", 
        type = "structure")), shape = "MaintenanceWindowIdentityList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "DescribeMaintenanceWindowsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_maintenance_windows_for_target_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Targets = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TargetKey", type = "string", max = 128L, min = 1L, 
        pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), Values = structure(list(structure(logical(0), 
        shape = "TargetValue", type = "string")), shape = "TargetValues", 
        type = "list", max = 50L, min = 0L)), shape = "Target", 
        type = "structure")), shape = "Targets", type = "list", 
        max = 5L, min = 0L), ResourceType = structure(logical(0), 
        shape = "MaintenanceWindowResourceType", type = "string"), 
        MaxResults = structure(logical(0), shape = "MaintenanceWindowSearchMaxResults", 
            box = TRUE, type = "integer", min = 1L), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string")), shape = "DescribeMaintenanceWindowsForTargetRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_maintenance_windows_for_target_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowIdentities = structure(list(structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), Name = structure(logical(0), 
        shape = "MaintenanceWindowName", type = "string", max = 128L, 
        min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$")), shape = "MaintenanceWindowIdentityForTarget", 
        type = "structure")), shape = "MaintenanceWindowsForTargetList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "DescribeMaintenanceWindowsForTargetResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_parameters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "ParametersFilterKey", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "ParametersFilterValue", type = "string", max = 1024L, 
        min = 1L)), shape = "ParametersFilterValueList", type = "list", 
        max = 50L, min = 1L)), shape = "ParametersFilter", type = "structure")), 
        shape = "ParametersFilterList", type = "list"), ParameterFilters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "ParameterStringFilterKey", type = "string", 
        max = 132L, min = 1L, pattern = "tag:.+|Name|Type|KeyId|Path|Label"), 
        Option = structure(logical(0), shape = "ParameterStringQueryOption", 
            type = "string", max = 10L, min = 1L), Values = structure(list(structure(logical(0), 
            shape = "ParameterStringFilterValue", type = "string", 
            max = 1024L, min = 1L)), shape = "ParameterStringFilterValueList", 
            type = "list", max = 50L, min = 1L)), shape = "ParameterStringFilter", 
        type = "structure")), shape = "ParameterStringFilterList", 
        type = "list"), MaxResults = structure(logical(0), shape = "MaxResults", 
        box = TRUE, type = "integer", max = 50L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribeParametersRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_parameters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Parameters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "PSParameterName", type = "string", max = 2048L, 
        min = 1L), Type = structure(logical(0), shape = "ParameterType", 
        type = "string"), KeyId = structure(logical(0), shape = "ParameterKeyId", 
        type = "string", max = 256L, min = 1L, pattern = "^([a-zA-Z0-9:/_-]+)$"), 
        LastModifiedDate = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), LastModifiedUser = structure(logical(0), 
            shape = "String", type = "string"), Description = structure(logical(0), 
            shape = "ParameterDescription", type = "string", 
            max = 1024L, min = 0L), AllowedPattern = structure(logical(0), 
            shape = "AllowedPattern", type = "string", max = 1024L, 
            min = 0L), Version = structure(logical(0), shape = "PSParameterVersion", 
            type = "long")), shape = "ParameterMetadata", type = "structure")), 
        shape = "ParameterMetadataList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribeParametersResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_patch_baselines_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "PatchOrchestratorFilterKey", type = "string", 
        max = 128L, min = 1L), Values = structure(list(structure(logical(0), 
        shape = "PatchOrchestratorFilterValue", type = "string", 
        max = 256L, min = 1L)), shape = "PatchOrchestratorFilterValues", 
        type = "list")), shape = "PatchOrchestratorFilter", type = "structure")), 
        shape = "PatchOrchestratorFilterList", type = "list", 
        max = 5L, min = 0L), MaxResults = structure(logical(0), 
        shape = "PatchBaselineMaxResults", box = TRUE, type = "integer", 
        max = 100L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribePatchBaselinesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_patch_baselines_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BaselineIdentities = structure(list(structure(list(BaselineId = structure(logical(0), 
        shape = "BaselineId", type = "string", max = 128L, min = 20L, 
        pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$"), BaselineName = structure(logical(0), 
        shape = "BaselineName", type = "string", max = 128L, 
        min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), OperatingSystem = structure(logical(0), 
        shape = "OperatingSystem", type = "string"), BaselineDescription = structure(logical(0), 
        shape = "BaselineDescription", type = "string", max = 1024L, 
        min = 1L), DefaultBaseline = structure(logical(0), shape = "DefaultBaseline", 
        type = "boolean")), shape = "PatchBaselineIdentity", 
        type = "structure")), shape = "PatchBaselineIdentityList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "DescribePatchBaselinesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_patch_group_state_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PatchGroup = structure(logical(0), 
        shape = "PatchGroup", type = "string", max = 256L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "DescribePatchGroupStateRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_patch_group_state_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Instances = structure(logical(0), 
        shape = "Integer", type = "integer"), InstancesWithInstalledPatches = structure(logical(0), 
        shape = "Integer", type = "integer"), InstancesWithInstalledOtherPatches = structure(logical(0), 
        shape = "Integer", type = "integer"), InstancesWithInstalledRejectedPatches = structure(logical(0), 
        shape = "InstancesCount", box = TRUE, type = "integer"), 
        InstancesWithMissingPatches = structure(logical(0), shape = "Integer", 
            type = "integer"), InstancesWithFailedPatches = structure(logical(0), 
            shape = "Integer", type = "integer"), InstancesWithNotApplicablePatches = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "DescribePatchGroupStateResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_patch_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "PatchBaselineMaxResults", box = TRUE, type = "integer", 
        max = 100L, min = 1L), Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "PatchOrchestratorFilterKey", type = "string", 
        max = 128L, min = 1L), Values = structure(list(structure(logical(0), 
        shape = "PatchOrchestratorFilterValue", type = "string", 
        max = 256L, min = 1L)), shape = "PatchOrchestratorFilterValues", 
        type = "list")), shape = "PatchOrchestratorFilter", type = "structure")), 
        shape = "PatchOrchestratorFilterList", type = "list", 
        max = 5L, min = 0L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribePatchGroupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_patch_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Mappings = structure(list(structure(list(PatchGroup = structure(logical(0), 
        shape = "PatchGroup", type = "string", max = 256L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), BaselineIdentity = structure(list(BaselineId = structure(logical(0), 
        shape = "BaselineId", type = "string", max = 128L, min = 20L, 
        pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$"), BaselineName = structure(logical(0), 
        shape = "BaselineName", type = "string", max = 128L, 
        min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), OperatingSystem = structure(logical(0), 
        shape = "OperatingSystem", type = "string"), BaselineDescription = structure(logical(0), 
        shape = "BaselineDescription", type = "string", max = 1024L, 
        min = 1L), DefaultBaseline = structure(logical(0), shape = "DefaultBaseline", 
        type = "boolean")), shape = "PatchBaselineIdentity", 
        type = "structure")), shape = "PatchGroupPatchBaselineMapping", 
        type = "structure")), shape = "PatchGroupPatchBaselineMappingList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "DescribePatchGroupsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_sessions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(State = structure(logical(0), shape = "SessionState", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "SessionMaxResults", box = TRUE, type = "integer", 
        max = 200L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "SessionFilterKey", type = "string", locationName = "key"), 
        Value = structure(logical(0), shape = "SessionFilterValue", 
            type = "string", max = 200L, min = 1L, locationName = "value")), 
        shape = "SessionFilter", type = "structure")), shape = "SessionFilterList", 
        type = "list", max = 5L, min = 1L)), shape = "DescribeSessionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_sessions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Sessions = structure(list(structure(list(SessionId = structure(logical(0), 
        shape = "SessionId", type = "string", max = 96L, min = 1L), 
        Target = structure(logical(0), shape = "SessionTarget", 
            type = "string", max = 50L, min = 1L), Status = structure(logical(0), 
            shape = "SessionStatus", type = "string"), StartDate = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), EndDate = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), DocumentName = structure(logical(0), 
            shape = "DocumentName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        Owner = structure(logical(0), shape = "SessionOwner", 
            type = "string", max = 256L, min = 1L), Details = structure(logical(0), 
            shape = "SessionDetails", type = "string", max = 1024L, 
            min = 1L), OutputUrl = structure(list(S3OutputUrl = structure(logical(0), 
            shape = "SessionManagerS3OutputUrl", type = "string", 
            max = 2083L, min = 1L), CloudWatchOutputUrl = structure(logical(0), 
            shape = "SessionManagerCloudWatchOutputUrl", type = "string", 
            max = 2083L, min = 1L)), shape = "SessionManagerOutputUrl", 
            type = "structure")), shape = "Session", type = "structure")), 
        shape = "SessionList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribeSessionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_automation_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutomationExecutionId = structure(logical(0), 
        shape = "AutomationExecutionId", type = "string", max = 36L, 
        min = 36L)), shape = "GetAutomationExecutionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_automation_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutomationExecution = structure(list(AutomationExecutionId = structure(logical(0), 
        shape = "AutomationExecutionId", type = "string", max = 36L, 
        min = 36L), DocumentName = structure(logical(0), shape = "DocumentName", 
        type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        ExecutionStartTime = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), ExecutionEndTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), AutomationExecutionStatus = structure(logical(0), 
            shape = "AutomationExecutionStatus", type = "string"), 
        StepExecutions = structure(list(structure(list(StepName = structure(logical(0), 
            shape = "String", type = "string"), Action = structure(logical(0), 
            shape = "AutomationActionName", type = "string", 
            pattern = "^aws:[a-zA-Z]{3,25}$"), TimeoutSeconds = structure(logical(0), 
            shape = "Long", box = TRUE, type = "long"), OnFailure = structure(logical(0), 
            shape = "String", type = "string"), MaxAttempts = structure(logical(0), 
            shape = "Integer", box = TRUE, type = "integer"), 
            ExecutionStartTime = structure(logical(0), shape = "DateTime", 
                type = "timestamp"), ExecutionEndTime = structure(logical(0), 
                shape = "DateTime", type = "timestamp"), StepStatus = structure(logical(0), 
                shape = "AutomationExecutionStatus", type = "string"), 
            ResponseCode = structure(logical(0), shape = "String", 
                type = "string"), Inputs = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "NormalStringMap", 
                type = "map"), Outputs = structure(list(structure(list(structure(logical(0), 
                shape = "AutomationParameterValue", type = "string", 
                max = 512L, min = 1L)), shape = "AutomationParameterValueList", 
                type = "list", max = 10L, min = 0L)), shape = "AutomationParameterMap", 
                type = "map", max = 200L, min = 1L), Response = structure(logical(0), 
                shape = "String", type = "string"), FailureMessage = structure(logical(0), 
                shape = "String", type = "string"), FailureDetails = structure(list(FailureStage = structure(logical(0), 
                shape = "String", type = "string"), FailureType = structure(logical(0), 
                shape = "String", type = "string"), Details = structure(list(structure(list(structure(logical(0), 
                shape = "AutomationParameterValue", type = "string", 
                max = 512L, min = 1L)), shape = "AutomationParameterValueList", 
                type = "list", max = 10L, min = 0L)), shape = "AutomationParameterMap", 
                type = "map", max = 200L, min = 1L)), shape = "FailureDetails", 
                type = "structure"), StepExecutionId = structure(logical(0), 
                shape = "String", type = "string"), OverriddenParameters = structure(list(structure(list(structure(logical(0), 
                shape = "AutomationParameterValue", type = "string", 
                max = 512L, min = 1L)), shape = "AutomationParameterValueList", 
                type = "list", max = 10L, min = 0L)), shape = "AutomationParameterMap", 
                type = "map", max = 200L, min = 1L), IsEnd = structure(logical(0), 
                shape = "Boolean", box = TRUE, type = "boolean"), 
            NextStep = structure(logical(0), shape = "String", 
                box = TRUE, type = "string"), IsCritical = structure(logical(0), 
                shape = "Boolean", box = TRUE, type = "boolean"), 
            ValidNextSteps = structure(list(structure(logical(0), 
                shape = "ValidNextStep", type = "string", max = 65535L, 
                min = 1L)), shape = "ValidNextStepList", type = "list")), 
            shape = "StepExecution", type = "structure")), shape = "StepExecutionList", 
            type = "list"), StepExecutionsTruncated = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Parameters = structure(list(structure(list(structure(logical(0), 
            shape = "AutomationParameterValue", type = "string", 
            max = 512L, min = 1L)), shape = "AutomationParameterValueList", 
            type = "list", max = 10L, min = 0L)), shape = "AutomationParameterMap", 
            type = "map", max = 200L, min = 1L), Outputs = structure(list(structure(list(structure(logical(0), 
            shape = "AutomationParameterValue", type = "string", 
            max = 512L, min = 1L)), shape = "AutomationParameterValueList", 
            type = "list", max = 10L, min = 0L)), shape = "AutomationParameterMap", 
            type = "map", max = 200L, min = 1L), FailureMessage = structure(logical(0), 
            shape = "String", type = "string"), Mode = structure(logical(0), 
            shape = "ExecutionMode", type = "string"), ParentAutomationExecutionId = structure(logical(0), 
            shape = "AutomationExecutionId", type = "string", 
            max = 36L, min = 36L), ExecutedBy = structure(logical(0), 
            shape = "String", type = "string"), CurrentStepName = structure(logical(0), 
            shape = "String", type = "string"), CurrentAction = structure(logical(0), 
            shape = "String", type = "string"), TargetParameterName = structure(logical(0), 
            shape = "AutomationParameterKey", type = "string", 
            max = 30L, min = 1L), Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        TargetMaps = structure(list(structure(list(structure(list(structure(logical(0), 
            shape = "TargetMapValue", type = "string", max = 50L, 
            min = 1L)), shape = "TargetMapValueList", type = "list", 
            max = 25L, min = 0L)), shape = "TargetMap", type = "map", 
            max = 20L, min = 1L)), shape = "TargetMaps", type = "list", 
            max = 300L, min = 0L), ResolvedTargets = structure(list(ParameterValues = structure(list(structure(logical(0), 
            shape = "ParameterValue", type = "string")), shape = "TargetParameterList", 
            type = "list"), Truncated = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "ResolvedTargets", 
            type = "structure"), MaxConcurrency = structure(logical(0), 
            shape = "MaxConcurrency", type = "string", max = 7L, 
            min = 1L, pattern = "^([1-9][0-9]*|[1-9][0-9]%|[1-9]%|100%)$"), 
        MaxErrors = structure(logical(0), shape = "MaxErrors", 
            type = "string", max = 7L, min = 1L, pattern = "^([1-9][0-9]*|[0]|[1-9][0-9]%|[0-9]%|100%)$"), 
        Target = structure(logical(0), shape = "String", type = "string")), 
        shape = "AutomationExecution", type = "structure")), 
        shape = "GetAutomationExecutionResult", type = "structure")
    return(populate(args, shape))
}

get_command_invocation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CommandId = structure(logical(0), 
        shape = "CommandId", type = "string", max = 36L, min = 36L), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        PluginName = structure(logical(0), shape = "CommandPluginName", 
            type = "string", min = 4L)), shape = "GetCommandInvocationRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_command_invocation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CommandId = structure(logical(0), 
        shape = "CommandId", type = "string", max = 36L, min = 36L), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        Comment = structure(logical(0), shape = "Comment", type = "string", 
            max = 100L), DocumentName = structure(logical(0), 
            shape = "DocumentName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        PluginName = structure(logical(0), shape = "CommandPluginName", 
            type = "string", min = 4L), ResponseCode = structure(logical(0), 
            shape = "ResponseCode", type = "integer"), ExecutionStartDateTime = structure(logical(0), 
            shape = "StringDateTime", type = "string", pattern = "^([\\-]?\\d{4}(?!\\d{2}\\b))((-?)((0[1-9]|1[0-2])(\\3([12]\\d|0[1-9]|3[01]))?|W([0-4]\\d|5[0-2])(-?[1-7])?|(00[1-9]|0[1-9]\\d|[12]\\d{2}|3([0-5]\\d|6[1-6])))([T\\s]((([01]\\d|2[0-3])((:?)[0-5]\\d)?|24\\:?00)([\\.,]\\d(?!:))?)?(\\17[0-5]\\d([\\.,]\\d)?)?([zZ]|([\\-])([01]\\d|2[0-3]):?([0-5]\\d)?)?)?)?$"), 
        ExecutionElapsedTime = structure(logical(0), shape = "StringDateTime", 
            type = "string", pattern = "^([\\-]?\\d{4}(?!\\d{2}\\b))((-?)((0[1-9]|1[0-2])(\\3([12]\\d|0[1-9]|3[01]))?|W([0-4]\\d|5[0-2])(-?[1-7])?|(00[1-9]|0[1-9]\\d|[12]\\d{2}|3([0-5]\\d|6[1-6])))([T\\s]((([01]\\d|2[0-3])((:?)[0-5]\\d)?|24\\:?00)([\\.,]\\d(?!:))?)?(\\17[0-5]\\d([\\.,]\\d)?)?([zZ]|([\\-])([01]\\d|2[0-3]):?([0-5]\\d)?)?)?)?$"), 
        ExecutionEndDateTime = structure(logical(0), shape = "StringDateTime", 
            type = "string", pattern = "^([\\-]?\\d{4}(?!\\d{2}\\b))((-?)((0[1-9]|1[0-2])(\\3([12]\\d|0[1-9]|3[01]))?|W([0-4]\\d|5[0-2])(-?[1-7])?|(00[1-9]|0[1-9]\\d|[12]\\d{2}|3([0-5]\\d|6[1-6])))([T\\s]((([01]\\d|2[0-3])((:?)[0-5]\\d)?|24\\:?00)([\\.,]\\d(?!:))?)?(\\17[0-5]\\d([\\.,]\\d)?)?([zZ]|([\\-])([01]\\d|2[0-3]):?([0-5]\\d)?)?)?)?$"), 
        Status = structure(logical(0), shape = "CommandInvocationStatus", 
            type = "string"), StatusDetails = structure(logical(0), 
            shape = "StatusDetails", type = "string", max = 100L, 
            min = 0L), StandardOutputContent = structure(logical(0), 
            shape = "StandardOutputContent", type = "string", 
            max = 24000L), StandardOutputUrl = structure(logical(0), 
            shape = "Url", type = "string"), StandardErrorContent = structure(logical(0), 
            shape = "StandardErrorContent", type = "string", 
            max = 8000L), StandardErrorUrl = structure(logical(0), 
            shape = "Url", type = "string"), CloudWatchOutputConfig = structure(list(CloudWatchLogGroupName = structure(logical(0), 
            shape = "CloudWatchLogGroupName", type = "string", 
            max = 512L, min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+"), 
            CloudWatchOutputEnabled = structure(logical(0), shape = "CloudWatchOutputEnabled", 
                type = "boolean")), shape = "CloudWatchOutputConfig", 
            type = "structure")), shape = "GetCommandInvocationResult", 
        type = "structure")
    return(populate(args, shape))
}

get_connection_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Target = structure(logical(0), shape = "SessionTarget", 
        type = "string", max = 50L, min = 1L)), shape = "GetConnectionStatusRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_connection_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Target = structure(logical(0), shape = "SessionTarget", 
        type = "string", max = 50L, min = 1L), Status = structure(logical(0), 
        shape = "ConnectionStatus", type = "string")), shape = "GetConnectionStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_default_patch_baseline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperatingSystem = structure(logical(0), 
        shape = "OperatingSystem", type = "string")), shape = "GetDefaultPatchBaselineRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_default_patch_baseline_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BaselineId = structure(logical(0), 
        shape = "BaselineId", type = "string", max = 128L, min = 20L, 
        pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$"), OperatingSystem = structure(logical(0), 
        shape = "OperatingSystem", type = "string")), shape = "GetDefaultPatchBaselineResult", 
        type = "structure")
    return(populate(args, shape))
}

get_deployable_patch_snapshot_for_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        SnapshotId = structure(logical(0), shape = "SnapshotId", 
            type = "string", max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$")), 
        shape = "GetDeployablePatchSnapshotForInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_deployable_patch_snapshot_for_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        SnapshotId = structure(logical(0), shape = "SnapshotId", 
            type = "string", max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"), 
        SnapshotDownloadUrl = structure(logical(0), shape = "SnapshotDownloadUrl", 
            type = "string"), Product = structure(logical(0), 
            shape = "Product", type = "string")), shape = "GetDeployablePatchSnapshotForInstanceResult", 
        type = "structure")
    return(populate(args, shape))
}

get_document_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "DocumentARN", 
        type = "string", pattern = "^[a-zA-Z0-9_\\-.:/]{3,128}$"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        DocumentFormat = structure(logical(0), shape = "DocumentFormat", 
            type = "string")), shape = "GetDocumentRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_document_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "DocumentARN", 
        type = "string", pattern = "^[a-zA-Z0-9_\\-.:/]{3,128}$"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        Content = structure(logical(0), shape = "DocumentContent", 
            type = "string", min = 1L), DocumentType = structure(logical(0), 
            shape = "DocumentType", type = "string"), DocumentFormat = structure(logical(0), 
            shape = "DocumentFormat", type = "string")), shape = "GetDocumentResult", 
        type = "structure")
    return(populate(args, shape))
}

get_inventory_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "InventoryFilterKey", type = "string", max = 200L, 
        min = 1L), Values = structure(list(structure(logical(0), 
        shape = "InventoryFilterValue", type = "string")), shape = "InventoryFilterValueList", 
        type = "list", max = 40L, min = 1L), Type = structure(logical(0), 
        shape = "InventoryQueryOperatorType", type = "string")), 
        shape = "InventoryFilter", type = "structure")), shape = "InventoryFilterList", 
        type = "list", max = 5L, min = 1L), Aggregators = structure(list(structure(list(Expression = structure(logical(0), 
        shape = "InventoryAggregatorExpression", type = "string", 
        max = 1000L, min = 1L), Aggregators = structure(logical(0), 
        shape = "InventoryAggregatorList", type = "list", max = 10L, 
        min = 1L), Groups = structure(list(structure(list(Name = structure(logical(0), 
        shape = "InventoryGroupName", type = "string", max = 200L, 
        min = 1L), Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "InventoryFilterKey", type = "string", max = 200L, 
        min = 1L), Values = structure(list(structure(logical(0), 
        shape = "InventoryFilterValue", type = "string")), shape = "InventoryFilterValueList", 
        type = "list", max = 40L, min = 1L), Type = structure(logical(0), 
        shape = "InventoryQueryOperatorType", type = "string")), 
        shape = "InventoryFilter", type = "structure")), shape = "InventoryFilterList", 
        type = "list", max = 5L, min = 1L)), shape = "InventoryGroup", 
        type = "structure")), shape = "InventoryGroupList", type = "list", 
        max = 10L, min = 1L)), shape = "InventoryAggregator", 
        type = "structure")), shape = "InventoryAggregatorList", 
        type = "list", max = 10L, min = 1L), ResultAttributes = structure(list(structure(list(TypeName = structure(logical(0), 
        shape = "InventoryItemTypeName", type = "string", max = 100L, 
        min = 1L, pattern = "^(AWS|Custom):.*$")), shape = "ResultAttribute", 
        type = "structure")), shape = "ResultAttributeList", 
        type = "list", max = 1L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", box = TRUE, type = "integer", max = 50L, 
        min = 1L)), shape = "GetInventoryRequest", type = "structure")
    return(populate(args, shape))
}

get_inventory_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Entities = structure(list(structure(list(Id = structure(logical(0), 
        shape = "InventoryResultEntityId", type = "string"), 
        Data = structure(list(structure(list(TypeName = structure(logical(0), 
            shape = "InventoryItemTypeName", type = "string", 
            max = 100L, min = 1L, pattern = "^(AWS|Custom):.*$"), 
            SchemaVersion = structure(logical(0), shape = "InventoryItemSchemaVersion", 
                type = "string", pattern = "^([0-9]{1,6})(\\.[0-9]{1,6})$"), 
            CaptureTime = structure(logical(0), shape = "InventoryItemCaptureTime", 
                type = "string", pattern = "^(20)[0-9][0-9]-(0[1-9]|1[012])-([12][0-9]|3[01]|0[1-9])(T)(2[0-3]|[0-1][0-9])(:[0-5][0-9])(:[0-5][0-9])(Z)$"), 
            ContentHash = structure(logical(0), shape = "InventoryItemContentHash", 
                type = "string", max = 256L), Content = structure(list(structure(list(structure(logical(0), 
                shape = "AttributeValue", type = "string", max = 4096L, 
                min = 0L)), shape = "InventoryItemEntry", type = "map", 
                max = 50L, min = 0L)), shape = "InventoryItemEntryList", 
                type = "list", max = 10000L, min = 0L)), shape = "InventoryResultItem", 
            type = "structure")), shape = "InventoryResultItemMap", 
            type = "map")), shape = "InventoryResultEntity", 
        type = "structure")), shape = "InventoryResultEntityList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "GetInventoryResult", type = "structure")
    return(populate(args, shape))
}

get_inventory_schema_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TypeName = structure(logical(0), 
        shape = "InventoryItemTypeNameFilter", type = "string", 
        max = 100L, min = 0L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "GetInventorySchemaMaxResults", box = TRUE, type = "integer", 
        max = 200L, min = 50L), Aggregator = structure(logical(0), 
        shape = "AggregatorSchemaOnly", type = "boolean"), SubType = structure(logical(0), 
        shape = "IsSubTypeSchema", box = TRUE, type = "boolean")), 
        shape = "GetInventorySchemaRequest", type = "structure")
    return(populate(args, shape))
}

get_inventory_schema_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Schemas = structure(list(structure(list(TypeName = structure(logical(0), 
        shape = "InventoryItemTypeName", type = "string", max = 100L, 
        min = 1L, pattern = "^(AWS|Custom):.*$"), Version = structure(logical(0), 
        shape = "InventoryItemSchemaVersion", type = "string", 
        pattern = "^([0-9]{1,6})(\\.[0-9]{1,6})$"), Attributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "InventoryItemAttributeName", type = "string"), 
        DataType = structure(logical(0), shape = "InventoryAttributeDataType", 
            type = "string")), shape = "InventoryItemAttribute", 
        type = "structure")), shape = "InventoryItemAttributeList", 
        type = "list", max = 50L, min = 1L), DisplayName = structure(logical(0), 
        shape = "InventoryTypeDisplayName", type = "string")), 
        shape = "InventoryItemSchema", type = "structure")), 
        shape = "InventoryItemSchemaResultList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "GetInventorySchemaResult", 
        type = "structure")
    return(populate(args, shape))
}

get_maintenance_window_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$")), shape = "GetMaintenanceWindowRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_maintenance_window_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), Name = structure(logical(0), 
        shape = "MaintenanceWindowName", type = "string", max = 128L, 
        min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), Description = structure(logical(0), 
        shape = "MaintenanceWindowDescription", type = "string", 
        max = 128L, min = 1L, sensitive = TRUE), StartDate = structure(logical(0), 
        shape = "MaintenanceWindowStringDateTime", type = "string"), 
        EndDate = structure(logical(0), shape = "MaintenanceWindowStringDateTime", 
            type = "string"), Schedule = structure(logical(0), 
            shape = "MaintenanceWindowSchedule", type = "string", 
            max = 256L, min = 1L), ScheduleTimezone = structure(logical(0), 
            shape = "MaintenanceWindowTimezone", type = "string"), 
        NextExecutionTime = structure(logical(0), shape = "MaintenanceWindowStringDateTime", 
            type = "string"), Duration = structure(logical(0), 
            shape = "MaintenanceWindowDurationHours", type = "integer", 
            max = 24L, min = 1L), Cutoff = structure(logical(0), 
            shape = "MaintenanceWindowCutoff", type = "integer", 
            max = 23L, min = 0L), AllowUnassociatedTargets = structure(logical(0), 
            shape = "MaintenanceWindowAllowUnassociatedTargets", 
            type = "boolean"), Enabled = structure(logical(0), 
            shape = "MaintenanceWindowEnabled", type = "boolean"), 
        CreatedDate = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), ModifiedDate = structure(logical(0), 
            shape = "DateTime", type = "timestamp")), shape = "GetMaintenanceWindowResult", 
        type = "structure")
    return(populate(args, shape))
}

get_maintenance_window_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowExecutionId = structure(logical(0), 
        shape = "MaintenanceWindowExecutionId", type = "string", 
        max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$")), 
        shape = "GetMaintenanceWindowExecutionRequest", type = "structure")
    return(populate(args, shape))
}

get_maintenance_window_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowExecutionId = structure(logical(0), 
        shape = "MaintenanceWindowExecutionId", type = "string", 
        max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        TaskIds = structure(list(structure(logical(0), shape = "MaintenanceWindowExecutionTaskId", 
            type = "string", max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$")), 
            shape = "MaintenanceWindowExecutionTaskIdList", type = "list"), 
        Status = structure(logical(0), shape = "MaintenanceWindowExecutionStatus", 
            type = "string"), StatusDetails = structure(logical(0), 
            shape = "MaintenanceWindowExecutionStatusDetails", 
            type = "string", max = 250L, min = 0L), StartTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp")), shape = "GetMaintenanceWindowExecutionResult", 
        type = "structure")
    return(populate(args, shape))
}

get_maintenance_window_execution_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowExecutionId = structure(logical(0), 
        shape = "MaintenanceWindowExecutionId", type = "string", 
        max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        TaskId = structure(logical(0), shape = "MaintenanceWindowExecutionTaskId", 
            type = "string", max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$")), 
        shape = "GetMaintenanceWindowExecutionTaskRequest", type = "structure")
    return(populate(args, shape))
}

get_maintenance_window_execution_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowExecutionId = structure(logical(0), 
        shape = "MaintenanceWindowExecutionId", type = "string", 
        max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        TaskExecutionId = structure(logical(0), shape = "MaintenanceWindowExecutionTaskId", 
            type = "string", max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        TaskArn = structure(logical(0), shape = "MaintenanceWindowTaskArn", 
            type = "string", max = 1600L, min = 1L), ServiceRole = structure(logical(0), 
            shape = "ServiceRole", type = "string"), Type = structure(logical(0), 
            shape = "MaintenanceWindowTaskType", type = "string"), 
        TaskParameters = structure(list(structure(list(structure(list(Values = structure(list(structure(logical(0), 
            shape = "MaintenanceWindowTaskParameterValue", type = "string", 
            max = 255L, min = 1L, sensitive = TRUE)), shape = "MaintenanceWindowTaskParameterValueList", 
            type = "list", sensitive = TRUE)), shape = "MaintenanceWindowTaskParameterValueExpression", 
            type = "structure", sensitive = TRUE)), shape = "MaintenanceWindowTaskParameters", 
            type = "map", sensitive = TRUE)), shape = "MaintenanceWindowTaskParametersList", 
            type = "list", sensitive = TRUE), Priority = structure(logical(0), 
            shape = "MaintenanceWindowTaskPriority", type = "integer", 
            min = 0L), MaxConcurrency = structure(logical(0), 
            shape = "MaxConcurrency", type = "string", max = 7L, 
            min = 1L, pattern = "^([1-9][0-9]*|[1-9][0-9]%|[1-9]%|100%)$"), 
        MaxErrors = structure(logical(0), shape = "MaxErrors", 
            type = "string", max = 7L, min = 1L, pattern = "^([1-9][0-9]*|[0]|[1-9][0-9]%|[0-9]%|100%)$"), 
        Status = structure(logical(0), shape = "MaintenanceWindowExecutionStatus", 
            type = "string"), StatusDetails = structure(logical(0), 
            shape = "MaintenanceWindowExecutionStatusDetails", 
            type = "string", max = 250L, min = 0L), StartTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp")), shape = "GetMaintenanceWindowExecutionTaskResult", 
        type = "structure")
    return(populate(args, shape))
}

get_maintenance_window_execution_task_invocation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowExecutionId = structure(logical(0), 
        shape = "MaintenanceWindowExecutionId", type = "string", 
        max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        TaskId = structure(logical(0), shape = "MaintenanceWindowExecutionTaskId", 
            type = "string", max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        InvocationId = structure(logical(0), shape = "MaintenanceWindowExecutionTaskInvocationId", 
            type = "string", max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$")), 
        shape = "GetMaintenanceWindowExecutionTaskInvocationRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_maintenance_window_execution_task_invocation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowExecutionId = structure(logical(0), 
        shape = "MaintenanceWindowExecutionId", type = "string", 
        max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        TaskExecutionId = structure(logical(0), shape = "MaintenanceWindowExecutionTaskId", 
            type = "string", max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        InvocationId = structure(logical(0), shape = "MaintenanceWindowExecutionTaskInvocationId", 
            type = "string", max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        ExecutionId = structure(logical(0), shape = "MaintenanceWindowExecutionTaskExecutionId", 
            type = "string"), TaskType = structure(logical(0), 
            shape = "MaintenanceWindowTaskType", type = "string"), 
        Parameters = structure(logical(0), shape = "MaintenanceWindowExecutionTaskInvocationParameters", 
            type = "string", sensitive = TRUE), Status = structure(logical(0), 
            shape = "MaintenanceWindowExecutionStatus", type = "string"), 
        StatusDetails = structure(logical(0), shape = "MaintenanceWindowExecutionStatusDetails", 
            type = "string", max = 250L, min = 0L), StartTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), OwnerInformation = structure(logical(0), 
            shape = "OwnerInformation", type = "string", max = 128L, 
            min = 1L, sensitive = TRUE), WindowTargetId = structure(logical(0), 
            shape = "MaintenanceWindowTaskTargetId", type = "string", 
            max = 36L)), shape = "GetMaintenanceWindowExecutionTaskInvocationResult", 
        type = "structure")
    return(populate(args, shape))
}

get_maintenance_window_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), WindowTaskId = structure(logical(0), 
        shape = "MaintenanceWindowTaskId", type = "string", max = 36L, 
        min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$")), 
        shape = "GetMaintenanceWindowTaskRequest", type = "structure")
    return(populate(args, shape))
}

get_maintenance_window_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), WindowTaskId = structure(logical(0), 
        shape = "MaintenanceWindowTaskId", type = "string", max = 36L, 
        min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        TaskArn = structure(logical(0), shape = "MaintenanceWindowTaskArn", 
            type = "string", max = 1600L, min = 1L), ServiceRoleArn = structure(logical(0), 
            shape = "ServiceRole", type = "string"), TaskType = structure(logical(0), 
            shape = "MaintenanceWindowTaskType", type = "string"), 
        TaskParameters = structure(list(structure(list(Values = structure(list(structure(logical(0), 
            shape = "MaintenanceWindowTaskParameterValue", type = "string", 
            max = 255L, min = 1L, sensitive = TRUE)), shape = "MaintenanceWindowTaskParameterValueList", 
            type = "list", sensitive = TRUE)), shape = "MaintenanceWindowTaskParameterValueExpression", 
            type = "structure", sensitive = TRUE)), shape = "MaintenanceWindowTaskParameters", 
            type = "map", sensitive = TRUE), TaskInvocationParameters = structure(list(RunCommand = structure(list(Comment = structure(logical(0), 
            shape = "Comment", type = "string", max = 100L), 
            DocumentHash = structure(logical(0), shape = "DocumentHash", 
                type = "string", max = 256L), DocumentHashType = structure(logical(0), 
                shape = "DocumentHashType", type = "string"), 
            NotificationConfig = structure(list(NotificationArn = structure(logical(0), 
                shape = "NotificationArn", type = "string"), 
                NotificationEvents = structure(list(structure(logical(0), 
                  shape = "NotificationEvent", type = "string")), 
                  shape = "NotificationEventList", type = "list"), 
                NotificationType = structure(logical(0), shape = "NotificationType", 
                  type = "string")), shape = "NotificationConfig", 
                type = "structure"), OutputS3BucketName = structure(logical(0), 
                shape = "S3BucketName", type = "string", max = 63L, 
                min = 3L), OutputS3KeyPrefix = structure(logical(0), 
                shape = "S3KeyPrefix", type = "string", max = 500L), 
            Parameters = structure(list(structure(list(structure(logical(0), 
                shape = "ParameterValue", type = "string")), 
                shape = "ParameterValueList", type = "list")), 
                shape = "Parameters", type = "map"), ServiceRoleArn = structure(logical(0), 
                shape = "ServiceRole", type = "string"), TimeoutSeconds = structure(logical(0), 
                shape = "TimeoutSeconds", box = TRUE, type = "integer", 
                max = 2592000L, min = 30L)), shape = "MaintenanceWindowRunCommandParameters", 
            type = "structure"), Automation = structure(list(DocumentVersion = structure(logical(0), 
            shape = "DocumentVersion", type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
            Parameters = structure(list(structure(list(structure(logical(0), 
                shape = "AutomationParameterValue", type = "string", 
                max = 512L, min = 1L)), shape = "AutomationParameterValueList", 
                type = "list", max = 10L, min = 0L)), shape = "AutomationParameterMap", 
                type = "map", max = 200L, min = 1L)), shape = "MaintenanceWindowAutomationParameters", 
            type = "structure"), StepFunctions = structure(list(Input = structure(logical(0), 
            shape = "MaintenanceWindowStepFunctionsInput", type = "string", 
            max = 4096L, sensitive = TRUE), Name = structure(logical(0), 
            shape = "MaintenanceWindowStepFunctionsName", type = "string", 
            max = 80L, min = 1L)), shape = "MaintenanceWindowStepFunctionsParameters", 
            type = "structure"), Lambda = structure(list(ClientContext = structure(logical(0), 
            shape = "MaintenanceWindowLambdaClientContext", type = "string", 
            max = 8000L, min = 1L), Qualifier = structure(logical(0), 
            shape = "MaintenanceWindowLambdaQualifier", type = "string", 
            max = 128L, min = 1L), Payload = structure(logical(0), 
            shape = "MaintenanceWindowLambdaPayload", type = "blob", 
            max = 4096L, sensitive = TRUE)), shape = "MaintenanceWindowLambdaParameters", 
            type = "structure")), shape = "MaintenanceWindowTaskInvocationParameters", 
            type = "structure"), Priority = structure(logical(0), 
            shape = "MaintenanceWindowTaskPriority", type = "integer", 
            min = 0L), MaxConcurrency = structure(logical(0), 
            shape = "MaxConcurrency", type = "string", max = 7L, 
            min = 1L, pattern = "^([1-9][0-9]*|[1-9][0-9]%|[1-9]%|100%)$"), 
        MaxErrors = structure(logical(0), shape = "MaxErrors", 
            type = "string", max = 7L, min = 1L, pattern = "^([1-9][0-9]*|[0]|[1-9][0-9]%|[0-9]%|100%)$"), 
        LoggingInfo = structure(list(S3BucketName = structure(logical(0), 
            shape = "S3BucketName", type = "string", max = 63L, 
            min = 3L), S3KeyPrefix = structure(logical(0), shape = "S3KeyPrefix", 
            type = "string", max = 500L), S3Region = structure(logical(0), 
            shape = "S3Region", type = "string", max = 20L, min = 3L)), 
            shape = "LoggingInfo", type = "structure"), Name = structure(logical(0), 
            shape = "MaintenanceWindowName", type = "string", 
            max = 128L, min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        Description = structure(logical(0), shape = "MaintenanceWindowDescription", 
            type = "string", max = 128L, min = 1L, sensitive = TRUE)), 
        shape = "GetMaintenanceWindowTaskResult", type = "structure")
    return(populate(args, shape))
}

get_parameter_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "PSParameterName", 
        type = "string", max = 2048L, min = 1L), WithDecryption = structure(logical(0), 
        shape = "Boolean", box = TRUE, type = "boolean")), shape = "GetParameterRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_parameter_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Parameter = structure(list(Name = structure(logical(0), 
        shape = "PSParameterName", type = "string", max = 2048L, 
        min = 1L), Type = structure(logical(0), shape = "ParameterType", 
        type = "string"), Value = structure(logical(0), shape = "PSParameterValue", 
        type = "string", max = 4096L, min = 1L), Version = structure(logical(0), 
        shape = "PSParameterVersion", type = "long"), Selector = structure(logical(0), 
        shape = "PSParameterSelector", type = "string", max = 128L, 
        min = 0L), SourceResult = structure(logical(0), shape = "String", 
        type = "string"), LastModifiedDate = structure(logical(0), 
        shape = "DateTime", type = "timestamp"), ARN = structure(logical(0), 
        shape = "String", type = "string")), shape = "Parameter", 
        type = "structure")), shape = "GetParameterResult", type = "structure")
    return(populate(args, shape))
}

get_parameter_history_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "PSParameterName", 
        type = "string", max = 2048L, min = 1L), WithDecryption = structure(logical(0), 
        shape = "Boolean", box = TRUE, type = "boolean"), MaxResults = structure(logical(0), 
        shape = "MaxResults", box = TRUE, type = "integer", max = 50L, 
        min = 1L), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "GetParameterHistoryRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_parameter_history_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Parameters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "PSParameterName", type = "string", max = 2048L, 
        min = 1L), Type = structure(logical(0), shape = "ParameterType", 
        type = "string"), KeyId = structure(logical(0), shape = "ParameterKeyId", 
        type = "string", max = 256L, min = 1L, pattern = "^([a-zA-Z0-9:/_-]+)$"), 
        LastModifiedDate = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), LastModifiedUser = structure(logical(0), 
            shape = "String", type = "string"), Description = structure(logical(0), 
            shape = "ParameterDescription", type = "string", 
            max = 1024L, min = 0L), Value = structure(logical(0), 
            shape = "PSParameterValue", type = "string", max = 4096L, 
            min = 1L), AllowedPattern = structure(logical(0), 
            shape = "AllowedPattern", type = "string", max = 1024L, 
            min = 0L), Version = structure(logical(0), shape = "PSParameterVersion", 
            type = "long"), Labels = structure(list(structure(logical(0), 
            shape = "ParameterLabel", type = "string", max = 100L, 
            min = 1L)), shape = "ParameterLabelList", type = "list", 
            max = 10L, min = 1L)), shape = "ParameterHistory", 
        type = "structure")), shape = "ParameterHistoryList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "GetParameterHistoryResult", 
        type = "structure")
    return(populate(args, shape))
}

get_parameters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Names = structure(list(structure(logical(0), 
        shape = "PSParameterName", type = "string", max = 2048L, 
        min = 1L)), shape = "ParameterNameList", type = "list", 
        max = 10L, min = 1L), WithDecryption = structure(logical(0), 
        shape = "Boolean", box = TRUE, type = "boolean")), shape = "GetParametersRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_parameters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Parameters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "PSParameterName", type = "string", max = 2048L, 
        min = 1L), Type = structure(logical(0), shape = "ParameterType", 
        type = "string"), Value = structure(logical(0), shape = "PSParameterValue", 
        type = "string", max = 4096L, min = 1L), Version = structure(logical(0), 
        shape = "PSParameterVersion", type = "long"), Selector = structure(logical(0), 
        shape = "PSParameterSelector", type = "string", max = 128L, 
        min = 0L), SourceResult = structure(logical(0), shape = "String", 
        type = "string"), LastModifiedDate = structure(logical(0), 
        shape = "DateTime", type = "timestamp"), ARN = structure(logical(0), 
        shape = "String", type = "string")), shape = "Parameter", 
        type = "structure")), shape = "ParameterList", type = "list"), 
        InvalidParameters = structure(list(structure(logical(0), 
            shape = "PSParameterName", type = "string", max = 2048L, 
            min = 1L)), shape = "ParameterNameList", type = "list", 
            max = 10L, min = 1L)), shape = "GetParametersResult", 
        type = "structure")
    return(populate(args, shape))
}

get_parameters_by_path_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Path = structure(logical(0), shape = "PSParameterName", 
        type = "string", max = 2048L, min = 1L), Recursive = structure(logical(0), 
        shape = "Boolean", box = TRUE, type = "boolean"), ParameterFilters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "ParameterStringFilterKey", type = "string", 
        max = 132L, min = 1L, pattern = "tag:.+|Name|Type|KeyId|Path|Label"), 
        Option = structure(logical(0), shape = "ParameterStringQueryOption", 
            type = "string", max = 10L, min = 1L), Values = structure(list(structure(logical(0), 
            shape = "ParameterStringFilterValue", type = "string", 
            max = 1024L, min = 1L)), shape = "ParameterStringFilterValueList", 
            type = "list", max = 50L, min = 1L)), shape = "ParameterStringFilter", 
        type = "structure")), shape = "ParameterStringFilterList", 
        type = "list"), WithDecryption = structure(logical(0), 
        shape = "Boolean", box = TRUE, type = "boolean"), MaxResults = structure(logical(0), 
        shape = "GetParametersByPathMaxResults", box = TRUE, 
        type = "integer", max = 10L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "GetParametersByPathRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_parameters_by_path_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Parameters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "PSParameterName", type = "string", max = 2048L, 
        min = 1L), Type = structure(logical(0), shape = "ParameterType", 
        type = "string"), Value = structure(logical(0), shape = "PSParameterValue", 
        type = "string", max = 4096L, min = 1L), Version = structure(logical(0), 
        shape = "PSParameterVersion", type = "long"), Selector = structure(logical(0), 
        shape = "PSParameterSelector", type = "string", max = 128L, 
        min = 0L), SourceResult = structure(logical(0), shape = "String", 
        type = "string"), LastModifiedDate = structure(logical(0), 
        shape = "DateTime", type = "timestamp"), ARN = structure(logical(0), 
        shape = "String", type = "string")), shape = "Parameter", 
        type = "structure")), shape = "ParameterList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "GetParametersByPathResult", 
        type = "structure")
    return(populate(args, shape))
}

get_patch_baseline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BaselineId = structure(logical(0), 
        shape = "BaselineId", type = "string", max = 128L, min = 20L, 
        pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$")), shape = "GetPatchBaselineRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_patch_baseline_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BaselineId = structure(logical(0), 
        shape = "BaselineId", type = "string", max = 128L, min = 20L, 
        pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$"), Name = structure(logical(0), 
        shape = "BaselineName", type = "string", max = 128L, 
        min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), OperatingSystem = structure(logical(0), 
        shape = "OperatingSystem", type = "string"), GlobalFilters = structure(list(PatchFilters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "PatchFilterKey", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "PatchFilterValue", type = "string", max = 64L, 
        min = 1L)), shape = "PatchFilterValueList", type = "list", 
        max = 20L, min = 1L)), shape = "PatchFilter", type = "structure")), 
        shape = "PatchFilterList", type = "list", max = 4L, min = 0L)), 
        shape = "PatchFilterGroup", type = "structure"), ApprovalRules = structure(list(PatchRules = structure(list(structure(list(PatchFilterGroup = structure(list(PatchFilters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "PatchFilterKey", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "PatchFilterValue", type = "string", max = 64L, 
        min = 1L)), shape = "PatchFilterValueList", type = "list", 
        max = 20L, min = 1L)), shape = "PatchFilter", type = "structure")), 
        shape = "PatchFilterList", type = "list", max = 4L, min = 0L)), 
        shape = "PatchFilterGroup", type = "structure"), ComplianceLevel = structure(logical(0), 
        shape = "PatchComplianceLevel", type = "string"), ApproveAfterDays = structure(logical(0), 
        shape = "ApproveAfterDays", box = TRUE, type = "integer", 
        max = 100L, min = 0L), EnableNonSecurity = structure(logical(0), 
        shape = "Boolean", box = TRUE, type = "boolean")), shape = "PatchRule", 
        type = "structure")), shape = "PatchRuleList", type = "list", 
        max = 10L, min = 0L)), shape = "PatchRuleGroup", type = "structure"), 
        ApprovedPatches = structure(list(structure(logical(0), 
            shape = "PatchId", type = "string", max = 100L, min = 1L)), 
            shape = "PatchIdList", type = "list", max = 50L, 
            min = 0L), ApprovedPatchesComplianceLevel = structure(logical(0), 
            shape = "PatchComplianceLevel", type = "string"), 
        ApprovedPatchesEnableNonSecurity = structure(logical(0), 
            shape = "Boolean", box = TRUE, type = "boolean"), 
        RejectedPatches = structure(list(structure(logical(0), 
            shape = "PatchId", type = "string", max = 100L, min = 1L)), 
            shape = "PatchIdList", type = "list", max = 50L, 
            min = 0L), RejectedPatchesAction = structure(logical(0), 
            shape = "PatchAction", type = "string"), PatchGroups = structure(list(structure(logical(0), 
            shape = "PatchGroup", type = "string", max = 256L, 
            min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "PatchGroupList", type = "list"), CreatedDate = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), ModifiedDate = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), Description = structure(logical(0), 
            shape = "BaselineDescription", type = "string", max = 1024L, 
            min = 1L), Sources = structure(list(structure(list(Name = structure(logical(0), 
            shape = "PatchSourceName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,50}$"), 
            Products = structure(list(structure(logical(0), shape = "PatchSourceProduct", 
                type = "string", max = 128L, min = 1L)), shape = "PatchSourceProductList", 
                type = "list", max = 20L, min = 1L), Configuration = structure(logical(0), 
                shape = "PatchSourceConfiguration", type = "string", 
                max = 512L, min = 1L, sensitive = TRUE)), shape = "PatchSource", 
            type = "structure")), shape = "PatchSourceList", 
            type = "list", max = 20L, min = 0L)), shape = "GetPatchBaselineResult", 
        type = "structure")
    return(populate(args, shape))
}

get_patch_baseline_for_patch_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PatchGroup = structure(logical(0), 
        shape = "PatchGroup", type = "string", max = 256L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), OperatingSystem = structure(logical(0), 
        shape = "OperatingSystem", type = "string")), shape = "GetPatchBaselineForPatchGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_patch_baseline_for_patch_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BaselineId = structure(logical(0), 
        shape = "BaselineId", type = "string", max = 128L, min = 20L, 
        pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$"), PatchGroup = structure(logical(0), 
        shape = "PatchGroup", type = "string", max = 256L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), OperatingSystem = structure(logical(0), 
        shape = "OperatingSystem", type = "string")), shape = "GetPatchBaselineForPatchGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

label_parameter_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "PSParameterName", 
        type = "string", max = 2048L, min = 1L), ParameterVersion = structure(logical(0), 
        shape = "PSParameterVersion", box = TRUE, type = "long"), 
        Labels = structure(list(structure(logical(0), shape = "ParameterLabel", 
            type = "string", max = 100L, min = 1L)), shape = "ParameterLabelList", 
            type = "list", max = 10L, min = 1L)), shape = "LabelParameterVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

label_parameter_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InvalidLabels = structure(list(structure(logical(0), 
        shape = "ParameterLabel", type = "string", max = 100L, 
        min = 1L)), shape = "ParameterLabelList", type = "list", 
        max = 10L, min = 1L)), shape = "LabelParameterVersionResult", 
        type = "structure")
    return(populate(args, shape))
}

list_association_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationId = structure(logical(0), 
        shape = "AssociationId", type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            box = TRUE, type = "integer", max = 50L, min = 1L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "ListAssociationVersionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_association_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationVersions = structure(list(structure(list(AssociationId = structure(logical(0), 
        shape = "AssociationId", type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), 
        AssociationVersion = structure(logical(0), shape = "AssociationVersion", 
            type = "string", pattern = "([$]LATEST)|([1-9][0-9]*)"), 
        CreatedDate = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), Name = structure(logical(0), 
            shape = "DocumentName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        Parameters = structure(list(structure(list(structure(logical(0), 
            shape = "ParameterValue", type = "string")), shape = "ParameterValueList", 
            type = "list")), shape = "Parameters", type = "map"), 
        Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        ScheduleExpression = structure(logical(0), shape = "ScheduleExpression", 
            type = "string", max = 256L, min = 1L), OutputLocation = structure(list(S3Location = structure(list(OutputS3Region = structure(logical(0), 
            shape = "S3Region", type = "string", max = 20L, min = 3L), 
            OutputS3BucketName = structure(logical(0), shape = "S3BucketName", 
                type = "string", max = 63L, min = 3L), OutputS3KeyPrefix = structure(logical(0), 
                shape = "S3KeyPrefix", type = "string", max = 500L)), 
            shape = "S3OutputLocation", type = "structure")), 
            shape = "InstanceAssociationOutputLocation", type = "structure"), 
        AssociationName = structure(logical(0), shape = "AssociationName", 
            type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$")), 
        shape = "AssociationVersionInfo", type = "structure")), 
        shape = "AssociationVersionList", type = "list", min = 1L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "ListAssociationVersionsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_associations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationFilterList = structure(list(structure(list(Key = structure(logical(0), 
        shape = "AssociationFilterKey", type = "string", locationName = "key"), 
        Value = structure(logical(0), shape = "AssociationFilterValue", 
            type = "string", min = 1L, locationName = "value")), 
        shape = "AssociationFilter", type = "structure")), shape = "AssociationFilterList", 
        type = "list", min = 1L), MaxResults = structure(logical(0), 
        shape = "MaxResults", box = TRUE, type = "integer", max = 50L, 
        min = 1L), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListAssociationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_associations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Associations = structure(list(structure(list(Name = structure(logical(0), 
        shape = "DocumentName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        AssociationId = structure(logical(0), shape = "AssociationId", 
            type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), 
        AssociationVersion = structure(logical(0), shape = "AssociationVersion", 
            type = "string", pattern = "([$]LATEST)|([1-9][0-9]*)"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        LastExecutionDate = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), Overview = structure(list(Status = structure(logical(0), 
            shape = "StatusName", type = "string"), DetailedStatus = structure(logical(0), 
            shape = "StatusName", type = "string"), AssociationStatusAggregatedCount = structure(list(structure(logical(0), 
            shape = "InstanceCount", type = "integer")), shape = "AssociationStatusAggregatedCount", 
            type = "map")), shape = "AssociationOverview", type = "structure"), 
        ScheduleExpression = structure(logical(0), shape = "ScheduleExpression", 
            type = "string", max = 256L, min = 1L), AssociationName = structure(logical(0), 
            shape = "AssociationName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$")), 
        shape = "Association", type = "structure")), shape = "AssociationList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListAssociationsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_command_invocations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CommandId = structure(logical(0), 
        shape = "CommandId", type = "string", max = 36L, min = 36L), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        MaxResults = structure(logical(0), shape = "CommandMaxResults", 
            box = TRUE, type = "integer", max = 50L, min = 1L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string"), Filters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "CommandFilterKey", type = "string", locationName = "key"), 
            Value = structure(logical(0), shape = "CommandFilterValue", 
                type = "string", max = 128L, min = 1L, locationName = "value")), 
            shape = "CommandFilter", type = "structure")), shape = "CommandFilterList", 
            type = "list", max = 5L, min = 1L), Details = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "ListCommandInvocationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_command_invocations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CommandInvocations = structure(list(structure(list(CommandId = structure(logical(0), 
        shape = "CommandId", type = "string", max = 36L, min = 36L), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        InstanceName = structure(logical(0), shape = "InstanceTagName", 
            type = "string", max = 255L), Comment = structure(logical(0), 
            shape = "Comment", type = "string", max = 100L), 
        DocumentName = structure(logical(0), shape = "DocumentName", 
            type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        RequestedDateTime = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), Status = structure(logical(0), 
            shape = "CommandInvocationStatus", type = "string"), 
        StatusDetails = structure(logical(0), shape = "StatusDetails", 
            type = "string", max = 100L, min = 0L), TraceOutput = structure(logical(0), 
            shape = "InvocationTraceOutput", type = "string", 
            max = 2500L), StandardOutputUrl = structure(logical(0), 
            shape = "Url", type = "string"), StandardErrorUrl = structure(logical(0), 
            shape = "Url", type = "string"), CommandPlugins = structure(list(structure(list(Name = structure(logical(0), 
            shape = "CommandPluginName", type = "string", min = 4L), 
            Status = structure(logical(0), shape = "CommandPluginStatus", 
                type = "string"), StatusDetails = structure(logical(0), 
                shape = "StatusDetails", type = "string", max = 100L, 
                min = 0L), ResponseCode = structure(logical(0), 
                shape = "ResponseCode", type = "integer"), ResponseStartDateTime = structure(logical(0), 
                shape = "DateTime", type = "timestamp"), ResponseFinishDateTime = structure(logical(0), 
                shape = "DateTime", type = "timestamp"), Output = structure(logical(0), 
                shape = "CommandPluginOutput", type = "string", 
                max = 2500L), StandardOutputUrl = structure(logical(0), 
                shape = "Url", type = "string"), StandardErrorUrl = structure(logical(0), 
                shape = "Url", type = "string"), OutputS3Region = structure(logical(0), 
                shape = "S3Region", type = "string", max = 20L, 
                min = 3L), OutputS3BucketName = structure(logical(0), 
                shape = "S3BucketName", type = "string", max = 63L, 
                min = 3L), OutputS3KeyPrefix = structure(logical(0), 
                shape = "S3KeyPrefix", type = "string", max = 500L)), 
            shape = "CommandPlugin", type = "structure")), shape = "CommandPluginList", 
            type = "list"), ServiceRole = structure(logical(0), 
            shape = "ServiceRole", type = "string"), NotificationConfig = structure(list(NotificationArn = structure(logical(0), 
            shape = "NotificationArn", type = "string"), NotificationEvents = structure(list(structure(logical(0), 
            shape = "NotificationEvent", type = "string")), shape = "NotificationEventList", 
            type = "list"), NotificationType = structure(logical(0), 
            shape = "NotificationType", type = "string")), shape = "NotificationConfig", 
            type = "structure"), CloudWatchOutputConfig = structure(list(CloudWatchLogGroupName = structure(logical(0), 
            shape = "CloudWatchLogGroupName", type = "string", 
            max = 512L, min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+"), 
            CloudWatchOutputEnabled = structure(logical(0), shape = "CloudWatchOutputEnabled", 
                type = "boolean")), shape = "CloudWatchOutputConfig", 
            type = "structure")), shape = "CommandInvocation", 
        type = "structure")), shape = "CommandInvocationList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListCommandInvocationsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_commands_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CommandId = structure(logical(0), 
        shape = "CommandId", type = "string", max = 36L, min = 36L), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        MaxResults = structure(logical(0), shape = "CommandMaxResults", 
            box = TRUE, type = "integer", max = 50L, min = 1L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string"), Filters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "CommandFilterKey", type = "string", locationName = "key"), 
            Value = structure(logical(0), shape = "CommandFilterValue", 
                type = "string", max = 128L, min = 1L, locationName = "value")), 
            shape = "CommandFilter", type = "structure")), shape = "CommandFilterList", 
            type = "list", max = 5L, min = 1L)), shape = "ListCommandsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_commands_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Commands = structure(list(structure(list(CommandId = structure(logical(0), 
        shape = "CommandId", type = "string", max = 36L, min = 36L), 
        DocumentName = structure(logical(0), shape = "DocumentName", 
            type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        Comment = structure(logical(0), shape = "Comment", type = "string", 
            max = 100L), ExpiresAfter = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), Parameters = structure(list(structure(list(structure(logical(0), 
            shape = "ParameterValue", type = "string")), shape = "ParameterValueList", 
            type = "list")), shape = "Parameters", type = "map"), 
        InstanceIds = structure(list(structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)")), 
            shape = "InstanceIdList", type = "list", max = 50L, 
            min = 0L), Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        RequestedDateTime = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), Status = structure(logical(0), 
            shape = "CommandStatus", type = "string"), StatusDetails = structure(logical(0), 
            shape = "StatusDetails", type = "string", max = 100L, 
            min = 0L), OutputS3Region = structure(logical(0), 
            shape = "S3Region", type = "string", max = 20L, min = 3L), 
        OutputS3BucketName = structure(logical(0), shape = "S3BucketName", 
            type = "string", max = 63L, min = 3L), OutputS3KeyPrefix = structure(logical(0), 
            shape = "S3KeyPrefix", type = "string", max = 500L), 
        MaxConcurrency = structure(logical(0), shape = "MaxConcurrency", 
            type = "string", max = 7L, min = 1L, pattern = "^([1-9][0-9]*|[1-9][0-9]%|[1-9]%|100%)$"), 
        MaxErrors = structure(logical(0), shape = "MaxErrors", 
            type = "string", max = 7L, min = 1L, pattern = "^([1-9][0-9]*|[0]|[1-9][0-9]%|[0-9]%|100%)$"), 
        TargetCount = structure(logical(0), shape = "TargetCount", 
            type = "integer"), CompletedCount = structure(logical(0), 
            shape = "CompletedCount", type = "integer"), ErrorCount = structure(logical(0), 
            shape = "ErrorCount", type = "integer"), DeliveryTimedOutCount = structure(logical(0), 
            shape = "DeliveryTimedOutCount", type = "integer"), 
        ServiceRole = structure(logical(0), shape = "ServiceRole", 
            type = "string"), NotificationConfig = structure(list(NotificationArn = structure(logical(0), 
            shape = "NotificationArn", type = "string"), NotificationEvents = structure(list(structure(logical(0), 
            shape = "NotificationEvent", type = "string")), shape = "NotificationEventList", 
            type = "list"), NotificationType = structure(logical(0), 
            shape = "NotificationType", type = "string")), shape = "NotificationConfig", 
            type = "structure"), CloudWatchOutputConfig = structure(list(CloudWatchLogGroupName = structure(logical(0), 
            shape = "CloudWatchLogGroupName", type = "string", 
            max = 512L, min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+"), 
            CloudWatchOutputEnabled = structure(logical(0), shape = "CloudWatchOutputEnabled", 
                type = "boolean")), shape = "CloudWatchOutputConfig", 
            type = "structure")), shape = "Command", type = "structure")), 
        shape = "CommandList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "ListCommandsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_compliance_items_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "ComplianceStringFilterKey", type = "string", 
        max = 200L, min = 1L), Values = structure(list(structure(logical(0), 
        shape = "ComplianceFilterValue", type = "string")), shape = "ComplianceStringFilterValueList", 
        type = "list", max = 20L, min = 1L), Type = structure(logical(0), 
        shape = "ComplianceQueryOperatorType", type = "string")), 
        shape = "ComplianceStringFilter", type = "structure")), 
        shape = "ComplianceStringFilterList", type = "list"), 
        ResourceIds = structure(list(structure(logical(0), shape = "ComplianceResourceId", 
            type = "string", max = 100L, min = 1L)), shape = "ComplianceResourceIdList", 
            type = "list", min = 1L), ResourceTypes = structure(list(structure(logical(0), 
            shape = "ComplianceResourceType", type = "string", 
            max = 50L, min = 1L)), shape = "ComplianceResourceTypeList", 
            type = "list", min = 1L), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", box = TRUE, type = "integer", 
            max = 50L, min = 1L)), shape = "ListComplianceItemsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_compliance_items_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ComplianceItems = structure(list(structure(list(ComplianceType = structure(logical(0), 
        shape = "ComplianceTypeName", type = "string", max = 100L, 
        min = 1L, pattern = "[A-Za-z0-9_\\-]\\w+|Custom:[a-zA-Z0-9_\\-]\\w+"), 
        ResourceType = structure(logical(0), shape = "ComplianceResourceType", 
            type = "string", max = 50L, min = 1L), ResourceId = structure(logical(0), 
            shape = "ComplianceResourceId", type = "string", 
            max = 100L, min = 1L), Id = structure(logical(0), 
            shape = "ComplianceItemId", type = "string", max = 100L, 
            min = 1L), Title = structure(logical(0), shape = "ComplianceItemTitle", 
            type = "string", max = 500L), Status = structure(logical(0), 
            shape = "ComplianceStatus", type = "string"), Severity = structure(logical(0), 
            shape = "ComplianceSeverity", type = "string"), ExecutionSummary = structure(list(ExecutionTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), ExecutionId = structure(logical(0), 
            shape = "ComplianceExecutionId", type = "string", 
            max = 100L), ExecutionType = structure(logical(0), 
            shape = "ComplianceExecutionType", type = "string", 
            max = 50L)), shape = "ComplianceExecutionSummary", 
            type = "structure"), Details = structure(list(structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 4096L, 
            min = 0L)), shape = "ComplianceItemDetails", type = "map")), 
        shape = "ComplianceItem", type = "structure")), shape = "ComplianceItemList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListComplianceItemsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_compliance_summaries_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "ComplianceStringFilterKey", type = "string", 
        max = 200L, min = 1L), Values = structure(list(structure(logical(0), 
        shape = "ComplianceFilterValue", type = "string")), shape = "ComplianceStringFilterValueList", 
        type = "list", max = 20L, min = 1L), Type = structure(logical(0), 
        shape = "ComplianceQueryOperatorType", type = "string")), 
        shape = "ComplianceStringFilter", type = "structure")), 
        shape = "ComplianceStringFilterList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", box = TRUE, type = "integer", 
            max = 50L, min = 1L)), shape = "ListComplianceSummariesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_compliance_summaries_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ComplianceSummaryItems = structure(list(structure(list(ComplianceType = structure(logical(0), 
        shape = "ComplianceTypeName", type = "string", max = 100L, 
        min = 1L, pattern = "[A-Za-z0-9_\\-]\\w+|Custom:[a-zA-Z0-9_\\-]\\w+"), 
        CompliantSummary = structure(list(CompliantCount = structure(logical(0), 
            shape = "ComplianceSummaryCount", type = "integer"), 
            SeveritySummary = structure(list(CriticalCount = structure(logical(0), 
                shape = "ComplianceSummaryCount", type = "integer"), 
                HighCount = structure(logical(0), shape = "ComplianceSummaryCount", 
                  type = "integer"), MediumCount = structure(logical(0), 
                  shape = "ComplianceSummaryCount", type = "integer"), 
                LowCount = structure(logical(0), shape = "ComplianceSummaryCount", 
                  type = "integer"), InformationalCount = structure(logical(0), 
                  shape = "ComplianceSummaryCount", type = "integer"), 
                UnspecifiedCount = structure(logical(0), shape = "ComplianceSummaryCount", 
                  type = "integer")), shape = "SeveritySummary", 
                type = "structure")), shape = "CompliantSummary", 
            type = "structure"), NonCompliantSummary = structure(list(NonCompliantCount = structure(logical(0), 
            shape = "ComplianceSummaryCount", type = "integer"), 
            SeveritySummary = structure(list(CriticalCount = structure(logical(0), 
                shape = "ComplianceSummaryCount", type = "integer"), 
                HighCount = structure(logical(0), shape = "ComplianceSummaryCount", 
                  type = "integer"), MediumCount = structure(logical(0), 
                  shape = "ComplianceSummaryCount", type = "integer"), 
                LowCount = structure(logical(0), shape = "ComplianceSummaryCount", 
                  type = "integer"), InformationalCount = structure(logical(0), 
                  shape = "ComplianceSummaryCount", type = "integer"), 
                UnspecifiedCount = structure(logical(0), shape = "ComplianceSummaryCount", 
                  type = "integer")), shape = "SeveritySummary", 
                type = "structure")), shape = "NonCompliantSummary", 
            type = "structure")), shape = "ComplianceSummaryItem", 
        type = "structure")), shape = "ComplianceSummaryItemList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListComplianceSummariesResult", 
        type = "structure")
    return(populate(args, shape))
}

list_document_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "DocumentName", 
        type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            box = TRUE, type = "integer", max = 50L, min = 1L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "ListDocumentVersionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_document_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DocumentVersions = structure(list(structure(list(Name = structure(logical(0), 
        shape = "DocumentName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        CreatedDate = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), IsDefaultVersion = structure(logical(0), 
            shape = "Boolean", type = "boolean"), DocumentFormat = structure(logical(0), 
            shape = "DocumentFormat", type = "string")), shape = "DocumentVersionInfo", 
        type = "structure")), shape = "DocumentVersionList", 
        type = "list", min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "ListDocumentVersionsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_documents_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DocumentFilterList = structure(list(structure(list(Key = structure(logical(0), 
        shape = "DocumentFilterKey", type = "string", locationName = "key"), 
        Value = structure(logical(0), shape = "DocumentFilterValue", 
            type = "string", min = 1L, locationName = "value")), 
        shape = "DocumentFilter", type = "structure")), shape = "DocumentFilterList", 
        type = "list", min = 1L), Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "DocumentKeyValuesFilterKey", type = "string", 
        max = 128L, min = 1L), Values = structure(list(structure(logical(0), 
        shape = "DocumentKeyValuesFilterValue", type = "string", 
        max = 256L, min = 1L)), shape = "DocumentKeyValuesFilterValues", 
        type = "list")), shape = "DocumentKeyValuesFilter", type = "structure")), 
        shape = "DocumentKeyValuesFilterList", type = "list", 
        max = 6L, min = 0L), MaxResults = structure(logical(0), 
        shape = "MaxResults", box = TRUE, type = "integer", max = 50L, 
        min = 1L), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListDocumentsRequest", type = "structure")
    return(populate(args, shape))
}

list_documents_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DocumentIdentifiers = structure(list(structure(list(Name = structure(logical(0), 
        shape = "DocumentARN", type = "string", pattern = "^[a-zA-Z0-9_\\-.:/]{3,128}$"), 
        Owner = structure(logical(0), shape = "DocumentOwner", 
            type = "string"), PlatformTypes = structure(list(structure(logical(0), 
            shape = "PlatformType", type = "string")), shape = "PlatformTypeList", 
            type = "list"), DocumentVersion = structure(logical(0), 
            shape = "DocumentVersion", type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        DocumentType = structure(logical(0), shape = "DocumentType", 
            type = "string"), SchemaVersion = structure(logical(0), 
            shape = "DocumentSchemaVersion", type = "string", 
            pattern = "([0-9]+)\\.([0-9]+)"), DocumentFormat = structure(logical(0), 
            shape = "DocumentFormat", type = "string"), TargetType = structure(logical(0), 
            shape = "TargetType", type = "string", max = 200L, 
            pattern = "^\\/[\\w\\.\\-\\:\\/]*$"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^(?!^(?i)aws:)(?=^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$).*$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list")), shape = "DocumentIdentifier", type = "structure")), 
        shape = "DocumentIdentifierList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "ListDocumentsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_inventory_entries_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        TypeName = structure(logical(0), shape = "InventoryItemTypeName", 
            type = "string", max = 100L, min = 1L, pattern = "^(AWS|Custom):.*$"), 
        Filters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "InventoryFilterKey", type = "string", max = 200L, 
            min = 1L), Values = structure(list(structure(logical(0), 
            shape = "InventoryFilterValue", type = "string")), 
            shape = "InventoryFilterValueList", type = "list", 
            max = 40L, min = 1L), Type = structure(logical(0), 
            shape = "InventoryQueryOperatorType", type = "string")), 
            shape = "InventoryFilter", type = "structure")), 
            shape = "InventoryFilterList", type = "list", max = 5L, 
            min = 1L), NextToken = structure(logical(0), shape = "NextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", box = TRUE, type = "integer", 
            max = 50L, min = 1L)), shape = "ListInventoryEntriesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_inventory_entries_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TypeName = structure(logical(0), 
        shape = "InventoryItemTypeName", type = "string", max = 100L, 
        min = 1L, pattern = "^(AWS|Custom):.*$"), InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        SchemaVersion = structure(logical(0), shape = "InventoryItemSchemaVersion", 
            type = "string", pattern = "^([0-9]{1,6})(\\.[0-9]{1,6})$"), 
        CaptureTime = structure(logical(0), shape = "InventoryItemCaptureTime", 
            type = "string", pattern = "^(20)[0-9][0-9]-(0[1-9]|1[012])-([12][0-9]|3[01]|0[1-9])(T)(2[0-3]|[0-1][0-9])(:[0-5][0-9])(:[0-5][0-9])(Z)$"), 
        Entries = structure(list(structure(list(structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 4096L, 
            min = 0L)), shape = "InventoryItemEntry", type = "map", 
            max = 50L, min = 0L)), shape = "InventoryItemEntryList", 
            type = "list", max = 10000L, min = 0L), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string")), shape = "ListInventoryEntriesResult", 
        type = "structure")
    return(populate(args, shape))
}

list_resource_compliance_summaries_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "ComplianceStringFilterKey", type = "string", 
        max = 200L, min = 1L), Values = structure(list(structure(logical(0), 
        shape = "ComplianceFilterValue", type = "string")), shape = "ComplianceStringFilterValueList", 
        type = "list", max = 20L, min = 1L), Type = structure(logical(0), 
        shape = "ComplianceQueryOperatorType", type = "string")), 
        shape = "ComplianceStringFilter", type = "structure")), 
        shape = "ComplianceStringFilterList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", box = TRUE, type = "integer", 
            max = 50L, min = 1L)), shape = "ListResourceComplianceSummariesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_resource_compliance_summaries_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceComplianceSummaryItems = structure(list(structure(list(ComplianceType = structure(logical(0), 
        shape = "ComplianceTypeName", type = "string", max = 100L, 
        min = 1L, pattern = "[A-Za-z0-9_\\-]\\w+|Custom:[a-zA-Z0-9_\\-]\\w+"), 
        ResourceType = structure(logical(0), shape = "ComplianceResourceType", 
            type = "string", max = 50L, min = 1L), ResourceId = structure(logical(0), 
            shape = "ComplianceResourceId", type = "string", 
            max = 100L, min = 1L), Status = structure(logical(0), 
            shape = "ComplianceStatus", type = "string"), OverallSeverity = structure(logical(0), 
            shape = "ComplianceSeverity", type = "string"), ExecutionSummary = structure(list(ExecutionTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), ExecutionId = structure(logical(0), 
            shape = "ComplianceExecutionId", type = "string", 
            max = 100L), ExecutionType = structure(logical(0), 
            shape = "ComplianceExecutionType", type = "string", 
            max = 50L)), shape = "ComplianceExecutionSummary", 
            type = "structure"), CompliantSummary = structure(list(CompliantCount = structure(logical(0), 
            shape = "ComplianceSummaryCount", type = "integer"), 
            SeveritySummary = structure(list(CriticalCount = structure(logical(0), 
                shape = "ComplianceSummaryCount", type = "integer"), 
                HighCount = structure(logical(0), shape = "ComplianceSummaryCount", 
                  type = "integer"), MediumCount = structure(logical(0), 
                  shape = "ComplianceSummaryCount", type = "integer"), 
                LowCount = structure(logical(0), shape = "ComplianceSummaryCount", 
                  type = "integer"), InformationalCount = structure(logical(0), 
                  shape = "ComplianceSummaryCount", type = "integer"), 
                UnspecifiedCount = structure(logical(0), shape = "ComplianceSummaryCount", 
                  type = "integer")), shape = "SeveritySummary", 
                type = "structure")), shape = "CompliantSummary", 
            type = "structure"), NonCompliantSummary = structure(list(NonCompliantCount = structure(logical(0), 
            shape = "ComplianceSummaryCount", type = "integer"), 
            SeveritySummary = structure(list(CriticalCount = structure(logical(0), 
                shape = "ComplianceSummaryCount", type = "integer"), 
                HighCount = structure(logical(0), shape = "ComplianceSummaryCount", 
                  type = "integer"), MediumCount = structure(logical(0), 
                  shape = "ComplianceSummaryCount", type = "integer"), 
                LowCount = structure(logical(0), shape = "ComplianceSummaryCount", 
                  type = "integer"), InformationalCount = structure(logical(0), 
                  shape = "ComplianceSummaryCount", type = "integer"), 
                UnspecifiedCount = structure(logical(0), shape = "ComplianceSummaryCount", 
                  type = "integer")), shape = "SeveritySummary", 
                type = "structure")), shape = "NonCompliantSummary", 
            type = "structure")), shape = "ResourceComplianceSummaryItem", 
        type = "structure")), shape = "ResourceComplianceSummaryItemList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListResourceComplianceSummariesResult", 
        type = "structure")
    return(populate(args, shape))
}

list_resource_data_sync_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", box = TRUE, type = "integer", max = 50L, 
        min = 1L)), shape = "ListResourceDataSyncRequest", type = "structure")
    return(populate(args, shape))
}

list_resource_data_sync_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceDataSyncItems = structure(list(structure(list(SyncName = structure(logical(0), 
        shape = "ResourceDataSyncName", type = "string", max = 64L, 
        min = 1L), S3Destination = structure(list(BucketName = structure(logical(0), 
        shape = "ResourceDataSyncS3BucketName", type = "string", 
        max = 2048L, min = 1L), Prefix = structure(logical(0), 
        shape = "ResourceDataSyncS3Prefix", type = "string", 
        max = 256L, min = 1L), SyncFormat = structure(logical(0), 
        shape = "ResourceDataSyncS3Format", type = "string"), 
        Region = structure(logical(0), shape = "ResourceDataSyncS3Region", 
            type = "string", max = 64L, min = 1L), AWSKMSKeyARN = structure(logical(0), 
            shape = "ResourceDataSyncAWSKMSKeyARN", type = "string", 
            max = 512L, min = 1L, pattern = "arn:.*")), shape = "ResourceDataSyncS3Destination", 
        type = "structure"), LastSyncTime = structure(logical(0), 
        shape = "LastResourceDataSyncTime", type = "timestamp"), 
        LastSuccessfulSyncTime = structure(logical(0), shape = "LastSuccessfulResourceDataSyncTime", 
            type = "timestamp"), LastStatus = structure(logical(0), 
            shape = "LastResourceDataSyncStatus", type = "string"), 
        SyncCreatedTime = structure(logical(0), shape = "ResourceDataSyncCreatedTime", 
            type = "timestamp"), LastSyncStatusMessage = structure(logical(0), 
            shape = "LastResourceDataSyncMessage", type = "string")), 
        shape = "ResourceDataSyncItem", type = "structure")), 
        shape = "ResourceDataSyncItemList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "ListResourceDataSyncResult", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceType = structure(logical(0), 
        shape = "ResourceTypeForTagging", type = "string"), ResourceId = structure(logical(0), 
        shape = "ResourceId", type = "string")), shape = "ListTagsForResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TagList = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "^(?!^(?i)aws:)(?=^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$).*$"), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
        shape = "Tag", type = "structure")), shape = "TagList", 
        type = "list")), shape = "ListTagsForResourceResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_document_permission_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "DocumentName", 
        type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        PermissionType = structure(logical(0), shape = "DocumentPermissionType", 
            type = "string"), AccountIdsToAdd = structure(list(structure(logical(0), 
            shape = "AccountId", type = "string", pattern = "(?i)all|[0-9]{12}")), 
            shape = "AccountIdList", type = "list", max = 20L), 
        AccountIdsToRemove = structure(list(structure(logical(0), 
            shape = "AccountId", type = "string", pattern = "(?i)all|[0-9]{12}")), 
            shape = "AccountIdList", type = "list", max = 20L)), 
        shape = "ModifyDocumentPermissionRequest", type = "structure")
    return(populate(args, shape))
}

modify_document_permission_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ModifyDocumentPermissionResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_compliance_items_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "ComplianceResourceId", type = "string", max = 100L, 
        min = 1L), ResourceType = structure(logical(0), shape = "ComplianceResourceType", 
        type = "string", max = 50L, min = 1L), ComplianceType = structure(logical(0), 
        shape = "ComplianceTypeName", type = "string", max = 100L, 
        min = 1L, pattern = "[A-Za-z0-9_\\-]\\w+|Custom:[a-zA-Z0-9_\\-]\\w+"), 
        ExecutionSummary = structure(list(ExecutionTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), ExecutionId = structure(logical(0), 
            shape = "ComplianceExecutionId", type = "string", 
            max = 100L), ExecutionType = structure(logical(0), 
            shape = "ComplianceExecutionType", type = "string", 
            max = 50L)), shape = "ComplianceExecutionSummary", 
            type = "structure"), Items = structure(list(structure(list(Id = structure(logical(0), 
            shape = "ComplianceItemId", type = "string", max = 100L, 
            min = 1L), Title = structure(logical(0), shape = "ComplianceItemTitle", 
            type = "string", max = 500L), Severity = structure(logical(0), 
            shape = "ComplianceSeverity", type = "string"), Status = structure(logical(0), 
            shape = "ComplianceStatus", type = "string"), Details = structure(list(structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 4096L, 
            min = 0L)), shape = "ComplianceItemDetails", type = "map")), 
            shape = "ComplianceItemEntry", type = "structure")), 
            shape = "ComplianceItemEntryList", type = "list", 
            max = 10000L, min = 0L), ItemContentHash = structure(logical(0), 
            shape = "ComplianceItemContentHash", type = "string", 
            max = 256L)), shape = "PutComplianceItemsRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_compliance_items_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "PutComplianceItemsResult", 
        type = "structure")
    return(populate(args, shape))
}

put_inventory_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        Items = structure(list(structure(list(TypeName = structure(logical(0), 
            shape = "InventoryItemTypeName", type = "string", 
            max = 100L, min = 1L, pattern = "^(AWS|Custom):.*$"), 
            SchemaVersion = structure(logical(0), shape = "InventoryItemSchemaVersion", 
                type = "string", pattern = "^([0-9]{1,6})(\\.[0-9]{1,6})$"), 
            CaptureTime = structure(logical(0), shape = "InventoryItemCaptureTime", 
                type = "string", pattern = "^(20)[0-9][0-9]-(0[1-9]|1[012])-([12][0-9]|3[01]|0[1-9])(T)(2[0-3]|[0-1][0-9])(:[0-5][0-9])(:[0-5][0-9])(Z)$"), 
            ContentHash = structure(logical(0), shape = "InventoryItemContentHash", 
                type = "string", max = 256L), Content = structure(list(structure(list(structure(logical(0), 
                shape = "AttributeValue", type = "string", max = 4096L, 
                min = 0L)), shape = "InventoryItemEntry", type = "map", 
                max = 50L, min = 0L)), shape = "InventoryItemEntryList", 
                type = "list", max = 10000L, min = 0L), Context = structure(list(structure(logical(0), 
                shape = "AttributeValue", type = "string", max = 4096L, 
                min = 0L)), shape = "InventoryItemContentContext", 
                type = "map", max = 50L, min = 0L)), shape = "InventoryItem", 
            type = "structure")), shape = "InventoryItemList", 
            type = "list", max = 30L, min = 1L)), shape = "PutInventoryRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_inventory_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Message = structure(logical(0), shape = "PutInventoryMessage", 
        type = "string")), shape = "PutInventoryResult", type = "structure")
    return(populate(args, shape))
}

put_parameter_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "PSParameterName", 
        type = "string", max = 2048L, min = 1L), Description = structure(logical(0), 
        shape = "ParameterDescription", type = "string", max = 1024L, 
        min = 0L), Value = structure(logical(0), shape = "PSParameterValue", 
        type = "string", max = 4096L, min = 1L), Type = structure(logical(0), 
        shape = "ParameterType", type = "string"), KeyId = structure(logical(0), 
        shape = "ParameterKeyId", type = "string", max = 256L, 
        min = 1L, pattern = "^([a-zA-Z0-9:/_-]+)$"), Overwrite = structure(logical(0), 
        shape = "Boolean", box = TRUE, type = "boolean"), AllowedPattern = structure(logical(0), 
        shape = "AllowedPattern", type = "string", max = 1024L, 
        min = 0L)), shape = "PutParameterRequest", type = "structure")
    return(populate(args, shape))
}

put_parameter_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Version = structure(logical(0), shape = "PSParameterVersion", 
        type = "long")), shape = "PutParameterResult", type = "structure")
    return(populate(args, shape))
}

register_default_patch_baseline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BaselineId = structure(logical(0), 
        shape = "BaselineId", type = "string", max = 128L, min = 20L, 
        pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$")), shape = "RegisterDefaultPatchBaselineRequest", 
        type = "structure")
    return(populate(args, shape))
}

register_default_patch_baseline_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BaselineId = structure(logical(0), 
        shape = "BaselineId", type = "string", max = 128L, min = 20L, 
        pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$")), shape = "RegisterDefaultPatchBaselineResult", 
        type = "structure")
    return(populate(args, shape))
}

register_patch_baseline_for_patch_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BaselineId = structure(logical(0), 
        shape = "BaselineId", type = "string", max = 128L, min = 20L, 
        pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$"), PatchGroup = structure(logical(0), 
        shape = "PatchGroup", type = "string", max = 256L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "RegisterPatchBaselineForPatchGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

register_patch_baseline_for_patch_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BaselineId = structure(logical(0), 
        shape = "BaselineId", type = "string", max = 128L, min = 20L, 
        pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$"), PatchGroup = structure(logical(0), 
        shape = "PatchGroup", type = "string", max = 256L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "RegisterPatchBaselineForPatchGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

register_target_with_maintenance_window_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), ResourceType = structure(logical(0), 
        shape = "MaintenanceWindowResourceType", type = "string"), 
        Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        OwnerInformation = structure(logical(0), shape = "OwnerInformation", 
            type = "string", max = 128L, min = 1L, sensitive = TRUE), 
        Name = structure(logical(0), shape = "MaintenanceWindowName", 
            type = "string", max = 128L, min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        Description = structure(logical(0), shape = "MaintenanceWindowDescription", 
            type = "string", max = 128L, min = 1L, sensitive = TRUE), 
        ClientToken = structure(logical(0), shape = "ClientToken", 
            idempotencyToken = TRUE, type = "string", max = 64L, 
            min = 1L)), shape = "RegisterTargetWithMaintenanceWindowRequest", 
        type = "structure")
    return(populate(args, shape))
}

register_target_with_maintenance_window_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowTargetId = structure(logical(0), 
        shape = "MaintenanceWindowTargetId", type = "string", 
        max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$")), 
        shape = "RegisterTargetWithMaintenanceWindowResult", 
        type = "structure")
    return(populate(args, shape))
}

register_task_with_maintenance_window_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), Targets = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TargetKey", type = "string", max = 128L, min = 1L, 
        pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), Values = structure(list(structure(logical(0), 
        shape = "TargetValue", type = "string")), shape = "TargetValues", 
        type = "list", max = 50L, min = 0L)), shape = "Target", 
        type = "structure")), shape = "Targets", type = "list", 
        max = 5L, min = 0L), TaskArn = structure(logical(0), 
        shape = "MaintenanceWindowTaskArn", type = "string", 
        max = 1600L, min = 1L), ServiceRoleArn = structure(logical(0), 
        shape = "ServiceRole", type = "string"), TaskType = structure(logical(0), 
        shape = "MaintenanceWindowTaskType", type = "string"), 
        TaskParameters = structure(list(structure(list(Values = structure(list(structure(logical(0), 
            shape = "MaintenanceWindowTaskParameterValue", type = "string", 
            max = 255L, min = 1L, sensitive = TRUE)), shape = "MaintenanceWindowTaskParameterValueList", 
            type = "list", sensitive = TRUE)), shape = "MaintenanceWindowTaskParameterValueExpression", 
            type = "structure", sensitive = TRUE)), shape = "MaintenanceWindowTaskParameters", 
            type = "map", sensitive = TRUE), TaskInvocationParameters = structure(list(RunCommand = structure(list(Comment = structure(logical(0), 
            shape = "Comment", type = "string", max = 100L), 
            DocumentHash = structure(logical(0), shape = "DocumentHash", 
                type = "string", max = 256L), DocumentHashType = structure(logical(0), 
                shape = "DocumentHashType", type = "string"), 
            NotificationConfig = structure(list(NotificationArn = structure(logical(0), 
                shape = "NotificationArn", type = "string"), 
                NotificationEvents = structure(list(structure(logical(0), 
                  shape = "NotificationEvent", type = "string")), 
                  shape = "NotificationEventList", type = "list"), 
                NotificationType = structure(logical(0), shape = "NotificationType", 
                  type = "string")), shape = "NotificationConfig", 
                type = "structure"), OutputS3BucketName = structure(logical(0), 
                shape = "S3BucketName", type = "string", max = 63L, 
                min = 3L), OutputS3KeyPrefix = structure(logical(0), 
                shape = "S3KeyPrefix", type = "string", max = 500L), 
            Parameters = structure(list(structure(list(structure(logical(0), 
                shape = "ParameterValue", type = "string")), 
                shape = "ParameterValueList", type = "list")), 
                shape = "Parameters", type = "map"), ServiceRoleArn = structure(logical(0), 
                shape = "ServiceRole", type = "string"), TimeoutSeconds = structure(logical(0), 
                shape = "TimeoutSeconds", box = TRUE, type = "integer", 
                max = 2592000L, min = 30L)), shape = "MaintenanceWindowRunCommandParameters", 
            type = "structure"), Automation = structure(list(DocumentVersion = structure(logical(0), 
            shape = "DocumentVersion", type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
            Parameters = structure(list(structure(list(structure(logical(0), 
                shape = "AutomationParameterValue", type = "string", 
                max = 512L, min = 1L)), shape = "AutomationParameterValueList", 
                type = "list", max = 10L, min = 0L)), shape = "AutomationParameterMap", 
                type = "map", max = 200L, min = 1L)), shape = "MaintenanceWindowAutomationParameters", 
            type = "structure"), StepFunctions = structure(list(Input = structure(logical(0), 
            shape = "MaintenanceWindowStepFunctionsInput", type = "string", 
            max = 4096L, sensitive = TRUE), Name = structure(logical(0), 
            shape = "MaintenanceWindowStepFunctionsName", type = "string", 
            max = 80L, min = 1L)), shape = "MaintenanceWindowStepFunctionsParameters", 
            type = "structure"), Lambda = structure(list(ClientContext = structure(logical(0), 
            shape = "MaintenanceWindowLambdaClientContext", type = "string", 
            max = 8000L, min = 1L), Qualifier = structure(logical(0), 
            shape = "MaintenanceWindowLambdaQualifier", type = "string", 
            max = 128L, min = 1L), Payload = structure(logical(0), 
            shape = "MaintenanceWindowLambdaPayload", type = "blob", 
            max = 4096L, sensitive = TRUE)), shape = "MaintenanceWindowLambdaParameters", 
            type = "structure")), shape = "MaintenanceWindowTaskInvocationParameters", 
            type = "structure"), Priority = structure(logical(0), 
            shape = "MaintenanceWindowTaskPriority", box = TRUE, 
            type = "integer", min = 0L), MaxConcurrency = structure(logical(0), 
            shape = "MaxConcurrency", type = "string", max = 7L, 
            min = 1L, pattern = "^([1-9][0-9]*|[1-9][0-9]%|[1-9]%|100%)$"), 
        MaxErrors = structure(logical(0), shape = "MaxErrors", 
            type = "string", max = 7L, min = 1L, pattern = "^([1-9][0-9]*|[0]|[1-9][0-9]%|[0-9]%|100%)$"), 
        LoggingInfo = structure(list(S3BucketName = structure(logical(0), 
            shape = "S3BucketName", type = "string", max = 63L, 
            min = 3L), S3KeyPrefix = structure(logical(0), shape = "S3KeyPrefix", 
            type = "string", max = 500L), S3Region = structure(logical(0), 
            shape = "S3Region", type = "string", max = 20L, min = 3L)), 
            shape = "LoggingInfo", type = "structure"), Name = structure(logical(0), 
            shape = "MaintenanceWindowName", type = "string", 
            max = 128L, min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        Description = structure(logical(0), shape = "MaintenanceWindowDescription", 
            type = "string", max = 128L, min = 1L, sensitive = TRUE), 
        ClientToken = structure(logical(0), shape = "ClientToken", 
            idempotencyToken = TRUE, type = "string", max = 64L, 
            min = 1L)), shape = "RegisterTaskWithMaintenanceWindowRequest", 
        type = "structure")
    return(populate(args, shape))
}

register_task_with_maintenance_window_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowTaskId = structure(logical(0), 
        shape = "MaintenanceWindowTaskId", type = "string", max = 36L, 
        min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$")), 
        shape = "RegisterTaskWithMaintenanceWindowResult", type = "structure")
    return(populate(args, shape))
}

remove_tags_from_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceType = structure(logical(0), 
        shape = "ResourceTypeForTagging", type = "string"), ResourceId = structure(logical(0), 
        shape = "ResourceId", type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "^(?!^(?i)aws:)(?=^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$).*$")), 
        shape = "KeyList", type = "list")), shape = "RemoveTagsFromResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

remove_tags_from_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RemoveTagsFromResourceResult", 
        type = "structure")
    return(populate(args, shape))
}

resume_session_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SessionId = structure(logical(0), 
        shape = "SessionId", type = "string", max = 96L, min = 1L)), 
        shape = "ResumeSessionRequest", type = "structure")
    return(populate(args, shape))
}

resume_session_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SessionId = structure(logical(0), 
        shape = "SessionId", type = "string", max = 96L, min = 1L), 
        TokenValue = structure(logical(0), shape = "TokenValue", 
            type = "string", max = 300L, min = 0L), StreamUrl = structure(logical(0), 
            shape = "StreamUrl", type = "string")), shape = "ResumeSessionResponse", 
        type = "structure")
    return(populate(args, shape))
}

send_automation_signal_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutomationExecutionId = structure(logical(0), 
        shape = "AutomationExecutionId", type = "string", max = 36L, 
        min = 36L), SignalType = structure(logical(0), shape = "SignalType", 
        type = "string"), Payload = structure(list(structure(list(structure(logical(0), 
        shape = "AutomationParameterValue", type = "string", 
        max = 512L, min = 1L)), shape = "AutomationParameterValueList", 
        type = "list", max = 10L, min = 0L)), shape = "AutomationParameterMap", 
        type = "map", max = 200L, min = 1L)), shape = "SendAutomationSignalRequest", 
        type = "structure")
    return(populate(args, shape))
}

send_automation_signal_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SendAutomationSignalResult", 
        type = "structure")
    return(populate(args, shape))
}

send_command_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceIds = structure(list(structure(logical(0), 
        shape = "InstanceId", type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)")), 
        shape = "InstanceIdList", type = "list", max = 50L, min = 0L), 
        Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        DocumentName = structure(logical(0), shape = "DocumentARN", 
            type = "string", pattern = "^[a-zA-Z0-9_\\-.:/]{3,128}$"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        DocumentHash = structure(logical(0), shape = "DocumentHash", 
            type = "string", max = 256L), DocumentHashType = structure(logical(0), 
            shape = "DocumentHashType", type = "string"), TimeoutSeconds = structure(logical(0), 
            shape = "TimeoutSeconds", box = TRUE, type = "integer", 
            max = 2592000L, min = 30L), Comment = structure(logical(0), 
            shape = "Comment", type = "string", max = 100L), 
        Parameters = structure(list(structure(list(structure(logical(0), 
            shape = "ParameterValue", type = "string")), shape = "ParameterValueList", 
            type = "list")), shape = "Parameters", type = "map"), 
        OutputS3Region = structure(logical(0), shape = "S3Region", 
            type = "string", max = 20L, min = 3L), OutputS3BucketName = structure(logical(0), 
            shape = "S3BucketName", type = "string", max = 63L, 
            min = 3L), OutputS3KeyPrefix = structure(logical(0), 
            shape = "S3KeyPrefix", type = "string", max = 500L), 
        MaxConcurrency = structure(logical(0), shape = "MaxConcurrency", 
            type = "string", max = 7L, min = 1L, pattern = "^([1-9][0-9]*|[1-9][0-9]%|[1-9]%|100%)$"), 
        MaxErrors = structure(logical(0), shape = "MaxErrors", 
            type = "string", max = 7L, min = 1L, pattern = "^([1-9][0-9]*|[0]|[1-9][0-9]%|[0-9]%|100%)$"), 
        ServiceRoleArn = structure(logical(0), shape = "ServiceRole", 
            type = "string"), NotificationConfig = structure(list(NotificationArn = structure(logical(0), 
            shape = "NotificationArn", type = "string"), NotificationEvents = structure(list(structure(logical(0), 
            shape = "NotificationEvent", type = "string")), shape = "NotificationEventList", 
            type = "list"), NotificationType = structure(logical(0), 
            shape = "NotificationType", type = "string")), shape = "NotificationConfig", 
            type = "structure"), CloudWatchOutputConfig = structure(list(CloudWatchLogGroupName = structure(logical(0), 
            shape = "CloudWatchLogGroupName", type = "string", 
            max = 512L, min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+"), 
            CloudWatchOutputEnabled = structure(logical(0), shape = "CloudWatchOutputEnabled", 
                type = "boolean")), shape = "CloudWatchOutputConfig", 
            type = "structure")), shape = "SendCommandRequest", 
        type = "structure")
    return(populate(args, shape))
}

send_command_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Command = structure(list(CommandId = structure(logical(0), 
        shape = "CommandId", type = "string", max = 36L, min = 36L), 
        DocumentName = structure(logical(0), shape = "DocumentName", 
            type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        Comment = structure(logical(0), shape = "Comment", type = "string", 
            max = 100L), ExpiresAfter = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), Parameters = structure(list(structure(list(structure(logical(0), 
            shape = "ParameterValue", type = "string")), shape = "ParameterValueList", 
            type = "list")), shape = "Parameters", type = "map"), 
        InstanceIds = structure(list(structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)")), 
            shape = "InstanceIdList", type = "list", max = 50L, 
            min = 0L), Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        RequestedDateTime = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), Status = structure(logical(0), 
            shape = "CommandStatus", type = "string"), StatusDetails = structure(logical(0), 
            shape = "StatusDetails", type = "string", max = 100L, 
            min = 0L), OutputS3Region = structure(logical(0), 
            shape = "S3Region", type = "string", max = 20L, min = 3L), 
        OutputS3BucketName = structure(logical(0), shape = "S3BucketName", 
            type = "string", max = 63L, min = 3L), OutputS3KeyPrefix = structure(logical(0), 
            shape = "S3KeyPrefix", type = "string", max = 500L), 
        MaxConcurrency = structure(logical(0), shape = "MaxConcurrency", 
            type = "string", max = 7L, min = 1L, pattern = "^([1-9][0-9]*|[1-9][0-9]%|[1-9]%|100%)$"), 
        MaxErrors = structure(logical(0), shape = "MaxErrors", 
            type = "string", max = 7L, min = 1L, pattern = "^([1-9][0-9]*|[0]|[1-9][0-9]%|[0-9]%|100%)$"), 
        TargetCount = structure(logical(0), shape = "TargetCount", 
            type = "integer"), CompletedCount = structure(logical(0), 
            shape = "CompletedCount", type = "integer"), ErrorCount = structure(logical(0), 
            shape = "ErrorCount", type = "integer"), DeliveryTimedOutCount = structure(logical(0), 
            shape = "DeliveryTimedOutCount", type = "integer"), 
        ServiceRole = structure(logical(0), shape = "ServiceRole", 
            type = "string"), NotificationConfig = structure(list(NotificationArn = structure(logical(0), 
            shape = "NotificationArn", type = "string"), NotificationEvents = structure(list(structure(logical(0), 
            shape = "NotificationEvent", type = "string")), shape = "NotificationEventList", 
            type = "list"), NotificationType = structure(logical(0), 
            shape = "NotificationType", type = "string")), shape = "NotificationConfig", 
            type = "structure"), CloudWatchOutputConfig = structure(list(CloudWatchLogGroupName = structure(logical(0), 
            shape = "CloudWatchLogGroupName", type = "string", 
            max = 512L, min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+"), 
            CloudWatchOutputEnabled = structure(logical(0), shape = "CloudWatchOutputEnabled", 
                type = "boolean")), shape = "CloudWatchOutputConfig", 
            type = "structure")), shape = "Command", type = "structure")), 
        shape = "SendCommandResult", type = "structure")
    return(populate(args, shape))
}

start_associations_once_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationIds = structure(list(structure(logical(0), 
        shape = "AssociationId", type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}")), 
        shape = "AssociationIdList", type = "list", max = 10L, 
        min = 1L)), shape = "StartAssociationsOnceRequest", type = "structure")
    return(populate(args, shape))
}

start_associations_once_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StartAssociationsOnceResult", 
        type = "structure")
    return(populate(args, shape))
}

start_automation_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DocumentName = structure(logical(0), 
        shape = "DocumentARN", type = "string", pattern = "^[a-zA-Z0-9_\\-.:/]{3,128}$"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            box = TRUE, type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        Parameters = structure(list(structure(list(structure(logical(0), 
            shape = "AutomationParameterValue", type = "string", 
            max = 512L, min = 1L)), shape = "AutomationParameterValueList", 
            type = "list", max = 10L, min = 0L)), shape = "AutomationParameterMap", 
            type = "map", max = 200L, min = 1L), ClientToken = structure(logical(0), 
            shape = "IdempotencyToken", type = "string", max = 36L, 
            min = 36L, pattern = "[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}"), 
        Mode = structure(logical(0), shape = "ExecutionMode", 
            type = "string"), TargetParameterName = structure(logical(0), 
            shape = "AutomationParameterKey", type = "string", 
            max = 30L, min = 1L), Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        TargetMaps = structure(list(structure(list(structure(list(structure(logical(0), 
            shape = "TargetMapValue", type = "string", max = 50L, 
            min = 1L)), shape = "TargetMapValueList", type = "list", 
            max = 25L, min = 0L)), shape = "TargetMap", type = "map", 
            max = 20L, min = 1L)), shape = "TargetMaps", type = "list", 
            max = 300L, min = 0L), MaxConcurrency = structure(logical(0), 
            shape = "MaxConcurrency", type = "string", max = 7L, 
            min = 1L, pattern = "^([1-9][0-9]*|[1-9][0-9]%|[1-9]%|100%)$"), 
        MaxErrors = structure(logical(0), shape = "MaxErrors", 
            type = "string", max = 7L, min = 1L, pattern = "^([1-9][0-9]*|[0]|[1-9][0-9]%|[0-9]%|100%)$")), 
        shape = "StartAutomationExecutionRequest", type = "structure")
    return(populate(args, shape))
}

start_automation_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutomationExecutionId = structure(logical(0), 
        shape = "AutomationExecutionId", type = "string", max = 36L, 
        min = 36L)), shape = "StartAutomationExecutionResult", 
        type = "structure")
    return(populate(args, shape))
}

start_session_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Target = structure(logical(0), shape = "SessionTarget", 
        type = "string", max = 50L, min = 1L), DocumentName = structure(logical(0), 
        shape = "DocumentARN", type = "string", pattern = "^[a-zA-Z0-9_\\-.:/]{3,128}$"), 
        Parameters = structure(list(structure(list(structure(logical(0), 
            shape = "SessionManagerParameterValue", type = "string", 
            max = 65535L, min = 1L)), shape = "SessionManagerParameterValueList", 
            type = "list")), shape = "SessionManagerParameters", 
            type = "map")), shape = "StartSessionRequest", type = "structure")
    return(populate(args, shape))
}

start_session_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SessionId = structure(logical(0), 
        shape = "SessionId", type = "string", max = 96L, min = 1L), 
        TokenValue = structure(logical(0), shape = "TokenValue", 
            type = "string", max = 300L, min = 0L), StreamUrl = structure(logical(0), 
            shape = "StreamUrl", type = "string")), shape = "StartSessionResponse", 
        type = "structure")
    return(populate(args, shape))
}

stop_automation_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutomationExecutionId = structure(logical(0), 
        shape = "AutomationExecutionId", type = "string", max = 36L, 
        min = 36L), Type = structure(logical(0), shape = "StopType", 
        type = "string")), shape = "StopAutomationExecutionRequest", 
        type = "structure")
    return(populate(args, shape))
}

stop_automation_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StopAutomationExecutionResult", 
        type = "structure")
    return(populate(args, shape))
}

terminate_session_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SessionId = structure(logical(0), 
        shape = "SessionId", type = "string", max = 96L, min = 1L)), 
        shape = "TerminateSessionRequest", type = "structure")
    return(populate(args, shape))
}

terminate_session_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SessionId = structure(logical(0), 
        shape = "SessionId", type = "string", max = 96L, min = 1L)), 
        shape = "TerminateSessionResponse", type = "structure")
    return(populate(args, shape))
}

update_association_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationId = structure(logical(0), 
        shape = "AssociationId", type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), 
        Parameters = structure(list(structure(list(structure(logical(0), 
            shape = "ParameterValue", type = "string")), shape = "ParameterValueList", 
            type = "list")), shape = "Parameters", type = "map"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        ScheduleExpression = structure(logical(0), shape = "ScheduleExpression", 
            type = "string", max = 256L, min = 1L), OutputLocation = structure(list(S3Location = structure(list(OutputS3Region = structure(logical(0), 
            shape = "S3Region", type = "string", max = 20L, min = 3L), 
            OutputS3BucketName = structure(logical(0), shape = "S3BucketName", 
                type = "string", max = 63L, min = 3L), OutputS3KeyPrefix = structure(logical(0), 
                shape = "S3KeyPrefix", type = "string", max = 500L)), 
            shape = "S3OutputLocation", type = "structure")), 
            shape = "InstanceAssociationOutputLocation", type = "structure"), 
        Name = structure(logical(0), shape = "DocumentName", 
            type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        AssociationName = structure(logical(0), shape = "AssociationName", 
            type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        AssociationVersion = structure(logical(0), shape = "AssociationVersion", 
            type = "string", pattern = "([$]LATEST)|([1-9][0-9]*)")), 
        shape = "UpdateAssociationRequest", type = "structure")
    return(populate(args, shape))
}

update_association_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationDescription = structure(list(Name = structure(logical(0), 
        shape = "DocumentName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        AssociationVersion = structure(logical(0), shape = "AssociationVersion", 
            type = "string", pattern = "([$]LATEST)|([1-9][0-9]*)"), 
        Date = structure(logical(0), shape = "DateTime", type = "timestamp"), 
        LastUpdateAssociationDate = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), Status = structure(list(Date = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), Name = structure(logical(0), 
            shape = "AssociationStatusName", type = "string"), 
            Message = structure(logical(0), shape = "StatusMessage", 
                type = "string", max = 1024L, min = 1L), AdditionalInfo = structure(logical(0), 
                shape = "StatusAdditionalInfo", type = "string", 
                max = 1024L)), shape = "AssociationStatus", type = "structure"), 
        Overview = structure(list(Status = structure(logical(0), 
            shape = "StatusName", type = "string"), DetailedStatus = structure(logical(0), 
            shape = "StatusName", type = "string"), AssociationStatusAggregatedCount = structure(list(structure(logical(0), 
            shape = "InstanceCount", type = "integer")), shape = "AssociationStatusAggregatedCount", 
            type = "map")), shape = "AssociationOverview", type = "structure"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        Parameters = structure(list(structure(list(structure(logical(0), 
            shape = "ParameterValue", type = "string")), shape = "ParameterValueList", 
            type = "list")), shape = "Parameters", type = "map"), 
        AssociationId = structure(logical(0), shape = "AssociationId", 
            type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), 
        Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        ScheduleExpression = structure(logical(0), shape = "ScheduleExpression", 
            type = "string", max = 256L, min = 1L), OutputLocation = structure(list(S3Location = structure(list(OutputS3Region = structure(logical(0), 
            shape = "S3Region", type = "string", max = 20L, min = 3L), 
            OutputS3BucketName = structure(logical(0), shape = "S3BucketName", 
                type = "string", max = 63L, min = 3L), OutputS3KeyPrefix = structure(logical(0), 
                shape = "S3KeyPrefix", type = "string", max = 500L)), 
            shape = "S3OutputLocation", type = "structure")), 
            shape = "InstanceAssociationOutputLocation", type = "structure"), 
        LastExecutionDate = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), LastSuccessfulExecutionDate = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), AssociationName = structure(logical(0), 
            shape = "AssociationName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$")), 
        shape = "AssociationDescription", type = "structure")), 
        shape = "UpdateAssociationResult", type = "structure")
    return(populate(args, shape))
}

update_association_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "DocumentName", 
        type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        AssociationStatus = structure(list(Date = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), Name = structure(logical(0), 
            shape = "AssociationStatusName", type = "string"), 
            Message = structure(logical(0), shape = "StatusMessage", 
                type = "string", max = 1024L, min = 1L), AdditionalInfo = structure(logical(0), 
                shape = "StatusAdditionalInfo", type = "string", 
                max = 1024L)), shape = "AssociationStatus", type = "structure")), 
        shape = "UpdateAssociationStatusRequest", type = "structure")
    return(populate(args, shape))
}

update_association_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationDescription = structure(list(Name = structure(logical(0), 
        shape = "DocumentName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", pattern = "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"), 
        AssociationVersion = structure(logical(0), shape = "AssociationVersion", 
            type = "string", pattern = "([$]LATEST)|([1-9][0-9]*)"), 
        Date = structure(logical(0), shape = "DateTime", type = "timestamp"), 
        LastUpdateAssociationDate = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), Status = structure(list(Date = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), Name = structure(logical(0), 
            shape = "AssociationStatusName", type = "string"), 
            Message = structure(logical(0), shape = "StatusMessage", 
                type = "string", max = 1024L, min = 1L), AdditionalInfo = structure(logical(0), 
                shape = "StatusAdditionalInfo", type = "string", 
                max = 1024L)), shape = "AssociationStatus", type = "structure"), 
        Overview = structure(list(Status = structure(logical(0), 
            shape = "StatusName", type = "string"), DetailedStatus = structure(logical(0), 
            shape = "StatusName", type = "string"), AssociationStatusAggregatedCount = structure(list(structure(logical(0), 
            shape = "InstanceCount", type = "integer")), shape = "AssociationStatusAggregatedCount", 
            type = "map")), shape = "AssociationOverview", type = "structure"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        Parameters = structure(list(structure(list(structure(logical(0), 
            shape = "ParameterValue", type = "string")), shape = "ParameterValueList", 
            type = "list")), shape = "Parameters", type = "map"), 
        AssociationId = structure(logical(0), shape = "AssociationId", 
            type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), 
        Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        ScheduleExpression = structure(logical(0), shape = "ScheduleExpression", 
            type = "string", max = 256L, min = 1L), OutputLocation = structure(list(S3Location = structure(list(OutputS3Region = structure(logical(0), 
            shape = "S3Region", type = "string", max = 20L, min = 3L), 
            OutputS3BucketName = structure(logical(0), shape = "S3BucketName", 
                type = "string", max = 63L, min = 3L), OutputS3KeyPrefix = structure(logical(0), 
                shape = "S3KeyPrefix", type = "string", max = 500L)), 
            shape = "S3OutputLocation", type = "structure")), 
            shape = "InstanceAssociationOutputLocation", type = "structure"), 
        LastExecutionDate = structure(logical(0), shape = "DateTime", 
            type = "timestamp"), LastSuccessfulExecutionDate = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), AssociationName = structure(logical(0), 
            shape = "AssociationName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$")), 
        shape = "AssociationDescription", type = "structure")), 
        shape = "UpdateAssociationStatusResult", type = "structure")
    return(populate(args, shape))
}

update_document_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Content = structure(logical(0), shape = "DocumentContent", 
        type = "string", min = 1L), Name = structure(logical(0), 
        shape = "DocumentName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        DocumentFormat = structure(logical(0), shape = "DocumentFormat", 
            type = "string"), TargetType = structure(logical(0), 
            shape = "TargetType", type = "string", max = 200L, 
            pattern = "^\\/[\\w\\.\\-\\:\\/]*$")), shape = "UpdateDocumentRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_document_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DocumentDescription = structure(list(Sha1 = structure(logical(0), 
        shape = "DocumentSha1", type = "string"), Hash = structure(logical(0), 
        shape = "DocumentHash", type = "string", max = 256L), 
        HashType = structure(logical(0), shape = "DocumentHashType", 
            type = "string"), Name = structure(logical(0), shape = "DocumentARN", 
            type = "string", pattern = "^[a-zA-Z0-9_\\-.:/]{3,128}$"), 
        Owner = structure(logical(0), shape = "DocumentOwner", 
            type = "string"), CreatedDate = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), Status = structure(logical(0), 
            shape = "DocumentStatus", type = "string"), DocumentVersion = structure(logical(0), 
            shape = "DocumentVersion", type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        Description = structure(logical(0), shape = "DescriptionInDocument", 
            type = "string"), Parameters = structure(list(structure(list(Name = structure(logical(0), 
            shape = "DocumentParameterName", type = "string"), 
            Type = structure(logical(0), shape = "DocumentParameterType", 
                type = "string"), Description = structure(logical(0), 
                shape = "DocumentParameterDescrption", type = "string"), 
            DefaultValue = structure(logical(0), shape = "DocumentParameterDefaultValue", 
                type = "string")), shape = "DocumentParameter", 
            type = "structure")), shape = "DocumentParameterList", 
            type = "list"), PlatformTypes = structure(list(structure(logical(0), 
            shape = "PlatformType", type = "string")), shape = "PlatformTypeList", 
            type = "list"), DocumentType = structure(logical(0), 
            shape = "DocumentType", type = "string"), SchemaVersion = structure(logical(0), 
            shape = "DocumentSchemaVersion", type = "string", 
            pattern = "([0-9]+)\\.([0-9]+)"), LatestVersion = structure(logical(0), 
            shape = "DocumentVersion", type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        DefaultVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
        DocumentFormat = structure(logical(0), shape = "DocumentFormat", 
            type = "string"), TargetType = structure(logical(0), 
            shape = "TargetType", type = "string", max = 200L, 
            pattern = "^\\/[\\w\\.\\-\\:\\/]*$"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^(?!^(?i)aws:)(?=^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$).*$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list")), shape = "DocumentDescription", type = "structure")), 
        shape = "UpdateDocumentResult", type = "structure")
    return(populate(args, shape))
}

update_document_default_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "DocumentName", 
        type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        DocumentVersion = structure(logical(0), shape = "DocumentVersionNumber", 
            type = "string", pattern = "(^[1-9][0-9]*$)")), shape = "UpdateDocumentDefaultVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_document_default_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Description = structure(list(Name = structure(logical(0), 
        shape = "DocumentName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        DefaultVersion = structure(logical(0), shape = "DocumentVersion", 
            type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)")), 
        shape = "DocumentDefaultVersionDescription", type = "structure")), 
        shape = "UpdateDocumentDefaultVersionResult", type = "structure")
    return(populate(args, shape))
}

update_maintenance_window_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), Name = structure(logical(0), 
        shape = "MaintenanceWindowName", type = "string", max = 128L, 
        min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), Description = structure(logical(0), 
        shape = "MaintenanceWindowDescription", type = "string", 
        max = 128L, min = 1L, sensitive = TRUE), StartDate = structure(logical(0), 
        shape = "MaintenanceWindowStringDateTime", type = "string"), 
        EndDate = structure(logical(0), shape = "MaintenanceWindowStringDateTime", 
            type = "string"), Schedule = structure(logical(0), 
            shape = "MaintenanceWindowSchedule", type = "string", 
            max = 256L, min = 1L), ScheduleTimezone = structure(logical(0), 
            shape = "MaintenanceWindowTimezone", type = "string"), 
        Duration = structure(logical(0), shape = "MaintenanceWindowDurationHours", 
            box = TRUE, type = "integer", max = 24L, min = 1L), 
        Cutoff = structure(logical(0), shape = "MaintenanceWindowCutoff", 
            box = TRUE, type = "integer", max = 23L, min = 0L), 
        AllowUnassociatedTargets = structure(logical(0), shape = "MaintenanceWindowAllowUnassociatedTargets", 
            box = TRUE, type = "boolean"), Enabled = structure(logical(0), 
            shape = "MaintenanceWindowEnabled", box = TRUE, type = "boolean"), 
        Replace = structure(logical(0), shape = "Boolean", box = TRUE, 
            type = "boolean")), shape = "UpdateMaintenanceWindowRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_maintenance_window_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), Name = structure(logical(0), 
        shape = "MaintenanceWindowName", type = "string", max = 128L, 
        min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), Description = structure(logical(0), 
        shape = "MaintenanceWindowDescription", type = "string", 
        max = 128L, min = 1L, sensitive = TRUE), StartDate = structure(logical(0), 
        shape = "MaintenanceWindowStringDateTime", type = "string"), 
        EndDate = structure(logical(0), shape = "MaintenanceWindowStringDateTime", 
            type = "string"), Schedule = structure(logical(0), 
            shape = "MaintenanceWindowSchedule", type = "string", 
            max = 256L, min = 1L), ScheduleTimezone = structure(logical(0), 
            shape = "MaintenanceWindowTimezone", type = "string"), 
        Duration = structure(logical(0), shape = "MaintenanceWindowDurationHours", 
            type = "integer", max = 24L, min = 1L), Cutoff = structure(logical(0), 
            shape = "MaintenanceWindowCutoff", type = "integer", 
            max = 23L, min = 0L), AllowUnassociatedTargets = structure(logical(0), 
            shape = "MaintenanceWindowAllowUnassociatedTargets", 
            type = "boolean"), Enabled = structure(logical(0), 
            shape = "MaintenanceWindowEnabled", type = "boolean")), 
        shape = "UpdateMaintenanceWindowResult", type = "structure")
    return(populate(args, shape))
}

update_maintenance_window_target_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), WindowTargetId = structure(logical(0), 
        shape = "MaintenanceWindowTargetId", type = "string", 
        max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        OwnerInformation = structure(logical(0), shape = "OwnerInformation", 
            type = "string", max = 128L, min = 1L, sensitive = TRUE), 
        Name = structure(logical(0), shape = "MaintenanceWindowName", 
            type = "string", max = 128L, min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        Description = structure(logical(0), shape = "MaintenanceWindowDescription", 
            type = "string", max = 128L, min = 1L, sensitive = TRUE), 
        Replace = structure(logical(0), shape = "Boolean", box = TRUE, 
            type = "boolean")), shape = "UpdateMaintenanceWindowTargetRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_maintenance_window_target_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), WindowTargetId = structure(logical(0), 
        shape = "MaintenanceWindowTargetId", type = "string", 
        max = 36L, min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        OwnerInformation = structure(logical(0), shape = "OwnerInformation", 
            type = "string", max = 128L, min = 1L, sensitive = TRUE), 
        Name = structure(logical(0), shape = "MaintenanceWindowName", 
            type = "string", max = 128L, min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        Description = structure(logical(0), shape = "MaintenanceWindowDescription", 
            type = "string", max = 128L, min = 1L, sensitive = TRUE)), 
        shape = "UpdateMaintenanceWindowTargetResult", type = "structure")
    return(populate(args, shape))
}

update_maintenance_window_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), WindowTaskId = structure(logical(0), 
        shape = "MaintenanceWindowTaskId", type = "string", max = 36L, 
        min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        TaskArn = structure(logical(0), shape = "MaintenanceWindowTaskArn", 
            type = "string", max = 1600L, min = 1L), ServiceRoleArn = structure(logical(0), 
            shape = "ServiceRole", type = "string"), TaskParameters = structure(list(structure(list(Values = structure(list(structure(logical(0), 
            shape = "MaintenanceWindowTaskParameterValue", type = "string", 
            max = 255L, min = 1L, sensitive = TRUE)), shape = "MaintenanceWindowTaskParameterValueList", 
            type = "list", sensitive = TRUE)), shape = "MaintenanceWindowTaskParameterValueExpression", 
            type = "structure", sensitive = TRUE)), shape = "MaintenanceWindowTaskParameters", 
            type = "map", sensitive = TRUE), TaskInvocationParameters = structure(list(RunCommand = structure(list(Comment = structure(logical(0), 
            shape = "Comment", type = "string", max = 100L), 
            DocumentHash = structure(logical(0), shape = "DocumentHash", 
                type = "string", max = 256L), DocumentHashType = structure(logical(0), 
                shape = "DocumentHashType", type = "string"), 
            NotificationConfig = structure(list(NotificationArn = structure(logical(0), 
                shape = "NotificationArn", type = "string"), 
                NotificationEvents = structure(list(structure(logical(0), 
                  shape = "NotificationEvent", type = "string")), 
                  shape = "NotificationEventList", type = "list"), 
                NotificationType = structure(logical(0), shape = "NotificationType", 
                  type = "string")), shape = "NotificationConfig", 
                type = "structure"), OutputS3BucketName = structure(logical(0), 
                shape = "S3BucketName", type = "string", max = 63L, 
                min = 3L), OutputS3KeyPrefix = structure(logical(0), 
                shape = "S3KeyPrefix", type = "string", max = 500L), 
            Parameters = structure(list(structure(list(structure(logical(0), 
                shape = "ParameterValue", type = "string")), 
                shape = "ParameterValueList", type = "list")), 
                shape = "Parameters", type = "map"), ServiceRoleArn = structure(logical(0), 
                shape = "ServiceRole", type = "string"), TimeoutSeconds = structure(logical(0), 
                shape = "TimeoutSeconds", box = TRUE, type = "integer", 
                max = 2592000L, min = 30L)), shape = "MaintenanceWindowRunCommandParameters", 
            type = "structure"), Automation = structure(list(DocumentVersion = structure(logical(0), 
            shape = "DocumentVersion", type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
            Parameters = structure(list(structure(list(structure(logical(0), 
                shape = "AutomationParameterValue", type = "string", 
                max = 512L, min = 1L)), shape = "AutomationParameterValueList", 
                type = "list", max = 10L, min = 0L)), shape = "AutomationParameterMap", 
                type = "map", max = 200L, min = 1L)), shape = "MaintenanceWindowAutomationParameters", 
            type = "structure"), StepFunctions = structure(list(Input = structure(logical(0), 
            shape = "MaintenanceWindowStepFunctionsInput", type = "string", 
            max = 4096L, sensitive = TRUE), Name = structure(logical(0), 
            shape = "MaintenanceWindowStepFunctionsName", type = "string", 
            max = 80L, min = 1L)), shape = "MaintenanceWindowStepFunctionsParameters", 
            type = "structure"), Lambda = structure(list(ClientContext = structure(logical(0), 
            shape = "MaintenanceWindowLambdaClientContext", type = "string", 
            max = 8000L, min = 1L), Qualifier = structure(logical(0), 
            shape = "MaintenanceWindowLambdaQualifier", type = "string", 
            max = 128L, min = 1L), Payload = structure(logical(0), 
            shape = "MaintenanceWindowLambdaPayload", type = "blob", 
            max = 4096L, sensitive = TRUE)), shape = "MaintenanceWindowLambdaParameters", 
            type = "structure")), shape = "MaintenanceWindowTaskInvocationParameters", 
            type = "structure"), Priority = structure(logical(0), 
            shape = "MaintenanceWindowTaskPriority", box = TRUE, 
            type = "integer", min = 0L), MaxConcurrency = structure(logical(0), 
            shape = "MaxConcurrency", type = "string", max = 7L, 
            min = 1L, pattern = "^([1-9][0-9]*|[1-9][0-9]%|[1-9]%|100%)$"), 
        MaxErrors = structure(logical(0), shape = "MaxErrors", 
            type = "string", max = 7L, min = 1L, pattern = "^([1-9][0-9]*|[0]|[1-9][0-9]%|[0-9]%|100%)$"), 
        LoggingInfo = structure(list(S3BucketName = structure(logical(0), 
            shape = "S3BucketName", type = "string", max = 63L, 
            min = 3L), S3KeyPrefix = structure(logical(0), shape = "S3KeyPrefix", 
            type = "string", max = 500L), S3Region = structure(logical(0), 
            shape = "S3Region", type = "string", max = 20L, min = 3L)), 
            shape = "LoggingInfo", type = "structure"), Name = structure(logical(0), 
            shape = "MaintenanceWindowName", type = "string", 
            max = 128L, min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        Description = structure(logical(0), shape = "MaintenanceWindowDescription", 
            type = "string", max = 128L, min = 1L, sensitive = TRUE), 
        Replace = structure(logical(0), shape = "Boolean", box = TRUE, 
            type = "boolean")), shape = "UpdateMaintenanceWindowTaskRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_maintenance_window_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WindowId = structure(logical(0), 
        shape = "MaintenanceWindowId", type = "string", max = 20L, 
        min = 20L, pattern = "^mw-[0-9a-f]{17}$"), WindowTaskId = structure(logical(0), 
        shape = "MaintenanceWindowTaskId", type = "string", max = 36L, 
        min = 36L, pattern = "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"), 
        Targets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "TargetValue", 
                type = "string")), shape = "TargetValues", type = "list", 
                max = 50L, min = 0L)), shape = "Target", type = "structure")), 
            shape = "Targets", type = "list", max = 5L, min = 0L), 
        TaskArn = structure(logical(0), shape = "MaintenanceWindowTaskArn", 
            type = "string", max = 1600L, min = 1L), ServiceRoleArn = structure(logical(0), 
            shape = "ServiceRole", type = "string"), TaskParameters = structure(list(structure(list(Values = structure(list(structure(logical(0), 
            shape = "MaintenanceWindowTaskParameterValue", type = "string", 
            max = 255L, min = 1L, sensitive = TRUE)), shape = "MaintenanceWindowTaskParameterValueList", 
            type = "list", sensitive = TRUE)), shape = "MaintenanceWindowTaskParameterValueExpression", 
            type = "structure", sensitive = TRUE)), shape = "MaintenanceWindowTaskParameters", 
            type = "map", sensitive = TRUE), TaskInvocationParameters = structure(list(RunCommand = structure(list(Comment = structure(logical(0), 
            shape = "Comment", type = "string", max = 100L), 
            DocumentHash = structure(logical(0), shape = "DocumentHash", 
                type = "string", max = 256L), DocumentHashType = structure(logical(0), 
                shape = "DocumentHashType", type = "string"), 
            NotificationConfig = structure(list(NotificationArn = structure(logical(0), 
                shape = "NotificationArn", type = "string"), 
                NotificationEvents = structure(list(structure(logical(0), 
                  shape = "NotificationEvent", type = "string")), 
                  shape = "NotificationEventList", type = "list"), 
                NotificationType = structure(logical(0), shape = "NotificationType", 
                  type = "string")), shape = "NotificationConfig", 
                type = "structure"), OutputS3BucketName = structure(logical(0), 
                shape = "S3BucketName", type = "string", max = 63L, 
                min = 3L), OutputS3KeyPrefix = structure(logical(0), 
                shape = "S3KeyPrefix", type = "string", max = 500L), 
            Parameters = structure(list(structure(list(structure(logical(0), 
                shape = "ParameterValue", type = "string")), 
                shape = "ParameterValueList", type = "list")), 
                shape = "Parameters", type = "map"), ServiceRoleArn = structure(logical(0), 
                shape = "ServiceRole", type = "string"), TimeoutSeconds = structure(logical(0), 
                shape = "TimeoutSeconds", box = TRUE, type = "integer", 
                max = 2592000L, min = 30L)), shape = "MaintenanceWindowRunCommandParameters", 
            type = "structure"), Automation = structure(list(DocumentVersion = structure(logical(0), 
            shape = "DocumentVersion", type = "string", pattern = "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), 
            Parameters = structure(list(structure(list(structure(logical(0), 
                shape = "AutomationParameterValue", type = "string", 
                max = 512L, min = 1L)), shape = "AutomationParameterValueList", 
                type = "list", max = 10L, min = 0L)), shape = "AutomationParameterMap", 
                type = "map", max = 200L, min = 1L)), shape = "MaintenanceWindowAutomationParameters", 
            type = "structure"), StepFunctions = structure(list(Input = structure(logical(0), 
            shape = "MaintenanceWindowStepFunctionsInput", type = "string", 
            max = 4096L, sensitive = TRUE), Name = structure(logical(0), 
            shape = "MaintenanceWindowStepFunctionsName", type = "string", 
            max = 80L, min = 1L)), shape = "MaintenanceWindowStepFunctionsParameters", 
            type = "structure"), Lambda = structure(list(ClientContext = structure(logical(0), 
            shape = "MaintenanceWindowLambdaClientContext", type = "string", 
            max = 8000L, min = 1L), Qualifier = structure(logical(0), 
            shape = "MaintenanceWindowLambdaQualifier", type = "string", 
            max = 128L, min = 1L), Payload = structure(logical(0), 
            shape = "MaintenanceWindowLambdaPayload", type = "blob", 
            max = 4096L, sensitive = TRUE)), shape = "MaintenanceWindowLambdaParameters", 
            type = "structure")), shape = "MaintenanceWindowTaskInvocationParameters", 
            type = "structure"), Priority = structure(logical(0), 
            shape = "MaintenanceWindowTaskPriority", type = "integer", 
            min = 0L), MaxConcurrency = structure(logical(0), 
            shape = "MaxConcurrency", type = "string", max = 7L, 
            min = 1L, pattern = "^([1-9][0-9]*|[1-9][0-9]%|[1-9]%|100%)$"), 
        MaxErrors = structure(logical(0), shape = "MaxErrors", 
            type = "string", max = 7L, min = 1L, pattern = "^([1-9][0-9]*|[0]|[1-9][0-9]%|[0-9]%|100%)$"), 
        LoggingInfo = structure(list(S3BucketName = structure(logical(0), 
            shape = "S3BucketName", type = "string", max = 63L, 
            min = 3L), S3KeyPrefix = structure(logical(0), shape = "S3KeyPrefix", 
            type = "string", max = 500L), S3Region = structure(logical(0), 
            shape = "S3Region", type = "string", max = 20L, min = 3L)), 
            shape = "LoggingInfo", type = "structure"), Name = structure(logical(0), 
            shape = "MaintenanceWindowName", type = "string", 
            max = 128L, min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), 
        Description = structure(logical(0), shape = "MaintenanceWindowDescription", 
            type = "string", max = 128L, min = 1L, sensitive = TRUE)), 
        shape = "UpdateMaintenanceWindowTaskResult", type = "structure")
    return(populate(args, shape))
}

update_managed_instance_role_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "ManagedInstanceId", type = "string", pattern = "^mi-[0-9a-f]{17}$"), 
        IamRole = structure(logical(0), shape = "IamRole", type = "string", 
            max = 64L)), shape = "UpdateManagedInstanceRoleRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_managed_instance_role_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateManagedInstanceRoleResult", 
        type = "structure")
    return(populate(args, shape))
}

update_patch_baseline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BaselineId = structure(logical(0), 
        shape = "BaselineId", type = "string", max = 128L, min = 20L, 
        pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$"), Name = structure(logical(0), 
        shape = "BaselineName", type = "string", max = 128L, 
        min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), GlobalFilters = structure(list(PatchFilters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "PatchFilterKey", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "PatchFilterValue", type = "string", max = 64L, 
        min = 1L)), shape = "PatchFilterValueList", type = "list", 
        max = 20L, min = 1L)), shape = "PatchFilter", type = "structure")), 
        shape = "PatchFilterList", type = "list", max = 4L, min = 0L)), 
        shape = "PatchFilterGroup", type = "structure"), ApprovalRules = structure(list(PatchRules = structure(list(structure(list(PatchFilterGroup = structure(list(PatchFilters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "PatchFilterKey", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "PatchFilterValue", type = "string", max = 64L, 
        min = 1L)), shape = "PatchFilterValueList", type = "list", 
        max = 20L, min = 1L)), shape = "PatchFilter", type = "structure")), 
        shape = "PatchFilterList", type = "list", max = 4L, min = 0L)), 
        shape = "PatchFilterGroup", type = "structure"), ComplianceLevel = structure(logical(0), 
        shape = "PatchComplianceLevel", type = "string"), ApproveAfterDays = structure(logical(0), 
        shape = "ApproveAfterDays", box = TRUE, type = "integer", 
        max = 100L, min = 0L), EnableNonSecurity = structure(logical(0), 
        shape = "Boolean", box = TRUE, type = "boolean")), shape = "PatchRule", 
        type = "structure")), shape = "PatchRuleList", type = "list", 
        max = 10L, min = 0L)), shape = "PatchRuleGroup", type = "structure"), 
        ApprovedPatches = structure(list(structure(logical(0), 
            shape = "PatchId", type = "string", max = 100L, min = 1L)), 
            shape = "PatchIdList", type = "list", max = 50L, 
            min = 0L), ApprovedPatchesComplianceLevel = structure(logical(0), 
            shape = "PatchComplianceLevel", type = "string"), 
        ApprovedPatchesEnableNonSecurity = structure(logical(0), 
            shape = "Boolean", box = TRUE, type = "boolean"), 
        RejectedPatches = structure(list(structure(logical(0), 
            shape = "PatchId", type = "string", max = 100L, min = 1L)), 
            shape = "PatchIdList", type = "list", max = 50L, 
            min = 0L), RejectedPatchesAction = structure(logical(0), 
            shape = "PatchAction", type = "string"), Description = structure(logical(0), 
            shape = "BaselineDescription", type = "string", max = 1024L, 
            min = 1L), Sources = structure(list(structure(list(Name = structure(logical(0), 
            shape = "PatchSourceName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,50}$"), 
            Products = structure(list(structure(logical(0), shape = "PatchSourceProduct", 
                type = "string", max = 128L, min = 1L)), shape = "PatchSourceProductList", 
                type = "list", max = 20L, min = 1L), Configuration = structure(logical(0), 
                shape = "PatchSourceConfiguration", type = "string", 
                max = 512L, min = 1L, sensitive = TRUE)), shape = "PatchSource", 
            type = "structure")), shape = "PatchSourceList", 
            type = "list", max = 20L, min = 0L), Replace = structure(logical(0), 
            shape = "Boolean", box = TRUE, type = "boolean")), 
        shape = "UpdatePatchBaselineRequest", type = "structure")
    return(populate(args, shape))
}

update_patch_baseline_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BaselineId = structure(logical(0), 
        shape = "BaselineId", type = "string", max = 128L, min = 20L, 
        pattern = "^[a-zA-Z0-9_\\-:/]{20,128}$"), Name = structure(logical(0), 
        shape = "BaselineName", type = "string", max = 128L, 
        min = 3L, pattern = "^[a-zA-Z0-9_\\-.]{3,128}$"), OperatingSystem = structure(logical(0), 
        shape = "OperatingSystem", type = "string"), GlobalFilters = structure(list(PatchFilters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "PatchFilterKey", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "PatchFilterValue", type = "string", max = 64L, 
        min = 1L)), shape = "PatchFilterValueList", type = "list", 
        max = 20L, min = 1L)), shape = "PatchFilter", type = "structure")), 
        shape = "PatchFilterList", type = "list", max = 4L, min = 0L)), 
        shape = "PatchFilterGroup", type = "structure"), ApprovalRules = structure(list(PatchRules = structure(list(structure(list(PatchFilterGroup = structure(list(PatchFilters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "PatchFilterKey", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "PatchFilterValue", type = "string", max = 64L, 
        min = 1L)), shape = "PatchFilterValueList", type = "list", 
        max = 20L, min = 1L)), shape = "PatchFilter", type = "structure")), 
        shape = "PatchFilterList", type = "list", max = 4L, min = 0L)), 
        shape = "PatchFilterGroup", type = "structure"), ComplianceLevel = structure(logical(0), 
        shape = "PatchComplianceLevel", type = "string"), ApproveAfterDays = structure(logical(0), 
        shape = "ApproveAfterDays", box = TRUE, type = "integer", 
        max = 100L, min = 0L), EnableNonSecurity = structure(logical(0), 
        shape = "Boolean", box = TRUE, type = "boolean")), shape = "PatchRule", 
        type = "structure")), shape = "PatchRuleList", type = "list", 
        max = 10L, min = 0L)), shape = "PatchRuleGroup", type = "structure"), 
        ApprovedPatches = structure(list(structure(logical(0), 
            shape = "PatchId", type = "string", max = 100L, min = 1L)), 
            shape = "PatchIdList", type = "list", max = 50L, 
            min = 0L), ApprovedPatchesComplianceLevel = structure(logical(0), 
            shape = "PatchComplianceLevel", type = "string"), 
        ApprovedPatchesEnableNonSecurity = structure(logical(0), 
            shape = "Boolean", box = TRUE, type = "boolean"), 
        RejectedPatches = structure(list(structure(logical(0), 
            shape = "PatchId", type = "string", max = 100L, min = 1L)), 
            shape = "PatchIdList", type = "list", max = 50L, 
            min = 0L), RejectedPatchesAction = structure(logical(0), 
            shape = "PatchAction", type = "string"), CreatedDate = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), ModifiedDate = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), Description = structure(logical(0), 
            shape = "BaselineDescription", type = "string", max = 1024L, 
            min = 1L), Sources = structure(list(structure(list(Name = structure(logical(0), 
            shape = "PatchSourceName", type = "string", pattern = "^[a-zA-Z0-9_\\-.]{3,50}$"), 
            Products = structure(list(structure(logical(0), shape = "PatchSourceProduct", 
                type = "string", max = 128L, min = 1L)), shape = "PatchSourceProductList", 
                type = "list", max = 20L, min = 1L), Configuration = structure(logical(0), 
                shape = "PatchSourceConfiguration", type = "string", 
                max = 512L, min = 1L, sensitive = TRUE)), shape = "PatchSource", 
            type = "structure")), shape = "PatchSourceList", 
            type = "list", max = 20L, min = 0L)), shape = "UpdatePatchBaselineResult", 
        type = "structure")
    return(populate(args, shape))
}
