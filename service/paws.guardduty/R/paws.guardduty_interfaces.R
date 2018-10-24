accept_invitation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), InvitationId = structure(logical(0), 
        shape = "InvitationId", locationName = "invitationId", 
        type = "string"), MasterId = structure(logical(0), shape = "MasterId", 
        locationName = "masterId", type = "string")), shape = "AcceptInvitationRequest", 
        type = "structure")
    return(populate(args, shape))
}

accept_invitation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AcceptInvitationResponse", 
        type = "structure")
    return(populate(args, shape))
}

archive_findings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), FindingIds = structure(list(structure(logical(0), 
        shape = "FindingId", type = "string")), shape = "FindingIds", 
        locationName = "findingIds", type = "list")), shape = "ArchiveFindingsRequest", 
        type = "structure")
    return(populate(args, shape))
}

archive_findings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ArchiveFindingsResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_detector_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientToken = structure(logical(0), 
        shape = "__stringMin0Max64", locationName = "clientToken", 
        idempotencyToken = TRUE, type = "string", min = 0L, max = 64L), 
        Enable = structure(logical(0), shape = "Enable", locationName = "enable", 
            type = "boolean"), FindingPublishingFrequency = structure(logical(0), 
            shape = "FindingPublishingFrequency", locationName = "findingPublishingFrequency", 
            type = "string")), shape = "CreateDetectorRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_detector_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "DetectorId", locationName = "detectorId", type = "string")), 
        shape = "CreateDetectorResponse", type = "structure")
    return(populate(args, shape))
}

create_filter_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Action = structure(logical(0), shape = "FilterAction", 
        locationName = "action", type = "string"), ClientToken = structure(logical(0), 
        shape = "__stringMin0Max64", locationName = "clientToken", 
        idempotencyToken = TRUE, type = "string", min = 0L, max = 64L), 
        Description = structure(logical(0), shape = "FilterDescription", 
            locationName = "description", type = "string"), DetectorId = structure(logical(0), 
            shape = "__string", location = "uri", locationName = "detectorId", 
            type = "string"), FindingCriteria = structure(list(Criterion = structure(list(structure(list(Eq = structure(list(structure(logical(0), 
            shape = "__string", type = "string")), shape = "Eq", 
            locationName = "eq", type = "list"), Gt = structure(logical(0), 
            shape = "__integer", locationName = "gt", type = "integer"), 
            Gte = structure(logical(0), shape = "__integer", 
                locationName = "gte", type = "integer"), Lt = structure(logical(0), 
                shape = "__integer", locationName = "lt", type = "integer"), 
            Lte = structure(logical(0), shape = "__integer", 
                locationName = "lte", type = "integer"), Neq = structure(list(structure(logical(0), 
                shape = "__string", type = "string")), shape = "Neq", 
                locationName = "neq", type = "list")), shape = "Condition", 
            type = "structure")), shape = "__mapOfCondition", 
            locationName = "criterion", type = "map")), shape = "FindingCriteria", 
            locationName = "findingCriteria", type = "structure"), 
        Name = structure(logical(0), shape = "FilterName", locationName = "name", 
            type = "string"), Rank = structure(logical(0), shape = "FilterRank", 
            locationName = "rank", type = "integer")), shape = "CreateFilterRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_filter_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "FilterName", 
        locationName = "name", type = "string")), shape = "CreateFilterResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_ip_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Activate = structure(logical(0), 
        shape = "Activate", locationName = "activate", type = "boolean"), 
        ClientToken = structure(logical(0), shape = "__stringMin0Max64", 
            locationName = "clientToken", idempotencyToken = TRUE, 
            type = "string", min = 0L, max = 64L), DetectorId = structure(logical(0), 
            shape = "__string", location = "uri", locationName = "detectorId", 
            type = "string"), Format = structure(logical(0), 
            shape = "IpSetFormat", locationName = "format", type = "string"), 
        Location = structure(logical(0), shape = "Location", 
            locationName = "location", type = "string"), Name = structure(logical(0), 
            shape = "Name", locationName = "name", type = "string")), 
        shape = "CreateIPSetRequest", type = "structure")
    return(populate(args, shape))
}

create_ip_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IpSetId = structure(logical(0), shape = "IpSetId", 
        locationName = "ipSetId", type = "string")), shape = "CreateIPSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_members_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountDetails = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", locationName = "accountId", type = "string"), 
        Email = structure(logical(0), shape = "Email", locationName = "email", 
            type = "string")), shape = "AccountDetail", type = "structure")), 
        shape = "AccountDetails", locationName = "accountDetails", 
        type = "list"), DetectorId = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "detectorId", type = "string")), 
        shape = "CreateMembersRequest", type = "structure")
    return(populate(args, shape))
}

create_members_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UnprocessedAccounts = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "__string", locationName = "accountId", type = "string"), 
        Result = structure(logical(0), shape = "__string", locationName = "result", 
            type = "string")), shape = "UnprocessedAccount", 
        type = "structure")), shape = "UnprocessedAccounts", 
        locationName = "unprocessedAccounts", type = "list")), 
        shape = "CreateMembersResponse", type = "structure")
    return(populate(args, shape))
}

