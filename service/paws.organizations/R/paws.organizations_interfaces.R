accept_handshake_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HandshakeId = structure(logical(0), 
        shape = "HandshakeId", type = "string", pattern = "^h-[0-9a-z]{8,32}$")), 
        shape = "AcceptHandshakeRequest", type = "structure")
    return(populate(args, shape))
}

accept_handshake_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Handshake = structure(list(Id = structure(logical(0), 
        shape = "HandshakeId", type = "string", pattern = "^h-[0-9a-z]{8,32}$"), 
        Arn = structure(logical(0), shape = "HandshakeArn", type = "string", 
            pattern = "^arn:aws:organizations::\\d{12}:handshake\\/o-[a-z0-9]{10,32}\\/[a-z_]{1,32}\\/h-[0-9a-z]{8,32}"), 
        Parties = structure(list(structure(list(Id = structure(logical(0), 
            shape = "HandshakePartyId", type = "string", max = 64L, 
            min = 1L, sensitive = TRUE), Type = structure(logical(0), 
            shape = "HandshakePartyType", type = "string")), 
            shape = "HandshakeParty", type = "structure")), shape = "HandshakeParties", 
            type = "list"), State = structure(logical(0), shape = "HandshakeState", 
            type = "string"), RequestedTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), ExpirationTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Action = structure(logical(0), 
            shape = "ActionType", type = "string"), Resources = structure(list(structure(list(Value = structure(logical(0), 
            shape = "HandshakeResourceValue", type = "string", 
            sensitive = TRUE), Type = structure(logical(0), shape = "HandshakeResourceType", 
            type = "string"), Resources = structure(logical(0), 
            shape = "HandshakeResources", type = "list")), shape = "HandshakeResource", 
            type = "structure")), shape = "HandshakeResources", 
            type = "list")), shape = "Handshake", type = "structure")), 
        shape = "AcceptHandshakeResponse", type = "structure")
    return(populate(args, shape))
}

attach_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyId = structure(logical(0), 
        shape = "PolicyId", type = "string", pattern = "^p-[0-9a-zA-Z_]{8,128}$"), 
        TargetId = structure(logical(0), shape = "PolicyTargetId", 
            type = "string", pattern = "^(r-[0-9a-z]{4,32})|(\\d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$")), 
        shape = "AttachPolicyRequest", type = "structure")
    return(populate(args, shape))
}

attach_policy_output <- function () 
{
    return(list())
}

cancel_handshake_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HandshakeId = structure(logical(0), 
        shape = "HandshakeId", type = "string", pattern = "^h-[0-9a-z]{8,32}$")), 
        shape = "CancelHandshakeRequest", type = "structure")
    return(populate(args, shape))
}

cancel_handshake_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Handshake = structure(list(Id = structure(logical(0), 
        shape = "HandshakeId", type = "string", pattern = "^h-[0-9a-z]{8,32}$"), 
        Arn = structure(logical(0), shape = "HandshakeArn", type = "string", 
            pattern = "^arn:aws:organizations::\\d{12}:handshake\\/o-[a-z0-9]{10,32}\\/[a-z_]{1,32}\\/h-[0-9a-z]{8,32}"), 
        Parties = structure(list(structure(list(Id = structure(logical(0), 
            shape = "HandshakePartyId", type = "string", max = 64L, 
            min = 1L, sensitive = TRUE), Type = structure(logical(0), 
            shape = "HandshakePartyType", type = "string")), 
            shape = "HandshakeParty", type = "structure")), shape = "HandshakeParties", 
            type = "list"), State = structure(logical(0), shape = "HandshakeState", 
            type = "string"), RequestedTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), ExpirationTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Action = structure(logical(0), 
            shape = "ActionType", type = "string"), Resources = structure(list(structure(list(Value = structure(logical(0), 
            shape = "HandshakeResourceValue", type = "string", 
            sensitive = TRUE), Type = structure(logical(0), shape = "HandshakeResourceType", 
            type = "string"), Resources = structure(logical(0), 
            shape = "HandshakeResources", type = "list")), shape = "HandshakeResource", 
            type = "structure")), shape = "HandshakeResources", 
            type = "list")), shape = "Handshake", type = "structure")), 
        shape = "CancelHandshakeResponse", type = "structure")
    return(populate(args, shape))
}

create_account_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Email = structure(logical(0), shape = "Email", 
        type = "string", max = 64L, min = 6L, pattern = "[^\\s@]+@[^\\s@]+\\.[^\\s@]+", 
        sensitive = TRUE), AccountName = structure(logical(0), 
        shape = "AccountName", type = "string", max = 50L, min = 1L, 
        pattern = "[\\u0020-\\u007E]+", sensitive = TRUE), RoleName = structure(logical(0), 
        shape = "RoleName", type = "string", pattern = "[\\w+=,.@-]{1,64}"), 
        IamUserAccessToBilling = structure(logical(0), shape = "IAMUserAccessToBilling", 
            type = "string")), shape = "CreateAccountRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_account_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CreateAccountStatus = structure(list(Id = structure(logical(0), 
        shape = "CreateAccountRequestId", type = "string", pattern = "^car-[a-z0-9]{8,32}$"), 
        AccountName = structure(logical(0), shape = "AccountName", 
            type = "string", max = 50L, min = 1L, pattern = "[\\u0020-\\u007E]+", 
            sensitive = TRUE), State = structure(logical(0), 
            shape = "CreateAccountState", type = "string"), RequestedTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), CompletedTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), AccountId = structure(logical(0), 
            shape = "AccountId", type = "string", pattern = "^\\d{12}$"), 
        FailureReason = structure(logical(0), shape = "CreateAccountFailureReason", 
            type = "string")), shape = "CreateAccountStatus", 
        type = "structure")), shape = "CreateAccountResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_organization_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FeatureSet = structure(logical(0), 
        shape = "OrganizationFeatureSet", type = "string")), 
        shape = "CreateOrganizationRequest", type = "structure")
    return(populate(args, shape))
}

