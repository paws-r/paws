acknowledge_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 
        locationName = "jobId"), Nonce = structure(logical(0), 
        shape = "Nonce", type = "string", max = 50L, min = 1L, 
        locationName = "nonce")), shape = "AcknowledgeJobInput", 
        type = "structure")
    return(populate(args, shape))
}

acknowledge_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "JobStatus", 
        type = "string", locationName = "status")), shape = "AcknowledgeJobOutput", 
        type = "structure")
    return(populate(args, shape))
}

acknowledge_third_party_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "ThirdPartyJobId", 
        type = "string", max = 512L, min = 1L, locationName = "jobId"), 
        Nonce = structure(logical(0), shape = "Nonce", type = "string", 
            max = 50L, min = 1L, locationName = "nonce"), ClientToken = structure(logical(0), 
            shape = "ClientToken", type = "string", max = 256L, 
            min = 1L, locationName = "clientToken")), shape = "AcknowledgeThirdPartyJobInput", 
        type = "structure")
    return(populate(args, shape))
}

acknowledge_third_party_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "JobStatus", 
        type = "string", locationName = "status")), shape = "AcknowledgeThirdPartyJobOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_custom_action_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Category = structure(logical(0), 
        shape = "ActionCategory", type = "string", locationName = "category"), 
        Provider = structure(logical(0), shape = "ActionProvider", 
            type = "string", max = 25L, min = 1L, pattern = "[0-9A-Za-z_-]+", 
            locationName = "provider"), Version = structure(logical(0), 
            shape = "Version", type = "string", max = 9L, min = 1L, 
            pattern = "[0-9A-Za-z_-]+", locationName = "version"), 
        Settings = structure(list(ThirdPartyConfigurationUrl = structure(logical(0), 
            shape = "Url", type = "string", max = 2048L, min = 1L, 
            locationName = "thirdPartyConfigurationUrl"), EntityUrlTemplate = structure(logical(0), 
            shape = "UrlTemplate", type = "string", max = 2048L, 
            min = 1L, locationName = "entityUrlTemplate"), ExecutionUrlTemplate = structure(logical(0), 
            shape = "UrlTemplate", type = "string", max = 2048L, 
            min = 1L, locationName = "executionUrlTemplate"), 
            RevisionUrlTemplate = structure(logical(0), shape = "UrlTemplate", 
                type = "string", max = 2048L, min = 1L, locationName = "revisionUrlTemplate")), 
            shape = "ActionTypeSettings", type = "structure", 
            locationName = "settings"), ConfigurationProperties = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ActionConfigurationKey", type = "string", 
            max = 50L, min = 1L, locationName = "name"), Required = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "required"), 
            Key = structure(logical(0), shape = "Boolean", type = "boolean", 
                locationName = "key"), Secret = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "secret"), 
            Queryable = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "queryable"), 
            Description = structure(logical(0), shape = "Description", 
                type = "string", max = 160L, min = 1L, locationName = "description"), 
            Type = structure(logical(0), shape = "ActionConfigurationPropertyType", 
                type = "string", locationName = "type")), shape = "ActionConfigurationProperty", 
            type = "structure")), shape = "ActionConfigurationPropertyList", 
            type = "list", max = 10L, locationName = "configurationProperties"), 
        InputArtifactDetails = structure(list(MinimumCount = structure(logical(0), 
            shape = "MinimumArtifactCount", type = "integer", 
            max = 5L, min = 0L, locationName = "minimumCount"), 
            MaximumCount = structure(logical(0), shape = "MaximumArtifactCount", 
                type = "integer", max = 5L, min = 0L, locationName = "maximumCount")), 
            shape = "ArtifactDetails", type = "structure", locationName = "inputArtifactDetails"), 
        OutputArtifactDetails = structure(list(MinimumCount = structure(logical(0), 
            shape = "MinimumArtifactCount", type = "integer", 
            max = 5L, min = 0L, locationName = "minimumCount"), 
            MaximumCount = structure(logical(0), shape = "MaximumArtifactCount", 
                type = "integer", max = 5L, min = 0L, locationName = "maximumCount")), 
            shape = "ArtifactDetails", type = "structure", locationName = "outputArtifactDetails")), 
        shape = "CreateCustomActionTypeInput", type = "structure")
    return(populate(args, shape))
}

create_custom_action_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActionType = structure(list(Id = structure(list(Category = structure(logical(0), 
        shape = "ActionCategory", type = "string", locationName = "category"), 
        Owner = structure(logical(0), shape = "ActionOwner", 
            type = "string", locationName = "owner"), Provider = structure(logical(0), 
            shape = "ActionProvider", type = "string", max = 25L, 
            min = 1L, pattern = "[0-9A-Za-z_-]+", locationName = "provider"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 9L, min = 1L, pattern = "[0-9A-Za-z_-]+", locationName = "version")), 
        shape = "ActionTypeId", type = "structure", locationName = "id"), 
        Settings = structure(list(ThirdPartyConfigurationUrl = structure(logical(0), 
            shape = "Url", type = "string", max = 2048L, min = 1L, 
            locationName = "thirdPartyConfigurationUrl"), EntityUrlTemplate = structure(logical(0), 
            shape = "UrlTemplate", type = "string", max = 2048L, 
            min = 1L, locationName = "entityUrlTemplate"), ExecutionUrlTemplate = structure(logical(0), 
            shape = "UrlTemplate", type = "string", max = 2048L, 
            min = 1L, locationName = "executionUrlTemplate"), 
            RevisionUrlTemplate = structure(logical(0), shape = "UrlTemplate", 
                type = "string", max = 2048L, min = 1L, locationName = "revisionUrlTemplate")), 
            shape = "ActionTypeSettings", type = "structure", 
            locationName = "settings"), ActionConfigurationProperties = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ActionConfigurationKey", type = "string", 
            max = 50L, min = 1L, locationName = "name"), Required = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "required"), 
            Key = structure(logical(0), shape = "Boolean", type = "boolean", 
                locationName = "key"), Secret = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "secret"), 
            Queryable = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "queryable"), 
            Description = structure(logical(0), shape = "Description", 
                type = "string", max = 160L, min = 1L, locationName = "description"), 
            Type = structure(logical(0), shape = "ActionConfigurationPropertyType", 
                type = "string", locationName = "type")), shape = "ActionConfigurationProperty", 
            type = "structure")), shape = "ActionConfigurationPropertyList", 
            type = "list", max = 10L, locationName = "actionConfigurationProperties"), 
        InputArtifactDetails = structure(list(MinimumCount = structure(logical(0), 
            shape = "MinimumArtifactCount", type = "integer", 
            max = 5L, min = 0L, locationName = "minimumCount"), 
            MaximumCount = structure(logical(0), shape = "MaximumArtifactCount", 
                type = "integer", max = 5L, min = 0L, locationName = "maximumCount")), 
            shape = "ArtifactDetails", type = "structure", locationName = "inputArtifactDetails"), 
        OutputArtifactDetails = structure(list(MinimumCount = structure(logical(0), 
            shape = "MinimumArtifactCount", type = "integer", 
            max = 5L, min = 0L, locationName = "minimumCount"), 
            MaximumCount = structure(logical(0), shape = "MaximumArtifactCount", 
                type = "integer", max = 5L, min = 0L, locationName = "maximumCount")), 
            shape = "ArtifactDetails", type = "structure", locationName = "outputArtifactDetails")), 
        shape = "ActionType", type = "structure", locationName = "actionType")), 
        shape = "CreateCustomActionTypeOutput", type = "structure")
    return(populate(args, shape))
}

create_pipeline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Pipeline = structure(list(Name = structure(logical(0), 
        shape = "PipelineName", type = "string", max = 100L, 
        min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            max = 1024L, pattern = "arn:aws(-[\\w]+)*:iam::[0-9]{12}:role/.*", 
            locationName = "roleArn"), ArtifactStore = structure(list(Type = structure(logical(0), 
            shape = "ArtifactStoreType", type = "string", locationName = "type"), 
            Location = structure(logical(0), shape = "ArtifactStoreLocation", 
                type = "string", max = 63L, min = 3L, pattern = "[a-zA-Z0-9\\-\\.]+", 
                locationName = "location"), EncryptionKey = structure(list(Id = structure(logical(0), 
                shape = "EncryptionKeyId", type = "string", max = 100L, 
                min = 1L, locationName = "id"), Type = structure(logical(0), 
                shape = "EncryptionKeyType", type = "string", 
                locationName = "type")), shape = "EncryptionKey", 
                type = "structure", locationName = "encryptionKey")), 
            shape = "ArtifactStore", type = "structure", locationName = "artifactStore"), 
        Stages = structure(list(structure(list(Name = structure(logical(0), 
            shape = "StageName", type = "string", max = 100L, 
            min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name"), 
            Blockers = structure(list(structure(list(Name = structure(logical(0), 
                shape = "BlockerName", type = "string", max = 100L, 
                min = 1L, locationName = "name"), Type = structure(logical(0), 
                shape = "BlockerType", type = "string", locationName = "type")), 
                shape = "BlockerDeclaration", type = "structure")), 
                shape = "StageBlockerDeclarationList", type = "list", 
                locationName = "blockers"), Actions = structure(list(structure(list(Name = structure(logical(0), 
                shape = "ActionName", type = "string", max = 100L, 
                min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name"), 
                ActionTypeId = structure(list(Category = structure(logical(0), 
                  shape = "ActionCategory", type = "string", 
                  locationName = "category"), Owner = structure(logical(0), 
                  shape = "ActionOwner", type = "string", locationName = "owner"), 
                  Provider = structure(logical(0), shape = "ActionProvider", 
                    type = "string", max = 25L, min = 1L, pattern = "[0-9A-Za-z_-]+", 
                    locationName = "provider"), Version = structure(logical(0), 
                    shape = "Version", type = "string", max = 9L, 
                    min = 1L, pattern = "[0-9A-Za-z_-]+", locationName = "version")), 
                  shape = "ActionTypeId", type = "structure", 
                  locationName = "actionTypeId"), RunOrder = structure(logical(0), 
                  shape = "ActionRunOrder", type = "integer", 
                  max = 999L, min = 1L, locationName = "runOrder"), 
                Configuration = structure(list(structure(logical(0), 
                  shape = "ActionConfigurationValue", type = "string", 
                  max = 1000L, min = 1L)), shape = "ActionConfigurationMap", 
                  type = "map", locationName = "configuration"), 
                OutputArtifacts = structure(list(structure(list(Name = structure(logical(0), 
                  shape = "ArtifactName", type = "string", max = 100L, 
                  min = 1L, pattern = "[a-zA-Z0-9_\\-]+", locationName = "name")), 
                  shape = "OutputArtifact", type = "structure")), 
                  shape = "OutputArtifactList", type = "list", 
                  locationName = "outputArtifacts"), InputArtifacts = structure(list(structure(list(Name = structure(logical(0), 
                  shape = "ArtifactName", type = "string", max = 100L, 
                  min = 1L, pattern = "[a-zA-Z0-9_\\-]+", locationName = "name")), 
                  shape = "InputArtifact", type = "structure")), 
                  shape = "InputArtifactList", type = "list", 
                  locationName = "inputArtifacts"), RoleArn = structure(logical(0), 
                  shape = "RoleArn", type = "string", max = 1024L, 
                  pattern = "arn:aws(-[\\w]+)*:iam::[0-9]{12}:role/.*", 
                  locationName = "roleArn")), shape = "ActionDeclaration", 
                type = "structure")), shape = "StageActionDeclarationList", 
                type = "list", locationName = "actions")), shape = "StageDeclaration", 
            type = "structure")), shape = "PipelineStageDeclarationList", 
            type = "list", locationName = "stages"), Version = structure(logical(0), 
            shape = "PipelineVersion", type = "integer", min = 1L, 
            locationName = "version")), shape = "PipelineDeclaration", 
        type = "structure", locationName = "pipeline")), shape = "CreatePipelineInput", 
        type = "structure")
    return(populate(args, shape))
}

