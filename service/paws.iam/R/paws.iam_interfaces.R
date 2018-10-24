add_client_id_to_open_id_connect_provider_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OpenIDConnectProviderArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L), 
        ClientID = structure(logical(0), shape = "clientIDType", 
            type = "string", max = 255L, min = 1L)), shape = "AddClientIDToOpenIDConnectProviderRequest", 
        type = "structure")
    return(populate(args, shape))
}

add_client_id_to_open_id_connect_provider_output <- function () 
{
    return(list())
}

add_role_to_instance_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceProfileName = structure(logical(0), 
        shape = "instanceProfileNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+")), shape = "AddRoleToInstanceProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

add_role_to_instance_profile_output <- function () 
{
    return(list())
}

add_user_to_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "groupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+")), shape = "AddUserToGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

add_user_to_group_output <- function () 
{
    return(list())
}

attach_group_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "groupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "AttachGroupPolicyRequest", type = "structure")
    return(populate(args, shape))
}

attach_group_policy_output <- function () 
{
    return(list())
}

attach_role_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), PolicyArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "AttachRolePolicyRequest", type = "structure")
    return(populate(args, shape))
}

attach_role_policy_output <- function () 
{
    return(list())
}

attach_user_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), PolicyArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "AttachUserPolicyRequest", type = "structure")
    return(populate(args, shape))
}

attach_user_policy_output <- function () 
{
    return(list())
}

change_password_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OldPassword = structure(logical(0), 
        shape = "passwordType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+", 
        sensitive = TRUE), NewPassword = structure(logical(0), 
        shape = "passwordType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+", 
        sensitive = TRUE)), shape = "ChangePasswordRequest", 
        type = "structure")
    return(populate(args, shape))
}

change_password_output <- function () 
{
    return(list())
}

create_access_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+")), shape = "CreateAccessKeyRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_access_key_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccessKey = structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), AccessKeyId = structure(logical(0), 
        shape = "accessKeyIdType", type = "string", max = 128L, 
        min = 16L, pattern = "[\\w]+"), Status = structure(logical(0), 
        shape = "statusType", type = "string"), SecretAccessKey = structure(logical(0), 
        shape = "accessKeySecretType", type = "string", sensitive = TRUE), 
        CreateDate = structure(logical(0), shape = "dateType", 
            type = "timestamp")), shape = "AccessKey", type = "structure")), 
        shape = "CreateAccessKeyResponse", type = "structure")
    return(populate(args, shape))
}

create_account_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountAlias = structure(logical(0), 
        shape = "accountAliasType", type = "string", max = 63L, 
        min = 3L, pattern = "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$")), 
        shape = "CreateAccountAliasRequest", type = "structure")
    return(populate(args, shape))
}

create_account_alias_output <- function () 
{
    return(list())
}

create_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Path = structure(logical(0), shape = "pathType", 
        type = "string", max = 512L, min = 1L, pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        GroupName = structure(logical(0), shape = "groupNameType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+")), 
        shape = "CreateGroupRequest", type = "structure")
    return(populate(args, shape))
}

create_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Group = structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        GroupName = structure(logical(0), shape = "groupNameType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        GroupId = structure(logical(0), shape = "idType", type = "string", 
            max = 128L, min = 16L, pattern = "[\\w]+"), Arn = structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L), CreateDate = structure(logical(0), shape = "dateType", 
            type = "timestamp")), shape = "Group", type = "structure")), 
        shape = "CreateGroupResponse", type = "structure")
    return(populate(args, shape))
}

create_instance_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceProfileName = structure(logical(0), 
        shape = "instanceProfileNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)")), 
        shape = "CreateInstanceProfileRequest", type = "structure")
    return(populate(args, shape))
}

create_instance_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceProfile = structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        InstanceProfileName = structure(logical(0), shape = "instanceProfileNameType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        InstanceProfileId = structure(logical(0), shape = "idType", 
            type = "string", max = 128L, min = 16L, pattern = "[\\w]+"), 
        Arn = structure(logical(0), shape = "arnType", type = "string", 
            max = 2048L, min = 20L), CreateDate = structure(logical(0), 
            shape = "dateType", type = "timestamp"), Roles = structure(list(structure(list(Path = structure(logical(0), 
            shape = "pathType", type = "string", max = 512L, 
            min = 1L, pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
            RoleName = structure(logical(0), shape = "roleNameType", 
                type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
            RoleId = structure(logical(0), shape = "idType", 
                type = "string", max = 128L, min = 16L, pattern = "[\\w]+"), 
            Arn = structure(logical(0), shape = "arnType", type = "string", 
                max = 2048L, min = 20L), CreateDate = structure(logical(0), 
                shape = "dateType", type = "timestamp"), AssumeRolePolicyDocument = structure(logical(0), 
                shape = "policyDocumentType", type = "string", 
                max = 131072L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
            Description = structure(logical(0), shape = "roleDescriptionType", 
                type = "string", max = 1000L, pattern = "[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*"), 
            MaxSessionDuration = structure(logical(0), shape = "roleMaxSessionDurationType", 
                type = "integer", max = 43200L, min = 3600L), 
            PermissionsBoundary = structure(list(PermissionsBoundaryType = structure(logical(0), 
                shape = "PermissionsBoundaryAttachmentType", 
                type = "string"), PermissionsBoundaryArn = structure(logical(0), 
                shape = "arnType", type = "string", max = 2048L, 
                min = 20L)), shape = "AttachedPermissionsBoundary", 
                type = "structure")), shape = "Role", type = "structure")), 
            shape = "roleListType", type = "list")), shape = "InstanceProfile", 
        type = "structure")), shape = "CreateInstanceProfileResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_login_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), Password = structure(logical(0), 
        shape = "passwordType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+", 
        sensitive = TRUE), PasswordResetRequired = structure(logical(0), 
        shape = "booleanType", type = "boolean")), shape = "CreateLoginProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_login_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoginProfile = structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), CreateDate = structure(logical(0), 
        shape = "dateType", type = "timestamp"), PasswordResetRequired = structure(logical(0), 
        shape = "booleanType", type = "boolean")), shape = "LoginProfile", 
        type = "structure")), shape = "CreateLoginProfileResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_open_id_connect_provider_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Url = structure(logical(0), shape = "OpenIDConnectProviderUrlType", 
        type = "string", max = 255L, min = 1L), ClientIDList = structure(list(structure(logical(0), 
        shape = "clientIDType", type = "string", max = 255L, 
        min = 1L)), shape = "clientIDListType", type = "list"), 
        ThumbprintList = structure(list(structure(logical(0), 
            shape = "thumbprintType", type = "string", max = 40L, 
            min = 40L)), shape = "thumbprintListType", type = "list")), 
        shape = "CreateOpenIDConnectProviderRequest", type = "structure")
    return(populate(args, shape))
}

create_open_id_connect_provider_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OpenIDConnectProviderArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "CreateOpenIDConnectProviderResponse", type = "structure")
    return(populate(args, shape))
}

create_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), Path = structure(logical(0), 
        shape = "policyPathType", type = "string", pattern = "((/[A-Za-z0-9\\.,\\+@=_-]+)*)/"), 
        PolicyDocument = structure(logical(0), shape = "policyDocumentType", 
            type = "string", max = 131072L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        Description = structure(logical(0), shape = "policyDescriptionType", 
            type = "string", max = 1000L)), shape = "CreatePolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policy = structure(list(PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyId = structure(logical(0), 
        shape = "idType", type = "string", max = 128L, min = 16L, 
        pattern = "[\\w]+"), Arn = structure(logical(0), shape = "arnType", 
        type = "string", max = 2048L, min = 20L), Path = structure(logical(0), 
        shape = "policyPathType", type = "string", pattern = "((/[A-Za-z0-9\\.,\\+@=_-]+)*)/"), 
        DefaultVersionId = structure(logical(0), shape = "policyVersionIdType", 
            type = "string", pattern = "v[1-9][0-9]*(\\.[A-Za-z0-9-]*)?"), 
        AttachmentCount = structure(logical(0), shape = "attachmentCountType", 
            type = "integer"), PermissionsBoundaryUsageCount = structure(logical(0), 
            shape = "attachmentCountType", type = "integer"), 
        IsAttachable = structure(logical(0), shape = "booleanType", 
            type = "boolean"), Description = structure(logical(0), 
            shape = "policyDescriptionType", type = "string", 
            max = 1000L), CreateDate = structure(logical(0), 
            shape = "dateType", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "dateType", type = "timestamp")), shape = "Policy", 
        type = "structure")), shape = "CreatePolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_policy_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L), 
        PolicyDocument = structure(logical(0), shape = "policyDocumentType", 
            type = "string", max = 131072L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        SetAsDefault = structure(logical(0), shape = "booleanType", 
            type = "boolean")), shape = "CreatePolicyVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_policy_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyVersion = structure(list(Document = structure(logical(0), 
        shape = "policyDocumentType", type = "string", max = 131072L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        VersionId = structure(logical(0), shape = "policyVersionIdType", 
            type = "string", pattern = "v[1-9][0-9]*(\\.[A-Za-z0-9-]*)?"), 
        IsDefaultVersion = structure(logical(0), shape = "booleanType", 
            type = "boolean"), CreateDate = structure(logical(0), 
            shape = "dateType", type = "timestamp")), shape = "PolicyVersion", 
        type = "structure")), shape = "CreatePolicyVersionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_role_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Path = structure(logical(0), shape = "pathType", 
        type = "string", max = 512L, min = 1L, pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        RoleName = structure(logical(0), shape = "roleNameType", 
            type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        AssumeRolePolicyDocument = structure(logical(0), shape = "policyDocumentType", 
            type = "string", max = 131072L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        Description = structure(logical(0), shape = "roleDescriptionType", 
            type = "string", max = 1000L, pattern = "[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*"), 
        MaxSessionDuration = structure(logical(0), shape = "roleMaxSessionDurationType", 
            type = "integer", max = 43200L, min = 3600L), PermissionsBoundary = structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L)), shape = "CreateRoleRequest", type = "structure")
    return(populate(args, shape))
}

create_role_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Role = structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        RoleName = structure(logical(0), shape = "roleNameType", 
            type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        RoleId = structure(logical(0), shape = "idType", type = "string", 
            max = 128L, min = 16L, pattern = "[\\w]+"), Arn = structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L), CreateDate = structure(logical(0), shape = "dateType", 
            type = "timestamp"), AssumeRolePolicyDocument = structure(logical(0), 
            shape = "policyDocumentType", type = "string", max = 131072L, 
            min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        Description = structure(logical(0), shape = "roleDescriptionType", 
            type = "string", max = 1000L, pattern = "[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*"), 
        MaxSessionDuration = structure(logical(0), shape = "roleMaxSessionDurationType", 
            type = "integer", max = 43200L, min = 3600L), PermissionsBoundary = structure(list(PermissionsBoundaryType = structure(logical(0), 
            shape = "PermissionsBoundaryAttachmentType", type = "string"), 
            PermissionsBoundaryArn = structure(logical(0), shape = "arnType", 
                type = "string", max = 2048L, min = 20L)), shape = "AttachedPermissionsBoundary", 
            type = "structure")), shape = "Role", type = "structure")), 
        shape = "CreateRoleResponse", type = "structure")
    return(populate(args, shape))
}

create_saml_provider_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SAMLMetadataDocument = structure(logical(0), 
        shape = "SAMLMetadataDocumentType", type = "string", 
        max = 10000000L, min = 1000L), Name = structure(logical(0), 
        shape = "SAMLProviderNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w._-]+")), shape = "CreateSAMLProviderRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_saml_provider_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SAMLProviderArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "CreateSAMLProviderResponse", type = "structure")
    return(populate(args, shape))
}

create_service_linked_role_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AWSServiceName = structure(logical(0), 
        shape = "groupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), Description = structure(logical(0), 
        shape = "roleDescriptionType", type = "string", max = 1000L, 
        pattern = "[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*"), 
        CustomSuffix = structure(logical(0), shape = "customSuffixType", 
            type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+")), 
        shape = "CreateServiceLinkedRoleRequest", type = "structure")
    return(populate(args, shape))
}

create_service_linked_role_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Role = structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        RoleName = structure(logical(0), shape = "roleNameType", 
            type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        RoleId = structure(logical(0), shape = "idType", type = "string", 
            max = 128L, min = 16L, pattern = "[\\w]+"), Arn = structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L), CreateDate = structure(logical(0), shape = "dateType", 
            type = "timestamp"), AssumeRolePolicyDocument = structure(logical(0), 
            shape = "policyDocumentType", type = "string", max = 131072L, 
            min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        Description = structure(logical(0), shape = "roleDescriptionType", 
            type = "string", max = 1000L, pattern = "[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*"), 
        MaxSessionDuration = structure(logical(0), shape = "roleMaxSessionDurationType", 
            type = "integer", max = 43200L, min = 3600L), PermissionsBoundary = structure(list(PermissionsBoundaryType = structure(logical(0), 
            shape = "PermissionsBoundaryAttachmentType", type = "string"), 
            PermissionsBoundaryArn = structure(logical(0), shape = "arnType", 
                type = "string", max = 2048L, min = 20L)), shape = "AttachedPermissionsBoundary", 
            type = "structure")), shape = "Role", type = "structure")), 
        shape = "CreateServiceLinkedRoleResponse", type = "structure")
    return(populate(args, shape))
}

