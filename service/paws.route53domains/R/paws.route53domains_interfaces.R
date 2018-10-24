check_domain_availability_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L), IdnLangCode = structure(logical(0), 
        shape = "LangCode", type = "string", max = 3L)), shape = "CheckDomainAvailabilityRequest", 
        type = "structure")
    return(populate(args, shape))
}

check_domain_availability_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Availability = structure(logical(0), 
        shape = "DomainAvailability", type = "string")), shape = "CheckDomainAvailabilityResponse", 
        type = "structure")
    return(populate(args, shape))
}

check_domain_transferability_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L), AuthCode = structure(logical(0), 
        shape = "DomainAuthCode", type = "string", max = 1024L, 
        sensitive = TRUE)), shape = "CheckDomainTransferabilityRequest", 
        type = "structure")
    return(populate(args, shape))
}

check_domain_transferability_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Transferability = structure(list(Transferable = structure(logical(0), 
        shape = "Transferable", type = "string")), shape = "DomainTransferability", 
        type = "structure")), shape = "CheckDomainTransferabilityResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_tags_for_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L), TagsToDelete = structure(list(structure(logical(0), 
        shape = "TagKey", type = "string")), shape = "TagKeyList", 
        type = "list")), shape = "DeleteTagsForDomainRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_tags_for_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteTagsForDomainResponse", 
        type = "structure")
    return(populate(args, shape))
}

disable_domain_auto_renew_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L)), 
        shape = "DisableDomainAutoRenewRequest", type = "structure")
    return(populate(args, shape))
}

disable_domain_auto_renew_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisableDomainAutoRenewResponse", 
        type = "structure")
    return(populate(args, shape))
}

disable_domain_transfer_lock_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L)), 
        shape = "DisableDomainTransferLockRequest", type = "structure")
    return(populate(args, shape))
}

disable_domain_transfer_lock_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "OperationId", type = "string", max = 255L)), 
        shape = "DisableDomainTransferLockResponse", type = "structure")
    return(populate(args, shape))
}

enable_domain_auto_renew_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L)), 
        shape = "EnableDomainAutoRenewRequest", type = "structure")
    return(populate(args, shape))
}

enable_domain_auto_renew_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "EnableDomainAutoRenewResponse", 
        type = "structure")
    return(populate(args, shape))
}

enable_domain_transfer_lock_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L)), 
        shape = "EnableDomainTransferLockRequest", type = "structure")
    return(populate(args, shape))
}

enable_domain_transfer_lock_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "OperationId", type = "string", max = 255L)), 
        shape = "EnableDomainTransferLockResponse", type = "structure")
    return(populate(args, shape))
}

get_contact_reachability_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L, locationName = "domainName")), 
        shape = "GetContactReachabilityStatusRequest", type = "structure")
    return(populate(args, shape))
}

get_contact_reachability_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L, locationName = "domainName"), 
        Status = structure(logical(0), shape = "ReachabilityStatus", 
            type = "string", locationName = "status")), shape = "GetContactReachabilityStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_domain_detail_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L)), 
        shape = "GetDomainDetailRequest", type = "structure")
    return(populate(args, shape))
}