create_pipeline_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Pipeline = structure(list(Name = structure(logical(0), 
        shape = "PipelineName", type = "string", max = 100L, 
        min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            max = 1024L, pattern = "arn:aws(-[\\w]+)*:iam::[0-9]{12}:role/.*", 
            locationName = "roleArn"), ArtifactStore = structure(list(Type = structure(logical(0), 
            shape = "ArtifactStoreType", type = "string", locationName = "type"), 
            Location = structure(logical(0), shape = "ArtifactStoreLocation", 
                type = "string", max = 63L, min = 3L, pattern = "[a-zA-Z0-9\\-\\.]+", 
                locationName = "location"), EncryptionKey = structure(list(Id = structure(logical(0), 
                shape = "EncryptionKeyId", type = "string", max = 100L, 
                min = 1L, locationName = "id"), Type = structure(logical(0), 
                shape = "EncryptionKeyType", type = "string", 
                locationName = "type")), shape = "EncryptionKey", 
                type = "structure", locationName = "encryptionKey")), 
            shape = "ArtifactStore", type = "structure", locationName = "artifactStore"), 
        Stages = structure(list(structure(list(Name = structure(logical(0), 
            shape = "StageName", type = "string", max = 100L, 
            min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name"), 
            Blockers = structure(list(structure(list(Name = structure(logical(0), 
                shape = "BlockerName", type = "string", max = 100L, 
                min = 1L, locationName = "name"), Type = structure(logical(0), 
                shape = "BlockerType", type = "string", locationName = "type")), 
                shape = "BlockerDeclaration", type = "structure")), 
                shape = "StageBlockerDeclarationList", type = "list", 
                locationName = "blockers"), Actions = structure(list(structure(list(Name = structure(logical(0), 
                shape = "ActionName", type = "string", max = 100L, 
                min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name"), 
                ActionTypeId = structure(list(Category = structure(logical(0), 
                  shape = "ActionCategory", type = "string", 
                  locationName = "category"), Owner = structure(logical(0), 
                  shape = "ActionOwner", type = "string", locationName = "owner"), 
                  Provider = structure(logical(0), shape = "ActionProvider", 
                    type = "string", max = 25L, min = 1L, pattern = "[0-9A-Za-z_-]+", 
                    locationName = "provider"), Version = structure(logical(0), 
                    shape = "Version", type = "string", max = 9L, 
                    min = 1L, pattern = "[0-9A-Za-z_-]+", locationName = "version")), 
                  shape = "ActionTypeId", type = "structure", 
                  locationName = "actionTypeId"), RunOrder = structure(logical(0), 
                  shape = "ActionRunOrder", type = "integer", 
                  max = 999L, min = 1L, locationName = "runOrder"), 
                Configuration = structure(list(structure(logical(0), 
                  shape = "ActionConfigurationValue", type = "string", 
                  max = 1000L, min = 1L)), shape = "ActionConfigurationMap", 
                  type = "map", locationName = "configuration"), 
                OutputArtifacts = structure(list(structure(list(Name = structure(logical(0), 
                  shape = "ArtifactName", type = "string", max = 100L, 
                  min = 1L, pattern = "[a-zA-Z0-9_\\-]+", locationName = "name")), 
                  shape = "OutputArtifact", type = "structure")), 
                  shape = "OutputArtifactList", type = "list", 
                  locationName = "outputArtifacts"), InputArtifacts = structure(list(structure(list(Name = structure(logical(0), 
                  shape = "ArtifactName", type = "string", max = 100L, 
                  min = 1L, pattern = "[a-zA-Z0-9_\\-]+", locationName = "name")), 
                  shape = "InputArtifact", type = "structure")), 
                  shape = "InputArtifactList", type = "list", 
                  locationName = "inputArtifacts"), RoleArn = structure(logical(0), 
                  shape = "RoleArn", type = "string", max = 1024L, 
                  pattern = "arn:aws(-[\\w]+)*:iam::[0-9]{12}:role/.*", 
                  locationName = "roleArn")), shape = "ActionDeclaration", 
                type = "structure")), shape = "StageActionDeclarationList", 
                type = "list", locationName = "actions")), shape = "StageDeclaration", 
            type = "structure")), shape = "PipelineStageDeclarationList", 
            type = "list", locationName = "stages"), Version = structure(logical(0), 
            shape = "PipelineVersion", type = "integer", min = 1L, 
            locationName = "version")), shape = "PipelineDeclaration", 
        type = "structure", locationName = "pipeline")), shape = "CreatePipelineOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_custom_action_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Category = structure(logical(0), 
        shape = "ActionCategory", type = "string", locationName = "category"), 
        Provider = structure(logical(0), shape = "ActionProvider", 
            type = "string", max = 25L, min = 1L, pattern = "[0-9A-Za-z_-]+", 
            locationName = "provider"), Version = structure(logical(0), 
            shape = "Version", type = "string", max = 9L, min = 1L, 
            pattern = "[0-9A-Za-z_-]+", locationName = "version")), 
        shape = "DeleteCustomActionTypeInput", type = "structure")
    return(populate(args, shape))
}

delete_custom_action_type_output <- function () 
{
    return(list())
}

delete_pipeline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "PipelineName", 
        type = "string", max = 100L, min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", 
        locationName = "name")), shape = "DeletePipelineInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_pipeline_output <- function () 
{
    return(list())
}

delete_webhook_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "WebhookName", 
        type = "string", max = 100L, min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", 
        locationName = "name")), shape = "DeleteWebhookInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_webhook_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteWebhookOutput", 
        type = "structure")
    return(populate(args, shape))
}

deregister_webhook_with_third_party_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WebhookName = structure(logical(0), 
        shape = "WebhookName", type = "string", max = 100L, min = 1L, 
        pattern = "[A-Za-z0-9.@\\-_]+", locationName = "webhookName")), 
        shape = "DeregisterWebhookWithThirdPartyInput", type = "structure")
    return(populate(args, shape))
}

deregister_webhook_with_third_party_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeregisterWebhookWithThirdPartyOutput", 
        type = "structure")
    return(populate(args, shape))
}

disable_stage_transition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineName = structure(logical(0), 
        shape = "PipelineName", type = "string", max = 100L, 
        min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "pipelineName"), 
        StageName = structure(logical(0), shape = "StageName", 
            type = "string", max = 100L, min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", 
            locationName = "stageName"), TransitionType = structure(logical(0), 
            shape = "StageTransitionType", type = "string", locationName = "transitionType"), 
        Reason = structure(logical(0), shape = "DisabledReason", 
            type = "string", max = 300L, min = 1L, pattern = "[a-zA-Z0-9!@ \\(\\)\\.\\*\\?\\-]+", 
            locationName = "reason")), shape = "DisableStageTransitionInput", 
        type = "structure")
    return(populate(args, shape))
}

disable_stage_transition_output <- function () 
{
    return(list())
}

enable_stage_transition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineName = structure(logical(0), 
        shape = "PipelineName", type = "string", max = 100L, 
        min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "pipelineName"), 
        StageName = structure(logical(0), shape = "StageName", 
            type = "string", max = 100L, min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", 
            locationName = "stageName"), TransitionType = structure(logical(0), 
            shape = "StageTransitionType", type = "string", locationName = "transitionType")), 
        shape = "EnableStageTransitionInput", type = "structure")
    return(populate(args, shape))
}

enable_stage_transition_output <- function () 
{
    return(list())
}

get_job_details_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 
        locationName = "jobId")), shape = "GetJobDetailsInput", 
        type = "structure")
    return(populate(args, shape))
}

