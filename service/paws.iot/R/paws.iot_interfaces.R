accept_certificate_transfer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateId = structure(logical(0), 
        shape = "CertificateId", location = "uri", locationName = "certificateId", 
        type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+"), 
        SetAsActive = structure(logical(0), shape = "SetAsActive", 
            location = "querystring", locationName = "setAsActive", 
            type = "boolean")), shape = "AcceptCertificateTransferRequest", 
        type = "structure")
    return(populate(args, shape))
}

accept_certificate_transfer_output <- function () 
{
    return(list())
}

add_thing_to_thing_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingGroupName = structure(logical(0), 
        shape = "ThingGroupName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "thingGroupName"), 
        ThingGroupArn = structure(logical(0), shape = "ThingGroupArn", 
            type = "string", locationName = "thingGroupArn"), 
        ThingName = structure(logical(0), shape = "ThingName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+", 
            locationName = "thingName"), ThingArn = structure(logical(0), 
            shape = "ThingArn", type = "string", locationName = "thingArn")), 
        shape = "AddThingToThingGroupRequest", type = "structure")
    return(populate(args, shape))
}

add_thing_to_thing_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AddThingToThingGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

associate_targets_with_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Targets = structure(list(structure(logical(0), 
        shape = "TargetArn", type = "string")), shape = "JobTargets", 
        type = "list", min = 1L, locationName = "targets"), JobId = structure(logical(0), 
        shape = "JobId", location = "uri", locationName = "jobId", 
        type = "string", max = 64L, min = 1L, pattern = "[a-zA-Z0-9_-]+"), 
        Comment = structure(logical(0), shape = "Comment", type = "string", 
            max = 2028L, pattern = "[^\\p{C}]+", locationName = "comment")), 
        shape = "AssociateTargetsWithJobRequest", type = "structure")
    return(populate(args, shape))
}

associate_targets_with_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobArn = structure(logical(0), shape = "JobArn", 
        type = "string", locationName = "jobArn"), JobId = structure(logical(0), 
        shape = "JobId", type = "string", max = 64L, min = 1L, 
        pattern = "[a-zA-Z0-9_-]+", locationName = "jobId"), 
        Description = structure(logical(0), shape = "JobDescription", 
            type = "string", max = 2028L, pattern = "[^\\p{C}]+", 
            locationName = "description")), shape = "AssociateTargetsWithJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

attach_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", location = "uri", locationName = "policyName", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        Target = structure(logical(0), shape = "PolicyTarget", 
            type = "string", locationName = "target")), shape = "AttachPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

attach_policy_output <- function () 
{
    return(list())
}

attach_principal_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", location = "uri", locationName = "policyName", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        Principal = structure(logical(0), shape = "Principal", 
            location = "header", locationName = "principal", 
            type = "string")), shape = "AttachPrincipalPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

attach_principal_policy_output <- function () 
{
    return(list())
}

attach_security_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityProfileName = structure(logical(0), 
        shape = "SecurityProfileName", location = "uri", locationName = "securityProfileName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        SecurityProfileTargetArn = structure(logical(0), shape = "SecurityProfileTargetArn", 
            location = "querystring", locationName = "securityProfileTargetArn", 
            type = "string")), shape = "AttachSecurityProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

attach_security_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AttachSecurityProfileResponse", 
        type = "structure")
    return(populate(args, shape))
}

attach_thing_principal_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingName = structure(logical(0), 
        shape = "ThingName", location = "uri", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        Principal = structure(logical(0), shape = "Principal", 
            location = "header", locationName = "principal", 
            type = "string")), shape = "AttachThingPrincipalRequest", 
        type = "structure")
    return(populate(args, shape))
}

attach_thing_principal_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AttachThingPrincipalResponse", 
        type = "structure")
    return(populate(args, shape))
}

cancel_audit_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskId = structure(logical(0), shape = "AuditTaskId", 
        location = "uri", locationName = "taskId", type = "string", 
        max = 40L, min = 1L, pattern = "[a-zA-Z0-9\\-]+")), shape = "CancelAuditTaskRequest", 
        type = "structure")
    return(populate(args, shape))
}

cancel_audit_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CancelAuditTaskResponse", 
        type = "structure")
    return(populate(args, shape))
}

cancel_certificate_transfer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateId = structure(logical(0), 
        shape = "CertificateId", location = "uri", locationName = "certificateId", 
        type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+")), 
        shape = "CancelCertificateTransferRequest", type = "structure")
    return(populate(args, shape))
}

cancel_certificate_transfer_output <- function () 
{
    return(list())
}

cancel_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        location = "uri", locationName = "jobId", type = "string", 
        max = 64L, min = 1L, pattern = "[a-zA-Z0-9_-]+"), Comment = structure(logical(0), 
        shape = "Comment", type = "string", max = 2028L, pattern = "[^\\p{C}]+", 
        locationName = "comment"), Force = structure(logical(0), 
        shape = "ForceFlag", location = "querystring", locationName = "force", 
        type = "boolean")), shape = "CancelJobRequest", type = "structure")
    return(populate(args, shape))
}

cancel_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobArn = structure(logical(0), shape = "JobArn", 
        type = "string", locationName = "jobArn"), JobId = structure(logical(0), 
        shape = "JobId", type = "string", max = 64L, min = 1L, 
        pattern = "[a-zA-Z0-9_-]+", locationName = "jobId"), 
        Description = structure(logical(0), shape = "JobDescription", 
            type = "string", max = 2028L, pattern = "[^\\p{C}]+", 
            locationName = "description")), shape = "CancelJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

cancel_job_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        location = "uri", locationName = "jobId", type = "string", 
        max = 64L, min = 1L, pattern = "[a-zA-Z0-9_-]+"), ThingName = structure(logical(0), 
        shape = "ThingName", location = "uri", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        Force = structure(logical(0), shape = "ForceFlag", location = "querystring", 
            locationName = "force", type = "boolean"), ExpectedVersion = structure(logical(0), 
            shape = "ExpectedVersion", type = "long", locationName = "expectedVersion"), 
        StatusDetails = structure(list(structure(logical(0), 
            shape = "DetailsValue", type = "string", max = 1024L, 
            min = 1L, pattern = "[^\\p{C}]*+")), shape = "DetailsMap", 
            type = "map", locationName = "statusDetails")), shape = "CancelJobExecutionRequest", 
        type = "structure")
    return(populate(args, shape))
}

cancel_job_execution_output <- function () 
{
    return(list())
}

clear_default_authorizer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ClearDefaultAuthorizerRequest", 
        type = "structure")
    return(populate(args, shape))
}

clear_default_authorizer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ClearDefaultAuthorizerResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_authorizer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthorizerName = structure(logical(0), 
        shape = "AuthorizerName", location = "uri", locationName = "authorizerName", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w=,@-]+"), 
        AuthorizerFunctionArn = structure(logical(0), shape = "AuthorizerFunctionArn", 
            type = "string", locationName = "authorizerFunctionArn"), 
        TokenKeyName = structure(logical(0), shape = "TokenKeyName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+", 
            locationName = "tokenKeyName"), TokenSigningPublicKeys = structure(list(structure(logical(0), 
            shape = "KeyValue", type = "string", max = 5120L)), 
            shape = "PublicKeyMap", type = "map", locationName = "tokenSigningPublicKeys"), 
        Status = structure(logical(0), shape = "AuthorizerStatus", 
            type = "string", locationName = "status")), shape = "CreateAuthorizerRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_authorizer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthorizerName = structure(logical(0), 
        shape = "AuthorizerName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w=,@-]+", locationName = "authorizerName"), 
        AuthorizerArn = structure(logical(0), shape = "AuthorizerArn", 
            type = "string", locationName = "authorizerArn")), 
        shape = "CreateAuthorizerResponse", type = "structure")
    return(populate(args, shape))
}

create_certificate_from_csr_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateSigningRequest = structure(logical(0), 
        shape = "CertificateSigningRequest", type = "string", 
        min = 1L, locationName = "certificateSigningRequest"), 
        SetAsActive = structure(logical(0), shape = "SetAsActive", 
            location = "querystring", locationName = "setAsActive", 
            type = "boolean")), shape = "CreateCertificateFromCsrRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_certificate_from_csr_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateArn = structure(logical(0), 
        shape = "CertificateArn", type = "string", locationName = "certificateArn"), 
        CertificateId = structure(logical(0), shape = "CertificateId", 
            type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+", 
            locationName = "certificateId"), CertificatePem = structure(logical(0), 
            shape = "CertificatePem", type = "string", max = 65536L, 
            min = 1L, locationName = "certificatePem")), shape = "CreateCertificateFromCsrResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        location = "uri", locationName = "jobId", type = "string", 
        max = 64L, min = 1L, pattern = "[a-zA-Z0-9_-]+"), Targets = structure(list(structure(logical(0), 
        shape = "TargetArn", type = "string")), shape = "JobTargets", 
        type = "list", min = 1L, locationName = "targets"), DocumentSource = structure(logical(0), 
        shape = "JobDocumentSource", type = "string", max = 1350L, 
        min = 1L, locationName = "documentSource"), Document = structure(logical(0), 
        shape = "JobDocument", type = "string", max = 32768L, 
        locationName = "document"), Description = structure(logical(0), 
        shape = "JobDescription", type = "string", max = 2028L, 
        pattern = "[^\\p{C}]+", locationName = "description"), 
        PresignedUrlConfig = structure(list(RoleArn = structure(logical(0), 
            shape = "RoleArn", type = "string", max = 2048L, 
            min = 20L, locationName = "roleArn"), ExpiresInSec = structure(logical(0), 
            shape = "ExpiresInSec", type = "long", max = 3600L, 
            min = 60L, locationName = "expiresInSec")), shape = "PresignedUrlConfig", 
            type = "structure", locationName = "presignedUrlConfig"), 
        TargetSelection = structure(logical(0), shape = "TargetSelection", 
            type = "string", locationName = "targetSelection"), 
        JobExecutionsRolloutConfig = structure(list(MaximumPerMinute = structure(logical(0), 
            shape = "MaxJobExecutionsPerMin", type = "integer", 
            max = 1000L, min = 1L, locationName = "maximumPerMinute")), 
            shape = "JobExecutionsRolloutConfig", type = "structure", 
            locationName = "jobExecutionsRolloutConfig"), TimeoutConfig = structure(list(InProgressTimeoutInMinutes = structure(logical(0), 
            shape = "InProgressTimeoutInMinutes", type = "long", 
            locationName = "inProgressTimeoutInMinutes")), shape = "TimeoutConfig", 
            type = "structure", locationName = "timeoutConfig")), 
        shape = "CreateJobRequest", type = "structure")
    return(populate(args, shape))
}

create_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobArn = structure(logical(0), shape = "JobArn", 
        type = "string", locationName = "jobArn"), JobId = structure(logical(0), 
        shape = "JobId", type = "string", max = 64L, min = 1L, 
        pattern = "[a-zA-Z0-9_-]+", locationName = "jobId"), 
        Description = structure(logical(0), shape = "JobDescription", 
            type = "string", max = 2028L, pattern = "[^\\p{C}]+", 
            locationName = "description")), shape = "CreateJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_keys_and_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SetAsActive = structure(logical(0), 
        shape = "SetAsActive", location = "querystring", locationName = "setAsActive", 
        type = "boolean")), shape = "CreateKeysAndCertificateRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_keys_and_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateArn = structure(logical(0), 
        shape = "CertificateArn", type = "string", locationName = "certificateArn"), 
        CertificateId = structure(logical(0), shape = "CertificateId", 
            type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+", 
            locationName = "certificateId"), CertificatePem = structure(logical(0), 
            shape = "CertificatePem", type = "string", max = 65536L, 
            min = 1L, locationName = "certificatePem"), KeyPair = structure(list(PublicKey = structure(logical(0), 
            shape = "PublicKey", type = "string", min = 1L), 
            PrivateKey = structure(logical(0), shape = "PrivateKey", 
                type = "string", min = 1L, sensitive = TRUE)), 
            shape = "KeyPair", type = "structure", locationName = "keyPair")), 
        shape = "CreateKeysAndCertificateResponse", type = "structure")
    return(populate(args, shape))
}

create_ota_update_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OtaUpdateId = structure(logical(0), 
        shape = "OTAUpdateId", location = "uri", locationName = "otaUpdateId", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+"), 
        Description = structure(logical(0), shape = "OTAUpdateDescription", 
            type = "string", max = 2028L, pattern = "[^\\p{C}]+", 
            locationName = "description"), Targets = structure(list(structure(logical(0), 
            shape = "Target", type = "string")), shape = "Targets", 
            type = "list", min = 1L, locationName = "targets"), 
        TargetSelection = structure(logical(0), shape = "TargetSelection", 
            type = "string", locationName = "targetSelection"), 
        AwsJobExecutionsRolloutConfig = structure(list(MaximumPerMinute = structure(logical(0), 
            shape = "MaximumPerMinute", type = "integer", max = 1000L, 
            min = 1L, locationName = "maximumPerMinute")), shape = "AwsJobExecutionsRolloutConfig", 
            type = "structure", locationName = "awsJobExecutionsRolloutConfig"), 
        Files = structure(list(structure(list(FileName = structure(logical(0), 
            shape = "FileName", type = "string", locationName = "fileName"), 
            FileVersion = structure(logical(0), shape = "OTAUpdateFileVersion", 
                type = "string", locationName = "fileVersion"), 
            FileLocation = structure(list(Stream = structure(list(StreamId = structure(logical(0), 
                shape = "StreamId", type = "string", max = 128L, 
                min = 1L, pattern = "[a-zA-Z0-9_-]+", locationName = "streamId"), 
                FileId = structure(logical(0), shape = "FileId", 
                  type = "integer", max = 255L, min = 0L, locationName = "fileId")), 
                shape = "Stream", type = "structure", locationName = "stream"), 
                S3Location = structure(list(Bucket = structure(logical(0), 
                  shape = "S3Bucket", type = "string", min = 1L, 
                  locationName = "bucket"), Key = structure(logical(0), 
                  shape = "S3Key", type = "string", min = 1L, 
                  locationName = "key"), Version = structure(logical(0), 
                  shape = "S3Version", type = "string", locationName = "version")), 
                  shape = "S3Location", type = "structure", locationName = "s3Location")), 
                shape = "FileLocation", type = "structure", locationName = "fileLocation"), 
            CodeSigning = structure(list(AwsSignerJobId = structure(logical(0), 
                shape = "SigningJobId", type = "string", locationName = "awsSignerJobId"), 
                StartSigningJobParameter = structure(list(SigningProfileParameter = structure(list(CertificateArn = structure(logical(0), 
                  shape = "CertificateArn", type = "string", 
                  locationName = "certificateArn"), Platform = structure(logical(0), 
                  shape = "Platform", type = "string", locationName = "platform"), 
                  CertificatePathOnDevice = structure(logical(0), 
                    shape = "CertificatePathOnDevice", type = "string", 
                    locationName = "certificatePathOnDevice")), 
                  shape = "SigningProfileParameter", type = "structure", 
                  locationName = "signingProfileParameter"), 
                  SigningProfileName = structure(logical(0), 
                    shape = "SigningProfileName", type = "string", 
                    locationName = "signingProfileName"), Destination = structure(list(S3Destination = structure(list(Bucket = structure(logical(0), 
                    shape = "S3Bucket", type = "string", min = 1L, 
                    locationName = "bucket"), Prefix = structure(logical(0), 
                    shape = "Prefix", type = "string", locationName = "prefix")), 
                    shape = "S3Destination", type = "structure", 
                    locationName = "s3Destination")), shape = "Destination", 
                    type = "structure", locationName = "destination")), 
                  shape = "StartSigningJobParameter", type = "structure", 
                  locationName = "startSigningJobParameter"), 
                CustomCodeSigning = structure(list(Signature = structure(list(InlineDocument = structure(logical(0), 
                  shape = "Signature", type = "blob", locationName = "inlineDocument")), 
                  shape = "CodeSigningSignature", type = "structure", 
                  locationName = "signature"), CertificateChain = structure(list(CertificateName = structure(logical(0), 
                  shape = "CertificateName", type = "string", 
                  locationName = "certificateName"), InlineDocument = structure(logical(0), 
                  shape = "InlineDocument", type = "string", 
                  locationName = "inlineDocument")), shape = "CodeSigningCertificateChain", 
                  type = "structure", locationName = "certificateChain"), 
                  HashAlgorithm = structure(logical(0), shape = "HashAlgorithm", 
                    type = "string", locationName = "hashAlgorithm"), 
                  SignatureAlgorithm = structure(logical(0), 
                    shape = "SignatureAlgorithm", type = "string", 
                    locationName = "signatureAlgorithm")), shape = "CustomCodeSigning", 
                  type = "structure", locationName = "customCodeSigning")), 
                shape = "CodeSigning", type = "structure", locationName = "codeSigning"), 
            Attributes = structure(list(structure(logical(0), 
                shape = "Value", type = "string")), shape = "AttributesMap", 
                type = "map", locationName = "attributes")), 
            shape = "OTAUpdateFile", type = "structure")), shape = "OTAUpdateFiles", 
            type = "list", max = 50L, min = 1L, locationName = "files"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            max = 2048L, min = 20L, locationName = "roleArn"), 
        AdditionalParameters = structure(list(structure(logical(0), 
            shape = "Value", type = "string")), shape = "AdditionalParameterMap", 
            type = "map", locationName = "additionalParameters")), 
        shape = "CreateOTAUpdateRequest", type = "structure")
    return(populate(args, shape))
}

create_ota_update_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OtaUpdateId = structure(logical(0), 
        shape = "OTAUpdateId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_-]+", locationName = "otaUpdateId"), 
        AwsIotJobId = structure(logical(0), shape = "AwsIotJobId", 
            type = "string", locationName = "awsIotJobId"), OtaUpdateArn = structure(logical(0), 
            shape = "OTAUpdateArn", type = "string", locationName = "otaUpdateArn"), 
        AwsIotJobArn = structure(logical(0), shape = "AwsIotJobArn", 
            type = "string", locationName = "awsIotJobArn"), 
        OtaUpdateStatus = structure(logical(0), shape = "OTAUpdateStatus", 
            type = "string", locationName = "otaUpdateStatus")), 
        shape = "CreateOTAUpdateResponse", type = "structure")
    return(populate(args, shape))
}

create_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", location = "uri", locationName = "policyName", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        PolicyDocument = structure(logical(0), shape = "PolicyDocument", 
            type = "string", locationName = "policyDocument")), 
        shape = "CreatePolicyRequest", type = "structure")
    return(populate(args, shape))
}

create_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string", max = 128L, min = 1L, 
        pattern = "[\\w+=,.@-]+", locationName = "policyName"), 
        PolicyArn = structure(logical(0), shape = "PolicyArn", 
            type = "string", locationName = "policyArn"), PolicyDocument = structure(logical(0), 
            shape = "PolicyDocument", type = "string", locationName = "policyDocument"), 
        PolicyVersionId = structure(logical(0), shape = "PolicyVersionId", 
            type = "string", pattern = "[0-9]+", locationName = "policyVersionId")), 
        shape = "CreatePolicyResponse", type = "structure")
    return(populate(args, shape))
}

create_policy_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", location = "uri", locationName = "policyName", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        PolicyDocument = structure(logical(0), shape = "PolicyDocument", 
            type = "string", locationName = "policyDocument"), 
        SetAsDefault = structure(logical(0), shape = "SetAsDefault", 
            location = "querystring", locationName = "setAsDefault", 
            type = "boolean")), shape = "CreatePolicyVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_policy_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyArn = structure(logical(0), 
        shape = "PolicyArn", type = "string", locationName = "policyArn"), 
        PolicyDocument = structure(logical(0), shape = "PolicyDocument", 
            type = "string", locationName = "policyDocument"), 
        PolicyVersionId = structure(logical(0), shape = "PolicyVersionId", 
            type = "string", pattern = "[0-9]+", locationName = "policyVersionId"), 
        IsDefaultVersion = structure(logical(0), shape = "IsDefaultVersion", 
            type = "boolean", locationName = "isDefaultVersion")), 
        shape = "CreatePolicyVersionResponse", type = "structure")
    return(populate(args, shape))
}

create_role_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleAlias = structure(logical(0), 
        shape = "RoleAlias", location = "uri", locationName = "roleAlias", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w=,@-]+"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            max = 2048L, min = 20L, locationName = "roleArn"), 
        CredentialDurationSeconds = structure(logical(0), shape = "CredentialDurationSeconds", 
            type = "integer", max = 3600L, min = 900L, locationName = "credentialDurationSeconds")), 
        shape = "CreateRoleAliasRequest", type = "structure")
    return(populate(args, shape))
}

create_role_alias_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleAlias = structure(logical(0), 
        shape = "RoleAlias", type = "string", max = 128L, min = 1L, 
        pattern = "[\\w=,@-]+", locationName = "roleAlias"), 
        RoleAliasArn = structure(logical(0), shape = "RoleAliasArn", 
            type = "string", locationName = "roleAliasArn")), 
        shape = "CreateRoleAliasResponse", type = "structure")
    return(populate(args, shape))
}

create_scheduled_audit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Frequency = structure(logical(0), 
        shape = "AuditFrequency", type = "string", locationName = "frequency"), 
        DayOfMonth = structure(logical(0), shape = "DayOfMonth", 
            type = "string", pattern = "^([1-9]|[12][0-9]|3[01])$|^LAST$", 
            locationName = "dayOfMonth"), DayOfWeek = structure(logical(0), 
            shape = "DayOfWeek", type = "string", locationName = "dayOfWeek"), 
        TargetCheckNames = structure(list(structure(logical(0), 
            shape = "AuditCheckName", type = "string")), shape = "TargetAuditCheckNames", 
            type = "list", locationName = "targetCheckNames"), 
        ScheduledAuditName = structure(logical(0), shape = "ScheduledAuditName", 
            location = "uri", locationName = "scheduledAuditName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+")), 
        shape = "CreateScheduledAuditRequest", type = "structure")
    return(populate(args, shape))
}

create_scheduled_audit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScheduledAuditArn = structure(logical(0), 
        shape = "ScheduledAuditArn", type = "string", locationName = "scheduledAuditArn")), 
        shape = "CreateScheduledAuditResponse", type = "structure")
    return(populate(args, shape))
}

create_security_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityProfileName = structure(logical(0), 
        shape = "SecurityProfileName", location = "uri", locationName = "securityProfileName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        SecurityProfileDescription = structure(logical(0), shape = "SecurityProfileDescription", 
            type = "string", max = 1000L, pattern = "[\\p{Graph}\\x20]*", 
            locationName = "securityProfileDescription"), Behaviors = structure(list(structure(list(Name = structure(logical(0), 
            shape = "BehaviorName", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "name"), 
            Metric = structure(logical(0), shape = "BehaviorMetric", 
                type = "string", locationName = "metric"), Criteria = structure(list(ComparisonOperator = structure(logical(0), 
                shape = "ComparisonOperator", type = "string", 
                locationName = "comparisonOperator"), Value = structure(list(Count = structure(logical(0), 
                shape = "UnsignedLong", type = "long", min = 0L, 
                locationName = "count"), Cidrs = structure(list(structure(logical(0), 
                shape = "Cidr", type = "string", max = 43L, min = 2L, 
                pattern = "[a-fA-F0-9:\\.\\/]+")), shape = "Cidrs", 
                type = "list", locationName = "cidrs"), Ports = structure(list(structure(logical(0), 
                shape = "Port", type = "integer", max = 65535L, 
                min = 0L)), shape = "Ports", type = "list", locationName = "ports")), 
                shape = "MetricValue", type = "structure", locationName = "value"), 
                DurationSeconds = structure(logical(0), shape = "DurationSeconds", 
                  type = "integer", locationName = "durationSeconds")), 
                shape = "BehaviorCriteria", type = "structure", 
                locationName = "criteria")), shape = "Behavior", 
            type = "structure")), shape = "Behaviors", type = "list", 
            max = 100L, locationName = "behaviors"), AlertTargets = structure(list(structure(list(AlertTargetArn = structure(logical(0), 
            shape = "AlertTargetArn", type = "string", locationName = "alertTargetArn"), 
            RoleArn = structure(logical(0), shape = "RoleArn", 
                type = "string", max = 2048L, min = 20L, locationName = "roleArn")), 
            shape = "AlertTarget", type = "structure")), shape = "AlertTargets", 
            type = "map", locationName = "alertTargets")), shape = "CreateSecurityProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_security_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityProfileName = structure(logical(0), 
        shape = "SecurityProfileName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "securityProfileName"), 
        SecurityProfileArn = structure(logical(0), shape = "SecurityProfileArn", 
            type = "string", locationName = "securityProfileArn")), 
        shape = "CreateSecurityProfileResponse", type = "structure")
    return(populate(args, shape))
}

create_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamId = structure(logical(0), 
        shape = "StreamId", location = "uri", locationName = "streamId", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+"), 
        Description = structure(logical(0), shape = "StreamDescription", 
            type = "string", max = 2028L, pattern = "[^\\p{C}]+", 
            locationName = "description"), Files = structure(list(structure(list(FileId = structure(logical(0), 
            shape = "FileId", type = "integer", max = 255L, min = 0L, 
            locationName = "fileId"), S3Location = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", min = 1L, locationName = "bucket"), 
            Key = structure(logical(0), shape = "S3Key", type = "string", 
                min = 1L, locationName = "key"), Version = structure(logical(0), 
                shape = "S3Version", type = "string", locationName = "version")), 
            shape = "S3Location", type = "structure", locationName = "s3Location")), 
            shape = "StreamFile", type = "structure")), shape = "StreamFiles", 
            type = "list", max = 50L, min = 1L, locationName = "files"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            max = 2048L, min = 20L, locationName = "roleArn")), 
        shape = "CreateStreamRequest", type = "structure")
    return(populate(args, shape))
}

create_stream_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamId = structure(logical(0), 
        shape = "StreamId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_-]+", locationName = "streamId"), 
        StreamArn = structure(logical(0), shape = "StreamArn", 
            type = "string", locationName = "streamArn"), Description = structure(logical(0), 
            shape = "StreamDescription", type = "string", max = 2028L, 
            pattern = "[^\\p{C}]+", locationName = "description"), 
        StreamVersion = structure(logical(0), shape = "StreamVersion", 
            type = "integer", max = 65535L, min = 0L, locationName = "streamVersion")), 
        shape = "CreateStreamResponse", type = "structure")
    return(populate(args, shape))
}

create_thing_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingName = structure(logical(0), 
        shape = "ThingName", location = "uri", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        ThingTypeName = structure(logical(0), shape = "ThingTypeName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+", 
            locationName = "thingTypeName"), AttributePayload = structure(list(Attributes = structure(list(structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 800L, 
            pattern = "[a-zA-Z0-9_.,@/:#-]*")), shape = "Attributes", 
            type = "map", locationName = "attributes"), Merge = structure(logical(0), 
            shape = "Flag", type = "boolean", locationName = "merge")), 
            shape = "AttributePayload", type = "structure", locationName = "attributePayload")), 
        shape = "CreateThingRequest", type = "structure")
    return(populate(args, shape))
}

create_thing_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingName = structure(logical(0), 
        shape = "ThingName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9:_-]+", locationName = "thingName"), 
        ThingArn = structure(logical(0), shape = "ThingArn", 
            type = "string", locationName = "thingArn"), ThingId = structure(logical(0), 
            shape = "ThingId", type = "string", locationName = "thingId")), 
        shape = "CreateThingResponse", type = "structure")
    return(populate(args, shape))
}