create_sample_findings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), FindingTypes = structure(list(structure(logical(0), 
        shape = "FindingType", type = "string")), shape = "FindingTypes", 
        locationName = "findingTypes", type = "list")), shape = "CreateSampleFindingsRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_sample_findings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateSampleFindingsResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_threat_intel_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Activate = structure(logical(0), 
        shape = "Activate", locationName = "activate", type = "boolean"), 
        ClientToken = structure(logical(0), shape = "__stringMin0Max64", 
            locationName = "clientToken", idempotencyToken = TRUE, 
            type = "string", min = 0L, max = 64L), DetectorId = structure(logical(0), 
            shape = "__string", location = "uri", locationName = "detectorId", 
            type = "string"), Format = structure(logical(0), 
            shape = "ThreatIntelSetFormat", locationName = "format", 
            type = "string"), Location = structure(logical(0), 
            shape = "Location", locationName = "location", type = "string"), 
        Name = structure(logical(0), shape = "Name", locationName = "name", 
            type = "string")), shape = "CreateThreatIntelSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_threat_intel_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThreatIntelSetId = structure(logical(0), 
        shape = "ThreatIntelSetId", locationName = "threatIntelSetId", 
        type = "string")), shape = "CreateThreatIntelSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

decline_invitations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountIds = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "AccountIds", 
        locationName = "accountIds", type = "list")), shape = "DeclineInvitationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

decline_invitations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UnprocessedAccounts = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "__string", locationName = "accountId", type = "string"), 
        Result = structure(logical(0), shape = "__string", locationName = "result", 
            type = "string")), shape = "UnprocessedAccount", 
        type = "structure")), shape = "UnprocessedAccounts", 
        locationName = "unprocessedAccounts", type = "list")), 
        shape = "DeclineInvitationsResponse", type = "structure")
    return(populate(args, shape))
}

delete_detector_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string")), shape = "DeleteDetectorRequest", type = "structure")
    return(populate(args, shape))
}

delete_detector_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteDetectorResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_filter_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), FilterName = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "filterName", 
        type = "string")), shape = "DeleteFilterRequest", type = "structure")
    return(populate(args, shape))
}

delete_filter_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteFilterResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_ip_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), IpSetId = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "ipSetId", type = "string")), 
        shape = "DeleteIPSetRequest", type = "structure")
    return(populate(args, shape))
}

delete_ip_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteIPSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_invitations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountIds = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "AccountIds", 
        locationName = "accountIds", type = "list")), shape = "DeleteInvitationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_invitations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UnprocessedAccounts = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "__string", locationName = "accountId", type = "string"), 
        Result = structure(logical(0), shape = "__string", locationName = "result", 
            type = "string")), shape = "UnprocessedAccount", 
        type = "structure")), shape = "UnprocessedAccounts", 
        locationName = "unprocessedAccounts", type = "list")), 
        shape = "DeleteInvitationsResponse", type = "structure")
    return(populate(args, shape))
}

delete_members_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountIds = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "AccountIds", 
        locationName = "accountIds", type = "list"), DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string")), shape = "DeleteMembersRequest", type = "structure")
    return(populate(args, shape))
}

delete_members_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UnprocessedAccounts = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "__string", locationName = "accountId", type = "string"), 
        Result = structure(logical(0), shape = "__string", locationName = "result", 
            type = "string")), shape = "UnprocessedAccount", 
        type = "structure")), shape = "UnprocessedAccounts", 
        locationName = "unprocessedAccounts", type = "list")), 
        shape = "DeleteMembersResponse", type = "structure")
    return(populate(args, shape))
}

delete_threat_intel_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), ThreatIntelSetId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "threatIntelSetId", 
        type = "string")), shape = "DeleteThreatIntelSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_threat_intel_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteThreatIntelSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_from_master_account_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string")), shape = "DisassociateFromMasterAccountRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_from_master_account_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateFromMasterAccountResponse", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_members_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountIds = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "AccountIds", 
        locationName = "accountIds", type = "list"), DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string")), shape = "DisassociateMembersRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_members_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UnprocessedAccounts = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "__string", locationName = "accountId", type = "string"), 
        Result = structure(logical(0), shape = "__string", locationName = "result", 
            type = "string")), shape = "UnprocessedAccount", 
        type = "structure")), shape = "UnprocessedAccounts", 
        locationName = "unprocessedAccounts", type = "list")), 
        shape = "DisassociateMembersResponse", type = "structure")
    return(populate(args, shape))
}

get_detector_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string")), shape = "GetDetectorRequest", type = "structure")
    return(populate(args, shape))
}

get_detector_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CreatedAt = structure(logical(0), 
        shape = "CreatedAt", locationName = "createdAt", type = "string"), 
        FindingPublishingFrequency = structure(logical(0), shape = "FindingPublishingFrequency", 
            locationName = "findingPublishingFrequency", type = "string"), 
        ServiceRole = structure(logical(0), shape = "ServiceRole", 
            locationName = "serviceRole", type = "string"), Status = structure(logical(0), 
            shape = "DetectorStatus", locationName = "status", 
            type = "string"), UpdatedAt = structure(logical(0), 
            shape = "UpdatedAt", locationName = "updatedAt", 
            type = "string")), shape = "GetDetectorResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_filter_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), FilterName = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "filterName", 
        type = "string")), shape = "GetFilterRequest", type = "structure")
    return(populate(args, shape))
}