create_organization_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Organization = structure(list(Id = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^o-[a-z0-9]{10,32}$"), 
        Arn = structure(logical(0), shape = "OrganizationArn", 
            type = "string", pattern = "^arn:aws:organizations::\\d{12}:organization\\/o-[a-z0-9]{10,32}"), 
        FeatureSet = structure(logical(0), shape = "OrganizationFeatureSet", 
            type = "string"), MasterAccountArn = structure(logical(0), 
            shape = "AccountArn", type = "string", pattern = "^arn:aws:organizations::\\d{12}:account\\/o-[a-z0-9]{10,32}\\/\\d{12}"), 
        MasterAccountId = structure(logical(0), shape = "AccountId", 
            type = "string", pattern = "^\\d{12}$"), MasterAccountEmail = structure(logical(0), 
            shape = "Email", type = "string", max = 64L, min = 6L, 
            pattern = "[^\\s@]+@[^\\s@]+\\.[^\\s@]+", sensitive = TRUE), 
        AvailablePolicyTypes = structure(list(structure(list(Type = structure(logical(0), 
            shape = "PolicyType", type = "string"), Status = structure(logical(0), 
            shape = "PolicyTypeStatus", type = "string")), shape = "PolicyTypeSummary", 
            type = "structure")), shape = "PolicyTypes", type = "list")), 
        shape = "Organization", type = "structure")), shape = "CreateOrganizationResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_organizational_unit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ParentId = structure(logical(0), 
        shape = "ParentId", type = "string", pattern = "^(r-[0-9a-z]{4,32})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"), 
        Name = structure(logical(0), shape = "OrganizationalUnitName", 
            type = "string", max = 128L, min = 1L)), shape = "CreateOrganizationalUnitRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_organizational_unit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationalUnit = structure(list(Id = structure(logical(0), 
        shape = "OrganizationalUnitId", type = "string", pattern = "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"), 
        Arn = structure(logical(0), shape = "OrganizationalUnitArn", 
            type = "string", pattern = "^arn:aws:organizations::\\d{12}:ou\\/o-[a-z0-9]{10,32}\\/ou-[0-9a-z]{4,32}-[0-9a-z]{8,32}"), 
        Name = structure(logical(0), shape = "OrganizationalUnitName", 
            type = "string", max = 128L, min = 1L)), shape = "OrganizationalUnit", 
        type = "structure")), shape = "CreateOrganizationalUnitResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Content = structure(logical(0), shape = "PolicyContent", 
        type = "string", max = 1000000L, min = 1L), Description = structure(logical(0), 
        shape = "PolicyDescription", type = "string", max = 512L), 
        Name = structure(logical(0), shape = "PolicyName", type = "string", 
            max = 128L, min = 1L), Type = structure(logical(0), 
            shape = "PolicyType", type = "string")), shape = "CreatePolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policy = structure(list(PolicySummary = structure(list(Id = structure(logical(0), 
        shape = "PolicyId", type = "string", pattern = "^p-[0-9a-zA-Z_]{8,128}$"), 
        Arn = structure(logical(0), shape = "PolicyArn", type = "string", 
            pattern = "^(arn:aws:organizations::\\d{12}:policy\\/o-[a-z0-9]{10,32}\\/[0-9a-z_]+\\/p-[0-9a-z]{10,32})|(arn:aws:organizations::aws:policy\\/[0-9a-z_]+\\/p-[0-9a-zA-Z_]{10,128})"), 
        Name = structure(logical(0), shape = "PolicyName", type = "string", 
            max = 128L, min = 1L), Description = structure(logical(0), 
            shape = "PolicyDescription", type = "string", max = 512L), 
        Type = structure(logical(0), shape = "PolicyType", type = "string"), 
        AwsManaged = structure(logical(0), shape = "AwsManagedPolicy", 
            type = "boolean")), shape = "PolicySummary", type = "structure"), 
        Content = structure(logical(0), shape = "PolicyContent", 
            type = "string", max = 1000000L, min = 1L)), shape = "Policy", 
        type = "structure")), shape = "CreatePolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

decline_handshake_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HandshakeId = structure(logical(0), 
        shape = "HandshakeId", type = "string", pattern = "^h-[0-9a-z]{8,32}$")), 
        shape = "DeclineHandshakeRequest", type = "structure")
    return(populate(args, shape))
}

decline_handshake_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Handshake = structure(list(Id = structure(logical(0), 
        shape = "HandshakeId", type = "string", pattern = "^h-[0-9a-z]{8,32}$"), 
        Arn = structure(logical(0), shape = "HandshakeArn", type = "string", 
            pattern = "^arn:aws:organizations::\\d{12}:handshake\\/o-[a-z0-9]{10,32}\\/[a-z_]{1,32}\\/h-[0-9a-z]{8,32}"), 
        Parties = structure(list(structure(list(Id = structure(logical(0), 
            shape = "HandshakePartyId", type = "string", max = 64L, 
            min = 1L, sensitive = TRUE), Type = structure(logical(0), 
            shape = "HandshakePartyType", type = "string")), 
            shape = "HandshakeParty", type = "structure")), shape = "HandshakeParties", 
            type = "list"), State = structure(logical(0), shape = "HandshakeState", 
            type = "string"), RequestedTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), ExpirationTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Action = structure(logical(0), 
            shape = "ActionType", type = "string"), Resources = structure(list(structure(list(Value = structure(logical(0), 
            shape = "HandshakeResourceValue", type = "string", 
            sensitive = TRUE), Type = structure(logical(0), shape = "HandshakeResourceType", 
            type = "string"), Resources = structure(logical(0), 
            shape = "HandshakeResources", type = "list")), shape = "HandshakeResource", 
            type = "structure")), shape = "HandshakeResources", 
            type = "list")), shape = "Handshake", type = "structure")), 
        shape = "DeclineHandshakeResponse", type = "structure")
    return(populate(args, shape))
}