get_job_details_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobDetails = structure(list(Id = structure(logical(0), 
        shape = "JobId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 
        locationName = "id"), Data = structure(list(ActionTypeId = structure(list(Category = structure(logical(0), 
        shape = "ActionCategory", type = "string", locationName = "category"), 
        Owner = structure(logical(0), shape = "ActionOwner", 
            type = "string", locationName = "owner"), Provider = structure(logical(0), 
            shape = "ActionProvider", type = "string", max = 25L, 
            min = 1L, pattern = "[0-9A-Za-z_-]+", locationName = "provider"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 9L, min = 1L, pattern = "[0-9A-Za-z_-]+", locationName = "version")), 
        shape = "ActionTypeId", type = "structure", locationName = "actionTypeId"), 
        ActionConfiguration = structure(list(Configuration = structure(list(structure(logical(0), 
            shape = "ActionConfigurationValue", type = "string", 
            max = 1000L, min = 1L)), shape = "ActionConfigurationMap", 
            type = "map", locationName = "configuration")), shape = "ActionConfiguration", 
            type = "structure", locationName = "actionConfiguration"), 
        PipelineContext = structure(list(PipelineName = structure(logical(0), 
            shape = "PipelineName", type = "string", max = 100L, 
            min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "pipelineName"), 
            Stage = structure(list(Name = structure(logical(0), 
                shape = "StageName", type = "string", max = 100L, 
                min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name")), 
                shape = "StageContext", type = "structure", locationName = "stage"), 
            Action = structure(list(Name = structure(logical(0), 
                shape = "ActionName", type = "string", max = 100L, 
                min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name")), 
                shape = "ActionContext", type = "structure", 
                locationName = "action")), shape = "PipelineContext", 
            type = "structure", locationName = "pipelineContext"), 
        InputArtifacts = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ArtifactName", type = "string", max = 100L, 
            min = 1L, pattern = "[a-zA-Z0-9_\\-]+", locationName = "name"), 
            Revision = structure(logical(0), shape = "Revision", 
                type = "string", max = 1500L, min = 1L, locationName = "revision"), 
            Location = structure(list(Type = structure(logical(0), 
                shape = "ArtifactLocationType", type = "string", 
                locationName = "type"), S3Location = structure(list(BucketName = structure(logical(0), 
                shape = "S3BucketName", type = "string", locationName = "bucketName"), 
                ObjectKey = structure(logical(0), shape = "S3ObjectKey", 
                  type = "string", locationName = "objectKey")), 
                shape = "S3ArtifactLocation", type = "structure", 
                locationName = "s3Location")), shape = "ArtifactLocation", 
                type = "structure", locationName = "location")), 
            shape = "Artifact", type = "structure")), shape = "ArtifactList", 
            type = "list", locationName = "inputArtifacts"), 
        OutputArtifacts = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ArtifactName", type = "string", max = 100L, 
            min = 1L, pattern = "[a-zA-Z0-9_\\-]+", locationName = "name"), 
            Revision = structure(logical(0), shape = "Revision", 
                type = "string", max = 1500L, min = 1L, locationName = "revision"), 
            Location = structure(list(Type = structure(logical(0), 
                shape = "ArtifactLocationType", type = "string", 
                locationName = "type"), S3Location = structure(list(BucketName = structure(logical(0), 
                shape = "S3BucketName", type = "string", locationName = "bucketName"), 
                ObjectKey = structure(logical(0), shape = "S3ObjectKey", 
                  type = "string", locationName = "objectKey")), 
                shape = "S3ArtifactLocation", type = "structure", 
                locationName = "s3Location")), shape = "ArtifactLocation", 
                type = "structure", locationName = "location")), 
            shape = "Artifact", type = "structure")), shape = "ArtifactList", 
            type = "list", locationName = "outputArtifacts"), 
        ArtifactCredentials = structure(list(AccessKeyId = structure(logical(0), 
            shape = "AccessKeyId", type = "string", locationName = "accessKeyId"), 
            SecretAccessKey = structure(logical(0), shape = "SecretAccessKey", 
                type = "string", locationName = "secretAccessKey"), 
            SessionToken = structure(logical(0), shape = "SessionToken", 
                type = "string", locationName = "sessionToken")), 
            shape = "AWSSessionCredentials", type = "structure", 
            sensitive = TRUE, locationName = "artifactCredentials"), 
        ContinuationToken = structure(logical(0), shape = "ContinuationToken", 
            type = "string", max = 2048L, min = 1L, locationName = "continuationToken"), 
        EncryptionKey = structure(list(Id = structure(logical(0), 
            shape = "EncryptionKeyId", type = "string", max = 100L, 
            min = 1L, locationName = "id"), Type = structure(logical(0), 
            shape = "EncryptionKeyType", type = "string", locationName = "type")), 
            shape = "EncryptionKey", type = "structure", locationName = "encryptionKey")), 
        shape = "JobData", type = "structure", locationName = "data"), 
        AccountId = structure(logical(0), shape = "AccountId", 
            type = "string", pattern = "[0-9]{12}", locationName = "accountId")), 
        shape = "JobDetails", type = "structure", locationName = "jobDetails")), 
        shape = "GetJobDetailsOutput", type = "structure")
    return(populate(args, shape))
}

get_pipeline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "PipelineName", 
        type = "string", max = 100L, min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", 
        locationName = "name"), Version = structure(logical(0), 
        shape = "PipelineVersion", type = "integer", min = 1L, 
        locationName = "version")), shape = "GetPipelineInput", 
        type = "structure")
    return(populate(args, shape))
}

get_pipeline_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Pipeline = structure(list(Name = structure(logical(0), 
        shape = "PipelineName", type = "string", max = 100L, 
        min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            max = 1024L, pattern = "arn:aws(-[\\w]+)*:iam::[0-9]{12}:role/.*", 
            locationName = "roleArn"), ArtifactStore = structure(list(Type = structure(logical(0), 
            shape = "ArtifactStoreType", type = "string", locationName = "type"), 
            Location = structure(logical(0), shape = "ArtifactStoreLocation", 
                type = "string", max = 63L, min = 3L, pattern = "[a-zA-Z0-9\\-\\.]+", 
                locationName = "location"), EncryptionKey = structure(list(Id = structure(logical(0), 
                shape = "EncryptionKeyId", type = "string", max = 100L, 
                min = 1L, locationName = "id"), Type = structure(logical(0), 
                shape = "EncryptionKeyType", type = "string", 
                locationName = "type")), shape = "EncryptionKey", 
                type = "structure", locationName = "encryptionKey")), 
            shape = "ArtifactStore", type = "structure", locationName = "artifactStore"), 
        Stages = structure(list(structure(list(Name = structure(logical(0), 
            shape = "StageName", type = "string", max = 100L, 
            min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name"), 
            Blockers = structure(list(structure(list(Name = structure(logical(0), 
                shape = "BlockerName", type = "string", max = 100L, 
                min = 1L, locationName = "name"), Type = structure(logical(0), 
                shape = "BlockerType", type = "string", locationName = "type")), 
                shape = "BlockerDeclaration", type = "structure")), 
                shape = "StageBlockerDeclarationList", type = "list", 
                locationName = "blockers"), Actions = structure(list(structure(list(Name = structure(logical(0), 
                shape = "ActionName", type = "string", max = 100L, 
                min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name"), 
                ActionTypeId = structure(list(Category = structure(logical(0), 
                  shape = "ActionCategory", type = "string", 
                  locationName = "category"), Owner = structure(logical(0), 
                  shape = "ActionOwner", type = "string", locationName = "owner"), 
                  Provider = structure(logical(0), shape = "ActionProvider", 
                    type = "string", max = 25L, min = 1L, pattern = "[0-9A-Za-z_-]+", 
                    locationName = "provider"), Version = structure(logical(0), 
                    shape = "Version", type = "string", max = 9L, 
                    min = 1L, pattern = "[0-9A-Za-z_-]+", locationName = "version")), 
                  shape = "ActionTypeId", type = "structure", 
                  locationName = "actionTypeId"), RunOrder = structure(logical(0), 
                  shape = "ActionRunOrder", type = "integer", 
                  max = 999L, min = 1L, locationName = "runOrder"), 
                Configuration = structure(list(structure(logical(0), 
                  shape = "ActionConfigurationValue", type = "string", 
                  max = 1000L, min = 1L)), shape = "ActionConfigurationMap", 
                  type = "map", locationName = "configuration"), 
                OutputArtifacts = structure(list(structure(list(Name = structure(logical(0), 
                  shape = "ArtifactName", type = "string", max = 100L, 
                  min = 1L, pattern = "[a-zA-Z0-9_\\-]+", locationName = "name")), 
                  shape = "OutputArtifact", type = "structure")), 
                  shape = "OutputArtifactList", type = "list", 
                  locationName = "outputArtifacts"), InputArtifacts = structure(list(structure(list(Name = structure(logical(0), 
                  shape = "ArtifactName", type = "string", max = 100L, 
                  min = 1L, pattern = "[a-zA-Z0-9_\\-]+", locationName = "name")), 
                  shape = "InputArtifact", type = "structure")), 
                  shape = "InputArtifactList", type = "list", 
                  locationName = "inputArtifacts"), RoleArn = structure(logical(0), 
                  shape = "RoleArn", type = "string", max = 1024L, 
                  pattern = "arn:aws(-[\\w]+)*:iam::[0-9]{12}:role/.*", 
                  locationName = "roleArn")), shape = "ActionDeclaration", 
                type = "structure")), shape = "StageActionDeclarationList", 
                type = "list", locationName = "actions")), shape = "StageDeclaration", 
            type = "structure")), shape = "PipelineStageDeclarationList", 
            type = "list", locationName = "stages"), Version = structure(logical(0), 
            shape = "PipelineVersion", type = "integer", min = 1L, 
            locationName = "version")), shape = "PipelineDeclaration", 
        type = "structure", locationName = "pipeline"), Metadata = structure(list(PipelineArn = structure(logical(0), 
        shape = "PipelineArn", type = "string", pattern = "arn:aws(-[\\w]+)*:codepipeline:.+:[0-9]{12}:.+", 
        locationName = "pipelineArn"), Created = structure(logical(0), 
        shape = "Timestamp", type = "timestamp", locationName = "created"), 
        Updated = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "updated")), shape = "PipelineMetadata", 
        type = "structure", locationName = "metadata")), shape = "GetPipelineOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_pipeline_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineName = structure(logical(0), 
        shape = "PipelineName", type = "string", max = 100L, 
        min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "pipelineName"), 
        PipelineExecutionId = structure(logical(0), shape = "PipelineExecutionId", 
            type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 
            locationName = "pipelineExecutionId")), shape = "GetPipelineExecutionInput", 
        type = "structure")
    return(populate(args, shape))
}