get_domain_detail_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L), Nameservers = structure(list(structure(list(Name = structure(logical(0), 
        shape = "HostName", type = "string", max = 255L, pattern = "[a-zA-Z0-9_\\-.]*"), 
        GlueIps = structure(list(structure(logical(0), shape = "GlueIp", 
            type = "string", max = 45L)), shape = "GlueIpList", 
            type = "list")), shape = "Nameserver", type = "structure")), 
        shape = "NameserverList", type = "list"), AutoRenew = structure(logical(0), 
        shape = "Boolean", type = "boolean"), AdminContact = structure(list(FirstName = structure(logical(0), 
        shape = "ContactName", type = "string", max = 255L), 
        LastName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 255L), ContactType = structure(logical(0), 
            shape = "ContactType", type = "string"), OrganizationName = structure(logical(0), 
            shape = "ContactName", type = "string", max = 255L), 
        AddressLine1 = structure(logical(0), shape = "AddressLine", 
            type = "string", max = 255L), AddressLine2 = structure(logical(0), 
            shape = "AddressLine", type = "string", max = 255L), 
        City = structure(logical(0), shape = "City", type = "string", 
            max = 255L), State = structure(logical(0), shape = "State", 
            type = "string", max = 255L), CountryCode = structure(logical(0), 
            shape = "CountryCode", type = "string"), ZipCode = structure(logical(0), 
            shape = "ZipCode", type = "string", max = 255L), 
        PhoneNumber = structure(logical(0), shape = "ContactNumber", 
            type = "string", max = 30L), Email = structure(logical(0), 
            shape = "Email", type = "string", max = 254L), Fax = structure(logical(0), 
            shape = "ContactNumber", type = "string", max = 30L), 
        ExtraParams = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ExtraParamName", type = "string"), Value = structure(logical(0), 
            shape = "ExtraParamValue", type = "string", max = 2048L)), 
            shape = "ExtraParam", type = "structure")), shape = "ExtraParamList", 
            type = "list")), shape = "ContactDetail", type = "structure", 
        sensitive = TRUE), RegistrantContact = structure(list(FirstName = structure(logical(0), 
        shape = "ContactName", type = "string", max = 255L), 
        LastName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 255L), ContactType = structure(logical(0), 
            shape = "ContactType", type = "string"), OrganizationName = structure(logical(0), 
            shape = "ContactName", type = "string", max = 255L), 
        AddressLine1 = structure(logical(0), shape = "AddressLine", 
            type = "string", max = 255L), AddressLine2 = structure(logical(0), 
            shape = "AddressLine", type = "string", max = 255L), 
        City = structure(logical(0), shape = "City", type = "string", 
            max = 255L), State = structure(logical(0), shape = "State", 
            type = "string", max = 255L), CountryCode = structure(logical(0), 
            shape = "CountryCode", type = "string"), ZipCode = structure(logical(0), 
            shape = "ZipCode", type = "string", max = 255L), 
        PhoneNumber = structure(logical(0), shape = "ContactNumber", 
            type = "string", max = 30L), Email = structure(logical(0), 
            shape = "Email", type = "string", max = 254L), Fax = structure(logical(0), 
            shape = "ContactNumber", type = "string", max = 30L), 
        ExtraParams = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ExtraParamName", type = "string"), Value = structure(logical(0), 
            shape = "ExtraParamValue", type = "string", max = 2048L)), 
            shape = "ExtraParam", type = "structure")), shape = "ExtraParamList", 
            type = "list")), shape = "ContactDetail", type = "structure", 
        sensitive = TRUE), TechContact = structure(list(FirstName = structure(logical(0), 
        shape = "ContactName", type = "string", max = 255L), 
        LastName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 255L), ContactType = structure(logical(0), 
            shape = "ContactType", type = "string"), OrganizationName = structure(logical(0), 
            shape = "ContactName", type = "string", max = 255L), 
        AddressLine1 = structure(logical(0), shape = "AddressLine", 
            type = "string", max = 255L), AddressLine2 = structure(logical(0), 
            shape = "AddressLine", type = "string", max = 255L), 
        City = structure(logical(0), shape = "City", type = "string", 
            max = 255L), State = structure(logical(0), shape = "State", 
            type = "string", max = 255L), CountryCode = structure(logical(0), 
            shape = "CountryCode", type = "string"), ZipCode = structure(logical(0), 
            shape = "ZipCode", type = "string", max = 255L), 
        PhoneNumber = structure(logical(0), shape = "ContactNumber", 
            type = "string", max = 30L), Email = structure(logical(0), 
            shape = "Email", type = "string", max = 254L), Fax = structure(logical(0), 
            shape = "ContactNumber", type = "string", max = 30L), 
        ExtraParams = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ExtraParamName", type = "string"), Value = structure(logical(0), 
            shape = "ExtraParamValue", type = "string", max = 2048L)), 
            shape = "ExtraParam", type = "structure")), shape = "ExtraParamList", 
            type = "list")), shape = "ContactDetail", type = "structure", 
        sensitive = TRUE), AdminPrivacy = structure(logical(0), 
        shape = "Boolean", type = "boolean"), RegistrantPrivacy = structure(logical(0), 
        shape = "Boolean", type = "boolean"), TechPrivacy = structure(logical(0), 
        shape = "Boolean", type = "boolean"), RegistrarName = structure(logical(0), 
        shape = "RegistrarName", type = "string"), WhoIsServer = structure(logical(0), 
        shape = "RegistrarWhoIsServer", type = "string"), RegistrarUrl = structure(logical(0), 
        shape = "RegistrarUrl", type = "string"), AbuseContactEmail = structure(logical(0), 
        shape = "Email", type = "string", max = 254L), AbuseContactPhone = structure(logical(0), 
        shape = "ContactNumber", type = "string", max = 30L), 
        RegistryDomainId = structure(logical(0), shape = "RegistryDomainId", 
            type = "string"), CreationDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), UpdatedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), ExpirationDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Reseller = structure(logical(0), 
            shape = "Reseller", type = "string"), DnsSec = structure(logical(0), 
            shape = "DNSSec", type = "string"), StatusList = structure(list(structure(logical(0), 
            shape = "DomainStatus", type = "string")), shape = "DomainStatusList", 
            type = "list")), shape = "GetDomainDetailResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_domain_suggestions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L), SuggestionCount = structure(logical(0), 
        shape = "Integer", type = "integer"), OnlyAvailable = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "GetDomainSuggestionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_domain_suggestions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SuggestionsList = structure(list(structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L), Availability = structure(logical(0), 
        shape = "String", type = "string")), shape = "DomainSuggestion", 
        type = "structure")), shape = "DomainSuggestionsList", 
        type = "list")), shape = "GetDomainSuggestionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_operation_detail_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "OperationId", type = "string", max = 255L)), 
        shape = "GetOperationDetailRequest", type = "structure")
    return(populate(args, shape))
}