delete_organization_input <- function () 
{
    return(list())
}

delete_organization_output <- function () 
{
    return(list())
}

delete_organizational_unit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationalUnitId = structure(logical(0), 
        shape = "OrganizationalUnitId", type = "string", pattern = "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$")), 
        shape = "DeleteOrganizationalUnitRequest", type = "structure")
    return(populate(args, shape))
}

delete_organizational_unit_output <- function () 
{
    return(list())
}

delete_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyId = structure(logical(0), 
        shape = "PolicyId", type = "string", pattern = "^p-[0-9a-zA-Z_]{8,128}$")), 
        shape = "DeletePolicyRequest", type = "structure")
    return(populate(args, shape))
}

delete_policy_output <- function () 
{
    return(list())
}

describe_account_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "^\\d{12}$")), 
        shape = "DescribeAccountRequest", type = "structure")
    return(populate(args, shape))
}

describe_account_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Account = structure(list(Id = structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "^\\d{12}$"), 
        Arn = structure(logical(0), shape = "AccountArn", type = "string", 
            pattern = "^arn:aws:organizations::\\d{12}:account\\/o-[a-z0-9]{10,32}\\/\\d{12}"), 
        Email = structure(logical(0), shape = "Email", type = "string", 
            max = 64L, min = 6L, pattern = "[^\\s@]+@[^\\s@]+\\.[^\\s@]+", 
            sensitive = TRUE), Name = structure(logical(0), shape = "AccountName", 
            type = "string", max = 50L, min = 1L, pattern = "[\\u0020-\\u007E]+", 
            sensitive = TRUE), Status = structure(logical(0), 
            shape = "AccountStatus", type = "string"), JoinedMethod = structure(logical(0), 
            shape = "AccountJoinedMethod", type = "string"), 
        JoinedTimestamp = structure(logical(0), shape = "Timestamp", 
            type = "timestamp")), shape = "Account", type = "structure")), 
        shape = "DescribeAccountResponse", type = "structure")
    return(populate(args, shape))
}

describe_create_account_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CreateAccountRequestId = structure(logical(0), 
        shape = "CreateAccountRequestId", type = "string", pattern = "^car-[a-z0-9]{8,32}$")), 
        shape = "DescribeCreateAccountStatusRequest", type = "structure")
    return(populate(args, shape))
}

describe_create_account_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CreateAccountStatus = structure(list(Id = structure(logical(0), 
        shape = "CreateAccountRequestId", type = "string", pattern = "^car-[a-z0-9]{8,32}$"), 
        AccountName = structure(logical(0), shape = "AccountName", 
            type = "string", max = 50L, min = 1L, pattern = "[\\u0020-\\u007E]+", 
            sensitive = TRUE), State = structure(logical(0), 
            shape = "CreateAccountState", type = "string"), RequestedTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), CompletedTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), AccountId = structure(logical(0), 
            shape = "AccountId", type = "string", pattern = "^\\d{12}$"), 
        FailureReason = structure(logical(0), shape = "CreateAccountFailureReason", 
            type = "string")), shape = "CreateAccountStatus", 
        type = "structure")), shape = "DescribeCreateAccountStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_handshake_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HandshakeId = structure(logical(0), 
        shape = "HandshakeId", type = "string", pattern = "^h-[0-9a-z]{8,32}$")), 
        shape = "DescribeHandshakeRequest", type = "structure")
    return(populate(args, shape))
}

describe_handshake_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Handshake = structure(list(Id = structure(logical(0), 
        shape = "HandshakeId", type = "string", pattern = "^h-[0-9a-z]{8,32}$"), 
        Arn = structure(logical(0), shape = "HandshakeArn", type = "string", 
            pattern = "^arn:aws:organizations::\\d{12}:handshake\\/o-[a-z0-9]{10,32}\\/[a-z_]{1,32}\\/h-[0-9a-z]{8,32}"), 
        Parties = structure(list(structure(list(Id = structure(logical(0), 
            shape = "HandshakePartyId", type = "string", max = 64L, 
            min = 1L, sensitive = TRUE), Type = structure(logical(0), 
            shape = "HandshakePartyType", type = "string")), 
            shape = "HandshakeParty", type = "structure")), shape = "HandshakeParties", 
            type = "list"), State = structure(logical(0), shape = "HandshakeState", 
            type = "string"), RequestedTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), ExpirationTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Action = structure(logical(0), 
            shape = "ActionType", type = "string"), Resources = structure(list(structure(list(Value = structure(logical(0), 
            shape = "HandshakeResourceValue", type = "string", 
            sensitive = TRUE), Type = structure(logical(0), shape = "HandshakeResourceType", 
            type = "string"), Resources = structure(logical(0), 
            shape = "HandshakeResources", type = "list")), shape = "HandshakeResource", 
            type = "structure")), shape = "HandshakeResources", 
            type = "list")), shape = "Handshake", type = "structure")), 
        shape = "DescribeHandshakeResponse", type = "structure")
    return(populate(args, shape))
}

describe_organization_input <- function () 
{
    return(list())
}