create_thing_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingGroupName = structure(logical(0), 
        shape = "ThingGroupName", location = "uri", locationName = "thingGroupName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        ParentGroupName = structure(logical(0), shape = "ThingGroupName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+", 
            locationName = "parentGroupName"), ThingGroupProperties = structure(list(ThingGroupDescription = structure(logical(0), 
            shape = "ThingGroupDescription", type = "string", 
            max = 2028L, pattern = "[\\p{Graph}\\x20]*", locationName = "thingGroupDescription"), 
            AttributePayload = structure(list(Attributes = structure(list(structure(logical(0), 
                shape = "AttributeValue", type = "string", max = 800L, 
                pattern = "[a-zA-Z0-9_.,@/:#-]*")), shape = "Attributes", 
                type = "map", locationName = "attributes"), Merge = structure(logical(0), 
                shape = "Flag", type = "boolean", locationName = "merge")), 
                shape = "AttributePayload", type = "structure", 
                locationName = "attributePayload")), shape = "ThingGroupProperties", 
            type = "structure", locationName = "thingGroupProperties")), 
        shape = "CreateThingGroupRequest", type = "structure")
    return(populate(args, shape))
}

create_thing_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingGroupName = structure(logical(0), 
        shape = "ThingGroupName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "thingGroupName"), 
        ThingGroupArn = structure(logical(0), shape = "ThingGroupArn", 
            type = "string", locationName = "thingGroupArn"), 
        ThingGroupId = structure(logical(0), shape = "ThingGroupId", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9\\-]+", 
            locationName = "thingGroupId")), shape = "CreateThingGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_thing_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingTypeName = structure(logical(0), 
        shape = "ThingTypeName", location = "uri", locationName = "thingTypeName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        ThingTypeProperties = structure(list(ThingTypeDescription = structure(logical(0), 
            shape = "ThingTypeDescription", type = "string", 
            max = 2028L, pattern = "[\\p{Graph}\\x20]*", locationName = "thingTypeDescription"), 
            SearchableAttributes = structure(list(structure(logical(0), 
                shape = "AttributeName", type = "string", max = 128L, 
                pattern = "[a-zA-Z0-9_.,@/:#-]+")), shape = "SearchableAttributes", 
                type = "list", locationName = "searchableAttributes")), 
            shape = "ThingTypeProperties", type = "structure", 
            locationName = "thingTypeProperties")), shape = "CreateThingTypeRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_thing_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingTypeName = structure(logical(0), 
        shape = "ThingTypeName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "thingTypeName"), 
        ThingTypeArn = structure(logical(0), shape = "ThingTypeArn", 
            type = "string", locationName = "thingTypeArn"), 
        ThingTypeId = structure(logical(0), shape = "ThingTypeId", 
            type = "string", locationName = "thingTypeId")), 
        shape = "CreateThingTypeResponse", type = "structure")
    return(populate(args, shape))
}

create_topic_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleName = structure(logical(0), 
        shape = "RuleName", location = "uri", locationName = "ruleName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$"), 
        TopicRulePayload = structure(list(Sql = structure(logical(0), 
            shape = "SQL", type = "string", locationName = "sql"), 
            Description = structure(logical(0), shape = "Description", 
                type = "string", locationName = "description"), 
            Actions = structure(list(structure(list(DynamoDB = structure(list(TableName = structure(logical(0), 
                shape = "TableName", type = "string", locationName = "tableName"), 
                RoleArn = structure(logical(0), shape = "AwsArn", 
                  type = "string", locationName = "roleArn"), 
                Operation = structure(logical(0), shape = "DynamoOperation", 
                  type = "string", locationName = "operation"), 
                HashKeyField = structure(logical(0), shape = "HashKeyField", 
                  type = "string", locationName = "hashKeyField"), 
                HashKeyValue = structure(logical(0), shape = "HashKeyValue", 
                  type = "string", locationName = "hashKeyValue"), 
                HashKeyType = structure(logical(0), shape = "DynamoKeyType", 
                  type = "string", locationName = "hashKeyType"), 
                RangeKeyField = structure(logical(0), shape = "RangeKeyField", 
                  type = "string", locationName = "rangeKeyField"), 
                RangeKeyValue = structure(logical(0), shape = "RangeKeyValue", 
                  type = "string", locationName = "rangeKeyValue"), 
                RangeKeyType = structure(logical(0), shape = "DynamoKeyType", 
                  type = "string", locationName = "rangeKeyType"), 
                PayloadField = structure(logical(0), shape = "PayloadField", 
                  type = "string", locationName = "payloadField")), 
                shape = "DynamoDBAction", type = "structure", 
                locationName = "dynamoDB"), DynamoDBv2 = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                PutItem = structure(list(TableName = structure(logical(0), 
                  shape = "TableName", type = "string", locationName = "tableName")), 
                  shape = "PutItemInput", type = "structure", 
                  locationName = "putItem")), shape = "DynamoDBv2Action", 
                type = "structure", locationName = "dynamoDBv2"), 
                Lambda = structure(list(FunctionArn = structure(logical(0), 
                  shape = "FunctionArn", type = "string", locationName = "functionArn")), 
                  shape = "LambdaAction", type = "structure", 
                  locationName = "lambda"), Sns = structure(list(TargetArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "targetArn"), 
                  RoleArn = structure(logical(0), shape = "AwsArn", 
                    type = "string", locationName = "roleArn"), 
                  MessageFormat = structure(logical(0), shape = "MessageFormat", 
                    type = "string", locationName = "messageFormat")), 
                  shape = "SnsAction", type = "structure", locationName = "sns"), 
                Sqs = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  QueueUrl = structure(logical(0), shape = "QueueUrl", 
                    type = "string", locationName = "queueUrl"), 
                  UseBase64 = structure(logical(0), shape = "UseBase64", 
                    type = "boolean", locationName = "useBase64")), 
                  shape = "SqsAction", type = "structure", locationName = "sqs"), 
                Kinesis = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  StreamName = structure(logical(0), shape = "StreamName", 
                    type = "string", locationName = "streamName"), 
                  PartitionKey = structure(logical(0), shape = "PartitionKey", 
                    type = "string", locationName = "partitionKey")), 
                  shape = "KinesisAction", type = "structure", 
                  locationName = "kinesis"), Republish = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  Topic = structure(logical(0), shape = "TopicPattern", 
                    type = "string", locationName = "topic")), 
                  shape = "RepublishAction", type = "structure", 
                  locationName = "republish"), S3 = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  BucketName = structure(logical(0), shape = "BucketName", 
                    type = "string", locationName = "bucketName"), 
                  Key = structure(logical(0), shape = "Key", 
                    type = "string", locationName = "key"), CannedAcl = structure(logical(0), 
                    shape = "CannedAccessControlList", type = "string", 
                    locationName = "cannedAcl")), shape = "S3Action", 
                  type = "structure", locationName = "s3"), Firehose = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  DeliveryStreamName = structure(logical(0), 
                    shape = "DeliveryStreamName", type = "string", 
                    locationName = "deliveryStreamName"), Separator = structure(logical(0), 
                    shape = "FirehoseSeparator", type = "string", 
                    pattern = "([\\n\\t])|(\\r\\n)|(,)", locationName = "separator")), 
                  shape = "FirehoseAction", type = "structure", 
                  locationName = "firehose"), CloudwatchMetric = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  MetricNamespace = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricNamespace"), 
                  MetricName = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricName"), 
                  MetricValue = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricValue"), 
                  MetricUnit = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricUnit"), 
                  MetricTimestamp = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricTimestamp")), 
                  shape = "CloudwatchMetricAction", type = "structure", 
                  locationName = "cloudwatchMetric"), CloudwatchAlarm = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  AlarmName = structure(logical(0), shape = "AlarmName", 
                    type = "string", locationName = "alarmName"), 
                  StateReason = structure(logical(0), shape = "StateReason", 
                    type = "string", locationName = "stateReason"), 
                  StateValue = structure(logical(0), shape = "StateValue", 
                    type = "string", locationName = "stateValue")), 
                  shape = "CloudwatchAlarmAction", type = "structure", 
                  locationName = "cloudwatchAlarm"), Elasticsearch = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  Endpoint = structure(logical(0), shape = "ElasticsearchEndpoint", 
                    type = "string", pattern = "https?://.*", 
                    locationName = "endpoint"), Index = structure(logical(0), 
                    shape = "ElasticsearchIndex", type = "string", 
                    locationName = "index"), Type = structure(logical(0), 
                    shape = "ElasticsearchType", type = "string", 
                    locationName = "type"), Id = structure(logical(0), 
                    shape = "ElasticsearchId", type = "string", 
                    locationName = "id")), shape = "ElasticsearchAction", 
                  type = "structure", locationName = "elasticsearch"), 
                Salesforce = structure(list(Token = structure(logical(0), 
                  shape = "SalesforceToken", type = "string", 
                  min = 40L, locationName = "token"), Url = structure(logical(0), 
                  shape = "SalesforceEndpoint", type = "string", 
                  max = 2000L, pattern = "https://ingestion-[a-zA-Z0-9]{1,12}\\.[a-zA-Z0-9]+\\.((sfdc-matrix\\.net)|(sfdcnow\\.com))/streams/\\w{1,20}/\\w{1,20}/event", 
                  locationName = "url")), shape = "SalesforceAction", 
                  type = "structure", locationName = "salesforce"), 
                IotAnalytics = structure(list(ChannelArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "channelArn"), 
                  ChannelName = structure(logical(0), shape = "ChannelName", 
                    type = "string", locationName = "channelName"), 
                  RoleArn = structure(logical(0), shape = "AwsArn", 
                    type = "string", locationName = "roleArn")), 
                  shape = "IotAnalyticsAction", type = "structure", 
                  locationName = "iotAnalytics"), StepFunctions = structure(list(ExecutionNamePrefix = structure(logical(0), 
                  shape = "ExecutionNamePrefix", type = "string", 
                  locationName = "executionNamePrefix"), StateMachineName = structure(logical(0), 
                  shape = "StateMachineName", type = "string", 
                  locationName = "stateMachineName"), RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn")), 
                  shape = "StepFunctionsAction", type = "structure", 
                  locationName = "stepFunctions")), shape = "Action", 
                type = "structure")), shape = "ActionList", type = "list", 
                max = 10L, min = 0L, locationName = "actions"), 
            RuleDisabled = structure(logical(0), shape = "IsDisabled", 
                type = "boolean", locationName = "ruleDisabled"), 
            AwsIotSqlVersion = structure(logical(0), shape = "AwsIotSqlVersion", 
                type = "string", locationName = "awsIotSqlVersion"), 
            ErrorAction = structure(list(DynamoDB = structure(list(TableName = structure(logical(0), 
                shape = "TableName", type = "string", locationName = "tableName"), 
                RoleArn = structure(logical(0), shape = "AwsArn", 
                  type = "string", locationName = "roleArn"), 
                Operation = structure(logical(0), shape = "DynamoOperation", 
                  type = "string", locationName = "operation"), 
                HashKeyField = structure(logical(0), shape = "HashKeyField", 
                  type = "string", locationName = "hashKeyField"), 
                HashKeyValue = structure(logical(0), shape = "HashKeyValue", 
                  type = "string", locationName = "hashKeyValue"), 
                HashKeyType = structure(logical(0), shape = "DynamoKeyType", 
                  type = "string", locationName = "hashKeyType"), 
                RangeKeyField = structure(logical(0), shape = "RangeKeyField", 
                  type = "string", locationName = "rangeKeyField"), 
                RangeKeyValue = structure(logical(0), shape = "RangeKeyValue", 
                  type = "string", locationName = "rangeKeyValue"), 
                RangeKeyType = structure(logical(0), shape = "DynamoKeyType", 
                  type = "string", locationName = "rangeKeyType"), 
                PayloadField = structure(logical(0), shape = "PayloadField", 
                  type = "string", locationName = "payloadField")), 
                shape = "DynamoDBAction", type = "structure", 
                locationName = "dynamoDB"), DynamoDBv2 = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                PutItem = structure(list(TableName = structure(logical(0), 
                  shape = "TableName", type = "string", locationName = "tableName")), 
                  shape = "PutItemInput", type = "structure", 
                  locationName = "putItem")), shape = "DynamoDBv2Action", 
                type = "structure", locationName = "dynamoDBv2"), 
                Lambda = structure(list(FunctionArn = structure(logical(0), 
                  shape = "FunctionArn", type = "string", locationName = "functionArn")), 
                  shape = "LambdaAction", type = "structure", 
                  locationName = "lambda"), Sns = structure(list(TargetArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "targetArn"), 
                  RoleArn = structure(logical(0), shape = "AwsArn", 
                    type = "string", locationName = "roleArn"), 
                  MessageFormat = structure(logical(0), shape = "MessageFormat", 
                    type = "string", locationName = "messageFormat")), 
                  shape = "SnsAction", type = "structure", locationName = "sns"), 
                Sqs = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  QueueUrl = structure(logical(0), shape = "QueueUrl", 
                    type = "string", locationName = "queueUrl"), 
                  UseBase64 = structure(logical(0), shape = "UseBase64", 
                    type = "boolean", locationName = "useBase64")), 
                  shape = "SqsAction", type = "structure", locationName = "sqs"), 
                Kinesis = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  StreamName = structure(logical(0), shape = "StreamName", 
                    type = "string", locationName = "streamName"), 
                  PartitionKey = structure(logical(0), shape = "PartitionKey", 
                    type = "string", locationName = "partitionKey")), 
                  shape = "KinesisAction", type = "structure", 
                  locationName = "kinesis"), Republish = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  Topic = structure(logical(0), shape = "TopicPattern", 
                    type = "string", locationName = "topic")), 
                  shape = "RepublishAction", type = "structure", 
                  locationName = "republish"), S3 = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  BucketName = structure(logical(0), shape = "BucketName", 
                    type = "string", locationName = "bucketName"), 
                  Key = structure(logical(0), shape = "Key", 
                    type = "string", locationName = "key"), CannedAcl = structure(logical(0), 
                    shape = "CannedAccessControlList", type = "string", 
                    locationName = "cannedAcl")), shape = "S3Action", 
                  type = "structure", locationName = "s3"), Firehose = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  DeliveryStreamName = structure(logical(0), 
                    shape = "DeliveryStreamName", type = "string", 
                    locationName = "deliveryStreamName"), Separator = structure(logical(0), 
                    shape = "FirehoseSeparator", type = "string", 
                    pattern = "([\\n\\t])|(\\r\\n)|(,)", locationName = "separator")), 
                  shape = "FirehoseAction", type = "structure", 
                  locationName = "firehose"), CloudwatchMetric = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  MetricNamespace = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricNamespace"), 
                  MetricName = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricName"), 
                  MetricValue = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricValue"), 
                  MetricUnit = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricUnit"), 
                  MetricTimestamp = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricTimestamp")), 
                  shape = "CloudwatchMetricAction", type = "structure", 
                  locationName = "cloudwatchMetric"), CloudwatchAlarm = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  AlarmName = structure(logical(0), shape = "AlarmName", 
                    type = "string", locationName = "alarmName"), 
                  StateReason = structure(logical(0), shape = "StateReason", 
                    type = "string", locationName = "stateReason"), 
                  StateValue = structure(logical(0), shape = "StateValue", 
                    type = "string", locationName = "stateValue")), 
                  shape = "CloudwatchAlarmAction", type = "structure", 
                  locationName = "cloudwatchAlarm"), Elasticsearch = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  Endpoint = structure(logical(0), shape = "ElasticsearchEndpoint", 
                    type = "string", pattern = "https?://.*", 
                    locationName = "endpoint"), Index = structure(logical(0), 
                    shape = "ElasticsearchIndex", type = "string", 
                    locationName = "index"), Type = structure(logical(0), 
                    shape = "ElasticsearchType", type = "string", 
                    locationName = "type"), Id = structure(logical(0), 
                    shape = "ElasticsearchId", type = "string", 
                    locationName = "id")), shape = "ElasticsearchAction", 
                  type = "structure", locationName = "elasticsearch"), 
                Salesforce = structure(list(Token = structure(logical(0), 
                  shape = "SalesforceToken", type = "string", 
                  min = 40L, locationName = "token"), Url = structure(logical(0), 
                  shape = "SalesforceEndpoint", type = "string", 
                  max = 2000L, pattern = "https://ingestion-[a-zA-Z0-9]{1,12}\\.[a-zA-Z0-9]+\\.((sfdc-matrix\\.net)|(sfdcnow\\.com))/streams/\\w{1,20}/\\w{1,20}/event", 
                  locationName = "url")), shape = "SalesforceAction", 
                  type = "structure", locationName = "salesforce"), 
                IotAnalytics = structure(list(ChannelArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "channelArn"), 
                  ChannelName = structure(logical(0), shape = "ChannelName", 
                    type = "string", locationName = "channelName"), 
                  RoleArn = structure(logical(0), shape = "AwsArn", 
                    type = "string", locationName = "roleArn")), 
                  shape = "IotAnalyticsAction", type = "structure", 
                  locationName = "iotAnalytics"), StepFunctions = structure(list(ExecutionNamePrefix = structure(logical(0), 
                  shape = "ExecutionNamePrefix", type = "string", 
                  locationName = "executionNamePrefix"), StateMachineName = structure(logical(0), 
                  shape = "StateMachineName", type = "string", 
                  locationName = "stateMachineName"), RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn")), 
                  shape = "StepFunctionsAction", type = "structure", 
                  locationName = "stepFunctions")), shape = "Action", 
                type = "structure", locationName = "errorAction")), 
            shape = "TopicRulePayload", type = "structure", locationName = "topicRulePayload")), 
        shape = "CreateTopicRuleRequest", type = "structure", 
        payload = "topicRulePayload")
    return(populate(args, shape))
}

create_topic_rule_output <- function () 
{
    return(list())
}

delete_account_audit_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeleteScheduledAudits = structure(logical(0), 
        shape = "DeleteScheduledAudits", location = "querystring", 
        locationName = "deleteScheduledAudits", type = "boolean")), 
        shape = "DeleteAccountAuditConfigurationRequest", type = "structure")
    return(populate(args, shape))
}

delete_account_audit_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteAccountAuditConfigurationResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_authorizer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthorizerName = structure(logical(0), 
        shape = "AuthorizerName", location = "uri", locationName = "authorizerName", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w=,@-]+")), 
        shape = "DeleteAuthorizerRequest", type = "structure")
    return(populate(args, shape))
}

delete_authorizer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteAuthorizerResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_ca_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateId = structure(logical(0), 
        shape = "CertificateId", location = "uri", locationName = "certificateId", 
        type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+")), 
        shape = "DeleteCACertificateRequest", type = "structure")
    return(populate(args, shape))
}

delete_ca_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteCACertificateResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateId = structure(logical(0), 
        shape = "CertificateId", location = "uri", locationName = "certificateId", 
        type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+"), 
        ForceDelete = structure(logical(0), shape = "ForceDelete", 
            location = "querystring", locationName = "forceDelete", 
            type = "boolean")), shape = "DeleteCertificateRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_certificate_output <- function () 
{
    return(list())
}

delete_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        location = "uri", locationName = "jobId", type = "string", 
        max = 64L, min = 1L, pattern = "[a-zA-Z0-9_-]+"), Force = structure(logical(0), 
        shape = "ForceFlag", location = "querystring", locationName = "force", 
        type = "boolean")), shape = "DeleteJobRequest", type = "structure")
    return(populate(args, shape))
}

delete_job_output <- function () 
{
    return(list())
}

delete_job_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        location = "uri", locationName = "jobId", type = "string", 
        max = 64L, min = 1L, pattern = "[a-zA-Z0-9_-]+"), ThingName = structure(logical(0), 
        shape = "ThingName", location = "uri", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        ExecutionNumber = structure(logical(0), shape = "ExecutionNumber", 
            location = "uri", locationName = "executionNumber", 
            type = "long"), Force = structure(logical(0), shape = "ForceFlag", 
            location = "querystring", locationName = "force", 
            type = "boolean")), shape = "DeleteJobExecutionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_job_execution_output <- function () 
{
    return(list())
}

delete_ota_update_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OtaUpdateId = structure(logical(0), 
        shape = "OTAUpdateId", location = "uri", locationName = "otaUpdateId", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+"), 
        DeleteStream = structure(logical(0), shape = "DeleteStream", 
            location = "querystring", locationName = "deleteStream", 
            type = "boolean"), ForceDeleteAWSJob = structure(logical(0), 
            shape = "ForceDeleteAWSJob", location = "querystring", 
            locationName = "forceDeleteAWSJob", type = "boolean")), 
        shape = "DeleteOTAUpdateRequest", type = "structure")
    return(populate(args, shape))
}

delete_ota_update_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteOTAUpdateResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", location = "uri", locationName = "policyName", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+")), 
        shape = "DeletePolicyRequest", type = "structure")
    return(populate(args, shape))
}

delete_policy_output <- function () 
{
    return(list())
}

delete_policy_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", location = "uri", locationName = "policyName", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        PolicyVersionId = structure(logical(0), shape = "PolicyVersionId", 
            location = "uri", locationName = "policyVersionId", 
            type = "string", pattern = "[0-9]+")), shape = "DeletePolicyVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_policy_version_output <- function () 
{
    return(list())
}

delete_registration_code_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteRegistrationCodeRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_registration_code_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteRegistrationCodeResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_role_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleAlias = structure(logical(0), 
        shape = "RoleAlias", location = "uri", locationName = "roleAlias", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w=,@-]+")), 
        shape = "DeleteRoleAliasRequest", type = "structure")
    return(populate(args, shape))
}

delete_role_alias_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteRoleAliasResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_scheduled_audit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScheduledAuditName = structure(logical(0), 
        shape = "ScheduledAuditName", location = "uri", locationName = "scheduledAuditName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+")), 
        shape = "DeleteScheduledAuditRequest", type = "structure")
    return(populate(args, shape))
}

delete_scheduled_audit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteScheduledAuditResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_security_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityProfileName = structure(logical(0), 
        shape = "SecurityProfileName", location = "uri", locationName = "securityProfileName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        ExpectedVersion = structure(logical(0), shape = "OptionalVersion", 
            location = "querystring", locationName = "expectedVersion", 
            type = "long")), shape = "DeleteSecurityProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_security_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteSecurityProfileResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamId = structure(logical(0), 
        shape = "StreamId", location = "uri", locationName = "streamId", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+")), 
        shape = "DeleteStreamRequest", type = "structure")
    return(populate(args, shape))
}

delete_stream_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteStreamResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_thing_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingName = structure(logical(0), 
        shape = "ThingName", location = "uri", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        ExpectedVersion = structure(logical(0), shape = "OptionalVersion", 
            location = "querystring", locationName = "expectedVersion", 
            type = "long")), shape = "DeleteThingRequest", type = "structure")
    return(populate(args, shape))
}

delete_thing_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteThingResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_thing_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingGroupName = structure(logical(0), 
        shape = "ThingGroupName", location = "uri", locationName = "thingGroupName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        ExpectedVersion = structure(logical(0), shape = "OptionalVersion", 
            location = "querystring", locationName = "expectedVersion", 
            type = "long")), shape = "DeleteThingGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_thing_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteThingGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_thing_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingTypeName = structure(logical(0), 
        shape = "ThingTypeName", location = "uri", locationName = "thingTypeName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+")), 
        shape = "DeleteThingTypeRequest", type = "structure")
    return(populate(args, shape))
}

delete_thing_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteThingTypeResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_topic_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleName = structure(logical(0), 
        shape = "RuleName", location = "uri", locationName = "ruleName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$")), 
        shape = "DeleteTopicRuleRequest", type = "structure")
    return(populate(args, shape))
}

delete_topic_rule_output <- function () 
{
    return(list())
}

delete_v2_logging_level_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetType = structure(logical(0), 
        shape = "LogTargetType", location = "querystring", locationName = "targetType", 
        type = "string"), TargetName = structure(logical(0), 
        shape = "LogTargetName", location = "querystring", locationName = "targetName", 
        type = "string")), shape = "DeleteV2LoggingLevelRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_v2_logging_level_output <- function () 
{
    return(list())
}

deprecate_thing_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingTypeName = structure(logical(0), 
        shape = "ThingTypeName", location = "uri", locationName = "thingTypeName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        UndoDeprecate = structure(logical(0), shape = "UndoDeprecate", 
            type = "boolean", locationName = "undoDeprecate")), 
        shape = "DeprecateThingTypeRequest", type = "structure")
    return(populate(args, shape))
}

deprecate_thing_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeprecateThingTypeResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_account_audit_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DescribeAccountAuditConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_account_audit_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleArn = structure(logical(0), shape = "RoleArn", 
        type = "string", max = 2048L, min = 20L, locationName = "roleArn"), 
        AuditNotificationTargetConfigurations = structure(list(structure(list(TargetArn = structure(logical(0), 
            shape = "TargetArn", type = "string", locationName = "targetArn"), 
            RoleArn = structure(logical(0), shape = "RoleArn", 
                type = "string", max = 2048L, min = 20L, locationName = "roleArn"), 
            Enabled = structure(logical(0), shape = "Enabled", 
                type = "boolean", locationName = "enabled")), 
            shape = "AuditNotificationTarget", type = "structure")), 
            shape = "AuditNotificationTargetConfigurations", 
            type = "map", locationName = "auditNotificationTargetConfigurations"), 
        AuditCheckConfigurations = structure(list(structure(list(Enabled = structure(logical(0), 
            shape = "Enabled", type = "boolean", locationName = "enabled")), 
            shape = "AuditCheckConfiguration", type = "structure")), 
            shape = "AuditCheckConfigurations", type = "map", 
            locationName = "auditCheckConfigurations")), shape = "DescribeAccountAuditConfigurationResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_audit_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskId = structure(logical(0), shape = "AuditTaskId", 
        location = "uri", locationName = "taskId", type = "string", 
        max = 40L, min = 1L, pattern = "[a-zA-Z0-9\\-]+")), shape = "DescribeAuditTaskRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_audit_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskStatus = structure(logical(0), 
        shape = "AuditTaskStatus", type = "string", locationName = "taskStatus"), 
        TaskType = structure(logical(0), shape = "AuditTaskType", 
            type = "string", locationName = "taskType"), TaskStartTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "taskStartTime"), 
        TaskStatistics = structure(list(TotalChecks = structure(logical(0), 
            shape = "TotalChecksCount", type = "integer", locationName = "totalChecks"), 
            InProgressChecks = structure(logical(0), shape = "InProgressChecksCount", 
                type = "integer", locationName = "inProgressChecks"), 
            WaitingForDataCollectionChecks = structure(logical(0), 
                shape = "WaitingForDataCollectionChecksCount", 
                type = "integer", locationName = "waitingForDataCollectionChecks"), 
            CompliantChecks = structure(logical(0), shape = "CompliantChecksCount", 
                type = "integer", locationName = "compliantChecks"), 
            NonCompliantChecks = structure(logical(0), shape = "NonCompliantChecksCount", 
                type = "integer", locationName = "nonCompliantChecks"), 
            FailedChecks = structure(logical(0), shape = "FailedChecksCount", 
                type = "integer", locationName = "failedChecks"), 
            CanceledChecks = structure(logical(0), shape = "CanceledChecksCount", 
                type = "integer", locationName = "canceledChecks")), 
            shape = "TaskStatistics", type = "structure", locationName = "taskStatistics"), 
        ScheduledAuditName = structure(logical(0), shape = "ScheduledAuditName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+", 
            locationName = "scheduledAuditName"), AuditDetails = structure(list(structure(list(CheckRunStatus = structure(logical(0), 
            shape = "AuditCheckRunStatus", type = "string", locationName = "checkRunStatus"), 
            CheckCompliant = structure(logical(0), shape = "CheckCompliant", 
                type = "boolean", locationName = "checkCompliant"), 
            TotalResourcesCount = structure(logical(0), shape = "TotalResourcesCount", 
                type = "long", locationName = "totalResourcesCount"), 
            NonCompliantResourcesCount = structure(logical(0), 
                shape = "NonCompliantResourcesCount", type = "long", 
                locationName = "nonCompliantResourcesCount"), 
            ErrorCode = structure(logical(0), shape = "ErrorCode", 
                type = "string", locationName = "errorCode"), 
            Message = structure(logical(0), shape = "ErrorMessage", 
                type = "string", max = 2048L, locationName = "message")), 
            shape = "AuditCheckDetails", type = "structure")), 
            shape = "AuditDetails", type = "map", locationName = "auditDetails")), 
        shape = "DescribeAuditTaskResponse", type = "structure")
    return(populate(args, shape))
}