get_pipeline_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineExecution = structure(list(PipelineName = structure(logical(0), 
        shape = "PipelineName", type = "string", max = 100L, 
        min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "pipelineName"), 
        PipelineVersion = structure(logical(0), shape = "PipelineVersion", 
            type = "integer", min = 1L, locationName = "pipelineVersion"), 
        PipelineExecutionId = structure(logical(0), shape = "PipelineExecutionId", 
            type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 
            locationName = "pipelineExecutionId"), Status = structure(logical(0), 
            shape = "PipelineExecutionStatus", type = "string", 
            locationName = "status"), ArtifactRevisions = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ArtifactName", type = "string", max = 100L, 
            min = 1L, pattern = "[a-zA-Z0-9_\\-]+", locationName = "name"), 
            RevisionId = structure(logical(0), shape = "Revision", 
                type = "string", max = 1500L, min = 1L, locationName = "revisionId"), 
            RevisionChangeIdentifier = structure(logical(0), 
                shape = "RevisionChangeIdentifier", type = "string", 
                max = 100L, min = 1L, locationName = "revisionChangeIdentifier"), 
            RevisionSummary = structure(logical(0), shape = "RevisionSummary", 
                type = "string", max = 2048L, min = 1L, locationName = "revisionSummary"), 
            Created = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "created"), 
            RevisionUrl = structure(logical(0), shape = "Url", 
                type = "string", max = 2048L, min = 1L, locationName = "revisionUrl")), 
            shape = "ArtifactRevision", type = "structure")), 
            shape = "ArtifactRevisionList", type = "list", locationName = "artifactRevisions")), 
        shape = "PipelineExecution", type = "structure", locationName = "pipelineExecution")), 
        shape = "GetPipelineExecutionOutput", type = "structure")
    return(populate(args, shape))
}

get_pipeline_state_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "PipelineName", 
        type = "string", max = 100L, min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", 
        locationName = "name")), shape = "GetPipelineStateInput", 
        type = "structure")
    return(populate(args, shape))
}

get_pipeline_state_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineName = structure(logical(0), 
        shape = "PipelineName", type = "string", max = 100L, 
        min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "pipelineName"), 
        PipelineVersion = structure(logical(0), shape = "PipelineVersion", 
            type = "integer", min = 1L, locationName = "pipelineVersion"), 
        StageStates = structure(list(structure(list(StageName = structure(logical(0), 
            shape = "StageName", type = "string", max = 100L, 
            min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "stageName"), 
            InboundTransitionState = structure(list(Enabled = structure(logical(0), 
                shape = "Enabled", type = "boolean", locationName = "enabled"), 
                LastChangedBy = structure(logical(0), shape = "LastChangedBy", 
                  type = "string", locationName = "lastChangedBy"), 
                LastChangedAt = structure(logical(0), shape = "LastChangedAt", 
                  type = "timestamp", locationName = "lastChangedAt"), 
                DisabledReason = structure(logical(0), shape = "DisabledReason", 
                  type = "string", max = 300L, min = 1L, pattern = "[a-zA-Z0-9!@ \\(\\)\\.\\*\\?\\-]+", 
                  locationName = "disabledReason")), shape = "TransitionState", 
                type = "structure", locationName = "inboundTransitionState"), 
            ActionStates = structure(list(structure(list(ActionName = structure(logical(0), 
                shape = "ActionName", type = "string", max = 100L, 
                min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "actionName"), 
                CurrentRevision = structure(list(RevisionId = structure(logical(0), 
                  shape = "Revision", type = "string", max = 1500L, 
                  min = 1L, locationName = "revisionId"), RevisionChangeId = structure(logical(0), 
                  shape = "RevisionChangeIdentifier", type = "string", 
                  max = 100L, min = 1L, locationName = "revisionChangeId"), 
                  Created = structure(logical(0), shape = "Timestamp", 
                    type = "timestamp", locationName = "created")), 
                  shape = "ActionRevision", type = "structure", 
                  locationName = "currentRevision"), LatestExecution = structure(list(Status = structure(logical(0), 
                  shape = "ActionExecutionStatus", type = "string", 
                  locationName = "status"), Summary = structure(logical(0), 
                  shape = "ExecutionSummary", type = "string", 
                  max = 2048L, min = 1L, locationName = "summary"), 
                  LastStatusChange = structure(logical(0), shape = "Timestamp", 
                    type = "timestamp", locationName = "lastStatusChange"), 
                  Token = structure(logical(0), shape = "ActionExecutionToken", 
                    type = "string", locationName = "token"), 
                  LastUpdatedBy = structure(logical(0), shape = "LastUpdatedBy", 
                    type = "string", locationName = "lastUpdatedBy"), 
                  ExternalExecutionId = structure(logical(0), 
                    shape = "ExecutionId", type = "string", max = 1500L, 
                    min = 1L, locationName = "externalExecutionId"), 
                  ExternalExecutionUrl = structure(logical(0), 
                    shape = "Url", type = "string", max = 2048L, 
                    min = 1L, locationName = "externalExecutionUrl"), 
                  PercentComplete = structure(logical(0), shape = "Percentage", 
                    type = "integer", max = 100L, min = 0L, locationName = "percentComplete"), 
                  ErrorDetails = structure(list(Code = structure(logical(0), 
                    shape = "Code", type = "string", locationName = "code"), 
                    Message = structure(logical(0), shape = "Message", 
                      type = "string", max = 5000L, min = 1L, 
                      locationName = "message")), shape = "ErrorDetails", 
                    type = "structure", locationName = "errorDetails")), 
                  shape = "ActionExecution", type = "structure", 
                  locationName = "latestExecution"), EntityUrl = structure(logical(0), 
                  shape = "Url", type = "string", max = 2048L, 
                  min = 1L, locationName = "entityUrl"), RevisionUrl = structure(logical(0), 
                  shape = "Url", type = "string", max = 2048L, 
                  min = 1L, locationName = "revisionUrl")), shape = "ActionState", 
                type = "structure")), shape = "ActionStateList", 
                type = "list", locationName = "actionStates"), 
            LatestExecution = structure(list(PipelineExecutionId = structure(logical(0), 
                shape = "PipelineExecutionId", type = "string", 
                pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 
                locationName = "pipelineExecutionId"), Status = structure(logical(0), 
                shape = "StageExecutionStatus", type = "string", 
                locationName = "status")), shape = "StageExecution", 
                type = "structure", locationName = "latestExecution")), 
            shape = "StageState", type = "structure")), shape = "StageStateList", 
            type = "list", locationName = "stageStates"), Created = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "created"), 
        Updated = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "updated")), shape = "GetPipelineStateOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_third_party_job_details_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "ThirdPartyJobId", 
        type = "string", max = 512L, min = 1L, locationName = "jobId"), 
        ClientToken = structure(logical(0), shape = "ClientToken", 
            type = "string", max = 256L, min = 1L, locationName = "clientToken")), 
        shape = "GetThirdPartyJobDetailsInput", type = "structure")
    return(populate(args, shape))
}

get_third_party_job_details_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobDetails = structure(list(Id = structure(logical(0), 
        shape = "ThirdPartyJobId", type = "string", max = 512L, 
        min = 1L, locationName = "id"), Data = structure(list(ActionTypeId = structure(list(Category = structure(logical(0), 
        shape = "ActionCategory", type = "string", locationName = "category"), 
        Owner = structure(logical(0), shape = "ActionOwner", 
            type = "string", locationName = "owner"), Provider = structure(logical(0), 
            shape = "ActionProvider", type = "string", max = 25L, 
            min = 1L, pattern = "[0-9A-Za-z_-]+", locationName = "provider"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 9L, min = 1L, pattern = "[0-9A-Za-z_-]+", locationName = "version")), 
        shape = "ActionTypeId", type = "structure", locationName = "actionTypeId"), 
        ActionConfiguration = structure(list(Configuration = structure(list(structure(logical(0), 
            shape = "ActionConfigurationValue", type = "string", 
            max = 1000L, min = 1L)), shape = "ActionConfigurationMap", 
            type = "map", locationName = "configuration")), shape = "ActionConfiguration", 
            type = "structure", locationName = "actionConfiguration"), 
        PipelineContext = structure(list(PipelineName = structure(logical(0), 
            shape = "PipelineName", type = "string", max = 100L, 
            min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "pipelineName"), 
            Stage = structure(list(Name = structure(logical(0), 
                shape = "StageName", type = "string", max = 100L, 
                min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name")), 
                shape = "StageContext", type = "structure", locationName = "stage"), 
            Action = structure(list(Name = structure(logical(0), 
                shape = "ActionName", type = "string", max = 100L, 
                min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name")), 
                shape = "ActionContext", type = "structure", 
                locationName = "action")), shape = "PipelineContext", 
            type = "structure", locationName = "pipelineContext"), 
        InputArtifacts = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ArtifactName", type = "string", max = 100L, 
            min = 1L, pattern = "[a-zA-Z0-9_\\-]+", locationName = "name"), 
            Revision = structure(logical(0), shape = "Revision", 
                type = "string", max = 1500L, min = 1L, locationName = "revision"), 
            Location = structure(list(Type = structure(logical(0), 
                shape = "ArtifactLocationType", type = "string", 
                locationName = "type"), S3Location = structure(list(BucketName = structure(logical(0), 
                shape = "S3BucketName", type = "string", locationName = "bucketName"), 
                ObjectKey = structure(logical(0), shape = "S3ObjectKey", 
                  type = "string", locationName = "objectKey")), 
                shape = "S3ArtifactLocation", type = "structure", 
                locationName = "s3Location")), shape = "ArtifactLocation", 
                type = "structure", locationName = "location")), 
            shape = "Artifact", type = "structure")), shape = "ArtifactList", 
            type = "list", locationName = "inputArtifacts"), 
        OutputArtifacts = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ArtifactName", type = "string", max = 100L, 
            min = 1L, pattern = "[a-zA-Z0-9_\\-]+", locationName = "name"), 
            Revision = structure(logical(0), shape = "Revision", 
                type = "string", max = 1500L, min = 1L, locationName = "revision"), 
            Location = structure(list(Type = structure(logical(0), 
                shape = "ArtifactLocationType", type = "string", 
                locationName = "type"), S3Location = structure(list(BucketName = structure(logical(0), 
                shape = "S3BucketName", type = "string", locationName = "bucketName"), 
                ObjectKey = structure(logical(0), shape = "S3ObjectKey", 
                  type = "string", locationName = "objectKey")), 
                shape = "S3ArtifactLocation", type = "structure", 
                locationName = "s3Location")), shape = "ArtifactLocation", 
                type = "structure", locationName = "location")), 
            shape = "Artifact", type = "structure")), shape = "ArtifactList", 
            type = "list", locationName = "outputArtifacts"), 
        ArtifactCredentials = structure(list(AccessKeyId = structure(logical(0), 
            shape = "AccessKeyId", type = "string", locationName = "accessKeyId"), 
            SecretAccessKey = structure(logical(0), shape = "SecretAccessKey", 
                type = "string", locationName = "secretAccessKey"), 
            SessionToken = structure(logical(0), shape = "SessionToken", 
                type = "string", locationName = "sessionToken")), 
            shape = "AWSSessionCredentials", type = "structure", 
            sensitive = TRUE, locationName = "artifactCredentials"), 
        ContinuationToken = structure(logical(0), shape = "ContinuationToken", 
            type = "string", max = 2048L, min = 1L, locationName = "continuationToken"), 
        EncryptionKey = structure(list(Id = structure(logical(0), 
            shape = "EncryptionKeyId", type = "string", max = 100L, 
            min = 1L, locationName = "id"), Type = structure(logical(0), 
            shape = "EncryptionKeyType", type = "string", locationName = "type")), 
            shape = "EncryptionKey", type = "structure", locationName = "encryptionKey")), 
        shape = "ThirdPartyJobData", type = "structure", locationName = "data"), 
        Nonce = structure(logical(0), shape = "Nonce", type = "string", 
            max = 50L, min = 1L, locationName = "nonce")), shape = "ThirdPartyJobDetails", 
        type = "structure", locationName = "jobDetails")), shape = "GetThirdPartyJobDetailsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_action_types_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActionOwnerFilter = structure(logical(0), 
        shape = "ActionOwner", type = "string", locationName = "actionOwnerFilter"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 2048L, min = 1L, locationName = "nextToken")), 
        shape = "ListActionTypesInput", type = "structure")
    return(populate(args, shape))
}