get_operation_detail_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "OperationId", type = "string", max = 255L), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string"), Message = structure(logical(0), 
            shape = "ErrorMessage", type = "string"), DomainName = structure(logical(0), 
            shape = "DomainName", type = "string", max = 255L), 
        Type = structure(logical(0), shape = "OperationType", 
            type = "string"), SubmittedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "GetOperationDetailResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_domains_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "PageMarker", 
        type = "string", max = 4096L), MaxItems = structure(logical(0), 
        shape = "PageMaxItems", type = "integer", max = 100L)), 
        shape = "ListDomainsRequest", type = "structure")
    return(populate(args, shape))
}

list_domains_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Domains = structure(list(structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L), AutoRenew = structure(logical(0), 
        shape = "Boolean", type = "boolean"), TransferLock = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Expiry = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "DomainSummary", 
        type = "structure")), shape = "DomainSummaryList", type = "list"), 
        NextPageMarker = structure(logical(0), shape = "PageMarker", 
            type = "string", max = 4096L)), shape = "ListDomainsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_operations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubmittedSince = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Marker = structure(logical(0), 
        shape = "PageMarker", type = "string", max = 4096L), 
        MaxItems = structure(logical(0), shape = "PageMaxItems", 
            type = "integer", max = 100L)), shape = "ListOperationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_operations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(OperationId = structure(logical(0), 
        shape = "OperationId", type = "string", max = 255L), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string"), Type = structure(logical(0), shape = "OperationType", 
            type = "string"), SubmittedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "OperationSummary", 
        type = "structure")), shape = "OperationSummaryList", 
        type = "list"), NextPageMarker = structure(logical(0), 
        shape = "PageMarker", type = "string", max = 4096L)), 
        shape = "ListOperationsResponse", type = "structure")
    return(populate(args, shape))
}

list_tags_for_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L)), 
        shape = "ListTagsForDomainRequest", type = "structure")
    return(populate(args, shape))
}

list_tags_for_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TagList = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string"), Value = structure(logical(0), 
        shape = "TagValue", type = "string")), shape = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "ListTagsForDomainResponse", type = "structure")
    return(populate(args, shape))
}