describe_authorizer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthorizerName = structure(logical(0), 
        shape = "AuthorizerName", location = "uri", locationName = "authorizerName", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w=,@-]+")), 
        shape = "DescribeAuthorizerRequest", type = "structure")
    return(populate(args, shape))
}

describe_authorizer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthorizerDescription = structure(list(AuthorizerName = structure(logical(0), 
        shape = "AuthorizerName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w=,@-]+", locationName = "authorizerName"), 
        AuthorizerArn = structure(logical(0), shape = "AuthorizerArn", 
            type = "string", locationName = "authorizerArn"), 
        AuthorizerFunctionArn = structure(logical(0), shape = "AuthorizerFunctionArn", 
            type = "string", locationName = "authorizerFunctionArn"), 
        TokenKeyName = structure(logical(0), shape = "TokenKeyName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+", 
            locationName = "tokenKeyName"), TokenSigningPublicKeys = structure(list(structure(logical(0), 
            shape = "KeyValue", type = "string", max = 5120L)), 
            shape = "PublicKeyMap", type = "map", locationName = "tokenSigningPublicKeys"), 
        Status = structure(logical(0), shape = "AuthorizerStatus", 
            type = "string", locationName = "status"), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp", locationName = "creationDate"), 
        LastModifiedDate = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "lastModifiedDate")), 
        shape = "AuthorizerDescription", type = "structure", 
        locationName = "authorizerDescription")), shape = "DescribeAuthorizerResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_ca_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateId = structure(logical(0), 
        shape = "CertificateId", location = "uri", locationName = "certificateId", 
        type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+")), 
        shape = "DescribeCACertificateRequest", type = "structure")
    return(populate(args, shape))
}

describe_ca_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateDescription = structure(list(CertificateArn = structure(logical(0), 
        shape = "CertificateArn", type = "string", locationName = "certificateArn"), 
        CertificateId = structure(logical(0), shape = "CertificateId", 
            type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+", 
            locationName = "certificateId"), Status = structure(logical(0), 
            shape = "CACertificateStatus", type = "string", locationName = "status"), 
        CertificatePem = structure(logical(0), shape = "CertificatePem", 
            type = "string", max = 65536L, min = 1L, locationName = "certificatePem"), 
        OwnedBy = structure(logical(0), shape = "AwsAccountId", 
            type = "string", max = 12L, min = 12L, pattern = "[0-9]+", 
            locationName = "ownedBy"), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp", locationName = "creationDate"), 
        AutoRegistrationStatus = structure(logical(0), shape = "AutoRegistrationStatus", 
            type = "string", locationName = "autoRegistrationStatus"), 
        LastModifiedDate = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "lastModifiedDate"), 
        CustomerVersion = structure(logical(0), shape = "CustomerVersion", 
            type = "integer", min = 1L, locationName = "customerVersion"), 
        GenerationId = structure(logical(0), shape = "GenerationId", 
            type = "string", locationName = "generationId"), 
        Validity = structure(list(NotBefore = structure(logical(0), 
            shape = "DateType", type = "timestamp", locationName = "notBefore"), 
            NotAfter = structure(logical(0), shape = "DateType", 
                type = "timestamp", locationName = "notAfter")), 
            shape = "CertificateValidity", type = "structure", 
            locationName = "validity")), shape = "CACertificateDescription", 
        type = "structure", locationName = "certificateDescription"), 
        RegistrationConfig = structure(list(TemplateBody = structure(logical(0), 
            shape = "TemplateBody", type = "string", locationName = "templateBody"), 
            RoleArn = structure(logical(0), shape = "RoleArn", 
                type = "string", max = 2048L, min = 20L, locationName = "roleArn")), 
            shape = "RegistrationConfig", type = "structure", 
            locationName = "registrationConfig")), shape = "DescribeCACertificateResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateId = structure(logical(0), 
        shape = "CertificateId", location = "uri", locationName = "certificateId", 
        type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+")), 
        shape = "DescribeCertificateRequest", type = "structure")
    return(populate(args, shape))
}

describe_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateDescription = structure(list(CertificateArn = structure(logical(0), 
        shape = "CertificateArn", type = "string", locationName = "certificateArn"), 
        CertificateId = structure(logical(0), shape = "CertificateId", 
            type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+", 
            locationName = "certificateId"), CaCertificateId = structure(logical(0), 
            shape = "CertificateId", type = "string", max = 64L, 
            min = 64L, pattern = "(0x)?[a-fA-F0-9]+", locationName = "caCertificateId"), 
        Status = structure(logical(0), shape = "CertificateStatus", 
            type = "string", locationName = "status"), CertificatePem = structure(logical(0), 
            shape = "CertificatePem", type = "string", max = 65536L, 
            min = 1L, locationName = "certificatePem"), OwnedBy = structure(logical(0), 
            shape = "AwsAccountId", type = "string", max = 12L, 
            min = 12L, pattern = "[0-9]+", locationName = "ownedBy"), 
        PreviousOwnedBy = structure(logical(0), shape = "AwsAccountId", 
            type = "string", max = 12L, min = 12L, pattern = "[0-9]+", 
            locationName = "previousOwnedBy"), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp", locationName = "creationDate"), 
        LastModifiedDate = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "lastModifiedDate"), 
        CustomerVersion = structure(logical(0), shape = "CustomerVersion", 
            type = "integer", min = 1L, locationName = "customerVersion"), 
        TransferData = structure(list(TransferMessage = structure(logical(0), 
            shape = "Message", type = "string", max = 128L, locationName = "transferMessage"), 
            RejectReason = structure(logical(0), shape = "Message", 
                type = "string", max = 128L, locationName = "rejectReason"), 
            TransferDate = structure(logical(0), shape = "DateType", 
                type = "timestamp", locationName = "transferDate"), 
            AcceptDate = structure(logical(0), shape = "DateType", 
                type = "timestamp", locationName = "acceptDate"), 
            RejectDate = structure(logical(0), shape = "DateType", 
                type = "timestamp", locationName = "rejectDate")), 
            shape = "TransferData", type = "structure", locationName = "transferData"), 
        GenerationId = structure(logical(0), shape = "GenerationId", 
            type = "string", locationName = "generationId"), 
        Validity = structure(list(NotBefore = structure(logical(0), 
            shape = "DateType", type = "timestamp", locationName = "notBefore"), 
            NotAfter = structure(logical(0), shape = "DateType", 
                type = "timestamp", locationName = "notAfter")), 
            shape = "CertificateValidity", type = "structure", 
            locationName = "validity")), shape = "CertificateDescription", 
        type = "structure", locationName = "certificateDescription")), 
        shape = "DescribeCertificateResponse", type = "structure")
    return(populate(args, shape))
}

describe_default_authorizer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DescribeDefaultAuthorizerRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_default_authorizer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthorizerDescription = structure(list(AuthorizerName = structure(logical(0), 
        shape = "AuthorizerName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w=,@-]+", locationName = "authorizerName"), 
        AuthorizerArn = structure(logical(0), shape = "AuthorizerArn", 
            type = "string", locationName = "authorizerArn"), 
        AuthorizerFunctionArn = structure(logical(0), shape = "AuthorizerFunctionArn", 
            type = "string", locationName = "authorizerFunctionArn"), 
        TokenKeyName = structure(logical(0), shape = "TokenKeyName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+", 
            locationName = "tokenKeyName"), TokenSigningPublicKeys = structure(list(structure(logical(0), 
            shape = "KeyValue", type = "string", max = 5120L)), 
            shape = "PublicKeyMap", type = "map", locationName = "tokenSigningPublicKeys"), 
        Status = structure(logical(0), shape = "AuthorizerStatus", 
            type = "string", locationName = "status"), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp", locationName = "creationDate"), 
        LastModifiedDate = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "lastModifiedDate")), 
        shape = "AuthorizerDescription", type = "structure", 
        locationName = "authorizerDescription")), shape = "DescribeDefaultAuthorizerResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointType = structure(logical(0), 
        shape = "EndpointType", location = "querystring", locationName = "endpointType", 
        type = "string")), shape = "DescribeEndpointRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_endpoint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointAddress = structure(logical(0), 
        shape = "EndpointAddress", type = "string", locationName = "endpointAddress")), 
        shape = "DescribeEndpointResponse", type = "structure")
    return(populate(args, shape))
}

describe_event_configurations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DescribeEventConfigurationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_event_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventConfigurations = structure(list(structure(list(Enabled = structure(logical(0), 
        shape = "Enabled", type = "boolean")), shape = "Configuration", 
        type = "structure")), shape = "EventConfigurations", 
        type = "map", locationName = "eventConfigurations"), 
        CreationDate = structure(logical(0), shape = "CreationDate", 
            type = "timestamp", locationName = "creationDate"), 
        LastModifiedDate = structure(logical(0), shape = "LastModifiedDate", 
            type = "timestamp", locationName = "lastModifiedDate")), 
        shape = "DescribeEventConfigurationsResponse", type = "structure")
    return(populate(args, shape))
}

describe_index_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IndexName = structure(logical(0), 
        shape = "IndexName", location = "uri", locationName = "indexName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+")), 
        shape = "DescribeIndexRequest", type = "structure")
    return(populate(args, shape))
}

describe_index_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IndexName = structure(logical(0), 
        shape = "IndexName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9:_-]+", locationName = "indexName"), 
        IndexStatus = structure(logical(0), shape = "IndexStatus", 
            type = "string", locationName = "indexStatus"), Schema = structure(logical(0), 
            shape = "IndexSchema", type = "string", locationName = "schema")), 
        shape = "DescribeIndexResponse", type = "structure")
    return(populate(args, shape))
}

describe_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        location = "uri", locationName = "jobId", type = "string", 
        max = 64L, min = 1L, pattern = "[a-zA-Z0-9_-]+")), shape = "DescribeJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DocumentSource = structure(logical(0), 
        shape = "JobDocumentSource", type = "string", max = 1350L, 
        min = 1L, locationName = "documentSource"), Job = structure(list(JobArn = structure(logical(0), 
        shape = "JobArn", type = "string", locationName = "jobArn"), 
        JobId = structure(logical(0), shape = "JobId", type = "string", 
            max = 64L, min = 1L, pattern = "[a-zA-Z0-9_-]+", 
            locationName = "jobId"), TargetSelection = structure(logical(0), 
            shape = "TargetSelection", type = "string", locationName = "targetSelection"), 
        Status = structure(logical(0), shape = "JobStatus", type = "string", 
            locationName = "status"), ForceCanceled = structure(logical(0), 
            shape = "Forced", type = "boolean", locationName = "forceCanceled"), 
        Comment = structure(logical(0), shape = "Comment", type = "string", 
            max = 2028L, pattern = "[^\\p{C}]+", locationName = "comment"), 
        Targets = structure(list(structure(logical(0), shape = "TargetArn", 
            type = "string")), shape = "JobTargets", type = "list", 
            min = 1L, locationName = "targets"), Description = structure(logical(0), 
            shape = "JobDescription", type = "string", max = 2028L, 
            pattern = "[^\\p{C}]+", locationName = "description"), 
        PresignedUrlConfig = structure(list(RoleArn = structure(logical(0), 
            shape = "RoleArn", type = "string", max = 2048L, 
            min = 20L, locationName = "roleArn"), ExpiresInSec = structure(logical(0), 
            shape = "ExpiresInSec", type = "long", max = 3600L, 
            min = 60L, locationName = "expiresInSec")), shape = "PresignedUrlConfig", 
            type = "structure", locationName = "presignedUrlConfig"), 
        JobExecutionsRolloutConfig = structure(list(MaximumPerMinute = structure(logical(0), 
            shape = "MaxJobExecutionsPerMin", type = "integer", 
            max = 1000L, min = 1L, locationName = "maximumPerMinute")), 
            shape = "JobExecutionsRolloutConfig", type = "structure", 
            locationName = "jobExecutionsRolloutConfig"), CreatedAt = structure(logical(0), 
            shape = "DateType", type = "timestamp", locationName = "createdAt"), 
        LastUpdatedAt = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "lastUpdatedAt"), 
        CompletedAt = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "completedAt"), 
        JobProcessDetails = structure(list(ProcessingTargets = structure(list(structure(logical(0), 
            shape = "ProcessingTargetName", type = "string")), 
            shape = "ProcessingTargetNameList", type = "list", 
            locationName = "processingTargets"), NumberOfCanceledThings = structure(logical(0), 
            shape = "CanceledThings", type = "integer", locationName = "numberOfCanceledThings"), 
            NumberOfSucceededThings = structure(logical(0), shape = "SucceededThings", 
                type = "integer", locationName = "numberOfSucceededThings"), 
            NumberOfFailedThings = structure(logical(0), shape = "FailedThings", 
                type = "integer", locationName = "numberOfFailedThings"), 
            NumberOfRejectedThings = structure(logical(0), shape = "RejectedThings", 
                type = "integer", locationName = "numberOfRejectedThings"), 
            NumberOfQueuedThings = structure(logical(0), shape = "QueuedThings", 
                type = "integer", locationName = "numberOfQueuedThings"), 
            NumberOfInProgressThings = structure(logical(0), 
                shape = "InProgressThings", type = "integer", 
                locationName = "numberOfInProgressThings"), NumberOfRemovedThings = structure(logical(0), 
                shape = "RemovedThings", type = "integer", locationName = "numberOfRemovedThings"), 
            NumberOfTimedOutThings = structure(logical(0), shape = "TimedOutThings", 
                type = "integer", locationName = "numberOfTimedOutThings")), 
            shape = "JobProcessDetails", type = "structure", 
            locationName = "jobProcessDetails"), TimeoutConfig = structure(list(InProgressTimeoutInMinutes = structure(logical(0), 
            shape = "InProgressTimeoutInMinutes", type = "long", 
            locationName = "inProgressTimeoutInMinutes")), shape = "TimeoutConfig", 
            type = "structure", locationName = "timeoutConfig")), 
        shape = "Job", type = "structure", locationName = "job")), 
        shape = "DescribeJobResponse", type = "structure")
    return(populate(args, shape))
}

describe_job_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        location = "uri", locationName = "jobId", type = "string", 
        max = 64L, min = 1L, pattern = "[a-zA-Z0-9_-]+"), ThingName = structure(logical(0), 
        shape = "ThingName", location = "uri", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        ExecutionNumber = structure(logical(0), shape = "ExecutionNumber", 
            location = "querystring", locationName = "executionNumber", 
            type = "long")), shape = "DescribeJobExecutionRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_job_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Execution = structure(list(JobId = structure(logical(0), 
        shape = "JobId", type = "string", max = 64L, min = 1L, 
        pattern = "[a-zA-Z0-9_-]+", locationName = "jobId"), 
        Status = structure(logical(0), shape = "JobExecutionStatus", 
            type = "string", locationName = "status"), ForceCanceled = structure(logical(0), 
            shape = "Forced", type = "boolean", locationName = "forceCanceled"), 
        StatusDetails = structure(list(DetailsMap = structure(list(structure(logical(0), 
            shape = "DetailsValue", type = "string", max = 1024L, 
            min = 1L, pattern = "[^\\p{C}]*+")), shape = "DetailsMap", 
            type = "map", locationName = "detailsMap")), shape = "JobExecutionStatusDetails", 
            type = "structure", locationName = "statusDetails"), 
        ThingArn = structure(logical(0), shape = "ThingArn", 
            type = "string", locationName = "thingArn"), QueuedAt = structure(logical(0), 
            shape = "DateType", type = "timestamp", locationName = "queuedAt"), 
        StartedAt = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "startedAt"), 
        LastUpdatedAt = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "lastUpdatedAt"), 
        ExecutionNumber = structure(logical(0), shape = "ExecutionNumber", 
            type = "long", locationName = "executionNumber"), 
        VersionNumber = structure(logical(0), shape = "VersionNumber", 
            type = "long", locationName = "versionNumber"), ApproximateSecondsBeforeTimedOut = structure(logical(0), 
            shape = "ApproximateSecondsBeforeTimedOut", type = "long", 
            locationName = "approximateSecondsBeforeTimedOut")), 
        shape = "JobExecution", type = "structure", locationName = "execution")), 
        shape = "DescribeJobExecutionResponse", type = "structure")
    return(populate(args, shape))
}

describe_role_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleAlias = structure(logical(0), 
        shape = "RoleAlias", location = "uri", locationName = "roleAlias", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w=,@-]+")), 
        shape = "DescribeRoleAliasRequest", type = "structure")
    return(populate(args, shape))
}

describe_role_alias_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleAliasDescription = structure(list(RoleAlias = structure(logical(0), 
        shape = "RoleAlias", type = "string", max = 128L, min = 1L, 
        pattern = "[\\w=,@-]+", locationName = "roleAlias"), 
        RoleAliasArn = structure(logical(0), shape = "RoleAliasArn", 
            type = "string", locationName = "roleAliasArn"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            max = 2048L, min = 20L, locationName = "roleArn"), 
        Owner = structure(logical(0), shape = "AwsAccountId", 
            type = "string", max = 12L, min = 12L, pattern = "[0-9]+", 
            locationName = "owner"), CredentialDurationSeconds = structure(logical(0), 
            shape = "CredentialDurationSeconds", type = "integer", 
            max = 3600L, min = 900L, locationName = "credentialDurationSeconds"), 
        CreationDate = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "creationDate"), 
        LastModifiedDate = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "lastModifiedDate")), 
        shape = "RoleAliasDescription", type = "structure", locationName = "roleAliasDescription")), 
        shape = "DescribeRoleAliasResponse", type = "structure")
    return(populate(args, shape))
}

describe_scheduled_audit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScheduledAuditName = structure(logical(0), 
        shape = "ScheduledAuditName", location = "uri", locationName = "scheduledAuditName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+")), 
        shape = "DescribeScheduledAuditRequest", type = "structure")
    return(populate(args, shape))
}

describe_scheduled_audit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Frequency = structure(logical(0), 
        shape = "AuditFrequency", type = "string", locationName = "frequency"), 
        DayOfMonth = structure(logical(0), shape = "DayOfMonth", 
            type = "string", pattern = "^([1-9]|[12][0-9]|3[01])$|^LAST$", 
            locationName = "dayOfMonth"), DayOfWeek = structure(logical(0), 
            shape = "DayOfWeek", type = "string", locationName = "dayOfWeek"), 
        TargetCheckNames = structure(list(structure(logical(0), 
            shape = "AuditCheckName", type = "string")), shape = "TargetAuditCheckNames", 
            type = "list", locationName = "targetCheckNames"), 
        ScheduledAuditName = structure(logical(0), shape = "ScheduledAuditName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+", 
            locationName = "scheduledAuditName"), ScheduledAuditArn = structure(logical(0), 
            shape = "ScheduledAuditArn", type = "string", locationName = "scheduledAuditArn")), 
        shape = "DescribeScheduledAuditResponse", type = "structure")
    return(populate(args, shape))
}

describe_security_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityProfileName = structure(logical(0), 
        shape = "SecurityProfileName", location = "uri", locationName = "securityProfileName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+")), 
        shape = "DescribeSecurityProfileRequest", type = "structure")
    return(populate(args, shape))
}

describe_security_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityProfileName = structure(logical(0), 
        shape = "SecurityProfileName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "securityProfileName"), 
        SecurityProfileArn = structure(logical(0), shape = "SecurityProfileArn", 
            type = "string", locationName = "securityProfileArn"), 
        SecurityProfileDescription = structure(logical(0), shape = "SecurityProfileDescription", 
            type = "string", max = 1000L, pattern = "[\\p{Graph}\\x20]*", 
            locationName = "securityProfileDescription"), Behaviors = structure(list(structure(list(Name = structure(logical(0), 
            shape = "BehaviorName", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "name"), 
            Metric = structure(logical(0), shape = "BehaviorMetric", 
                type = "string", locationName = "metric"), Criteria = structure(list(ComparisonOperator = structure(logical(0), 
                shape = "ComparisonOperator", type = "string", 
                locationName = "comparisonOperator"), Value = structure(list(Count = structure(logical(0), 
                shape = "UnsignedLong", type = "long", min = 0L, 
                locationName = "count"), Cidrs = structure(list(structure(logical(0), 
                shape = "Cidr", type = "string", max = 43L, min = 2L, 
                pattern = "[a-fA-F0-9:\\.\\/]+")), shape = "Cidrs", 
                type = "list", locationName = "cidrs"), Ports = structure(list(structure(logical(0), 
                shape = "Port", type = "integer", max = 65535L, 
                min = 0L)), shape = "Ports", type = "list", locationName = "ports")), 
                shape = "MetricValue", type = "structure", locationName = "value"), 
                DurationSeconds = structure(logical(0), shape = "DurationSeconds", 
                  type = "integer", locationName = "durationSeconds")), 
                shape = "BehaviorCriteria", type = "structure", 
                locationName = "criteria")), shape = "Behavior", 
            type = "structure")), shape = "Behaviors", type = "list", 
            max = 100L, locationName = "behaviors"), AlertTargets = structure(list(structure(list(AlertTargetArn = structure(logical(0), 
            shape = "AlertTargetArn", type = "string", locationName = "alertTargetArn"), 
            RoleArn = structure(logical(0), shape = "RoleArn", 
                type = "string", max = 2048L, min = 20L, locationName = "roleArn")), 
            shape = "AlertTarget", type = "structure")), shape = "AlertTargets", 
            type = "map", locationName = "alertTargets"), Version = structure(logical(0), 
            shape = "Version", type = "long", locationName = "version"), 
        CreationDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "creationDate"), 
        LastModifiedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastModifiedDate")), 
        shape = "DescribeSecurityProfileResponse", type = "structure")
    return(populate(args, shape))
}

describe_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamId = structure(logical(0), 
        shape = "StreamId", location = "uri", locationName = "streamId", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+")), 
        shape = "DescribeStreamRequest", type = "structure")
    return(populate(args, shape))
}

describe_stream_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamInfo = structure(list(StreamId = structure(logical(0), 
        shape = "StreamId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_-]+", locationName = "streamId"), 
        StreamArn = structure(logical(0), shape = "StreamArn", 
            type = "string", locationName = "streamArn"), StreamVersion = structure(logical(0), 
            shape = "StreamVersion", type = "integer", max = 65535L, 
            min = 0L, locationName = "streamVersion"), Description = structure(logical(0), 
            shape = "StreamDescription", type = "string", max = 2028L, 
            pattern = "[^\\p{C}]+", locationName = "description"), 
        Files = structure(list(structure(list(FileId = structure(logical(0), 
            shape = "FileId", type = "integer", max = 255L, min = 0L, 
            locationName = "fileId"), S3Location = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", min = 1L, locationName = "bucket"), 
            Key = structure(logical(0), shape = "S3Key", type = "string", 
                min = 1L, locationName = "key"), Version = structure(logical(0), 
                shape = "S3Version", type = "string", locationName = "version")), 
            shape = "S3Location", type = "structure", locationName = "s3Location")), 
            shape = "StreamFile", type = "structure")), shape = "StreamFiles", 
            type = "list", max = 50L, min = 1L, locationName = "files"), 
        CreatedAt = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "createdAt"), 
        LastUpdatedAt = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "lastUpdatedAt"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            max = 2048L, min = 20L, locationName = "roleArn")), 
        shape = "StreamInfo", type = "structure", locationName = "streamInfo")), 
        shape = "DescribeStreamResponse", type = "structure")
    return(populate(args, shape))
}

describe_thing_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingName = structure(logical(0), 
        shape = "ThingName", location = "uri", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+")), 
        shape = "DescribeThingRequest", type = "structure")
    return(populate(args, shape))
}

describe_thing_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DefaultClientId = structure(logical(0), 
        shape = "ClientId", type = "string", locationName = "defaultClientId"), 
        ThingName = structure(logical(0), shape = "ThingName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+", 
            locationName = "thingName"), ThingId = structure(logical(0), 
            shape = "ThingId", type = "string", locationName = "thingId"), 
        ThingArn = structure(logical(0), shape = "ThingArn", 
            type = "string", locationName = "thingArn"), ThingTypeName = structure(logical(0), 
            shape = "ThingTypeName", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "thingTypeName"), 
        Attributes = structure(list(structure(logical(0), shape = "AttributeValue", 
            type = "string", max = 800L, pattern = "[a-zA-Z0-9_.,@/:#-]*")), 
            shape = "Attributes", type = "map", locationName = "attributes"), 
        Version = structure(logical(0), shape = "Version", type = "long", 
            locationName = "version")), shape = "DescribeThingResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_thing_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingGroupName = structure(logical(0), 
        shape = "ThingGroupName", location = "uri", locationName = "thingGroupName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+")), 
        shape = "DescribeThingGroupRequest", type = "structure")
    return(populate(args, shape))
}