create_service_specific_credential_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), ServiceName = structure(logical(0), 
        shape = "serviceName", type = "string")), shape = "CreateServiceSpecificCredentialRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_service_specific_credential_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceSpecificCredential = structure(list(CreateDate = structure(logical(0), 
        shape = "dateType", type = "timestamp"), ServiceName = structure(logical(0), 
        shape = "serviceName", type = "string"), ServiceUserName = structure(logical(0), 
        shape = "serviceUserName", type = "string", max = 200L, 
        min = 17L, pattern = "[\\w+=,.@-]+"), ServicePassword = structure(logical(0), 
        shape = "servicePassword", type = "string", sensitive = TRUE), 
        ServiceSpecificCredentialId = structure(logical(0), shape = "serviceSpecificCredentialId", 
            type = "string", max = 128L, min = 20L, pattern = "[\\w]+"), 
        UserName = structure(logical(0), shape = "userNameType", 
            type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        Status = structure(logical(0), shape = "statusType", 
            type = "string")), shape = "ServiceSpecificCredential", 
        type = "structure")), shape = "CreateServiceSpecificCredentialResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Path = structure(logical(0), shape = "pathType", 
        type = "string", max = 512L, min = 1L, pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        UserName = structure(logical(0), shape = "userNameType", 
            type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        PermissionsBoundary = structure(logical(0), shape = "arnType", 
            type = "string", max = 2048L, min = 20L)), shape = "CreateUserRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(User = structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        UserName = structure(logical(0), shape = "userNameType", 
            type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        UserId = structure(logical(0), shape = "idType", type = "string", 
            max = 128L, min = 16L, pattern = "[\\w]+"), Arn = structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L), CreateDate = structure(logical(0), shape = "dateType", 
            type = "timestamp"), PasswordLastUsed = structure(logical(0), 
            shape = "dateType", type = "timestamp"), PermissionsBoundary = structure(list(PermissionsBoundaryType = structure(logical(0), 
            shape = "PermissionsBoundaryAttachmentType", type = "string"), 
            PermissionsBoundaryArn = structure(logical(0), shape = "arnType", 
                type = "string", max = 2048L, min = 20L)), shape = "AttachedPermissionsBoundary", 
            type = "structure")), shape = "User", type = "structure")), 
        shape = "CreateUserResponse", type = "structure")
    return(populate(args, shape))
}

create_virtual_mfa_device_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Path = structure(logical(0), shape = "pathType", 
        type = "string", max = 512L, min = 1L, pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        VirtualMFADeviceName = structure(logical(0), shape = "virtualMFADeviceName", 
            type = "string", min = 1L, pattern = "[\\w+=,.@-]+")), 
        shape = "CreateVirtualMFADeviceRequest", type = "structure")
    return(populate(args, shape))
}

create_virtual_mfa_device_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VirtualMFADevice = structure(list(SerialNumber = structure(logical(0), 
        shape = "serialNumberType", type = "string", max = 256L, 
        min = 9L, pattern = "[\\w+=/:,.@-]+"), Base32StringSeed = structure(logical(0), 
        shape = "BootstrapDatum", type = "blob", sensitive = TRUE), 
        QRCodePNG = structure(logical(0), shape = "BootstrapDatum", 
            type = "blob", sensitive = TRUE), User = structure(list(Path = structure(logical(0), 
            shape = "pathType", type = "string", max = 512L, 
            min = 1L, pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
            UserName = structure(logical(0), shape = "userNameType", 
                type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
            UserId = structure(logical(0), shape = "idType", 
                type = "string", max = 128L, min = 16L, pattern = "[\\w]+"), 
            Arn = structure(logical(0), shape = "arnType", type = "string", 
                max = 2048L, min = 20L), CreateDate = structure(logical(0), 
                shape = "dateType", type = "timestamp"), PasswordLastUsed = structure(logical(0), 
                shape = "dateType", type = "timestamp"), PermissionsBoundary = structure(list(PermissionsBoundaryType = structure(logical(0), 
                shape = "PermissionsBoundaryAttachmentType", 
                type = "string"), PermissionsBoundaryArn = structure(logical(0), 
                shape = "arnType", type = "string", max = 2048L, 
                min = 20L)), shape = "AttachedPermissionsBoundary", 
                type = "structure")), shape = "User", type = "structure"), 
        EnableDate = structure(logical(0), shape = "dateType", 
            type = "timestamp")), shape = "VirtualMFADevice", 
        type = "structure")), shape = "CreateVirtualMFADeviceResponse", 
        type = "structure")
    return(populate(args, shape))
}

deactivate_mfa_device_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), SerialNumber = structure(logical(0), 
        shape = "serialNumberType", type = "string", max = 256L, 
        min = 9L, pattern = "[\\w+=/:,.@-]+")), shape = "DeactivateMFADeviceRequest", 
        type = "structure")
    return(populate(args, shape))
}

deactivate_mfa_device_output <- function () 
{
    return(list())
}

delete_access_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), AccessKeyId = structure(logical(0), 
        shape = "accessKeyIdType", type = "string", max = 128L, 
        min = 16L, pattern = "[\\w]+")), shape = "DeleteAccessKeyRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_access_key_output <- function () 
{
    return(list())
}

delete_account_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountAlias = structure(logical(0), 
        shape = "accountAliasType", type = "string", max = 63L, 
        min = 3L, pattern = "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$")), 
        shape = "DeleteAccountAliasRequest", type = "structure")
    return(populate(args, shape))
}

delete_account_alias_output <- function () 
{
    return(list())
}

delete_account_password_policy_input <- function () 
{
    return(list())
}

delete_account_password_policy_output <- function () 
{
    return(list())
}

delete_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "groupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+")), shape = "DeleteGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_group_output <- function () 
{
    return(list())
}

delete_group_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "groupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+")), shape = "DeleteGroupPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_group_policy_output <- function () 
{
    return(list())
}

delete_instance_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceProfileName = structure(logical(0), 
        shape = "instanceProfileNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+")), shape = "DeleteInstanceProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_instance_profile_output <- function () 
{
    return(list())
}

delete_login_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+")), shape = "DeleteLoginProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_login_profile_output <- function () 
{
    return(list())
}

delete_open_id_connect_provider_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OpenIDConnectProviderArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "DeleteOpenIDConnectProviderRequest", type = "structure")
    return(populate(args, shape))
}

delete_open_id_connect_provider_output <- function () 
{
    return(list())
}

delete_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
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
    shape <- structure(list(PolicyArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L), 
        VersionId = structure(logical(0), shape = "policyVersionIdType", 
            type = "string", pattern = "v[1-9][0-9]*(\\.[A-Za-z0-9-]*)?")), 
        shape = "DeletePolicyVersionRequest", type = "structure")
    return(populate(args, shape))
}

delete_policy_version_output <- function () 
{
    return(list())
}

delete_role_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+")), shape = "DeleteRoleRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_role_output <- function () 
{
    return(list())
}

delete_role_permissions_boundary_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+")), shape = "DeleteRolePermissionsBoundaryRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_role_permissions_boundary_output <- function () 
{
    return(list())
}

delete_role_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+")), shape = "DeleteRolePolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_role_policy_output <- function () 
{
    return(list())
}

delete_saml_provider_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SAMLProviderArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "DeleteSAMLProviderRequest", type = "structure")
    return(populate(args, shape))
}

delete_saml_provider_output <- function () 
{
    return(list())
}

delete_ssh_public_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), SSHPublicKeyId = structure(logical(0), 
        shape = "publicKeyIdType", type = "string", max = 128L, 
        min = 20L, pattern = "[\\w]+")), shape = "DeleteSSHPublicKeyRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_ssh_public_key_output <- function () 
{
    return(list())
}

delete_server_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerCertificateName = structure(logical(0), 
        shape = "serverCertificateNameType", type = "string", 
        max = 128L, min = 1L, pattern = "[\\w+=,.@-]+")), shape = "DeleteServerCertificateRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_server_certificate_output <- function () 
{
    return(list())
}

delete_service_linked_role_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+")), shape = "DeleteServiceLinkedRoleRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_service_linked_role_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeletionTaskId = structure(logical(0), 
        shape = "DeletionTaskIdType", type = "string", max = 1000L, 
        min = 1L)), shape = "DeleteServiceLinkedRoleResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_service_specific_credential_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), ServiceSpecificCredentialId = structure(logical(0), 
        shape = "serviceSpecificCredentialId", type = "string", 
        max = 128L, min = 20L, pattern = "[\\w]+")), shape = "DeleteServiceSpecificCredentialRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_service_specific_credential_output <- function () 
{
    return(list())
}

delete_signing_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), CertificateId = structure(logical(0), 
        shape = "certificateIdType", type = "string", max = 128L, 
        min = 24L, pattern = "[\\w]+")), shape = "DeleteSigningCertificateRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_signing_certificate_output <- function () 
{
    return(list())
}

delete_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+")), shape = "DeleteUserRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_user_output <- function () 
{
    return(list())
}

delete_user_permissions_boundary_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+")), shape = "DeleteUserPermissionsBoundaryRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_user_permissions_boundary_output <- function () 
{
    return(list())
}

delete_user_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+")), shape = "DeleteUserPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_user_policy_output <- function () 
{
    return(list())
}

delete_virtual_mfa_device_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SerialNumber = structure(logical(0), 
        shape = "serialNumberType", type = "string", max = 256L, 
        min = 9L, pattern = "[\\w+=/:,.@-]+")), shape = "DeleteVirtualMFADeviceRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_virtual_mfa_device_output <- function () 
{
    return(list())
}

detach_group_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "groupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "DetachGroupPolicyRequest", type = "structure")
    return(populate(args, shape))
}

detach_group_policy_output <- function () 
{
    return(list())
}

detach_role_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), PolicyArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "DetachRolePolicyRequest", type = "structure")
    return(populate(args, shape))
}

detach_role_policy_output <- function () 
{
    return(list())
}

detach_user_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), PolicyArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "DetachUserPolicyRequest", type = "structure")
    return(populate(args, shape))
}

detach_user_policy_output <- function () 
{
    return(list())
}

enable_mfa_device_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), SerialNumber = structure(logical(0), 
        shape = "serialNumberType", type = "string", max = 256L, 
        min = 9L, pattern = "[\\w+=/:,.@-]+"), AuthenticationCode1 = structure(logical(0), 
        shape = "authenticationCodeType", type = "string", max = 6L, 
        min = 6L, pattern = "[\\d]+"), AuthenticationCode2 = structure(logical(0), 
        shape = "authenticationCodeType", type = "string", max = 6L, 
        min = 6L, pattern = "[\\d]+")), shape = "EnableMFADeviceRequest", 
        type = "structure")
    return(populate(args, shape))
}

enable_mfa_device_output <- function () 
{
    return(list())
}

generate_credential_report_input <- function () 
{
    return(list())
}

generate_credential_report_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(State = structure(logical(0), shape = "ReportStateType", 
        type = "string"), Description = structure(logical(0), 
        shape = "ReportStateDescriptionType", type = "string")), 
        shape = "GenerateCredentialReportResponse", type = "structure")
    return(populate(args, shape))
}