register_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L), IdnLangCode = structure(logical(0), 
        shape = "LangCode", type = "string", max = 3L), DurationInYears = structure(logical(0), 
        shape = "DurationInYears", type = "integer", max = 10L, 
        min = 1L), AutoRenew = structure(logical(0), shape = "Boolean", 
        type = "boolean"), AdminContact = structure(list(FirstName = structure(logical(0), 
        shape = "ContactName", type = "string", max = 255L), 
        LastName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 255L), ContactType = structure(logical(0), 
            shape = "ContactType", type = "string"), OrganizationName = structure(logical(0), 
            shape = "ContactName", type = "string", max = 255L), 
        AddressLine1 = structure(logical(0), shape = "AddressLine", 
            type = "string", max = 255L), AddressLine2 = structure(logical(0), 
            shape = "AddressLine", type = "string", max = 255L), 
        City = structure(logical(0), shape = "City", type = "string", 
            max = 255L), State = structure(logical(0), shape = "State", 
            type = "string", max = 255L), CountryCode = structure(logical(0), 
            shape = "CountryCode", type = "string"), ZipCode = structure(logical(0), 
            shape = "ZipCode", type = "string", max = 255L), 
        PhoneNumber = structure(logical(0), shape = "ContactNumber", 
            type = "string", max = 30L), Email = structure(logical(0), 
            shape = "Email", type = "string", max = 254L), Fax = structure(logical(0), 
            shape = "ContactNumber", type = "string", max = 30L), 
        ExtraParams = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ExtraParamName", type = "string"), Value = structure(logical(0), 
            shape = "ExtraParamValue", type = "string", max = 2048L)), 
            shape = "ExtraParam", type = "structure")), shape = "ExtraParamList", 
            type = "list")), shape = "ContactDetail", type = "structure", 
        sensitive = TRUE), RegistrantContact = structure(list(FirstName = structure(logical(0), 
        shape = "ContactName", type = "string", max = 255L), 
        LastName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 255L), ContactType = structure(logical(0), 
            shape = "ContactType", type = "string"), OrganizationName = structure(logical(0), 
            shape = "ContactName", type = "string", max = 255L), 
        AddressLine1 = structure(logical(0), shape = "AddressLine", 
            type = "string", max = 255L), AddressLine2 = structure(logical(0), 
            shape = "AddressLine", type = "string", max = 255L), 
        City = structure(logical(0), shape = "City", type = "string", 
            max = 255L), State = structure(logical(0), shape = "State", 
            type = "string", max = 255L), CountryCode = structure(logical(0), 
            shape = "CountryCode", type = "string"), ZipCode = structure(logical(0), 
            shape = "ZipCode", type = "string", max = 255L), 
        PhoneNumber = structure(logical(0), shape = "ContactNumber", 
            type = "string", max = 30L), Email = structure(logical(0), 
            shape = "Email", type = "string", max = 254L), Fax = structure(logical(0), 
            shape = "ContactNumber", type = "string", max = 30L), 
        ExtraParams = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ExtraParamName", type = "string"), Value = structure(logical(0), 
            shape = "ExtraParamValue", type = "string", max = 2048L)), 
            shape = "ExtraParam", type = "structure")), shape = "ExtraParamList", 
            type = "list")), shape = "ContactDetail", type = "structure", 
        sensitive = TRUE), TechContact = structure(list(FirstName = structure(logical(0), 
        shape = "ContactName", type = "string", max = 255L), 
        LastName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 255L), ContactType = structure(logical(0), 
            shape = "ContactType", type = "string"), OrganizationName = structure(logical(0), 
            shape = "ContactName", type = "string", max = 255L), 
        AddressLine1 = structure(logical(0), shape = "AddressLine", 
            type = "string", max = 255L), AddressLine2 = structure(logical(0), 
            shape = "AddressLine", type = "string", max = 255L), 
        City = structure(logical(0), shape = "City", type = "string", 
            max = 255L), State = structure(logical(0), shape = "State", 
            type = "string", max = 255L), CountryCode = structure(logical(0), 
            shape = "CountryCode", type = "string"), ZipCode = structure(logical(0), 
            shape = "ZipCode", type = "string", max = 255L), 
        PhoneNumber = structure(logical(0), shape = "ContactNumber", 
            type = "string", max = 30L), Email = structure(logical(0), 
            shape = "Email", type = "string", max = 254L), Fax = structure(logical(0), 
            shape = "ContactNumber", type = "string", max = 30L), 
        ExtraParams = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ExtraParamName", type = "string"), Value = structure(logical(0), 
            shape = "ExtraParamValue", type = "string", max = 2048L)), 
            shape = "ExtraParam", type = "structure")), shape = "ExtraParamList", 
            type = "list")), shape = "ContactDetail", type = "structure", 
        sensitive = TRUE), PrivacyProtectAdminContact = structure(logical(0), 
        shape = "Boolean", type = "boolean"), PrivacyProtectRegistrantContact = structure(logical(0), 
        shape = "Boolean", type = "boolean"), PrivacyProtectTechContact = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "RegisterDomainRequest", 
        type = "structure")
    return(populate(args, shape))
}