describe_thing_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingGroupName = structure(logical(0), 
        shape = "ThingGroupName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "thingGroupName"), 
        ThingGroupId = structure(logical(0), shape = "ThingGroupId", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9\\-]+", 
            locationName = "thingGroupId"), ThingGroupArn = structure(logical(0), 
            shape = "ThingGroupArn", type = "string", locationName = "thingGroupArn"), 
        Version = structure(logical(0), shape = "Version", type = "long", 
            locationName = "version"), ThingGroupProperties = structure(list(ThingGroupDescription = structure(logical(0), 
            shape = "ThingGroupDescription", type = "string", 
            max = 2028L, pattern = "[\\p{Graph}\\x20]*", locationName = "thingGroupDescription"), 
            AttributePayload = structure(list(Attributes = structure(list(structure(logical(0), 
                shape = "AttributeValue", type = "string", max = 800L, 
                pattern = "[a-zA-Z0-9_.,@/:#-]*")), shape = "Attributes", 
                type = "map", locationName = "attributes"), Merge = structure(logical(0), 
                shape = "Flag", type = "boolean", locationName = "merge")), 
                shape = "AttributePayload", type = "structure", 
                locationName = "attributePayload")), shape = "ThingGroupProperties", 
            type = "structure", locationName = "thingGroupProperties"), 
        ThingGroupMetadata = structure(list(ParentGroupName = structure(logical(0), 
            shape = "ThingGroupName", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "parentGroupName"), 
            RootToParentThingGroups = structure(list(structure(list(GroupName = structure(logical(0), 
                shape = "ThingGroupName", type = "string", max = 128L, 
                min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "groupName"), 
                GroupArn = structure(logical(0), shape = "ThingGroupArn", 
                  type = "string", locationName = "groupArn")), 
                shape = "GroupNameAndArn", type = "structure")), 
                shape = "ThingGroupNameAndArnList", type = "list", 
                locationName = "rootToParentThingGroups"), CreationDate = structure(logical(0), 
                shape = "CreationDate", type = "timestamp", locationName = "creationDate")), 
            shape = "ThingGroupMetadata", type = "structure", 
            locationName = "thingGroupMetadata")), shape = "DescribeThingGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_thing_registration_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskId = structure(logical(0), shape = "TaskId", 
        location = "uri", locationName = "taskId", type = "string", 
        max = 40L)), shape = "DescribeThingRegistrationTaskRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_thing_registration_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskId = structure(logical(0), shape = "TaskId", 
        type = "string", max = 40L, locationName = "taskId"), 
        CreationDate = structure(logical(0), shape = "CreationDate", 
            type = "timestamp", locationName = "creationDate"), 
        LastModifiedDate = structure(logical(0), shape = "LastModifiedDate", 
            type = "timestamp", locationName = "lastModifiedDate"), 
        TemplateBody = structure(logical(0), shape = "TemplateBody", 
            type = "string", locationName = "templateBody"), 
        InputFileBucket = structure(logical(0), shape = "RegistryS3BucketName", 
            type = "string", max = 256L, min = 3L, pattern = "[a-zA-Z0-9._-]+", 
            locationName = "inputFileBucket"), InputFileKey = structure(logical(0), 
            shape = "RegistryS3KeyName", type = "string", max = 1024L, 
            min = 1L, pattern = "[a-zA-Z0-9!_.*'()-\\/]+", locationName = "inputFileKey"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            max = 2048L, min = 20L, locationName = "roleArn"), 
        Status = structure(logical(0), shape = "Status", type = "string", 
            locationName = "status"), Message = structure(logical(0), 
            shape = "ErrorMessage", type = "string", max = 2048L, 
            locationName = "message"), SuccessCount = structure(logical(0), 
            shape = "Count", type = "integer", locationName = "successCount"), 
        FailureCount = structure(logical(0), shape = "Count", 
            type = "integer", locationName = "failureCount"), 
        PercentageProgress = structure(logical(0), shape = "Percentage", 
            type = "integer", max = 100L, min = 0L, locationName = "percentageProgress")), 
        shape = "DescribeThingRegistrationTaskResponse", type = "structure")
    return(populate(args, shape))
}

describe_thing_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingTypeName = structure(logical(0), 
        shape = "ThingTypeName", location = "uri", locationName = "thingTypeName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+")), 
        shape = "DescribeThingTypeRequest", type = "structure")
    return(populate(args, shape))
}

describe_thing_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingTypeName = structure(logical(0), 
        shape = "ThingTypeName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "thingTypeName"), 
        ThingTypeId = structure(logical(0), shape = "ThingTypeId", 
            type = "string", locationName = "thingTypeId"), ThingTypeArn = structure(logical(0), 
            shape = "ThingTypeArn", type = "string", locationName = "thingTypeArn"), 
        ThingTypeProperties = structure(list(ThingTypeDescription = structure(logical(0), 
            shape = "ThingTypeDescription", type = "string", 
            max = 2028L, pattern = "[\\p{Graph}\\x20]*", locationName = "thingTypeDescription"), 
            SearchableAttributes = structure(list(structure(logical(0), 
                shape = "AttributeName", type = "string", max = 128L, 
                pattern = "[a-zA-Z0-9_.,@/:#-]+")), shape = "SearchableAttributes", 
                type = "list", locationName = "searchableAttributes")), 
            shape = "ThingTypeProperties", type = "structure", 
            locationName = "thingTypeProperties"), ThingTypeMetadata = structure(list(Deprecated = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "deprecated"), 
            DeprecationDate = structure(logical(0), shape = "DeprecationDate", 
                type = "timestamp", locationName = "deprecationDate"), 
            CreationDate = structure(logical(0), shape = "CreationDate", 
                type = "timestamp", locationName = "creationDate")), 
            shape = "ThingTypeMetadata", type = "structure", 
            locationName = "thingTypeMetadata")), shape = "DescribeThingTypeResponse", 
        type = "structure")
    return(populate(args, shape))
}

detach_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", location = "uri", locationName = "policyName", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        Target = structure(logical(0), shape = "PolicyTarget", 
            type = "string", locationName = "target")), shape = "DetachPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

detach_policy_output <- function () 
{
    return(list())
}

detach_principal_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", location = "uri", locationName = "policyName", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        Principal = structure(logical(0), shape = "Principal", 
            location = "header", locationName = "principal", 
            type = "string")), shape = "DetachPrincipalPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

detach_principal_policy_output <- function () 
{
    return(list())
}

detach_security_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityProfileName = structure(logical(0), 
        shape = "SecurityProfileName", location = "uri", locationName = "securityProfileName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        SecurityProfileTargetArn = structure(logical(0), shape = "SecurityProfileTargetArn", 
            location = "querystring", locationName = "securityProfileTargetArn", 
            type = "string")), shape = "DetachSecurityProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

detach_security_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DetachSecurityProfileResponse", 
        type = "structure")
    return(populate(args, shape))
}

detach_thing_principal_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingName = structure(logical(0), 
        shape = "ThingName", location = "uri", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        Principal = structure(logical(0), shape = "Principal", 
            location = "header", locationName = "principal", 
            type = "string")), shape = "DetachThingPrincipalRequest", 
        type = "structure")
    return(populate(args, shape))
}

detach_thing_principal_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DetachThingPrincipalResponse", 
        type = "structure")
    return(populate(args, shape))
}

disable_topic_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleName = structure(logical(0), 
        shape = "RuleName", location = "uri", locationName = "ruleName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$")), 
        shape = "DisableTopicRuleRequest", type = "structure")
    return(populate(args, shape))
}

disable_topic_rule_output <- function () 
{
    return(list())
}

enable_topic_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleName = structure(logical(0), 
        shape = "RuleName", location = "uri", locationName = "ruleName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$")), 
        shape = "EnableTopicRuleRequest", type = "structure")
    return(populate(args, shape))
}

enable_topic_rule_output <- function () 
{
    return(list())
}

get_effective_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Principal = structure(logical(0), 
        shape = "Principal", type = "string", locationName = "principal"), 
        CognitoIdentityPoolId = structure(logical(0), shape = "CognitoIdentityPoolId", 
            type = "string", locationName = "cognitoIdentityPoolId"), 
        ThingName = structure(logical(0), shape = "ThingName", 
            location = "querystring", locationName = "thingName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+")), 
        shape = "GetEffectivePoliciesRequest", type = "structure")
    return(populate(args, shape))
}

get_effective_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EffectivePolicies = structure(list(structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string", max = 128L, min = 1L, 
        pattern = "[\\w+=,.@-]+", locationName = "policyName"), 
        PolicyArn = structure(logical(0), shape = "PolicyArn", 
            type = "string", locationName = "policyArn"), PolicyDocument = structure(logical(0), 
            shape = "PolicyDocument", type = "string", locationName = "policyDocument")), 
        shape = "EffectivePolicy", type = "structure")), shape = "EffectivePolicies", 
        type = "list", locationName = "effectivePolicies")), 
        shape = "GetEffectivePoliciesResponse", type = "structure")
    return(populate(args, shape))
}

get_indexing_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GetIndexingConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_indexing_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingIndexingConfiguration = structure(list(ThingIndexingMode = structure(logical(0), 
        shape = "ThingIndexingMode", type = "string", locationName = "thingIndexingMode")), 
        shape = "ThingIndexingConfiguration", type = "structure", 
        locationName = "thingIndexingConfiguration"), ThingGroupIndexingConfiguration = structure(list(ThingGroupIndexingMode = structure(logical(0), 
        shape = "ThingGroupIndexingMode", type = "string", locationName = "thingGroupIndexingMode")), 
        shape = "ThingGroupIndexingConfiguration", type = "structure", 
        locationName = "thingGroupIndexingConfiguration")), shape = "GetIndexingConfigurationResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_job_document_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        location = "uri", locationName = "jobId", type = "string", 
        max = 64L, min = 1L, pattern = "[a-zA-Z0-9_-]+")), shape = "GetJobDocumentRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_job_document_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Document = structure(logical(0), 
        shape = "JobDocument", type = "string", max = 32768L, 
        locationName = "document")), shape = "GetJobDocumentResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_logging_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GetLoggingOptionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_logging_options_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleArn = structure(logical(0), shape = "AwsArn", 
        type = "string", locationName = "roleArn"), LogLevel = structure(logical(0), 
        shape = "LogLevel", type = "string", locationName = "logLevel")), 
        shape = "GetLoggingOptionsResponse", type = "structure")
    return(populate(args, shape))
}

get_ota_update_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OtaUpdateId = structure(logical(0), 
        shape = "OTAUpdateId", location = "uri", locationName = "otaUpdateId", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+")), 
        shape = "GetOTAUpdateRequest", type = "structure")
    return(populate(args, shape))
}

get_ota_update_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OtaUpdateInfo = structure(list(OtaUpdateId = structure(logical(0), 
        shape = "OTAUpdateId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_-]+", locationName = "otaUpdateId"), 
        OtaUpdateArn = structure(logical(0), shape = "OTAUpdateArn", 
            type = "string", locationName = "otaUpdateArn"), 
        CreationDate = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "creationDate"), 
        LastModifiedDate = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "lastModifiedDate"), 
        Description = structure(logical(0), shape = "OTAUpdateDescription", 
            type = "string", max = 2028L, pattern = "[^\\p{C}]+", 
            locationName = "description"), Targets = structure(list(structure(logical(0), 
            shape = "Target", type = "string")), shape = "Targets", 
            type = "list", min = 1L, locationName = "targets"), 
        AwsJobExecutionsRolloutConfig = structure(list(MaximumPerMinute = structure(logical(0), 
            shape = "MaximumPerMinute", type = "integer", max = 1000L, 
            min = 1L, locationName = "maximumPerMinute")), shape = "AwsJobExecutionsRolloutConfig", 
            type = "structure", locationName = "awsJobExecutionsRolloutConfig"), 
        TargetSelection = structure(logical(0), shape = "TargetSelection", 
            type = "string", locationName = "targetSelection"), 
        OtaUpdateFiles = structure(list(structure(list(FileName = structure(logical(0), 
            shape = "FileName", type = "string", locationName = "fileName"), 
            FileVersion = structure(logical(0), shape = "OTAUpdateFileVersion", 
                type = "string", locationName = "fileVersion"), 
            FileLocation = structure(list(Stream = structure(list(StreamId = structure(logical(0), 
                shape = "StreamId", type = "string", max = 128L, 
                min = 1L, pattern = "[a-zA-Z0-9_-]+", locationName = "streamId"), 
                FileId = structure(logical(0), shape = "FileId", 
                  type = "integer", max = 255L, min = 0L, locationName = "fileId")), 
                shape = "Stream", type = "structure", locationName = "stream"), 
                S3Location = structure(list(Bucket = structure(logical(0), 
                  shape = "S3Bucket", type = "string", min = 1L, 
                  locationName = "bucket"), Key = structure(logical(0), 
                  shape = "S3Key", type = "string", min = 1L, 
                  locationName = "key"), Version = structure(logical(0), 
                  shape = "S3Version", type = "string", locationName = "version")), 
                  shape = "S3Location", type = "structure", locationName = "s3Location")), 
                shape = "FileLocation", type = "structure", locationName = "fileLocation"), 
            CodeSigning = structure(list(AwsSignerJobId = structure(logical(0), 
                shape = "SigningJobId", type = "string", locationName = "awsSignerJobId"), 
                StartSigningJobParameter = structure(list(SigningProfileParameter = structure(list(CertificateArn = structure(logical(0), 
                  shape = "CertificateArn", type = "string", 
                  locationName = "certificateArn"), Platform = structure(logical(0), 
                  shape = "Platform", type = "string", locationName = "platform"), 
                  CertificatePathOnDevice = structure(logical(0), 
                    shape = "CertificatePathOnDevice", type = "string", 
                    locationName = "certificatePathOnDevice")), 
                  shape = "SigningProfileParameter", type = "structure", 
                  locationName = "signingProfileParameter"), 
                  SigningProfileName = structure(logical(0), 
                    shape = "SigningProfileName", type = "string", 
                    locationName = "signingProfileName"), Destination = structure(list(S3Destination = structure(list(Bucket = structure(logical(0), 
                    shape = "S3Bucket", type = "string", min = 1L, 
                    locationName = "bucket"), Prefix = structure(logical(0), 
                    shape = "Prefix", type = "string", locationName = "prefix")), 
                    shape = "S3Destination", type = "structure", 
                    locationName = "s3Destination")), shape = "Destination", 
                    type = "structure", locationName = "destination")), 
                  shape = "StartSigningJobParameter", type = "structure", 
                  locationName = "startSigningJobParameter"), 
                CustomCodeSigning = structure(list(Signature = structure(list(InlineDocument = structure(logical(0), 
                  shape = "Signature", type = "blob", locationName = "inlineDocument")), 
                  shape = "CodeSigningSignature", type = "structure", 
                  locationName = "signature"), CertificateChain = structure(list(CertificateName = structure(logical(0), 
                  shape = "CertificateName", type = "string", 
                  locationName = "certificateName"), InlineDocument = structure(logical(0), 
                  shape = "InlineDocument", type = "string", 
                  locationName = "inlineDocument")), shape = "CodeSigningCertificateChain", 
                  type = "structure", locationName = "certificateChain"), 
                  HashAlgorithm = structure(logical(0), shape = "HashAlgorithm", 
                    type = "string", locationName = "hashAlgorithm"), 
                  SignatureAlgorithm = structure(logical(0), 
                    shape = "SignatureAlgorithm", type = "string", 
                    locationName = "signatureAlgorithm")), shape = "CustomCodeSigning", 
                  type = "structure", locationName = "customCodeSigning")), 
                shape = "CodeSigning", type = "structure", locationName = "codeSigning"), 
            Attributes = structure(list(structure(logical(0), 
                shape = "Value", type = "string")), shape = "AttributesMap", 
                type = "map", locationName = "attributes")), 
            shape = "OTAUpdateFile", type = "structure")), shape = "OTAUpdateFiles", 
            type = "list", max = 50L, min = 1L, locationName = "otaUpdateFiles"), 
        OtaUpdateStatus = structure(logical(0), shape = "OTAUpdateStatus", 
            type = "string", locationName = "otaUpdateStatus"), 
        AwsIotJobId = structure(logical(0), shape = "AwsIotJobId", 
            type = "string", locationName = "awsIotJobId"), AwsIotJobArn = structure(logical(0), 
            shape = "AwsIotJobArn", type = "string", locationName = "awsIotJobArn"), 
        ErrorInfo = structure(list(Code = structure(logical(0), 
            shape = "Code", type = "string", locationName = "code"), 
            Message = structure(logical(0), shape = "OTAUpdateErrorMessage", 
                type = "string", locationName = "message")), 
            shape = "ErrorInfo", type = "structure", locationName = "errorInfo"), 
        AdditionalParameters = structure(list(structure(logical(0), 
            shape = "Value", type = "string")), shape = "AdditionalParameterMap", 
            type = "map", locationName = "additionalParameters")), 
        shape = "OTAUpdateInfo", type = "structure", locationName = "otaUpdateInfo")), 
        shape = "GetOTAUpdateResponse", type = "structure")
    return(populate(args, shape))
}

get_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", location = "uri", locationName = "policyName", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+")), 
        shape = "GetPolicyRequest", type = "structure")
    return(populate(args, shape))
}

get_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string", max = 128L, min = 1L, 
        pattern = "[\\w+=,.@-]+", locationName = "policyName"), 
        PolicyArn = structure(logical(0), shape = "PolicyArn", 
            type = "string", locationName = "policyArn"), PolicyDocument = structure(logical(0), 
            shape = "PolicyDocument", type = "string", locationName = "policyDocument"), 
        DefaultVersionId = structure(logical(0), shape = "PolicyVersionId", 
            type = "string", pattern = "[0-9]+", locationName = "defaultVersionId"), 
        CreationDate = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "creationDate"), 
        LastModifiedDate = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "lastModifiedDate"), 
        GenerationId = structure(logical(0), shape = "GenerationId", 
            type = "string", locationName = "generationId")), 
        shape = "GetPolicyResponse", type = "structure")
    return(populate(args, shape))
}

get_policy_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", location = "uri", locationName = "policyName", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        PolicyVersionId = structure(logical(0), shape = "PolicyVersionId", 
            location = "uri", locationName = "policyVersionId", 
            type = "string", pattern = "[0-9]+")), shape = "GetPolicyVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_policy_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyArn = structure(logical(0), 
        shape = "PolicyArn", type = "string", locationName = "policyArn"), 
        PolicyName = structure(logical(0), shape = "PolicyName", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+", 
            locationName = "policyName"), PolicyDocument = structure(logical(0), 
            shape = "PolicyDocument", type = "string", locationName = "policyDocument"), 
        PolicyVersionId = structure(logical(0), shape = "PolicyVersionId", 
            type = "string", pattern = "[0-9]+", locationName = "policyVersionId"), 
        IsDefaultVersion = structure(logical(0), shape = "IsDefaultVersion", 
            type = "boolean", locationName = "isDefaultVersion"), 
        CreationDate = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "creationDate"), 
        LastModifiedDate = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "lastModifiedDate"), 
        GenerationId = structure(logical(0), shape = "GenerationId", 
            type = "string", locationName = "generationId")), 
        shape = "GetPolicyVersionResponse", type = "structure")
    return(populate(args, shape))
}

get_registration_code_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GetRegistrationCodeRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_registration_code_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistrationCode = structure(logical(0), 
        shape = "RegistrationCode", type = "string", max = 64L, 
        min = 64L, pattern = "(0x)?[a-fA-F0-9]+", locationName = "registrationCode")), 
        shape = "GetRegistrationCodeResponse", type = "structure")
    return(populate(args, shape))
}

get_topic_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleName = structure(logical(0), 
        shape = "RuleName", location = "uri", locationName = "ruleName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$")), 
        shape = "GetTopicRuleRequest", type = "structure")
    return(populate(args, shape))
}

get_topic_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleArn = structure(logical(0), shape = "RuleArn", 
        type = "string", locationName = "ruleArn"), Rule = structure(list(RuleName = structure(logical(0), 
        shape = "RuleName", type = "string", max = 128L, min = 1L, 
        pattern = "^[a-zA-Z0-9_]+$", locationName = "ruleName"), 
        Sql = structure(logical(0), shape = "SQL", type = "string", 
            locationName = "sql"), Description = structure(logical(0), 
            shape = "Description", type = "string", locationName = "description"), 
        CreatedAt = structure(logical(0), shape = "CreatedAtDate", 
            type = "timestamp", locationName = "createdAt"), 
        Actions = structure(list(structure(list(DynamoDB = structure(list(TableName = structure(logical(0), 
            shape = "TableName", type = "string", locationName = "tableName"), 
            RoleArn = structure(logical(0), shape = "AwsArn", 
                type = "string", locationName = "roleArn"), Operation = structure(logical(0), 
                shape = "DynamoOperation", type = "string", locationName = "operation"), 
            HashKeyField = structure(logical(0), shape = "HashKeyField", 
                type = "string", locationName = "hashKeyField"), 
            HashKeyValue = structure(logical(0), shape = "HashKeyValue", 
                type = "string", locationName = "hashKeyValue"), 
            HashKeyType = structure(logical(0), shape = "DynamoKeyType", 
                type = "string", locationName = "hashKeyType"), 
            RangeKeyField = structure(logical(0), shape = "RangeKeyField", 
                type = "string", locationName = "rangeKeyField"), 
            RangeKeyValue = structure(logical(0), shape = "RangeKeyValue", 
                type = "string", locationName = "rangeKeyValue"), 
            RangeKeyType = structure(logical(0), shape = "DynamoKeyType", 
                type = "string", locationName = "rangeKeyType"), 
            PayloadField = structure(logical(0), shape = "PayloadField", 
                type = "string", locationName = "payloadField")), 
            shape = "DynamoDBAction", type = "structure", locationName = "dynamoDB"), 
            DynamoDBv2 = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                PutItem = structure(list(TableName = structure(logical(0), 
                  shape = "TableName", type = "string", locationName = "tableName")), 
                  shape = "PutItemInput", type = "structure", 
                  locationName = "putItem")), shape = "DynamoDBv2Action", 
                type = "structure", locationName = "dynamoDBv2"), 
            Lambda = structure(list(FunctionArn = structure(logical(0), 
                shape = "FunctionArn", type = "string", locationName = "functionArn")), 
                shape = "LambdaAction", type = "structure", locationName = "lambda"), 
            Sns = structure(list(TargetArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "targetArn"), 
                RoleArn = structure(logical(0), shape = "AwsArn", 
                  type = "string", locationName = "roleArn"), 
                MessageFormat = structure(logical(0), shape = "MessageFormat", 
                  type = "string", locationName = "messageFormat")), 
                shape = "SnsAction", type = "structure", locationName = "sns"), 
            Sqs = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                QueueUrl = structure(logical(0), shape = "QueueUrl", 
                  type = "string", locationName = "queueUrl"), 
                UseBase64 = structure(logical(0), shape = "UseBase64", 
                  type = "boolean", locationName = "useBase64")), 
                shape = "SqsAction", type = "structure", locationName = "sqs"), 
            Kinesis = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                StreamName = structure(logical(0), shape = "StreamName", 
                  type = "string", locationName = "streamName"), 
                PartitionKey = structure(logical(0), shape = "PartitionKey", 
                  type = "string", locationName = "partitionKey")), 
                shape = "KinesisAction", type = "structure", 
                locationName = "kinesis"), Republish = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                Topic = structure(logical(0), shape = "TopicPattern", 
                  type = "string", locationName = "topic")), 
                shape = "RepublishAction", type = "structure", 
                locationName = "republish"), S3 = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                BucketName = structure(logical(0), shape = "BucketName", 
                  type = "string", locationName = "bucketName"), 
                Key = structure(logical(0), shape = "Key", type = "string", 
                  locationName = "key"), CannedAcl = structure(logical(0), 
                  shape = "CannedAccessControlList", type = "string", 
                  locationName = "cannedAcl")), shape = "S3Action", 
                type = "structure", locationName = "s3"), Firehose = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                DeliveryStreamName = structure(logical(0), shape = "DeliveryStreamName", 
                  type = "string", locationName = "deliveryStreamName"), 
                Separator = structure(logical(0), shape = "FirehoseSeparator", 
                  type = "string", pattern = "([\\n\\t])|(\\r\\n)|(,)", 
                  locationName = "separator")), shape = "FirehoseAction", 
                type = "structure", locationName = "firehose"), 
            CloudwatchMetric = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                MetricNamespace = structure(logical(0), shape = "String", 
                  type = "string", locationName = "metricNamespace"), 
                MetricName = structure(logical(0), shape = "String", 
                  type = "string", locationName = "metricName"), 
                MetricValue = structure(logical(0), shape = "String", 
                  type = "string", locationName = "metricValue"), 
                MetricUnit = structure(logical(0), shape = "String", 
                  type = "string", locationName = "metricUnit"), 
                MetricTimestamp = structure(logical(0), shape = "String", 
                  type = "string", locationName = "metricTimestamp")), 
                shape = "CloudwatchMetricAction", type = "structure", 
                locationName = "cloudwatchMetric"), CloudwatchAlarm = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                AlarmName = structure(logical(0), shape = "AlarmName", 
                  type = "string", locationName = "alarmName"), 
                StateReason = structure(logical(0), shape = "StateReason", 
                  type = "string", locationName = "stateReason"), 
                StateValue = structure(logical(0), shape = "StateValue", 
                  type = "string", locationName = "stateValue")), 
                shape = "CloudwatchAlarmAction", type = "structure", 
                locationName = "cloudwatchAlarm"), Elasticsearch = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                Endpoint = structure(logical(0), shape = "ElasticsearchEndpoint", 
                  type = "string", pattern = "https?://.*", locationName = "endpoint"), 
                Index = structure(logical(0), shape = "ElasticsearchIndex", 
                  type = "string", locationName = "index"), Type = structure(logical(0), 
                  shape = "ElasticsearchType", type = "string", 
                  locationName = "type"), Id = structure(logical(0), 
                  shape = "ElasticsearchId", type = "string", 
                  locationName = "id")), shape = "ElasticsearchAction", 
                type = "structure", locationName = "elasticsearch"), 
            Salesforce = structure(list(Token = structure(logical(0), 
                shape = "SalesforceToken", type = "string", min = 40L, 
                locationName = "token"), Url = structure(logical(0), 
                shape = "SalesforceEndpoint", type = "string", 
                max = 2000L, pattern = "https://ingestion-[a-zA-Z0-9]{1,12}\\.[a-zA-Z0-9]+\\.((sfdc-matrix\\.net)|(sfdcnow\\.com))/streams/\\w{1,20}/\\w{1,20}/event", 
                locationName = "url")), shape = "SalesforceAction", 
                type = "structure", locationName = "salesforce"), 
            IotAnalytics = structure(list(ChannelArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "channelArn"), 
                ChannelName = structure(logical(0), shape = "ChannelName", 
                  type = "string", locationName = "channelName"), 
                RoleArn = structure(logical(0), shape = "AwsArn", 
                  type = "string", locationName = "roleArn")), 
                shape = "IotAnalyticsAction", type = "structure", 
                locationName = "iotAnalytics"), StepFunctions = structure(list(ExecutionNamePrefix = structure(logical(0), 
                shape = "ExecutionNamePrefix", type = "string", 
                locationName = "executionNamePrefix"), StateMachineName = structure(logical(0), 
                shape = "StateMachineName", type = "string", 
                locationName = "stateMachineName"), RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn")), 
                shape = "StepFunctionsAction", type = "structure", 
                locationName = "stepFunctions")), shape = "Action", 
            type = "structure")), shape = "ActionList", type = "list", 
            max = 10L, min = 0L, locationName = "actions"), RuleDisabled = structure(logical(0), 
            shape = "IsDisabled", type = "boolean", locationName = "ruleDisabled"), 
        AwsIotSqlVersion = structure(logical(0), shape = "AwsIotSqlVersion", 
            type = "string", locationName = "awsIotSqlVersion"), 
        ErrorAction = structure(list(DynamoDB = structure(list(TableName = structure(logical(0), 
            shape = "TableName", type = "string", locationName = "tableName"), 
            RoleArn = structure(logical(0), shape = "AwsArn", 
                type = "string", locationName = "roleArn"), Operation = structure(logical(0), 
                shape = "DynamoOperation", type = "string", locationName = "operation"), 
            HashKeyField = structure(logical(0), shape = "HashKeyField", 
                type = "string", locationName = "hashKeyField"), 
            HashKeyValue = structure(logical(0), shape = "HashKeyValue", 
                type = "string", locationName = "hashKeyValue"), 
            HashKeyType = structure(logical(0), shape = "DynamoKeyType", 
                type = "string", locationName = "hashKeyType"), 
            RangeKeyField = structure(logical(0), shape = "RangeKeyField", 
                type = "string", locationName = "rangeKeyField"), 
            RangeKeyValue = structure(logical(0), shape = "RangeKeyValue", 
                type = "string", locationName = "rangeKeyValue"), 
            RangeKeyType = structure(logical(0), shape = "DynamoKeyType", 
                type = "string", locationName = "rangeKeyType"), 
            PayloadField = structure(logical(0), shape = "PayloadField", 
                type = "string", locationName = "payloadField")), 
            shape = "DynamoDBAction", type = "structure", locationName = "dynamoDB"), 
            DynamoDBv2 = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                PutItem = structure(list(TableName = structure(logical(0), 
                  shape = "TableName", type = "string", locationName = "tableName")), 
                  shape = "PutItemInput", type = "structure", 
                  locationName = "putItem")), shape = "DynamoDBv2Action", 
                type = "structure", locationName = "dynamoDBv2"), 
            Lambda = structure(list(FunctionArn = structure(logical(0), 
                shape = "FunctionArn", type = "string", locationName = "functionArn")), 
                shape = "LambdaAction", type = "structure", locationName = "lambda"), 
            Sns = structure(list(TargetArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "targetArn"), 
                RoleArn = structure(logical(0), shape = "AwsArn", 
                  type = "string", locationName = "roleArn"), 
                MessageFormat = structure(logical(0), shape = "MessageFormat", 
                  type = "string", locationName = "messageFormat")), 
                shape = "SnsAction", type = "structure", locationName = "sns"), 
            Sqs = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                QueueUrl = structure(logical(0), shape = "QueueUrl", 
                  type = "string", locationName = "queueUrl"), 
                UseBase64 = structure(logical(0), shape = "UseBase64", 
                  type = "boolean", locationName = "useBase64")), 
                shape = "SqsAction", type = "structure", locationName = "sqs"), 
            Kinesis = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                StreamName = structure(logical(0), shape = "StreamName", 
                  type = "string", locationName = "streamName"), 
                PartitionKey = structure(logical(0), shape = "PartitionKey", 
                  type = "string", locationName = "partitionKey")), 
                shape = "KinesisAction", type = "structure", 
                locationName = "kinesis"), Republish = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                Topic = structure(logical(0), shape = "TopicPattern", 
                  type = "string", locationName = "topic")), 
                shape = "RepublishAction", type = "structure", 
                locationName = "republish"), S3 = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                BucketName = structure(logical(0), shape = "BucketName", 
                  type = "string", locationName = "bucketName"), 
                Key = structure(logical(0), shape = "Key", type = "string", 
                  locationName = "key"), CannedAcl = structure(logical(0), 
                  shape = "CannedAccessControlList", type = "string", 
                  locationName = "cannedAcl")), shape = "S3Action", 
                type = "structure", locationName = "s3"), Firehose = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                DeliveryStreamName = structure(logical(0), shape = "DeliveryStreamName", 
                  type = "string", locationName = "deliveryStreamName"), 
                Separator = structure(logical(0), shape = "FirehoseSeparator", 
                  type = "string", pattern = "([\\n\\t])|(\\r\\n)|(,)", 
                  locationName = "separator")), shape = "FirehoseAction", 
                type = "structure", locationName = "firehose"), 
            CloudwatchMetric = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                MetricNamespace = structure(logical(0), shape = "String", 
                  type = "string", locationName = "metricNamespace"), 
                MetricName = structure(logical(0), shape = "String", 
                  type = "string", locationName = "metricName"), 
                MetricValue = structure(logical(0), shape = "String", 
                  type = "string", locationName = "metricValue"), 
                MetricUnit = structure(logical(0), shape = "String", 
                  type = "string", locationName = "metricUnit"), 
                MetricTimestamp = structure(logical(0), shape = "String", 
                  type = "string", locationName = "metricTimestamp")), 
                shape = "CloudwatchMetricAction", type = "structure", 
                locationName = "cloudwatchMetric"), CloudwatchAlarm = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                AlarmName = structure(logical(0), shape = "AlarmName", 
                  type = "string", locationName = "alarmName"), 
                StateReason = structure(logical(0), shape = "StateReason", 
                  type = "string", locationName = "stateReason"), 
                StateValue = structure(logical(0), shape = "StateValue", 
                  type = "string", locationName = "stateValue")), 
                shape = "CloudwatchAlarmAction", type = "structure", 
                locationName = "cloudwatchAlarm"), Elasticsearch = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                Endpoint = structure(logical(0), shape = "ElasticsearchEndpoint", 
                  type = "string", pattern = "https?://.*", locationName = "endpoint"), 
                Index = structure(logical(0), shape = "ElasticsearchIndex", 
                  type = "string", locationName = "index"), Type = structure(logical(0), 
                  shape = "ElasticsearchType", type = "string", 
                  locationName = "type"), Id = structure(logical(0), 
                  shape = "ElasticsearchId", type = "string", 
                  locationName = "id")), shape = "ElasticsearchAction", 
                type = "structure", locationName = "elasticsearch"), 
            Salesforce = structure(list(Token = structure(logical(0), 
                shape = "SalesforceToken", type = "string", min = 40L, 
                locationName = "token"), Url = structure(logical(0), 
                shape = "SalesforceEndpoint", type = "string", 
                max = 2000L, pattern = "https://ingestion-[a-zA-Z0-9]{1,12}\\.[a-zA-Z0-9]+\\.((sfdc-matrix\\.net)|(sfdcnow\\.com))/streams/\\w{1,20}/\\w{1,20}/event", 
                locationName = "url")), shape = "SalesforceAction", 
                type = "structure", locationName = "salesforce"), 
            IotAnalytics = structure(list(ChannelArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "channelArn"), 
                ChannelName = structure(logical(0), shape = "ChannelName", 
                  type = "string", locationName = "channelName"), 
                RoleArn = structure(logical(0), shape = "AwsArn", 
                  type = "string", locationName = "roleArn")), 
                shape = "IotAnalyticsAction", type = "structure", 
                locationName = "iotAnalytics"), StepFunctions = structure(list(ExecutionNamePrefix = structure(logical(0), 
                shape = "ExecutionNamePrefix", type = "string", 
                locationName = "executionNamePrefix"), StateMachineName = structure(logical(0), 
                shape = "StateMachineName", type = "string", 
                locationName = "stateMachineName"), RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn")), 
                shape = "StepFunctionsAction", type = "structure", 
                locationName = "stepFunctions")), shape = "Action", 
            type = "structure", locationName = "errorAction")), 
        shape = "TopicRule", type = "structure", locationName = "rule")), 
        shape = "GetTopicRuleResponse", type = "structure")
    return(populate(args, shape))
}