get_filter_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Action = structure(logical(0), shape = "FilterAction", 
        locationName = "action", type = "string"), Description = structure(logical(0), 
        shape = "FilterDescription", locationName = "description", 
        type = "string"), FindingCriteria = structure(list(Criterion = structure(list(structure(list(Eq = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "Eq", 
        locationName = "eq", type = "list"), Gt = structure(logical(0), 
        shape = "__integer", locationName = "gt", type = "integer"), 
        Gte = structure(logical(0), shape = "__integer", locationName = "gte", 
            type = "integer"), Lt = structure(logical(0), shape = "__integer", 
            locationName = "lt", type = "integer"), Lte = structure(logical(0), 
            shape = "__integer", locationName = "lte", type = "integer"), 
        Neq = structure(list(structure(logical(0), shape = "__string", 
            type = "string")), shape = "Neq", locationName = "neq", 
            type = "list")), shape = "Condition", type = "structure")), 
        shape = "__mapOfCondition", locationName = "criterion", 
        type = "map")), shape = "FindingCriteria", locationName = "findingCriteria", 
        type = "structure"), Name = structure(logical(0), shape = "FilterName", 
        locationName = "name", type = "string"), Rank = structure(logical(0), 
        shape = "FilterRank", locationName = "rank", type = "integer")), 
        shape = "GetFilterResponse", type = "structure")
    return(populate(args, shape))
}

get_findings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), FindingIds = structure(list(structure(logical(0), 
        shape = "FindingId", type = "string")), shape = "FindingIds", 
        locationName = "findingIds", type = "list"), SortCriteria = structure(list(AttributeName = structure(logical(0), 
        shape = "__string", locationName = "attributeName", type = "string"), 
        OrderBy = structure(logical(0), shape = "OrderBy", locationName = "orderBy", 
            type = "string")), shape = "SortCriteria", locationName = "sortCriteria", 
        type = "structure")), shape = "GetFindingsRequest", type = "structure")
    return(populate(args, shape))
}