get_access_key_last_used_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccessKeyId = structure(logical(0), 
        shape = "accessKeyIdType", type = "string", max = 128L, 
        min = 16L, pattern = "[\\w]+")), shape = "GetAccessKeyLastUsedRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_access_key_last_used_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), AccessKeyLastUsed = structure(list(LastUsedDate = structure(logical(0), 
        shape = "dateType", type = "timestamp"), ServiceName = structure(logical(0), 
        shape = "stringType", type = "string"), Region = structure(logical(0), 
        shape = "stringType", type = "string")), shape = "AccessKeyLastUsed", 
        type = "structure")), shape = "GetAccessKeyLastUsedResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_account_authorization_details_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filter = structure(list(structure(logical(0), 
        shape = "EntityType", type = "string")), shape = "entityListType", 
        type = "list"), MaxItems = structure(logical(0), shape = "maxItemsType", 
        type = "integer", max = 1000L, min = 1L), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+")), shape = "GetAccountAuthorizationDetailsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_account_authorization_details_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserDetailList = structure(list(structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        UserName = structure(logical(0), shape = "userNameType", 
            type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        UserId = structure(logical(0), shape = "idType", type = "string", 
            max = 128L, min = 16L, pattern = "[\\w]+"), Arn = structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L), CreateDate = structure(logical(0), shape = "dateType", 
            type = "timestamp"), UserPolicyList = structure(list(structure(list(PolicyName = structure(logical(0), 
            shape = "policyNameType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+=,.@-]+"), PolicyDocument = structure(logical(0), 
            shape = "policyDocumentType", type = "string", max = 131072L, 
            min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
            shape = "PolicyDetail", type = "structure")), shape = "policyDetailListType", 
            type = "list"), GroupList = structure(list(structure(logical(0), 
            shape = "groupNameType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+=,.@-]+")), shape = "groupNameListType", 
            type = "list"), AttachedManagedPolicies = structure(list(structure(list(PolicyName = structure(logical(0), 
            shape = "policyNameType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+=,.@-]+"), PolicyArn = structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L)), shape = "AttachedPolicy", type = "structure")), 
            shape = "attachedPoliciesListType", type = "list"), 
        PermissionsBoundary = structure(list(PermissionsBoundaryType = structure(logical(0), 
            shape = "PermissionsBoundaryAttachmentType", type = "string"), 
            PermissionsBoundaryArn = structure(logical(0), shape = "arnType", 
                type = "string", max = 2048L, min = 20L)), shape = "AttachedPermissionsBoundary", 
            type = "structure")), shape = "UserDetail", type = "structure")), 
        shape = "userDetailListType", type = "list"), GroupDetailList = structure(list(structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        GroupName = structure(logical(0), shape = "groupNameType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        GroupId = structure(logical(0), shape = "idType", type = "string", 
            max = 128L, min = 16L, pattern = "[\\w]+"), Arn = structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L), CreateDate = structure(logical(0), shape = "dateType", 
            type = "timestamp"), GroupPolicyList = structure(list(structure(list(PolicyName = structure(logical(0), 
            shape = "policyNameType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+=,.@-]+"), PolicyDocument = structure(logical(0), 
            shape = "policyDocumentType", type = "string", max = 131072L, 
            min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
            shape = "PolicyDetail", type = "structure")), shape = "policyDetailListType", 
            type = "list"), AttachedManagedPolicies = structure(list(structure(list(PolicyName = structure(logical(0), 
            shape = "policyNameType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+=,.@-]+"), PolicyArn = structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L)), shape = "AttachedPolicy", type = "structure")), 
            shape = "attachedPoliciesListType", type = "list")), 
        shape = "GroupDetail", type = "structure")), shape = "groupDetailListType", 
        type = "list"), RoleDetailList = structure(list(structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        RoleName = structure(logical(0), shape = "roleNameType", 
            type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        RoleId = structure(logical(0), shape = "idType", type = "string", 
            max = 128L, min = 16L, pattern = "[\\w]+"), Arn = structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L), CreateDate = structure(logical(0), shape = "dateType", 
            type = "timestamp"), AssumeRolePolicyDocument = structure(logical(0), 
            shape = "policyDocumentType", type = "string", max = 131072L, 
            min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        InstanceProfileList = structure(list(structure(list(Path = structure(logical(0), 
            shape = "pathType", type = "string", max = 512L, 
            min = 1L, pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
            InstanceProfileName = structure(logical(0), shape = "instanceProfileNameType", 
                type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
            InstanceProfileId = structure(logical(0), shape = "idType", 
                type = "string", max = 128L, min = 16L, pattern = "[\\w]+"), 
            Arn = structure(logical(0), shape = "arnType", type = "string", 
                max = 2048L, min = 20L), CreateDate = structure(logical(0), 
                shape = "dateType", type = "timestamp"), Roles = structure(list(structure(list(Path = structure(logical(0), 
                shape = "pathType", type = "string", max = 512L, 
                min = 1L, pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
                RoleName = structure(logical(0), shape = "roleNameType", 
                  type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
                RoleId = structure(logical(0), shape = "idType", 
                  type = "string", max = 128L, min = 16L, pattern = "[\\w]+"), 
                Arn = structure(logical(0), shape = "arnType", 
                  type = "string", max = 2048L, min = 20L), CreateDate = structure(logical(0), 
                  shape = "dateType", type = "timestamp"), AssumeRolePolicyDocument = structure(logical(0), 
                  shape = "policyDocumentType", type = "string", 
                  max = 131072L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
                Description = structure(logical(0), shape = "roleDescriptionType", 
                  type = "string", max = 1000L, pattern = "[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*"), 
                MaxSessionDuration = structure(logical(0), shape = "roleMaxSessionDurationType", 
                  type = "integer", max = 43200L, min = 3600L), 
                PermissionsBoundary = structure(list(PermissionsBoundaryType = structure(logical(0), 
                  shape = "PermissionsBoundaryAttachmentType", 
                  type = "string"), PermissionsBoundaryArn = structure(logical(0), 
                  shape = "arnType", type = "string", max = 2048L, 
                  min = 20L)), shape = "AttachedPermissionsBoundary", 
                  type = "structure")), shape = "Role", type = "structure")), 
                shape = "roleListType", type = "list")), shape = "InstanceProfile", 
            type = "structure")), shape = "instanceProfileListType", 
            type = "list"), RolePolicyList = structure(list(structure(list(PolicyName = structure(logical(0), 
            shape = "policyNameType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+=,.@-]+"), PolicyDocument = structure(logical(0), 
            shape = "policyDocumentType", type = "string", max = 131072L, 
            min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
            shape = "PolicyDetail", type = "structure")), shape = "policyDetailListType", 
            type = "list"), AttachedManagedPolicies = structure(list(structure(list(PolicyName = structure(logical(0), 
            shape = "policyNameType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+=,.@-]+"), PolicyArn = structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L)), shape = "AttachedPolicy", type = "structure")), 
            shape = "attachedPoliciesListType", type = "list"), 
        PermissionsBoundary = structure(list(PermissionsBoundaryType = structure(logical(0), 
            shape = "PermissionsBoundaryAttachmentType", type = "string"), 
            PermissionsBoundaryArn = structure(logical(0), shape = "arnType", 
                type = "string", max = 2048L, min = 20L)), shape = "AttachedPermissionsBoundary", 
            type = "structure")), shape = "RoleDetail", type = "structure")), 
        shape = "roleDetailListType", type = "list"), Policies = structure(list(structure(list(PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyId = structure(logical(0), 
        shape = "idType", type = "string", max = 128L, min = 16L, 
        pattern = "[\\w]+"), Arn = structure(logical(0), shape = "arnType", 
        type = "string", max = 2048L, min = 20L), Path = structure(logical(0), 
        shape = "policyPathType", type = "string", pattern = "((/[A-Za-z0-9\\.,\\+@=_-]+)*)/"), 
        DefaultVersionId = structure(logical(0), shape = "policyVersionIdType", 
            type = "string", pattern = "v[1-9][0-9]*(\\.[A-Za-z0-9-]*)?"), 
        AttachmentCount = structure(logical(0), shape = "attachmentCountType", 
            type = "integer"), PermissionsBoundaryUsageCount = structure(logical(0), 
            shape = "attachmentCountType", type = "integer"), 
        IsAttachable = structure(logical(0), shape = "booleanType", 
            type = "boolean"), Description = structure(logical(0), 
            shape = "policyDescriptionType", type = "string", 
            max = 1000L), CreateDate = structure(logical(0), 
            shape = "dateType", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "dateType", type = "timestamp"), PolicyVersionList = structure(list(structure(list(Document = structure(logical(0), 
            shape = "policyDocumentType", type = "string", max = 131072L, 
            min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
            VersionId = structure(logical(0), shape = "policyVersionIdType", 
                type = "string", pattern = "v[1-9][0-9]*(\\.[A-Za-z0-9-]*)?"), 
            IsDefaultVersion = structure(logical(0), shape = "booleanType", 
                type = "boolean"), CreateDate = structure(logical(0), 
                shape = "dateType", type = "timestamp")), shape = "PolicyVersion", 
            type = "structure")), shape = "policyDocumentVersionListType", 
            type = "list")), shape = "ManagedPolicyDetail", type = "structure")), 
        shape = "ManagedPolicyDetailListType", type = "list"), 
        IsTruncated = structure(logical(0), shape = "booleanType", 
            type = "boolean"), Marker = structure(logical(0), 
            shape = "markerType", type = "string", max = 320L, 
            min = 1L, pattern = "[\\u0020-\\u00FF]+")), shape = "GetAccountAuthorizationDetailsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_account_password_policy_input <- function () 
{
    return(list())
}

get_account_password_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PasswordPolicy = structure(list(MinimumPasswordLength = structure(logical(0), 
        shape = "minimumPasswordLengthType", type = "integer", 
        max = 128L, min = 6L), RequireSymbols = structure(logical(0), 
        shape = "booleanType", type = "boolean"), RequireNumbers = structure(logical(0), 
        shape = "booleanType", type = "boolean"), RequireUppercaseCharacters = structure(logical(0), 
        shape = "booleanType", type = "boolean"), RequireLowercaseCharacters = structure(logical(0), 
        shape = "booleanType", type = "boolean"), AllowUsersToChangePassword = structure(logical(0), 
        shape = "booleanType", type = "boolean"), ExpirePasswords = structure(logical(0), 
        shape = "booleanType", type = "boolean"), MaxPasswordAge = structure(logical(0), 
        shape = "maxPasswordAgeType", type = "integer", box = TRUE, 
        max = 1095L, min = 1L), PasswordReusePrevention = structure(logical(0), 
        shape = "passwordReusePreventionType", type = "integer", 
        box = TRUE, max = 24L, min = 1L), HardExpiry = structure(logical(0), 
        shape = "booleanObjectType", type = "boolean", box = TRUE)), 
        shape = "PasswordPolicy", type = "structure")), shape = "GetAccountPasswordPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_account_summary_input <- function () 
{
    return(list())
}

get_account_summary_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SummaryMap = structure(list(structure(logical(0), 
        shape = "summaryValueType", type = "integer")), shape = "summaryMapType", 
        type = "map")), shape = "GetAccountSummaryResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_context_keys_for_custom_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyInputList = structure(list(structure(logical(0), 
        shape = "policyDocumentType", type = "string", max = 131072L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "SimulationPolicyListType", type = "list")), 
        shape = "GetContextKeysForCustomPolicyRequest", type = "structure")
    return(populate(args, shape))
}

get_context_keys_for_custom_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContextKeyNames = structure(list(structure(logical(0), 
        shape = "ContextKeyNameType", type = "string", max = 256L, 
        min = 5L)), shape = "ContextKeyNamesResultListType", 
        type = "list")), shape = "GetContextKeysForPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_context_keys_for_principal_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicySourceArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L), 
        PolicyInputList = structure(list(structure(logical(0), 
            shape = "policyDocumentType", type = "string", max = 131072L, 
            min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
            shape = "SimulationPolicyListType", type = "list")), 
        shape = "GetContextKeysForPrincipalPolicyRequest", type = "structure")
    return(populate(args, shape))
}

get_context_keys_for_principal_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContextKeyNames = structure(list(structure(logical(0), 
        shape = "ContextKeyNameType", type = "string", max = 256L, 
        min = 5L)), shape = "ContextKeyNamesResultListType", 
        type = "list")), shape = "GetContextKeysForPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_credential_report_input <- function () 
{
    return(list())
}

get_credential_report_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Content = structure(logical(0), shape = "ReportContentType", 
        type = "blob"), ReportFormat = structure(logical(0), 
        shape = "ReportFormatType", type = "string"), GeneratedTime = structure(logical(0), 
        shape = "dateType", type = "timestamp")), shape = "GetCredentialReportResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "groupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+"), MaxItems = structure(logical(0), 
        shape = "maxItemsType", type = "integer", max = 1000L, 
        min = 1L)), shape = "GetGroupRequest", type = "structure")
    return(populate(args, shape))
}

get_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Group = structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        GroupName = structure(logical(0), shape = "groupNameType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        GroupId = structure(logical(0), shape = "idType", type = "string", 
            max = 128L, min = 16L, pattern = "[\\w]+"), Arn = structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L), CreateDate = structure(logical(0), shape = "dateType", 
            type = "timestamp")), shape = "Group", type = "structure"), 
        Users = structure(list(structure(list(Path = structure(logical(0), 
            shape = "pathType", type = "string", max = 512L, 
            min = 1L, pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
            UserName = structure(logical(0), shape = "userNameType", 
                type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
            UserId = structure(logical(0), shape = "idType", 
                type = "string", max = 128L, min = 16L, pattern = "[\\w]+"), 
            Arn = structure(logical(0), shape = "arnType", type = "string", 
                max = 2048L, min = 20L), CreateDate = structure(logical(0), 
                shape = "dateType", type = "timestamp"), PasswordLastUsed = structure(logical(0), 
                shape = "dateType", type = "timestamp"), PermissionsBoundary = structure(list(PermissionsBoundaryType = structure(logical(0), 
                shape = "PermissionsBoundaryAttachmentType", 
                type = "string"), PermissionsBoundaryArn = structure(logical(0), 
                shape = "arnType", type = "string", max = 2048L, 
                min = 20L)), shape = "AttachedPermissionsBoundary", 
                type = "structure")), shape = "User", type = "structure")), 
            shape = "userListType", type = "list"), IsTruncated = structure(logical(0), 
            shape = "booleanType", type = "boolean"), Marker = structure(logical(0), 
            shape = "markerType", type = "string", max = 320L, 
            min = 1L, pattern = "[\\u0020-\\u00FF]+")), shape = "GetGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_group_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "groupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+")), shape = "GetGroupPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_group_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "groupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyDocument = structure(logical(0), 
        shape = "policyDocumentType", type = "string", max = 131072L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "GetGroupPolicyResponse", type = "structure")
    return(populate(args, shape))
}