describe_organization_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Organization = structure(list(Id = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^o-[a-z0-9]{10,32}$"), 
        Arn = structure(logical(0), shape = "OrganizationArn", 
            type = "string", pattern = "^arn:aws:organizations::\\d{12}:organization\\/o-[a-z0-9]{10,32}"), 
        FeatureSet = structure(logical(0), shape = "OrganizationFeatureSet", 
            type = "string"), MasterAccountArn = structure(logical(0), 
            shape = "AccountArn", type = "string", pattern = "^arn:aws:organizations::\\d{12}:account\\/o-[a-z0-9]{10,32}\\/\\d{12}"), 
        MasterAccountId = structure(logical(0), shape = "AccountId", 
            type = "string", pattern = "^\\d{12}$"), MasterAccountEmail = structure(logical(0), 
            shape = "Email", type = "string", max = 64L, min = 6L, 
            pattern = "[^\\s@]+@[^\\s@]+\\.[^\\s@]+", sensitive = TRUE), 
        AvailablePolicyTypes = structure(list(structure(list(Type = structure(logical(0), 
            shape = "PolicyType", type = "string"), Status = structure(logical(0), 
            shape = "PolicyTypeStatus", type = "string")), shape = "PolicyTypeSummary", 
            type = "structure")), shape = "PolicyTypes", type = "list")), 
        shape = "Organization", type = "structure")), shape = "DescribeOrganizationResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_organizational_unit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationalUnitId = structure(logical(0), 
        shape = "OrganizationalUnitId", type = "string", pattern = "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$")), 
        shape = "DescribeOrganizationalUnitRequest", type = "structure")
    return(populate(args, shape))
}

describe_organizational_unit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationalUnit = structure(list(Id = structure(logical(0), 
        shape = "OrganizationalUnitId", type = "string", pattern = "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"), 
        Arn = structure(logical(0), shape = "OrganizationalUnitArn", 
            type = "string", pattern = "^arn:aws:organizations::\\d{12}:ou\\/o-[a-z0-9]{10,32}\\/ou-[0-9a-z]{4,32}-[0-9a-z]{8,32}"), 
        Name = structure(logical(0), shape = "OrganizationalUnitName", 
            type = "string", max = 128L, min = 1L)), shape = "OrganizationalUnit", 
        type = "structure")), shape = "DescribeOrganizationalUnitResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyId = structure(logical(0), 
        shape = "PolicyId", type = "string", pattern = "^p-[0-9a-zA-Z_]{8,128}$")), 
        shape = "DescribePolicyRequest", type = "structure")
    return(populate(args, shape))
}

describe_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policy = structure(list(PolicySummary = structure(list(Id = structure(logical(0), 
        shape = "PolicyId", type = "string", pattern = "^p-[0-9a-zA-Z_]{8,128}$"), 
        Arn = structure(logical(0), shape = "PolicyArn", type = "string", 
            pattern = "^(arn:aws:organizations::\\d{12}:policy\\/o-[a-z0-9]{10,32}\\/[0-9a-z_]+\\/p-[0-9a-z]{10,32})|(arn:aws:organizations::aws:policy\\/[0-9a-z_]+\\/p-[0-9a-zA-Z_]{10,128})"), 
        Name = structure(logical(0), shape = "PolicyName", type = "string", 
            max = 128L, min = 1L), Description = structure(logical(0), 
            shape = "PolicyDescription", type = "string", max = 512L), 
        Type = structure(logical(0), shape = "PolicyType", type = "string"), 
        AwsManaged = structure(logical(0), shape = "AwsManagedPolicy", 
            type = "boolean")), shape = "PolicySummary", type = "structure"), 
        Content = structure(logical(0), shape = "PolicyContent", 
            type = "string", max = 1000000L, min = 1L)), shape = "Policy", 
        type = "structure")), shape = "DescribePolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

detach_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyId = structure(logical(0), 
        shape = "PolicyId", type = "string", pattern = "^p-[0-9a-zA-Z_]{8,128}$"), 
        TargetId = structure(logical(0), shape = "PolicyTargetId", 
            type = "string", pattern = "^(r-[0-9a-z]{4,32})|(\\d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$")), 
        shape = "DetachPolicyRequest", type = "structure")
    return(populate(args, shape))
}

detach_policy_output <- function () 
{
    return(list())
}

disable_aws_service_access_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServicePrincipal = structure(logical(0), 
        shape = "ServicePrincipal", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]*")), shape = "DisableAWSServiceAccessRequest", 
        type = "structure")
    return(populate(args, shape))
}

disable_aws_service_access_output <- function () 
{
    return(list())
}

disable_policy_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RootId = structure(logical(0), shape = "RootId", 
        type = "string", pattern = "^r-[0-9a-z]{4,32}$"), PolicyType = structure(logical(0), 
        shape = "PolicyType", type = "string")), shape = "DisablePolicyTypeRequest", 
        type = "structure")
    return(populate(args, shape))
}

disable_policy_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Root = structure(list(Id = structure(logical(0), 
        shape = "RootId", type = "string", pattern = "^r-[0-9a-z]{4,32}$"), 
        Arn = structure(logical(0), shape = "RootArn", type = "string", 
            pattern = "^arn:aws:organizations::\\d{12}:root\\/o-[a-z0-9]{10,32}\\/r-[0-9a-z]{4,32}"), 
        Name = structure(logical(0), shape = "RootName", type = "string", 
            max = 128L, min = 1L), PolicyTypes = structure(list(structure(list(Type = structure(logical(0), 
            shape = "PolicyType", type = "string"), Status = structure(logical(0), 
            shape = "PolicyTypeStatus", type = "string")), shape = "PolicyTypeSummary", 
            type = "structure")), shape = "PolicyTypes", type = "list")), 
        shape = "Root", type = "structure")), shape = "DisablePolicyTypeResponse", 
        type = "structure")
    return(populate(args, shape))
}

enable_aws_service_access_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServicePrincipal = structure(logical(0), 
        shape = "ServicePrincipal", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]*")), shape = "EnableAWSServiceAccessRequest", 
        type = "structure")
    return(populate(args, shape))
}

enable_aws_service_access_output <- function () 
{
    return(list())
}

enable_all_features_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "EnableAllFeaturesRequest", 
        type = "structure")
    return(populate(args, shape))
}