get_findings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Findings = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "__string", locationName = "accountId", type = "string"), 
        Arn = structure(logical(0), shape = "__string", locationName = "arn", 
            type = "string"), Confidence = structure(logical(0), 
            shape = "__double", locationName = "confidence", 
            type = "double"), CreatedAt = structure(logical(0), 
            shape = "CreatedAt", locationName = "createdAt", 
            type = "string"), Description = structure(logical(0), 
            shape = "__string", locationName = "description", 
            type = "string"), Id = structure(logical(0), shape = "__string", 
            locationName = "id", type = "string"), Partition = structure(logical(0), 
            shape = "__string", locationName = "partition", type = "string"), 
        Region = structure(logical(0), shape = "__string", locationName = "region", 
            type = "string"), Resource = structure(list(AccessKeyDetails = structure(list(AccessKeyId = structure(logical(0), 
            shape = "__string", locationName = "accessKeyId", 
            type = "string"), PrincipalId = structure(logical(0), 
            shape = "__string", locationName = "principalId", 
            type = "string"), UserName = structure(logical(0), 
            shape = "__string", locationName = "userName", type = "string"), 
            UserType = structure(logical(0), shape = "__string", 
                locationName = "userType", type = "string")), 
            shape = "AccessKeyDetails", locationName = "accessKeyDetails", 
            type = "structure"), InstanceDetails = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "__string", locationName = "availabilityZone", 
            type = "string"), IamInstanceProfile = structure(list(Arn = structure(logical(0), 
            shape = "__string", locationName = "arn", type = "string"), 
            Id = structure(logical(0), shape = "__string", locationName = "id", 
                type = "string")), shape = "IamInstanceProfile", 
            locationName = "iamInstanceProfile", type = "structure"), 
            ImageDescription = structure(logical(0), shape = "__string", 
                locationName = "imageDescription", type = "string"), 
            ImageId = structure(logical(0), shape = "__string", 
                locationName = "imageId", type = "string"), InstanceId = structure(logical(0), 
                shape = "__string", locationName = "instanceId", 
                type = "string"), InstanceState = structure(logical(0), 
                shape = "__string", locationName = "instanceState", 
                type = "string"), InstanceType = structure(logical(0), 
                shape = "__string", locationName = "instanceType", 
                type = "string"), LaunchTime = structure(logical(0), 
                shape = "__string", locationName = "launchTime", 
                type = "string"), NetworkInterfaces = structure(list(structure(list(Ipv6Addresses = structure(list(structure(logical(0), 
                shape = "Ipv6Address", type = "string")), shape = "Ipv6Addresses", 
                locationName = "ipv6Addresses", type = "list"), 
                NetworkInterfaceId = structure(logical(0), shape = "NetworkInterfaceId", 
                  locationName = "networkInterfaceId", type = "string"), 
                PrivateDnsName = structure(logical(0), shape = "PrivateDnsName", 
                  locationName = "privateDnsName", type = "string"), 
                PrivateIpAddress = structure(logical(0), shape = "PrivateIpAddress", 
                  locationName = "privateIpAddress", type = "string"), 
                PrivateIpAddresses = structure(list(structure(list(PrivateDnsName = structure(logical(0), 
                  shape = "PrivateDnsName", locationName = "privateDnsName", 
                  type = "string"), PrivateIpAddress = structure(logical(0), 
                  shape = "PrivateIpAddress", locationName = "privateIpAddress", 
                  type = "string")), shape = "PrivateIpAddressDetails", 
                  type = "structure")), shape = "PrivateIpAddresses", 
                  locationName = "privateIpAddresses", type = "list"), 
                PublicDnsName = structure(logical(0), shape = "__string", 
                  locationName = "publicDnsName", type = "string"), 
                PublicIp = structure(logical(0), shape = "__string", 
                  locationName = "publicIp", type = "string"), 
                SecurityGroups = structure(list(structure(list(GroupId = structure(logical(0), 
                  shape = "__string", locationName = "groupId", 
                  type = "string"), GroupName = structure(logical(0), 
                  shape = "__string", locationName = "groupName", 
                  type = "string")), shape = "SecurityGroup", 
                  type = "structure")), shape = "SecurityGroups", 
                  locationName = "securityGroups", type = "list"), 
                SubnetId = structure(logical(0), shape = "__string", 
                  locationName = "subnetId", type = "string"), 
                VpcId = structure(logical(0), shape = "__string", 
                  locationName = "vpcId", type = "string")), 
                shape = "NetworkInterface", type = "structure")), 
                shape = "NetworkInterfaces", locationName = "networkInterfaces", 
                type = "list"), Platform = structure(logical(0), 
                shape = "__string", locationName = "platform", 
                type = "string"), ProductCodes = structure(list(structure(list(Code = structure(logical(0), 
                shape = "__string", locationName = "code", type = "string"), 
                ProductType = structure(logical(0), shape = "__string", 
                  locationName = "productType", type = "string")), 
                shape = "ProductCode", type = "structure")), 
                shape = "ProductCodes", locationName = "productCodes", 
                type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
                shape = "__string", locationName = "key", type = "string"), 
                Value = structure(logical(0), shape = "__string", 
                  locationName = "value", type = "string")), 
                shape = "Tag", type = "structure")), shape = "Tags", 
                locationName = "tags", type = "list")), shape = "InstanceDetails", 
            locationName = "instanceDetails", type = "structure"), 
            ResourceType = structure(logical(0), shape = "__string", 
                locationName = "resourceType", type = "string")), 
            shape = "Resource", locationName = "resource", type = "structure"), 
        SchemaVersion = structure(logical(0), shape = "__string", 
            locationName = "schemaVersion", type = "string"), 
        Service = structure(list(Action = structure(list(ActionType = structure(logical(0), 
            shape = "__string", locationName = "actionType", 
            type = "string"), AwsApiCallAction = structure(list(Api = structure(logical(0), 
            shape = "__string", locationName = "api", type = "string"), 
            CallerType = structure(logical(0), shape = "__string", 
                locationName = "callerType", type = "string"), 
            DomainDetails = structure(list(), shape = "DomainDetails", 
                locationName = "domainDetails", type = "structure"), 
            RemoteIpDetails = structure(list(City = structure(list(CityName = structure(logical(0), 
                shape = "__string", locationName = "cityName", 
                type = "string")), shape = "City", locationName = "city", 
                type = "structure"), Country = structure(list(CountryCode = structure(logical(0), 
                shape = "__string", locationName = "countryCode", 
                type = "string"), CountryName = structure(logical(0), 
                shape = "__string", locationName = "countryName", 
                type = "string")), shape = "Country", locationName = "country", 
                type = "structure"), GeoLocation = structure(list(Lat = structure(logical(0), 
                shape = "__double", locationName = "lat", type = "double"), 
                Lon = structure(logical(0), shape = "__double", 
                  locationName = "lon", type = "double")), shape = "GeoLocation", 
                locationName = "geoLocation", type = "structure"), 
                IpAddressV4 = structure(logical(0), shape = "__string", 
                  locationName = "ipAddressV4", type = "string"), 
                Organization = structure(list(Asn = structure(logical(0), 
                  shape = "__string", locationName = "asn", type = "string"), 
                  AsnOrg = structure(logical(0), shape = "__string", 
                    locationName = "asnOrg", type = "string"), 
                  Isp = structure(logical(0), shape = "__string", 
                    locationName = "isp", type = "string"), Org = structure(logical(0), 
                    shape = "__string", locationName = "org", 
                    type = "string")), shape = "Organization", 
                  locationName = "organization", type = "structure")), 
                shape = "RemoteIpDetails", locationName = "remoteIpDetails", 
                type = "structure"), ServiceName = structure(logical(0), 
                shape = "__string", locationName = "serviceName", 
                type = "string")), shape = "AwsApiCallAction", 
            locationName = "awsApiCallAction", type = "structure"), 
            DnsRequestAction = structure(list(Domain = structure(logical(0), 
                shape = "Domain", locationName = "domain", type = "string")), 
                shape = "DnsRequestAction", locationName = "dnsRequestAction", 
                type = "structure"), NetworkConnectionAction = structure(list(Blocked = structure(logical(0), 
                shape = "__boolean", locationName = "blocked", 
                type = "boolean"), ConnectionDirection = structure(logical(0), 
                shape = "__string", locationName = "connectionDirection", 
                type = "string"), LocalPortDetails = structure(list(Port = structure(logical(0), 
                shape = "__integer", locationName = "port", type = "integer"), 
                PortName = structure(logical(0), shape = "__string", 
                  locationName = "portName", type = "string")), 
                shape = "LocalPortDetails", locationName = "localPortDetails", 
                type = "structure"), Protocol = structure(logical(0), 
                shape = "__string", locationName = "protocol", 
                type = "string"), RemoteIpDetails = structure(list(City = structure(list(CityName = structure(logical(0), 
                shape = "__string", locationName = "cityName", 
                type = "string")), shape = "City", locationName = "city", 
                type = "structure"), Country = structure(list(CountryCode = structure(logical(0), 
                shape = "__string", locationName = "countryCode", 
                type = "string"), CountryName = structure(logical(0), 
                shape = "__string", locationName = "countryName", 
                type = "string")), shape = "Country", locationName = "country", 
                type = "structure"), GeoLocation = structure(list(Lat = structure(logical(0), 
                shape = "__double", locationName = "lat", type = "double"), 
                Lon = structure(logical(0), shape = "__double", 
                  locationName = "lon", type = "double")), shape = "GeoLocation", 
                locationName = "geoLocation", type = "structure"), 
                IpAddressV4 = structure(logical(0), shape = "__string", 
                  locationName = "ipAddressV4", type = "string"), 
                Organization = structure(list(Asn = structure(logical(0), 
                  shape = "__string", locationName = "asn", type = "string"), 
                  AsnOrg = structure(logical(0), shape = "__string", 
                    locationName = "asnOrg", type = "string"), 
                  Isp = structure(logical(0), shape = "__string", 
                    locationName = "isp", type = "string"), Org = structure(logical(0), 
                    shape = "__string", locationName = "org", 
                    type = "string")), shape = "Organization", 
                  locationName = "organization", type = "structure")), 
                shape = "RemoteIpDetails", locationName = "remoteIpDetails", 
                type = "structure"), RemotePortDetails = structure(list(Port = structure(logical(0), 
                shape = "__integer", locationName = "port", type = "integer"), 
                PortName = structure(logical(0), shape = "__string", 
                  locationName = "portName", type = "string")), 
                shape = "RemotePortDetails", locationName = "remotePortDetails", 
                type = "structure")), shape = "NetworkConnectionAction", 
                locationName = "networkConnectionAction", type = "structure"), 
            PortProbeAction = structure(list(Blocked = structure(logical(0), 
                shape = "__boolean", locationName = "blocked", 
                type = "boolean"), PortProbeDetails = structure(list(structure(list(LocalPortDetails = structure(list(Port = structure(logical(0), 
                shape = "__integer", locationName = "port", type = "integer"), 
                PortName = structure(logical(0), shape = "__string", 
                  locationName = "portName", type = "string")), 
                shape = "LocalPortDetails", locationName = "localPortDetails", 
                type = "structure"), RemoteIpDetails = structure(list(City = structure(list(CityName = structure(logical(0), 
                shape = "__string", locationName = "cityName", 
                type = "string")), shape = "City", locationName = "city", 
                type = "structure"), Country = structure(list(CountryCode = structure(logical(0), 
                shape = "__string", locationName = "countryCode", 
                type = "string"), CountryName = structure(logical(0), 
                shape = "__string", locationName = "countryName", 
                type = "string")), shape = "Country", locationName = "country", 
                type = "structure"), GeoLocation = structure(list(Lat = structure(logical(0), 
                shape = "__double", locationName = "lat", type = "double"), 
                Lon = structure(logical(0), shape = "__double", 
                  locationName = "lon", type = "double")), shape = "GeoLocation", 
                locationName = "geoLocation", type = "structure"), 
                IpAddressV4 = structure(logical(0), shape = "__string", 
                  locationName = "ipAddressV4", type = "string"), 
                Organization = structure(list(Asn = structure(logical(0), 
                  shape = "__string", locationName = "asn", type = "string"), 
                  AsnOrg = structure(logical(0), shape = "__string", 
                    locationName = "asnOrg", type = "string"), 
                  Isp = structure(logical(0), shape = "__string", 
                    locationName = "isp", type = "string"), Org = structure(logical(0), 
                    shape = "__string", locationName = "org", 
                    type = "string")), shape = "Organization", 
                  locationName = "organization", type = "structure")), 
                shape = "RemoteIpDetails", locationName = "remoteIpDetails", 
                type = "structure")), shape = "PortProbeDetail", 
                type = "structure")), shape = "__listOfPortProbeDetail", 
                locationName = "portProbeDetails", type = "list")), 
                shape = "PortProbeAction", locationName = "portProbeAction", 
                type = "structure")), shape = "Action", locationName = "action", 
            type = "structure"), Archived = structure(logical(0), 
            shape = "__boolean", locationName = "archived", type = "boolean"), 
            Count = structure(logical(0), shape = "__integer", 
                locationName = "count", type = "integer"), DetectorId = structure(logical(0), 
                shape = "DetectorId", locationName = "detectorId", 
                type = "string"), EventFirstSeen = structure(logical(0), 
                shape = "__string", locationName = "eventFirstSeen", 
                type = "string"), EventLastSeen = structure(logical(0), 
                shape = "__string", locationName = "eventLastSeen", 
                type = "string"), ResourceRole = structure(logical(0), 
                shape = "__string", locationName = "resourceRole", 
                type = "string"), ServiceName = structure(logical(0), 
                shape = "__string", locationName = "serviceName", 
                type = "string"), UserFeedback = structure(logical(0), 
                shape = "__string", locationName = "userFeedback", 
                type = "string")), shape = "Service", locationName = "service", 
            type = "structure"), Severity = structure(logical(0), 
            shape = "__double", locationName = "severity", type = "double"), 
        Title = structure(logical(0), shape = "__string", locationName = "title", 
            type = "string"), Type = structure(logical(0), shape = "__string", 
            locationName = "type", type = "string"), UpdatedAt = structure(logical(0), 
            shape = "UpdatedAt", locationName = "updatedAt", 
            type = "string")), shape = "Finding", type = "structure")), 
        shape = "Findings", locationName = "findings", type = "list")), 
        shape = "GetFindingsResponse", type = "structure")
    return(populate(args, shape))
}

