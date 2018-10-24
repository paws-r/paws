#' Accepts a pending certificate transfer
#'
#' Accepts a pending certificate transfer. The default state of the certificate is INACTIVE.
#' 
#' To check for pending certificate transfers, call ListCertificates to enumerate your certificates.
#'
#' @param certificateId The ID of the certificate. (The last part of the certificate ARN contains the certificate ID.)
#' @param setAsActive Specifies whether the certificate is active.
#'
#' @examples
#'
#' @export
accept_certificate_transfer <- function (certificateId, setAsActive = NULL) 
{
    op <- Operation(name = "AcceptCertificateTransfer", http_method = "PATCH", 
        http_path = "/accept-certificate-transfer/{certificateId}", 
        paginator = list())
    input <- accept_certificate_transfer_input(certificateId = certificateId, 
        setAsActive = setAsActive)
    output <- accept_certificate_transfer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds a thing to a thing group
#'
#' Adds a thing to a thing group.
#'
#' @param thingGroupName The name of the group to which you are adding a thing.
#' @param thingGroupArn The ARN of the group to which you are adding a thing.
#' @param thingName The name of the thing to add to a group.
#' @param thingArn The ARN of the thing to add to a group.
#'
#' @examples
#'
#' @export
add_thing_to_thing_group <- function (thingGroupName = NULL, 
    thingGroupArn = NULL, thingName = NULL, thingArn = NULL) 
{
    op <- Operation(name = "AddThingToThingGroup", http_method = "PUT", 
        http_path = "/thing-groups/addThingToThingGroup", paginator = list())
    input <- add_thing_to_thing_group_input(thingGroupName = thingGroupName, 
        thingGroupArn = thingGroupArn, thingName = thingName, 
        thingArn = thingArn)
    output <- add_thing_to_thing_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates a group with a continuous job
#'
#' Associates a group with a continuous job. The following criteria must be met:
#' 
#' -   The job must have been created with the `targetSelection` field set to \"CONTINUOUS\".
#' 
#' -   The job status must currently be \"IN\_PROGRESS\".
#' 
#' -   The total number of targets associated with a job must not exceed 100.
#'
#' @param targets A list of thing group ARNs that define the targets of the job.
#' @param jobId The unique identifier you assigned to this job when it was created.
#' @param comment An optional comment string describing why the job was associated with the targets.
#'
#' @examples
#'
#' @export
associate_targets_with_job <- function (targets, jobId, comment = NULL) 
{
    op <- Operation(name = "AssociateTargetsWithJob", http_method = "POST", 
        http_path = "/jobs/{jobId}/targets", paginator = list())
    input <- associate_targets_with_job_input(targets = targets, 
        jobId = jobId, comment = comment)
    output <- associate_targets_with_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Attaches a policy to the specified target
#'
#' Attaches a policy to the specified target.
#'
#' @param policyName The name of the policy to attach.
#' @param target The identity to which the policy is attached.
#'
#' @examples
#'
#' @export
attach_policy <- function (policyName, target) 
{
    op <- Operation(name = "AttachPolicy", http_method = "PUT", 
        http_path = "/target-policies/{policyName}", paginator = list())
    input <- attach_policy_input(policyName = policyName, target = target)
    output <- attach_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Attaches the specified policy to the specified principal (certificate or other credential)
#'
#' Attaches the specified policy to the specified principal (certificate or other credential).
#' 
#' **Note:** This API is deprecated. Please use AttachPolicy instead.
#'
#' @param policyName The policy name.
#' @param principal The principal, which can be a certificate ARN (as returned from the CreateCertificate operation) or an Amazon Cognito ID.
#'
#' @examples
#'
#' @export
attach_principal_policy <- function (policyName, principal) 
{
    op <- Operation(name = "AttachPrincipalPolicy", http_method = "PUT", 
        http_path = "/principal-policies/{policyName}", paginator = list())
    input <- attach_principal_policy_input(policyName = policyName, 
        principal = principal)
    output <- attach_principal_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates a Device Defender security profile with a thing group or with this account
#'
#' Associates a Device Defender security profile with a thing group or with this account. Each thing group or account can have up to five security profiles associated with it.
#'
#' @param securityProfileName The security profile that is attached.
#' @param securityProfileTargetArn The ARN of the target (thing group) to which the security profile is attached.
#'
#' @examples
#'
#' @export
attach_security_profile <- function (securityProfileName, securityProfileTargetArn) 
{
    op <- Operation(name = "AttachSecurityProfile", http_method = "PUT", 
        http_path = "/security-profiles/{securityProfileName}/targets", 
        paginator = list())
    input <- attach_security_profile_input(securityProfileName = securityProfileName, 
        securityProfileTargetArn = securityProfileTargetArn)
    output <- attach_security_profile_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Attaches the specified principal to the specified thing
#'
#' Attaches the specified principal to the specified thing.
#'
#' @param thingName The name of the thing.
#' @param principal The principal, such as a certificate or other credential.
#'
#' @examples
#'
#' @export
attach_thing_principal <- function (thingName, principal) 
{
    op <- Operation(name = "AttachThingPrincipal", http_method = "PUT", 
        http_path = "/things/{thingName}/principals", paginator = list())
    input <- attach_thing_principal_input(thingName = thingName, 
        principal = principal)
    output <- attach_thing_principal_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Cancels an audit that is in progress
#'
#' Cancels an audit that is in progress. The audit can be either scheduled or on-demand. If the audit is not in progress, an \"InvalidRequestException\" occurs.
#'
#' @param taskId The ID of the audit you want to cancel. You can only cancel an audit that is \"IN\_PROGRESS\".
#'
#' @examples
#'
#' @export
cancel_audit_task <- function (taskId) 
{
    op <- Operation(name = "CancelAuditTask", http_method = "PUT", 
        http_path = "/audit/tasks/{taskId}/cancel", paginator = list())
    input <- cancel_audit_task_input(taskId = taskId)
    output <- cancel_audit_task_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Cancels a pending transfer for the specified certificate
#'
#' Cancels a pending transfer for the specified certificate.
#' 
#' **Note** Only the transfer source account can use this operation to cancel a transfer. (Transfer destinations can use RejectCertificateTransfer instead.) After transfer, AWS IoT returns the certificate to the source account in the INACTIVE state. After the destination account has accepted the transfer, the transfer cannot be cancelled.
#' 
#' After a certificate transfer is cancelled, the status of the certificate changes from PENDING\_TRANSFER to INACTIVE.
#'
#' @param certificateId The ID of the certificate. (The last part of the certificate ARN contains the certificate ID.)
#'
#' @examples
#'
#' @export
cancel_certificate_transfer <- function (certificateId) 
{
    op <- Operation(name = "CancelCertificateTransfer", http_method = "PATCH", 
        http_path = "/cancel-certificate-transfer/{certificateId}", 
        paginator = list())
    input <- cancel_certificate_transfer_input(certificateId = certificateId)
    output <- cancel_certificate_transfer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Cancels a job
#'
#' Cancels a job.
#'
#' @param jobId The unique identifier you assigned to this job when it was created.
#' @param comment An optional comment string describing why the job was canceled.
#' @param force (Optional) If `true` job executions with status \"IN\_PROGRESS\" and \"QUEUED\" are canceled, otherwise only job executions with status \"QUEUED\" are canceled. The default is `false`.
#' 
#' Canceling a job which is \"IN\_PROGRESS\", will cause a device which is executing the job to be unable to update the job execution status. Use caution and ensure that each device executing a job which is canceled is able to recover to a valid state.
#'
#' @examples
#'
#' @export
cancel_job <- function (jobId, comment = NULL, force = NULL) 
{
    op <- Operation(name = "CancelJob", http_method = "PUT", 
        http_path = "/jobs/{jobId}/cancel", paginator = list())
    input <- cancel_job_input(jobId = jobId, comment = comment, 
        force = force)
    output <- cancel_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Cancels the execution of a job for a given thing
#'
#' Cancels the execution of a job for a given thing.
#'
#' @param jobId The ID of the job to be canceled.
#' @param thingName The name of the thing whose execution of the job will be canceled.
#' @param force (Optional) If `true` the job execution will be canceled if it has status IN\_PROGRESS or QUEUED, otherwise the job execution will be canceled only if it has status QUEUED. If you attempt to cancel a job execution that is IN\_PROGRESS, and you do not set `force` to `true`, then an `InvalidStateTransitionException` will be thrown. The default is `false`.
#' 
#' Canceling a job execution which is \"IN\_PROGRESS\", will cause the device to be unable to update the job execution status. Use caution and ensure that the device is able to recover to a valid state.
#' @param expectedVersion (Optional) The expected current version of the job execution. Each time you update the job execution, its version is incremented. If the version of the job execution stored in Jobs does not match, the update is rejected with a VersionMismatch error, and an ErrorResponse that contains the current job execution status data is returned. (This makes it unnecessary to perform a separate DescribeJobExecution request in order to obtain the job execution status data.)
#' @param statusDetails A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged. You can specify at most 10 name/value pairs.
#'
#' @examples
#'
#' @export
cancel_job_execution <- function (jobId, thingName, force = NULL, 
    expectedVersion = NULL, statusDetails = NULL) 
{
    op <- Operation(name = "CancelJobExecution", http_method = "PUT", 
        http_path = "/things/{thingName}/jobs/{jobId}/cancel", 
        paginator = list())
    input <- cancel_job_execution_input(jobId = jobId, thingName = thingName, 
        force = force, expectedVersion = expectedVersion, statusDetails = statusDetails)
    output <- cancel_job_execution_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Clears the default authorizer
#'
#' Clears the default authorizer.
#'
#' @examples
#'
#' @export
clear_default_authorizer <- function () 
{
    op <- Operation(name = "ClearDefaultAuthorizer", http_method = "DELETE", 
        http_path = "/default-authorizer", paginator = list())
    input <- clear_default_authorizer_input()
    output <- clear_default_authorizer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an authorizer
#'
#' Creates an authorizer.
#'
#' @param authorizerName The authorizer name.
#' @param authorizerFunctionArn The ARN of the authorizer\'s Lambda function.
#' @param tokenKeyName The name of the token key used to extract the token from the HTTP headers.
#' @param tokenSigningPublicKeys The public keys used to verify the digital signature returned by your custom authentication service.
#' @param status The status of the create authorizer request.
#'
#' @examples
#'
#' @export
create_authorizer <- function (authorizerName, authorizerFunctionArn, 
    tokenKeyName, tokenSigningPublicKeys, status = NULL) 
{
    op <- Operation(name = "CreateAuthorizer", http_method = "POST", 
        http_path = "/authorizer/{authorizerName}", paginator = list())
    input <- create_authorizer_input(authorizerName = authorizerName, 
        authorizerFunctionArn = authorizerFunctionArn, tokenKeyName = tokenKeyName, 
        tokenSigningPublicKeys = tokenSigningPublicKeys, status = status)
    output <- create_authorizer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an X
#'
#' Creates an X.509 certificate using the specified certificate signing request.
#' 
#' **Note:** The CSR must include a public key that is either an RSA key with a length of at least 2048 bits or an ECC key from NIST P-256 or NIST P-384 curves.
#' 
#' **Note:** Reusing the same certificate signing request (CSR) results in a distinct certificate.
#' 
#' You can create multiple certificates in a batch by creating a directory, copying multiple .csr files into that directory, and then specifying that directory on the command line. The following commands show how to create a batch of certificates given a batch of CSRs.
#' 
#' Assuming a set of CSRs are located inside of the directory my-csr-directory:
#' 
#' On Linux and OS X, the command is:
#' 
#' \$ ls my-csr-directory/ \| xargs -I {} aws iot create-certificate-from-csr \--certificate-signing-request file://my-csr-directory/{}
#' 
#' This command lists all of the CSRs in my-csr-directory and pipes each CSR file name to the aws iot create-certificate-from-csr AWS CLI command to create a certificate for the corresponding CSR.
#' 
#' The aws iot create-certificate-from-csr part of the command can also be run in parallel to speed up the certificate creation process:
#' 
#' \$ ls my-csr-directory/ \| xargs -P 10 -I {} aws iot create-certificate-from-csr \--certificate-signing-request file://my-csr-directory/{}
#' 
#' On Windows PowerShell, the command to create certificates for all CSRs in my-csr-directory is:
#' 
#' \> ls -Name my-csr-directory \| %{aws iot create-certificate-from-csr \--certificate-signing-request file://my-csr-directory/\$\_}
#' 
#' On a Windows command prompt, the command to create certificates for all CSRs in my-csr-directory is:
#' 
#' \> forfiles /p my-csr-directory /c \"cmd /c aws iot create-certificate-from-csr \--certificate-signing-request file://\@path\"
#'
#' @param certificateSigningRequest The certificate signing request (CSR).
#' @param setAsActive Specifies whether the certificate is active.
#'
#' @examples
#'
#' @export
create_certificate_from_csr <- function (certificateSigningRequest, 
    setAsActive = NULL) 
{
    op <- Operation(name = "CreateCertificateFromCsr", http_method = "POST", 
        http_path = "/certificates", paginator = list())
    input <- create_certificate_from_csr_input(certificateSigningRequest = certificateSigningRequest, 
        setAsActive = setAsActive)
    output <- create_certificate_from_csr_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a job
#'
#' Creates a job.
#'
#' @param jobId A job identifier which must be unique for your AWS account. We recommend using a UUID. Alpha-numeric characters, \"-\" and \"\_\" are valid for use here.
#' @param targets A list of things and thing groups to which the job should be sent.
#' @param documentSource An S3 link to the job document.
#' @param document The job document.
#' @param description A short text description of the job.
#' @param presignedUrlConfig Configuration information for pre-signed S3 URLs.
#' @param targetSelection Specifies whether the job will continue to run (CONTINUOUS), or will be complete after all those things specified as targets have completed the job (SNAPSHOT). If continuous, the job may also be run on a thing when a change is detected in a target. For example, a job will run on a thing when the thing is added to a target group, even after the job was completed by all things originally in the group.
#' @param jobExecutionsRolloutConfig Allows you to create a staged rollout of the job.
#' @param timeoutConfig Specifies the amount of time each device has to finish its execution of the job. The timer is started when the job execution status is set to `IN_PROGRESS`. If the job execution status is not set to another terminal state before the time expires, it will be automatically set to `TIMED_OUT`.
#'
#' @examples
#'
#' @export
create_job <- function (jobId, targets, documentSource = NULL, 
    document = NULL, description = NULL, presignedUrlConfig = NULL, 
    targetSelection = NULL, jobExecutionsRolloutConfig = NULL, 
    timeoutConfig = NULL) 
{
    op <- Operation(name = "CreateJob", http_method = "PUT", 
        http_path = "/jobs/{jobId}", paginator = list())
    input <- create_job_input(jobId = jobId, targets = targets, 
        documentSource = documentSource, document = document, 
        description = description, presignedUrlConfig = presignedUrlConfig, 
        targetSelection = targetSelection, jobExecutionsRolloutConfig = jobExecutionsRolloutConfig, 
        timeoutConfig = timeoutConfig)
    output <- create_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a 2048-bit RSA key pair and issues an X
#'
#' Creates a 2048-bit RSA key pair and issues an X.509 certificate using the issued public key.
#' 
#' **Note** This is the only time AWS IoT issues the private key for this certificate, so it is important to keep it in a secure location.
#'
#' @param setAsActive Specifies whether the certificate is active.
#'
#' @examples
#'
#' @export
create_keys_and_certificate <- function (setAsActive = NULL) 
{
    op <- Operation(name = "CreateKeysAndCertificate", http_method = "POST", 
        http_path = "/keys-and-certificate", paginator = list())
    input <- create_keys_and_certificate_input(setAsActive = setAsActive)
    output <- create_keys_and_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an AWS IoT OTAUpdate on a target group of things or groups
#'
#' Creates an AWS IoT OTAUpdate on a target group of things or groups.
#'
#' @param otaUpdateId The ID of the OTA update to be created.
#' @param targets The targeted devices to receive OTA updates.
#' @param files The files to be streamed by the OTA update.
#' @param roleArn The IAM role that allows access to the AWS IoT Jobs service.
#' @param description The description of the OTA update.
#' @param targetSelection Specifies whether the update will continue to run (CONTINUOUS), or will be complete after all the things specified as targets have completed the update (SNAPSHOT). If continuous, the update may also be run on a thing when a change is detected in a target. For example, an update will run on a thing when the thing is added to a target group, even after the update was completed by all things originally in the group. Valid values: CONTINUOUS \| SNAPSHOT.
#' @param awsJobExecutionsRolloutConfig Configuration for the rollout of OTA updates.
#' @param additionalParameters A list of additional OTA update parameters which are name-value pairs.
#'
#' @examples
#'
#' @export
create_ota_update <- function (otaUpdateId, targets, files, roleArn, 
    description = NULL, targetSelection = NULL, awsJobExecutionsRolloutConfig = NULL, 
    additionalParameters = NULL) 
{
    op <- Operation(name = "CreateOTAUpdate", http_method = "POST", 
        http_path = "/otaUpdates/{otaUpdateId}", paginator = list())
    input <- create_ota_update_input(otaUpdateId = otaUpdateId, 
        targets = targets, files = files, roleArn = roleArn, 
        description = description, targetSelection = targetSelection, 
        awsJobExecutionsRolloutConfig = awsJobExecutionsRolloutConfig, 
        additionalParameters = additionalParameters)
    output <- create_ota_update_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an AWS IoT policy
#'
#' Creates an AWS IoT policy.
#' 
#' The created policy is the default version for the policy. This operation creates a policy version with a version identifier of **1** and sets **1** as the policy\'s default version.
#'
#' @param policyName The policy name.
#' @param policyDocument The JSON document that describes the policy. **policyDocument** must have a minimum length of 1, with a maximum length of 2048, excluding whitespace.
#'
#' @examples
#'
#' @export
create_policy <- function (policyName, policyDocument) 
{
    op <- Operation(name = "CreatePolicy", http_method = "POST", 
        http_path = "/policies/{policyName}", paginator = list())
    input <- create_policy_input(policyName = policyName, policyDocument = policyDocument)
    output <- create_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new version of the specified AWS IoT policy
#'
#' Creates a new version of the specified AWS IoT policy. To update a policy, create a new policy version. A managed policy can have up to five versions. If the policy has five versions, you must use DeletePolicyVersion to delete an existing version before you create a new one.
#' 
#' Optionally, you can set the new version as the policy\'s default version. The default version is the operative version (that is, the version that is in effect for the certificates to which the policy is attached).
#'
#' @param policyName The policy name.
#' @param policyDocument The JSON document that describes the policy. Minimum length of 1. Maximum length of 2048, excluding whitespace.
#' @param setAsDefault Specifies whether the policy version is set as the default. When this parameter is true, the new policy version becomes the operative version (that is, the version that is in effect for the certificates to which the policy is attached).
#'
#' @examples
#'
#' @export
create_policy_version <- function (policyName, policyDocument, 
    setAsDefault = NULL) 
{
    op <- Operation(name = "CreatePolicyVersion", http_method = "POST", 
        http_path = "/policies/{policyName}/version", paginator = list())
    input <- create_policy_version_input(policyName = policyName, 
        policyDocument = policyDocument, setAsDefault = setAsDefault)
    output <- create_policy_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a role alias
#'
#' Creates a role alias.
#'
#' @param roleAlias The role alias that points to a role ARN. This allows you to change the role without having to update the device.
#' @param roleArn The role ARN.
#' @param credentialDurationSeconds How long (in seconds) the credentials will be valid.
#'
#' @examples
#'
#' @export
create_role_alias <- function (roleAlias, roleArn, credentialDurationSeconds = NULL) 
{
    op <- Operation(name = "CreateRoleAlias", http_method = "POST", 
        http_path = "/role-aliases/{roleAlias}", paginator = list())
    input <- create_role_alias_input(roleAlias = roleAlias, roleArn = roleArn, 
        credentialDurationSeconds = credentialDurationSeconds)
    output <- create_role_alias_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a scheduled audit that is run at a specified time interval
#'
#' Creates a scheduled audit that is run at a specified time interval.
#'
#' @param frequency How often the scheduled audit takes place. Can be one of \"DAILY\", \"WEEKLY\", \"BIWEEKLY\" or \"MONTHLY\". The actual start time of each audit is determined by the system.
#' @param targetCheckNames Which checks are performed during the scheduled audit. Checks must be enabled for your account. (Use `DescribeAccountAuditConfiguration` to see the list of all checks including those that are enabled or `UpdateAccountAuditConfiguration` to select which checks are enabled.)
#' @param scheduledAuditName The name you want to give to the scheduled audit. (Max. 128 chars)
#' @param dayOfMonth The day of the month on which the scheduled audit takes place. Can be \"1\" through \"31\" or \"LAST\". This field is required if the \"frequency\" parameter is set to \"MONTHLY\". If days 29-31 are specified, and the month does not have that many days, the audit takes place on the \"LAST\" day of the month.
#' @param dayOfWeek The day of the week on which the scheduled audit takes place. Can be one of \"SUN\", \"MON\", \"TUE\", \"WED\", \"THU\", \"FRI\" or \"SAT\". This field is required if the \"frequency\" parameter is set to \"WEEKLY\" or \"BIWEEKLY\".
#'
#' @examples
#'
#' @export
create_scheduled_audit <- function (frequency, targetCheckNames, 
    scheduledAuditName, dayOfMonth = NULL, dayOfWeek = NULL) 
{
    op <- Operation(name = "CreateScheduledAudit", http_method = "POST", 
        http_path = "/audit/scheduledaudits/{scheduledAuditName}", 
        paginator = list())
    input <- create_scheduled_audit_input(frequency = frequency, 
        targetCheckNames = targetCheckNames, scheduledAuditName = scheduledAuditName, 
        dayOfMonth = dayOfMonth, dayOfWeek = dayOfWeek)
    output <- create_scheduled_audit_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a Device Defender security profile
#'
#' Creates a Device Defender security profile.
#'
#' @param securityProfileName The name you are giving to the security profile.
#' @param behaviors Specifies the behaviors that, when violated by a device (thing), cause an alert.
#' @param securityProfileDescription A description of the security profile.
#' @param alertTargets Specifies the destinations to which alerts are sent. (Alerts are always sent to the console.) Alerts are generated when a device (thing) violates a behavior.
#'
#' @examples
#'
#' @export
create_security_profile <- function (securityProfileName, behaviors, 
    securityProfileDescription = NULL, alertTargets = NULL) 
{
    op <- Operation(name = "CreateSecurityProfile", http_method = "POST", 
        http_path = "/security-profiles/{securityProfileName}", 
        paginator = list())
    input <- create_security_profile_input(securityProfileName = securityProfileName, 
        behaviors = behaviors, securityProfileDescription = securityProfileDescription, 
        alertTargets = alertTargets)
    output <- create_security_profile_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a stream for delivering one or more large files in chunks over MQTT
#'
#' Creates a stream for delivering one or more large files in chunks over MQTT. A stream transports data bytes in chunks or blocks packaged as MQTT messages from a source like S3. You can have one or more files associated with a stream. The total size of a file associated with the stream cannot exceed more than 2 MB. The stream will be created with version 0. If a stream is created with the same streamID as a stream that existed and was deleted within last 90 days, we will resurrect that old stream by incrementing the version by 1.
#'
#' @param streamId The stream ID.
#' @param files The files to stream.
#' @param roleArn An IAM role that allows the IoT service principal assumes to access your S3 files.
#' @param description A description of the stream.
#'
#' @examples
#'
#' @export
create_stream <- function (streamId, files, roleArn, description = NULL) 
{
    op <- Operation(name = "CreateStream", http_method = "POST", 
        http_path = "/streams/{streamId}", paginator = list())
    input <- create_stream_input(streamId = streamId, files = files, 
        roleArn = roleArn, description = description)
    output <- create_stream_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a thing record in the registry
#'
#' Creates a thing record in the registry.
#' 
#' This is a control plane operation. See [Authorization](http://docs.aws.amazon.com/iot/latest/developerguide/authorization.html) for information about authorizing control plane actions.
#'
#' @param thingName The name of the thing to create.
#' @param thingTypeName The name of the thing type associated with the new thing.
#' @param attributePayload The attribute payload, which consists of up to three name/value pairs in a JSON document. For example:
#' 
#' `{\"attributes\":{\"string1\":\"string2\"}}`
#'
#' @examples
#'
#' @export
create_thing <- function (thingName, thingTypeName = NULL, attributePayload = NULL) 
{
    op <- Operation(name = "CreateThing", http_method = "POST", 
        http_path = "/things/{thingName}", paginator = list())
    input <- create_thing_input(thingName = thingName, thingTypeName = thingTypeName, 
        attributePayload = attributePayload)
    output <- create_thing_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Create a thing group
#'
#' Create a thing group.
#' 
#' This is a control plane operation. See [Authorization](http://docs.aws.amazon.com/iot/latest/developerguide/authorization.html) for information about authorizing control plane actions.
#'
#' @param thingGroupName The thing group name to create.
#' @param parentGroupName The name of the parent thing group.
#' @param thingGroupProperties The thing group properties.
#'
#' @examples
#'
#' @export
create_thing_group <- function (thingGroupName, parentGroupName = NULL, 
    thingGroupProperties = NULL) 
{
    op <- Operation(name = "CreateThingGroup", http_method = "POST", 
        http_path = "/thing-groups/{thingGroupName}", paginator = list())
    input <- create_thing_group_input(thingGroupName = thingGroupName, 
        parentGroupName = parentGroupName, thingGroupProperties = thingGroupProperties)
    output <- create_thing_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new thing type
#'
#' Creates a new thing type.
#'
#' @param thingTypeName The name of the thing type.
#' @param thingTypeProperties The ThingTypeProperties for the thing type to create. It contains information about the new thing type including a description, and a list of searchable thing attribute names.
#'
#' @examples
#'
#' @export
create_thing_type <- function (thingTypeName, thingTypeProperties = NULL) 
{
    op <- Operation(name = "CreateThingType", http_method = "POST", 
        http_path = "/thing-types/{thingTypeName}", paginator = list())
    input <- create_thing_type_input(thingTypeName = thingTypeName, 
        thingTypeProperties = thingTypeProperties)
    output <- create_thing_type_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a rule
#'
#' Creates a rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.
#'
#' @param ruleName The name of the rule.
#' @param topicRulePayload The rule payload.
#'
#' @examples
#'
#' @export
create_topic_rule <- function (ruleName, topicRulePayload) 
{
    op <- Operation(name = "CreateTopicRule", http_method = "POST", 
        http_path = "/rules/{ruleName}", paginator = list())
    input <- create_topic_rule_input(ruleName = ruleName, topicRulePayload = topicRulePayload)
    output <- create_topic_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Restores the default settings for Device Defender audits for this account
#'
#' Restores the default settings for Device Defender audits for this account. Any configuration data you entered is deleted and all audit checks are reset to disabled.
#'
#' @param deleteScheduledAudits If true, all scheduled audits are deleted.
#'
#' @examples
#'
#' @export
delete_account_audit_configuration <- function (deleteScheduledAudits = NULL) 
{
    op <- Operation(name = "DeleteAccountAuditConfiguration", 
        http_method = "DELETE", http_path = "/audit/configuration", 
        paginator = list())
    input <- delete_account_audit_configuration_input(deleteScheduledAudits = deleteScheduledAudits)
    output <- delete_account_audit_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an authorizer
#'
#' Deletes an authorizer.
#'
#' @param authorizerName The name of the authorizer to delete.
#'
#' @examples
#'
#' @export
delete_authorizer <- function (authorizerName) 
{
    op <- Operation(name = "DeleteAuthorizer", http_method = "DELETE", 
        http_path = "/authorizer/{authorizerName}", paginator = list())
    input <- delete_authorizer_input(authorizerName = authorizerName)
    output <- delete_authorizer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a registered CA certificate
#'
#' Deletes a registered CA certificate.
#'
#' @param certificateId The ID of the certificate to delete. (The last part of the certificate ARN contains the certificate ID.)
#'
#' @examples
#'
#' @export
delete_ca_certificate <- function (certificateId) 
{
    op <- Operation(name = "DeleteCACertificate", http_method = "DELETE", 
        http_path = "/cacertificate/{caCertificateId}", paginator = list())
    input <- delete_ca_certificate_input(certificateId = certificateId)
    output <- delete_ca_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified certificate
#'
#' Deletes the specified certificate.
#' 
#' A certificate cannot be deleted if it has a policy attached to it or if its status is set to ACTIVE. To delete a certificate, first use the DetachPrincipalPolicy API to detach all policies. Next, use the UpdateCertificate API to set the certificate to the INACTIVE status.
#'
#' @param certificateId The ID of the certificate. (The last part of the certificate ARN contains the certificate ID.)
#' @param forceDelete Forces a certificate request to be deleted.
#'
#' @examples
#'
#' @export
delete_certificate <- function (certificateId, forceDelete = NULL) 
{
    op <- Operation(name = "DeleteCertificate", http_method = "DELETE", 
        http_path = "/certificates/{certificateId}", paginator = list())
    input <- delete_certificate_input(certificateId = certificateId, 
        forceDelete = forceDelete)
    output <- delete_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a job and its related job executions
#'
#' Deletes a job and its related job executions.
#' 
#' Deleting a job may take time, depending on the number of job executions created for the job and various other factors. While the job is being deleted, the status of the job will be shown as \"DELETION\_IN\_PROGRESS\". Attempting to delete or cancel a job whose status is already \"DELETION\_IN\_PROGRESS\" will result in an error.
#' 
#' Only 10 jobs may have status \"DELETION\_IN\_PROGRESS\" at the same time, or a LimitExceededException will occur.
#'
#' @param jobId The ID of the job to be deleted.
#' 
#' After a job deletion is completed, you may reuse this jobId when you create a new job. However, this is not recommended, and you must ensure that your devices are not using the jobId to refer to the deleted job.
#' @param force (Optional) When true, you can delete a job which is \"IN\_PROGRESS\". Otherwise, you can only delete a job which is in a terminal state (\"COMPLETED\" or \"CANCELED\") or an exception will occur. The default is false.
#' 
#' Deleting a job which is \"IN\_PROGRESS\", will cause a device which is executing the job to be unable to access job information or update the job execution status. Use caution and ensure that each device executing a job which is deleted is able to recover to a valid state.
#'
#' @examples
#'
#' @export
delete_job <- function (jobId, force = NULL) 
{
    op <- Operation(name = "DeleteJob", http_method = "DELETE", 
        http_path = "/jobs/{jobId}", paginator = list())
    input <- delete_job_input(jobId = jobId, force = force)
    output <- delete_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a job execution
#'
#' Deletes a job execution.
#'
#' @param jobId The ID of the job whose execution on a particular device will be deleted.
#' @param thingName The name of the thing whose job execution will be deleted.
#' @param executionNumber The ID of the job execution to be deleted. The `executionNumber` refers to the execution of a particular job on a particular device.
#' 
#' Note that once a job execution is deleted, the `executionNumber` may be reused by IoT, so be sure you get and use the correct value here.
#' @param force (Optional) When true, you can delete a job execution which is \"IN\_PROGRESS\". Otherwise, you can only delete a job execution which is in a terminal state (\"SUCCEEDED\", \"FAILED\", \"REJECTED\", \"REMOVED\" or \"CANCELED\") or an exception will occur. The default is false.
#' 
#' Deleting a job execution which is \"IN\_PROGRESS\", will cause the device to be unable to access job information or update the job execution status. Use caution and ensure that the device is able to recover to a valid state.
#'
#' @examples
#'
#' @export
delete_job_execution <- function (jobId, thingName, executionNumber, 
    force = NULL) 
{
    op <- Operation(name = "DeleteJobExecution", http_method = "DELETE", 
        http_path = "/things/{thingName}/jobs/{jobId}/executionNumber/{executionNumber}", 
        paginator = list())
    input <- delete_job_execution_input(jobId = jobId, thingName = thingName, 
        executionNumber = executionNumber, force = force)
    output <- delete_job_execution_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Delete an OTA update
#'
#' Delete an OTA update.
#'
#' @param otaUpdateId The OTA update ID to delete.
#' @param deleteStream Specifies if the stream associated with an OTA update should be deleted when the OTA update is deleted.
#' @param forceDeleteAWSJob Specifies if the AWS Job associated with the OTA update should be deleted with the OTA update is deleted.
#'
#' @examples
#'
#' @export
delete_ota_update <- function (otaUpdateId, deleteStream = NULL, 
    forceDeleteAWSJob = NULL) 
{
    op <- Operation(name = "DeleteOTAUpdate", http_method = "DELETE", 
        http_path = "/otaUpdates/{otaUpdateId}", paginator = list())
    input <- delete_ota_update_input(otaUpdateId = otaUpdateId, 
        deleteStream = deleteStream, forceDeleteAWSJob = forceDeleteAWSJob)
    output <- delete_ota_update_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified policy
#'
#' Deletes the specified policy.
#' 
#' A policy cannot be deleted if it has non-default versions or it is attached to any certificate.
#' 
#' To delete a policy, use the DeletePolicyVersion API to delete all non-default versions of the policy; use the DetachPrincipalPolicy API to detach the policy from any certificate; and then use the DeletePolicy API to delete the policy.
#' 
#' When a policy is deleted using DeletePolicy, its default version is deleted with it.
#'
#' @param policyName The name of the policy to delete.
#'
#' @examples
#'
#' @export
delete_policy <- function (policyName) 
{
    op <- Operation(name = "DeletePolicy", http_method = "DELETE", 
        http_path = "/policies/{policyName}", paginator = list())
    input <- delete_policy_input(policyName = policyName)
    output <- delete_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified version of the specified policy
#'
#' Deletes the specified version of the specified policy. You cannot delete the default version of a policy using this API. To delete the default version of a policy, use DeletePolicy. To find out which version of a policy is marked as the default version, use ListPolicyVersions.
#'
#' @param policyName The name of the policy.
#' @param policyVersionId The policy version ID.
#'
#' @examples
#'
#' @export
delete_policy_version <- function (policyName, policyVersionId) 
{
    op <- Operation(name = "DeletePolicyVersion", http_method = "DELETE", 
        http_path = "/policies/{policyName}/version/{policyVersionId}", 
        paginator = list())
    input <- delete_policy_version_input(policyName = policyName, 
        policyVersionId = policyVersionId)
    output <- delete_policy_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a CA certificate registration code
#'
#' Deletes a CA certificate registration code.
#'
#' @examples
#'
#' @export
delete_registration_code <- function () 
{
    op <- Operation(name = "DeleteRegistrationCode", http_method = "DELETE", 
        http_path = "/registrationcode", paginator = list())
    input <- delete_registration_code_input()
    output <- delete_registration_code_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a role alias
#'
#' Deletes a role alias
#'
#' @param roleAlias The role alias to delete.
#'
#' @examples
#'
#' @export
delete_role_alias <- function (roleAlias) 
{
    op <- Operation(name = "DeleteRoleAlias", http_method = "DELETE", 
        http_path = "/role-aliases/{roleAlias}", paginator = list())
    input <- delete_role_alias_input(roleAlias = roleAlias)
    output <- delete_role_alias_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a scheduled audit
#'
#' Deletes a scheduled audit.
#'
#' @param scheduledAuditName The name of the scheduled audit you want to delete.
#'
#' @examples
#'
#' @export
delete_scheduled_audit <- function (scheduledAuditName) 
{
    op <- Operation(name = "DeleteScheduledAudit", http_method = "DELETE", 
        http_path = "/audit/scheduledaudits/{scheduledAuditName}", 
        paginator = list())
    input <- delete_scheduled_audit_input(scheduledAuditName = scheduledAuditName)
    output <- delete_scheduled_audit_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a Device Defender security profile
#'
#' Deletes a Device Defender security profile.
#'
#' @param securityProfileName The name of the security profile to be deleted.
#' @param expectedVersion The expected version of the security profile. A new version is generated whenever the security profile is updated. If you specify a value that is different than the actual version, a `VersionConflictException` is thrown.
#'
#' @examples
#'
#' @export
delete_security_profile <- function (securityProfileName, expectedVersion = NULL) 
{
    op <- Operation(name = "DeleteSecurityProfile", http_method = "DELETE", 
        http_path = "/security-profiles/{securityProfileName}", 
        paginator = list())
    input <- delete_security_profile_input(securityProfileName = securityProfileName, 
        expectedVersion = expectedVersion)
    output <- delete_security_profile_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a stream
#'
#' Deletes a stream.
#'
#' @param streamId The stream ID.
#'
#' @examples
#'
#' @export
delete_stream <- function (streamId) 
{
    op <- Operation(name = "DeleteStream", http_method = "DELETE", 
        http_path = "/streams/{streamId}", paginator = list())
    input <- delete_stream_input(streamId = streamId)
    output <- delete_stream_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified thing
#'
#' Deletes the specified thing.
#'
#' @param thingName The name of the thing to delete.
#' @param expectedVersion The expected version of the thing record in the registry. If the version of the record in the registry does not match the expected version specified in the request, the `DeleteThing` request is rejected with a `VersionConflictException`.
#'
#' @examples
#'
#' @export
delete_thing <- function (thingName, expectedVersion = NULL) 
{
    op <- Operation(name = "DeleteThing", http_method = "DELETE", 
        http_path = "/things/{thingName}", paginator = list())
    input <- delete_thing_input(thingName = thingName, expectedVersion = expectedVersion)
    output <- delete_thing_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a thing group
#'
#' Deletes a thing group.
#'
#' @param thingGroupName The name of the thing group to delete.
#' @param expectedVersion The expected version of the thing group to delete.
#'
#' @examples
#'
#' @export
delete_thing_group <- function (thingGroupName, expectedVersion = NULL) 
{
    op <- Operation(name = "DeleteThingGroup", http_method = "DELETE", 
        http_path = "/thing-groups/{thingGroupName}", paginator = list())
    input <- delete_thing_group_input(thingGroupName = thingGroupName, 
        expectedVersion = expectedVersion)
    output <- delete_thing_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified thing type 
#'
#' Deletes the specified thing type . You cannot delete a thing type if it has things associated with it. To delete a thing type, first mark it as deprecated by calling DeprecateThingType, then remove any associated things by calling UpdateThing to change the thing type on any associated thing, and finally use DeleteThingType to delete the thing type.
#'
#' @param thingTypeName The name of the thing type.
#'
#' @examples
#'
#' @export
delete_thing_type <- function (thingTypeName) 
{
    op <- Operation(name = "DeleteThingType", http_method = "DELETE", 
        http_path = "/thing-types/{thingTypeName}", paginator = list())
    input <- delete_thing_type_input(thingTypeName = thingTypeName)
    output <- delete_thing_type_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the rule
#'
#' Deletes the rule.
#'
#' @param ruleName The name of the rule.
#'
#' @examples
#'
#' @export
delete_topic_rule <- function (ruleName) 
{
    op <- Operation(name = "DeleteTopicRule", http_method = "DELETE", 
        http_path = "/rules/{ruleName}", paginator = list())
    input <- delete_topic_rule_input(ruleName = ruleName)
    output <- delete_topic_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a logging level
#'
#' Deletes a logging level.
#'
#' @param targetType The type of resource for which you are configuring logging. Must be `THING_Group`.
#' @param targetName The name of the resource for which you are configuring logging.
#'
#' @examples
#'
#' @export
delete_v2_logging_level <- function (targetType, targetName) 
{
    op <- Operation(name = "DeleteV2LoggingLevel", http_method = "DELETE", 
        http_path = "/v2LoggingLevel", paginator = list())
    input <- delete_v2_logging_level_input(targetType = targetType, 
        targetName = targetName)
    output <- delete_v2_logging_level_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deprecates a thing type
#'
#' Deprecates a thing type. You can not associate new things with deprecated thing type.
#'
#' @param thingTypeName The name of the thing type to deprecate.
#' @param undoDeprecate Whether to undeprecate a deprecated thing type. If **true**, the thing type will not be deprecated anymore and you can associate it with things.
#'
#' @examples
#'
#' @export
deprecate_thing_type <- function (thingTypeName, undoDeprecate = NULL) 
{
    op <- Operation(name = "DeprecateThingType", http_method = "POST", 
        http_path = "/thing-types/{thingTypeName}/deprecate", 
        paginator = list())
    input <- deprecate_thing_type_input(thingTypeName = thingTypeName, 
        undoDeprecate = undoDeprecate)
    output <- deprecate_thing_type_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the Device Defender audit settings for this account
#'
#' Gets information about the Device Defender audit settings for this account. Settings include how audit notifications are sent and which audit checks are enabled or disabled.
#'
#' @examples
#'
#' @export
describe_account_audit_configuration <- function () 
{
    op <- Operation(name = "DescribeAccountAuditConfiguration", 
        http_method = "GET", http_path = "/audit/configuration", 
        paginator = list())
    input <- describe_account_audit_configuration_input()
    output <- describe_account_audit_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about a Device Defender audit
#'
#' Gets information about a Device Defender audit.
#'
#' @param taskId The ID of the audit whose information you want to get.
#'
#' @examples
#'
#' @export
describe_audit_task <- function (taskId) 
{
    op <- Operation(name = "DescribeAuditTask", http_method = "GET", 
        http_path = "/audit/tasks/{taskId}", paginator = list())
    input <- describe_audit_task_input(taskId = taskId)
    output <- describe_audit_task_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes an authorizer
#'
#' Describes an authorizer.
#'
#' @param authorizerName The name of the authorizer to describe.
#'
#' @examples
#'
#' @export
describe_authorizer <- function (authorizerName) 
{
    op <- Operation(name = "DescribeAuthorizer", http_method = "GET", 
        http_path = "/authorizer/{authorizerName}", paginator = list())
    input <- describe_authorizer_input(authorizerName = authorizerName)
    output <- describe_authorizer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes a registered CA certificate
#'
#' Describes a registered CA certificate.
#'
#' @param certificateId The CA certificate identifier.
#'
#' @examples
#'
#' @export
describe_ca_certificate <- function (certificateId) 
{
    op <- Operation(name = "DescribeCACertificate", http_method = "GET", 
        http_path = "/cacertificate/{caCertificateId}", paginator = list())
    input <- describe_ca_certificate_input(certificateId = certificateId)
    output <- describe_ca_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the specified certificate
#'
#' Gets information about the specified certificate.
#'
#' @param certificateId The ID of the certificate. (The last part of the certificate ARN contains the certificate ID.)
#'
#' @examples
#'
#' @export
describe_certificate <- function (certificateId) 
{
    op <- Operation(name = "DescribeCertificate", http_method = "GET", 
        http_path = "/certificates/{certificateId}", paginator = list())
    input <- describe_certificate_input(certificateId = certificateId)
    output <- describe_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the default authorizer
#'
#' Describes the default authorizer.
#'
#' @examples
#'
#' @export
describe_default_authorizer <- function () 
{
    op <- Operation(name = "DescribeDefaultAuthorizer", http_method = "GET", 
        http_path = "/default-authorizer", paginator = list())
    input <- describe_default_authorizer_input()
    output <- describe_default_authorizer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a unique endpoint specific to the AWS account making the call
#'
#' Returns a unique endpoint specific to the AWS account making the call.
#'
#' @param endpointType The endpoint type. Valid endpoint types include:
#' 
#' -   `iot:Data` - Returns a VeriSign signed data endpoint.
#' 
#' 
#' -   `iot:Data-ATS` - Returns an ATS signed data endpoint.
#' 
#' 
#' -   `iot:CredentialProvider` - Returns an AWS IoT credentials provider API endpoint.
#' 
#' 
#' -   `iot:Jobs` - Returns an AWS IoT device management Jobs API endpoint.
#'
#' @examples
#'
#' @export
describe_endpoint <- function (endpointType = NULL) 
{
    op <- Operation(name = "DescribeEndpoint", http_method = "GET", 
        http_path = "/endpoint", paginator = list())
    input <- describe_endpoint_input(endpointType = endpointType)
    output <- describe_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes event configurations
#'
#' Describes event configurations.
#'
#' @examples
#'
#' @export
describe_event_configurations <- function () 
{
    op <- Operation(name = "DescribeEventConfigurations", http_method = "GET", 
        http_path = "/event-configurations", paginator = list())
    input <- describe_event_configurations_input()
    output <- describe_event_configurations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes a search index
#'
#' Describes a search index.
#'
#' @param indexName The index name.
#'
#' @examples
#'
#' @export
describe_index <- function (indexName) 
{
    op <- Operation(name = "DescribeIndex", http_method = "GET", 
        http_path = "/indices/{indexName}", paginator = list())
    input <- describe_index_input(indexName = indexName)
    output <- describe_index_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes a job
#'
#' Describes a job.
#'
#' @param jobId The unique identifier you assigned to this job when it was created.
#'
#' @examples
#'
#' @export
describe_job <- function (jobId) 
{
    op <- Operation(name = "DescribeJob", http_method = "GET", 
        http_path = "/jobs/{jobId}", paginator = list())
    input <- describe_job_input(jobId = jobId)
    output <- describe_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes a job execution
#'
#' Describes a job execution.
#'
#' @param jobId The unique identifier you assigned to this job when it was created.
#' @param thingName The name of the thing on which the job execution is running.
#' @param executionNumber A string (consisting of the digits \"0\" through \"9\" which is used to specify a particular job execution on a particular device.
#'
#' @examples
#'
#' @export
describe_job_execution <- function (jobId, thingName, executionNumber = NULL) 
{
    op <- Operation(name = "DescribeJobExecution", http_method = "GET", 
        http_path = "/things/{thingName}/jobs/{jobId}", paginator = list())
    input <- describe_job_execution_input(jobId = jobId, thingName = thingName, 
        executionNumber = executionNumber)
    output <- describe_job_execution_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes a role alias
#'
#' Describes a role alias.
#'
#' @param roleAlias The role alias to describe.
#'
#' @examples
#'
#' @export
describe_role_alias <- function (roleAlias) 
{
    op <- Operation(name = "DescribeRoleAlias", http_method = "GET", 
        http_path = "/role-aliases/{roleAlias}", paginator = list())
    input <- describe_role_alias_input(roleAlias = roleAlias)
    output <- describe_role_alias_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about a scheduled audit
#'
#' Gets information about a scheduled audit.
#'
#' @param scheduledAuditName The name of the scheduled audit whose information you want to get.
#'
#' @examples
#'
#' @export
describe_scheduled_audit <- function (scheduledAuditName) 
{
    op <- Operation(name = "DescribeScheduledAudit", http_method = "GET", 
        http_path = "/audit/scheduledaudits/{scheduledAuditName}", 
        paginator = list())
    input <- describe_scheduled_audit_input(scheduledAuditName = scheduledAuditName)
    output <- describe_scheduled_audit_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about a Device Defender security profile
#'
#' Gets information about a Device Defender security profile.
#'
#' @param securityProfileName The name of the security profile whose information you want to get.
#'
#' @examples
#'
#' @export
describe_security_profile <- function (securityProfileName) 
{
    op <- Operation(name = "DescribeSecurityProfile", http_method = "GET", 
        http_path = "/security-profiles/{securityProfileName}", 
        paginator = list())
    input <- describe_security_profile_input(securityProfileName = securityProfileName)
    output <- describe_security_profile_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about a stream
#'
#' Gets information about a stream.
#'
#' @param streamId The stream ID.
#'
#' @examples
#'
#' @export
describe_stream <- function (streamId) 
{
    op <- Operation(name = "DescribeStream", http_method = "GET", 
        http_path = "/streams/{streamId}", paginator = list())
    input <- describe_stream_input(streamId = streamId)
    output <- describe_stream_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the specified thing
#'
#' Gets information about the specified thing.
#'
#' @param thingName The name of the thing.
#'
#' @examples
#'
#' @export
describe_thing <- function (thingName) 
{
    op <- Operation(name = "DescribeThing", http_method = "GET", 
        http_path = "/things/{thingName}", paginator = list())
    input <- describe_thing_input(thingName = thingName)
    output <- describe_thing_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describe a thing group
#'
#' Describe a thing group.
#'
#' @param thingGroupName The name of the thing group.
#'
#' @examples
#'
#' @export
describe_thing_group <- function (thingGroupName) 
{
    op <- Operation(name = "DescribeThingGroup", http_method = "GET", 
        http_path = "/thing-groups/{thingGroupName}", paginator = list())
    input <- describe_thing_group_input(thingGroupName = thingGroupName)
    output <- describe_thing_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes a bulk thing provisioning task
#'
#' Describes a bulk thing provisioning task.
#'
#' @param taskId The task ID.
#'
#' @examples
#'
#' @export
describe_thing_registration_task <- function (taskId) 
{
    op <- Operation(name = "DescribeThingRegistrationTask", http_method = "GET", 
        http_path = "/thing-registration-tasks/{taskId}", paginator = list())
    input <- describe_thing_registration_task_input(taskId = taskId)
    output <- describe_thing_registration_task_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the specified thing type
#'
#' Gets information about the specified thing type.
#'
#' @param thingTypeName The name of the thing type.
#'
#' @examples
#'
#' @export
describe_thing_type <- function (thingTypeName) 
{
    op <- Operation(name = "DescribeThingType", http_method = "GET", 
        http_path = "/thing-types/{thingTypeName}", paginator = list())
    input <- describe_thing_type_input(thingTypeName = thingTypeName)
    output <- describe_thing_type_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Detaches a policy from the specified target
#'
#' Detaches a policy from the specified target.
#'
#' @param policyName The policy to detach.
#' @param target The target from which the policy will be detached.
#'
#' @examples
#'
#' @export
detach_policy <- function (policyName, target) 
{
    op <- Operation(name = "DetachPolicy", http_method = "POST", 
        http_path = "/target-policies/{policyName}", paginator = list())
    input <- detach_policy_input(policyName = policyName, target = target)
    output <- detach_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes the specified policy from the specified certificate
#'
#' Removes the specified policy from the specified certificate.
#' 
#' **Note:** This API is deprecated. Please use DetachPolicy instead.
#'
#' @param policyName The name of the policy to detach.
#' @param principal The principal.
#' 
#' If the principal is a certificate, specify the certificate ARN. If the principal is an Amazon Cognito identity, specify the identity ID.
#'
#' @examples
#'
#' @export
detach_principal_policy <- function (policyName, principal) 
{
    op <- Operation(name = "DetachPrincipalPolicy", http_method = "DELETE", 
        http_path = "/principal-policies/{policyName}", paginator = list())
    input <- detach_principal_policy_input(policyName = policyName, 
        principal = principal)
    output <- detach_principal_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates a Device Defender security profile from a thing group or from this account
#'
#' Disassociates a Device Defender security profile from a thing group or from this account.
#'
#' @param securityProfileName The security profile that is detached.
#' @param securityProfileTargetArn The ARN of the thing group from which the security profile is detached.
#'
#' @examples
#'
#' @export
detach_security_profile <- function (securityProfileName, securityProfileTargetArn) 
{
    op <- Operation(name = "DetachSecurityProfile", http_method = "DELETE", 
        http_path = "/security-profiles/{securityProfileName}/targets", 
        paginator = list())
    input <- detach_security_profile_input(securityProfileName = securityProfileName, 
        securityProfileTargetArn = securityProfileTargetArn)
    output <- detach_security_profile_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Detaches the specified principal from the specified thing
#'
#' Detaches the specified principal from the specified thing.
#'
#' @param thingName The name of the thing.
#' @param principal If the principal is a certificate, this value must be ARN of the certificate. If the principal is an Amazon Cognito identity, this value must be the ID of the Amazon Cognito identity.
#'
#' @examples
#'
#' @export
detach_thing_principal <- function (thingName, principal) 
{
    op <- Operation(name = "DetachThingPrincipal", http_method = "DELETE", 
        http_path = "/things/{thingName}/principals", paginator = list())
    input <- detach_thing_principal_input(thingName = thingName, 
        principal = principal)
    output <- detach_thing_principal_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disables the rule
#'
#' Disables the rule.
#'
#' @param ruleName The name of the rule to disable.
#'
#' @examples
#'
#' @export
disable_topic_rule <- function (ruleName) 
{
    op <- Operation(name = "DisableTopicRule", http_method = "POST", 
        http_path = "/rules/{ruleName}/disable", paginator = list())
    input <- disable_topic_rule_input(ruleName = ruleName)
    output <- disable_topic_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Enables the rule
#'
#' Enables the rule.
#'
#' @param ruleName The name of the topic rule to enable.
#'
#' @examples
#'
#' @export
enable_topic_rule <- function (ruleName) 
{
    op <- Operation(name = "EnableTopicRule", http_method = "POST", 
        http_path = "/rules/{ruleName}/enable", paginator = list())
    input <- enable_topic_rule_input(ruleName = ruleName)
    output <- enable_topic_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a list of the policies that have an effect on the authorization behavior of the specified device when it connects to the AWS IoT device gateway
#'
#' Gets a list of the policies that have an effect on the authorization behavior of the specified device when it connects to the AWS IoT device gateway.
#'
#' @param principal The principal.
#' @param cognitoIdentityPoolId The Cognito identity pool ID.
#' @param thingName The thing name.
#'
#' @examples
#'
#' @export
get_effective_policies <- function (principal = NULL, cognitoIdentityPoolId = NULL, 
    thingName = NULL) 
{
    op <- Operation(name = "GetEffectivePolicies", http_method = "POST", 
        http_path = "/effective-policies", paginator = list())
    input <- get_effective_policies_input(principal = principal, 
        cognitoIdentityPoolId = cognitoIdentityPoolId, thingName = thingName)
    output <- get_effective_policies_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the search configuration
#'
#' Gets the search configuration.
#'
#' @examples
#'
#' @export
get_indexing_configuration <- function () 
{
    op <- Operation(name = "GetIndexingConfiguration", http_method = "GET", 
        http_path = "/indexing/config", paginator = list())
    input <- get_indexing_configuration_input()
    output <- get_indexing_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a job document
#'
#' Gets a job document.
#'
#' @param jobId The unique identifier you assigned to this job when it was created.
#'
#' @examples
#'
#' @export
get_job_document <- function (jobId) 
{
    op <- Operation(name = "GetJobDocument", http_method = "GET", 
        http_path = "/jobs/{jobId}/job-document", paginator = list())
    input <- get_job_document_input(jobId = jobId)
    output <- get_job_document_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the logging options
#'
#' Gets the logging options.
#' 
#' NOTE: use of this command is not recommended. Use `GetV2LoggingOptions` instead.
#'
#' @examples
#'
#' @export
get_logging_options <- function () 
{
    op <- Operation(name = "GetLoggingOptions", http_method = "GET", 
        http_path = "/loggingOptions", paginator = list())
    input <- get_logging_options_input()
    output <- get_logging_options_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets an OTA update
#'
#' Gets an OTA update.
#'
#' @param otaUpdateId The OTA update ID.
#'
#' @examples
#'
#' @export
get_ota_update <- function (otaUpdateId) 
{
    op <- Operation(name = "GetOTAUpdate", http_method = "GET", 
        http_path = "/otaUpdates/{otaUpdateId}", paginator = list())
    input <- get_ota_update_input(otaUpdateId = otaUpdateId)
    output <- get_ota_update_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the specified policy with the policy document of the default version
#'
#' Gets information about the specified policy with the policy document of the default version.
#'
#' @param policyName The name of the policy.
#'
#' @examples
#'
#' @export
get_policy <- function (policyName) 
{
    op <- Operation(name = "GetPolicy", http_method = "GET", 
        http_path = "/policies/{policyName}", paginator = list())
    input <- get_policy_input(policyName = policyName)
    output <- get_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the specified policy version
#'
#' Gets information about the specified policy version.
#'
#' @param policyName The name of the policy.
#' @param policyVersionId The policy version ID.
#'
#' @examples
#'
#' @export
get_policy_version <- function (policyName, policyVersionId) 
{
    op <- Operation(name = "GetPolicyVersion", http_method = "GET", 
        http_path = "/policies/{policyName}/version/{policyVersionId}", 
        paginator = list())
    input <- get_policy_version_input(policyName = policyName, 
        policyVersionId = policyVersionId)
    output <- get_policy_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a registration code used to register a CA certificate with AWS IoT
#'
#' Gets a registration code used to register a CA certificate with AWS IoT.
#'
#' @examples
#'
#' @export
get_registration_code <- function () 
{
    op <- Operation(name = "GetRegistrationCode", http_method = "GET", 
        http_path = "/registrationcode", paginator = list())
    input <- get_registration_code_input()
    output <- get_registration_code_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the rule
#'
#' Gets information about the rule.
#'
#' @param ruleName The name of the rule.
#'
#' @examples
#'
#' @export
get_topic_rule <- function (ruleName) 
{
    op <- Operation(name = "GetTopicRule", http_method = "GET", 
        http_path = "/rules/{ruleName}", paginator = list())
    input <- get_topic_rule_input(ruleName = ruleName)
    output <- get_topic_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the fine grained logging options
#'
#' Gets the fine grained logging options.
#'
#' @examples
#'
#' @export
get_v2_logging_options <- function () 
{
    op <- Operation(name = "GetV2LoggingOptions", http_method = "GET", 
        http_path = "/v2LoggingOptions", paginator = list())
    input <- get_v2_logging_options_input()
    output <- get_v2_logging_options_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the active violations for a given Device Defender security profile
#'
#' Lists the active violations for a given Device Defender security profile.
#'
#' @param thingName The name of the thing whose active violations are listed.
#' @param securityProfileName The name of the Device Defender security profile for which violations are listed.
#' @param nextToken The token for the next set of results.
#' @param maxResults The maximum number of results to return at one time.
#'
#' @examples
#'
#' @export
list_active_violations <- function (thingName = NULL, securityProfileName = NULL, 
    nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListActiveViolations", http_method = "GET", 
        http_path = "/active-violations", paginator = list())
    input <- list_active_violations_input(thingName = thingName, 
        securityProfileName = securityProfileName, nextToken = nextToken, 
        maxResults = maxResults)
    output <- list_active_violations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the policies attached to the specified thing group
#'
#' Lists the policies attached to the specified thing group.
#'
#' @param target The group for which the policies will be listed.
#' @param recursive When true, recursively list attached policies.
#' @param marker The token to retrieve the next set of results.
#' @param pageSize The maximum number of results to be returned per request.
#'
#' @examples
#'
#' @export
list_attached_policies <- function (target, recursive = NULL, 
    marker = NULL, pageSize = NULL) 
{
    op <- Operation(name = "ListAttachedPolicies", http_method = "POST", 
        http_path = "/attached-policies/{target}", paginator = list())
    input <- list_attached_policies_input(target = target, recursive = recursive, 
        marker = marker, pageSize = pageSize)
    output <- list_attached_policies_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the findings (results) of a Device Defender audit or of the audits performed during a specified time period
#'
#' Lists the findings (results) of a Device Defender audit or of the audits performed during a specified time period. (Findings are retained for 180 days.)
#'
#' @param taskId A filter to limit results to the audit with the specified ID. You must specify either the taskId or the startTime and endTime, but not both.
#' @param checkName A filter to limit results to the findings for the specified audit check.
#' @param resourceIdentifier Information identifying the non-compliant resource.
#' @param maxResults The maximum number of results to return at one time. The default is 25.
#' @param nextToken The token for the next set of results.
#' @param startTime A filter to limit results to those found after the specified time. You must specify either the startTime and endTime or the taskId, but not both.
#' @param endTime A filter to limit results to those found before the specified time. You must specify either the startTime and endTime or the taskId, but not both.
#'
#' @examples
#'
#' @export
list_audit_findings <- function (taskId = NULL, checkName = NULL, 
    resourceIdentifier = NULL, maxResults = NULL, nextToken = NULL, 
    startTime = NULL, endTime = NULL) 
{
    op <- Operation(name = "ListAuditFindings", http_method = "POST", 
        http_path = "/audit/findings", paginator = list())
    input <- list_audit_findings_input(taskId = taskId, checkName = checkName, 
        resourceIdentifier = resourceIdentifier, maxResults = maxResults, 
        nextToken = nextToken, startTime = startTime, endTime = endTime)
    output <- list_audit_findings_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the Device Defender audits that have been performed during a given time period
#'
#' Lists the Device Defender audits that have been performed during a given time period.
#'
#' @param startTime The beginning of the time period. Note that audit information is retained for a limited time (180 days). Requesting a start time prior to what is retained results in an \"InvalidRequestException\".
#' @param endTime The end of the time period.
#' @param taskType A filter to limit the output to the specified type of audit: can be one of \"ON\_DEMAND\_AUDIT\_TASK\" or \"SCHEDULED\_\_AUDIT\_TASK\".
#' @param taskStatus A filter to limit the output to audits with the specified completion status: can be one of \"IN\_PROGRESS\", \"COMPLETED\", \"FAILED\" or \"CANCELED\".
#' @param nextToken The token for the next set of results.
#' @param maxResults The maximum number of results to return at one time. The default is 25.
#'
#' @examples
#'
#' @export
list_audit_tasks <- function (startTime, endTime, taskType = NULL, 
    taskStatus = NULL, nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListAuditTasks", http_method = "GET", 
        http_path = "/audit/tasks", paginator = list())
    input <- list_audit_tasks_input(startTime = startTime, endTime = endTime, 
        taskType = taskType, taskStatus = taskStatus, nextToken = nextToken, 
        maxResults = maxResults)
    output <- list_audit_tasks_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the authorizers registered in your account
#'
#' Lists the authorizers registered in your account.
#'
#' @param pageSize The maximum number of results to return at one time.
#' @param marker A marker used to get the next set of results.
#' @param ascendingOrder Return the list of authorizers in ascending alphabetical order.
#' @param status The status of the list authorizers request.
#'
#' @examples
#'
#' @export
list_authorizers <- function (pageSize = NULL, marker = NULL, 
    ascendingOrder = NULL, status = NULL) 
{
    op <- Operation(name = "ListAuthorizers", http_method = "GET", 
        http_path = "/authorizers/", paginator = list())
    input <- list_authorizers_input(pageSize = pageSize, marker = marker, 
        ascendingOrder = ascendingOrder, status = status)
    output <- list_authorizers_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the CA certificates registered for your AWS account
#'
#' Lists the CA certificates registered for your AWS account.
#' 
#' The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.
#'
#' @param pageSize The result page size.
#' @param marker The marker for the next set of results.
#' @param ascendingOrder Determines the order of the results.
#'
#' @examples
#'
#' @export
list_ca_certificates <- function (pageSize = NULL, marker = NULL, 
    ascendingOrder = NULL) 
{
    op <- Operation(name = "ListCACertificates", http_method = "GET", 
        http_path = "/cacertificates", paginator = list())
    input <- list_ca_certificates_input(pageSize = pageSize, 
        marker = marker, ascendingOrder = ascendingOrder)
    output <- list_ca_certificates_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the certificates registered in your AWS account
#'
#' Lists the certificates registered in your AWS account.
#' 
#' The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.
#'
#' @param pageSize The result page size.
#' @param marker The marker for the next set of results.
#' @param ascendingOrder Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.
#'
#' @examples
#'
#' @export
list_certificates <- function (pageSize = NULL, marker = NULL, 
    ascendingOrder = NULL) 
{
    op <- Operation(name = "ListCertificates", http_method = "GET", 
        http_path = "/certificates", paginator = list())
    input <- list_certificates_input(pageSize = pageSize, marker = marker, 
        ascendingOrder = ascendingOrder)
    output <- list_certificates_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' List the device certificates signed by the specified CA certificate
#'
#' List the device certificates signed by the specified CA certificate.
#'
#' @param caCertificateId The ID of the CA certificate. This operation will list all registered device certificate that were signed by this CA certificate.
#' @param pageSize The result page size.
#' @param marker The marker for the next set of results.
#' @param ascendingOrder Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.
#'
#' @examples
#'
#' @export
list_certificates_by_ca <- function (caCertificateId, pageSize = NULL, 
    marker = NULL, ascendingOrder = NULL) 
{
    op <- Operation(name = "ListCertificatesByCA", http_method = "GET", 
        http_path = "/certificates-by-ca/{caCertificateId}", 
        paginator = list())
    input <- list_certificates_by_ca_input(caCertificateId = caCertificateId, 
        pageSize = pageSize, marker = marker, ascendingOrder = ascendingOrder)
    output <- list_certificates_by_ca_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the search indices
#'
#' Lists the search indices.
#'
#' @param nextToken The token used to get the next set of results, or **null** if there are no additional results.
#' @param maxResults The maximum number of results to return at one time.
#'
#' @examples
#'
#' @export
list_indices <- function (nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListIndices", http_method = "GET", 
        http_path = "/indices", paginator = list())
    input <- list_indices_input(nextToken = nextToken, maxResults = maxResults)
    output <- list_indices_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the job executions for a job
#'
#' Lists the job executions for a job.
#'
#' @param jobId The unique identifier you assigned to this job when it was created.
#' @param status The status of the job.
#' @param maxResults The maximum number of results to be returned per request.
#' @param nextToken The token to retrieve the next set of results.
#'
#' @examples
#'
#' @export
list_job_executions_for_job <- function (jobId, status = NULL, 
    maxResults = NULL, nextToken = NULL) 
{
    op <- Operation(name = "ListJobExecutionsForJob", http_method = "GET", 
        http_path = "/jobs/{jobId}/things", paginator = list())
    input <- list_job_executions_for_job_input(jobId = jobId, 
        status = status, maxResults = maxResults, nextToken = nextToken)
    output <- list_job_executions_for_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the job executions for the specified thing
#'
#' Lists the job executions for the specified thing.
#'
#' @param thingName The thing name.
#' @param status An optional filter that lets you search for jobs that have the specified status.
#' @param maxResults The maximum number of results to be returned per request.
#' @param nextToken The token to retrieve the next set of results.
#'
#' @examples
#'
#' @export
list_job_executions_for_thing <- function (thingName, status = NULL, 
    maxResults = NULL, nextToken = NULL) 
{
    op <- Operation(name = "ListJobExecutionsForThing", http_method = "GET", 
        http_path = "/things/{thingName}/jobs", paginator = list())
    input <- list_job_executions_for_thing_input(thingName = thingName, 
        status = status, maxResults = maxResults, nextToken = nextToken)
    output <- list_job_executions_for_thing_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists jobs
#'
#' Lists jobs.
#'
#' @param status An optional filter that lets you search for jobs that have the specified status.
#' @param targetSelection Specifies whether the job will continue to run (CONTINUOUS), or will be complete after all those things specified as targets have completed the job (SNAPSHOT). If continuous, the job may also be run on a thing when a change is detected in a target. For example, a job will run on a thing when the thing is added to a target group, even after the job was completed by all things originally in the group.
#' @param maxResults The maximum number of results to return per request.
#' @param nextToken The token to retrieve the next set of results.
#' @param thingGroupName A filter that limits the returned jobs to those for the specified group.
#' @param thingGroupId A filter that limits the returned jobs to those for the specified group.
#'
#' @examples
#'
#' @export
list_jobs <- function (status = NULL, targetSelection = NULL, 
    maxResults = NULL, nextToken = NULL, thingGroupName = NULL, 
    thingGroupId = NULL) 
{
    op <- Operation(name = "ListJobs", http_method = "GET", http_path = "/jobs", 
        paginator = list())
    input <- list_jobs_input(status = status, targetSelection = targetSelection, 
        maxResults = maxResults, nextToken = nextToken, thingGroupName = thingGroupName, 
        thingGroupId = thingGroupId)
    output <- list_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists OTA updates
#'
#' Lists OTA updates.
#'
#' @param maxResults The maximum number of results to return at one time.
#' @param nextToken A token used to retrieve the next set of results.
#' @param otaUpdateStatus The OTA update job status.
#'
#' @examples
#'
#' @export
list_ota_updates <- function (maxResults = NULL, nextToken = NULL, 
    otaUpdateStatus = NULL) 
{
    op <- Operation(name = "ListOTAUpdates", http_method = "GET", 
        http_path = "/otaUpdates", paginator = list())
    input <- list_ota_updates_input(maxResults = maxResults, 
        nextToken = nextToken, otaUpdateStatus = otaUpdateStatus)
    output <- list_ota_updates_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists certificates that are being transferred but not yet accepted
#'
#' Lists certificates that are being transferred but not yet accepted.
#'
#' @param pageSize The result page size.
#' @param marker The marker for the next set of results.
#' @param ascendingOrder Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.
#'
#' @examples
#'
#' @export
list_outgoing_certificates <- function (pageSize = NULL, marker = NULL, 
    ascendingOrder = NULL) 
{
    op <- Operation(name = "ListOutgoingCertificates", http_method = "GET", 
        http_path = "/certificates-out-going", paginator = list())
    input <- list_outgoing_certificates_input(pageSize = pageSize, 
        marker = marker, ascendingOrder = ascendingOrder)
    output <- list_outgoing_certificates_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists your policies
#'
#' Lists your policies.
#'
#' @param marker The marker for the next set of results.
#' @param pageSize The result page size.
#' @param ascendingOrder Specifies the order for results. If true, the results are returned in ascending creation order.
#'
#' @examples
#'
#' @export
list_policies <- function (marker = NULL, pageSize = NULL, ascendingOrder = NULL) 
{
    op <- Operation(name = "ListPolicies", http_method = "GET", 
        http_path = "/policies", paginator = list())
    input <- list_policies_input(marker = marker, pageSize = pageSize, 
        ascendingOrder = ascendingOrder)
    output <- list_policies_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the principals associated with the specified policy
#'
#' Lists the principals associated with the specified policy.
#' 
#' **Note:** This API is deprecated. Please use ListTargetsForPolicy instead.
#'
#' @param policyName The policy name.
#' @param marker The marker for the next set of results.
#' @param pageSize The result page size.
#' @param ascendingOrder Specifies the order for results. If true, the results are returned in ascending creation order.
#'
#' @examples
#'
#' @export
list_policy_principals <- function (policyName, marker = NULL, 
    pageSize = NULL, ascendingOrder = NULL) 
{
    op <- Operation(name = "ListPolicyPrincipals", http_method = "GET", 
        http_path = "/policy-principals", paginator = list())
    input <- list_policy_principals_input(policyName = policyName, 
        marker = marker, pageSize = pageSize, ascendingOrder = ascendingOrder)
    output <- list_policy_principals_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the versions of the specified policy and identifies the default version
#'
#' Lists the versions of the specified policy and identifies the default version.
#'
#' @param policyName The policy name.
#'
#' @examples
#'
#' @export
list_policy_versions <- function (policyName) 
{
    op <- Operation(name = "ListPolicyVersions", http_method = "GET", 
        http_path = "/policies/{policyName}/version", paginator = list())
    input <- list_policy_versions_input(policyName = policyName)
    output <- list_policy_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the policies attached to the specified principal
#'
#' Lists the policies attached to the specified principal. If you use an Cognito identity, the ID must be in [AmazonCognito Identity format](http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax).
#' 
#' **Note:** This API is deprecated. Please use ListAttachedPolicies instead.
#'
#' @param principal The principal.
#' @param marker The marker for the next set of results.
#' @param pageSize The result page size.
#' @param ascendingOrder Specifies the order for results. If true, results are returned in ascending creation order.
#'
#' @examples
#'
#' @export
list_principal_policies <- function (principal, marker = NULL, 
    pageSize = NULL, ascendingOrder = NULL) 
{
    op <- Operation(name = "ListPrincipalPolicies", http_method = "GET", 
        http_path = "/principal-policies", paginator = list())
    input <- list_principal_policies_input(principal = principal, 
        marker = marker, pageSize = pageSize, ascendingOrder = ascendingOrder)
    output <- list_principal_policies_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the things associated with the specified principal
#'
#' Lists the things associated with the specified principal.
#'
#' @param principal The principal.
#' @param nextToken The token to retrieve the next set of results.
#' @param maxResults The maximum number of results to return in this operation.
#'
#' @examples
#'
#' @export
list_principal_things <- function (principal, nextToken = NULL, 
    maxResults = NULL) 
{
    op <- Operation(name = "ListPrincipalThings", http_method = "GET", 
        http_path = "/principals/things", paginator = list())
    input <- list_principal_things_input(principal = principal, 
        nextToken = nextToken, maxResults = maxResults)
    output <- list_principal_things_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the role aliases registered in your account
#'
#' Lists the role aliases registered in your account.
#'
#' @param pageSize The maximum number of results to return at one time.
#' @param marker A marker used to get the next set of results.
#' @param ascendingOrder Return the list of role aliases in ascending alphabetical order.
#'
#' @examples
#'
#' @export
list_role_aliases <- function (pageSize = NULL, marker = NULL, 
    ascendingOrder = NULL) 
{
    op <- Operation(name = "ListRoleAliases", http_method = "GET", 
        http_path = "/role-aliases", paginator = list())
    input <- list_role_aliases_input(pageSize = pageSize, marker = marker, 
        ascendingOrder = ascendingOrder)
    output <- list_role_aliases_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all of your scheduled audits
#'
#' Lists all of your scheduled audits.
#'
#' @param nextToken The token for the next set of results.
#' @param maxResults The maximum number of results to return at one time. The default is 25.
#'
#' @examples
#'
#' @export
list_scheduled_audits <- function (nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListScheduledAudits", http_method = "GET", 
        http_path = "/audit/scheduledaudits", paginator = list())
    input <- list_scheduled_audits_input(nextToken = nextToken, 
        maxResults = maxResults)
    output <- list_scheduled_audits_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the Device Defender security profiles you have created
#'
#' Lists the Device Defender security profiles you have created. You can use filters to list only those security profiles associated with a thing group or only those associated with your account.
#'
#' @param nextToken The token for the next set of results.
#' @param maxResults The maximum number of results to return at one time.
#'
#' @examples
#'
#' @export
list_security_profiles <- function (nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListSecurityProfiles", http_method = "GET", 
        http_path = "/security-profiles", paginator = list())
    input <- list_security_profiles_input(nextToken = nextToken, 
        maxResults = maxResults)
    output <- list_security_profiles_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the Device Defender security profiles attached to a target (thing group)
#'
#' Lists the Device Defender security profiles attached to a target (thing group).
#'
#' @param securityProfileTargetArn The ARN of the target (thing group) whose attached security profiles you want to get.
#' @param nextToken The token for the next set of results.
#' @param maxResults The maximum number of results to return at one time.
#' @param recursive If true, return child groups as well.
#'
#' @examples
#'
#' @export
list_security_profiles_for_target <- function (securityProfileTargetArn, 
    nextToken = NULL, maxResults = NULL, recursive = NULL) 
{
    op <- Operation(name = "ListSecurityProfilesForTarget", http_method = "GET", 
        http_path = "/security-profiles-for-target", paginator = list())
    input <- list_security_profiles_for_target_input(securityProfileTargetArn = securityProfileTargetArn, 
        nextToken = nextToken, maxResults = maxResults, recursive = recursive)
    output <- list_security_profiles_for_target_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all of the streams in your AWS account
#'
#' Lists all of the streams in your AWS account.
#'
#' @param maxResults The maximum number of results to return at a time.
#' @param nextToken A token used to get the next set of results.
#' @param ascendingOrder Set to true to return the list of streams in ascending order.
#'
#' @examples
#'
#' @export
list_streams <- function (maxResults = NULL, nextToken = NULL, 
    ascendingOrder = NULL) 
{
    op <- Operation(name = "ListStreams", http_method = "GET", 
        http_path = "/streams", paginator = list())
    input <- list_streams_input(maxResults = maxResults, nextToken = nextToken, 
        ascendingOrder = ascendingOrder)
    output <- list_streams_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' List targets for the specified policy
#'
#' List targets for the specified policy.
#'
#' @param policyName The policy name.
#' @param marker A marker used to get the next set of results.
#' @param pageSize The maximum number of results to return at one time.
#'
#' @examples
#'
#' @export
list_targets_for_policy <- function (policyName, marker = NULL, 
    pageSize = NULL) 
{
    op <- Operation(name = "ListTargetsForPolicy", http_method = "POST", 
        http_path = "/policy-targets/{policyName}", paginator = list())
    input <- list_targets_for_policy_input(policyName = policyName, 
        marker = marker, pageSize = pageSize)
    output <- list_targets_for_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the targets (thing groups) associated with a given Device Defender security profile
#'
#' Lists the targets (thing groups) associated with a given Device Defender security profile.
#'
#' @param securityProfileName The security profile.
#' @param nextToken The token for the next set of results.
#' @param maxResults The maximum number of results to return at one time.
#'
#' @examples
#'
#' @export
list_targets_for_security_profile <- function (securityProfileName, 
    nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListTargetsForSecurityProfile", http_method = "GET", 
        http_path = "/security-profiles/{securityProfileName}/targets", 
        paginator = list())
    input <- list_targets_for_security_profile_input(securityProfileName = securityProfileName, 
        nextToken = nextToken, maxResults = maxResults)
    output <- list_targets_for_security_profile_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' List the thing groups in your account
#'
#' List the thing groups in your account.
#'
#' @param nextToken The token to retrieve the next set of results.
#' @param maxResults The maximum number of results to return at one time.
#' @param parentGroup A filter that limits the results to those with the specified parent group.
#' @param namePrefixFilter A filter that limits the results to those with the specified name prefix.
#' @param recursive If true, return child groups as well.
#'
#' @examples
#'
#' @export
list_thing_groups <- function (nextToken = NULL, maxResults = NULL, 
    parentGroup = NULL, namePrefixFilter = NULL, recursive = NULL) 
{
    op <- Operation(name = "ListThingGroups", http_method = "GET", 
        http_path = "/thing-groups", paginator = list())
    input <- list_thing_groups_input(nextToken = nextToken, maxResults = maxResults, 
        parentGroup = parentGroup, namePrefixFilter = namePrefixFilter, 
        recursive = recursive)
    output <- list_thing_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' List the thing groups to which the specified thing belongs
#'
#' List the thing groups to which the specified thing belongs.
#'
#' @param thingName The thing name.
#' @param nextToken The token to retrieve the next set of results.
#' @param maxResults The maximum number of results to return at one time.
#'
#' @examples
#'
#' @export
list_thing_groups_for_thing <- function (thingName, nextToken = NULL, 
    maxResults = NULL) 
{
    op <- Operation(name = "ListThingGroupsForThing", http_method = "GET", 
        http_path = "/things/{thingName}/thing-groups", paginator = list())
    input <- list_thing_groups_for_thing_input(thingName = thingName, 
        nextToken = nextToken, maxResults = maxResults)
    output <- list_thing_groups_for_thing_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the principals associated with the specified thing
#'
#' Lists the principals associated with the specified thing.
#'
#' @param thingName The name of the thing.
#'
#' @examples
#'
#' @export
list_thing_principals <- function (thingName) 
{
    op <- Operation(name = "ListThingPrincipals", http_method = "GET", 
        http_path = "/things/{thingName}/principals", paginator = list())
    input <- list_thing_principals_input(thingName = thingName)
    output <- list_thing_principals_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Information about the thing registration tasks
#'
#' Information about the thing registration tasks.
#'
#' @param taskId The id of the task.
#' @param reportType The type of task report.
#' @param nextToken The token to retrieve the next set of results.
#' @param maxResults The maximum number of results to return per request.
#'
#' @examples
#'
#' @export
list_thing_registration_task_reports <- function (taskId, reportType, 
    nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListThingRegistrationTaskReports", 
        http_method = "GET", http_path = "/thing-registration-tasks/{taskId}/reports", 
        paginator = list())
    input <- list_thing_registration_task_reports_input(taskId = taskId, 
        reportType = reportType, nextToken = nextToken, maxResults = maxResults)
    output <- list_thing_registration_task_reports_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' List bulk thing provisioning tasks
#'
#' List bulk thing provisioning tasks.
#'
#' @param nextToken The token to retrieve the next set of results.
#' @param maxResults The maximum number of results to return at one time.
#' @param status The status of the bulk thing provisioning task.
#'
#' @examples
#'
#' @export
list_thing_registration_tasks <- function (nextToken = NULL, 
    maxResults = NULL, status = NULL) 
{
    op <- Operation(name = "ListThingRegistrationTasks", http_method = "GET", 
        http_path = "/thing-registration-tasks", paginator = list())
    input <- list_thing_registration_tasks_input(nextToken = nextToken, 
        maxResults = maxResults, status = status)
    output <- list_thing_registration_tasks_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the existing thing types
#'
#' Lists the existing thing types.
#'
#' @param nextToken The token to retrieve the next set of results.
#' @param maxResults The maximum number of results to return in this operation.
#' @param thingTypeName The name of the thing type.
#'
#' @examples
#'
#' @export
list_thing_types <- function (nextToken = NULL, maxResults = NULL, 
    thingTypeName = NULL) 
{
    op <- Operation(name = "ListThingTypes", http_method = "GET", 
        http_path = "/thing-types", paginator = list())
    input <- list_thing_types_input(nextToken = nextToken, maxResults = maxResults, 
        thingTypeName = thingTypeName)
    output <- list_thing_types_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists your things
#'
#' Lists your things. Use the **attributeName** and **attributeValue** parameters to filter your things. For example, calling `ListThings` with attributeName=Color and attributeValue=Red retrieves all things in the registry that contain an attribute **Color** with the value **Red**.
#'
#' @param nextToken The token to retrieve the next set of results.
#' @param maxResults The maximum number of results to return in this operation.
#' @param attributeName The attribute name used to search for things.
#' @param attributeValue The attribute value used to search for things.
#' @param thingTypeName The name of the thing type used to search for things.
#'
#' @examples
#'
#' @export
list_things <- function (nextToken = NULL, maxResults = NULL, 
    attributeName = NULL, attributeValue = NULL, thingTypeName = NULL) 
{
    op <- Operation(name = "ListThings", http_method = "GET", 
        http_path = "/things", paginator = list())
    input <- list_things_input(nextToken = nextToken, maxResults = maxResults, 
        attributeName = attributeName, attributeValue = attributeValue, 
        thingTypeName = thingTypeName)
    output <- list_things_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the things in the specified group
#'
#' Lists the things in the specified group.
#'
#' @param thingGroupName The thing group name.
#' @param recursive When true, list things in this thing group and in all child groups as well.
#' @param nextToken The token to retrieve the next set of results.
#' @param maxResults The maximum number of results to return at one time.
#'
#' @examples
#'
#' @export
list_things_in_thing_group <- function (thingGroupName, recursive = NULL, 
    nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListThingsInThingGroup", http_method = "GET", 
        http_path = "/thing-groups/{thingGroupName}/things", 
        paginator = list())
    input <- list_things_in_thing_group_input(thingGroupName = thingGroupName, 
        recursive = recursive, nextToken = nextToken, maxResults = maxResults)
    output <- list_things_in_thing_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the rules for the specific topic
#'
#' Lists the rules for the specific topic.
#'
#' @param topic The topic.
#' @param maxResults The maximum number of results to return.
#' @param nextToken A token used to retrieve the next value.
#' @param ruleDisabled Specifies whether the rule is disabled.
#'
#' @examples
#'
#' @export
list_topic_rules <- function (topic = NULL, maxResults = NULL, 
    nextToken = NULL, ruleDisabled = NULL) 
{
    op <- Operation(name = "ListTopicRules", http_method = "GET", 
        http_path = "/rules", paginator = list())
    input <- list_topic_rules_input(topic = topic, maxResults = maxResults, 
        nextToken = nextToken, ruleDisabled = ruleDisabled)
    output <- list_topic_rules_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists logging levels
#'
#' Lists logging levels.
#'
#' @param targetType The type of resource for which you are configuring logging. Must be `THING_Group`.
#' @param nextToken The token used to get the next set of results, or **null** if there are no additional results.
#' @param maxResults The maximum number of results to return at one time.
#'
#' @examples
#'
#' @export
list_v2_logging_levels <- function (targetType = NULL, nextToken = NULL, 
    maxResults = NULL) 
{
    op <- Operation(name = "ListV2LoggingLevels", http_method = "GET", 
        http_path = "/v2LoggingLevel", paginator = list())
    input <- list_v2_logging_levels_input(targetType = targetType, 
        nextToken = nextToken, maxResults = maxResults)
    output <- list_v2_logging_levels_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the Device Defender security profile violations discovered during the given time period
#'
#' Lists the Device Defender security profile violations discovered during the given time period. You can use filters to limit the results to those alerts issued for a particular security profile, behavior or thing (device).
#'
#' @param startTime The start time for the alerts to be listed.
#' @param endTime The end time for the alerts to be listed.
#' @param thingName A filter to limit results to those alerts caused by the specified thing.
#' @param securityProfileName A filter to limit results to those alerts generated by the specified security profile.
#' @param nextToken The token for the next set of results.
#' @param maxResults The maximum number of results to return at one time.
#'
#' @examples
#'
#' @export
list_violation_events <- function (startTime, endTime, thingName = NULL, 
    securityProfileName = NULL, nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListViolationEvents", http_method = "GET", 
        http_path = "/violation-events", paginator = list())
    input <- list_violation_events_input(startTime = startTime, 
        endTime = endTime, thingName = thingName, securityProfileName = securityProfileName, 
        nextToken = nextToken, maxResults = maxResults)
    output <- list_violation_events_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Registers a CA certificate with AWS IoT
#'
#' Registers a CA certificate with AWS IoT. This CA certificate can then be used to sign device certificates, which can be then registered with AWS IoT. You can register up to 10 CA certificates per AWS account that have the same subject field. This enables you to have up to 10 certificate authorities sign your device certificates. If you have more than one CA certificate registered, make sure you pass the CA certificate when you register your device certificates with the RegisterCertificate API.
#'
#' @param caCertificate The CA certificate.
#' @param verificationCertificate The private key verification certificate.
#' @param setAsActive A boolean value that specifies if the CA certificate is set to active.
#' @param allowAutoRegistration Allows this CA certificate to be used for auto registration of device certificates.
#' @param registrationConfig Information about the registration configuration.
#'
#' @examples
#'
#' @export
register_ca_certificate <- function (caCertificate, verificationCertificate, 
    setAsActive = NULL, allowAutoRegistration = NULL, registrationConfig = NULL) 
{
    op <- Operation(name = "RegisterCACertificate", http_method = "POST", 
        http_path = "/cacertificate", paginator = list())
    input <- register_ca_certificate_input(caCertificate = caCertificate, 
        verificationCertificate = verificationCertificate, setAsActive = setAsActive, 
        allowAutoRegistration = allowAutoRegistration, registrationConfig = registrationConfig)
    output <- register_ca_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Registers a device certificate with AWS IoT
#'
#' Registers a device certificate with AWS IoT. If you have more than one CA certificate that has the same subject field, you must specify the CA certificate that was used to sign the device certificate being registered.
#'
#' @param certificatePem The certificate data, in PEM format.
#' @param caCertificatePem The CA certificate used to sign the device certificate being registered.
#' @param setAsActive A boolean value that specifies if the CA certificate is set to active.
#' @param status The status of the register certificate request.
#'
#' @examples
#'
#' @export
register_certificate <- function (certificatePem, caCertificatePem = NULL, 
    setAsActive = NULL, status = NULL) 
{
    op <- Operation(name = "RegisterCertificate", http_method = "POST", 
        http_path = "/certificate/register", paginator = list())
    input <- register_certificate_input(certificatePem = certificatePem, 
        caCertificatePem = caCertificatePem, setAsActive = setAsActive, 
        status = status)
    output <- register_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provisions a thing
#'
#' Provisions a thing.
#'
#' @param templateBody The provisioning template. See [Programmatic Provisioning](http://docs.aws.amazon.com/iot/latest/developerguide/programmatic-provisioning.html) for more information.
#' @param parameters The parameters for provisioning a thing. See [Programmatic Provisioning](http://docs.aws.amazon.com/iot/latest/developerguide/programmatic-provisioning.html) for more information.
#'
#' @examples
#'
#' @export
register_thing <- function (templateBody, parameters = NULL) 
{
    op <- Operation(name = "RegisterThing", http_method = "POST", 
        http_path = "/things", paginator = list())
    input <- register_thing_input(templateBody = templateBody, 
        parameters = parameters)
    output <- register_thing_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Rejects a pending certificate transfer
#'
#' Rejects a pending certificate transfer. After AWS IoT rejects a certificate transfer, the certificate status changes from **PENDING\_TRANSFER** to **INACTIVE**.
#' 
#' To check for pending certificate transfers, call ListCertificates to enumerate your certificates.
#' 
#' This operation can only be called by the transfer destination. After it is called, the certificate will be returned to the source\'s account in the INACTIVE state.
#'
#' @param certificateId The ID of the certificate. (The last part of the certificate ARN contains the certificate ID.)
#' @param rejectReason The reason the certificate transfer was rejected.
#'
#' @examples
#'
#' @export
reject_certificate_transfer <- function (certificateId, rejectReason = NULL) 
{
    op <- Operation(name = "RejectCertificateTransfer", http_method = "PATCH", 
        http_path = "/reject-certificate-transfer/{certificateId}", 
        paginator = list())
    input <- reject_certificate_transfer_input(certificateId = certificateId, 
        rejectReason = rejectReason)
    output <- reject_certificate_transfer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Remove the specified thing from the specified group
#'
#' Remove the specified thing from the specified group.
#'
#' @param thingGroupName The group name.
#' @param thingGroupArn The group ARN.
#' @param thingName The name of the thing to remove from the group.
#' @param thingArn The ARN of the thing to remove from the group.
#'
#' @examples
#'
#' @export
remove_thing_from_thing_group <- function (thingGroupName = NULL, 
    thingGroupArn = NULL, thingName = NULL, thingArn = NULL) 
{
    op <- Operation(name = "RemoveThingFromThingGroup", http_method = "PUT", 
        http_path = "/thing-groups/removeThingFromThingGroup", 
        paginator = list())
    input <- remove_thing_from_thing_group_input(thingGroupName = thingGroupName, 
        thingGroupArn = thingGroupArn, thingName = thingName, 
        thingArn = thingArn)
    output <- remove_thing_from_thing_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Replaces the rule
#'
#' Replaces the rule. You must specify all parameters for the new rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.
#'
#' @param ruleName The name of the rule.
#' @param topicRulePayload The rule payload.
#'
#' @examples
#'
#' @export
replace_topic_rule <- function (ruleName, topicRulePayload) 
{
    op <- Operation(name = "ReplaceTopicRule", http_method = "PATCH", 
        http_path = "/rules/{ruleName}", paginator = list())
    input <- replace_topic_rule_input(ruleName = ruleName, topicRulePayload = topicRulePayload)
    output <- replace_topic_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' The query search index
#'
#' The query search index.
#'
#' @param queryString The search query string.
#' @param indexName The search index name.
#' @param nextToken The token used to get the next set of results, or **null** if there are no additional results.
#' @param maxResults The maximum number of results to return at one time.
#' @param queryVersion The query version.
#'
#' @examples
#'
#' @export
search_index <- function (queryString, indexName = NULL, nextToken = NULL, 
    maxResults = NULL, queryVersion = NULL) 
{
    op <- Operation(name = "SearchIndex", http_method = "POST", 
        http_path = "/indices/search", paginator = list())
    input <- search_index_input(queryString = queryString, indexName = indexName, 
        nextToken = nextToken, maxResults = maxResults, queryVersion = queryVersion)
    output <- search_index_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the default authorizer
#'
#' Sets the default authorizer. This will be used if a websocket connection is made without specifying an authorizer.
#'
#' @param authorizerName The authorizer name.
#'
#' @examples
#'
#' @export
set_default_authorizer <- function (authorizerName) 
{
    op <- Operation(name = "SetDefaultAuthorizer", http_method = "POST", 
        http_path = "/default-authorizer", paginator = list())
    input <- set_default_authorizer_input(authorizerName = authorizerName)
    output <- set_default_authorizer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the specified version of the specified policy as the policy\'s default (operative) version
#'
#' Sets the specified version of the specified policy as the policy\'s default (operative) version. This action affects all certificates to which the policy is attached. To list the principals the policy is attached to, use the ListPrincipalPolicy API.
#'
#' @param policyName The policy name.
#' @param policyVersionId The policy version ID.
#'
#' @examples
#'
#' @export
set_default_policy_version <- function (policyName, policyVersionId) 
{
    op <- Operation(name = "SetDefaultPolicyVersion", http_method = "PATCH", 
        http_path = "/policies/{policyName}/version/{policyVersionId}", 
        paginator = list())
    input <- set_default_policy_version_input(policyName = policyName, 
        policyVersionId = policyVersionId)
    output <- set_default_policy_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the logging options
#'
#' Sets the logging options.
#' 
#' NOTE: use of this command is not recommended. Use `SetV2LoggingOptions` instead.
#'
#' @param loggingOptionsPayload The logging options payload.
#'
#' @examples
#'
#' @export
set_logging_options <- function (loggingOptionsPayload) 
{
    op <- Operation(name = "SetLoggingOptions", http_method = "POST", 
        http_path = "/loggingOptions", paginator = list())
    input <- set_logging_options_input(loggingOptionsPayload = loggingOptionsPayload)
    output <- set_logging_options_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the logging level
#'
#' Sets the logging level.
#'
#' @param logTarget The log target.
#' @param logLevel The log level.
#'
#' @examples
#'
#' @export
set_v2_logging_level <- function (logTarget, logLevel) 
{
    op <- Operation(name = "SetV2LoggingLevel", http_method = "POST", 
        http_path = "/v2LoggingLevel", paginator = list())
    input <- set_v2_logging_level_input(logTarget = logTarget, 
        logLevel = logLevel)
    output <- set_v2_logging_level_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the logging options for the V2 logging service
#'
#' Sets the logging options for the V2 logging service.
#'
#' @param roleArn The ARN of the role that allows IoT to write to Cloudwatch logs.
#' @param defaultLogLevel The default logging level.
#' @param disableAllLogs If true all logs are disabled. The default is false.
#'
#' @examples
#'
#' @export
set_v2_logging_options <- function (roleArn = NULL, defaultLogLevel = NULL, 
    disableAllLogs = NULL) 
{
    op <- Operation(name = "SetV2LoggingOptions", http_method = "POST", 
        http_path = "/v2LoggingOptions", paginator = list())
    input <- set_v2_logging_options_input(roleArn = roleArn, 
        defaultLogLevel = defaultLogLevel, disableAllLogs = disableAllLogs)
    output <- set_v2_logging_options_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts an on-demand Device Defender audit
#'
#' Starts an on-demand Device Defender audit.
#'
#' @param targetCheckNames Which checks are performed during the audit. The checks you specify must be enabled for your account or an exception occurs. Use `DescribeAccountAuditConfiguration` to see the list of all checks including those that are enabled or `UpdateAccountAuditConfiguration` to select which checks are enabled.
#'
#' @examples
#'
#' @export
start_on_demand_audit_task <- function (targetCheckNames) 
{
    op <- Operation(name = "StartOnDemandAuditTask", http_method = "POST", 
        http_path = "/audit/tasks", paginator = list())
    input <- start_on_demand_audit_task_input(targetCheckNames = targetCheckNames)
    output <- start_on_demand_audit_task_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a bulk thing provisioning task
#'
#' Creates a bulk thing provisioning task.
#'
#' @param templateBody The provisioning template.
#' @param inputFileBucket The S3 bucket that contains the input file.
#' @param inputFileKey The name of input file within the S3 bucket. This file contains a newline delimited JSON file. Each line contains the parameter values to provision one device (thing).
#' @param roleArn The IAM role ARN that grants permission the input file.
#'
#' @examples
#'
#' @export
start_thing_registration_task <- function (templateBody, inputFileBucket, 
    inputFileKey, roleArn) 
{
    op <- Operation(name = "StartThingRegistrationTask", http_method = "POST", 
        http_path = "/thing-registration-tasks", paginator = list())
    input <- start_thing_registration_task_input(templateBody = templateBody, 
        inputFileBucket = inputFileBucket, inputFileKey = inputFileKey, 
        roleArn = roleArn)
    output <- start_thing_registration_task_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Cancels a bulk thing provisioning task
#'
#' Cancels a bulk thing provisioning task.
#'
#' @param taskId The bulk thing provisioning task ID.
#'
#' @examples
#'
#' @export
stop_thing_registration_task <- function (taskId) 
{
    op <- Operation(name = "StopThingRegistrationTask", http_method = "PUT", 
        http_path = "/thing-registration-tasks/{taskId}/cancel", 
        paginator = list())
    input <- stop_thing_registration_task_input(taskId = taskId)
    output <- stop_thing_registration_task_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Tests if a specified principal is authorized to perform an AWS IoT action on a specified resource
#'
#' Tests if a specified principal is authorized to perform an AWS IoT action on a specified resource. Use this to test and debug the authorization behavior of devices that connect to the AWS IoT device gateway.
#'
#' @param authInfos A list of authorization info objects. Simulating authorization will create a response for each `authInfo` object in the list.
#' @param principal The principal.
#' @param cognitoIdentityPoolId The Cognito identity pool ID.
#' @param clientId The MQTT client ID.
#' @param policyNamesToAdd When testing custom authorization, the policies specified here are treated as if they are attached to the principal being authorized.
#' @param policyNamesToSkip When testing custom authorization, the policies specified here are treated as if they are not attached to the principal being authorized.
#'
#' @examples
#'
#' @export
test_authorization <- function (authInfos, principal = NULL, 
    cognitoIdentityPoolId = NULL, clientId = NULL, policyNamesToAdd = NULL, 
    policyNamesToSkip = NULL) 
{
    op <- Operation(name = "TestAuthorization", http_method = "POST", 
        http_path = "/test-authorization", paginator = list())
    input <- test_authorization_input(authInfos = authInfos, 
        principal = principal, cognitoIdentityPoolId = cognitoIdentityPoolId, 
        clientId = clientId, policyNamesToAdd = policyNamesToAdd, 
        policyNamesToSkip = policyNamesToSkip)
    output <- test_authorization_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Tests a custom authorization behavior by invoking a specified custom authorizer
#'
#' Tests a custom authorization behavior by invoking a specified custom authorizer. Use this to test and debug the custom authorization behavior of devices that connect to the AWS IoT device gateway.
#'
#' @param authorizerName The custom authorizer name.
#' @param token The token returned by your custom authentication service.
#' @param tokenSignature The signature made with the token and your custom authentication service\'s private key.
#'
#' @examples
#'
#' @export
test_invoke_authorizer <- function (authorizerName, token, tokenSignature) 
{
    op <- Operation(name = "TestInvokeAuthorizer", http_method = "POST", 
        http_path = "/authorizer/{authorizerName}/test", paginator = list())
    input <- test_invoke_authorizer_input(authorizerName = authorizerName, 
        token = token, tokenSignature = tokenSignature)
    output <- test_invoke_authorizer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Transfers the specified certificate to the specified AWS account
#'
#' Transfers the specified certificate to the specified AWS account.
#' 
#' You can cancel the transfer until it is acknowledged by the recipient.
#' 
#' No notification is sent to the transfer destination\'s account. It is up to the caller to notify the transfer target.
#' 
#' The certificate being transferred must not be in the ACTIVE state. You can use the UpdateCertificate API to deactivate it.
#' 
#' The certificate must not have any policies attached to it. You can use the DetachPrincipalPolicy API to detach them.
#'
#' @param certificateId The ID of the certificate. (The last part of the certificate ARN contains the certificate ID.)
#' @param targetAwsAccount The AWS account.
#' @param transferMessage The transfer message.
#'
#' @examples
#'
#' @export
transfer_certificate <- function (certificateId, targetAwsAccount, 
    transferMessage = NULL) 
{
    op <- Operation(name = "TransferCertificate", http_method = "PATCH", 
        http_path = "/transfer-certificate/{certificateId}", 
        paginator = list())
    input <- transfer_certificate_input(certificateId = certificateId, 
        targetAwsAccount = targetAwsAccount, transferMessage = transferMessage)
    output <- transfer_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Configures or reconfigures the Device Defender audit settings for this account
#'
#' Configures or reconfigures the Device Defender audit settings for this account. Settings include how audit notifications are sent and which audit checks are enabled or disabled.
#'
#' @param roleArn The ARN of the role that grants permission to AWS IoT to access information about your devices, policies, certificates and other items as necessary when performing an audit.
#' @param auditNotificationTargetConfigurations Information about the targets to which audit notifications are sent.
#' @param auditCheckConfigurations Specifies which audit checks are enabled and disabled for this account. Use `DescribeAccountAuditConfiguration` to see the list of all checks including those that are currently enabled.
#' 
#' Note that some data collection may begin immediately when certain checks are enabled. When a check is disabled, any data collected so far in relation to the check is deleted.
#' 
#' You cannot disable a check if it is used by any scheduled audit. You must first delete the check from the scheduled audit or delete the scheduled audit itself.
#' 
#' On the first call to `UpdateAccountAuditConfiguration` this parameter is required and must specify at least one enabled check.
#'
#' @examples
#'
#' @export
update_account_audit_configuration <- function (roleArn = NULL, 
    auditNotificationTargetConfigurations = NULL, auditCheckConfigurations = NULL) 
{
    op <- Operation(name = "UpdateAccountAuditConfiguration", 
        http_method = "PATCH", http_path = "/audit/configuration", 
        paginator = list())
    input <- update_account_audit_configuration_input(roleArn = roleArn, 
        auditNotificationTargetConfigurations = auditNotificationTargetConfigurations, 
        auditCheckConfigurations = auditCheckConfigurations)
    output <- update_account_audit_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates an authorizer
#'
#' Updates an authorizer.
#'
#' @param authorizerName The authorizer name.
#' @param authorizerFunctionArn The ARN of the authorizer\'s Lambda function.
#' @param tokenKeyName The key used to extract the token from the HTTP headers.
#' @param tokenSigningPublicKeys The public keys used to verify the token signature.
#' @param status The status of the update authorizer request.
#'
#' @examples
#'
#' @export
update_authorizer <- function (authorizerName, authorizerFunctionArn = NULL, 
    tokenKeyName = NULL, tokenSigningPublicKeys = NULL, status = NULL) 
{
    op <- Operation(name = "UpdateAuthorizer", http_method = "PUT", 
        http_path = "/authorizer/{authorizerName}", paginator = list())
    input <- update_authorizer_input(authorizerName = authorizerName, 
        authorizerFunctionArn = authorizerFunctionArn, tokenKeyName = tokenKeyName, 
        tokenSigningPublicKeys = tokenSigningPublicKeys, status = status)
    output <- update_authorizer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a registered CA certificate
#'
#' Updates a registered CA certificate.
#'
#' @param certificateId The CA certificate identifier.
#' @param newStatus The updated status of the CA certificate.
#' 
#' **Note:** The status value REGISTER\_INACTIVE is deprecated and should not be used.
#' @param newAutoRegistrationStatus The new value for the auto registration status. Valid values are: \"ENABLE\" or \"DISABLE\".
#' @param registrationConfig Information about the registration configuration.
#' @param removeAutoRegistration If true, remove auto registration.
#'
#' @examples
#'
#' @export
update_ca_certificate <- function (certificateId, newStatus = NULL, 
    newAutoRegistrationStatus = NULL, registrationConfig = NULL, 
    removeAutoRegistration = NULL) 
{
    op <- Operation(name = "UpdateCACertificate", http_method = "PUT", 
        http_path = "/cacertificate/{caCertificateId}", paginator = list())
    input <- update_ca_certificate_input(certificateId = certificateId, 
        newStatus = newStatus, newAutoRegistrationStatus = newAutoRegistrationStatus, 
        registrationConfig = registrationConfig, removeAutoRegistration = removeAutoRegistration)
    output <- update_ca_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the status of the specified certificate
#'
#' Updates the status of the specified certificate. This operation is idempotent.
#' 
#' Moving a certificate from the ACTIVE state (including REVOKED) will not disconnect currently connected devices, but these devices will be unable to reconnect.
#' 
#' The ACTIVE state is required to authenticate devices connecting to AWS IoT using a certificate.
#'
#' @param certificateId The ID of the certificate. (The last part of the certificate ARN contains the certificate ID.)
#' @param newStatus The new status.
#' 
#' **Note:** Setting the status to PENDING\_TRANSFER will result in an exception being thrown. PENDING\_TRANSFER is a status used internally by AWS IoT. It is not intended for developer use.
#' 
#' **Note:** The status value REGISTER\_INACTIVE is deprecated and should not be used.
#'
#' @examples
#'
#' @export
update_certificate <- function (certificateId, newStatus) 
{
    op <- Operation(name = "UpdateCertificate", http_method = "PUT", 
        http_path = "/certificates/{certificateId}", paginator = list())
    input <- update_certificate_input(certificateId = certificateId, 
        newStatus = newStatus)
    output <- update_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the event configurations
#'
#' Updates the event configurations.
#'
#' @param eventConfigurations The new event configuration values.
#'
#' @examples
#'
#' @export
update_event_configurations <- function (eventConfigurations = NULL) 
{
    op <- Operation(name = "UpdateEventConfigurations", http_method = "PATCH", 
        http_path = "/event-configurations", paginator = list())
    input <- update_event_configurations_input(eventConfigurations = eventConfigurations)
    output <- update_event_configurations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the search configuration
#'
#' Updates the search configuration.
#'
#' @param thingIndexingConfiguration Thing indexing configuration.
#' @param thingGroupIndexingConfiguration Thing group indexing configuration.
#'
#' @examples
#'
#' @export
update_indexing_configuration <- function (thingIndexingConfiguration = NULL, 
    thingGroupIndexingConfiguration = NULL) 
{
    op <- Operation(name = "UpdateIndexingConfiguration", http_method = "POST", 
        http_path = "/indexing/config", paginator = list())
    input <- update_indexing_configuration_input(thingIndexingConfiguration = thingIndexingConfiguration, 
        thingGroupIndexingConfiguration = thingGroupIndexingConfiguration)
    output <- update_indexing_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a role alias
#'
#' Updates a role alias.
#'
#' @param roleAlias The role alias to update.
#' @param roleArn The role ARN.
#' @param credentialDurationSeconds The number of seconds the credential will be valid.
#'
#' @examples
#'
#' @export
update_role_alias <- function (roleAlias, roleArn = NULL, credentialDurationSeconds = NULL) 
{
    op <- Operation(name = "UpdateRoleAlias", http_method = "PUT", 
        http_path = "/role-aliases/{roleAlias}", paginator = list())
    input <- update_role_alias_input(roleAlias = roleAlias, roleArn = roleArn, 
        credentialDurationSeconds = credentialDurationSeconds)
    output <- update_role_alias_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a scheduled audit, including what checks are performed and how often the audit takes place
#'
#' Updates a scheduled audit, including what checks are performed and how often the audit takes place.
#'
#' @param scheduledAuditName The name of the scheduled audit. (Max. 128 chars)
#' @param frequency How often the scheduled audit takes place. Can be one of \"DAILY\", \"WEEKLY\", \"BIWEEKLY\" or \"MONTHLY\". The actual start time of each audit is determined by the system.
#' @param dayOfMonth The day of the month on which the scheduled audit takes place. Can be \"1\" through \"31\" or \"LAST\". This field is required if the \"frequency\" parameter is set to \"MONTHLY\". If days 29-31 are specified, and the month does not have that many days, the audit takes place on the \"LAST\" day of the month.
#' @param dayOfWeek The day of the week on which the scheduled audit takes place. Can be one of \"SUN\", \"MON\", \"TUE\", \"WED\", \"THU\", \"FRI\" or \"SAT\". This field is required if the \"frequency\" parameter is set to \"WEEKLY\" or \"BIWEEKLY\".
#' @param targetCheckNames Which checks are performed during the scheduled audit. Checks must be enabled for your account. (Use `DescribeAccountAuditConfiguration` to see the list of all checks including those that are enabled or `UpdateAccountAuditConfiguration` to select which checks are enabled.)
#'
#' @examples
#'
#' @export
update_scheduled_audit <- function (scheduledAuditName, frequency = NULL, 
    dayOfMonth = NULL, dayOfWeek = NULL, targetCheckNames = NULL) 
{
    op <- Operation(name = "UpdateScheduledAudit", http_method = "PATCH", 
        http_path = "/audit/scheduledaudits/{scheduledAuditName}", 
        paginator = list())
    input <- update_scheduled_audit_input(scheduledAuditName = scheduledAuditName, 
        frequency = frequency, dayOfMonth = dayOfMonth, dayOfWeek = dayOfWeek, 
        targetCheckNames = targetCheckNames)
    output <- update_scheduled_audit_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a Device Defender security profile
#'
#' Updates a Device Defender security profile.
#'
#' @param securityProfileName The name of the security profile you want to update.
#' @param securityProfileDescription A description of the security profile.
#' @param behaviors Specifies the behaviors that, when violated by a device (thing), cause an alert.
#' @param alertTargets Where the alerts are sent. (Alerts are always sent to the console.)
#' @param expectedVersion The expected version of the security profile. A new version is generated whenever the security profile is updated. If you specify a value that is different than the actual version, a `VersionConflictException` is thrown.
#'
#' @examples
#'
#' @export
update_security_profile <- function (securityProfileName, securityProfileDescription = NULL, 
    behaviors = NULL, alertTargets = NULL, expectedVersion = NULL) 
{
    op <- Operation(name = "UpdateSecurityProfile", http_method = "PATCH", 
        http_path = "/security-profiles/{securityProfileName}", 
        paginator = list())
    input <- update_security_profile_input(securityProfileName = securityProfileName, 
        securityProfileDescription = securityProfileDescription, 
        behaviors = behaviors, alertTargets = alertTargets, expectedVersion = expectedVersion)
    output <- update_security_profile_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates an existing stream
#'
#' Updates an existing stream. The stream version will be incremented by one.
#'
#' @param streamId The stream ID.
#' @param description The description of the stream.
#' @param files The files associated with the stream.
#' @param roleArn An IAM role that allows the IoT service principal assumes to access your S3 files.
#'
#' @examples
#'
#' @export
update_stream <- function (streamId, description = NULL, files = NULL, 
    roleArn = NULL) 
{
    op <- Operation(name = "UpdateStream", http_method = "PUT", 
        http_path = "/streams/{streamId}", paginator = list())
    input <- update_stream_input(streamId = streamId, description = description, 
        files = files, roleArn = roleArn)
    output <- update_stream_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the data for a thing
#'
#' Updates the data for a thing.
#'
#' @param thingName The name of the thing to update.
#' @param thingTypeName The name of the thing type.
#' @param attributePayload A list of thing attributes, a JSON string containing name-value pairs. For example:
#' 
#' `{\"attributes\":{\"name1\":\"value2\"}}`
#' 
#' This data is used to add new attributes or update existing attributes.
#' @param expectedVersion The expected version of the thing record in the registry. If the version of the record in the registry does not match the expected version specified in the request, the `UpdateThing` request is rejected with a `VersionConflictException`.
#' @param removeThingType Remove a thing type association. If **true**, the association is removed.
#'
#' @examples
#'
#' @export
update_thing <- function (thingName, thingTypeName = NULL, attributePayload = NULL, 
    expectedVersion = NULL, removeThingType = NULL) 
{
    op <- Operation(name = "UpdateThing", http_method = "PATCH", 
        http_path = "/things/{thingName}", paginator = list())
    input <- update_thing_input(thingName = thingName, thingTypeName = thingTypeName, 
        attributePayload = attributePayload, expectedVersion = expectedVersion, 
        removeThingType = removeThingType)
    output <- update_thing_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Update a thing group
#'
#' Update a thing group.
#'
#' @param thingGroupName The thing group to update.
#' @param thingGroupProperties The thing group properties.
#' @param expectedVersion The expected version of the thing group. If this does not match the version of the thing group being updated, the update will fail.
#'
#' @examples
#'
#' @export
update_thing_group <- function (thingGroupName, thingGroupProperties, 
    expectedVersion = NULL) 
{
    op <- Operation(name = "UpdateThingGroup", http_method = "PATCH", 
        http_path = "/thing-groups/{thingGroupName}", paginator = list())
    input <- update_thing_group_input(thingGroupName = thingGroupName, 
        thingGroupProperties = thingGroupProperties, expectedVersion = expectedVersion)
    output <- update_thing_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the groups to which the thing belongs
#'
#' Updates the groups to which the thing belongs.
#'
#' @param thingName The thing whose group memberships will be updated.
#' @param thingGroupsToAdd The groups to which the thing will be added.
#' @param thingGroupsToRemove The groups from which the thing will be removed.
#'
#' @examples
#'
#' @export
update_thing_groups_for_thing <- function (thingName = NULL, 
    thingGroupsToAdd = NULL, thingGroupsToRemove = NULL) 
{
    op <- Operation(name = "UpdateThingGroupsForThing", http_method = "PUT", 
        http_path = "/thing-groups/updateThingGroupsForThing", 
        paginator = list())
    input <- update_thing_groups_for_thing_input(thingName = thingName, 
        thingGroupsToAdd = thingGroupsToAdd, thingGroupsToRemove = thingGroupsToRemove)
    output <- update_thing_groups_for_thing_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Validates a Device Defender security profile behaviors specification
#'
#' Validates a Device Defender security profile behaviors specification.
#'
#' @param behaviors Specifies the behaviors that, when violated by a device (thing), cause an alert.
#'
#' @examples
#'
#' @export
validate_security_profile_behaviors <- function (behaviors) 
{
    op <- Operation(name = "ValidateSecurityProfileBehaviors", 
        http_method = "POST", http_path = "/security-profile-behaviors/validate", 
        paginator = list())
    input <- validate_security_profile_behaviors_input(behaviors = behaviors)
    output <- validate_security_profile_behaviors_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