enable_all_features_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Handshake = structure(list(Id = structure(logical(0), 
        shape = "HandshakeId", type = "string", pattern = "^h-[0-9a-z]{8,32}$"), 
        Arn = structure(logical(0), shape = "HandshakeArn", type = "string", 
            pattern = "^arn:aws:organizations::\\d{12}:handshake\\/o-[a-z0-9]{10,32}\\/[a-z_]{1,32}\\/h-[0-9a-z]{8,32}"), 
        Parties = structure(list(structure(list(Id = structure(logical(0), 
            shape = "HandshakePartyId", type = "string", max = 64L, 
            min = 1L, sensitive = TRUE), Type = structure(logical(0), 
            shape = "HandshakePartyType", type = "string")), 
            shape = "HandshakeParty", type = "structure")), shape = "HandshakeParties", 
            type = "list"), State = structure(logical(0), shape = "HandshakeState", 
            type = "string"), RequestedTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), ExpirationTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Action = structure(logical(0), 
            shape = "ActionType", type = "string"), Resources = structure(list(structure(list(Value = structure(logical(0), 
            shape = "HandshakeResourceValue", type = "string", 
            sensitive = TRUE), Type = structure(logical(0), shape = "HandshakeResourceType", 
            type = "string"), Resources = structure(logical(0), 
            shape = "HandshakeResources", type = "list")), shape = "HandshakeResource", 
            type = "structure")), shape = "HandshakeResources", 
            type = "list")), shape = "Handshake", type = "structure")), 
        shape = "EnableAllFeaturesResponse", type = "structure")
    return(populate(args, shape))
}

enable_policy_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RootId = structure(logical(0), shape = "RootId", 
        type = "string", pattern = "^r-[0-9a-z]{4,32}$"), PolicyType = structure(logical(0), 
        shape = "PolicyType", type = "string")), shape = "EnablePolicyTypeRequest", 
        type = "structure")
    return(populate(args, shape))
}

enable_policy_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Root = structure(list(Id = structure(logical(0), 
        shape = "RootId", type = "string", pattern = "^r-[0-9a-z]{4,32}$"), 
        Arn = structure(logical(0), shape = "RootArn", type = "string", 
            pattern = "^arn:aws:organizations::\\d{12}:root\\/o-[a-z0-9]{10,32}\\/r-[0-9a-z]{4,32}"), 
        Name = structure(logical(0), shape = "RootName", type = "string", 
            max = 128L, min = 1L), PolicyTypes = structure(list(structure(list(Type = structure(logical(0), 
            shape = "PolicyType", type = "string"), Status = structure(logical(0), 
            shape = "PolicyTypeStatus", type = "string")), shape = "PolicyTypeSummary", 
            type = "structure")), shape = "PolicyTypes", type = "list")), 
        shape = "Root", type = "structure")), shape = "EnablePolicyTypeResponse", 
        type = "structure")
    return(populate(args, shape))
}

invite_account_to_organization_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Target = structure(list(Id = structure(logical(0), 
        shape = "HandshakePartyId", type = "string", max = 64L, 
        min = 1L, sensitive = TRUE), Type = structure(logical(0), 
        shape = "HandshakePartyType", type = "string")), shape = "HandshakeParty", 
        type = "structure"), Notes = structure(logical(0), shape = "HandshakeNotes", 
        type = "string", max = 1024L, sensitive = TRUE)), shape = "InviteAccountToOrganizationRequest", 
        type = "structure")
    return(populate(args, shape))
}

invite_account_to_organization_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Handshake = structure(list(Id = structure(logical(0), 
        shape = "HandshakeId", type = "string", pattern = "^h-[0-9a-z]{8,32}$"), 
        Arn = structure(logical(0), shape = "HandshakeArn", type = "string", 
            pattern = "^arn:aws:organizations::\\d{12}:handshake\\/o-[a-z0-9]{10,32}\\/[a-z_]{1,32}\\/h-[0-9a-z]{8,32}"), 
        Parties = structure(list(structure(list(Id = structure(logical(0), 
            shape = "HandshakePartyId", type = "string", max = 64L, 
            min = 1L, sensitive = TRUE), Type = structure(logical(0), 
            shape = "HandshakePartyType", type = "string")), 
            shape = "HandshakeParty", type = "structure")), shape = "HandshakeParties", 
            type = "list"), State = structure(logical(0), shape = "HandshakeState", 
            type = "string"), RequestedTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), ExpirationTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Action = structure(logical(0), 
            shape = "ActionType", type = "string"), Resources = structure(list(structure(list(Value = structure(logical(0), 
            shape = "HandshakeResourceValue", type = "string", 
            sensitive = TRUE), Type = structure(logical(0), shape = "HandshakeResourceType", 
            type = "string"), Resources = structure(logical(0), 
            shape = "HandshakeResources", type = "list")), shape = "HandshakeResource", 
            type = "structure")), shape = "HandshakeResources", 
            type = "list")), shape = "Handshake", type = "structure")), 
        shape = "InviteAccountToOrganizationResponse", type = "structure")
    return(populate(args, shape))
}

leave_organization_input <- function () 
{
    return(list())
}

leave_organization_output <- function () 
{
    return(list())
}

list_aws_service_access_for_organization_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", box = TRUE, max = 20L, 
        min = 1L)), shape = "ListAWSServiceAccessForOrganizationRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_aws_service_access_for_organization_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnabledServicePrincipals = structure(list(structure(list(ServicePrincipal = structure(logical(0), 
        shape = "ServicePrincipal", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=,.@-]*"), DateEnabled = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "EnabledServicePrincipal", 
        type = "structure")), shape = "EnabledServicePrincipals", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListAWSServiceAccessForOrganizationResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_accounts_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", box = TRUE, max = 20L, 
        min = 1L)), shape = "ListAccountsRequest", type = "structure")
    return(populate(args, shape))
}