get_v2_logging_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GetV2LoggingOptionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_v2_logging_options_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleArn = structure(logical(0), shape = "AwsArn", 
        type = "string", locationName = "roleArn"), DefaultLogLevel = structure(logical(0), 
        shape = "LogLevel", type = "string", locationName = "defaultLogLevel"), 
        DisableAllLogs = structure(logical(0), shape = "DisableAllLogs", 
            type = "boolean", locationName = "disableAllLogs")), 
        shape = "GetV2LoggingOptionsResponse", type = "structure")
    return(populate(args, shape))
}

list_active_violations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingName = structure(logical(0), 
        shape = "ThingName", location = "querystring", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        SecurityProfileName = structure(logical(0), shape = "SecurityProfileName", 
            location = "querystring", locationName = "securityProfileName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            location = "querystring", locationName = "nextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", location = "querystring", locationName = "maxResults", 
            type = "integer", max = 250L, min = 1L)), shape = "ListActiveViolationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_active_violations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActiveViolations = structure(list(structure(list(ViolationId = structure(logical(0), 
        shape = "ViolationId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9\\-]+", locationName = "violationId"), 
        ThingName = structure(logical(0), shape = "ThingName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+", 
            locationName = "thingName"), SecurityProfileName = structure(logical(0), 
            shape = "SecurityProfileName", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "securityProfileName"), 
        Behavior = structure(list(Name = structure(logical(0), 
            shape = "BehaviorName", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "name"), 
            Metric = structure(logical(0), shape = "BehaviorMetric", 
                type = "string", locationName = "metric"), Criteria = structure(list(ComparisonOperator = structure(logical(0), 
                shape = "ComparisonOperator", type = "string", 
                locationName = "comparisonOperator"), Value = structure(list(Count = structure(logical(0), 
                shape = "UnsignedLong", type = "long", min = 0L, 
                locationName = "count"), Cidrs = structure(list(structure(logical(0), 
                shape = "Cidr", type = "string", max = 43L, min = 2L, 
                pattern = "[a-fA-F0-9:\\.\\/]+")), shape = "Cidrs", 
                type = "list", locationName = "cidrs"), Ports = structure(list(structure(logical(0), 
                shape = "Port", type = "integer", max = 65535L, 
                min = 0L)), shape = "Ports", type = "list", locationName = "ports")), 
                shape = "MetricValue", type = "structure", locationName = "value"), 
                DurationSeconds = structure(logical(0), shape = "DurationSeconds", 
                  type = "integer", locationName = "durationSeconds")), 
                shape = "BehaviorCriteria", type = "structure", 
                locationName = "criteria")), shape = "Behavior", 
            type = "structure", locationName = "behavior"), LastViolationValue = structure(list(Count = structure(logical(0), 
            shape = "UnsignedLong", type = "long", min = 0L, 
            locationName = "count"), Cidrs = structure(list(structure(logical(0), 
            shape = "Cidr", type = "string", max = 43L, min = 2L, 
            pattern = "[a-fA-F0-9:\\.\\/]+")), shape = "Cidrs", 
            type = "list", locationName = "cidrs"), Ports = structure(list(structure(logical(0), 
            shape = "Port", type = "integer", max = 65535L, min = 0L)), 
            shape = "Ports", type = "list", locationName = "ports")), 
            shape = "MetricValue", type = "structure", locationName = "lastViolationValue"), 
        LastViolationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastViolationTime"), 
        ViolationStartTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "violationStartTime")), 
        shape = "ActiveViolation", type = "structure")), shape = "ActiveViolations", 
        type = "list", locationName = "activeViolations"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListActiveViolationsResponse", type = "structure")
    return(populate(args, shape))
}

list_attached_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Target = structure(logical(0), shape = "PolicyTarget", 
        location = "uri", locationName = "target", type = "string"), 
        Recursive = structure(logical(0), shape = "Recursive", 
            location = "querystring", locationName = "recursive", 
            type = "boolean"), Marker = structure(logical(0), 
            shape = "Marker", location = "querystring", locationName = "marker", 
            type = "string", pattern = "[A-Za-z0-9+/]+={0,2}"), 
        PageSize = structure(logical(0), shape = "PageSize", 
            location = "querystring", locationName = "pageSize", 
            type = "integer", max = 250L, min = 1L)), shape = "ListAttachedPoliciesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_attached_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policies = structure(list(structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string", max = 128L, min = 1L, 
        pattern = "[\\w+=,.@-]+", locationName = "policyName"), 
        PolicyArn = structure(logical(0), shape = "PolicyArn", 
            type = "string", locationName = "policyArn")), shape = "Policy", 
        type = "structure")), shape = "Policies", type = "list", 
        locationName = "policies"), NextMarker = structure(logical(0), 
        shape = "Marker", type = "string", pattern = "[A-Za-z0-9+/]+={0,2}", 
        locationName = "nextMarker")), shape = "ListAttachedPoliciesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_audit_findings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskId = structure(logical(0), shape = "AuditTaskId", 
        type = "string", max = 40L, min = 1L, pattern = "[a-zA-Z0-9\\-]+", 
        locationName = "taskId"), CheckName = structure(logical(0), 
        shape = "AuditCheckName", type = "string", locationName = "checkName"), 
        ResourceIdentifier = structure(list(DeviceCertificateId = structure(logical(0), 
            shape = "CertificateId", type = "string", max = 64L, 
            min = 64L, pattern = "(0x)?[a-fA-F0-9]+", locationName = "deviceCertificateId"), 
            CaCertificateId = structure(logical(0), shape = "CertificateId", 
                type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+", 
                locationName = "caCertificateId"), CognitoIdentityPoolId = structure(logical(0), 
                shape = "CognitoIdentityPoolId", type = "string", 
                locationName = "cognitoIdentityPoolId"), ClientId = structure(logical(0), 
                shape = "ClientId", type = "string", locationName = "clientId"), 
            PolicyVersionIdentifier = structure(list(PolicyName = structure(logical(0), 
                shape = "PolicyName", type = "string", max = 128L, 
                min = 1L, pattern = "[\\w+=,.@-]+", locationName = "policyName"), 
                PolicyVersionId = structure(logical(0), shape = "PolicyVersionId", 
                  type = "string", pattern = "[0-9]+", locationName = "policyVersionId")), 
                shape = "PolicyVersionIdentifier", type = "structure", 
                locationName = "policyVersionIdentifier"), Account = structure(logical(0), 
                shape = "AwsAccountId", type = "string", max = 12L, 
                min = 12L, pattern = "[0-9]+", locationName = "account")), 
            shape = "ResourceIdentifier", type = "structure", 
            locationName = "resourceIdentifier"), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", max = 250L, 
            min = 1L, locationName = "maxResults"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", locationName = "nextToken"), 
        StartTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "startTime"), 
        EndTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "endTime")), shape = "ListAuditFindingsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_audit_findings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Findings = structure(list(structure(list(TaskId = structure(logical(0), 
        shape = "AuditTaskId", type = "string", max = 40L, min = 1L, 
        pattern = "[a-zA-Z0-9\\-]+", locationName = "taskId"), 
        CheckName = structure(logical(0), shape = "AuditCheckName", 
            type = "string", locationName = "checkName"), TaskStartTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "taskStartTime"), 
        FindingTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "findingTime"), 
        Severity = structure(logical(0), shape = "AuditFindingSeverity", 
            type = "string", locationName = "severity"), NonCompliantResource = structure(list(ResourceType = structure(logical(0), 
            shape = "ResourceType", type = "string", locationName = "resourceType"), 
            ResourceIdentifier = structure(list(DeviceCertificateId = structure(logical(0), 
                shape = "CertificateId", type = "string", max = 64L, 
                min = 64L, pattern = "(0x)?[a-fA-F0-9]+", locationName = "deviceCertificateId"), 
                CaCertificateId = structure(logical(0), shape = "CertificateId", 
                  type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+", 
                  locationName = "caCertificateId"), CognitoIdentityPoolId = structure(logical(0), 
                  shape = "CognitoIdentityPoolId", type = "string", 
                  locationName = "cognitoIdentityPoolId"), ClientId = structure(logical(0), 
                  shape = "ClientId", type = "string", locationName = "clientId"), 
                PolicyVersionIdentifier = structure(list(PolicyName = structure(logical(0), 
                  shape = "PolicyName", type = "string", max = 128L, 
                  min = 1L, pattern = "[\\w+=,.@-]+", locationName = "policyName"), 
                  PolicyVersionId = structure(logical(0), shape = "PolicyVersionId", 
                    type = "string", pattern = "[0-9]+", locationName = "policyVersionId")), 
                  shape = "PolicyVersionIdentifier", type = "structure", 
                  locationName = "policyVersionIdentifier"), 
                Account = structure(logical(0), shape = "AwsAccountId", 
                  type = "string", max = 12L, min = 12L, pattern = "[0-9]+", 
                  locationName = "account")), shape = "ResourceIdentifier", 
                type = "structure", locationName = "resourceIdentifier"), 
            AdditionalInfo = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "StringMap", 
                type = "map", locationName = "additionalInfo")), 
            shape = "NonCompliantResource", type = "structure", 
            locationName = "nonCompliantResource"), RelatedResources = structure(list(structure(list(ResourceType = structure(logical(0), 
            shape = "ResourceType", type = "string", locationName = "resourceType"), 
            ResourceIdentifier = structure(list(DeviceCertificateId = structure(logical(0), 
                shape = "CertificateId", type = "string", max = 64L, 
                min = 64L, pattern = "(0x)?[a-fA-F0-9]+", locationName = "deviceCertificateId"), 
                CaCertificateId = structure(logical(0), shape = "CertificateId", 
                  type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+", 
                  locationName = "caCertificateId"), CognitoIdentityPoolId = structure(logical(0), 
                  shape = "CognitoIdentityPoolId", type = "string", 
                  locationName = "cognitoIdentityPoolId"), ClientId = structure(logical(0), 
                  shape = "ClientId", type = "string", locationName = "clientId"), 
                PolicyVersionIdentifier = structure(list(PolicyName = structure(logical(0), 
                  shape = "PolicyName", type = "string", max = 128L, 
                  min = 1L, pattern = "[\\w+=,.@-]+", locationName = "policyName"), 
                  PolicyVersionId = structure(logical(0), shape = "PolicyVersionId", 
                    type = "string", pattern = "[0-9]+", locationName = "policyVersionId")), 
                  shape = "PolicyVersionIdentifier", type = "structure", 
                  locationName = "policyVersionIdentifier"), 
                Account = structure(logical(0), shape = "AwsAccountId", 
                  type = "string", max = 12L, min = 12L, pattern = "[0-9]+", 
                  locationName = "account")), shape = "ResourceIdentifier", 
                type = "structure", locationName = "resourceIdentifier"), 
            AdditionalInfo = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "StringMap", 
                type = "map", locationName = "additionalInfo")), 
            shape = "RelatedResource", type = "structure")), 
            shape = "RelatedResources", type = "list", locationName = "relatedResources"), 
        ReasonForNonCompliance = structure(logical(0), shape = "ReasonForNonCompliance", 
            type = "string", locationName = "reasonForNonCompliance"), 
        ReasonForNonComplianceCode = structure(logical(0), shape = "ReasonForNonComplianceCode", 
            type = "string", locationName = "reasonForNonComplianceCode")), 
        shape = "AuditFinding", type = "structure")), shape = "AuditFindings", 
        type = "list", locationName = "findings"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListAuditFindingsResponse", type = "structure")
    return(populate(args, shape))
}

list_audit_tasks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StartTime = structure(logical(0), 
        shape = "Timestamp", location = "querystring", locationName = "startTime", 
        type = "timestamp"), EndTime = structure(logical(0), 
        shape = "Timestamp", location = "querystring", locationName = "endTime", 
        type = "timestamp"), TaskType = structure(logical(0), 
        shape = "AuditTaskType", location = "querystring", locationName = "taskType", 
        type = "string"), TaskStatus = structure(logical(0), 
        shape = "AuditTaskStatus", location = "querystring", 
        locationName = "taskStatus", type = "string"), NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", max = 250L, min = 1L)), shape = "ListAuditTasksRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_audit_tasks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tasks = structure(list(structure(list(TaskId = structure(logical(0), 
        shape = "AuditTaskId", type = "string", max = 40L, min = 1L, 
        pattern = "[a-zA-Z0-9\\-]+", locationName = "taskId"), 
        TaskStatus = structure(logical(0), shape = "AuditTaskStatus", 
            type = "string", locationName = "taskStatus"), TaskType = structure(logical(0), 
            shape = "AuditTaskType", type = "string", locationName = "taskType")), 
        shape = "AuditTaskMetadata", type = "structure")), shape = "AuditTaskMetadataList", 
        type = "list", locationName = "tasks"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListAuditTasksResponse", type = "structure")
    return(populate(args, shape))
}

list_authorizers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PageSize = structure(logical(0), 
        shape = "PageSize", location = "querystring", locationName = "pageSize", 
        type = "integer", max = 250L, min = 1L), Marker = structure(logical(0), 
        shape = "Marker", location = "querystring", locationName = "marker", 
        type = "string", pattern = "[A-Za-z0-9+/]+={0,2}"), AscendingOrder = structure(logical(0), 
        shape = "AscendingOrder", location = "querystring", locationName = "ascendingOrder", 
        type = "boolean"), Status = structure(logical(0), shape = "AuthorizerStatus", 
        location = "querystring", locationName = "status", type = "string")), 
        shape = "ListAuthorizersRequest", type = "structure")
    return(populate(args, shape))
}

list_authorizers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Authorizers = structure(list(structure(list(AuthorizerName = structure(logical(0), 
        shape = "AuthorizerName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w=,@-]+", locationName = "authorizerName"), 
        AuthorizerArn = structure(logical(0), shape = "AuthorizerArn", 
            type = "string", locationName = "authorizerArn")), 
        shape = "AuthorizerSummary", type = "structure")), shape = "Authorizers", 
        type = "list", locationName = "authorizers"), NextMarker = structure(logical(0), 
        shape = "Marker", type = "string", pattern = "[A-Za-z0-9+/]+={0,2}", 
        locationName = "nextMarker")), shape = "ListAuthorizersResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_ca_certificates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PageSize = structure(logical(0), 
        shape = "PageSize", location = "querystring", locationName = "pageSize", 
        type = "integer", max = 250L, min = 1L), Marker = structure(logical(0), 
        shape = "Marker", location = "querystring", locationName = "marker", 
        type = "string", pattern = "[A-Za-z0-9+/]+={0,2}"), AscendingOrder = structure(logical(0), 
        shape = "AscendingOrder", location = "querystring", locationName = "ascendingOrder", 
        type = "boolean")), shape = "ListCACertificatesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_ca_certificates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Certificates = structure(list(structure(list(CertificateArn = structure(logical(0), 
        shape = "CertificateArn", type = "string", locationName = "certificateArn"), 
        CertificateId = structure(logical(0), shape = "CertificateId", 
            type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+", 
            locationName = "certificateId"), Status = structure(logical(0), 
            shape = "CACertificateStatus", type = "string", locationName = "status"), 
        CreationDate = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "creationDate")), 
        shape = "CACertificate", type = "structure")), shape = "CACertificates", 
        type = "list", locationName = "certificates"), NextMarker = structure(logical(0), 
        shape = "Marker", type = "string", pattern = "[A-Za-z0-9+/]+={0,2}", 
        locationName = "nextMarker")), shape = "ListCACertificatesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_certificates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PageSize = structure(logical(0), 
        shape = "PageSize", location = "querystring", locationName = "pageSize", 
        type = "integer", max = 250L, min = 1L), Marker = structure(logical(0), 
        shape = "Marker", location = "querystring", locationName = "marker", 
        type = "string", pattern = "[A-Za-z0-9+/]+={0,2}"), AscendingOrder = structure(logical(0), 
        shape = "AscendingOrder", location = "querystring", locationName = "ascendingOrder", 
        type = "boolean")), shape = "ListCertificatesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_certificates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Certificates = structure(list(structure(list(CertificateArn = structure(logical(0), 
        shape = "CertificateArn", type = "string", locationName = "certificateArn"), 
        CertificateId = structure(logical(0), shape = "CertificateId", 
            type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+", 
            locationName = "certificateId"), Status = structure(logical(0), 
            shape = "CertificateStatus", type = "string", locationName = "status"), 
        CreationDate = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "creationDate")), 
        shape = "Certificate", type = "structure")), shape = "Certificates", 
        type = "list", locationName = "certificates"), NextMarker = structure(logical(0), 
        shape = "Marker", type = "string", pattern = "[A-Za-z0-9+/]+={0,2}", 
        locationName = "nextMarker")), shape = "ListCertificatesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_certificates_by_ca_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CaCertificateId = structure(logical(0), 
        shape = "CertificateId", location = "uri", locationName = "caCertificateId", 
        type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+"), 
        PageSize = structure(logical(0), shape = "PageSize", 
            location = "querystring", locationName = "pageSize", 
            type = "integer", max = 250L, min = 1L), Marker = structure(logical(0), 
            shape = "Marker", location = "querystring", locationName = "marker", 
            type = "string", pattern = "[A-Za-z0-9+/]+={0,2}"), 
        AscendingOrder = structure(logical(0), shape = "AscendingOrder", 
            location = "querystring", locationName = "ascendingOrder", 
            type = "boolean")), shape = "ListCertificatesByCARequest", 
        type = "structure")
    return(populate(args, shape))
}

list_certificates_by_ca_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Certificates = structure(list(structure(list(CertificateArn = structure(logical(0), 
        shape = "CertificateArn", type = "string", locationName = "certificateArn"), 
        CertificateId = structure(logical(0), shape = "CertificateId", 
            type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+", 
            locationName = "certificateId"), Status = structure(logical(0), 
            shape = "CertificateStatus", type = "string", locationName = "status"), 
        CreationDate = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "creationDate")), 
        shape = "Certificate", type = "structure")), shape = "Certificates", 
        type = "list", locationName = "certificates"), NextMarker = structure(logical(0), 
        shape = "Marker", type = "string", pattern = "[A-Za-z0-9+/]+={0,2}", 
        locationName = "nextMarker")), shape = "ListCertificatesByCAResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_indices_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "QueryMaxResults", location = "querystring", 
        locationName = "maxResults", type = "integer", max = 500L, 
        min = 1L)), shape = "ListIndicesRequest", type = "structure")
    return(populate(args, shape))
}

list_indices_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IndexNames = structure(list(structure(logical(0), 
        shape = "IndexName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9:_-]+")), shape = "IndexNamesList", 
        type = "list", locationName = "indexNames"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListIndicesResponse", type = "structure")
    return(populate(args, shape))
}

list_job_executions_for_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        location = "uri", locationName = "jobId", type = "string", 
        max = 64L, min = 1L, pattern = "[a-zA-Z0-9_-]+"), Status = structure(logical(0), 
        shape = "JobExecutionStatus", location = "querystring", 
        locationName = "status", type = "string"), MaxResults = structure(logical(0), 
        shape = "LaserMaxResults", location = "querystring", 
        locationName = "maxResults", type = "integer", max = 250L, 
        min = 1L), NextToken = structure(logical(0), shape = "NextToken", 
        location = "querystring", locationName = "nextToken", 
        type = "string")), shape = "ListJobExecutionsForJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_job_executions_for_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExecutionSummaries = structure(list(structure(list(ThingArn = structure(logical(0), 
        shape = "ThingArn", type = "string", locationName = "thingArn"), 
        JobExecutionSummary = structure(list(Status = structure(logical(0), 
            shape = "JobExecutionStatus", type = "string", locationName = "status"), 
            QueuedAt = structure(logical(0), shape = "DateType", 
                type = "timestamp", locationName = "queuedAt"), 
            StartedAt = structure(logical(0), shape = "DateType", 
                type = "timestamp", locationName = "startedAt"), 
            LastUpdatedAt = structure(logical(0), shape = "DateType", 
                type = "timestamp", locationName = "lastUpdatedAt"), 
            ExecutionNumber = structure(logical(0), shape = "ExecutionNumber", 
                type = "long", locationName = "executionNumber")), 
            shape = "JobExecutionSummary", type = "structure", 
            locationName = "jobExecutionSummary")), shape = "JobExecutionSummaryForJob", 
        type = "structure")), shape = "JobExecutionSummaryForJobList", 
        type = "list", locationName = "executionSummaries"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "ListJobExecutionsForJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_job_executions_for_thing_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingName = structure(logical(0), 
        shape = "ThingName", location = "uri", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        Status = structure(logical(0), shape = "JobExecutionStatus", 
            location = "querystring", locationName = "status", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "LaserMaxResults", location = "querystring", 
            locationName = "maxResults", type = "integer", max = 250L, 
            min = 1L), NextToken = structure(logical(0), shape = "NextToken", 
            location = "querystring", locationName = "nextToken", 
            type = "string")), shape = "ListJobExecutionsForThingRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_job_executions_for_thing_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExecutionSummaries = structure(list(structure(list(JobId = structure(logical(0), 
        shape = "JobId", type = "string", max = 64L, min = 1L, 
        pattern = "[a-zA-Z0-9_-]+", locationName = "jobId"), 
        JobExecutionSummary = structure(list(Status = structure(logical(0), 
            shape = "JobExecutionStatus", type = "string", locationName = "status"), 
            QueuedAt = structure(logical(0), shape = "DateType", 
                type = "timestamp", locationName = "queuedAt"), 
            StartedAt = structure(logical(0), shape = "DateType", 
                type = "timestamp", locationName = "startedAt"), 
            LastUpdatedAt = structure(logical(0), shape = "DateType", 
                type = "timestamp", locationName = "lastUpdatedAt"), 
            ExecutionNumber = structure(logical(0), shape = "ExecutionNumber", 
                type = "long", locationName = "executionNumber")), 
            shape = "JobExecutionSummary", type = "structure", 
            locationName = "jobExecutionSummary")), shape = "JobExecutionSummaryForThing", 
        type = "structure")), shape = "JobExecutionSummaryForThingList", 
        type = "list", locationName = "executionSummaries"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "ListJobExecutionsForThingResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "JobStatus", 
        location = "querystring", locationName = "status", type = "string"), 
        TargetSelection = structure(logical(0), shape = "TargetSelection", 
            location = "querystring", locationName = "targetSelection", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "LaserMaxResults", location = "querystring", 
            locationName = "maxResults", type = "integer", max = 250L, 
            min = 1L), NextToken = structure(logical(0), shape = "NextToken", 
            location = "querystring", locationName = "nextToken", 
            type = "string"), ThingGroupName = structure(logical(0), 
            shape = "ThingGroupName", location = "querystring", 
            locationName = "thingGroupName", type = "string", 
            max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        ThingGroupId = structure(logical(0), shape = "ThingGroupId", 
            location = "querystring", locationName = "thingGroupId", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9\\-]+")), 
        shape = "ListJobsRequest", type = "structure")
    return(populate(args, shape))
}