get_instance_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceProfileName = structure(logical(0), 
        shape = "instanceProfileNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+")), shape = "GetInstanceProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_instance_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceProfile = structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        InstanceProfileName = structure(logical(0), shape = "instanceProfileNameType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        InstanceProfileId = structure(logical(0), shape = "idType", 
            type = "string", max = 128L, min = 16L, pattern = "[\\w]+"), 
        Arn = structure(logical(0), shape = "arnType", type = "string", 
            max = 2048L, min = 20L), CreateDate = structure(logical(0), 
            shape = "dateType", type = "timestamp"), Roles = structure(list(structure(list(Path = structure(logical(0), 
            shape = "pathType", type = "string", max = 512L, 
            min = 1L, pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
            RoleName = structure(logical(0), shape = "roleNameType", 
                type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
            RoleId = structure(logical(0), shape = "idType", 
                type = "string", max = 128L, min = 16L, pattern = "[\\w]+"), 
            Arn = structure(logical(0), shape = "arnType", type = "string", 
                max = 2048L, min = 20L), CreateDate = structure(logical(0), 
                shape = "dateType", type = "timestamp"), AssumeRolePolicyDocument = structure(logical(0), 
                shape = "policyDocumentType", type = "string", 
                max = 131072L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
            Description = structure(logical(0), shape = "roleDescriptionType", 
                type = "string", max = 1000L, pattern = "[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*"), 
            MaxSessionDuration = structure(logical(0), shape = "roleMaxSessionDurationType", 
                type = "integer", max = 43200L, min = 3600L), 
            PermissionsBoundary = structure(list(PermissionsBoundaryType = structure(logical(0), 
                shape = "PermissionsBoundaryAttachmentType", 
                type = "string"), PermissionsBoundaryArn = structure(logical(0), 
                shape = "arnType", type = "string", max = 2048L, 
                min = 20L)), shape = "AttachedPermissionsBoundary", 
                type = "structure")), shape = "Role", type = "structure")), 
            shape = "roleListType", type = "list")), shape = "InstanceProfile", 
        type = "structure")), shape = "GetInstanceProfileResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_login_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+")), shape = "GetLoginProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_login_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoginProfile = structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), CreateDate = structure(logical(0), 
        shape = "dateType", type = "timestamp"), PasswordResetRequired = structure(logical(0), 
        shape = "booleanType", type = "boolean")), shape = "LoginProfile", 
        type = "structure")), shape = "GetLoginProfileResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_open_id_connect_provider_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OpenIDConnectProviderArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "GetOpenIDConnectProviderRequest", type = "structure")
    return(populate(args, shape))
}

get_open_id_connect_provider_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Url = structure(logical(0), shape = "OpenIDConnectProviderUrlType", 
        type = "string", max = 255L, min = 1L), ClientIDList = structure(list(structure(logical(0), 
        shape = "clientIDType", type = "string", max = 255L, 
        min = 1L)), shape = "clientIDListType", type = "list"), 
        ThumbprintList = structure(list(structure(logical(0), 
            shape = "thumbprintType", type = "string", max = 40L, 
            min = 40L)), shape = "thumbprintListType", type = "list"), 
        CreateDate = structure(logical(0), shape = "dateType", 
            type = "timestamp")), shape = "GetOpenIDConnectProviderResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "GetPolicyRequest", type = "structure")
    return(populate(args, shape))
}

get_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policy = structure(list(PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyId = structure(logical(0), 
        shape = "idType", type = "string", max = 128L, min = 16L, 
        pattern = "[\\w]+"), Arn = structure(logical(0), shape = "arnType", 
        type = "string", max = 2048L, min = 20L), Path = structure(logical(0), 
        shape = "policyPathType", type = "string", pattern = "((/[A-Za-z0-9\\.,\\+@=_-]+)*)/"), 
        DefaultVersionId = structure(logical(0), shape = "policyVersionIdType", 
            type = "string", pattern = "v[1-9][0-9]*(\\.[A-Za-z0-9-]*)?"), 
        AttachmentCount = structure(logical(0), shape = "attachmentCountType", 
            type = "integer"), PermissionsBoundaryUsageCount = structure(logical(0), 
            shape = "attachmentCountType", type = "integer"), 
        IsAttachable = structure(logical(0), shape = "booleanType", 
            type = "boolean"), Description = structure(logical(0), 
            shape = "policyDescriptionType", type = "string", 
            max = 1000L), CreateDate = structure(logical(0), 
            shape = "dateType", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "dateType", type = "timestamp")), shape = "Policy", 
        type = "structure")), shape = "GetPolicyResponse", type = "structure")
    return(populate(args, shape))
}

get_policy_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L), 
        VersionId = structure(logical(0), shape = "policyVersionIdType", 
            type = "string", pattern = "v[1-9][0-9]*(\\.[A-Za-z0-9-]*)?")), 
        shape = "GetPolicyVersionRequest", type = "structure")
    return(populate(args, shape))
}

get_policy_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyVersion = structure(list(Document = structure(logical(0), 
        shape = "policyDocumentType", type = "string", max = 131072L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        VersionId = structure(logical(0), shape = "policyVersionIdType", 
            type = "string", pattern = "v[1-9][0-9]*(\\.[A-Za-z0-9-]*)?"), 
        IsDefaultVersion = structure(logical(0), shape = "booleanType", 
            type = "boolean"), CreateDate = structure(logical(0), 
            shape = "dateType", type = "timestamp")), shape = "PolicyVersion", 
        type = "structure")), shape = "GetPolicyVersionResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_role_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+")), shape = "GetRoleRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_role_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Role = structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        RoleName = structure(logical(0), shape = "roleNameType", 
            type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        RoleId = structure(logical(0), shape = "idType", type = "string", 
            max = 128L, min = 16L, pattern = "[\\w]+"), Arn = structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L), CreateDate = structure(logical(0), shape = "dateType", 
            type = "timestamp"), AssumeRolePolicyDocument = structure(logical(0), 
            shape = "policyDocumentType", type = "string", max = 131072L, 
            min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        Description = structure(logical(0), shape = "roleDescriptionType", 
            type = "string", max = 1000L, pattern = "[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*"), 
        MaxSessionDuration = structure(logical(0), shape = "roleMaxSessionDurationType", 
            type = "integer", max = 43200L, min = 3600L), PermissionsBoundary = structure(list(PermissionsBoundaryType = structure(logical(0), 
            shape = "PermissionsBoundaryAttachmentType", type = "string"), 
            PermissionsBoundaryArn = structure(logical(0), shape = "arnType", 
                type = "string", max = 2048L, min = 20L)), shape = "AttachedPermissionsBoundary", 
            type = "structure")), shape = "Role", type = "structure")), 
        shape = "GetRoleResponse", type = "structure")
    return(populate(args, shape))
}

get_role_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+")), shape = "GetRolePolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_role_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyDocument = structure(logical(0), 
        shape = "policyDocumentType", type = "string", max = 131072L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "GetRolePolicyResponse", type = "structure")
    return(populate(args, shape))
}

get_saml_provider_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SAMLProviderArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "GetSAMLProviderRequest", type = "structure")
    return(populate(args, shape))
}

get_saml_provider_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SAMLMetadataDocument = structure(logical(0), 
        shape = "SAMLMetadataDocumentType", type = "string", 
        max = 10000000L, min = 1000L), CreateDate = structure(logical(0), 
        shape = "dateType", type = "timestamp"), ValidUntil = structure(logical(0), 
        shape = "dateType", type = "timestamp")), shape = "GetSAMLProviderResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_ssh_public_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), SSHPublicKeyId = structure(logical(0), 
        shape = "publicKeyIdType", type = "string", max = 128L, 
        min = 20L, pattern = "[\\w]+"), Encoding = structure(logical(0), 
        shape = "encodingType", type = "string")), shape = "GetSSHPublicKeyRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_ssh_public_key_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SSHPublicKey = structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), SSHPublicKeyId = structure(logical(0), 
        shape = "publicKeyIdType", type = "string", max = 128L, 
        min = 20L, pattern = "[\\w]+"), Fingerprint = structure(logical(0), 
        shape = "publicKeyFingerprintType", type = "string", 
        max = 48L, min = 48L, pattern = "[:\\w]+"), SSHPublicKeyBody = structure(logical(0), 
        shape = "publicKeyMaterialType", type = "string", max = 16384L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        Status = structure(logical(0), shape = "statusType", 
            type = "string"), UploadDate = structure(logical(0), 
            shape = "dateType", type = "timestamp")), shape = "SSHPublicKey", 
        type = "structure")), shape = "GetSSHPublicKeyResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_server_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerCertificateName = structure(logical(0), 
        shape = "serverCertificateNameType", type = "string", 
        max = 128L, min = 1L, pattern = "[\\w+=,.@-]+")), shape = "GetServerCertificateRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_server_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerCertificate = structure(list(ServerCertificateMetadata = structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        ServerCertificateName = structure(logical(0), shape = "serverCertificateNameType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        ServerCertificateId = structure(logical(0), shape = "idType", 
            type = "string", max = 128L, min = 16L, pattern = "[\\w]+"), 
        Arn = structure(logical(0), shape = "arnType", type = "string", 
            max = 2048L, min = 20L), UploadDate = structure(logical(0), 
            shape = "dateType", type = "timestamp"), Expiration = structure(logical(0), 
            shape = "dateType", type = "timestamp")), shape = "ServerCertificateMetadata", 
        type = "structure"), CertificateBody = structure(logical(0), 
        shape = "certificateBodyType", type = "string", max = 16384L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        CertificateChain = structure(logical(0), shape = "certificateChainType", 
            type = "string", max = 2097152L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "ServerCertificate", type = "structure")), shape = "GetServerCertificateResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_service_linked_role_deletion_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeletionTaskId = structure(logical(0), 
        shape = "DeletionTaskIdType", type = "string", max = 1000L, 
        min = 1L)), shape = "GetServiceLinkedRoleDeletionStatusRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_service_linked_role_deletion_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "DeletionTaskStatusType", 
        type = "string"), Reason = structure(list(Reason = structure(logical(0), 
        shape = "ReasonType", type = "string", max = 1000L), 
        RoleUsageList = structure(list(structure(list(Region = structure(logical(0), 
            shape = "RegionNameType", type = "string", max = 100L, 
            min = 1L), Resources = structure(list(structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L)), shape = "ArnListType", type = "list")), 
            shape = "RoleUsageType", type = "structure")), shape = "RoleUsageListType", 
            type = "list")), shape = "DeletionTaskFailureReasonType", 
        type = "structure")), shape = "GetServiceLinkedRoleDeletionStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+")), shape = "GetUserRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(User = structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        UserName = structure(logical(0), shape = "userNameType", 
            type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        UserId = structure(logical(0), shape = "idType", type = "string", 
            max = 128L, min = 16L, pattern = "[\\w]+"), Arn = structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L), CreateDate = structure(logical(0), shape = "dateType", 
            type = "timestamp"), PasswordLastUsed = structure(logical(0), 
            shape = "dateType", type = "timestamp"), PermissionsBoundary = structure(list(PermissionsBoundaryType = structure(logical(0), 
            shape = "PermissionsBoundaryAttachmentType", type = "string"), 
            PermissionsBoundaryArn = structure(logical(0), shape = "arnType", 
                type = "string", max = 2048L, min = 20L)), shape = "AttachedPermissionsBoundary", 
            type = "structure")), shape = "User", type = "structure")), 
        shape = "GetUserResponse", type = "structure")
    return(populate(args, shape))
}

get_user_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+")), shape = "GetUserPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_user_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyDocument = structure(logical(0), 
        shape = "policyDocumentType", type = "string", max = 131072L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "GetUserPolicyResponse", type = "structure")
    return(populate(args, shape))
}

list_access_keys_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+"), MaxItems = structure(logical(0), 
        shape = "maxItemsType", type = "integer", max = 1000L, 
        min = 1L)), shape = "ListAccessKeysRequest", type = "structure")
    return(populate(args, shape))
}

list_access_keys_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccessKeyMetadata = structure(list(structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), AccessKeyId = structure(logical(0), 
        shape = "accessKeyIdType", type = "string", max = 128L, 
        min = 16L, pattern = "[\\w]+"), Status = structure(logical(0), 
        shape = "statusType", type = "string"), CreateDate = structure(logical(0), 
        shape = "dateType", type = "timestamp")), shape = "AccessKeyMetadata", 
        type = "structure")), shape = "accessKeyMetadataListType", 
        type = "list"), IsTruncated = structure(logical(0), shape = "booleanType", 
        type = "boolean"), Marker = structure(logical(0), shape = "markerType", 
        type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+")), 
        shape = "ListAccessKeysResponse", type = "structure")
    return(populate(args, shape))
}

list_account_aliases_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "markerType", 
        type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+"), 
        MaxItems = structure(logical(0), shape = "maxItemsType", 
            type = "integer", max = 1000L, min = 1L)), shape = "ListAccountAliasesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_account_aliases_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountAliases = structure(list(structure(logical(0), 
        shape = "accountAliasType", type = "string", max = 63L, 
        min = 3L, pattern = "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$")), 
        shape = "accountAliasListType", type = "list"), IsTruncated = structure(logical(0), 
        shape = "booleanType", type = "boolean"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+")), shape = "ListAccountAliasesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_attached_group_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "groupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PathPrefix = structure(logical(0), 
        shape = "policyPathType", type = "string", pattern = "((/[A-Za-z0-9\\.,\\+@=_-]+)*)/"), 
        Marker = structure(logical(0), shape = "markerType", 
            type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+"), 
        MaxItems = structure(logical(0), shape = "maxItemsType", 
            type = "integer", max = 1000L, min = 1L)), shape = "ListAttachedGroupPoliciesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_attached_group_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AttachedPolicies = structure(list(structure(list(PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "AttachedPolicy", type = "structure")), shape = "attachedPoliciesListType", 
        type = "list"), IsTruncated = structure(logical(0), shape = "booleanType", 
        type = "boolean"), Marker = structure(logical(0), shape = "markerType", 
        type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+")), 
        shape = "ListAttachedGroupPoliciesResponse", type = "structure")
    return(populate(args, shape))
}