list_accounts_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Accounts = structure(list(structure(list(Id = structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "^\\d{12}$"), 
        Arn = structure(logical(0), shape = "AccountArn", type = "string", 
            pattern = "^arn:aws:organizations::\\d{12}:account\\/o-[a-z0-9]{10,32}\\/\\d{12}"), 
        Email = structure(logical(0), shape = "Email", type = "string", 
            max = 64L, min = 6L, pattern = "[^\\s@]+@[^\\s@]+\\.[^\\s@]+", 
            sensitive = TRUE), Name = structure(logical(0), shape = "AccountName", 
            type = "string", max = 50L, min = 1L, pattern = "[\\u0020-\\u007E]+", 
            sensitive = TRUE), Status = structure(logical(0), 
            shape = "AccountStatus", type = "string"), JoinedMethod = structure(logical(0), 
            shape = "AccountJoinedMethod", type = "string"), 
        JoinedTimestamp = structure(logical(0), shape = "Timestamp", 
            type = "timestamp")), shape = "Account", type = "structure")), 
        shape = "Accounts", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "ListAccountsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_accounts_for_parent_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ParentId = structure(logical(0), 
        shape = "ParentId", type = "string", pattern = "^(r-[0-9a-z]{4,32})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", box = TRUE, 
            max = 20L, min = 1L)), shape = "ListAccountsForParentRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_accounts_for_parent_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Accounts = structure(list(structure(list(Id = structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "^\\d{12}$"), 
        Arn = structure(logical(0), shape = "AccountArn", type = "string", 
            pattern = "^arn:aws:organizations::\\d{12}:account\\/o-[a-z0-9]{10,32}\\/\\d{12}"), 
        Email = structure(logical(0), shape = "Email", type = "string", 
            max = 64L, min = 6L, pattern = "[^\\s@]+@[^\\s@]+\\.[^\\s@]+", 
            sensitive = TRUE), Name = structure(logical(0), shape = "AccountName", 
            type = "string", max = 50L, min = 1L, pattern = "[\\u0020-\\u007E]+", 
            sensitive = TRUE), Status = structure(logical(0), 
            shape = "AccountStatus", type = "string"), JoinedMethod = structure(logical(0), 
            shape = "AccountJoinedMethod", type = "string"), 
        JoinedTimestamp = structure(logical(0), shape = "Timestamp", 
            type = "timestamp")), shape = "Account", type = "structure")), 
        shape = "Accounts", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "ListAccountsForParentResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_children_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ParentId = structure(logical(0), 
        shape = "ParentId", type = "string", pattern = "^(r-[0-9a-z]{4,32})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"), 
        ChildType = structure(logical(0), shape = "ChildType", 
            type = "string"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", box = TRUE, 
            max = 20L, min = 1L)), shape = "ListChildrenRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_children_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Children = structure(list(structure(list(Id = structure(logical(0), 
        shape = "ChildId", type = "string", pattern = "^(\\d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"), 
        Type = structure(logical(0), shape = "ChildType", type = "string")), 
        shape = "Child", type = "structure")), shape = "Children", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListChildrenResponse", type = "structure")
    return(populate(args, shape))
}