list_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Jobs = structure(list(structure(list(JobArn = structure(logical(0), 
        shape = "JobArn", type = "string", locationName = "jobArn"), 
        JobId = structure(logical(0), shape = "JobId", type = "string", 
            max = 64L, min = 1L, pattern = "[a-zA-Z0-9_-]+", 
            locationName = "jobId"), ThingGroupId = structure(logical(0), 
            shape = "ThingGroupId", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9\\-]+", locationName = "thingGroupId"), 
        TargetSelection = structure(logical(0), shape = "TargetSelection", 
            type = "string", locationName = "targetSelection"), 
        Status = structure(logical(0), shape = "JobStatus", type = "string", 
            locationName = "status"), CreatedAt = structure(logical(0), 
            shape = "DateType", type = "timestamp", locationName = "createdAt"), 
        LastUpdatedAt = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "lastUpdatedAt"), 
        CompletedAt = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "completedAt")), 
        shape = "JobSummary", type = "structure")), shape = "JobSummaryList", 
        type = "list", locationName = "jobs"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListJobsResponse", type = "structure")
    return(populate(args, shape))
}

list_ota_updates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", max = 250L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), OtaUpdateStatus = structure(logical(0), 
        shape = "OTAUpdateStatus", location = "querystring", 
        locationName = "otaUpdateStatus", type = "string")), 
        shape = "ListOTAUpdatesRequest", type = "structure")
    return(populate(args, shape))
}

list_ota_updates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OtaUpdates = structure(list(structure(list(OtaUpdateId = structure(logical(0), 
        shape = "OTAUpdateId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_-]+", locationName = "otaUpdateId"), 
        OtaUpdateArn = structure(logical(0), shape = "OTAUpdateArn", 
            type = "string", locationName = "otaUpdateArn"), 
        CreationDate = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "creationDate")), 
        shape = "OTAUpdateSummary", type = "structure")), shape = "OTAUpdatesSummary", 
        type = "list", locationName = "otaUpdates"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListOTAUpdatesResponse", type = "structure")
    return(populate(args, shape))
}

list_outgoing_certificates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PageSize = structure(logical(0), 
        shape = "PageSize", location = "querystring", locationName = "pageSize", 
        type = "integer", max = 250L, min = 1L), Marker = structure(logical(0), 
        shape = "Marker", location = "querystring", locationName = "marker", 
        type = "string", pattern = "[A-Za-z0-9+/]+={0,2}"), AscendingOrder = structure(logical(0), 
        shape = "AscendingOrder", location = "querystring", locationName = "ascendingOrder", 
        type = "boolean")), shape = "ListOutgoingCertificatesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_outgoing_certificates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OutgoingCertificates = structure(list(structure(list(CertificateArn = structure(logical(0), 
        shape = "CertificateArn", type = "string", locationName = "certificateArn"), 
        CertificateId = structure(logical(0), shape = "CertificateId", 
            type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+", 
            locationName = "certificateId"), TransferredTo = structure(logical(0), 
            shape = "AwsAccountId", type = "string", max = 12L, 
            min = 12L, pattern = "[0-9]+", locationName = "transferredTo"), 
        TransferDate = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "transferDate"), 
        TransferMessage = structure(logical(0), shape = "Message", 
            type = "string", max = 128L, locationName = "transferMessage"), 
        CreationDate = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "creationDate")), 
        shape = "OutgoingCertificate", type = "structure")), 
        shape = "OutgoingCertificates", type = "list", locationName = "outgoingCertificates"), 
        NextMarker = structure(logical(0), shape = "Marker", 
            type = "string", pattern = "[A-Za-z0-9+/]+={0,2}", 
            locationName = "nextMarker")), shape = "ListOutgoingCertificatesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "Marker", 
        location = "querystring", locationName = "marker", type = "string", 
        pattern = "[A-Za-z0-9+/]+={0,2}"), PageSize = structure(logical(0), 
        shape = "PageSize", location = "querystring", locationName = "pageSize", 
        type = "integer", max = 250L, min = 1L), AscendingOrder = structure(logical(0), 
        shape = "AscendingOrder", location = "querystring", locationName = "ascendingOrder", 
        type = "boolean")), shape = "ListPoliciesRequest", type = "structure")
    return(populate(args, shape))
}

list_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policies = structure(list(structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string", max = 128L, min = 1L, 
        pattern = "[\\w+=,.@-]+", locationName = "policyName"), 
        PolicyArn = structure(logical(0), shape = "PolicyArn", 
            type = "string", locationName = "policyArn")), shape = "Policy", 
        type = "structure")), shape = "Policies", type = "list", 
        locationName = "policies"), NextMarker = structure(logical(0), 
        shape = "Marker", type = "string", pattern = "[A-Za-z0-9+/]+={0,2}", 
        locationName = "nextMarker")), shape = "ListPoliciesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_policy_principals_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", location = "header", locationName = "policyName", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        Marker = structure(logical(0), shape = "Marker", location = "querystring", 
            locationName = "marker", type = "string", pattern = "[A-Za-z0-9+/]+={0,2}"), 
        PageSize = structure(logical(0), shape = "PageSize", 
            location = "querystring", locationName = "pageSize", 
            type = "integer", max = 250L, min = 1L), AscendingOrder = structure(logical(0), 
            shape = "AscendingOrder", location = "querystring", 
            locationName = "ascendingOrder", type = "boolean")), 
        shape = "ListPolicyPrincipalsRequest", type = "structure")
    return(populate(args, shape))
}

list_policy_principals_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Principals = structure(list(structure(logical(0), 
        shape = "PrincipalArn", type = "string")), shape = "Principals", 
        type = "list", locationName = "principals"), NextMarker = structure(logical(0), 
        shape = "Marker", type = "string", pattern = "[A-Za-z0-9+/]+={0,2}", 
        locationName = "nextMarker")), shape = "ListPolicyPrincipalsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_policy_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", location = "uri", locationName = "policyName", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+")), 
        shape = "ListPolicyVersionsRequest", type = "structure")
    return(populate(args, shape))
}

list_policy_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyVersions = structure(list(structure(list(VersionId = structure(logical(0), 
        shape = "PolicyVersionId", type = "string", pattern = "[0-9]+", 
        locationName = "versionId"), IsDefaultVersion = structure(logical(0), 
        shape = "IsDefaultVersion", type = "boolean", locationName = "isDefaultVersion"), 
        CreateDate = structure(logical(0), shape = "DateType", 
            type = "timestamp", locationName = "createDate")), 
        shape = "PolicyVersion", type = "structure")), shape = "PolicyVersions", 
        type = "list", locationName = "policyVersions")), shape = "ListPolicyVersionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_principal_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Principal = structure(logical(0), 
        shape = "Principal", location = "header", locationName = "principal", 
        type = "string"), Marker = structure(logical(0), shape = "Marker", 
        location = "querystring", locationName = "marker", type = "string", 
        pattern = "[A-Za-z0-9+/]+={0,2}"), PageSize = structure(logical(0), 
        shape = "PageSize", location = "querystring", locationName = "pageSize", 
        type = "integer", max = 250L, min = 1L), AscendingOrder = structure(logical(0), 
        shape = "AscendingOrder", location = "querystring", locationName = "ascendingOrder", 
        type = "boolean")), shape = "ListPrincipalPoliciesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_principal_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policies = structure(list(structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string", max = 128L, min = 1L, 
        pattern = "[\\w+=,.@-]+", locationName = "policyName"), 
        PolicyArn = structure(logical(0), shape = "PolicyArn", 
            type = "string", locationName = "policyArn")), shape = "Policy", 
        type = "structure")), shape = "Policies", type = "list", 
        locationName = "policies"), NextMarker = structure(logical(0), 
        shape = "Marker", type = "string", pattern = "[A-Za-z0-9+/]+={0,2}", 
        locationName = "nextMarker")), shape = "ListPrincipalPoliciesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_principal_things_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "RegistryMaxResults", location = "querystring", 
        locationName = "maxResults", type = "integer", max = 250L, 
        min = 1L), Principal = structure(logical(0), shape = "Principal", 
        location = "header", locationName = "principal", type = "string")), 
        shape = "ListPrincipalThingsRequest", type = "structure")
    return(populate(args, shape))
}

list_principal_things_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Things = structure(list(structure(logical(0), 
        shape = "ThingName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9:_-]+")), shape = "ThingNameList", 
        type = "list", locationName = "things"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListPrincipalThingsResponse", type = "structure")
    return(populate(args, shape))
}

list_role_aliases_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PageSize = structure(logical(0), 
        shape = "PageSize", location = "querystring", locationName = "pageSize", 
        type = "integer", max = 250L, min = 1L), Marker = structure(logical(0), 
        shape = "Marker", location = "querystring", locationName = "marker", 
        type = "string", pattern = "[A-Za-z0-9+/]+={0,2}"), AscendingOrder = structure(logical(0), 
        shape = "AscendingOrder", location = "querystring", locationName = "ascendingOrder", 
        type = "boolean")), shape = "ListRoleAliasesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_role_aliases_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleAliases = structure(list(structure(logical(0), 
        shape = "RoleAlias", type = "string", max = 128L, min = 1L, 
        pattern = "[\\w=,@-]+")), shape = "RoleAliases", type = "list", 
        locationName = "roleAliases"), NextMarker = structure(logical(0), 
        shape = "Marker", type = "string", pattern = "[A-Za-z0-9+/]+={0,2}", 
        locationName = "nextMarker")), shape = "ListRoleAliasesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_scheduled_audits_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", max = 250L, min = 1L)), shape = "ListScheduledAuditsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_scheduled_audits_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScheduledAudits = structure(list(structure(list(ScheduledAuditName = structure(logical(0), 
        shape = "ScheduledAuditName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_-]+", locationName = "scheduledAuditName"), 
        ScheduledAuditArn = structure(logical(0), shape = "ScheduledAuditArn", 
            type = "string", locationName = "scheduledAuditArn"), 
        Frequency = structure(logical(0), shape = "AuditFrequency", 
            type = "string", locationName = "frequency"), DayOfMonth = structure(logical(0), 
            shape = "DayOfMonth", type = "string", pattern = "^([1-9]|[12][0-9]|3[01])$|^LAST$", 
            locationName = "dayOfMonth"), DayOfWeek = structure(logical(0), 
            shape = "DayOfWeek", type = "string", locationName = "dayOfWeek")), 
        shape = "ScheduledAuditMetadata", type = "structure")), 
        shape = "ScheduledAuditMetadataList", type = "list", 
        locationName = "scheduledAudits"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListScheduledAuditsResponse", type = "structure")
    return(populate(args, shape))
}

list_security_profiles_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", max = 250L, min = 1L)), shape = "ListSecurityProfilesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_security_profiles_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityProfileIdentifiers = structure(list(structure(list(Name = structure(logical(0), 
        shape = "SecurityProfileName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "name"), 
        Arn = structure(logical(0), shape = "SecurityProfileArn", 
            type = "string", locationName = "arn")), shape = "SecurityProfileIdentifier", 
        type = "structure")), shape = "SecurityProfileIdentifiers", 
        type = "list", locationName = "securityProfileIdentifiers"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "ListSecurityProfilesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_security_profiles_for_target_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", max = 250L, min = 1L), Recursive = structure(logical(0), 
        shape = "Recursive", location = "querystring", locationName = "recursive", 
        type = "boolean"), SecurityProfileTargetArn = structure(logical(0), 
        shape = "SecurityProfileTargetArn", location = "querystring", 
        locationName = "securityProfileTargetArn", type = "string")), 
        shape = "ListSecurityProfilesForTargetRequest", type = "structure")
    return(populate(args, shape))
}

list_security_profiles_for_target_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityProfileTargetMappings = structure(list(structure(list(SecurityProfileIdentifier = structure(list(Name = structure(logical(0), 
        shape = "SecurityProfileName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "name"), 
        Arn = structure(logical(0), shape = "SecurityProfileArn", 
            type = "string", locationName = "arn")), shape = "SecurityProfileIdentifier", 
        type = "structure", locationName = "securityProfileIdentifier"), 
        Target = structure(list(Arn = structure(logical(0), shape = "SecurityProfileTargetArn", 
            type = "string", locationName = "arn")), shape = "SecurityProfileTarget", 
            type = "structure", locationName = "target")), shape = "SecurityProfileTargetMapping", 
        type = "structure")), shape = "SecurityProfileTargetMappings", 
        type = "list", locationName = "securityProfileTargetMappings"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "ListSecurityProfilesForTargetResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_streams_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", max = 250L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), AscendingOrder = structure(logical(0), 
        shape = "AscendingOrder", location = "querystring", locationName = "ascendingOrder", 
        type = "boolean")), shape = "ListStreamsRequest", type = "structure")
    return(populate(args, shape))
}

list_streams_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Streams = structure(list(structure(list(StreamId = structure(logical(0), 
        shape = "StreamId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_-]+", locationName = "streamId"), 
        StreamArn = structure(logical(0), shape = "StreamArn", 
            type = "string", locationName = "streamArn"), StreamVersion = structure(logical(0), 
            shape = "StreamVersion", type = "integer", max = 65535L, 
            min = 0L, locationName = "streamVersion"), Description = structure(logical(0), 
            shape = "StreamDescription", type = "string", max = 2028L, 
            pattern = "[^\\p{C}]+", locationName = "description")), 
        shape = "StreamSummary", type = "structure")), shape = "StreamsSummary", 
        type = "list", locationName = "streams"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListStreamsResponse", type = "structure")
    return(populate(args, shape))
}

list_targets_for_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", location = "uri", locationName = "policyName", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        Marker = structure(logical(0), shape = "Marker", location = "querystring", 
            locationName = "marker", type = "string", pattern = "[A-Za-z0-9+/]+={0,2}"), 
        PageSize = structure(logical(0), shape = "PageSize", 
            location = "querystring", locationName = "pageSize", 
            type = "integer", max = 250L, min = 1L)), shape = "ListTargetsForPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_targets_for_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Targets = structure(list(structure(logical(0), 
        shape = "PolicyTarget", type = "string")), shape = "PolicyTargets", 
        type = "list", locationName = "targets"), NextMarker = structure(logical(0), 
        shape = "Marker", type = "string", pattern = "[A-Za-z0-9+/]+={0,2}", 
        locationName = "nextMarker")), shape = "ListTargetsForPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_targets_for_security_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityProfileName = structure(logical(0), 
        shape = "SecurityProfileName", location = "uri", locationName = "securityProfileName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            location = "querystring", locationName = "nextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", location = "querystring", locationName = "maxResults", 
            type = "integer", max = 250L, min = 1L)), shape = "ListTargetsForSecurityProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_targets_for_security_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityProfileTargets = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "SecurityProfileTargetArn", type = "string", 
        locationName = "arn")), shape = "SecurityProfileTarget", 
        type = "structure")), shape = "SecurityProfileTargets", 
        type = "list", locationName = "securityProfileTargets"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "ListTargetsForSecurityProfileResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_thing_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "RegistryMaxResults", location = "querystring", 
        locationName = "maxResults", type = "integer", max = 250L, 
        min = 1L), ParentGroup = structure(logical(0), shape = "ThingGroupName", 
        location = "querystring", locationName = "parentGroup", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        NamePrefixFilter = structure(logical(0), shape = "ThingGroupName", 
            location = "querystring", locationName = "namePrefixFilter", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        Recursive = structure(logical(0), shape = "RecursiveWithoutDefault", 
            location = "querystring", locationName = "recursive", 
            type = "boolean")), shape = "ListThingGroupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_thing_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingGroups = structure(list(structure(list(GroupName = structure(logical(0), 
        shape = "ThingGroupName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "groupName"), 
        GroupArn = structure(logical(0), shape = "ThingGroupArn", 
            type = "string", locationName = "groupArn")), shape = "GroupNameAndArn", 
        type = "structure")), shape = "ThingGroupNameAndArnList", 
        type = "list", locationName = "thingGroups"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListThingGroupsResponse", type = "structure")
    return(populate(args, shape))
}

list_thing_groups_for_thing_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingName = structure(logical(0), 
        shape = "ThingName", location = "uri", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            location = "querystring", locationName = "nextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "RegistryMaxResults", location = "querystring", 
            locationName = "maxResults", type = "integer", max = 250L, 
            min = 1L)), shape = "ListThingGroupsForThingRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_thing_groups_for_thing_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingGroups = structure(list(structure(list(GroupName = structure(logical(0), 
        shape = "ThingGroupName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "groupName"), 
        GroupArn = structure(logical(0), shape = "ThingGroupArn", 
            type = "string", locationName = "groupArn")), shape = "GroupNameAndArn", 
        type = "structure")), shape = "ThingGroupNameAndArnList", 
        type = "list", locationName = "thingGroups"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListThingGroupsForThingResponse", type = "structure")
    return(populate(args, shape))
}

list_thing_principals_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingName = structure(logical(0), 
        shape = "ThingName", location = "uri", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+")), 
        shape = "ListThingPrincipalsRequest", type = "structure")
    return(populate(args, shape))
}

list_thing_principals_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Principals = structure(list(structure(logical(0), 
        shape = "PrincipalArn", type = "string")), shape = "Principals", 
        type = "list", locationName = "principals")), shape = "ListThingPrincipalsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_thing_registration_task_reports_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskId = structure(logical(0), shape = "TaskId", 
        location = "uri", locationName = "taskId", type = "string", 
        max = 40L), ReportType = structure(logical(0), shape = "ReportType", 
        location = "querystring", locationName = "reportType", 
        type = "string"), NextToken = structure(logical(0), shape = "NextToken", 
        location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "RegistryMaxResults", location = "querystring", 
        locationName = "maxResults", type = "integer", max = 250L, 
        min = 1L)), shape = "ListThingRegistrationTaskReportsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_thing_registration_task_reports_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceLinks = structure(list(structure(logical(0), 
        shape = "S3FileUrl", type = "string", max = 65535L)), 
        shape = "S3FileUrlList", type = "list", locationName = "resourceLinks"), 
        ReportType = structure(logical(0), shape = "ReportType", 
            type = "string", locationName = "reportType"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListThingRegistrationTaskReportsResponse", type = "structure")
    return(populate(args, shape))
}

list_thing_registration_tasks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "RegistryMaxResults", location = "querystring", 
        locationName = "maxResults", type = "integer", max = 250L, 
        min = 1L), Status = structure(logical(0), shape = "Status", 
        location = "querystring", locationName = "status", type = "string")), 
        shape = "ListThingRegistrationTasksRequest", type = "structure")
    return(populate(args, shape))
}

list_thing_registration_tasks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskIds = structure(list(structure(logical(0), 
        shape = "TaskId", type = "string", max = 40L)), shape = "TaskIdList", 
        type = "list", locationName = "taskIds"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListThingRegistrationTasksResponse", type = "structure")
    return(populate(args, shape))
}

list_thing_types_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "RegistryMaxResults", location = "querystring", 
        locationName = "maxResults", type = "integer", max = 250L, 
        min = 1L), ThingTypeName = structure(logical(0), shape = "ThingTypeName", 
        location = "querystring", locationName = "thingTypeName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+")), 
        shape = "ListThingTypesRequest", type = "structure")
    return(populate(args, shape))
}

list_thing_types_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingTypes = structure(list(structure(list(ThingTypeName = structure(logical(0), 
        shape = "ThingTypeName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "thingTypeName"), 
        ThingTypeArn = structure(logical(0), shape = "ThingTypeArn", 
            type = "string", locationName = "thingTypeArn"), 
        ThingTypeProperties = structure(list(ThingTypeDescription = structure(logical(0), 
            shape = "ThingTypeDescription", type = "string", 
            max = 2028L, pattern = "[\\p{Graph}\\x20]*", locationName = "thingTypeDescription"), 
            SearchableAttributes = structure(list(structure(logical(0), 
                shape = "AttributeName", type = "string", max = 128L, 
                pattern = "[a-zA-Z0-9_.,@/:#-]+")), shape = "SearchableAttributes", 
                type = "list", locationName = "searchableAttributes")), 
            shape = "ThingTypeProperties", type = "structure", 
            locationName = "thingTypeProperties"), ThingTypeMetadata = structure(list(Deprecated = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "deprecated"), 
            DeprecationDate = structure(logical(0), shape = "DeprecationDate", 
                type = "timestamp", locationName = "deprecationDate"), 
            CreationDate = structure(logical(0), shape = "CreationDate", 
                type = "timestamp", locationName = "creationDate")), 
            shape = "ThingTypeMetadata", type = "structure", 
            locationName = "thingTypeMetadata")), shape = "ThingTypeDefinition", 
        type = "structure")), shape = "ThingTypeList", type = "list", 
        locationName = "thingTypes"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListThingTypesResponse", type = "structure")
    return(populate(args, shape))
}

list_things_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "RegistryMaxResults", location = "querystring", 
        locationName = "maxResults", type = "integer", max = 250L, 
        min = 1L), AttributeName = structure(logical(0), shape = "AttributeName", 
        location = "querystring", locationName = "attributeName", 
        type = "string", max = 128L, pattern = "[a-zA-Z0-9_.,@/:#-]+"), 
        AttributeValue = structure(logical(0), shape = "AttributeValue", 
            location = "querystring", locationName = "attributeValue", 
            type = "string", max = 800L, pattern = "[a-zA-Z0-9_.,@/:#-]*"), 
        ThingTypeName = structure(logical(0), shape = "ThingTypeName", 
            location = "querystring", locationName = "thingTypeName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+")), 
        shape = "ListThingsRequest", type = "structure")
    return(populate(args, shape))
}

list_things_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Things = structure(list(structure(list(ThingName = structure(logical(0), 
        shape = "ThingName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9:_-]+", locationName = "thingName"), 
        ThingTypeName = structure(logical(0), shape = "ThingTypeName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+", 
            locationName = "thingTypeName"), ThingArn = structure(logical(0), 
            shape = "ThingArn", type = "string", locationName = "thingArn"), 
        Attributes = structure(list(structure(logical(0), shape = "AttributeValue", 
            type = "string", max = 800L, pattern = "[a-zA-Z0-9_.,@/:#-]*")), 
            shape = "Attributes", type = "map", locationName = "attributes"), 
        Version = structure(logical(0), shape = "Version", type = "long", 
            locationName = "version")), shape = "ThingAttribute", 
        type = "structure")), shape = "ThingAttributeList", type = "list", 
        locationName = "things"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListThingsResponse", type = "structure")
    return(populate(args, shape))
}

list_things_in_thing_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingGroupName = structure(logical(0), 
        shape = "ThingGroupName", location = "uri", locationName = "thingGroupName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        Recursive = structure(logical(0), shape = "Recursive", 
            location = "querystring", locationName = "recursive", 
            type = "boolean"), NextToken = structure(logical(0), 
            shape = "NextToken", location = "querystring", locationName = "nextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "RegistryMaxResults", location = "querystring", 
            locationName = "maxResults", type = "integer", max = 250L, 
            min = 1L)), shape = "ListThingsInThingGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_things_in_thing_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Things = structure(list(structure(logical(0), 
        shape = "ThingName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9:_-]+")), shape = "ThingNameList", 
        type = "list", locationName = "things"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListThingsInThingGroupResponse", type = "structure")
    return(populate(args, shape))
}

list_topic_rules_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Topic = structure(logical(0), shape = "Topic", 
        location = "querystring", locationName = "topic", type = "string"), 
        MaxResults = structure(logical(0), shape = "GEMaxResults", 
            location = "querystring", locationName = "maxResults", 
            type = "integer", max = 10000L, min = 1L), NextToken = structure(logical(0), 
            shape = "NextToken", location = "querystring", locationName = "nextToken", 
            type = "string"), RuleDisabled = structure(logical(0), 
            shape = "IsDisabled", location = "querystring", locationName = "ruleDisabled", 
            type = "boolean")), shape = "ListTopicRulesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_topic_rules_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Rules = structure(list(structure(list(RuleArn = structure(logical(0), 
        shape = "RuleArn", type = "string", locationName = "ruleArn"), 
        RuleName = structure(logical(0), shape = "RuleName", 
            type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$", 
            locationName = "ruleName"), TopicPattern = structure(logical(0), 
            shape = "TopicPattern", type = "string", locationName = "topicPattern"), 
        CreatedAt = structure(logical(0), shape = "CreatedAtDate", 
            type = "timestamp", locationName = "createdAt"), 
        RuleDisabled = structure(logical(0), shape = "IsDisabled", 
            type = "boolean", locationName = "ruleDisabled")), 
        shape = "TopicRuleListItem", type = "structure")), shape = "TopicRuleList", 
        type = "list", locationName = "rules"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListTopicRulesResponse", type = "structure")
    return(populate(args, shape))
}

list_v2_logging_levels_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetType = structure(logical(0), 
        shape = "LogTargetType", location = "querystring", locationName = "targetType", 
        type = "string"), NextToken = structure(logical(0), shape = "NextToken", 
        location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "SkyfallMaxResults", location = "querystring", 
        locationName = "maxResults", type = "integer", max = 250L, 
        min = 1L)), shape = "ListV2LoggingLevelsRequest", type = "structure")
    return(populate(args, shape))
}