list_attached_role_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), PathPrefix = structure(logical(0), 
        shape = "policyPathType", type = "string", pattern = "((/[A-Za-z0-9\\.,\\+@=_-]+)*)/"), 
        Marker = structure(logical(0), shape = "markerType", 
            type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+"), 
        MaxItems = structure(logical(0), shape = "maxItemsType", 
            type = "integer", max = 1000L, min = 1L)), shape = "ListAttachedRolePoliciesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_attached_role_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AttachedPolicies = structure(list(structure(list(PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "AttachedPolicy", type = "structure")), shape = "attachedPoliciesListType", 
        type = "list"), IsTruncated = structure(logical(0), shape = "booleanType", 
        type = "boolean"), Marker = structure(logical(0), shape = "markerType", 
        type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+")), 
        shape = "ListAttachedRolePoliciesResponse", type = "structure")
    return(populate(args, shape))
}

list_attached_user_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), PathPrefix = structure(logical(0), 
        shape = "policyPathType", type = "string", pattern = "((/[A-Za-z0-9\\.,\\+@=_-]+)*)/"), 
        Marker = structure(logical(0), shape = "markerType", 
            type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+"), 
        MaxItems = structure(logical(0), shape = "maxItemsType", 
            type = "integer", max = 1000L, min = 1L)), shape = "ListAttachedUserPoliciesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_attached_user_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AttachedPolicies = structure(list(structure(list(PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "AttachedPolicy", type = "structure")), shape = "attachedPoliciesListType", 
        type = "list"), IsTruncated = structure(logical(0), shape = "booleanType", 
        type = "boolean"), Marker = structure(logical(0), shape = "markerType", 
        type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+")), 
        shape = "ListAttachedUserPoliciesResponse", type = "structure")
    return(populate(args, shape))
}

list_entities_for_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L), 
        EntityFilter = structure(logical(0), shape = "EntityType", 
            type = "string"), PathPrefix = structure(logical(0), 
            shape = "pathType", type = "string", max = 512L, 
            min = 1L, pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        PolicyUsageFilter = structure(logical(0), shape = "PolicyUsageType", 
            type = "string"), Marker = structure(logical(0), 
            shape = "markerType", type = "string", max = 320L, 
            min = 1L, pattern = "[\\u0020-\\u00FF]+"), MaxItems = structure(logical(0), 
            shape = "maxItemsType", type = "integer", max = 1000L, 
            min = 1L)), shape = "ListEntitiesForPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_entities_for_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyGroups = structure(list(structure(list(GroupName = structure(logical(0), 
        shape = "groupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), GroupId = structure(logical(0), 
        shape = "idType", type = "string", max = 128L, min = 16L, 
        pattern = "[\\w]+")), shape = "PolicyGroup", type = "structure")), 
        shape = "PolicyGroupListType", type = "list"), PolicyUsers = structure(list(structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), UserId = structure(logical(0), 
        shape = "idType", type = "string", max = 128L, min = 16L, 
        pattern = "[\\w]+")), shape = "PolicyUser", type = "structure")), 
        shape = "PolicyUserListType", type = "list"), PolicyRoles = structure(list(structure(list(RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), RoleId = structure(logical(0), 
        shape = "idType", type = "string", max = 128L, min = 16L, 
        pattern = "[\\w]+")), shape = "PolicyRole", type = "structure")), 
        shape = "PolicyRoleListType", type = "list"), IsTruncated = structure(logical(0), 
        shape = "booleanType", type = "boolean"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+")), shape = "ListEntitiesForPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_group_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "groupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+"), MaxItems = structure(logical(0), 
        shape = "maxItemsType", type = "integer", max = 1000L, 
        min = 1L)), shape = "ListGroupPoliciesRequest", type = "structure")
    return(populate(args, shape))
}

list_group_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyNames = structure(list(structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+")), shape = "policyNameListType", 
        type = "list"), IsTruncated = structure(logical(0), shape = "booleanType", 
        type = "boolean"), Marker = structure(logical(0), shape = "markerType", 
        type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+")), 
        shape = "ListGroupPoliciesResponse", type = "structure")
    return(populate(args, shape))
}

list_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PathPrefix = structure(logical(0), 
        shape = "pathPrefixType", type = "string", max = 512L, 
        min = 1L, pattern = "\\u002F[\\u0021-\\u007F]*"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+"), MaxItems = structure(logical(0), 
        shape = "maxItemsType", type = "integer", max = 1000L, 
        min = 1L)), shape = "ListGroupsRequest", type = "structure")
    return(populate(args, shape))
}

list_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Groups = structure(list(structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        GroupName = structure(logical(0), shape = "groupNameType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        GroupId = structure(logical(0), shape = "idType", type = "string", 
            max = 128L, min = 16L, pattern = "[\\w]+"), Arn = structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L), CreateDate = structure(logical(0), shape = "dateType", 
            type = "timestamp")), shape = "Group", type = "structure")), 
        shape = "groupListType", type = "list"), IsTruncated = structure(logical(0), 
        shape = "booleanType", type = "boolean"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+")), shape = "ListGroupsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_groups_for_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+"), MaxItems = structure(logical(0), 
        shape = "maxItemsType", type = "integer", max = 1000L, 
        min = 1L)), shape = "ListGroupsForUserRequest", type = "structure")
    return(populate(args, shape))
}

list_groups_for_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Groups = structure(list(structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        GroupName = structure(logical(0), shape = "groupNameType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        GroupId = structure(logical(0), shape = "idType", type = "string", 
            max = 128L, min = 16L, pattern = "[\\w]+"), Arn = structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L), CreateDate = structure(logical(0), shape = "dateType", 
            type = "timestamp")), shape = "Group", type = "structure")), 
        shape = "groupListType", type = "list"), IsTruncated = structure(logical(0), 
        shape = "booleanType", type = "boolean"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+")), shape = "ListGroupsForUserResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_instance_profiles_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PathPrefix = structure(logical(0), 
        shape = "pathPrefixType", type = "string", max = 512L, 
        min = 1L, pattern = "\\u002F[\\u0021-\\u007F]*"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+"), MaxItems = structure(logical(0), 
        shape = "maxItemsType", type = "integer", max = 1000L, 
        min = 1L)), shape = "ListInstanceProfilesRequest", type = "structure")
    return(populate(args, shape))
}

list_instance_profiles_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceProfiles = structure(list(structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        InstanceProfileName = structure(logical(0), shape = "instanceProfileNameType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        InstanceProfileId = structure(logical(0), shape = "idType", 
            type = "string", max = 128L, min = 16L, pattern = "[\\w]+"), 
        Arn = structure(logical(0), shape = "arnType", type = "string", 
            max = 2048L, min = 20L), CreateDate = structure(logical(0), 
            shape = "dateType", type = "timestamp"), Roles = structure(list(structure(list(Path = structure(logical(0), 
            shape = "pathType", type = "string", max = 512L, 
            min = 1L, pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
            RoleName = structure(logical(0), shape = "roleNameType", 
                type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
            RoleId = structure(logical(0), shape = "idType", 
                type = "string", max = 128L, min = 16L, pattern = "[\\w]+"), 
            Arn = structure(logical(0), shape = "arnType", type = "string", 
                max = 2048L, min = 20L), CreateDate = structure(logical(0), 
                shape = "dateType", type = "timestamp"), AssumeRolePolicyDocument = structure(logical(0), 
                shape = "policyDocumentType", type = "string", 
                max = 131072L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
            Description = structure(logical(0), shape = "roleDescriptionType", 
                type = "string", max = 1000L, pattern = "[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*"), 
            MaxSessionDuration = structure(logical(0), shape = "roleMaxSessionDurationType", 
                type = "integer", max = 43200L, min = 3600L), 
            PermissionsBoundary = structure(list(PermissionsBoundaryType = structure(logical(0), 
                shape = "PermissionsBoundaryAttachmentType", 
                type = "string"), PermissionsBoundaryArn = structure(logical(0), 
                shape = "arnType", type = "string", max = 2048L, 
                min = 20L)), shape = "AttachedPermissionsBoundary", 
                type = "structure")), shape = "Role", type = "structure")), 
            shape = "roleListType", type = "list")), shape = "InstanceProfile", 
        type = "structure")), shape = "instanceProfileListType", 
        type = "list"), IsTruncated = structure(logical(0), shape = "booleanType", 
        type = "boolean"), Marker = structure(logical(0), shape = "markerType", 
        type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+")), 
        shape = "ListInstanceProfilesResponse", type = "structure")
    return(populate(args, shape))
}

list_instance_profiles_for_role_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+"), MaxItems = structure(logical(0), 
        shape = "maxItemsType", type = "integer", max = 1000L, 
        min = 1L)), shape = "ListInstanceProfilesForRoleRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_instance_profiles_for_role_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceProfiles = structure(list(structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        InstanceProfileName = structure(logical(0), shape = "instanceProfileNameType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        InstanceProfileId = structure(logical(0), shape = "idType", 
            type = "string", max = 128L, min = 16L, pattern = "[\\w]+"), 
        Arn = structure(logical(0), shape = "arnType", type = "string", 
            max = 2048L, min = 20L), CreateDate = structure(logical(0), 
            shape = "dateType", type = "timestamp"), Roles = structure(list(structure(list(Path = structure(logical(0), 
            shape = "pathType", type = "string", max = 512L, 
            min = 1L, pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
            RoleName = structure(logical(0), shape = "roleNameType", 
                type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
            RoleId = structure(logical(0), shape = "idType", 
                type = "string", max = 128L, min = 16L, pattern = "[\\w]+"), 
            Arn = structure(logical(0), shape = "arnType", type = "string", 
                max = 2048L, min = 20L), CreateDate = structure(logical(0), 
                shape = "dateType", type = "timestamp"), AssumeRolePolicyDocument = structure(logical(0), 
                shape = "policyDocumentType", type = "string", 
                max = 131072L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
            Description = structure(logical(0), shape = "roleDescriptionType", 
                type = "string", max = 1000L, pattern = "[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*"), 
            MaxSessionDuration = structure(logical(0), shape = "roleMaxSessionDurationType", 
                type = "integer", max = 43200L, min = 3600L), 
            PermissionsBoundary = structure(list(PermissionsBoundaryType = structure(logical(0), 
                shape = "PermissionsBoundaryAttachmentType", 
                type = "string"), PermissionsBoundaryArn = structure(logical(0), 
                shape = "arnType", type = "string", max = 2048L, 
                min = 20L)), shape = "AttachedPermissionsBoundary", 
                type = "structure")), shape = "Role", type = "structure")), 
            shape = "roleListType", type = "list")), shape = "InstanceProfile", 
        type = "structure")), shape = "instanceProfileListType", 
        type = "list"), IsTruncated = structure(logical(0), shape = "booleanType", 
        type = "boolean"), Marker = structure(logical(0), shape = "markerType", 
        type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+")), 
        shape = "ListInstanceProfilesForRoleResponse", type = "structure")
    return(populate(args, shape))
}

list_mfa_devices_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+"), MaxItems = structure(logical(0), 
        shape = "maxItemsType", type = "integer", max = 1000L, 
        min = 1L)), shape = "ListMFADevicesRequest", type = "structure")
    return(populate(args, shape))
}

list_mfa_devices_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MFADevices = structure(list(structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), SerialNumber = structure(logical(0), 
        shape = "serialNumberType", type = "string", max = 256L, 
        min = 9L, pattern = "[\\w+=/:,.@-]+"), EnableDate = structure(logical(0), 
        shape = "dateType", type = "timestamp")), shape = "MFADevice", 
        type = "structure")), shape = "mfaDeviceListType", type = "list"), 
        IsTruncated = structure(logical(0), shape = "booleanType", 
            type = "boolean"), Marker = structure(logical(0), 
            shape = "markerType", type = "string", max = 320L, 
            min = 1L, pattern = "[\\u0020-\\u00FF]+")), shape = "ListMFADevicesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_open_id_connect_providers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ListOpenIDConnectProvidersRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_open_id_connect_providers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OpenIDConnectProviderList = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "OpenIDConnectProviderListEntry", type = "structure")), 
        shape = "OpenIDConnectProviderListType", type = "list")), 
        shape = "ListOpenIDConnectProvidersResponse", type = "structure")
    return(populate(args, shape))
}

list_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Scope = structure(logical(0), shape = "policyScopeType", 
        type = "string"), OnlyAttached = structure(logical(0), 
        shape = "booleanType", type = "boolean"), PathPrefix = structure(logical(0), 
        shape = "policyPathType", type = "string", pattern = "((/[A-Za-z0-9\\.,\\+@=_-]+)*)/"), 
        PolicyUsageFilter = structure(logical(0), shape = "PolicyUsageType", 
            type = "string"), Marker = structure(logical(0), 
            shape = "markerType", type = "string", max = 320L, 
            min = 1L, pattern = "[\\u0020-\\u00FF]+"), MaxItems = structure(logical(0), 
            shape = "maxItemsType", type = "integer", max = 1000L, 
            min = 1L)), shape = "ListPoliciesRequest", type = "structure")
    return(populate(args, shape))
}