list_create_account_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(States = structure(list(structure(logical(0), 
        shape = "CreateAccountState", type = "string")), shape = "CreateAccountStates", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", box = TRUE, max = 20L, 
        min = 1L)), shape = "ListCreateAccountStatusRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_create_account_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CreateAccountStatuses = structure(list(structure(list(Id = structure(logical(0), 
        shape = "CreateAccountRequestId", type = "string", pattern = "^car-[a-z0-9]{8,32}$"), 
        AccountName = structure(logical(0), shape = "AccountName", 
            type = "string", max = 50L, min = 1L, pattern = "[\\u0020-\\u007E]+", 
            sensitive = TRUE), State = structure(logical(0), 
            shape = "CreateAccountState", type = "string"), RequestedTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), CompletedTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), AccountId = structure(logical(0), 
            shape = "AccountId", type = "string", pattern = "^\\d{12}$"), 
        FailureReason = structure(logical(0), shape = "CreateAccountFailureReason", 
            type = "string")), shape = "CreateAccountStatus", 
        type = "structure")), shape = "CreateAccountStatuses", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListCreateAccountStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_handshakes_for_account_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filter = structure(list(ActionType = structure(logical(0), 
        shape = "ActionType", type = "string"), ParentHandshakeId = structure(logical(0), 
        shape = "HandshakeId", type = "string", pattern = "^h-[0-9a-z]{8,32}$")), 
        shape = "HandshakeFilter", type = "structure"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", box = TRUE, max = 20L, 
        min = 1L)), shape = "ListHandshakesForAccountRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_handshakes_for_account_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Handshakes = structure(list(structure(list(Id = structure(logical(0), 
        shape = "HandshakeId", type = "string", pattern = "^h-[0-9a-z]{8,32}$"), 
        Arn = structure(logical(0), shape = "HandshakeArn", type = "string", 
            pattern = "^arn:aws:organizations::\\d{12}:handshake\\/o-[a-z0-9]{10,32}\\/[a-z_]{1,32}\\/h-[0-9a-z]{8,32}"), 
        Parties = structure(list(structure(list(Id = structure(logical(0), 
            shape = "HandshakePartyId", type = "string", max = 64L, 
            min = 1L, sensitive = TRUE), Type = structure(logical(0), 
            shape = "HandshakePartyType", type = "string")), 
            shape = "HandshakeParty", type = "structure")), shape = "HandshakeParties", 
            type = "list"), State = structure(logical(0), shape = "HandshakeState", 
            type = "string"), RequestedTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), ExpirationTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Action = structure(logical(0), 
            shape = "ActionType", type = "string"), Resources = structure(list(structure(list(Value = structure(logical(0), 
            shape = "HandshakeResourceValue", type = "string", 
            sensitive = TRUE), Type = structure(logical(0), shape = "HandshakeResourceType", 
            type = "string"), Resources = structure(logical(0), 
            shape = "HandshakeResources", type = "list")), shape = "HandshakeResource", 
            type = "structure")), shape = "HandshakeResources", 
            type = "list")), shape = "Handshake", type = "structure")), 
        shape = "Handshakes", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "ListHandshakesForAccountResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_handshakes_for_organization_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filter = structure(list(ActionType = structure(logical(0), 
        shape = "ActionType", type = "string"), ParentHandshakeId = structure(logical(0), 
        shape = "HandshakeId", type = "string", pattern = "^h-[0-9a-z]{8,32}$")), 
        shape = "HandshakeFilter", type = "structure"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", box = TRUE, max = 20L, 
        min = 1L)), shape = "ListHandshakesForOrganizationRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_handshakes_for_organization_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Handshakes = structure(list(structure(list(Id = structure(logical(0), 
        shape = "HandshakeId", type = "string", pattern = "^h-[0-9a-z]{8,32}$"), 
        Arn = structure(logical(0), shape = "HandshakeArn", type = "string", 
            pattern = "^arn:aws:organizations::\\d{12}:handshake\\/o-[a-z0-9]{10,32}\\/[a-z_]{1,32}\\/h-[0-9a-z]{8,32}"), 
        Parties = structure(list(structure(list(Id = structure(logical(0), 
            shape = "HandshakePartyId", type = "string", max = 64L, 
            min = 1L, sensitive = TRUE), Type = structure(logical(0), 
            shape = "HandshakePartyType", type = "string")), 
            shape = "HandshakeParty", type = "structure")), shape = "HandshakeParties", 
            type = "list"), State = structure(logical(0), shape = "HandshakeState", 
            type = "string"), RequestedTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), ExpirationTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Action = structure(logical(0), 
            shape = "ActionType", type = "string"), Resources = structure(list(structure(list(Value = structure(logical(0), 
            shape = "HandshakeResourceValue", type = "string", 
            sensitive = TRUE), Type = structure(logical(0), shape = "HandshakeResourceType", 
            type = "string"), Resources = structure(logical(0), 
            shape = "HandshakeResources", type = "list")), shape = "HandshakeResource", 
            type = "structure")), shape = "HandshakeResources", 
            type = "list")), shape = "Handshake", type = "structure")), 
        shape = "Handshakes", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "ListHandshakesForOrganizationResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_organizational_units_for_parent_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ParentId = structure(logical(0), 
        shape = "ParentId", type = "string", pattern = "^(r-[0-9a-z]{4,32})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", box = TRUE, 
            max = 20L, min = 1L)), shape = "ListOrganizationalUnitsForParentRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_organizational_units_for_parent_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationalUnits = structure(list(structure(list(Id = structure(logical(0), 
        shape = "OrganizationalUnitId", type = "string", pattern = "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"), 
        Arn = structure(logical(0), shape = "OrganizationalUnitArn", 
            type = "string", pattern = "^arn:aws:organizations::\\d{12}:ou\\/o-[a-z0-9]{10,32}\\/ou-[0-9a-z]{4,32}-[0-9a-z]{8,32}"), 
        Name = structure(logical(0), shape = "OrganizationalUnitName", 
            type = "string", max = 128L, min = 1L)), shape = "OrganizationalUnit", 
        type = "structure")), shape = "OrganizationalUnits", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListOrganizationalUnitsForParentResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_parents_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChildId = structure(logical(0), shape = "ChildId", 
        type = "string", pattern = "^(\\d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", box = TRUE, 
            max = 20L, min = 1L)), shape = "ListParentsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_parents_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Parents = structure(list(structure(list(Id = structure(logical(0), 
        shape = "ParentId", type = "string", pattern = "^(r-[0-9a-z]{4,32})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"), 
        Type = structure(logical(0), shape = "ParentType", type = "string")), 
        shape = "Parent", type = "structure")), shape = "Parents", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListParentsResponse", type = "structure")
    return(populate(args, shape))
}

list_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filter = structure(logical(0), shape = "PolicyType", 
        type = "string"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", box = TRUE, max = 20L, 
        min = 1L)), shape = "ListPoliciesRequest", type = "structure")
    return(populate(args, shape))
}

list_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policies = structure(list(structure(list(Id = structure(logical(0), 
        shape = "PolicyId", type = "string", pattern = "^p-[0-9a-zA-Z_]{8,128}$"), 
        Arn = structure(logical(0), shape = "PolicyArn", type = "string", 
            pattern = "^(arn:aws:organizations::\\d{12}:policy\\/o-[a-z0-9]{10,32}\\/[0-9a-z_]+\\/p-[0-9a-z]{10,32})|(arn:aws:organizations::aws:policy\\/[0-9a-z_]+\\/p-[0-9a-zA-Z_]{10,128})"), 
        Name = structure(logical(0), shape = "PolicyName", type = "string", 
            max = 128L, min = 1L), Description = structure(logical(0), 
            shape = "PolicyDescription", type = "string", max = 512L), 
        Type = structure(logical(0), shape = "PolicyType", type = "string"), 
        AwsManaged = structure(logical(0), shape = "AwsManagedPolicy", 
            type = "boolean")), shape = "PolicySummary", type = "structure")), 
        shape = "Policies", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "ListPoliciesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_policies_for_target_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetId = structure(logical(0), 
        shape = "PolicyTargetId", type = "string", pattern = "^(r-[0-9a-z]{4,32})|(\\d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"), 
        Filter = structure(logical(0), shape = "PolicyType", 
            type = "string"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", box = TRUE, 
            max = 20L, min = 1L)), shape = "ListPoliciesForTargetRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_policies_for_target_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policies = structure(list(structure(list(Id = structure(logical(0), 
        shape = "PolicyId", type = "string", pattern = "^p-[0-9a-zA-Z_]{8,128}$"), 
        Arn = structure(logical(0), shape = "PolicyArn", type = "string", 
            pattern = "^(arn:aws:organizations::\\d{12}:policy\\/o-[a-z0-9]{10,32}\\/[0-9a-z_]+\\/p-[0-9a-z]{10,32})|(arn:aws:organizations::aws:policy\\/[0-9a-z_]+\\/p-[0-9a-zA-Z_]{10,128})"), 
        Name = structure(logical(0), shape = "PolicyName", type = "string", 
            max = 128L, min = 1L), Description = structure(logical(0), 
            shape = "PolicyDescription", type = "string", max = 512L), 
        Type = structure(logical(0), shape = "PolicyType", type = "string"), 
        AwsManaged = structure(logical(0), shape = "AwsManagedPolicy", 
            type = "boolean")), shape = "PolicySummary", type = "structure")), 
        shape = "Policies", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "ListPoliciesForTargetResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_roots_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", box = TRUE, max = 20L, 
        min = 1L)), shape = "ListRootsRequest", type = "structure")
    return(populate(args, shape))
}