list_action_types_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActionTypes = structure(list(structure(list(Id = structure(list(Category = structure(logical(0), 
        shape = "ActionCategory", type = "string", locationName = "category"), 
        Owner = structure(logical(0), shape = "ActionOwner", 
            type = "string", locationName = "owner"), Provider = structure(logical(0), 
            shape = "ActionProvider", type = "string", max = 25L, 
            min = 1L, pattern = "[0-9A-Za-z_-]+", locationName = "provider"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 9L, min = 1L, pattern = "[0-9A-Za-z_-]+", locationName = "version")), 
        shape = "ActionTypeId", type = "structure", locationName = "id"), 
        Settings = structure(list(ThirdPartyConfigurationUrl = structure(logical(0), 
            shape = "Url", type = "string", max = 2048L, min = 1L, 
            locationName = "thirdPartyConfigurationUrl"), EntityUrlTemplate = structure(logical(0), 
            shape = "UrlTemplate", type = "string", max = 2048L, 
            min = 1L, locationName = "entityUrlTemplate"), ExecutionUrlTemplate = structure(logical(0), 
            shape = "UrlTemplate", type = "string", max = 2048L, 
            min = 1L, locationName = "executionUrlTemplate"), 
            RevisionUrlTemplate = structure(logical(0), shape = "UrlTemplate", 
                type = "string", max = 2048L, min = 1L, locationName = "revisionUrlTemplate")), 
            shape = "ActionTypeSettings", type = "structure", 
            locationName = "settings"), ActionConfigurationProperties = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ActionConfigurationKey", type = "string", 
            max = 50L, min = 1L, locationName = "name"), Required = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "required"), 
            Key = structure(logical(0), shape = "Boolean", type = "boolean", 
                locationName = "key"), Secret = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "secret"), 
            Queryable = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "queryable"), 
            Description = structure(logical(0), shape = "Description", 
                type = "string", max = 160L, min = 1L, locationName = "description"), 
            Type = structure(logical(0), shape = "ActionConfigurationPropertyType", 
                type = "string", locationName = "type")), shape = "ActionConfigurationProperty", 
            type = "structure")), shape = "ActionConfigurationPropertyList", 
            type = "list", max = 10L, locationName = "actionConfigurationProperties"), 
        InputArtifactDetails = structure(list(MinimumCount = structure(logical(0), 
            shape = "MinimumArtifactCount", type = "integer", 
            max = 5L, min = 0L, locationName = "minimumCount"), 
            MaximumCount = structure(logical(0), shape = "MaximumArtifactCount", 
                type = "integer", max = 5L, min = 0L, locationName = "maximumCount")), 
            shape = "ArtifactDetails", type = "structure", locationName = "inputArtifactDetails"), 
        OutputArtifactDetails = structure(list(MinimumCount = structure(logical(0), 
            shape = "MinimumArtifactCount", type = "integer", 
            max = 5L, min = 0L, locationName = "minimumCount"), 
            MaximumCount = structure(logical(0), shape = "MaximumArtifactCount", 
                type = "integer", max = 5L, min = 0L, locationName = "maximumCount")), 
            shape = "ArtifactDetails", type = "structure", locationName = "outputArtifactDetails")), 
        shape = "ActionType", type = "structure")), shape = "ActionTypeList", 
        type = "list", locationName = "actionTypes"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 2048L, min = 1L, 
        locationName = "nextToken")), shape = "ListActionTypesOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_pipeline_executions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineName = structure(logical(0), 
        shape = "PipelineName", type = "string", max = 100L, 
        min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "pipelineName"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 100L, min = 1L, locationName = "maxResults"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 2048L, min = 1L, locationName = "nextToken")), 
        shape = "ListPipelineExecutionsInput", type = "structure")
    return(populate(args, shape))
}

list_pipeline_executions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineExecutionSummaries = structure(list(structure(list(PipelineExecutionId = structure(logical(0), 
        shape = "PipelineExecutionId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 
        locationName = "pipelineExecutionId"), Status = structure(logical(0), 
        shape = "PipelineExecutionStatus", type = "string", locationName = "status"), 
        StartTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "startTime"), 
        LastUpdateTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdateTime"), 
        SourceRevisions = structure(list(structure(list(ActionName = structure(logical(0), 
            shape = "ActionName", type = "string", max = 100L, 
            min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "actionName"), 
            RevisionId = structure(logical(0), shape = "Revision", 
                type = "string", max = 1500L, min = 1L, locationName = "revisionId"), 
            RevisionSummary = structure(logical(0), shape = "RevisionSummary", 
                type = "string", max = 2048L, min = 1L, locationName = "revisionSummary"), 
            RevisionUrl = structure(logical(0), shape = "Url", 
                type = "string", max = 2048L, min = 1L, locationName = "revisionUrl")), 
            shape = "SourceRevision", type = "structure")), shape = "SourceRevisionList", 
            type = "list", locationName = "sourceRevisions")), 
        shape = "PipelineExecutionSummary", type = "structure")), 
        shape = "PipelineExecutionSummaryList", type = "list", 
        locationName = "pipelineExecutionSummaries"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 2048L, min = 1L, 
        locationName = "nextToken")), shape = "ListPipelineExecutionsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_pipelines_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 2048L, min = 1L, 
        locationName = "nextToken")), shape = "ListPipelinesInput", 
        type = "structure")
    return(populate(args, shape))
}

list_pipelines_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Pipelines = structure(list(structure(list(Name = structure(logical(0), 
        shape = "PipelineName", type = "string", max = 100L, 
        min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name"), 
        Version = structure(logical(0), shape = "PipelineVersion", 
            type = "integer", min = 1L, locationName = "version"), 
        Created = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "created"), Updated = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "updated")), 
        shape = "PipelineSummary", type = "structure")), shape = "PipelineList", 
        type = "list", locationName = "pipelines"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 2048L, min = 1L, 
        locationName = "nextToken")), shape = "ListPipelinesOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_webhooks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 2048L, min = 1L), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 100L, min = 1L)), shape = "ListWebhooksInput", 
        type = "structure")
    return(populate(args, shape))
}

list_webhooks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Webhooks = structure(list(structure(list(Definition = structure(list(Name = structure(logical(0), 
        shape = "WebhookName", type = "string", max = 100L, min = 1L, 
        pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name"), 
        TargetPipeline = structure(logical(0), shape = "PipelineName", 
            type = "string", max = 100L, min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", 
            locationName = "targetPipeline"), TargetAction = structure(logical(0), 
            shape = "ActionName", type = "string", max = 100L, 
            min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "targetAction"), 
        Filters = structure(list(structure(list(JsonPath = structure(logical(0), 
            shape = "JsonPath", type = "string", max = 150L, 
            min = 1L, locationName = "jsonPath"), MatchEquals = structure(logical(0), 
            shape = "MatchEquals", type = "string", max = 150L, 
            min = 1L, locationName = "matchEquals")), shape = "WebhookFilterRule", 
            type = "structure")), shape = "WebhookFilters", type = "list", 
            max = 5L, locationName = "filters"), Authentication = structure(logical(0), 
            shape = "WebhookAuthenticationType", type = "string", 
            locationName = "authentication"), AuthenticationConfiguration = structure(list(AllowedIPRange = structure(logical(0), 
            shape = "WebhookAuthConfigurationAllowedIPRange", 
            type = "string", max = 100L, min = 1L), SecretToken = structure(logical(0), 
            shape = "WebhookAuthConfigurationSecretToken", type = "string", 
            max = 100L, min = 1L)), shape = "WebhookAuthConfiguration", 
            type = "structure", locationName = "authenticationConfiguration")), 
        shape = "WebhookDefinition", type = "structure", locationName = "definition"), 
        Url = structure(logical(0), shape = "WebhookUrl", type = "string", 
            max = 1000L, min = 1L, locationName = "url"), ErrorMessage = structure(logical(0), 
            shape = "WebhookErrorMessage", type = "string", locationName = "errorMessage"), 
        ErrorCode = structure(logical(0), shape = "WebhookErrorCode", 
            type = "string", locationName = "errorCode"), LastTriggered = structure(logical(0), 
            shape = "WebhookLastTriggered", type = "timestamp", 
            locationName = "lastTriggered"), Arn = structure(logical(0), 
            shape = "WebhookArn", type = "string", locationName = "arn")), 
        shape = "ListWebhookItem", type = "structure")), shape = "WebhookList", 
        type = "list", locationName = "webhooks"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 2048L, min = 1L)), 
        shape = "ListWebhooksOutput", type = "structure")
    return(populate(args, shape))
}