get_findings_statistics_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), FindingCriteria = structure(list(Criterion = structure(list(structure(list(Eq = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "Eq", 
        locationName = "eq", type = "list"), Gt = structure(logical(0), 
        shape = "__integer", locationName = "gt", type = "integer"), 
        Gte = structure(logical(0), shape = "__integer", locationName = "gte", 
            type = "integer"), Lt = structure(logical(0), shape = "__integer", 
            locationName = "lt", type = "integer"), Lte = structure(logical(0), 
            shape = "__integer", locationName = "lte", type = "integer"), 
        Neq = structure(list(structure(logical(0), shape = "__string", 
            type = "string")), shape = "Neq", locationName = "neq", 
            type = "list")), shape = "Condition", type = "structure")), 
        shape = "__mapOfCondition", locationName = "criterion", 
        type = "map")), shape = "FindingCriteria", locationName = "findingCriteria", 
        type = "structure"), FindingStatisticTypes = structure(list(structure(logical(0), 
        shape = "FindingStatisticType", type = "string")), shape = "FindingStatisticTypes", 
        locationName = "findingStatisticTypes", type = "list")), 
        shape = "GetFindingsStatisticsRequest", type = "structure")
    return(populate(args, shape))
}

get_findings_statistics_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FindingStatistics = structure(list(CountBySeverity = structure(list(structure(logical(0), 
        shape = "CountBySeverityFindingStatistic", type = "integer")), 
        shape = "__mapOfCountBySeverityFindingStatistic", locationName = "countBySeverity", 
        type = "map")), shape = "FindingStatistics", locationName = "findingStatistics", 
        type = "structure")), shape = "GetFindingsStatisticsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_ip_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), IpSetId = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "ipSetId", type = "string")), 
        shape = "GetIPSetRequest", type = "structure")
    return(populate(args, shape))
}