list_roots_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Roots = structure(list(structure(list(Id = structure(logical(0), 
        shape = "RootId", type = "string", pattern = "^r-[0-9a-z]{4,32}$"), 
        Arn = structure(logical(0), shape = "RootArn", type = "string", 
            pattern = "^arn:aws:organizations::\\d{12}:root\\/o-[a-z0-9]{10,32}\\/r-[0-9a-z]{4,32}"), 
        Name = structure(logical(0), shape = "RootName", type = "string", 
            max = 128L, min = 1L), PolicyTypes = structure(list(structure(list(Type = structure(logical(0), 
            shape = "PolicyType", type = "string"), Status = structure(logical(0), 
            shape = "PolicyTypeStatus", type = "string")), shape = "PolicyTypeSummary", 
            type = "structure")), shape = "PolicyTypes", type = "list")), 
        shape = "Root", type = "structure")), shape = "Roots", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListRootsResponse", type = "structure")
    return(populate(args, shape))
}

list_targets_for_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyId = structure(logical(0), 
        shape = "PolicyId", type = "string", pattern = "^p-[0-9a-zA-Z_]{8,128}$"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", box = TRUE, 
            max = 20L, min = 1L)), shape = "ListTargetsForPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_targets_for_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Targets = structure(list(structure(list(TargetId = structure(logical(0), 
        shape = "PolicyTargetId", type = "string", pattern = "^(r-[0-9a-z]{4,32})|(\\d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"), 
        Arn = structure(logical(0), shape = "GenericArn", type = "string", 
            pattern = "^arn:aws:organizations::.+:.+"), Name = structure(logical(0), 
            shape = "TargetName", type = "string", max = 128L, 
            min = 1L), Type = structure(logical(0), shape = "TargetType", 
            type = "string")), shape = "PolicyTargetSummary", 
        type = "structure")), shape = "PolicyTargets", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "ListTargetsForPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

move_account_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "^\\d{12}$"), 
        SourceParentId = structure(logical(0), shape = "ParentId", 
            type = "string", pattern = "^(r-[0-9a-z]{4,32})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"), 
        DestinationParentId = structure(logical(0), shape = "ParentId", 
            type = "string", pattern = "^(r-[0-9a-z]{4,32})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$")), 
        shape = "MoveAccountRequest", type = "structure")
    return(populate(args, shape))
}

move_account_output <- function () 
{
    return(list())
}

remove_account_from_organization_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "^\\d{12}$")), 
        shape = "RemoveAccountFromOrganizationRequest", type = "structure")
    return(populate(args, shape))
}

remove_account_from_organization_output <- function () 
{
    return(list())
}

update_organizational_unit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationalUnitId = structure(logical(0), 
        shape = "OrganizationalUnitId", type = "string", pattern = "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"), 
        Name = structure(logical(0), shape = "OrganizationalUnitName", 
            type = "string", max = 128L, min = 1L)), shape = "UpdateOrganizationalUnitRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_organizational_unit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationalUnit = structure(list(Id = structure(logical(0), 
        shape = "OrganizationalUnitId", type = "string", pattern = "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"), 
        Arn = structure(logical(0), shape = "OrganizationalUnitArn", 
            type = "string", pattern = "^arn:aws:organizations::\\d{12}:ou\\/o-[a-z0-9]{10,32}\\/ou-[0-9a-z]{4,32}-[0-9a-z]{8,32}"), 
        Name = structure(logical(0), shape = "OrganizationalUnitName", 
            type = "string", max = 128L, min = 1L)), shape = "OrganizationalUnit", 
        type = "structure")), shape = "UpdateOrganizationalUnitResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyId = structure(logical(0), 
        shape = "PolicyId", type = "string", pattern = "^p-[0-9a-zA-Z_]{8,128}$"), 
        Name = structure(logical(0), shape = "PolicyName", type = "string", 
            max = 128L, min = 1L), Description = structure(logical(0), 
            shape = "PolicyDescription", type = "string", max = 512L), 
        Content = structure(logical(0), shape = "PolicyContent", 
            type = "string", max = 1000000L, min = 1L)), shape = "UpdatePolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policy = structure(list(PolicySummary = structure(list(Id = structure(logical(0), 
        shape = "PolicyId", type = "string", pattern = "^p-[0-9a-zA-Z_]{8,128}$"), 
        Arn = structure(logical(0), shape = "PolicyArn", type = "string", 
            pattern = "^(arn:aws:organizations::\\d{12}:policy\\/o-[a-z0-9]{10,32}\\/[0-9a-z_]+\\/p-[0-9a-z]{10,32})|(arn:aws:organizations::aws:policy\\/[0-9a-z_]+\\/p-[0-9a-zA-Z_]{10,128})"), 
        Name = structure(logical(0), shape = "PolicyName", type = "string", 
            max = 128L, min = 1L), Description = structure(logical(0), 
            shape = "PolicyDescription", type = "string", max = 512L), 
        Type = structure(logical(0), shape = "PolicyType", type = "string"), 
        AwsManaged = structure(logical(0), shape = "AwsManagedPolicy", 
            type = "boolean")), shape = "PolicySummary", type = "structure"), 
        Content = structure(logical(0), shape = "PolicyContent", 
            type = "string", max = 1000000L, min = 1L)), shape = "Policy", 
        type = "structure")), shape = "UpdatePolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}