poll_for_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActionTypeId = structure(list(Category = structure(logical(0), 
        shape = "ActionCategory", type = "string", locationName = "category"), 
        Owner = structure(logical(0), shape = "ActionOwner", 
            type = "string", locationName = "owner"), Provider = structure(logical(0), 
            shape = "ActionProvider", type = "string", max = 25L, 
            min = 1L, pattern = "[0-9A-Za-z_-]+", locationName = "provider"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 9L, min = 1L, pattern = "[0-9A-Za-z_-]+", locationName = "version")), 
        shape = "ActionTypeId", type = "structure", locationName = "actionTypeId"), 
        MaxBatchSize = structure(logical(0), shape = "MaxBatchSize", 
            type = "integer", min = 1L, locationName = "maxBatchSize"), 
        QueryParam = structure(list(structure(logical(0), shape = "ActionConfigurationQueryableValue", 
            type = "string", max = 50L, min = 1L, pattern = "[a-zA-Z0-9_-]+")), 
            shape = "QueryParamMap", type = "map", max = 1L, 
            min = 0L, locationName = "queryParam")), shape = "PollForJobsInput", 
        type = "structure")
    return(populate(args, shape))
}

poll_for_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Jobs = structure(list(structure(list(Id = structure(logical(0), 
        shape = "JobId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 
        locationName = "id"), Data = structure(list(ActionTypeId = structure(list(Category = structure(logical(0), 
        shape = "ActionCategory", type = "string", locationName = "category"), 
        Owner = structure(logical(0), shape = "ActionOwner", 
            type = "string", locationName = "owner"), Provider = structure(logical(0), 
            shape = "ActionProvider", type = "string", max = 25L, 
            min = 1L, pattern = "[0-9A-Za-z_-]+", locationName = "provider"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 9L, min = 1L, pattern = "[0-9A-Za-z_-]+", locationName = "version")), 
        shape = "ActionTypeId", type = "structure", locationName = "actionTypeId"), 
        ActionConfiguration = structure(list(Configuration = structure(list(structure(logical(0), 
            shape = "ActionConfigurationValue", type = "string", 
            max = 1000L, min = 1L)), shape = "ActionConfigurationMap", 
            type = "map", locationName = "configuration")), shape = "ActionConfiguration", 
            type = "structure", locationName = "actionConfiguration"), 
        PipelineContext = structure(list(PipelineName = structure(logical(0), 
            shape = "PipelineName", type = "string", max = 100L, 
            min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "pipelineName"), 
            Stage = structure(list(Name = structure(logical(0), 
                shape = "StageName", type = "string", max = 100L, 
                min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name")), 
                shape = "StageContext", type = "structure", locationName = "stage"), 
            Action = structure(list(Name = structure(logical(0), 
                shape = "ActionName", type = "string", max = 100L, 
                min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name")), 
                shape = "ActionContext", type = "structure", 
                locationName = "action")), shape = "PipelineContext", 
            type = "structure", locationName = "pipelineContext"), 
        InputArtifacts = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ArtifactName", type = "string", max = 100L, 
            min = 1L, pattern = "[a-zA-Z0-9_\\-]+", locationName = "name"), 
            Revision = structure(logical(0), shape = "Revision", 
                type = "string", max = 1500L, min = 1L, locationName = "revision"), 
            Location = structure(list(Type = structure(logical(0), 
                shape = "ArtifactLocationType", type = "string", 
                locationName = "type"), S3Location = structure(list(BucketName = structure(logical(0), 
                shape = "S3BucketName", type = "string", locationName = "bucketName"), 
                ObjectKey = structure(logical(0), shape = "S3ObjectKey", 
                  type = "string", locationName = "objectKey")), 
                shape = "S3ArtifactLocation", type = "structure", 
                locationName = "s3Location")), shape = "ArtifactLocation", 
                type = "structure", locationName = "location")), 
            shape = "Artifact", type = "structure")), shape = "ArtifactList", 
            type = "list", locationName = "inputArtifacts"), 
        OutputArtifacts = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ArtifactName", type = "string", max = 100L, 
            min = 1L, pattern = "[a-zA-Z0-9_\\-]+", locationName = "name"), 
            Revision = structure(logical(0), shape = "Revision", 
                type = "string", max = 1500L, min = 1L, locationName = "revision"), 
            Location = structure(list(Type = structure(logical(0), 
                shape = "ArtifactLocationType", type = "string", 
                locationName = "type"), S3Location = structure(list(BucketName = structure(logical(0), 
                shape = "S3BucketName", type = "string", locationName = "bucketName"), 
                ObjectKey = structure(logical(0), shape = "S3ObjectKey", 
                  type = "string", locationName = "objectKey")), 
                shape = "S3ArtifactLocation", type = "structure", 
                locationName = "s3Location")), shape = "ArtifactLocation", 
                type = "structure", locationName = "location")), 
            shape = "Artifact", type = "structure")), shape = "ArtifactList", 
            type = "list", locationName = "outputArtifacts"), 
        ArtifactCredentials = structure(list(AccessKeyId = structure(logical(0), 
            shape = "AccessKeyId", type = "string", locationName = "accessKeyId"), 
            SecretAccessKey = structure(logical(0), shape = "SecretAccessKey", 
                type = "string", locationName = "secretAccessKey"), 
            SessionToken = structure(logical(0), shape = "SessionToken", 
                type = "string", locationName = "sessionToken")), 
            shape = "AWSSessionCredentials", type = "structure", 
            sensitive = TRUE, locationName = "artifactCredentials"), 
        ContinuationToken = structure(logical(0), shape = "ContinuationToken", 
            type = "string", max = 2048L, min = 1L, locationName = "continuationToken"), 
        EncryptionKey = structure(list(Id = structure(logical(0), 
            shape = "EncryptionKeyId", type = "string", max = 100L, 
            min = 1L, locationName = "id"), Type = structure(logical(0), 
            shape = "EncryptionKeyType", type = "string", locationName = "type")), 
            shape = "EncryptionKey", type = "structure", locationName = "encryptionKey")), 
        shape = "JobData", type = "structure", locationName = "data"), 
        Nonce = structure(logical(0), shape = "Nonce", type = "string", 
            max = 50L, min = 1L, locationName = "nonce"), AccountId = structure(logical(0), 
            shape = "AccountId", type = "string", pattern = "[0-9]{12}", 
            locationName = "accountId")), shape = "Job", type = "structure")), 
        shape = "JobList", type = "list", locationName = "jobs")), 
        shape = "PollForJobsOutput", type = "structure")
    return(populate(args, shape))
}

poll_for_third_party_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActionTypeId = structure(list(Category = structure(logical(0), 
        shape = "ActionCategory", type = "string", locationName = "category"), 
        Owner = structure(logical(0), shape = "ActionOwner", 
            type = "string", locationName = "owner"), Provider = structure(logical(0), 
            shape = "ActionProvider", type = "string", max = 25L, 
            min = 1L, pattern = "[0-9A-Za-z_-]+", locationName = "provider"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 9L, min = 1L, pattern = "[0-9A-Za-z_-]+", locationName = "version")), 
        shape = "ActionTypeId", type = "structure", locationName = "actionTypeId"), 
        MaxBatchSize = structure(logical(0), shape = "MaxBatchSize", 
            type = "integer", min = 1L, locationName = "maxBatchSize")), 
        shape = "PollForThirdPartyJobsInput", type = "structure")
    return(populate(args, shape))
}

poll_for_third_party_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Jobs = structure(list(structure(list(ClientId = structure(logical(0), 
        shape = "ClientId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 
        locationName = "clientId"), JobId = structure(logical(0), 
        shape = "JobId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 
        locationName = "jobId")), shape = "ThirdPartyJob", type = "structure")), 
        shape = "ThirdPartyJobList", type = "list", locationName = "jobs")), 
        shape = "PollForThirdPartyJobsOutput", type = "structure")
    return(populate(args, shape))
}

put_action_revision_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineName = structure(logical(0), 
        shape = "PipelineName", type = "string", max = 100L, 
        min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "pipelineName"), 
        StageName = structure(logical(0), shape = "StageName", 
            type = "string", max = 100L, min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", 
            locationName = "stageName"), ActionName = structure(logical(0), 
            shape = "ActionName", type = "string", max = 100L, 
            min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "actionName"), 
        ActionRevision = structure(list(RevisionId = structure(logical(0), 
            shape = "Revision", type = "string", max = 1500L, 
            min = 1L, locationName = "revisionId"), RevisionChangeId = structure(logical(0), 
            shape = "RevisionChangeIdentifier", type = "string", 
            max = 100L, min = 1L, locationName = "revisionChangeId"), 
            Created = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "created")), 
            shape = "ActionRevision", type = "structure", locationName = "actionRevision")), 
        shape = "PutActionRevisionInput", type = "structure")
    return(populate(args, shape))
}

put_action_revision_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NewRevision = structure(logical(0), 
        shape = "Boolean", type = "boolean", locationName = "newRevision"), 
        PipelineExecutionId = structure(logical(0), shape = "PipelineExecutionId", 
            type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 
            locationName = "pipelineExecutionId")), shape = "PutActionRevisionOutput", 
        type = "structure")
    return(populate(args, shape))
}

put_approval_result_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineName = structure(logical(0), 
        shape = "PipelineName", type = "string", max = 100L, 
        min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "pipelineName"), 
        StageName = structure(logical(0), shape = "StageName", 
            type = "string", max = 100L, min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", 
            locationName = "stageName"), ActionName = structure(logical(0), 
            shape = "ActionName", type = "string", max = 100L, 
            min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "actionName"), 
        Result = structure(list(Summary = structure(logical(0), 
            shape = "ApprovalSummary", type = "string", max = 512L, 
            min = 0L, locationName = "summary"), Status = structure(logical(0), 
            shape = "ApprovalStatus", type = "string", locationName = "status")), 
            shape = "ApprovalResult", type = "structure", locationName = "result"), 
        Token = structure(logical(0), shape = "ApprovalToken", 
            type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 
            locationName = "token")), shape = "PutApprovalResultInput", 
        type = "structure")
    return(populate(args, shape))
}