get_ip_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Format = structure(logical(0), shape = "IpSetFormat", 
        locationName = "format", type = "string"), Location = structure(logical(0), 
        shape = "Location", locationName = "location", type = "string"), 
        Name = structure(logical(0), shape = "Name", locationName = "name", 
            type = "string"), Status = structure(logical(0), 
            shape = "IpSetStatus", locationName = "status", type = "string")), 
        shape = "GetIPSetResponse", type = "structure")
    return(populate(args, shape))
}

get_invitations_count_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GetInvitationsCountRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_invitations_count_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InvitationsCount = structure(logical(0), 
        shape = "__integer", locationName = "invitationsCount", 
        type = "integer")), shape = "GetInvitationsCountResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_master_account_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string")), shape = "GetMasterAccountRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_master_account_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Master = structure(list(AccountId = structure(logical(0), 
        shape = "__string", locationName = "accountId", type = "string"), 
        InvitationId = structure(logical(0), shape = "InvitationId", 
            locationName = "invitationId", type = "string"), 
        InvitedAt = structure(logical(0), shape = "InvitedAt", 
            locationName = "invitedAt", type = "string"), RelationshipStatus = structure(logical(0), 
            shape = "__string", locationName = "relationshipStatus", 
            type = "string")), shape = "Master", locationName = "master", 
        type = "structure")), shape = "GetMasterAccountResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_members_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountIds = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "AccountIds", 
        locationName = "accountIds", type = "list"), DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string")), shape = "GetMembersRequest", type = "structure")
    return(populate(args, shape))
}

get_members_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Members = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", locationName = "accountId", type = "string"), 
        DetectorId = structure(logical(0), shape = "DetectorId", 
            locationName = "detectorId", type = "string"), Email = structure(logical(0), 
            shape = "Email", locationName = "email", type = "string"), 
        InvitedAt = structure(logical(0), shape = "InvitedAt", 
            locationName = "invitedAt", type = "string"), MasterId = structure(logical(0), 
            shape = "MasterId", locationName = "masterId", type = "string"), 
        RelationshipStatus = structure(logical(0), shape = "__string", 
            locationName = "relationshipStatus", type = "string"), 
        UpdatedAt = structure(logical(0), shape = "UpdatedAt", 
            locationName = "updatedAt", type = "string")), shape = "Member", 
        type = "structure")), shape = "Members", locationName = "members", 
        type = "list"), UnprocessedAccounts = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "__string", locationName = "accountId", type = "string"), 
        Result = structure(logical(0), shape = "__string", locationName = "result", 
            type = "string")), shape = "UnprocessedAccount", 
        type = "structure")), shape = "UnprocessedAccounts", 
        locationName = "unprocessedAccounts", type = "list")), 
        shape = "GetMembersResponse", type = "structure")
    return(populate(args, shape))
}

get_threat_intel_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), ThreatIntelSetId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "threatIntelSetId", 
        type = "string")), shape = "GetThreatIntelSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_threat_intel_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Format = structure(logical(0), shape = "ThreatIntelSetFormat", 
        locationName = "format", type = "string"), Location = structure(logical(0), 
        shape = "Location", locationName = "location", type = "string"), 
        Name = structure(logical(0), shape = "Name", locationName = "name", 
            type = "string"), Status = structure(logical(0), 
            shape = "ThreatIntelSetStatus", locationName = "status", 
            type = "string")), shape = "GetThreatIntelSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

invite_members_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountIds = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "AccountIds", 
        locationName = "accountIds", type = "list"), DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), DisableEmailNotification = structure(logical(0), 
        shape = "__boolean", locationName = "disableEmailNotification", 
        type = "boolean"), Message = structure(logical(0), shape = "Message", 
        locationName = "message", type = "string")), shape = "InviteMembersRequest", 
        type = "structure")
    return(populate(args, shape))
}

invite_members_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UnprocessedAccounts = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "__string", locationName = "accountId", type = "string"), 
        Result = structure(logical(0), shape = "__string", locationName = "result", 
            type = "string")), shape = "UnprocessedAccount", 
        type = "structure")), shape = "UnprocessedAccounts", 
        locationName = "unprocessedAccounts", type = "list")), 
        shape = "InviteMembersResponse", type = "structure")
    return(populate(args, shape))
}