list_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policies = structure(list(structure(list(PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyId = structure(logical(0), 
        shape = "idType", type = "string", max = 128L, min = 16L, 
        pattern = "[\\w]+"), Arn = structure(logical(0), shape = "arnType", 
        type = "string", max = 2048L, min = 20L), Path = structure(logical(0), 
        shape = "policyPathType", type = "string", pattern = "((/[A-Za-z0-9\\.,\\+@=_-]+)*)/"), 
        DefaultVersionId = structure(logical(0), shape = "policyVersionIdType", 
            type = "string", pattern = "v[1-9][0-9]*(\\.[A-Za-z0-9-]*)?"), 
        AttachmentCount = structure(logical(0), shape = "attachmentCountType", 
            type = "integer"), PermissionsBoundaryUsageCount = structure(logical(0), 
            shape = "attachmentCountType", type = "integer"), 
        IsAttachable = structure(logical(0), shape = "booleanType", 
            type = "boolean"), Description = structure(logical(0), 
            shape = "policyDescriptionType", type = "string", 
            max = 1000L), CreateDate = structure(logical(0), 
            shape = "dateType", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "dateType", type = "timestamp")), shape = "Policy", 
        type = "structure")), shape = "policyListType", type = "list"), 
        IsTruncated = structure(logical(0), shape = "booleanType", 
            type = "boolean"), Marker = structure(logical(0), 
            shape = "markerType", type = "string", max = 320L, 
            min = 1L, pattern = "[\\u0020-\\u00FF]+")), shape = "ListPoliciesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_policy_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L), 
        Marker = structure(logical(0), shape = "markerType", 
            type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+"), 
        MaxItems = structure(logical(0), shape = "maxItemsType", 
            type = "integer", max = 1000L, min = 1L)), shape = "ListPolicyVersionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_policy_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Versions = structure(list(structure(list(Document = structure(logical(0), 
        shape = "policyDocumentType", type = "string", max = 131072L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        VersionId = structure(logical(0), shape = "policyVersionIdType", 
            type = "string", pattern = "v[1-9][0-9]*(\\.[A-Za-z0-9-]*)?"), 
        IsDefaultVersion = structure(logical(0), shape = "booleanType", 
            type = "boolean"), CreateDate = structure(logical(0), 
            shape = "dateType", type = "timestamp")), shape = "PolicyVersion", 
        type = "structure")), shape = "policyDocumentVersionListType", 
        type = "list"), IsTruncated = structure(logical(0), shape = "booleanType", 
        type = "boolean"), Marker = structure(logical(0), shape = "markerType", 
        type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+")), 
        shape = "ListPolicyVersionsResponse", type = "structure")
    return(populate(args, shape))
}

list_role_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+"), MaxItems = structure(logical(0), 
        shape = "maxItemsType", type = "integer", max = 1000L, 
        min = 1L)), shape = "ListRolePoliciesRequest", type = "structure")
    return(populate(args, shape))
}

list_role_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyNames = structure(list(structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+")), shape = "policyNameListType", 
        type = "list"), IsTruncated = structure(logical(0), shape = "booleanType", 
        type = "boolean"), Marker = structure(logical(0), shape = "markerType", 
        type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+")), 
        shape = "ListRolePoliciesResponse", type = "structure")
    return(populate(args, shape))
}

list_roles_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PathPrefix = structure(logical(0), 
        shape = "pathPrefixType", type = "string", max = 512L, 
        min = 1L, pattern = "\\u002F[\\u0021-\\u007F]*"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+"), MaxItems = structure(logical(0), 
        shape = "maxItemsType", type = "integer", max = 1000L, 
        min = 1L)), shape = "ListRolesRequest", type = "structure")
    return(populate(args, shape))
}

list_roles_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Roles = structure(list(structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        RoleName = structure(logical(0), shape = "roleNameType", 
            type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        RoleId = structure(logical(0), shape = "idType", type = "string", 
            max = 128L, min = 16L, pattern = "[\\w]+"), Arn = structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L), CreateDate = structure(logical(0), shape = "dateType", 
            type = "timestamp"), AssumeRolePolicyDocument = structure(logical(0), 
            shape = "policyDocumentType", type = "string", max = 131072L, 
            min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        Description = structure(logical(0), shape = "roleDescriptionType", 
            type = "string", max = 1000L, pattern = "[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*"), 
        MaxSessionDuration = structure(logical(0), shape = "roleMaxSessionDurationType", 
            type = "integer", max = 43200L, min = 3600L), PermissionsBoundary = structure(list(PermissionsBoundaryType = structure(logical(0), 
            shape = "PermissionsBoundaryAttachmentType", type = "string"), 
            PermissionsBoundaryArn = structure(logical(0), shape = "arnType", 
                type = "string", max = 2048L, min = 20L)), shape = "AttachedPermissionsBoundary", 
            type = "structure")), shape = "Role", type = "structure")), 
        shape = "roleListType", type = "list"), IsTruncated = structure(logical(0), 
        shape = "booleanType", type = "boolean"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+")), shape = "ListRolesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_saml_providers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ListSAMLProvidersRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_saml_providers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SAMLProviderList = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L), 
        ValidUntil = structure(logical(0), shape = "dateType", 
            type = "timestamp"), CreateDate = structure(logical(0), 
            shape = "dateType", type = "timestamp")), shape = "SAMLProviderListEntry", 
        type = "structure")), shape = "SAMLProviderListType", 
        type = "list")), shape = "ListSAMLProvidersResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_ssh_public_keys_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+"), MaxItems = structure(logical(0), 
        shape = "maxItemsType", type = "integer", max = 1000L, 
        min = 1L)), shape = "ListSSHPublicKeysRequest", type = "structure")
    return(populate(args, shape))
}

list_ssh_public_keys_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SSHPublicKeys = structure(list(structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), SSHPublicKeyId = structure(logical(0), 
        shape = "publicKeyIdType", type = "string", max = 128L, 
        min = 20L, pattern = "[\\w]+"), Status = structure(logical(0), 
        shape = "statusType", type = "string"), UploadDate = structure(logical(0), 
        shape = "dateType", type = "timestamp")), shape = "SSHPublicKeyMetadata", 
        type = "structure")), shape = "SSHPublicKeyListType", 
        type = "list"), IsTruncated = structure(logical(0), shape = "booleanType", 
        type = "boolean"), Marker = structure(logical(0), shape = "markerType", 
        type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+")), 
        shape = "ListSSHPublicKeysResponse", type = "structure")
    return(populate(args, shape))
}

list_server_certificates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PathPrefix = structure(logical(0), 
        shape = "pathPrefixType", type = "string", max = 512L, 
        min = 1L, pattern = "\\u002F[\\u0021-\\u007F]*"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+"), MaxItems = structure(logical(0), 
        shape = "maxItemsType", type = "integer", max = 1000L, 
        min = 1L)), shape = "ListServerCertificatesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_server_certificates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerCertificateMetadataList = structure(list(structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        ServerCertificateName = structure(logical(0), shape = "serverCertificateNameType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        ServerCertificateId = structure(logical(0), shape = "idType", 
            type = "string", max = 128L, min = 16L, pattern = "[\\w]+"), 
        Arn = structure(logical(0), shape = "arnType", type = "string", 
            max = 2048L, min = 20L), UploadDate = structure(logical(0), 
            shape = "dateType", type = "timestamp"), Expiration = structure(logical(0), 
            shape = "dateType", type = "timestamp")), shape = "ServerCertificateMetadata", 
        type = "structure")), shape = "serverCertificateMetadataListType", 
        type = "list"), IsTruncated = structure(logical(0), shape = "booleanType", 
        type = "boolean"), Marker = structure(logical(0), shape = "markerType", 
        type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+")), 
        shape = "ListServerCertificatesResponse", type = "structure")
    return(populate(args, shape))
}

list_service_specific_credentials_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), ServiceName = structure(logical(0), 
        shape = "serviceName", type = "string")), shape = "ListServiceSpecificCredentialsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_service_specific_credentials_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceSpecificCredentials = structure(list(structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), Status = structure(logical(0), 
        shape = "statusType", type = "string"), ServiceUserName = structure(logical(0), 
        shape = "serviceUserName", type = "string", max = 200L, 
        min = 17L, pattern = "[\\w+=,.@-]+"), CreateDate = structure(logical(0), 
        shape = "dateType", type = "timestamp"), ServiceSpecificCredentialId = structure(logical(0), 
        shape = "serviceSpecificCredentialId", type = "string", 
        max = 128L, min = 20L, pattern = "[\\w]+"), ServiceName = structure(logical(0), 
        shape = "serviceName", type = "string")), shape = "ServiceSpecificCredentialMetadata", 
        type = "structure")), shape = "ServiceSpecificCredentialsListType", 
        type = "list")), shape = "ListServiceSpecificCredentialsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_signing_certificates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+"), MaxItems = structure(logical(0), 
        shape = "maxItemsType", type = "integer", max = 1000L, 
        min = 1L)), shape = "ListSigningCertificatesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_signing_certificates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Certificates = structure(list(structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), CertificateId = structure(logical(0), 
        shape = "certificateIdType", type = "string", max = 128L, 
        min = 24L, pattern = "[\\w]+"), CertificateBody = structure(logical(0), 
        shape = "certificateBodyType", type = "string", max = 16384L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        Status = structure(logical(0), shape = "statusType", 
            type = "string"), UploadDate = structure(logical(0), 
            shape = "dateType", type = "timestamp")), shape = "SigningCertificate", 
        type = "structure")), shape = "certificateListType", 
        type = "list"), IsTruncated = structure(logical(0), shape = "booleanType", 
        type = "boolean"), Marker = structure(logical(0), shape = "markerType", 
        type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+")), 
        shape = "ListSigningCertificatesResponse", type = "structure")
    return(populate(args, shape))
}

list_user_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+"), MaxItems = structure(logical(0), 
        shape = "maxItemsType", type = "integer", max = 1000L, 
        min = 1L)), shape = "ListUserPoliciesRequest", type = "structure")
    return(populate(args, shape))
}

list_user_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyNames = structure(list(structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+")), shape = "policyNameListType", 
        type = "list"), IsTruncated = structure(logical(0), shape = "booleanType", 
        type = "boolean"), Marker = structure(logical(0), shape = "markerType", 
        type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+")), 
        shape = "ListUserPoliciesResponse", type = "structure")
    return(populate(args, shape))
}

list_users_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PathPrefix = structure(logical(0), 
        shape = "pathPrefixType", type = "string", max = 512L, 
        min = 1L, pattern = "\\u002F[\\u0021-\\u007F]*"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+"), MaxItems = structure(logical(0), 
        shape = "maxItemsType", type = "integer", max = 1000L, 
        min = 1L)), shape = "ListUsersRequest", type = "structure")
    return(populate(args, shape))
}

list_users_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Users = structure(list(structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        UserName = structure(logical(0), shape = "userNameType", 
            type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        UserId = structure(logical(0), shape = "idType", type = "string", 
            max = 128L, min = 16L, pattern = "[\\w]+"), Arn = structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L), CreateDate = structure(logical(0), shape = "dateType", 
            type = "timestamp"), PasswordLastUsed = structure(logical(0), 
            shape = "dateType", type = "timestamp"), PermissionsBoundary = structure(list(PermissionsBoundaryType = structure(logical(0), 
            shape = "PermissionsBoundaryAttachmentType", type = "string"), 
            PermissionsBoundaryArn = structure(logical(0), shape = "arnType", 
                type = "string", max = 2048L, min = 20L)), shape = "AttachedPermissionsBoundary", 
            type = "structure")), shape = "User", type = "structure")), 
        shape = "userListType", type = "list"), IsTruncated = structure(logical(0), 
        shape = "booleanType", type = "boolean"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+")), shape = "ListUsersResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_virtual_mfa_devices_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssignmentStatus = structure(logical(0), 
        shape = "assignmentStatusType", type = "string"), Marker = structure(logical(0), 
        shape = "markerType", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+"), MaxItems = structure(logical(0), 
        shape = "maxItemsType", type = "integer", max = 1000L, 
        min = 1L)), shape = "ListVirtualMFADevicesRequest", type = "structure")
    return(populate(args, shape))
}

list_virtual_mfa_devices_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VirtualMFADevices = structure(list(structure(list(SerialNumber = structure(logical(0), 
        shape = "serialNumberType", type = "string", max = 256L, 
        min = 9L, pattern = "[\\w+=/:,.@-]+"), Base32StringSeed = structure(logical(0), 
        shape = "BootstrapDatum", type = "blob", sensitive = TRUE), 
        QRCodePNG = structure(logical(0), shape = "BootstrapDatum", 
            type = "blob", sensitive = TRUE), User = structure(list(Path = structure(logical(0), 
            shape = "pathType", type = "string", max = 512L, 
            min = 1L, pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
            UserName = structure(logical(0), shape = "userNameType", 
                type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
            UserId = structure(logical(0), shape = "idType", 
                type = "string", max = 128L, min = 16L, pattern = "[\\w]+"), 
            Arn = structure(logical(0), shape = "arnType", type = "string", 
                max = 2048L, min = 20L), CreateDate = structure(logical(0), 
                shape = "dateType", type = "timestamp"), PasswordLastUsed = structure(logical(0), 
                shape = "dateType", type = "timestamp"), PermissionsBoundary = structure(list(PermissionsBoundaryType = structure(logical(0), 
                shape = "PermissionsBoundaryAttachmentType", 
                type = "string"), PermissionsBoundaryArn = structure(logical(0), 
                shape = "arnType", type = "string", max = 2048L, 
                min = 20L)), shape = "AttachedPermissionsBoundary", 
                type = "structure")), shape = "User", type = "structure"), 
        EnableDate = structure(logical(0), shape = "dateType", 
            type = "timestamp")), shape = "VirtualMFADevice", 
        type = "structure")), shape = "virtualMFADeviceListType", 
        type = "list"), IsTruncated = structure(logical(0), shape = "booleanType", 
        type = "boolean"), Marker = structure(logical(0), shape = "markerType", 
        type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+")), 
        shape = "ListVirtualMFADevicesResponse", type = "structure")
    return(populate(args, shape))
}

put_group_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "groupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyDocument = structure(logical(0), 
        shape = "policyDocumentType", type = "string", max = 131072L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "PutGroupPolicyRequest", type = "structure")
    return(populate(args, shape))
}