register_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "OperationId", type = "string", max = 255L)), 
        shape = "RegisterDomainResponse", type = "structure")
    return(populate(args, shape))
}

renew_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L), DurationInYears = structure(logical(0), 
        shape = "DurationInYears", type = "integer", max = 10L, 
        min = 1L), CurrentExpiryYear = structure(logical(0), 
        shape = "CurrentExpiryYear", type = "integer")), shape = "RenewDomainRequest", 
        type = "structure")
    return(populate(args, shape))
}

renew_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "OperationId", type = "string", max = 255L)), 
        shape = "RenewDomainResponse", type = "structure")
    return(populate(args, shape))
}

resend_contact_reachability_email_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L, locationName = "domainName")), 
        shape = "ResendContactReachabilityEmailRequest", type = "structure")
    return(populate(args, shape))
}

resend_contact_reachability_email_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L, locationName = "domainName"), 
        EmailAddress = structure(logical(0), shape = "Email", 
            type = "string", max = 254L, locationName = "emailAddress"), 
        IsAlreadyVerified = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "isAlreadyVerified")), 
        shape = "ResendContactReachabilityEmailResponse", type = "structure")
    return(populate(args, shape))
}

retrieve_domain_auth_code_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L)), 
        shape = "RetrieveDomainAuthCodeRequest", type = "structure")
    return(populate(args, shape))
}

retrieve_domain_auth_code_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthCode = structure(logical(0), 
        shape = "DomainAuthCode", type = "string", max = 1024L, 
        sensitive = TRUE)), shape = "RetrieveDomainAuthCodeResponse", 
        type = "structure")
    return(populate(args, shape))
}