list_detectors_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", min = 1L, max = 50L), NextToken = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "nextToken", 
        type = "string")), shape = "ListDetectorsRequest", type = "structure")
    return(populate(args, shape))
}

list_detectors_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorIds = structure(list(structure(logical(0), 
        shape = "DetectorId", type = "string")), shape = "DetectorIds", 
        locationName = "detectorIds", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", locationName = "nextToken", type = "string")), 
        shape = "ListDetectorsResponse", type = "structure")
    return(populate(args, shape))
}

list_filters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", min = 1L, max = 50L), NextToken = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "nextToken", 
        type = "string")), shape = "ListFiltersRequest", type = "structure")
    return(populate(args, shape))
}

list_filters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FilterNames = structure(list(structure(logical(0), 
        shape = "FilterName", type = "string")), shape = "FilterNames", 
        locationName = "filterNames", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", locationName = "nextToken", type = "string")), 
        shape = "ListFiltersResponse", type = "structure")
    return(populate(args, shape))
}

list_findings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), FindingCriteria = structure(list(Criterion = structure(list(structure(list(Eq = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "Eq", 
        locationName = "eq", type = "list"), Gt = structure(logical(0), 
        shape = "__integer", locationName = "gt", type = "integer"), 
        Gte = structure(logical(0), shape = "__integer", locationName = "gte", 
            type = "integer"), Lt = structure(logical(0), shape = "__integer", 
            locationName = "lt", type = "integer"), Lte = structure(logical(0), 
            shape = "__integer", locationName = "lte", type = "integer"), 
        Neq = structure(list(structure(logical(0), shape = "__string", 
            type = "string")), shape = "Neq", locationName = "neq", 
            type = "list")), shape = "Condition", type = "structure")), 
        shape = "__mapOfCondition", locationName = "criterion", 
        type = "map")), shape = "FindingCriteria", locationName = "findingCriteria", 
        type = "structure"), MaxResults = structure(logical(0), 
        shape = "MaxResults", locationName = "maxResults", type = "integer", 
        min = 1L, max = 50L), NextToken = structure(logical(0), 
        shape = "NextToken", locationName = "nextToken", type = "string"), 
        SortCriteria = structure(list(AttributeName = structure(logical(0), 
            shape = "__string", locationName = "attributeName", 
            type = "string"), OrderBy = structure(logical(0), 
            shape = "OrderBy", locationName = "orderBy", type = "string")), 
            shape = "SortCriteria", locationName = "sortCriteria", 
            type = "structure")), shape = "ListFindingsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_findings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FindingIds = structure(list(structure(logical(0), 
        shape = "FindingId", type = "string")), shape = "FindingIds", 
        locationName = "findingIds", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", locationName = "nextToken", type = "string")), 
        shape = "ListFindingsResponse", type = "structure")
    return(populate(args, shape))
}

list_ip_sets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", min = 1L, max = 50L), NextToken = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "nextToken", 
        type = "string")), shape = "ListIPSetsRequest", type = "structure")
    return(populate(args, shape))
}

list_ip_sets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IpSetIds = structure(list(structure(logical(0), 
        shape = "IpSetId", type = "string")), shape = "IpSetIds", 
        locationName = "ipSetIds", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", locationName = "nextToken", type = "string")), 
        shape = "ListIPSetsResponse", type = "structure")
    return(populate(args, shape))
}

list_invitations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", min = 1L, max = 50L), NextToken = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "nextToken", 
        type = "string")), shape = "ListInvitationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_invitations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Invitations = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "__string", locationName = "accountId", type = "string"), 
        InvitationId = structure(logical(0), shape = "InvitationId", 
            locationName = "invitationId", type = "string"), 
        InvitedAt = structure(logical(0), shape = "InvitedAt", 
            locationName = "invitedAt", type = "string"), RelationshipStatus = structure(logical(0), 
            shape = "__string", locationName = "relationshipStatus", 
            type = "string")), shape = "Invitation", type = "structure")), 
        shape = "Invitations", locationName = "invitations", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        locationName = "nextToken", type = "string")), shape = "ListInvitationsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_members_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", min = 1L, max = 50L), NextToken = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "nextToken", 
        type = "string"), OnlyAssociated = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "onlyAssociated", 
        type = "string")), shape = "ListMembersRequest", type = "structure")
    return(populate(args, shape))
}

list_members_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Members = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", locationName = "accountId", type = "string"), 
        DetectorId = structure(logical(0), shape = "DetectorId", 
            locationName = "detectorId", type = "string"), Email = structure(logical(0), 
            shape = "Email", locationName = "email", type = "string"), 
        InvitedAt = structure(logical(0), shape = "InvitedAt", 
            locationName = "invitedAt", type = "string"), MasterId = structure(logical(0), 
            shape = "MasterId", locationName = "masterId", type = "string"), 
        RelationshipStatus = structure(logical(0), shape = "__string", 
            locationName = "relationshipStatus", type = "string"), 
        UpdatedAt = structure(logical(0), shape = "UpdatedAt", 
            locationName = "updatedAt", type = "string")), shape = "Member", 
        type = "structure")), shape = "Members", locationName = "members", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        locationName = "nextToken", type = "string")), shape = "ListMembersResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_threat_intel_sets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", min = 1L, max = 50L), NextToken = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "nextToken", 
        type = "string")), shape = "ListThreatIntelSetsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_threat_intel_sets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", locationName = "nextToken", type = "string"), 
        ThreatIntelSetIds = structure(list(structure(logical(0), 
            shape = "ThreatIntelSetId", type = "string")), shape = "ThreatIntelSetIds", 
            locationName = "threatIntelSetIds", type = "list")), 
        shape = "ListThreatIntelSetsResponse", type = "structure")
    return(populate(args, shape))
}