put_approval_result_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApprovedAt = structure(logical(0), 
        shape = "Timestamp", type = "timestamp", locationName = "approvedAt")), 
        shape = "PutApprovalResultOutput", type = "structure")
    return(populate(args, shape))
}

put_job_failure_result_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 
        locationName = "jobId"), FailureDetails = structure(list(Type = structure(logical(0), 
        shape = "FailureType", type = "string", locationName = "type"), 
        Message = structure(logical(0), shape = "Message", type = "string", 
            max = 5000L, min = 1L, locationName = "message"), 
        ExternalExecutionId = structure(logical(0), shape = "ExecutionId", 
            type = "string", max = 1500L, min = 1L, locationName = "externalExecutionId")), 
        shape = "FailureDetails", type = "structure", locationName = "failureDetails")), 
        shape = "PutJobFailureResultInput", type = "structure")
    return(populate(args, shape))
}

put_job_failure_result_output <- function () 
{
    return(list())
}

put_job_success_result_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 
        locationName = "jobId"), CurrentRevision = structure(list(Revision = structure(logical(0), 
        shape = "Revision", type = "string", max = 1500L, min = 1L, 
        locationName = "revision"), ChangeIdentifier = structure(logical(0), 
        shape = "RevisionChangeIdentifier", type = "string", 
        max = 100L, min = 1L, locationName = "changeIdentifier"), 
        Created = structure(logical(0), shape = "Time", type = "timestamp", 
            locationName = "created"), RevisionSummary = structure(logical(0), 
            shape = "RevisionSummary", type = "string", max = 2048L, 
            min = 1L, locationName = "revisionSummary")), shape = "CurrentRevision", 
        type = "structure", locationName = "currentRevision"), 
        ContinuationToken = structure(logical(0), shape = "ContinuationToken", 
            type = "string", max = 2048L, min = 1L, locationName = "continuationToken"), 
        ExecutionDetails = structure(list(Summary = structure(logical(0), 
            shape = "ExecutionSummary", type = "string", max = 2048L, 
            min = 1L, locationName = "summary"), ExternalExecutionId = structure(logical(0), 
            shape = "ExecutionId", type = "string", max = 1500L, 
            min = 1L, locationName = "externalExecutionId"), 
            PercentComplete = structure(logical(0), shape = "Percentage", 
                type = "integer", max = 100L, min = 0L, locationName = "percentComplete")), 
            shape = "ExecutionDetails", type = "structure", locationName = "executionDetails")), 
        shape = "PutJobSuccessResultInput", type = "structure")
    return(populate(args, shape))
}

put_job_success_result_output <- function () 
{
    return(list())
}

put_third_party_job_failure_result_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "ThirdPartyJobId", 
        type = "string", max = 512L, min = 1L, locationName = "jobId"), 
        ClientToken = structure(logical(0), shape = "ClientToken", 
            type = "string", max = 256L, min = 1L, locationName = "clientToken"), 
        FailureDetails = structure(list(Type = structure(logical(0), 
            shape = "FailureType", type = "string", locationName = "type"), 
            Message = structure(logical(0), shape = "Message", 
                type = "string", max = 5000L, min = 1L, locationName = "message"), 
            ExternalExecutionId = structure(logical(0), shape = "ExecutionId", 
                type = "string", max = 1500L, min = 1L, locationName = "externalExecutionId")), 
            shape = "FailureDetails", type = "structure", locationName = "failureDetails")), 
        shape = "PutThirdPartyJobFailureResultInput", type = "structure")
    return(populate(args, shape))
}

put_third_party_job_failure_result_output <- function () 
{
    return(list())
}

put_third_party_job_success_result_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "ThirdPartyJobId", 
        type = "string", max = 512L, min = 1L, locationName = "jobId"), 
        ClientToken = structure(logical(0), shape = "ClientToken", 
            type = "string", max = 256L, min = 1L, locationName = "clientToken"), 
        CurrentRevision = structure(list(Revision = structure(logical(0), 
            shape = "Revision", type = "string", max = 1500L, 
            min = 1L, locationName = "revision"), ChangeIdentifier = structure(logical(0), 
            shape = "RevisionChangeIdentifier", type = "string", 
            max = 100L, min = 1L, locationName = "changeIdentifier"), 
            Created = structure(logical(0), shape = "Time", type = "timestamp", 
                locationName = "created"), RevisionSummary = structure(logical(0), 
                shape = "RevisionSummary", type = "string", max = 2048L, 
                min = 1L, locationName = "revisionSummary")), 
            shape = "CurrentRevision", type = "structure", locationName = "currentRevision"), 
        ContinuationToken = structure(logical(0), shape = "ContinuationToken", 
            type = "string", max = 2048L, min = 1L, locationName = "continuationToken"), 
        ExecutionDetails = structure(list(Summary = structure(logical(0), 
            shape = "ExecutionSummary", type = "string", max = 2048L, 
            min = 1L, locationName = "summary"), ExternalExecutionId = structure(logical(0), 
            shape = "ExecutionId", type = "string", max = 1500L, 
            min = 1L, locationName = "externalExecutionId"), 
            PercentComplete = structure(logical(0), shape = "Percentage", 
                type = "integer", max = 100L, min = 0L, locationName = "percentComplete")), 
            shape = "ExecutionDetails", type = "structure", locationName = "executionDetails")), 
        shape = "PutThirdPartyJobSuccessResultInput", type = "structure")
    return(populate(args, shape))
}

put_third_party_job_success_result_output <- function () 
{
    return(list())
}

put_webhook_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Webhook = structure(list(Name = structure(logical(0), 
        shape = "WebhookName", type = "string", max = 100L, min = 1L, 
        pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name"), 
        TargetPipeline = structure(logical(0), shape = "PipelineName", 
            type = "string", max = 100L, min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", 
            locationName = "targetPipeline"), TargetAction = structure(logical(0), 
            shape = "ActionName", type = "string", max = 100L, 
            min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "targetAction"), 
        Filters = structure(list(structure(list(JsonPath = structure(logical(0), 
            shape = "JsonPath", type = "string", max = 150L, 
            min = 1L, locationName = "jsonPath"), MatchEquals = structure(logical(0), 
            shape = "MatchEquals", type = "string", max = 150L, 
            min = 1L, locationName = "matchEquals")), shape = "WebhookFilterRule", 
            type = "structure")), shape = "WebhookFilters", type = "list", 
            max = 5L, locationName = "filters"), Authentication = structure(logical(0), 
            shape = "WebhookAuthenticationType", type = "string", 
            locationName = "authentication"), AuthenticationConfiguration = structure(list(AllowedIPRange = structure(logical(0), 
            shape = "WebhookAuthConfigurationAllowedIPRange", 
            type = "string", max = 100L, min = 1L), SecretToken = structure(logical(0), 
            shape = "WebhookAuthConfigurationSecretToken", type = "string", 
            max = 100L, min = 1L)), shape = "WebhookAuthConfiguration", 
            type = "structure", locationName = "authenticationConfiguration")), 
        shape = "WebhookDefinition", type = "structure", locationName = "webhook")), 
        shape = "PutWebhookInput", type = "structure")
    return(populate(args, shape))
}

put_webhook_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Webhook = structure(list(Definition = structure(list(Name = structure(logical(0), 
        shape = "WebhookName", type = "string", max = 100L, min = 1L, 
        pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name"), 
        TargetPipeline = structure(logical(0), shape = "PipelineName", 
            type = "string", max = 100L, min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", 
            locationName = "targetPipeline"), TargetAction = structure(logical(0), 
            shape = "ActionName", type = "string", max = 100L, 
            min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "targetAction"), 
        Filters = structure(list(structure(list(JsonPath = structure(logical(0), 
            shape = "JsonPath", type = "string", max = 150L, 
            min = 1L, locationName = "jsonPath"), MatchEquals = structure(logical(0), 
            shape = "MatchEquals", type = "string", max = 150L, 
            min = 1L, locationName = "matchEquals")), shape = "WebhookFilterRule", 
            type = "structure")), shape = "WebhookFilters", type = "list", 
            max = 5L, locationName = "filters"), Authentication = structure(logical(0), 
            shape = "WebhookAuthenticationType", type = "string", 
            locationName = "authentication"), AuthenticationConfiguration = structure(list(AllowedIPRange = structure(logical(0), 
            shape = "WebhookAuthConfigurationAllowedIPRange", 
            type = "string", max = 100L, min = 1L), SecretToken = structure(logical(0), 
            shape = "WebhookAuthConfigurationSecretToken", type = "string", 
            max = 100L, min = 1L)), shape = "WebhookAuthConfiguration", 
            type = "structure", locationName = "authenticationConfiguration")), 
        shape = "WebhookDefinition", type = "structure", locationName = "definition"), 
        Url = structure(logical(0), shape = "WebhookUrl", type = "string", 
            max = 1000L, min = 1L, locationName = "url"), ErrorMessage = structure(logical(0), 
            shape = "WebhookErrorMessage", type = "string", locationName = "errorMessage"), 
        ErrorCode = structure(logical(0), shape = "WebhookErrorCode", 
            type = "string", locationName = "errorCode"), LastTriggered = structure(logical(0), 
            shape = "WebhookLastTriggered", type = "timestamp", 
            locationName = "lastTriggered"), Arn = structure(logical(0), 
            shape = "WebhookArn", type = "string", locationName = "arn")), 
        shape = "ListWebhookItem", type = "structure", locationName = "webhook")), 
        shape = "PutWebhookOutput", type = "structure")
    return(populate(args, shape))
}

register_webhook_with_third_party_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WebhookName = structure(logical(0), 
        shape = "WebhookName", type = "string", max = 100L, min = 1L, 
        pattern = "[A-Za-z0-9.@\\-_]+", locationName = "webhookName")), 
        shape = "RegisterWebhookWithThirdPartyInput", type = "structure")
    return(populate(args, shape))
}

register_webhook_with_third_party_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RegisterWebhookWithThirdPartyOutput", 
        type = "structure")
    return(populate(args, shape))
}