transfer_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L), IdnLangCode = structure(logical(0), 
        shape = "LangCode", type = "string", max = 3L), DurationInYears = structure(logical(0), 
        shape = "DurationInYears", type = "integer", max = 10L, 
        min = 1L), Nameservers = structure(list(structure(list(Name = structure(logical(0), 
        shape = "HostName", type = "string", max = 255L, pattern = "[a-zA-Z0-9_\\-.]*"), 
        GlueIps = structure(list(structure(logical(0), shape = "GlueIp", 
            type = "string", max = 45L)), shape = "GlueIpList", 
            type = "list")), shape = "Nameserver", type = "structure")), 
        shape = "NameserverList", type = "list"), AuthCode = structure(logical(0), 
        shape = "DomainAuthCode", type = "string", max = 1024L, 
        sensitive = TRUE), AutoRenew = structure(logical(0), 
        shape = "Boolean", type = "boolean"), AdminContact = structure(list(FirstName = structure(logical(0), 
        shape = "ContactName", type = "string", max = 255L), 
        LastName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 255L), ContactType = structure(logical(0), 
            shape = "ContactType", type = "string"), OrganizationName = structure(logical(0), 
            shape = "ContactName", type = "string", max = 255L), 
        AddressLine1 = structure(logical(0), shape = "AddressLine", 
            type = "string", max = 255L), AddressLine2 = structure(logical(0), 
            shape = "AddressLine", type = "string", max = 255L), 
        City = structure(logical(0), shape = "City", type = "string", 
            max = 255L), State = structure(logical(0), shape = "State", 
            type = "string", max = 255L), CountryCode = structure(logical(0), 
            shape = "CountryCode", type = "string"), ZipCode = structure(logical(0), 
            shape = "ZipCode", type = "string", max = 255L), 
        PhoneNumber = structure(logical(0), shape = "ContactNumber", 
            type = "string", max = 30L), Email = structure(logical(0), 
            shape = "Email", type = "string", max = 254L), Fax = structure(logical(0), 
            shape = "ContactNumber", type = "string", max = 30L), 
        ExtraParams = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ExtraParamName", type = "string"), Value = structure(logical(0), 
            shape = "ExtraParamValue", type = "string", max = 2048L)), 
            shape = "ExtraParam", type = "structure")), shape = "ExtraParamList", 
            type = "list")), shape = "ContactDetail", type = "structure", 
        sensitive = TRUE), RegistrantContact = structure(list(FirstName = structure(logical(0), 
        shape = "ContactName", type = "string", max = 255L), 
        LastName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 255L), ContactType = structure(logical(0), 
            shape = "ContactType", type = "string"), OrganizationName = structure(logical(0), 
            shape = "ContactName", type = "string", max = 255L), 
        AddressLine1 = structure(logical(0), shape = "AddressLine", 
            type = "string", max = 255L), AddressLine2 = structure(logical(0), 
            shape = "AddressLine", type = "string", max = 255L), 
        City = structure(logical(0), shape = "City", type = "string", 
            max = 255L), State = structure(logical(0), shape = "State", 
            type = "string", max = 255L), CountryCode = structure(logical(0), 
            shape = "CountryCode", type = "string"), ZipCode = structure(logical(0), 
            shape = "ZipCode", type = "string", max = 255L), 
        PhoneNumber = structure(logical(0), shape = "ContactNumber", 
            type = "string", max = 30L), Email = structure(logical(0), 
            shape = "Email", type = "string", max = 254L), Fax = structure(logical(0), 
            shape = "ContactNumber", type = "string", max = 30L), 
        ExtraParams = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ExtraParamName", type = "string"), Value = structure(logical(0), 
            shape = "ExtraParamValue", type = "string", max = 2048L)), 
            shape = "ExtraParam", type = "structure")), shape = "ExtraParamList", 
            type = "list")), shape = "ContactDetail", type = "structure", 
        sensitive = TRUE), TechContact = structure(list(FirstName = structure(logical(0), 
        shape = "ContactName", type = "string", max = 255L), 
        LastName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 255L), ContactType = structure(logical(0), 
            shape = "ContactType", type = "string"), OrganizationName = structure(logical(0), 
            shape = "ContactName", type = "string", max = 255L), 
        AddressLine1 = structure(logical(0), shape = "AddressLine", 
            type = "string", max = 255L), AddressLine2 = structure(logical(0), 
            shape = "AddressLine", type = "string", max = 255L), 
        City = structure(logical(0), shape = "City", type = "string", 
            max = 255L), State = structure(logical(0), shape = "State", 
            type = "string", max = 255L), CountryCode = structure(logical(0), 
            shape = "CountryCode", type = "string"), ZipCode = structure(logical(0), 
            shape = "ZipCode", type = "string", max = 255L), 
        PhoneNumber = structure(logical(0), shape = "ContactNumber", 
            type = "string", max = 30L), Email = structure(logical(0), 
            shape = "Email", type = "string", max = 254L), Fax = structure(logical(0), 
            shape = "ContactNumber", type = "string", max = 30L), 
        ExtraParams = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ExtraParamName", type = "string"), Value = structure(logical(0), 
            shape = "ExtraParamValue", type = "string", max = 2048L)), 
            shape = "ExtraParam", type = "structure")), shape = "ExtraParamList", 
            type = "list")), shape = "ContactDetail", type = "structure", 
        sensitive = TRUE), PrivacyProtectAdminContact = structure(logical(0), 
        shape = "Boolean", type = "boolean"), PrivacyProtectRegistrantContact = structure(logical(0), 
        shape = "Boolean", type = "boolean"), PrivacyProtectTechContact = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "TransferDomainRequest", 
        type = "structure")
    return(populate(args, shape))
}