list_v2_logging_levels_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogTargetConfigurations = structure(list(structure(list(LogTarget = structure(list(TargetType = structure(logical(0), 
        shape = "LogTargetType", type = "string", locationName = "targetType"), 
        TargetName = structure(logical(0), shape = "LogTargetName", 
            type = "string", locationName = "targetName")), shape = "LogTarget", 
        type = "structure", locationName = "logTarget"), LogLevel = structure(logical(0), 
        shape = "LogLevel", type = "string", locationName = "logLevel")), 
        shape = "LogTargetConfiguration", type = "structure")), 
        shape = "LogTargetConfigurations", type = "list", locationName = "logTargetConfigurations"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "ListV2LoggingLevelsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_violation_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StartTime = structure(logical(0), 
        shape = "Timestamp", location = "querystring", locationName = "startTime", 
        type = "timestamp"), EndTime = structure(logical(0), 
        shape = "Timestamp", location = "querystring", locationName = "endTime", 
        type = "timestamp"), ThingName = structure(logical(0), 
        shape = "ThingName", location = "querystring", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        SecurityProfileName = structure(logical(0), shape = "SecurityProfileName", 
            location = "querystring", locationName = "securityProfileName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            location = "querystring", locationName = "nextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", location = "querystring", locationName = "maxResults", 
            type = "integer", max = 250L, min = 1L)), shape = "ListViolationEventsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_violation_events_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ViolationEvents = structure(list(structure(list(ViolationId = structure(logical(0), 
        shape = "ViolationId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9\\-]+", locationName = "violationId"), 
        ThingName = structure(logical(0), shape = "ThingName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+", 
            locationName = "thingName"), SecurityProfileName = structure(logical(0), 
            shape = "SecurityProfileName", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "securityProfileName"), 
        Behavior = structure(list(Name = structure(logical(0), 
            shape = "BehaviorName", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "name"), 
            Metric = structure(logical(0), shape = "BehaviorMetric", 
                type = "string", locationName = "metric"), Criteria = structure(list(ComparisonOperator = structure(logical(0), 
                shape = "ComparisonOperator", type = "string", 
                locationName = "comparisonOperator"), Value = structure(list(Count = structure(logical(0), 
                shape = "UnsignedLong", type = "long", min = 0L, 
                locationName = "count"), Cidrs = structure(list(structure(logical(0), 
                shape = "Cidr", type = "string", max = 43L, min = 2L, 
                pattern = "[a-fA-F0-9:\\.\\/]+")), shape = "Cidrs", 
                type = "list", locationName = "cidrs"), Ports = structure(list(structure(logical(0), 
                shape = "Port", type = "integer", max = 65535L, 
                min = 0L)), shape = "Ports", type = "list", locationName = "ports")), 
                shape = "MetricValue", type = "structure", locationName = "value"), 
                DurationSeconds = structure(logical(0), shape = "DurationSeconds", 
                  type = "integer", locationName = "durationSeconds")), 
                shape = "BehaviorCriteria", type = "structure", 
                locationName = "criteria")), shape = "Behavior", 
            type = "structure", locationName = "behavior"), MetricValue = structure(list(Count = structure(logical(0), 
            shape = "UnsignedLong", type = "long", min = 0L, 
            locationName = "count"), Cidrs = structure(list(structure(logical(0), 
            shape = "Cidr", type = "string", max = 43L, min = 2L, 
            pattern = "[a-fA-F0-9:\\.\\/]+")), shape = "Cidrs", 
            type = "list", locationName = "cidrs"), Ports = structure(list(structure(logical(0), 
            shape = "Port", type = "integer", max = 65535L, min = 0L)), 
            shape = "Ports", type = "list", locationName = "ports")), 
            shape = "MetricValue", type = "structure", locationName = "metricValue"), 
        ViolationEventType = structure(logical(0), shape = "ViolationEventType", 
            type = "string", locationName = "violationEventType"), 
        ViolationEventTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "violationEventTime")), 
        shape = "ViolationEvent", type = "structure")), shape = "ViolationEvents", 
        type = "list", locationName = "violationEvents"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListViolationEventsResponse", type = "structure")
    return(populate(args, shape))
}

register_ca_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CaCertificate = structure(logical(0), 
        shape = "CertificatePem", type = "string", max = 65536L, 
        min = 1L, locationName = "caCertificate"), VerificationCertificate = structure(logical(0), 
        shape = "CertificatePem", type = "string", max = 65536L, 
        min = 1L, locationName = "verificationCertificate"), 
        SetAsActive = structure(logical(0), shape = "SetAsActive", 
            location = "querystring", locationName = "setAsActive", 
            type = "boolean"), AllowAutoRegistration = structure(logical(0), 
            shape = "AllowAutoRegistration", location = "querystring", 
            locationName = "allowAutoRegistration", type = "boolean"), 
        RegistrationConfig = structure(list(TemplateBody = structure(logical(0), 
            shape = "TemplateBody", type = "string", locationName = "templateBody"), 
            RoleArn = structure(logical(0), shape = "RoleArn", 
                type = "string", max = 2048L, min = 20L, locationName = "roleArn")), 
            shape = "RegistrationConfig", type = "structure", 
            locationName = "registrationConfig")), shape = "RegisterCACertificateRequest", 
        type = "structure")
    return(populate(args, shape))
}

register_ca_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateArn = structure(logical(0), 
        shape = "CertificateArn", type = "string", locationName = "certificateArn"), 
        CertificateId = structure(logical(0), shape = "CertificateId", 
            type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+", 
            locationName = "certificateId")), shape = "RegisterCACertificateResponse", 
        type = "structure")
    return(populate(args, shape))
}

register_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificatePem = structure(logical(0), 
        shape = "CertificatePem", type = "string", max = 65536L, 
        min = 1L, locationName = "certificatePem"), CaCertificatePem = structure(logical(0), 
        shape = "CertificatePem", type = "string", max = 65536L, 
        min = 1L, locationName = "caCertificatePem"), SetAsActive = structure(logical(0), 
        shape = "SetAsActiveFlag", deprecated = TRUE, location = "querystring", 
        locationName = "setAsActive", type = "boolean"), Status = structure(logical(0), 
        shape = "CertificateStatus", type = "string", locationName = "status")), 
        shape = "RegisterCertificateRequest", type = "structure")
    return(populate(args, shape))
}

register_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateArn = structure(logical(0), 
        shape = "CertificateArn", type = "string", locationName = "certificateArn"), 
        CertificateId = structure(logical(0), shape = "CertificateId", 
            type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+", 
            locationName = "certificateId")), shape = "RegisterCertificateResponse", 
        type = "structure")
    return(populate(args, shape))
}

register_thing_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TemplateBody = structure(logical(0), 
        shape = "TemplateBody", type = "string", locationName = "templateBody"), 
        Parameters = structure(list(structure(logical(0), shape = "Value", 
            type = "string")), shape = "Parameters", type = "map", 
            locationName = "parameters")), shape = "RegisterThingRequest", 
        type = "structure")
    return(populate(args, shape))
}

register_thing_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificatePem = structure(logical(0), 
        shape = "CertificatePem", type = "string", max = 65536L, 
        min = 1L, locationName = "certificatePem"), ResourceArns = structure(list(structure(logical(0), 
        shape = "ResourceArn", type = "string")), shape = "ResourceArns", 
        type = "map", locationName = "resourceArns")), shape = "RegisterThingResponse", 
        type = "structure")
    return(populate(args, shape))
}

reject_certificate_transfer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateId = structure(logical(0), 
        shape = "CertificateId", location = "uri", locationName = "certificateId", 
        type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+"), 
        RejectReason = structure(logical(0), shape = "Message", 
            type = "string", max = 128L, locationName = "rejectReason")), 
        shape = "RejectCertificateTransferRequest", type = "structure")
    return(populate(args, shape))
}

reject_certificate_transfer_output <- function () 
{
    return(list())
}

remove_thing_from_thing_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingGroupName = structure(logical(0), 
        shape = "ThingGroupName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "thingGroupName"), 
        ThingGroupArn = structure(logical(0), shape = "ThingGroupArn", 
            type = "string", locationName = "thingGroupArn"), 
        ThingName = structure(logical(0), shape = "ThingName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+", 
            locationName = "thingName"), ThingArn = structure(logical(0), 
            shape = "ThingArn", type = "string", locationName = "thingArn")), 
        shape = "RemoveThingFromThingGroupRequest", type = "structure")
    return(populate(args, shape))
}

remove_thing_from_thing_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RemoveThingFromThingGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

replace_topic_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleName = structure(logical(0), 
        shape = "RuleName", location = "uri", locationName = "ruleName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$"), 
        TopicRulePayload = structure(list(Sql = structure(logical(0), 
            shape = "SQL", type = "string", locationName = "sql"), 
            Description = structure(logical(0), shape = "Description", 
                type = "string", locationName = "description"), 
            Actions = structure(list(structure(list(DynamoDB = structure(list(TableName = structure(logical(0), 
                shape = "TableName", type = "string", locationName = "tableName"), 
                RoleArn = structure(logical(0), shape = "AwsArn", 
                  type = "string", locationName = "roleArn"), 
                Operation = structure(logical(0), shape = "DynamoOperation", 
                  type = "string", locationName = "operation"), 
                HashKeyField = structure(logical(0), shape = "HashKeyField", 
                  type = "string", locationName = "hashKeyField"), 
                HashKeyValue = structure(logical(0), shape = "HashKeyValue", 
                  type = "string", locationName = "hashKeyValue"), 
                HashKeyType = structure(logical(0), shape = "DynamoKeyType", 
                  type = "string", locationName = "hashKeyType"), 
                RangeKeyField = structure(logical(0), shape = "RangeKeyField", 
                  type = "string", locationName = "rangeKeyField"), 
                RangeKeyValue = structure(logical(0), shape = "RangeKeyValue", 
                  type = "string", locationName = "rangeKeyValue"), 
                RangeKeyType = structure(logical(0), shape = "DynamoKeyType", 
                  type = "string", locationName = "rangeKeyType"), 
                PayloadField = structure(logical(0), shape = "PayloadField", 
                  type = "string", locationName = "payloadField")), 
                shape = "DynamoDBAction", type = "structure", 
                locationName = "dynamoDB"), DynamoDBv2 = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                PutItem = structure(list(TableName = structure(logical(0), 
                  shape = "TableName", type = "string", locationName = "tableName")), 
                  shape = "PutItemInput", type = "structure", 
                  locationName = "putItem")), shape = "DynamoDBv2Action", 
                type = "structure", locationName = "dynamoDBv2"), 
                Lambda = structure(list(FunctionArn = structure(logical(0), 
                  shape = "FunctionArn", type = "string", locationName = "functionArn")), 
                  shape = "LambdaAction", type = "structure", 
                  locationName = "lambda"), Sns = structure(list(TargetArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "targetArn"), 
                  RoleArn = structure(logical(0), shape = "AwsArn", 
                    type = "string", locationName = "roleArn"), 
                  MessageFormat = structure(logical(0), shape = "MessageFormat", 
                    type = "string", locationName = "messageFormat")), 
                  shape = "SnsAction", type = "structure", locationName = "sns"), 
                Sqs = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  QueueUrl = structure(logical(0), shape = "QueueUrl", 
                    type = "string", locationName = "queueUrl"), 
                  UseBase64 = structure(logical(0), shape = "UseBase64", 
                    type = "boolean", locationName = "useBase64")), 
                  shape = "SqsAction", type = "structure", locationName = "sqs"), 
                Kinesis = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  StreamName = structure(logical(0), shape = "StreamName", 
                    type = "string", locationName = "streamName"), 
                  PartitionKey = structure(logical(0), shape = "PartitionKey", 
                    type = "string", locationName = "partitionKey")), 
                  shape = "KinesisAction", type = "structure", 
                  locationName = "kinesis"), Republish = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  Topic = structure(logical(0), shape = "TopicPattern", 
                    type = "string", locationName = "topic")), 
                  shape = "RepublishAction", type = "structure", 
                  locationName = "republish"), S3 = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  BucketName = structure(logical(0), shape = "BucketName", 
                    type = "string", locationName = "bucketName"), 
                  Key = structure(logical(0), shape = "Key", 
                    type = "string", locationName = "key"), CannedAcl = structure(logical(0), 
                    shape = "CannedAccessControlList", type = "string", 
                    locationName = "cannedAcl")), shape = "S3Action", 
                  type = "structure", locationName = "s3"), Firehose = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  DeliveryStreamName = structure(logical(0), 
                    shape = "DeliveryStreamName", type = "string", 
                    locationName = "deliveryStreamName"), Separator = structure(logical(0), 
                    shape = "FirehoseSeparator", type = "string", 
                    pattern = "([\\n\\t])|(\\r\\n)|(,)", locationName = "separator")), 
                  shape = "FirehoseAction", type = "structure", 
                  locationName = "firehose"), CloudwatchMetric = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  MetricNamespace = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricNamespace"), 
                  MetricName = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricName"), 
                  MetricValue = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricValue"), 
                  MetricUnit = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricUnit"), 
                  MetricTimestamp = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricTimestamp")), 
                  shape = "CloudwatchMetricAction", type = "structure", 
                  locationName = "cloudwatchMetric"), CloudwatchAlarm = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  AlarmName = structure(logical(0), shape = "AlarmName", 
                    type = "string", locationName = "alarmName"), 
                  StateReason = structure(logical(0), shape = "StateReason", 
                    type = "string", locationName = "stateReason"), 
                  StateValue = structure(logical(0), shape = "StateValue", 
                    type = "string", locationName = "stateValue")), 
                  shape = "CloudwatchAlarmAction", type = "structure", 
                  locationName = "cloudwatchAlarm"), Elasticsearch = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  Endpoint = structure(logical(0), shape = "ElasticsearchEndpoint", 
                    type = "string", pattern = "https?://.*", 
                    locationName = "endpoint"), Index = structure(logical(0), 
                    shape = "ElasticsearchIndex", type = "string", 
                    locationName = "index"), Type = structure(logical(0), 
                    shape = "ElasticsearchType", type = "string", 
                    locationName = "type"), Id = structure(logical(0), 
                    shape = "ElasticsearchId", type = "string", 
                    locationName = "id")), shape = "ElasticsearchAction", 
                  type = "structure", locationName = "elasticsearch"), 
                Salesforce = structure(list(Token = structure(logical(0), 
                  shape = "SalesforceToken", type = "string", 
                  min = 40L, locationName = "token"), Url = structure(logical(0), 
                  shape = "SalesforceEndpoint", type = "string", 
                  max = 2000L, pattern = "https://ingestion-[a-zA-Z0-9]{1,12}\\.[a-zA-Z0-9]+\\.((sfdc-matrix\\.net)|(sfdcnow\\.com))/streams/\\w{1,20}/\\w{1,20}/event", 
                  locationName = "url")), shape = "SalesforceAction", 
                  type = "structure", locationName = "salesforce"), 
                IotAnalytics = structure(list(ChannelArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "channelArn"), 
                  ChannelName = structure(logical(0), shape = "ChannelName", 
                    type = "string", locationName = "channelName"), 
                  RoleArn = structure(logical(0), shape = "AwsArn", 
                    type = "string", locationName = "roleArn")), 
                  shape = "IotAnalyticsAction", type = "structure", 
                  locationName = "iotAnalytics"), StepFunctions = structure(list(ExecutionNamePrefix = structure(logical(0), 
                  shape = "ExecutionNamePrefix", type = "string", 
                  locationName = "executionNamePrefix"), StateMachineName = structure(logical(0), 
                  shape = "StateMachineName", type = "string", 
                  locationName = "stateMachineName"), RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn")), 
                  shape = "StepFunctionsAction", type = "structure", 
                  locationName = "stepFunctions")), shape = "Action", 
                type = "structure")), shape = "ActionList", type = "list", 
                max = 10L, min = 0L, locationName = "actions"), 
            RuleDisabled = structure(logical(0), shape = "IsDisabled", 
                type = "boolean", locationName = "ruleDisabled"), 
            AwsIotSqlVersion = structure(logical(0), shape = "AwsIotSqlVersion", 
                type = "string", locationName = "awsIotSqlVersion"), 
            ErrorAction = structure(list(DynamoDB = structure(list(TableName = structure(logical(0), 
                shape = "TableName", type = "string", locationName = "tableName"), 
                RoleArn = structure(logical(0), shape = "AwsArn", 
                  type = "string", locationName = "roleArn"), 
                Operation = structure(logical(0), shape = "DynamoOperation", 
                  type = "string", locationName = "operation"), 
                HashKeyField = structure(logical(0), shape = "HashKeyField", 
                  type = "string", locationName = "hashKeyField"), 
                HashKeyValue = structure(logical(0), shape = "HashKeyValue", 
                  type = "string", locationName = "hashKeyValue"), 
                HashKeyType = structure(logical(0), shape = "DynamoKeyType", 
                  type = "string", locationName = "hashKeyType"), 
                RangeKeyField = structure(logical(0), shape = "RangeKeyField", 
                  type = "string", locationName = "rangeKeyField"), 
                RangeKeyValue = structure(logical(0), shape = "RangeKeyValue", 
                  type = "string", locationName = "rangeKeyValue"), 
                RangeKeyType = structure(logical(0), shape = "DynamoKeyType", 
                  type = "string", locationName = "rangeKeyType"), 
                PayloadField = structure(logical(0), shape = "PayloadField", 
                  type = "string", locationName = "payloadField")), 
                shape = "DynamoDBAction", type = "structure", 
                locationName = "dynamoDB"), DynamoDBv2 = structure(list(RoleArn = structure(logical(0), 
                shape = "AwsArn", type = "string", locationName = "roleArn"), 
                PutItem = structure(list(TableName = structure(logical(0), 
                  shape = "TableName", type = "string", locationName = "tableName")), 
                  shape = "PutItemInput", type = "structure", 
                  locationName = "putItem")), shape = "DynamoDBv2Action", 
                type = "structure", locationName = "dynamoDBv2"), 
                Lambda = structure(list(FunctionArn = structure(logical(0), 
                  shape = "FunctionArn", type = "string", locationName = "functionArn")), 
                  shape = "LambdaAction", type = "structure", 
                  locationName = "lambda"), Sns = structure(list(TargetArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "targetArn"), 
                  RoleArn = structure(logical(0), shape = "AwsArn", 
                    type = "string", locationName = "roleArn"), 
                  MessageFormat = structure(logical(0), shape = "MessageFormat", 
                    type = "string", locationName = "messageFormat")), 
                  shape = "SnsAction", type = "structure", locationName = "sns"), 
                Sqs = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  QueueUrl = structure(logical(0), shape = "QueueUrl", 
                    type = "string", locationName = "queueUrl"), 
                  UseBase64 = structure(logical(0), shape = "UseBase64", 
                    type = "boolean", locationName = "useBase64")), 
                  shape = "SqsAction", type = "structure", locationName = "sqs"), 
                Kinesis = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  StreamName = structure(logical(0), shape = "StreamName", 
                    type = "string", locationName = "streamName"), 
                  PartitionKey = structure(logical(0), shape = "PartitionKey", 
                    type = "string", locationName = "partitionKey")), 
                  shape = "KinesisAction", type = "structure", 
                  locationName = "kinesis"), Republish = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  Topic = structure(logical(0), shape = "TopicPattern", 
                    type = "string", locationName = "topic")), 
                  shape = "RepublishAction", type = "structure", 
                  locationName = "republish"), S3 = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  BucketName = structure(logical(0), shape = "BucketName", 
                    type = "string", locationName = "bucketName"), 
                  Key = structure(logical(0), shape = "Key", 
                    type = "string", locationName = "key"), CannedAcl = structure(logical(0), 
                    shape = "CannedAccessControlList", type = "string", 
                    locationName = "cannedAcl")), shape = "S3Action", 
                  type = "structure", locationName = "s3"), Firehose = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  DeliveryStreamName = structure(logical(0), 
                    shape = "DeliveryStreamName", type = "string", 
                    locationName = "deliveryStreamName"), Separator = structure(logical(0), 
                    shape = "FirehoseSeparator", type = "string", 
                    pattern = "([\\n\\t])|(\\r\\n)|(,)", locationName = "separator")), 
                  shape = "FirehoseAction", type = "structure", 
                  locationName = "firehose"), CloudwatchMetric = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  MetricNamespace = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricNamespace"), 
                  MetricName = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricName"), 
                  MetricValue = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricValue"), 
                  MetricUnit = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricUnit"), 
                  MetricTimestamp = structure(logical(0), shape = "String", 
                    type = "string", locationName = "metricTimestamp")), 
                  shape = "CloudwatchMetricAction", type = "structure", 
                  locationName = "cloudwatchMetric"), CloudwatchAlarm = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  AlarmName = structure(logical(0), shape = "AlarmName", 
                    type = "string", locationName = "alarmName"), 
                  StateReason = structure(logical(0), shape = "StateReason", 
                    type = "string", locationName = "stateReason"), 
                  StateValue = structure(logical(0), shape = "StateValue", 
                    type = "string", locationName = "stateValue")), 
                  shape = "CloudwatchAlarmAction", type = "structure", 
                  locationName = "cloudwatchAlarm"), Elasticsearch = structure(list(RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn"), 
                  Endpoint = structure(logical(0), shape = "ElasticsearchEndpoint", 
                    type = "string", pattern = "https?://.*", 
                    locationName = "endpoint"), Index = structure(logical(0), 
                    shape = "ElasticsearchIndex", type = "string", 
                    locationName = "index"), Type = structure(logical(0), 
                    shape = "ElasticsearchType", type = "string", 
                    locationName = "type"), Id = structure(logical(0), 
                    shape = "ElasticsearchId", type = "string", 
                    locationName = "id")), shape = "ElasticsearchAction", 
                  type = "structure", locationName = "elasticsearch"), 
                Salesforce = structure(list(Token = structure(logical(0), 
                  shape = "SalesforceToken", type = "string", 
                  min = 40L, locationName = "token"), Url = structure(logical(0), 
                  shape = "SalesforceEndpoint", type = "string", 
                  max = 2000L, pattern = "https://ingestion-[a-zA-Z0-9]{1,12}\\.[a-zA-Z0-9]+\\.((sfdc-matrix\\.net)|(sfdcnow\\.com))/streams/\\w{1,20}/\\w{1,20}/event", 
                  locationName = "url")), shape = "SalesforceAction", 
                  type = "structure", locationName = "salesforce"), 
                IotAnalytics = structure(list(ChannelArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "channelArn"), 
                  ChannelName = structure(logical(0), shape = "ChannelName", 
                    type = "string", locationName = "channelName"), 
                  RoleArn = structure(logical(0), shape = "AwsArn", 
                    type = "string", locationName = "roleArn")), 
                  shape = "IotAnalyticsAction", type = "structure", 
                  locationName = "iotAnalytics"), StepFunctions = structure(list(ExecutionNamePrefix = structure(logical(0), 
                  shape = "ExecutionNamePrefix", type = "string", 
                  locationName = "executionNamePrefix"), StateMachineName = structure(logical(0), 
                  shape = "StateMachineName", type = "string", 
                  locationName = "stateMachineName"), RoleArn = structure(logical(0), 
                  shape = "AwsArn", type = "string", locationName = "roleArn")), 
                  shape = "StepFunctionsAction", type = "structure", 
                  locationName = "stepFunctions")), shape = "Action", 
                type = "structure", locationName = "errorAction")), 
            shape = "TopicRulePayload", type = "structure", locationName = "topicRulePayload")), 
        shape = "ReplaceTopicRuleRequest", type = "structure", 
        payload = "topicRulePayload")
    return(populate(args, shape))
}

replace_topic_rule_output <- function () 
{
    return(list())
}

search_index_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IndexName = structure(logical(0), 
        shape = "IndexName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9:_-]+", locationName = "indexName"), 
        QueryString = structure(logical(0), shape = "QueryString", 
            type = "string", min = 1L, locationName = "queryString"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken"), MaxResults = structure(logical(0), 
            shape = "QueryMaxResults", type = "integer", max = 500L, 
            min = 1L, locationName = "maxResults"), QueryVersion = structure(logical(0), 
            shape = "QueryVersion", type = "string", locationName = "queryVersion")), 
        shape = "SearchIndexRequest", type = "structure")
    return(populate(args, shape))
}

search_index_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken"), 
        Things = structure(list(structure(list(ThingName = structure(logical(0), 
            shape = "ThingName", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "thingName"), 
            ThingId = structure(logical(0), shape = "ThingId", 
                type = "string", locationName = "thingId"), ThingTypeName = structure(logical(0), 
                shape = "ThingTypeName", type = "string", max = 128L, 
                min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "thingTypeName"), 
            ThingGroupNames = structure(list(structure(logical(0), 
                shape = "ThingGroupName", type = "string", max = 128L, 
                min = 1L, pattern = "[a-zA-Z0-9:_-]+")), shape = "ThingGroupNameList", 
                type = "list", locationName = "thingGroupNames"), 
            Attributes = structure(list(structure(logical(0), 
                shape = "AttributeValue", type = "string", max = 800L, 
                pattern = "[a-zA-Z0-9_.,@/:#-]*")), shape = "Attributes", 
                type = "map", locationName = "attributes"), Shadow = structure(logical(0), 
                shape = "JsonDocument", type = "string", locationName = "shadow")), 
            shape = "ThingDocument", type = "structure")), shape = "ThingDocumentList", 
            type = "list", locationName = "things"), ThingGroups = structure(list(structure(list(ThingGroupName = structure(logical(0), 
            shape = "ThingGroupName", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "thingGroupName"), 
            ThingGroupId = structure(logical(0), shape = "ThingGroupId", 
                type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9\\-]+", 
                locationName = "thingGroupId"), ThingGroupDescription = structure(logical(0), 
                shape = "ThingGroupDescription", type = "string", 
                max = 2028L, pattern = "[\\p{Graph}\\x20]*", 
                locationName = "thingGroupDescription"), Attributes = structure(list(structure(logical(0), 
                shape = "AttributeValue", type = "string", max = 800L, 
                pattern = "[a-zA-Z0-9_.,@/:#-]*")), shape = "Attributes", 
                type = "map", locationName = "attributes"), ParentGroupNames = structure(list(structure(logical(0), 
                shape = "ThingGroupName", type = "string", max = 128L, 
                min = 1L, pattern = "[a-zA-Z0-9:_-]+")), shape = "ThingGroupNameList", 
                type = "list", locationName = "parentGroupNames")), 
            shape = "ThingGroupDocument", type = "structure")), 
            shape = "ThingGroupDocumentList", type = "list", 
            locationName = "thingGroups")), shape = "SearchIndexResponse", 
        type = "structure")
    return(populate(args, shape))
}

set_default_authorizer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthorizerName = structure(logical(0), 
        shape = "AuthorizerName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w=,@-]+", locationName = "authorizerName")), 
        shape = "SetDefaultAuthorizerRequest", type = "structure")
    return(populate(args, shape))
}

set_default_authorizer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthorizerName = structure(logical(0), 
        shape = "AuthorizerName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w=,@-]+", locationName = "authorizerName"), 
        AuthorizerArn = structure(logical(0), shape = "AuthorizerArn", 
            type = "string", locationName = "authorizerArn")), 
        shape = "SetDefaultAuthorizerResponse", type = "structure")
    return(populate(args, shape))
}

set_default_policy_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", location = "uri", locationName = "policyName", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        PolicyVersionId = structure(logical(0), shape = "PolicyVersionId", 
            location = "uri", locationName = "policyVersionId", 
            type = "string", pattern = "[0-9]+")), shape = "SetDefaultPolicyVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

set_default_policy_version_output <- function () 
{
    return(list())
}

set_logging_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoggingOptionsPayload = structure(list(RoleArn = structure(logical(0), 
        shape = "AwsArn", type = "string", locationName = "roleArn"), 
        LogLevel = structure(logical(0), shape = "LogLevel", 
            type = "string", locationName = "logLevel")), shape = "LoggingOptionsPayload", 
        type = "structure", locationName = "loggingOptionsPayload")), 
        shape = "SetLoggingOptionsRequest", type = "structure", 
        payload = "loggingOptionsPayload")
    return(populate(args, shape))
}

set_logging_options_output <- function () 
{
    return(list())
}

set_v2_logging_level_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogTarget = structure(list(TargetType = structure(logical(0), 
        shape = "LogTargetType", type = "string", locationName = "targetType"), 
        TargetName = structure(logical(0), shape = "LogTargetName", 
            type = "string", locationName = "targetName")), shape = "LogTarget", 
        type = "structure", locationName = "logTarget"), LogLevel = structure(logical(0), 
        shape = "LogLevel", type = "string", locationName = "logLevel")), 
        shape = "SetV2LoggingLevelRequest", type = "structure")
    return(populate(args, shape))
}