put_group_policy_output <- function () 
{
    return(list())
}

put_role_permissions_boundary_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), PermissionsBoundary = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "PutRolePermissionsBoundaryRequest", type = "structure")
    return(populate(args, shape))
}

put_role_permissions_boundary_output <- function () 
{
    return(list())
}

put_role_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyDocument = structure(logical(0), 
        shape = "policyDocumentType", type = "string", max = 131072L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "PutRolePolicyRequest", type = "structure")
    return(populate(args, shape))
}

put_role_policy_output <- function () 
{
    return(list())
}

put_user_permissions_boundary_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), PermissionsBoundary = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "PutUserPermissionsBoundaryRequest", type = "structure")
    return(populate(args, shape))
}

put_user_permissions_boundary_output <- function () 
{
    return(list())
}

put_user_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyName = structure(logical(0), 
        shape = "policyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), PolicyDocument = structure(logical(0), 
        shape = "policyDocumentType", type = "string", max = 131072L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "PutUserPolicyRequest", type = "structure")
    return(populate(args, shape))
}

put_user_policy_output <- function () 
{
    return(list())
}

remove_client_id_from_open_id_connect_provider_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OpenIDConnectProviderArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L), 
        ClientID = structure(logical(0), shape = "clientIDType", 
            type = "string", max = 255L, min = 1L)), shape = "RemoveClientIDFromOpenIDConnectProviderRequest", 
        type = "structure")
    return(populate(args, shape))
}

remove_client_id_from_open_id_connect_provider_output <- function () 
{
    return(list())
}

remove_role_from_instance_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceProfileName = structure(logical(0), 
        shape = "instanceProfileNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+")), shape = "RemoveRoleFromInstanceProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

remove_role_from_instance_profile_output <- function () 
{
    return(list())
}

remove_user_from_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "groupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+")), shape = "RemoveUserFromGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

remove_user_from_group_output <- function () 
{
    return(list())
}

reset_service_specific_credential_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), ServiceSpecificCredentialId = structure(logical(0), 
        shape = "serviceSpecificCredentialId", type = "string", 
        max = 128L, min = 20L, pattern = "[\\w]+")), shape = "ResetServiceSpecificCredentialRequest", 
        type = "structure")
    return(populate(args, shape))
}

reset_service_specific_credential_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceSpecificCredential = structure(list(CreateDate = structure(logical(0), 
        shape = "dateType", type = "timestamp"), ServiceName = structure(logical(0), 
        shape = "serviceName", type = "string"), ServiceUserName = structure(logical(0), 
        shape = "serviceUserName", type = "string", max = 200L, 
        min = 17L, pattern = "[\\w+=,.@-]+"), ServicePassword = structure(logical(0), 
        shape = "servicePassword", type = "string", sensitive = TRUE), 
        ServiceSpecificCredentialId = structure(logical(0), shape = "serviceSpecificCredentialId", 
            type = "string", max = 128L, min = 20L, pattern = "[\\w]+"), 
        UserName = structure(logical(0), shape = "userNameType", 
            type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        Status = structure(logical(0), shape = "statusType", 
            type = "string")), shape = "ServiceSpecificCredential", 
        type = "structure")), shape = "ResetServiceSpecificCredentialResponse", 
        type = "structure")
    return(populate(args, shape))
}

resync_mfa_device_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), SerialNumber = structure(logical(0), 
        shape = "serialNumberType", type = "string", max = 256L, 
        min = 9L, pattern = "[\\w+=/:,.@-]+"), AuthenticationCode1 = structure(logical(0), 
        shape = "authenticationCodeType", type = "string", max = 6L, 
        min = 6L, pattern = "[\\d]+"), AuthenticationCode2 = structure(logical(0), 
        shape = "authenticationCodeType", type = "string", max = 6L, 
        min = 6L, pattern = "[\\d]+")), shape = "ResyncMFADeviceRequest", 
        type = "structure")
    return(populate(args, shape))
}

resync_mfa_device_output <- function () 
{
    return(list())
}

set_default_policy_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L), 
        VersionId = structure(logical(0), shape = "policyVersionIdType", 
            type = "string", pattern = "v[1-9][0-9]*(\\.[A-Za-z0-9-]*)?")), 
        shape = "SetDefaultPolicyVersionRequest", type = "structure")
    return(populate(args, shape))
}

set_default_policy_version_output <- function () 
{
    return(list())
}

simulate_custom_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyInputList = structure(list(structure(logical(0), 
        shape = "policyDocumentType", type = "string", max = 131072L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "SimulationPolicyListType", type = "list"), ActionNames = structure(list(structure(logical(0), 
        shape = "ActionNameType", type = "string", max = 128L, 
        min = 3L)), shape = "ActionNameListType", type = "list"), 
        ResourceArns = structure(list(structure(logical(0), shape = "ResourceNameType", 
            type = "string", max = 2048L, min = 1L)), shape = "ResourceNameListType", 
            type = "list"), ResourcePolicy = structure(logical(0), 
            shape = "policyDocumentType", type = "string", max = 131072L, 
            min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        ResourceOwner = structure(logical(0), shape = "ResourceNameType", 
            type = "string", max = 2048L, min = 1L), CallerArn = structure(logical(0), 
            shape = "ResourceNameType", type = "string", max = 2048L, 
            min = 1L), ContextEntries = structure(list(structure(list(ContextKeyName = structure(logical(0), 
            shape = "ContextKeyNameType", type = "string", max = 256L, 
            min = 5L), ContextKeyValues = structure(list(structure(logical(0), 
            shape = "ContextKeyValueType", type = "string")), 
            shape = "ContextKeyValueListType", type = "list"), 
            ContextKeyType = structure(logical(0), shape = "ContextKeyTypeEnum", 
                type = "string")), shape = "ContextEntry", type = "structure")), 
            shape = "ContextEntryListType", type = "list"), ResourceHandlingOption = structure(logical(0), 
            shape = "ResourceHandlingOptionType", type = "string", 
            max = 64L, min = 1L), MaxItems = structure(logical(0), 
            shape = "maxItemsType", type = "integer", max = 1000L, 
            min = 1L), Marker = structure(logical(0), shape = "markerType", 
            type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+")), 
        shape = "SimulateCustomPolicyRequest", type = "structure")
    return(populate(args, shape))
}

simulate_custom_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EvaluationResults = structure(list(structure(list(EvalActionName = structure(logical(0), 
        shape = "ActionNameType", type = "string", max = 128L, 
        min = 3L), EvalResourceName = structure(logical(0), shape = "ResourceNameType", 
        type = "string", max = 2048L, min = 1L), EvalDecision = structure(logical(0), 
        shape = "PolicyEvaluationDecisionType", type = "string"), 
        MatchedStatements = structure(list(structure(list(SourcePolicyId = structure(logical(0), 
            shape = "PolicyIdentifierType", type = "string"), 
            SourcePolicyType = structure(logical(0), shape = "PolicySourceType", 
                type = "string"), StartPosition = structure(list(Line = structure(logical(0), 
                shape = "LineNumber", type = "integer"), Column = structure(logical(0), 
                shape = "ColumnNumber", type = "integer")), shape = "Position", 
                type = "structure"), EndPosition = structure(list(Line = structure(logical(0), 
                shape = "LineNumber", type = "integer"), Column = structure(logical(0), 
                shape = "ColumnNumber", type = "integer")), shape = "Position", 
                type = "structure")), shape = "Statement", type = "structure")), 
            shape = "StatementListType", type = "list"), MissingContextValues = structure(list(structure(logical(0), 
            shape = "ContextKeyNameType", type = "string", max = 256L, 
            min = 5L)), shape = "ContextKeyNamesResultListType", 
            type = "list"), OrganizationsDecisionDetail = structure(list(AllowedByOrganizations = structure(logical(0), 
            shape = "booleanType", type = "boolean")), shape = "OrganizationsDecisionDetail", 
            type = "structure"), EvalDecisionDetails = structure(list(structure(logical(0), 
            shape = "PolicyEvaluationDecisionType", type = "string")), 
            shape = "EvalDecisionDetailsType", type = "map"), 
        ResourceSpecificResults = structure(list(structure(list(EvalResourceName = structure(logical(0), 
            shape = "ResourceNameType", type = "string", max = 2048L, 
            min = 1L), EvalResourceDecision = structure(logical(0), 
            shape = "PolicyEvaluationDecisionType", type = "string"), 
            MatchedStatements = structure(list(structure(list(SourcePolicyId = structure(logical(0), 
                shape = "PolicyIdentifierType", type = "string"), 
                SourcePolicyType = structure(logical(0), shape = "PolicySourceType", 
                  type = "string"), StartPosition = structure(list(Line = structure(logical(0), 
                  shape = "LineNumber", type = "integer"), Column = structure(logical(0), 
                  shape = "ColumnNumber", type = "integer")), 
                  shape = "Position", type = "structure"), EndPosition = structure(list(Line = structure(logical(0), 
                  shape = "LineNumber", type = "integer"), Column = structure(logical(0), 
                  shape = "ColumnNumber", type = "integer")), 
                  shape = "Position", type = "structure")), shape = "Statement", 
                type = "structure")), shape = "StatementListType", 
                type = "list"), MissingContextValues = structure(list(structure(logical(0), 
                shape = "ContextKeyNameType", type = "string", 
                max = 256L, min = 5L)), shape = "ContextKeyNamesResultListType", 
                type = "list"), EvalDecisionDetails = structure(list(structure(logical(0), 
                shape = "PolicyEvaluationDecisionType", type = "string")), 
                shape = "EvalDecisionDetailsType", type = "map")), 
            shape = "ResourceSpecificResult", type = "structure")), 
            shape = "ResourceSpecificResultListType", type = "list")), 
        shape = "EvaluationResult", type = "structure")), shape = "EvaluationResultsListType", 
        type = "list"), IsTruncated = structure(logical(0), shape = "booleanType", 
        type = "boolean"), Marker = structure(logical(0), shape = "markerType", 
        type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+")), 
        shape = "SimulatePolicyResponse", type = "structure")
    return(populate(args, shape))
}

simulate_principal_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicySourceArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L), 
        PolicyInputList = structure(list(structure(logical(0), 
            shape = "policyDocumentType", type = "string", max = 131072L, 
            min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
            shape = "SimulationPolicyListType", type = "list"), 
        ActionNames = structure(list(structure(logical(0), shape = "ActionNameType", 
            type = "string", max = 128L, min = 3L)), shape = "ActionNameListType", 
            type = "list"), ResourceArns = structure(list(structure(logical(0), 
            shape = "ResourceNameType", type = "string", max = 2048L, 
            min = 1L)), shape = "ResourceNameListType", type = "list"), 
        ResourcePolicy = structure(logical(0), shape = "policyDocumentType", 
            type = "string", max = 131072L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        ResourceOwner = structure(logical(0), shape = "ResourceNameType", 
            type = "string", max = 2048L, min = 1L), CallerArn = structure(logical(0), 
            shape = "ResourceNameType", type = "string", max = 2048L, 
            min = 1L), ContextEntries = structure(list(structure(list(ContextKeyName = structure(logical(0), 
            shape = "ContextKeyNameType", type = "string", max = 256L, 
            min = 5L), ContextKeyValues = structure(list(structure(logical(0), 
            shape = "ContextKeyValueType", type = "string")), 
            shape = "ContextKeyValueListType", type = "list"), 
            ContextKeyType = structure(logical(0), shape = "ContextKeyTypeEnum", 
                type = "string")), shape = "ContextEntry", type = "structure")), 
            shape = "ContextEntryListType", type = "list"), ResourceHandlingOption = structure(logical(0), 
            shape = "ResourceHandlingOptionType", type = "string", 
            max = 64L, min = 1L), MaxItems = structure(logical(0), 
            shape = "maxItemsType", type = "integer", max = 1000L, 
            min = 1L), Marker = structure(logical(0), shape = "markerType", 
            type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+")), 
        shape = "SimulatePrincipalPolicyRequest", type = "structure")
    return(populate(args, shape))
}

simulate_principal_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EvaluationResults = structure(list(structure(list(EvalActionName = structure(logical(0), 
        shape = "ActionNameType", type = "string", max = 128L, 
        min = 3L), EvalResourceName = structure(logical(0), shape = "ResourceNameType", 
        type = "string", max = 2048L, min = 1L), EvalDecision = structure(logical(0), 
        shape = "PolicyEvaluationDecisionType", type = "string"), 
        MatchedStatements = structure(list(structure(list(SourcePolicyId = structure(logical(0), 
            shape = "PolicyIdentifierType", type = "string"), 
            SourcePolicyType = structure(logical(0), shape = "PolicySourceType", 
                type = "string"), StartPosition = structure(list(Line = structure(logical(0), 
                shape = "LineNumber", type = "integer"), Column = structure(logical(0), 
                shape = "ColumnNumber", type = "integer")), shape = "Position", 
                type = "structure"), EndPosition = structure(list(Line = structure(logical(0), 
                shape = "LineNumber", type = "integer"), Column = structure(logical(0), 
                shape = "ColumnNumber", type = "integer")), shape = "Position", 
                type = "structure")), shape = "Statement", type = "structure")), 
            shape = "StatementListType", type = "list"), MissingContextValues = structure(list(structure(logical(0), 
            shape = "ContextKeyNameType", type = "string", max = 256L, 
            min = 5L)), shape = "ContextKeyNamesResultListType", 
            type = "list"), OrganizationsDecisionDetail = structure(list(AllowedByOrganizations = structure(logical(0), 
            shape = "booleanType", type = "boolean")), shape = "OrganizationsDecisionDetail", 
            type = "structure"), EvalDecisionDetails = structure(list(structure(logical(0), 
            shape = "PolicyEvaluationDecisionType", type = "string")), 
            shape = "EvalDecisionDetailsType", type = "map"), 
        ResourceSpecificResults = structure(list(structure(list(EvalResourceName = structure(logical(0), 
            shape = "ResourceNameType", type = "string", max = 2048L, 
            min = 1L), EvalResourceDecision = structure(logical(0), 
            shape = "PolicyEvaluationDecisionType", type = "string"), 
            MatchedStatements = structure(list(structure(list(SourcePolicyId = structure(logical(0), 
                shape = "PolicyIdentifierType", type = "string"), 
                SourcePolicyType = structure(logical(0), shape = "PolicySourceType", 
                  type = "string"), StartPosition = structure(list(Line = structure(logical(0), 
                  shape = "LineNumber", type = "integer"), Column = structure(logical(0), 
                  shape = "ColumnNumber", type = "integer")), 
                  shape = "Position", type = "structure"), EndPosition = structure(list(Line = structure(logical(0), 
                  shape = "LineNumber", type = "integer"), Column = structure(logical(0), 
                  shape = "ColumnNumber", type = "integer")), 
                  shape = "Position", type = "structure")), shape = "Statement", 
                type = "structure")), shape = "StatementListType", 
                type = "list"), MissingContextValues = structure(list(structure(logical(0), 
                shape = "ContextKeyNameType", type = "string", 
                max = 256L, min = 5L)), shape = "ContextKeyNamesResultListType", 
                type = "list"), EvalDecisionDetails = structure(list(structure(logical(0), 
                shape = "PolicyEvaluationDecisionType", type = "string")), 
                shape = "EvalDecisionDetailsType", type = "map")), 
            shape = "ResourceSpecificResult", type = "structure")), 
            shape = "ResourceSpecificResultListType", type = "list")), 
        shape = "EvaluationResult", type = "structure")), shape = "EvaluationResultsListType", 
        type = "list"), IsTruncated = structure(logical(0), shape = "booleanType", 
        type = "boolean"), Marker = structure(logical(0), shape = "markerType", 
        type = "string", max = 320L, min = 1L, pattern = "[\\u0020-\\u00FF]+")), 
        shape = "SimulatePolicyResponse", type = "structure")
    return(populate(args, shape))
}