retry_stage_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineName = structure(logical(0), 
        shape = "PipelineName", type = "string", max = 100L, 
        min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "pipelineName"), 
        StageName = structure(logical(0), shape = "StageName", 
            type = "string", max = 100L, min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", 
            locationName = "stageName"), PipelineExecutionId = structure(logical(0), 
            shape = "PipelineExecutionId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 
            locationName = "pipelineExecutionId"), RetryMode = structure(logical(0), 
            shape = "StageRetryMode", type = "string", locationName = "retryMode")), 
        shape = "RetryStageExecutionInput", type = "structure")
    return(populate(args, shape))
}

retry_stage_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineExecutionId = structure(logical(0), 
        shape = "PipelineExecutionId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 
        locationName = "pipelineExecutionId")), shape = "RetryStageExecutionOutput", 
        type = "structure")
    return(populate(args, shape))
}

start_pipeline_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "PipelineName", 
        type = "string", max = 100L, min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", 
        locationName = "name")), shape = "StartPipelineExecutionInput", 
        type = "structure")
    return(populate(args, shape))
}

start_pipeline_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineExecutionId = structure(logical(0), 
        shape = "PipelineExecutionId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 
        locationName = "pipelineExecutionId")), shape = "StartPipelineExecutionOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_pipeline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Pipeline = structure(list(Name = structure(logical(0), 
        shape = "PipelineName", type = "string", max = 100L, 
        min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            max = 1024L, pattern = "arn:aws(-[\\w]+)*:iam::[0-9]{12}:role/.*", 
            locationName = "roleArn"), ArtifactStore = structure(list(Type = structure(logical(0), 
            shape = "ArtifactStoreType", type = "string", locationName = "type"), 
            Location = structure(logical(0), shape = "ArtifactStoreLocation", 
                type = "string", max = 63L, min = 3L, pattern = "[a-zA-Z0-9\\-\\.]+", 
                locationName = "location"), EncryptionKey = structure(list(Id = structure(logical(0), 
                shape = "EncryptionKeyId", type = "string", max = 100L, 
                min = 1L, locationName = "id"), Type = structure(logical(0), 
                shape = "EncryptionKeyType", type = "string", 
                locationName = "type")), shape = "EncryptionKey", 
                type = "structure", locationName = "encryptionKey")), 
            shape = "ArtifactStore", type = "structure", locationName = "artifactStore"), 
        Stages = structure(list(structure(list(Name = structure(logical(0), 
            shape = "StageName", type = "string", max = 100L, 
            min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name"), 
            Blockers = structure(list(structure(list(Name = structure(logical(0), 
                shape = "BlockerName", type = "string", max = 100L, 
                min = 1L, locationName = "name"), Type = structure(logical(0), 
                shape = "BlockerType", type = "string", locationName = "type")), 
                shape = "BlockerDeclaration", type = "structure")), 
                shape = "StageBlockerDeclarationList", type = "list", 
                locationName = "blockers"), Actions = structure(list(structure(list(Name = structure(logical(0), 
                shape = "ActionName", type = "string", max = 100L, 
                min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name"), 
                ActionTypeId = structure(list(Category = structure(logical(0), 
                  shape = "ActionCategory", type = "string", 
                  locationName = "category"), Owner = structure(logical(0), 
                  shape = "ActionOwner", type = "string", locationName = "owner"), 
                  Provider = structure(logical(0), shape = "ActionProvider", 
                    type = "string", max = 25L, min = 1L, pattern = "[0-9A-Za-z_-]+", 
                    locationName = "provider"), Version = structure(logical(0), 
                    shape = "Version", type = "string", max = 9L, 
                    min = 1L, pattern = "[0-9A-Za-z_-]+", locationName = "version")), 
                  shape = "ActionTypeId", type = "structure", 
                  locationName = "actionTypeId"), RunOrder = structure(logical(0), 
                  shape = "ActionRunOrder", type = "integer", 
                  max = 999L, min = 1L, locationName = "runOrder"), 
                Configuration = structure(list(structure(logical(0), 
                  shape = "ActionConfigurationValue", type = "string", 
                  max = 1000L, min = 1L)), shape = "ActionConfigurationMap", 
                  type = "map", locationName = "configuration"), 
                OutputArtifacts = structure(list(structure(list(Name = structure(logical(0), 
                  shape = "ArtifactName", type = "string", max = 100L, 
                  min = 1L, pattern = "[a-zA-Z0-9_\\-]+", locationName = "name")), 
                  shape = "OutputArtifact", type = "structure")), 
                  shape = "OutputArtifactList", type = "list", 
                  locationName = "outputArtifacts"), InputArtifacts = structure(list(structure(list(Name = structure(logical(0), 
                  shape = "ArtifactName", type = "string", max = 100L, 
                  min = 1L, pattern = "[a-zA-Z0-9_\\-]+", locationName = "name")), 
                  shape = "InputArtifact", type = "structure")), 
                  shape = "InputArtifactList", type = "list", 
                  locationName = "inputArtifacts"), RoleArn = structure(logical(0), 
                  shape = "RoleArn", type = "string", max = 1024L, 
                  pattern = "arn:aws(-[\\w]+)*:iam::[0-9]{12}:role/.*", 
                  locationName = "roleArn")), shape = "ActionDeclaration", 
                type = "structure")), shape = "StageActionDeclarationList", 
                type = "list", locationName = "actions")), shape = "StageDeclaration", 
            type = "structure")), shape = "PipelineStageDeclarationList", 
            type = "list", locationName = "stages"), Version = structure(logical(0), 
            shape = "PipelineVersion", type = "integer", min = 1L, 
            locationName = "version")), shape = "PipelineDeclaration", 
        type = "structure", locationName = "pipeline")), shape = "UpdatePipelineInput", 
        type = "structure")
    return(populate(args, shape))
}

update_pipeline_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Pipeline = structure(list(Name = structure(logical(0), 
        shape = "PipelineName", type = "string", max = 100L, 
        min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            max = 1024L, pattern = "arn:aws(-[\\w]+)*:iam::[0-9]{12}:role/.*", 
            locationName = "roleArn"), ArtifactStore = structure(list(Type = structure(logical(0), 
            shape = "ArtifactStoreType", type = "string", locationName = "type"), 
            Location = structure(logical(0), shape = "ArtifactStoreLocation", 
                type = "string", max = 63L, min = 3L, pattern = "[a-zA-Z0-9\\-\\.]+", 
                locationName = "location"), EncryptionKey = structure(list(Id = structure(logical(0), 
                shape = "EncryptionKeyId", type = "string", max = 100L, 
                min = 1L, locationName = "id"), Type = structure(logical(0), 
                shape = "EncryptionKeyType", type = "string", 
                locationName = "type")), shape = "EncryptionKey", 
                type = "structure", locationName = "encryptionKey")), 
            shape = "ArtifactStore", type = "structure", locationName = "artifactStore"), 
        Stages = structure(list(structure(list(Name = structure(logical(0), 
            shape = "StageName", type = "string", max = 100L, 
            min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name"), 
            Blockers = structure(list(structure(list(Name = structure(logical(0), 
                shape = "BlockerName", type = "string", max = 100L, 
                min = 1L, locationName = "name"), Type = structure(logical(0), 
                shape = "BlockerType", type = "string", locationName = "type")), 
                shape = "BlockerDeclaration", type = "structure")), 
                shape = "StageBlockerDeclarationList", type = "list", 
                locationName = "blockers"), Actions = structure(list(structure(list(Name = structure(logical(0), 
                shape = "ActionName", type = "string", max = 100L, 
                min = 1L, pattern = "[A-Za-z0-9.@\\-_]+", locationName = "name"), 
                ActionTypeId = structure(list(Category = structure(logical(0), 
                  shape = "ActionCategory", type = "string", 
                  locationName = "category"), Owner = structure(logical(0), 
                  shape = "ActionOwner", type = "string", locationName = "owner"), 
                  Provider = structure(logical(0), shape = "ActionProvider", 
                    type = "string", max = 25L, min = 1L, pattern = "[0-9A-Za-z_-]+", 
                    locationName = "provider"), Version = structure(logical(0), 
                    shape = "Version", type = "string", max = 9L, 
                    min = 1L, pattern = "[0-9A-Za-z_-]+", locationName = "version")), 
                  shape = "ActionTypeId", type = "structure", 
                  locationName = "actionTypeId"), RunOrder = structure(logical(0), 
                  shape = "ActionRunOrder", type = "integer", 
                  max = 999L, min = 1L, locationName = "runOrder"), 
                Configuration = structure(list(structure(logical(0), 
                  shape = "ActionConfigurationValue", type = "string", 
                  max = 1000L, min = 1L)), shape = "ActionConfigurationMap", 
                  type = "map", locationName = "configuration"), 
                OutputArtifacts = structure(list(structure(list(Name = structure(logical(0), 
                  shape = "ArtifactName", type = "string", max = 100L, 
                  min = 1L, pattern = "[a-zA-Z0-9_\\-]+", locationName = "name")), 
                  shape = "OutputArtifact", type = "structure")), 
                  shape = "OutputArtifactList", type = "list", 
                  locationName = "outputArtifacts"), InputArtifacts = structure(list(structure(list(Name = structure(logical(0), 
                  shape = "ArtifactName", type = "string", max = 100L, 
                  min = 1L, pattern = "[a-zA-Z0-9_\\-]+", locationName = "name")), 
                  shape = "InputArtifact", type = "structure")), 
                  shape = "InputArtifactList", type = "list", 
                  locationName = "inputArtifacts"), RoleArn = structure(logical(0), 
                  shape = "RoleArn", type = "string", max = 1024L, 
                  pattern = "arn:aws(-[\\w]+)*:iam::[0-9]{12}:role/.*", 
                  locationName = "roleArn")), shape = "ActionDeclaration", 
                type = "structure")), shape = "StageActionDeclarationList", 
                type = "list", locationName = "actions")), shape = "StageDeclaration", 
            type = "structure")), shape = "PipelineStageDeclarationList", 
            type = "list", locationName = "stages"), Version = structure(logical(0), 
            shape = "PipelineVersion", type = "integer", min = 1L, 
            locationName = "version")), shape = "PipelineDeclaration", 
        type = "structure", locationName = "pipeline")), shape = "UpdatePipelineOutput", 
        type = "structure")
    return(populate(args, shape))
}