transfer_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "OperationId", type = "string", max = 255L)), 
        shape = "TransferDomainResponse", type = "structure")
    return(populate(args, shape))
}

update_domain_contact_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L), AdminContact = structure(list(FirstName = structure(logical(0), 
        shape = "ContactName", type = "string", max = 255L), 
        LastName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 255L), ContactType = structure(logical(0), 
            shape = "ContactType", type = "string"), OrganizationName = structure(logical(0), 
            shape = "ContactName", type = "string", max = 255L), 
        AddressLine1 = structure(logical(0), shape = "AddressLine", 
            type = "string", max = 255L), AddressLine2 = structure(logical(0), 
            shape = "AddressLine", type = "string", max = 255L), 
        City = structure(logical(0), shape = "City", type = "string", 
            max = 255L), State = structure(logical(0), shape = "State", 
            type = "string", max = 255L), CountryCode = structure(logical(0), 
            shape = "CountryCode", type = "string"), ZipCode = structure(logical(0), 
            shape = "ZipCode", type = "string", max = 255L), 
        PhoneNumber = structure(logical(0), shape = "ContactNumber", 
            type = "string", max = 30L), Email = structure(logical(0), 
            shape = "Email", type = "string", max = 254L), Fax = structure(logical(0), 
            shape = "ContactNumber", type = "string", max = 30L), 
        ExtraParams = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ExtraParamName", type = "string"), Value = structure(logical(0), 
            shape = "ExtraParamValue", type = "string", max = 2048L)), 
            shape = "ExtraParam", type = "structure")), shape = "ExtraParamList", 
            type = "list")), shape = "ContactDetail", type = "structure", 
        sensitive = TRUE), RegistrantContact = structure(list(FirstName = structure(logical(0), 
        shape = "ContactName", type = "string", max = 255L), 
        LastName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 255L), ContactType = structure(logical(0), 
            shape = "ContactType", type = "string"), OrganizationName = structure(logical(0), 
            shape = "ContactName", type = "string", max = 255L), 
        AddressLine1 = structure(logical(0), shape = "AddressLine", 
            type = "string", max = 255L), AddressLine2 = structure(logical(0), 
            shape = "AddressLine", type = "string", max = 255L), 
        City = structure(logical(0), shape = "City", type = "string", 
            max = 255L), State = structure(logical(0), shape = "State", 
            type = "string", max = 255L), CountryCode = structure(logical(0), 
            shape = "CountryCode", type = "string"), ZipCode = structure(logical(0), 
            shape = "ZipCode", type = "string", max = 255L), 
        PhoneNumber = structure(logical(0), shape = "ContactNumber", 
            type = "string", max = 30L), Email = structure(logical(0), 
            shape = "Email", type = "string", max = 254L), Fax = structure(logical(0), 
            shape = "ContactNumber", type = "string", max = 30L), 
        ExtraParams = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ExtraParamName", type = "string"), Value = structure(logical(0), 
            shape = "ExtraParamValue", type = "string", max = 2048L)), 
            shape = "ExtraParam", type = "structure")), shape = "ExtraParamList", 
            type = "list")), shape = "ContactDetail", type = "structure", 
        sensitive = TRUE), TechContact = structure(list(FirstName = structure(logical(0), 
        shape = "ContactName", type = "string", max = 255L), 
        LastName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 255L), ContactType = structure(logical(0), 
            shape = "ContactType", type = "string"), OrganizationName = structure(logical(0), 
            shape = "ContactName", type = "string", max = 255L), 
        AddressLine1 = structure(logical(0), shape = "AddressLine", 
            type = "string", max = 255L), AddressLine2 = structure(logical(0), 
            shape = "AddressLine", type = "string", max = 255L), 
        City = structure(logical(0), shape = "City", type = "string", 
            max = 255L), State = structure(logical(0), shape = "State", 
            type = "string", max = 255L), CountryCode = structure(logical(0), 
            shape = "CountryCode", type = "string"), ZipCode = structure(logical(0), 
            shape = "ZipCode", type = "string", max = 255L), 
        PhoneNumber = structure(logical(0), shape = "ContactNumber", 
            type = "string", max = 30L), Email = structure(logical(0), 
            shape = "Email", type = "string", max = 254L), Fax = structure(logical(0), 
            shape = "ContactNumber", type = "string", max = 30L), 
        ExtraParams = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ExtraParamName", type = "string"), Value = structure(logical(0), 
            shape = "ExtraParamValue", type = "string", max = 2048L)), 
            shape = "ExtraParam", type = "structure")), shape = "ExtraParamList", 
            type = "list")), shape = "ContactDetail", type = "structure", 
        sensitive = TRUE)), shape = "UpdateDomainContactRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_domain_contact_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "OperationId", type = "string", max = 255L)), 
        shape = "UpdateDomainContactResponse", type = "structure")
    return(populate(args, shape))
}