update_access_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), AccessKeyId = structure(logical(0), 
        shape = "accessKeyIdType", type = "string", max = 128L, 
        min = 16L, pattern = "[\\w]+"), Status = structure(logical(0), 
        shape = "statusType", type = "string")), shape = "UpdateAccessKeyRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_access_key_output <- function () 
{
    return(list())
}

update_account_password_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MinimumPasswordLength = structure(logical(0), 
        shape = "minimumPasswordLengthType", type = "integer", 
        max = 128L, min = 6L), RequireSymbols = structure(logical(0), 
        shape = "booleanType", type = "boolean"), RequireNumbers = structure(logical(0), 
        shape = "booleanType", type = "boolean"), RequireUppercaseCharacters = structure(logical(0), 
        shape = "booleanType", type = "boolean"), RequireLowercaseCharacters = structure(logical(0), 
        shape = "booleanType", type = "boolean"), AllowUsersToChangePassword = structure(logical(0), 
        shape = "booleanType", type = "boolean"), MaxPasswordAge = structure(logical(0), 
        shape = "maxPasswordAgeType", type = "integer", box = TRUE, 
        max = 1095L, min = 1L), PasswordReusePrevention = structure(logical(0), 
        shape = "passwordReusePreventionType", type = "integer", 
        box = TRUE, max = 24L, min = 1L), HardExpiry = structure(logical(0), 
        shape = "booleanObjectType", type = "boolean", box = TRUE)), 
        shape = "UpdateAccountPasswordPolicyRequest", type = "structure")
    return(populate(args, shape))
}

update_account_password_policy_output <- function () 
{
    return(list())
}

update_assume_role_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), PolicyDocument = structure(logical(0), 
        shape = "policyDocumentType", type = "string", max = 131072L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "UpdateAssumeRolePolicyRequest", type = "structure")
    return(populate(args, shape))
}

update_assume_role_policy_output <- function () 
{
    return(list())
}

update_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "groupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), NewPath = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        NewGroupName = structure(logical(0), shape = "groupNameType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+")), 
        shape = "UpdateGroupRequest", type = "structure")
    return(populate(args, shape))
}

update_group_output <- function () 
{
    return(list())
}

update_login_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), Password = structure(logical(0), 
        shape = "passwordType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+", 
        sensitive = TRUE), PasswordResetRequired = structure(logical(0), 
        shape = "booleanObjectType", type = "boolean", box = TRUE)), 
        shape = "UpdateLoginProfileRequest", type = "structure")
    return(populate(args, shape))
}

update_login_profile_output <- function () 
{
    return(list())
}

update_open_id_connect_provider_thumbprint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OpenIDConnectProviderArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L), 
        ThumbprintList = structure(list(structure(logical(0), 
            shape = "thumbprintType", type = "string", max = 40L, 
            min = 40L)), shape = "thumbprintListType", type = "list")), 
        shape = "UpdateOpenIDConnectProviderThumbprintRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_open_id_connect_provider_thumbprint_output <- function () 
{
    return(list())
}

update_role_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), Description = structure(logical(0), 
        shape = "roleDescriptionType", type = "string", max = 1000L, 
        pattern = "[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*"), 
        MaxSessionDuration = structure(logical(0), shape = "roleMaxSessionDurationType", 
            type = "integer", max = 43200L, min = 3600L)), shape = "UpdateRoleRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_role_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateRoleResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_role_description_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleName = structure(logical(0), 
        shape = "roleNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), Description = structure(logical(0), 
        shape = "roleDescriptionType", type = "string", max = 1000L, 
        pattern = "[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*")), 
        shape = "UpdateRoleDescriptionRequest", type = "structure")
    return(populate(args, shape))
}

update_role_description_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Role = structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        RoleName = structure(logical(0), shape = "roleNameType", 
            type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        RoleId = structure(logical(0), shape = "idType", type = "string", 
            max = 128L, min = 16L, pattern = "[\\w]+"), Arn = structure(logical(0), 
            shape = "arnType", type = "string", max = 2048L, 
            min = 20L), CreateDate = structure(logical(0), shape = "dateType", 
            type = "timestamp"), AssumeRolePolicyDocument = structure(logical(0), 
            shape = "policyDocumentType", type = "string", max = 131072L, 
            min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        Description = structure(logical(0), shape = "roleDescriptionType", 
            type = "string", max = 1000L, pattern = "[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*"), 
        MaxSessionDuration = structure(logical(0), shape = "roleMaxSessionDurationType", 
            type = "integer", max = 43200L, min = 3600L), PermissionsBoundary = structure(list(PermissionsBoundaryType = structure(logical(0), 
            shape = "PermissionsBoundaryAttachmentType", type = "string"), 
            PermissionsBoundaryArn = structure(logical(0), shape = "arnType", 
                type = "string", max = 2048L, min = 20L)), shape = "AttachedPermissionsBoundary", 
            type = "structure")), shape = "Role", type = "structure")), 
        shape = "UpdateRoleDescriptionResponse", type = "structure")
    return(populate(args, shape))
}

update_saml_provider_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SAMLMetadataDocument = structure(logical(0), 
        shape = "SAMLMetadataDocumentType", type = "string", 
        max = 10000000L, min = 1000L), SAMLProviderArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "UpdateSAMLProviderRequest", type = "structure")
    return(populate(args, shape))
}

update_saml_provider_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SAMLProviderArn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L)), 
        shape = "UpdateSAMLProviderResponse", type = "structure")
    return(populate(args, shape))
}

update_ssh_public_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), SSHPublicKeyId = structure(logical(0), 
        shape = "publicKeyIdType", type = "string", max = 128L, 
        min = 20L, pattern = "[\\w]+"), Status = structure(logical(0), 
        shape = "statusType", type = "string")), shape = "UpdateSSHPublicKeyRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_ssh_public_key_output <- function () 
{
    return(list())
}

update_server_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerCertificateName = structure(logical(0), 
        shape = "serverCertificateNameType", type = "string", 
        max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), NewPath = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        NewServerCertificateName = structure(logical(0), shape = "serverCertificateNameType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+")), 
        shape = "UpdateServerCertificateRequest", type = "structure")
    return(populate(args, shape))
}

update_server_certificate_output <- function () 
{
    return(list())
}

update_service_specific_credential_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), ServiceSpecificCredentialId = structure(logical(0), 
        shape = "serviceSpecificCredentialId", type = "string", 
        max = 128L, min = 20L, pattern = "[\\w]+"), Status = structure(logical(0), 
        shape = "statusType", type = "string")), shape = "UpdateServiceSpecificCredentialRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_service_specific_credential_output <- function () 
{
    return(list())
}

update_signing_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), CertificateId = structure(logical(0), 
        shape = "certificateIdType", type = "string", max = 128L, 
        min = 24L, pattern = "[\\w]+"), Status = structure(logical(0), 
        shape = "statusType", type = "string")), shape = "UpdateSigningCertificateRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_signing_certificate_output <- function () 
{
    return(list())
}

update_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), NewPath = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        NewUserName = structure(logical(0), shape = "userNameType", 
            type = "string", max = 64L, min = 1L, pattern = "[\\w+=,.@-]+")), 
        shape = "UpdateUserRequest", type = "structure")
    return(populate(args, shape))
}

update_user_output <- function () 
{
    return(list())
}

upload_ssh_public_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), SSHPublicKeyBody = structure(logical(0), 
        shape = "publicKeyMaterialType", type = "string", max = 16384L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "UploadSSHPublicKeyRequest", type = "structure")
    return(populate(args, shape))
}

upload_ssh_public_key_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SSHPublicKey = structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), SSHPublicKeyId = structure(logical(0), 
        shape = "publicKeyIdType", type = "string", max = 128L, 
        min = 20L, pattern = "[\\w]+"), Fingerprint = structure(logical(0), 
        shape = "publicKeyFingerprintType", type = "string", 
        max = 48L, min = 48L, pattern = "[:\\w]+"), SSHPublicKeyBody = structure(logical(0), 
        shape = "publicKeyMaterialType", type = "string", max = 16384L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        Status = structure(logical(0), shape = "statusType", 
            type = "string"), UploadDate = structure(logical(0), 
            shape = "dateType", type = "timestamp")), shape = "SSHPublicKey", 
        type = "structure")), shape = "UploadSSHPublicKeyResponse", 
        type = "structure")
    return(populate(args, shape))
}

upload_server_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Path = structure(logical(0), shape = "pathType", 
        type = "string", max = 512L, min = 1L, pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        ServerCertificateName = structure(logical(0), shape = "serverCertificateNameType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        CertificateBody = structure(logical(0), shape = "certificateBodyType", 
            type = "string", max = 16384L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        PrivateKey = structure(logical(0), shape = "privateKeyType", 
            type = "string", max = 16384L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+", 
            sensitive = TRUE), CertificateChain = structure(logical(0), 
            shape = "certificateChainType", type = "string", 
            max = 2097152L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "UploadServerCertificateRequest", type = "structure")
    return(populate(args, shape))
}

upload_server_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerCertificateMetadata = structure(list(Path = structure(logical(0), 
        shape = "pathType", type = "string", max = 512L, min = 1L, 
        pattern = "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"), 
        ServerCertificateName = structure(logical(0), shape = "serverCertificateNameType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+=,.@-]+"), 
        ServerCertificateId = structure(logical(0), shape = "idType", 
            type = "string", max = 128L, min = 16L, pattern = "[\\w]+"), 
        Arn = structure(logical(0), shape = "arnType", type = "string", 
            max = 2048L, min = 20L), UploadDate = structure(logical(0), 
            shape = "dateType", type = "timestamp"), Expiration = structure(logical(0), 
            shape = "dateType", type = "timestamp")), shape = "ServerCertificateMetadata", 
        type = "structure")), shape = "UploadServerCertificateResponse", 
        type = "structure")
    return(populate(args, shape))
}

upload_signing_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserName = structure(logical(0), 
        shape = "existingUserNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]+"), CertificateBody = structure(logical(0), 
        shape = "certificateBodyType", type = "string", max = 16384L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "UploadSigningCertificateRequest", type = "structure")
    return(populate(args, shape))
}

upload_signing_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Certificate = structure(list(UserName = structure(logical(0), 
        shape = "userNameType", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w+=,.@-]+"), CertificateId = structure(logical(0), 
        shape = "certificateIdType", type = "string", max = 128L, 
        min = 24L, pattern = "[\\w]+"), CertificateBody = structure(logical(0), 
        shape = "certificateBodyType", type = "string", max = 16384L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        Status = structure(logical(0), shape = "statusType", 
            type = "string"), UploadDate = structure(logical(0), 
            shape = "dateType", type = "timestamp")), shape = "SigningCertificate", 
        type = "structure")), shape = "UploadSigningCertificateResponse", 
        type = "structure")
    return(populate(args, shape))
}