set_v2_logging_level_output <- function () 
{
    return(list())
}

set_v2_logging_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleArn = structure(logical(0), shape = "AwsArn", 
        type = "string", locationName = "roleArn"), DefaultLogLevel = structure(logical(0), 
        shape = "LogLevel", type = "string", locationName = "defaultLogLevel"), 
        DisableAllLogs = structure(logical(0), shape = "DisableAllLogs", 
            type = "boolean", locationName = "disableAllLogs")), 
        shape = "SetV2LoggingOptionsRequest", type = "structure")
    return(populate(args, shape))
}

set_v2_logging_options_output <- function () 
{
    return(list())
}

start_on_demand_audit_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetCheckNames = structure(list(structure(logical(0), 
        shape = "AuditCheckName", type = "string")), shape = "TargetAuditCheckNames", 
        type = "list", locationName = "targetCheckNames")), shape = "StartOnDemandAuditTaskRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_on_demand_audit_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskId = structure(logical(0), shape = "AuditTaskId", 
        type = "string", max = 40L, min = 1L, pattern = "[a-zA-Z0-9\\-]+", 
        locationName = "taskId")), shape = "StartOnDemandAuditTaskResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_thing_registration_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TemplateBody = structure(logical(0), 
        shape = "TemplateBody", type = "string", locationName = "templateBody"), 
        InputFileBucket = structure(logical(0), shape = "RegistryS3BucketName", 
            type = "string", max = 256L, min = 3L, pattern = "[a-zA-Z0-9._-]+", 
            locationName = "inputFileBucket"), InputFileKey = structure(logical(0), 
            shape = "RegistryS3KeyName", type = "string", max = 1024L, 
            min = 1L, pattern = "[a-zA-Z0-9!_.*'()-\\/]+", locationName = "inputFileKey"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            max = 2048L, min = 20L, locationName = "roleArn")), 
        shape = "StartThingRegistrationTaskRequest", type = "structure")
    return(populate(args, shape))
}

start_thing_registration_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskId = structure(logical(0), shape = "TaskId", 
        type = "string", max = 40L, locationName = "taskId")), 
        shape = "StartThingRegistrationTaskResponse", type = "structure")
    return(populate(args, shape))
}

stop_thing_registration_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskId = structure(logical(0), shape = "TaskId", 
        location = "uri", locationName = "taskId", type = "string", 
        max = 40L)), shape = "StopThingRegistrationTaskRequest", 
        type = "structure")
    return(populate(args, shape))
}

stop_thing_registration_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StopThingRegistrationTaskResponse", 
        type = "structure")
    return(populate(args, shape))
}

test_authorization_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Principal = structure(logical(0), 
        shape = "Principal", type = "string", locationName = "principal"), 
        CognitoIdentityPoolId = structure(logical(0), shape = "CognitoIdentityPoolId", 
            type = "string", locationName = "cognitoIdentityPoolId"), 
        AuthInfos = structure(list(structure(list(ActionType = structure(logical(0), 
            shape = "ActionType", type = "string", locationName = "actionType"), 
            Resources = structure(list(structure(logical(0), 
                shape = "Resource", type = "string")), shape = "Resources", 
                type = "list", locationName = "resources")), 
            shape = "AuthInfo", type = "structure")), shape = "AuthInfos", 
            type = "list", max = 10L, min = 1L, locationName = "authInfos"), 
        ClientId = structure(logical(0), shape = "ClientId", 
            location = "querystring", locationName = "clientId", 
            type = "string"), PolicyNamesToAdd = structure(list(structure(logical(0), 
            shape = "PolicyName", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+=,.@-]+")), shape = "PolicyNames", 
            type = "list", locationName = "policyNamesToAdd"), 
        PolicyNamesToSkip = structure(list(structure(logical(0), 
            shape = "PolicyName", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+=,.@-]+")), shape = "PolicyNames", 
            type = "list", locationName = "policyNamesToSkip")), 
        shape = "TestAuthorizationRequest", type = "structure")
    return(populate(args, shape))
}

test_authorization_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthResults = structure(list(structure(list(AuthInfo = structure(list(ActionType = structure(logical(0), 
        shape = "ActionType", type = "string", locationName = "actionType"), 
        Resources = structure(list(structure(logical(0), shape = "Resource", 
            type = "string")), shape = "Resources", type = "list", 
            locationName = "resources")), shape = "AuthInfo", 
        type = "structure", locationName = "authInfo"), Allowed = structure(list(Policies = structure(list(structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string", max = 128L, min = 1L, 
        pattern = "[\\w+=,.@-]+", locationName = "policyName"), 
        PolicyArn = structure(logical(0), shape = "PolicyArn", 
            type = "string", locationName = "policyArn")), shape = "Policy", 
        type = "structure")), shape = "Policies", type = "list", 
        locationName = "policies")), shape = "Allowed", type = "structure", 
        locationName = "allowed"), Denied = structure(list(ImplicitDeny = structure(list(Policies = structure(list(structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string", max = 128L, min = 1L, 
        pattern = "[\\w+=,.@-]+", locationName = "policyName"), 
        PolicyArn = structure(logical(0), shape = "PolicyArn", 
            type = "string", locationName = "policyArn")), shape = "Policy", 
        type = "structure")), shape = "Policies", type = "list", 
        locationName = "policies")), shape = "ImplicitDeny", 
        type = "structure", locationName = "implicitDeny"), ExplicitDeny = structure(list(Policies = structure(list(structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string", max = 128L, min = 1L, 
        pattern = "[\\w+=,.@-]+", locationName = "policyName"), 
        PolicyArn = structure(logical(0), shape = "PolicyArn", 
            type = "string", locationName = "policyArn")), shape = "Policy", 
        type = "structure")), shape = "Policies", type = "list", 
        locationName = "policies")), shape = "ExplicitDeny", 
        type = "structure", locationName = "explicitDeny")), 
        shape = "Denied", type = "structure", locationName = "denied"), 
        AuthDecision = structure(logical(0), shape = "AuthDecision", 
            type = "string", locationName = "authDecision"), 
        MissingContextValues = structure(list(structure(logical(0), 
            shape = "MissingContextValue", type = "string")), 
            shape = "MissingContextValues", type = "list", locationName = "missingContextValues")), 
        shape = "AuthResult", type = "structure")), shape = "AuthResults", 
        type = "list", locationName = "authResults")), shape = "TestAuthorizationResponse", 
        type = "structure")
    return(populate(args, shape))
}

test_invoke_authorizer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthorizerName = structure(logical(0), 
        shape = "AuthorizerName", location = "uri", locationName = "authorizerName", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w=,@-]+"), 
        Token = structure(logical(0), shape = "Token", type = "string", 
            max = 6144L, min = 1L, locationName = "token"), TokenSignature = structure(logical(0), 
            shape = "TokenSignature", type = "string", max = 2560L, 
            min = 1L, pattern = "[A-Za-z0-9+/]+={0,2}", locationName = "tokenSignature")), 
        shape = "TestInvokeAuthorizerRequest", type = "structure")
    return(populate(args, shape))
}

test_invoke_authorizer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IsAuthenticated = structure(logical(0), 
        shape = "IsAuthenticated", type = "boolean", locationName = "isAuthenticated"), 
        PrincipalId = structure(logical(0), shape = "PrincipalId", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9]+", 
            locationName = "principalId"), PolicyDocuments = structure(list(structure(logical(0), 
            shape = "PolicyDocument", type = "string")), shape = "PolicyDocuments", 
            type = "list", locationName = "policyDocuments"), 
        RefreshAfterInSeconds = structure(logical(0), shape = "Seconds", 
            type = "integer", locationName = "refreshAfterInSeconds"), 
        DisconnectAfterInSeconds = structure(logical(0), shape = "Seconds", 
            type = "integer", locationName = "disconnectAfterInSeconds")), 
        shape = "TestInvokeAuthorizerResponse", type = "structure")
    return(populate(args, shape))
}

transfer_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateId = structure(logical(0), 
        shape = "CertificateId", location = "uri", locationName = "certificateId", 
        type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+"), 
        TargetAwsAccount = structure(logical(0), shape = "AwsAccountId", 
            location = "querystring", locationName = "targetAwsAccount", 
            type = "string", max = 12L, min = 12L, pattern = "[0-9]+"), 
        TransferMessage = structure(logical(0), shape = "Message", 
            type = "string", max = 128L, locationName = "transferMessage")), 
        shape = "TransferCertificateRequest", type = "structure")
    return(populate(args, shape))
}

transfer_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TransferredCertificateArn = structure(logical(0), 
        shape = "CertificateArn", type = "string", locationName = "transferredCertificateArn")), 
        shape = "TransferCertificateResponse", type = "structure")
    return(populate(args, shape))
}

update_account_audit_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleArn = structure(logical(0), shape = "RoleArn", 
        type = "string", max = 2048L, min = 20L, locationName = "roleArn"), 
        AuditNotificationTargetConfigurations = structure(list(structure(list(TargetArn = structure(logical(0), 
            shape = "TargetArn", type = "string", locationName = "targetArn"), 
            RoleArn = structure(logical(0), shape = "RoleArn", 
                type = "string", max = 2048L, min = 20L, locationName = "roleArn"), 
            Enabled = structure(logical(0), shape = "Enabled", 
                type = "boolean", locationName = "enabled")), 
            shape = "AuditNotificationTarget", type = "structure")), 
            shape = "AuditNotificationTargetConfigurations", 
            type = "map", locationName = "auditNotificationTargetConfigurations"), 
        AuditCheckConfigurations = structure(list(structure(list(Enabled = structure(logical(0), 
            shape = "Enabled", type = "boolean", locationName = "enabled")), 
            shape = "AuditCheckConfiguration", type = "structure")), 
            shape = "AuditCheckConfigurations", type = "map", 
            locationName = "auditCheckConfigurations")), shape = "UpdateAccountAuditConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_account_audit_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateAccountAuditConfigurationResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_authorizer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthorizerName = structure(logical(0), 
        shape = "AuthorizerName", location = "uri", locationName = "authorizerName", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w=,@-]+"), 
        AuthorizerFunctionArn = structure(logical(0), shape = "AuthorizerFunctionArn", 
            type = "string", locationName = "authorizerFunctionArn"), 
        TokenKeyName = structure(logical(0), shape = "TokenKeyName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+", 
            locationName = "tokenKeyName"), TokenSigningPublicKeys = structure(list(structure(logical(0), 
            shape = "KeyValue", type = "string", max = 5120L)), 
            shape = "PublicKeyMap", type = "map", locationName = "tokenSigningPublicKeys"), 
        Status = structure(logical(0), shape = "AuthorizerStatus", 
            type = "string", locationName = "status")), shape = "UpdateAuthorizerRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_authorizer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthorizerName = structure(logical(0), 
        shape = "AuthorizerName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w=,@-]+", locationName = "authorizerName"), 
        AuthorizerArn = structure(logical(0), shape = "AuthorizerArn", 
            type = "string", locationName = "authorizerArn")), 
        shape = "UpdateAuthorizerResponse", type = "structure")
    return(populate(args, shape))
}

update_ca_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateId = structure(logical(0), 
        shape = "CertificateId", location = "uri", locationName = "certificateId", 
        type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+"), 
        NewStatus = structure(logical(0), shape = "CACertificateStatus", 
            location = "querystring", locationName = "newStatus", 
            type = "string"), NewAutoRegistrationStatus = structure(logical(0), 
            shape = "AutoRegistrationStatus", location = "querystring", 
            locationName = "newAutoRegistrationStatus", type = "string"), 
        RegistrationConfig = structure(list(TemplateBody = structure(logical(0), 
            shape = "TemplateBody", type = "string", locationName = "templateBody"), 
            RoleArn = structure(logical(0), shape = "RoleArn", 
                type = "string", max = 2048L, min = 20L, locationName = "roleArn")), 
            shape = "RegistrationConfig", type = "structure", 
            locationName = "registrationConfig"), RemoveAutoRegistration = structure(logical(0), 
            shape = "RemoveAutoRegistration", type = "boolean", 
            locationName = "removeAutoRegistration")), shape = "UpdateCACertificateRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_ca_certificate_output <- function () 
{
    return(list())
}

update_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateId = structure(logical(0), 
        shape = "CertificateId", location = "uri", locationName = "certificateId", 
        type = "string", max = 64L, min = 64L, pattern = "(0x)?[a-fA-F0-9]+"), 
        NewStatus = structure(logical(0), shape = "CertificateStatus", 
            location = "querystring", locationName = "newStatus", 
            type = "string")), shape = "UpdateCertificateRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_certificate_output <- function () 
{
    return(list())
}

update_event_configurations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventConfigurations = structure(list(structure(list(Enabled = structure(logical(0), 
        shape = "Enabled", type = "boolean")), shape = "Configuration", 
        type = "structure")), shape = "EventConfigurations", 
        type = "map", locationName = "eventConfigurations")), 
        shape = "UpdateEventConfigurationsRequest", type = "structure")
    return(populate(args, shape))
}

update_event_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateEventConfigurationsResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_indexing_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingIndexingConfiguration = structure(list(ThingIndexingMode = structure(logical(0), 
        shape = "ThingIndexingMode", type = "string", locationName = "thingIndexingMode")), 
        shape = "ThingIndexingConfiguration", type = "structure", 
        locationName = "thingIndexingConfiguration"), ThingGroupIndexingConfiguration = structure(list(ThingGroupIndexingMode = structure(logical(0), 
        shape = "ThingGroupIndexingMode", type = "string", locationName = "thingGroupIndexingMode")), 
        shape = "ThingGroupIndexingConfiguration", type = "structure", 
        locationName = "thingGroupIndexingConfiguration")), shape = "UpdateIndexingConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_indexing_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateIndexingConfigurationResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_role_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleAlias = structure(logical(0), 
        shape = "RoleAlias", location = "uri", locationName = "roleAlias", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w=,@-]+"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            max = 2048L, min = 20L, locationName = "roleArn"), 
        CredentialDurationSeconds = structure(logical(0), shape = "CredentialDurationSeconds", 
            type = "integer", max = 3600L, min = 900L, locationName = "credentialDurationSeconds")), 
        shape = "UpdateRoleAliasRequest", type = "structure")
    return(populate(args, shape))
}

update_role_alias_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleAlias = structure(logical(0), 
        shape = "RoleAlias", type = "string", max = 128L, min = 1L, 
        pattern = "[\\w=,@-]+", locationName = "roleAlias"), 
        RoleAliasArn = structure(logical(0), shape = "RoleAliasArn", 
            type = "string", locationName = "roleAliasArn")), 
        shape = "UpdateRoleAliasResponse", type = "structure")
    return(populate(args, shape))
}

update_scheduled_audit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Frequency = structure(logical(0), 
        shape = "AuditFrequency", type = "string", locationName = "frequency"), 
        DayOfMonth = structure(logical(0), shape = "DayOfMonth", 
            type = "string", pattern = "^([1-9]|[12][0-9]|3[01])$|^LAST$", 
            locationName = "dayOfMonth"), DayOfWeek = structure(logical(0), 
            shape = "DayOfWeek", type = "string", locationName = "dayOfWeek"), 
        TargetCheckNames = structure(list(structure(logical(0), 
            shape = "AuditCheckName", type = "string")), shape = "TargetAuditCheckNames", 
            type = "list", locationName = "targetCheckNames"), 
        ScheduledAuditName = structure(logical(0), shape = "ScheduledAuditName", 
            location = "uri", locationName = "scheduledAuditName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+")), 
        shape = "UpdateScheduledAuditRequest", type = "structure")
    return(populate(args, shape))
}

update_scheduled_audit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScheduledAuditArn = structure(logical(0), 
        shape = "ScheduledAuditArn", type = "string", locationName = "scheduledAuditArn")), 
        shape = "UpdateScheduledAuditResponse", type = "structure")
    return(populate(args, shape))
}

update_security_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityProfileName = structure(logical(0), 
        shape = "SecurityProfileName", location = "uri", locationName = "securityProfileName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        SecurityProfileDescription = structure(logical(0), shape = "SecurityProfileDescription", 
            type = "string", max = 1000L, pattern = "[\\p{Graph}\\x20]*", 
            locationName = "securityProfileDescription"), Behaviors = structure(list(structure(list(Name = structure(logical(0), 
            shape = "BehaviorName", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "name"), 
            Metric = structure(logical(0), shape = "BehaviorMetric", 
                type = "string", locationName = "metric"), Criteria = structure(list(ComparisonOperator = structure(logical(0), 
                shape = "ComparisonOperator", type = "string", 
                locationName = "comparisonOperator"), Value = structure(list(Count = structure(logical(0), 
                shape = "UnsignedLong", type = "long", min = 0L, 
                locationName = "count"), Cidrs = structure(list(structure(logical(0), 
                shape = "Cidr", type = "string", max = 43L, min = 2L, 
                pattern = "[a-fA-F0-9:\\.\\/]+")), shape = "Cidrs", 
                type = "list", locationName = "cidrs"), Ports = structure(list(structure(logical(0), 
                shape = "Port", type = "integer", max = 65535L, 
                min = 0L)), shape = "Ports", type = "list", locationName = "ports")), 
                shape = "MetricValue", type = "structure", locationName = "value"), 
                DurationSeconds = structure(logical(0), shape = "DurationSeconds", 
                  type = "integer", locationName = "durationSeconds")), 
                shape = "BehaviorCriteria", type = "structure", 
                locationName = "criteria")), shape = "Behavior", 
            type = "structure")), shape = "Behaviors", type = "list", 
            max = 100L, locationName = "behaviors"), AlertTargets = structure(list(structure(list(AlertTargetArn = structure(logical(0), 
            shape = "AlertTargetArn", type = "string", locationName = "alertTargetArn"), 
            RoleArn = structure(logical(0), shape = "RoleArn", 
                type = "string", max = 2048L, min = 20L, locationName = "roleArn")), 
            shape = "AlertTarget", type = "structure")), shape = "AlertTargets", 
            type = "map", locationName = "alertTargets"), ExpectedVersion = structure(logical(0), 
            shape = "OptionalVersion", location = "querystring", 
            locationName = "expectedVersion", type = "long")), 
        shape = "UpdateSecurityProfileRequest", type = "structure")
    return(populate(args, shape))
}

update_security_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityProfileName = structure(logical(0), 
        shape = "SecurityProfileName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "securityProfileName"), 
        SecurityProfileArn = structure(logical(0), shape = "SecurityProfileArn", 
            type = "string", locationName = "securityProfileArn"), 
        SecurityProfileDescription = structure(logical(0), shape = "SecurityProfileDescription", 
            type = "string", max = 1000L, pattern = "[\\p{Graph}\\x20]*", 
            locationName = "securityProfileDescription"), Behaviors = structure(list(structure(list(Name = structure(logical(0), 
            shape = "BehaviorName", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "name"), 
            Metric = structure(logical(0), shape = "BehaviorMetric", 
                type = "string", locationName = "metric"), Criteria = structure(list(ComparisonOperator = structure(logical(0), 
                shape = "ComparisonOperator", type = "string", 
                locationName = "comparisonOperator"), Value = structure(list(Count = structure(logical(0), 
                shape = "UnsignedLong", type = "long", min = 0L, 
                locationName = "count"), Cidrs = structure(list(structure(logical(0), 
                shape = "Cidr", type = "string", max = 43L, min = 2L, 
                pattern = "[a-fA-F0-9:\\.\\/]+")), shape = "Cidrs", 
                type = "list", locationName = "cidrs"), Ports = structure(list(structure(logical(0), 
                shape = "Port", type = "integer", max = 65535L, 
                min = 0L)), shape = "Ports", type = "list", locationName = "ports")), 
                shape = "MetricValue", type = "structure", locationName = "value"), 
                DurationSeconds = structure(logical(0), shape = "DurationSeconds", 
                  type = "integer", locationName = "durationSeconds")), 
                shape = "BehaviorCriteria", type = "structure", 
                locationName = "criteria")), shape = "Behavior", 
            type = "structure")), shape = "Behaviors", type = "list", 
            max = 100L, locationName = "behaviors"), AlertTargets = structure(list(structure(list(AlertTargetArn = structure(logical(0), 
            shape = "AlertTargetArn", type = "string", locationName = "alertTargetArn"), 
            RoleArn = structure(logical(0), shape = "RoleArn", 
                type = "string", max = 2048L, min = 20L, locationName = "roleArn")), 
            shape = "AlertTarget", type = "structure")), shape = "AlertTargets", 
            type = "map", locationName = "alertTargets"), Version = structure(logical(0), 
            shape = "Version", type = "long", locationName = "version"), 
        CreationDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "creationDate"), 
        LastModifiedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastModifiedDate")), 
        shape = "UpdateSecurityProfileResponse", type = "structure")
    return(populate(args, shape))
}

update_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamId = structure(logical(0), 
        shape = "StreamId", location = "uri", locationName = "streamId", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+"), 
        Description = structure(logical(0), shape = "StreamDescription", 
            type = "string", max = 2028L, pattern = "[^\\p{C}]+", 
            locationName = "description"), Files = structure(list(structure(list(FileId = structure(logical(0), 
            shape = "FileId", type = "integer", max = 255L, min = 0L, 
            locationName = "fileId"), S3Location = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", min = 1L, locationName = "bucket"), 
            Key = structure(logical(0), shape = "S3Key", type = "string", 
                min = 1L, locationName = "key"), Version = structure(logical(0), 
                shape = "S3Version", type = "string", locationName = "version")), 
            shape = "S3Location", type = "structure", locationName = "s3Location")), 
            shape = "StreamFile", type = "structure")), shape = "StreamFiles", 
            type = "list", max = 50L, min = 1L, locationName = "files"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            max = 2048L, min = 20L, locationName = "roleArn")), 
        shape = "UpdateStreamRequest", type = "structure")
    return(populate(args, shape))
}

update_stream_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamId = structure(logical(0), 
        shape = "StreamId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_-]+", locationName = "streamId"), 
        StreamArn = structure(logical(0), shape = "StreamArn", 
            type = "string", locationName = "streamArn"), Description = structure(logical(0), 
            shape = "StreamDescription", type = "string", max = 2028L, 
            pattern = "[^\\p{C}]+", locationName = "description"), 
        StreamVersion = structure(logical(0), shape = "StreamVersion", 
            type = "integer", max = 65535L, min = 0L, locationName = "streamVersion")), 
        shape = "UpdateStreamResponse", type = "structure")
    return(populate(args, shape))
}

update_thing_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingName = structure(logical(0), 
        shape = "ThingName", location = "uri", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        ThingTypeName = structure(logical(0), shape = "ThingTypeName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+", 
            locationName = "thingTypeName"), AttributePayload = structure(list(Attributes = structure(list(structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 800L, 
            pattern = "[a-zA-Z0-9_.,@/:#-]*")), shape = "Attributes", 
            type = "map", locationName = "attributes"), Merge = structure(logical(0), 
            shape = "Flag", type = "boolean", locationName = "merge")), 
            shape = "AttributePayload", type = "structure", locationName = "attributePayload"), 
        ExpectedVersion = structure(logical(0), shape = "OptionalVersion", 
            type = "long", locationName = "expectedVersion"), 
        RemoveThingType = structure(logical(0), shape = "RemoveThingType", 
            type = "boolean", locationName = "removeThingType")), 
        shape = "UpdateThingRequest", type = "structure")
    return(populate(args, shape))
}

update_thing_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateThingResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_thing_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingGroupName = structure(logical(0), 
        shape = "ThingGroupName", location = "uri", locationName = "thingGroupName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        ThingGroupProperties = structure(list(ThingGroupDescription = structure(logical(0), 
            shape = "ThingGroupDescription", type = "string", 
            max = 2028L, pattern = "[\\p{Graph}\\x20]*", locationName = "thingGroupDescription"), 
            AttributePayload = structure(list(Attributes = structure(list(structure(logical(0), 
                shape = "AttributeValue", type = "string", max = 800L, 
                pattern = "[a-zA-Z0-9_.,@/:#-]*")), shape = "Attributes", 
                type = "map", locationName = "attributes"), Merge = structure(logical(0), 
                shape = "Flag", type = "boolean", locationName = "merge")), 
                shape = "AttributePayload", type = "structure", 
                locationName = "attributePayload")), shape = "ThingGroupProperties", 
            type = "structure", locationName = "thingGroupProperties"), 
        ExpectedVersion = structure(logical(0), shape = "OptionalVersion", 
            type = "long", locationName = "expectedVersion")), 
        shape = "UpdateThingGroupRequest", type = "structure")
    return(populate(args, shape))
}

update_thing_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Version = structure(logical(0), shape = "Version", 
        type = "long", locationName = "version")), shape = "UpdateThingGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_thing_groups_for_thing_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingName = structure(logical(0), 
        shape = "ThingName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9:_-]+", locationName = "thingName"), 
        ThingGroupsToAdd = structure(list(structure(logical(0), 
            shape = "ThingGroupName", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9:_-]+")), shape = "ThingGroupList", 
            type = "list", locationName = "thingGroupsToAdd"), 
        ThingGroupsToRemove = structure(list(structure(logical(0), 
            shape = "ThingGroupName", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9:_-]+")), shape = "ThingGroupList", 
            type = "list", locationName = "thingGroupsToRemove")), 
        shape = "UpdateThingGroupsForThingRequest", type = "structure")
    return(populate(args, shape))
}

update_thing_groups_for_thing_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateThingGroupsForThingResponse", 
        type = "structure")
    return(populate(args, shape))
}

validate_security_profile_behaviors_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Behaviors = structure(list(structure(list(Name = structure(logical(0), 
        shape = "BehaviorName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9:_-]+", locationName = "name"), 
        Metric = structure(logical(0), shape = "BehaviorMetric", 
            type = "string", locationName = "metric"), Criteria = structure(list(ComparisonOperator = structure(logical(0), 
            shape = "ComparisonOperator", type = "string", locationName = "comparisonOperator"), 
            Value = structure(list(Count = structure(logical(0), 
                shape = "UnsignedLong", type = "long", min = 0L, 
                locationName = "count"), Cidrs = structure(list(structure(logical(0), 
                shape = "Cidr", type = "string", max = 43L, min = 2L, 
                pattern = "[a-fA-F0-9:\\.\\/]+")), shape = "Cidrs", 
                type = "list", locationName = "cidrs"), Ports = structure(list(structure(logical(0), 
                shape = "Port", type = "integer", max = 65535L, 
                min = 0L)), shape = "Ports", type = "list", locationName = "ports")), 
                shape = "MetricValue", type = "structure", locationName = "value"), 
            DurationSeconds = structure(logical(0), shape = "DurationSeconds", 
                type = "integer", locationName = "durationSeconds")), 
            shape = "BehaviorCriteria", type = "structure", locationName = "criteria")), 
        shape = "Behavior", type = "structure")), shape = "Behaviors", 
        type = "list", max = 100L, locationName = "behaviors")), 
        shape = "ValidateSecurityProfileBehaviorsRequest", type = "structure")
    return(populate(args, shape))
}

validate_security_profile_behaviors_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Valid = structure(logical(0), shape = "Valid", 
        type = "boolean", locationName = "valid"), ValidationErrors = structure(list(structure(list(ErrorMessage = structure(logical(0), 
        shape = "ErrorMessage", type = "string", max = 2048L, 
        locationName = "errorMessage")), shape = "ValidationError", 
        type = "structure")), shape = "ValidationErrors", type = "list", 
        locationName = "validationErrors")), shape = "ValidateSecurityProfileBehaviorsResponse", 
        type = "structure")
    return(populate(args, shape))
}