update_domain_contact_privacy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L), AdminPrivacy = structure(logical(0), 
        shape = "Boolean", type = "boolean"), RegistrantPrivacy = structure(logical(0), 
        shape = "Boolean", type = "boolean"), TechPrivacy = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "UpdateDomainContactPrivacyRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_domain_contact_privacy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "OperationId", type = "string", max = 255L)), 
        shape = "UpdateDomainContactPrivacyResponse", type = "structure")
    return(populate(args, shape))
}

update_domain_nameservers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L), FIAuthKey = structure(logical(0), 
        shape = "FIAuthKey", deprecated = TRUE, type = "string"), 
        Nameservers = structure(list(structure(list(Name = structure(logical(0), 
            shape = "HostName", type = "string", max = 255L, 
            pattern = "[a-zA-Z0-9_\\-.]*"), GlueIps = structure(list(structure(logical(0), 
            shape = "GlueIp", type = "string", max = 45L)), shape = "GlueIpList", 
            type = "list")), shape = "Nameserver", type = "structure")), 
            shape = "NameserverList", type = "list")), shape = "UpdateDomainNameserversRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_domain_nameservers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "OperationId", type = "string", max = 255L)), 
        shape = "UpdateDomainNameserversResponse", type = "structure")
    return(populate(args, shape))
}

update_tags_for_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 255L), TagsToUpdate = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string"), Value = structure(logical(0), 
        shape = "TagValue", type = "string")), shape = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "UpdateTagsForDomainRequest", type = "structure")
    return(populate(args, shape))
}

update_tags_for_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateTagsForDomainResponse", 
        type = "structure")
    return(populate(args, shape))
}

view_billing_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Start = structure(logical(0), shape = "Timestamp", 
        type = "timestamp"), End = structure(logical(0), shape = "Timestamp", 
        type = "timestamp"), Marker = structure(logical(0), shape = "PageMarker", 
        type = "string", max = 4096L), MaxItems = structure(logical(0), 
        shape = "PageMaxItems", type = "integer", max = 100L)), 
        shape = "ViewBillingRequest", type = "structure")
    return(populate(args, shape))
}

view_billing_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextPageMarker = structure(logical(0), 
        shape = "PageMarker", type = "string", max = 4096L), 
        BillingRecords = structure(list(structure(list(DomainName = structure(logical(0), 
            shape = "DomainName", type = "string", max = 255L), 
            Operation = structure(logical(0), shape = "OperationType", 
                type = "string"), InvoiceId = structure(logical(0), 
                shape = "InvoiceId", type = "string"), BillDate = structure(logical(0), 
                shape = "Timestamp", type = "timestamp"), Price = structure(logical(0), 
                shape = "Price", type = "double")), shape = "BillingRecord", 
            type = "structure")), shape = "BillingRecords", type = "list")), 
        shape = "ViewBillingResponse", type = "structure")
    return(populate(args, shape))
}