start_monitoring_members_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountIds = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "AccountIds", 
        locationName = "accountIds", type = "list"), DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string")), shape = "StartMonitoringMembersRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_monitoring_members_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UnprocessedAccounts = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "__string", locationName = "accountId", type = "string"), 
        Result = structure(logical(0), shape = "__string", locationName = "result", 
            type = "string")), shape = "UnprocessedAccount", 
        type = "structure")), shape = "UnprocessedAccounts", 
        locationName = "unprocessedAccounts", type = "list")), 
        shape = "StartMonitoringMembersResponse", type = "structure")
    return(populate(args, shape))
}

stop_monitoring_members_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountIds = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "AccountIds", 
        locationName = "accountIds", type = "list"), DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string")), shape = "StopMonitoringMembersRequest", 
        type = "structure")
    return(populate(args, shape))
}

stop_monitoring_members_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UnprocessedAccounts = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "__string", locationName = "accountId", type = "string"), 
        Result = structure(logical(0), shape = "__string", locationName = "result", 
            type = "string")), shape = "UnprocessedAccount", 
        type = "structure")), shape = "UnprocessedAccounts", 
        locationName = "unprocessedAccounts", type = "list")), 
        shape = "StopMonitoringMembersResponse", type = "structure")
    return(populate(args, shape))
}

unarchive_findings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), FindingIds = structure(list(structure(logical(0), 
        shape = "FindingId", type = "string")), shape = "FindingIds", 
        locationName = "findingIds", type = "list")), shape = "UnarchiveFindingsRequest", 
        type = "structure")
    return(populate(args, shape))
}

unarchive_findings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UnarchiveFindingsResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_detector_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), Enable = structure(logical(0), shape = "Enable", 
        locationName = "enable", type = "boolean"), FindingPublishingFrequency = structure(logical(0), 
        shape = "FindingPublishingFrequency", locationName = "findingPublishingFrequency", 
        type = "string")), shape = "UpdateDetectorRequest", type = "structure")
    return(populate(args, shape))
}

update_detector_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateDetectorResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_filter_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Action = structure(logical(0), shape = "FilterAction", 
        locationName = "action", type = "string"), Description = structure(logical(0), 
        shape = "FilterDescription", locationName = "description", 
        type = "string"), DetectorId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "detectorId", 
        type = "string"), FilterName = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "filterName", 
        type = "string"), FindingCriteria = structure(list(Criterion = structure(list(structure(list(Eq = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "Eq", 
        locationName = "eq", type = "list"), Gt = structure(logical(0), 
        shape = "__integer", locationName = "gt", type = "integer"), 
        Gte = structure(logical(0), shape = "__integer", locationName = "gte", 
            type = "integer"), Lt = structure(logical(0), shape = "__integer", 
            locationName = "lt", type = "integer"), Lte = structure(logical(0), 
            shape = "__integer", locationName = "lte", type = "integer"), 
        Neq = structure(list(structure(logical(0), shape = "__string", 
            type = "string")), shape = "Neq", locationName = "neq", 
            type = "list")), shape = "Condition", type = "structure")), 
        shape = "__mapOfCondition", locationName = "criterion", 
        type = "map")), shape = "FindingCriteria", locationName = "findingCriteria", 
        type = "structure"), Rank = structure(logical(0), shape = "FilterRank", 
        locationName = "rank", type = "integer")), shape = "UpdateFilterRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_filter_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "FilterName", 
        locationName = "name", type = "string")), shape = "UpdateFilterResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_findings_feedback_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Comments = structure(logical(0), 
        shape = "Comments", locationName = "comments", type = "string"), 
        DetectorId = structure(logical(0), shape = "__string", 
            location = "uri", locationName = "detectorId", type = "string"), 
        Feedback = structure(logical(0), shape = "Feedback", 
            locationName = "feedback", type = "string"), FindingIds = structure(list(structure(logical(0), 
            shape = "FindingId", type = "string")), shape = "FindingIds", 
            locationName = "findingIds", type = "list")), shape = "UpdateFindingsFeedbackRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_findings_feedback_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateFindingsFeedbackResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_ip_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Activate = structure(logical(0), 
        shape = "Activate", locationName = "activate", type = "boolean"), 
        DetectorId = structure(logical(0), shape = "__string", 
            location = "uri", locationName = "detectorId", type = "string"), 
        IpSetId = structure(logical(0), shape = "__string", location = "uri", 
            locationName = "ipSetId", type = "string"), Location = structure(logical(0), 
            shape = "Location", locationName = "location", type = "string"), 
        Name = structure(logical(0), shape = "Name", locationName = "name", 
            type = "string")), shape = "UpdateIPSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_ip_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateIPSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_threat_intel_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Activate = structure(logical(0), 
        shape = "Activate", locationName = "activate", type = "boolean"), 
        DetectorId = structure(logical(0), shape = "__string", 
            location = "uri", locationName = "detectorId", type = "string"), 
        Location = structure(logical(0), shape = "Location", 
            locationName = "location", type = "string"), Name = structure(logical(0), 
            shape = "Name", locationName = "name", type = "string"), 
        ThreatIntelSetId = structure(logical(0), shape = "__string", 
            location = "uri", locationName = "threatIntelSetId", 
            type = "string")), shape = "UpdateThreatIntelSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_threat_intel_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateThreatIntelSetResponse", 
        type = "structure")
    return(populate(args, shape))
}
