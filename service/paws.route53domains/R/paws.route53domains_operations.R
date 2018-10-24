#' This operation checks the availability of one domain name
#'
#' This operation checks the availability of one domain name. Note that if the availability status of a domain is pending, you must submit another request to determine the availability of the domain name.
#'
#' @param DomainName The name of the domain that you want to get availability for.
#' 
#' Constraints: The domain name can contain only the letters a through z, the numbers 0 through 9, and hyphen (-). Internationalized Domain Names are not supported.
#' @param IdnLangCode Reserved for future use.
#'
#' @examples
#'
#' @export
check_domain_availability <- function (DomainName, IdnLangCode = NULL) 
{
    op <- Operation(name = "CheckDomainAvailability", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- check_domain_availability_input(DomainName = DomainName, 
        IdnLangCode = IdnLangCode)
    output <- check_domain_availability_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Checks whether a domain name can be transferred to Amazon Route 53
#'
#' Checks whether a domain name can be transferred to Amazon Route 53.
#'
#' @param DomainName The name of the domain that you want to transfer to Amazon Route 53.
#' 
#' Constraints: The domain name can contain only the letters a through z, the numbers 0 through 9, and hyphen (-). Internationalized Domain Names are not supported.
#' @param AuthCode If the registrar for the top-level domain (TLD) requires an authorization code to transfer the domain, the code that you got from the current registrar for the domain.
#'
#' @examples
#'
#' @export
check_domain_transferability <- function (DomainName, AuthCode = NULL) 
{
    op <- Operation(name = "CheckDomainTransferability", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- check_domain_transferability_input(DomainName = DomainName, 
        AuthCode = AuthCode)
    output <- check_domain_transferability_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation deletes the specified tags for a domain
#'
#' This operation deletes the specified tags for a domain.
#' 
#' All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.
#'
#' @param DomainName The domain for which you want to delete one or more tags.
#' @param TagsToDelete A list of tag keys to delete.
#'
#' @examples
#'
#' @export
delete_tags_for_domain <- function (DomainName, TagsToDelete) 
{
    op <- Operation(name = "DeleteTagsForDomain", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_tags_for_domain_input(DomainName = DomainName, 
        TagsToDelete = TagsToDelete)
    output <- delete_tags_for_domain_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation disables automatic renewal of domain registration for the specified domain
#'
#' This operation disables automatic renewal of domain registration for the specified domain.
#'
#' @param DomainName The name of the domain that you want to disable automatic renewal for.
#'
#' @examples
#'
#' @export
disable_domain_auto_renew <- function (DomainName) 
{
    op <- Operation(name = "DisableDomainAutoRenew", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disable_domain_auto_renew_input(DomainName = DomainName)
    output <- disable_domain_auto_renew_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation removes the transfer lock on the domain (specifically the `clientTransferProhibited` status) to allow domain transfers
#'
#' This operation removes the transfer lock on the domain (specifically the `clientTransferProhibited` status) to allow domain transfers. We recommend you refrain from performing this action unless you intend to transfer the domain to a different registrar. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.
#'
#' @param DomainName The name of the domain that you want to remove the transfer lock for.
#'
#' @examples
#'
#' @export
disable_domain_transfer_lock <- function (DomainName) 
{
    op <- Operation(name = "DisableDomainTransferLock", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disable_domain_transfer_lock_input(DomainName = DomainName)
    output <- disable_domain_transfer_lock_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation configures Amazon Route 53 to automatically renew the specified domain before the domain registration expires
#'
#' This operation configures Amazon Route 53 to automatically renew the specified domain before the domain registration expires. The cost of renewing your domain registration is billed to your AWS account.
#' 
#' The period during which you can renew a domain name varies by TLD. For a list of TLDs and their renewal policies, see [\"Renewal, restoration, and deletion times\"](http://wiki.gandi.net/en/domains/renew#renewal_restoration_and_deletion_times) on the website for our registrar associate, Gandi. Amazon Route 53 requires that you renew before the end of the renewal period that is listed on the Gandi website so we can complete processing before the deadline.
#'
#' @param DomainName The name of the domain that you want to enable automatic renewal for.
#'
#' @examples
#'
#' @export
enable_domain_auto_renew <- function (DomainName) 
{
    op <- Operation(name = "EnableDomainAutoRenew", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- enable_domain_auto_renew_input(DomainName = DomainName)
    output <- enable_domain_auto_renew_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation sets the transfer lock on the domain (specifically the `clientTransferProhibited` status) to prevent domain transfers
#'
#' This operation sets the transfer lock on the domain (specifically the `clientTransferProhibited` status) to prevent domain transfers. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.
#'
#' @param DomainName The name of the domain that you want to set the transfer lock for.
#'
#' @examples
#'
#' @export
enable_domain_transfer_lock <- function (DomainName) 
{
    op <- Operation(name = "EnableDomainTransferLock", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- enable_domain_transfer_lock_input(DomainName = DomainName)
    output <- enable_domain_transfer_lock_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation returns information about whether the registrant contact has responded
#'
#' For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation returns information about whether the registrant contact has responded.
#' 
#' If you want us to resend the email, use the `ResendContactReachabilityEmail` operation.
#'
#' @param domainName The name of the domain for which you want to know whether the registrant contact has confirmed that the email address is valid.
#'
#' @examples
#'
#' @export
get_contact_reachability_status <- function (domainName = NULL) 
{
    op <- Operation(name = "GetContactReachabilityStatus", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_contact_reachability_status_input(domainName = domainName)
    output <- get_contact_reachability_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation returns detailed information about a specified domain that is associated with the current AWS account
#'
#' This operation returns detailed information about a specified domain that is associated with the current AWS account. Contact information for the domain is also returned as part of the output.
#'
#' @param DomainName The name of the domain that you want to get detailed information about.
#'
#' @examples
#'
#' @export
get_domain_detail <- function (DomainName) 
{
    op <- Operation(name = "GetDomainDetail", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_domain_detail_input(DomainName = DomainName)
    output <- get_domain_detail_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' The GetDomainSuggestions operation returns a list of suggested domain names given a string, which can either be a domain name or simply a word or phrase (without spaces)
#'
#' The GetDomainSuggestions operation returns a list of suggested domain names given a string, which can either be a domain name or simply a word or phrase (without spaces).
#'
#' @param DomainName A domain name that you want to use as the basis for a list of possible domain names. The domain name must contain a top-level domain (TLD), such as .com, that Amazon Route 53 supports. For a list of TLDs, see [Domains that You Can Register with Amazon Route 53](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html) in the *Amazon Route 53 Developer Guide*.
#' @param SuggestionCount The number of suggested domain names that you want Amazon Route 53 to return.
#' @param OnlyAvailable If `OnlyAvailable` is `true`, Amazon Route 53 returns only domain names that are available. If `OnlyAvailable` is `false`, Amazon Route 53 returns domain names without checking whether they\'re available to be registered. To determine whether the domain is available, you can call `checkDomainAvailability` for each suggestion.
#'
#' @examples
#'
#' @export
get_domain_suggestions <- function (DomainName, SuggestionCount, 
    OnlyAvailable) 
{
    op <- Operation(name = "GetDomainSuggestions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_domain_suggestions_input(DomainName = DomainName, 
        SuggestionCount = SuggestionCount, OnlyAvailable = OnlyAvailable)
    output <- get_domain_suggestions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation returns the current status of an operation that is not completed
#'
#' This operation returns the current status of an operation that is not completed.
#'
#' @param OperationId The identifier for the operation for which you want to get the status. Amazon Route 53 returned the identifier in the response to the original request.
#'
#' @examples
#'
#' @export
get_operation_detail <- function (OperationId) 
{
    op <- Operation(name = "GetOperationDetail", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_operation_detail_input(OperationId = OperationId)
    output <- get_operation_detail_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation returns all the domain names registered with Amazon Route 53 for the current AWS account
#'
#' This operation returns all the domain names registered with Amazon Route 53 for the current AWS account.
#'
#' @param Marker For an initial request for a list of domains, omit this element. If the number of domains that are associated with the current AWS account is greater than the value that you specified for `MaxItems`, you can use `Marker` to return additional domains. Get the value of `NextPageMarker` from the previous response, and submit another request that includes the value of `NextPageMarker` in the `Marker` element.
#' 
#' Constraints: The marker must match the value specified in the previous request.
#' @param MaxItems Number of domains to be returned.
#' 
#' Default: 20
#'
#' @examples
#'
#' @export
list_domains <- function (Marker = NULL, MaxItems = NULL) 
{
    op <- Operation(name = "ListDomains", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_domains_input(Marker = Marker, MaxItems = MaxItems)
    output <- list_domains_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation returns the operation IDs of operations that are not yet complete
#'
#' This operation returns the operation IDs of operations that are not yet complete.
#'
#' @param SubmittedSince An optional parameter that lets you get information about all the operations that you submitted after a specified date and time. Specify the date and time in Coordinated Universal time (UTC).
#' @param Marker For an initial request for a list of operations, omit this element. If the number of operations that are not yet complete is greater than the value that you specified for `MaxItems`, you can use `Marker` to return additional operations. Get the value of `NextPageMarker` from the previous response, and submit another request that includes the value of `NextPageMarker` in the `Marker` element.
#' @param MaxItems Number of domains to be returned.
#' 
#' Default: 20
#'
#' @examples
#'
#' @export
list_operations <- function (SubmittedSince = NULL, Marker = NULL, 
    MaxItems = NULL) 
{
    op <- Operation(name = "ListOperations", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_operations_input(SubmittedSince = SubmittedSince, 
        Marker = Marker, MaxItems = MaxItems)
    output <- list_operations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation returns all of the tags that are associated with the specified domain
#'
#' This operation returns all of the tags that are associated with the specified domain.
#' 
#' All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.
#'
#' @param DomainName The domain for which you want to get a list of tags.
#'
#' @examples
#'
#' @export
list_tags_for_domain <- function (DomainName) 
{
    op <- Operation(name = "ListTagsForDomain", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_tags_for_domain_input(DomainName = DomainName)
    output <- list_tags_for_domain_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation registers a domain
#'
#' This operation registers a domain. Domains are registered either by Amazon Registrar (for .com, .net, and .org domains) or by our registrar associate, Gandi (for all other domains). For some top-level domains (TLDs), this operation requires extra parameters.
#' 
#' When you register a domain, Amazon Route 53 does the following:
#' 
#' -   Creates a Amazon Route 53 hosted zone that has the same name as the domain. Amazon Route 53 assigns four name servers to your hosted zone and automatically updates your domain registration with the names of these name servers.
#' 
#' -   Enables autorenew, so your domain registration will renew automatically each year. We\'ll notify you in advance of the renewal date so you can choose whether to renew the registration.
#' 
#' -   Optionally enables privacy protection, so WHOIS queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you don\'t enable privacy protection, WHOIS queries return the information that you entered for the registrant, admin, and tech contacts.
#' 
#' -   If registration is successful, returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant is notified by email.
#' 
#' -   Charges your AWS account an amount based on the top-level domain. For more information, see [Amazon Route 53 Pricing](http://aws.amazon.com/route53/pricing/).
#'
#' @param DomainName The domain name that you want to register.
#' 
#' Constraints: The domain name can contain only the letters a through z, the numbers 0 through 9, and hyphen (-). Internationalized Domain Names are not supported.
#' @param DurationInYears The number of years that you want to register the domain for. Domains are registered for a minimum of one year. The maximum period depends on the top-level domain. For the range of valid values for your domain, see [Domains that You Can Register with Amazon Route 53](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html) in the *Amazon Route 53 Developer Guide*.
#' 
#' Default: 1
#' @param AdminContact Provides detailed contact information.
#' @param RegistrantContact Provides detailed contact information.
#' @param TechContact Provides detailed contact information.
#' @param IdnLangCode Reserved for future use.
#' @param AutoRenew Indicates whether the domain will be automatically renewed (`true`) or not (`false`). Autorenewal only takes effect after the account is charged.
#' 
#' Default: `true`
#' @param PrivacyProtectAdminContact Whether you want to conceal contact information from WHOIS queries. If you specify `true`, WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify `false`, WHOIS queries return the information that you entered for the admin contact.
#' 
#' Default: `true`
#' @param PrivacyProtectRegistrantContact Whether you want to conceal contact information from WHOIS queries. If you specify `true`, WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify `false`, WHOIS queries return the information that you entered for the registrant contact (the domain owner).
#' 
#' Default: `true`
#' @param PrivacyProtectTechContact Whether you want to conceal contact information from WHOIS queries. If you specify `true`, WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify `false`, WHOIS queries return the information that you entered for the technical contact.
#' 
#' Default: `true`
#'
#' @examples
#'
#' @export
register_domain <- function (DomainName, DurationInYears, AdminContact, 
    RegistrantContact, TechContact, IdnLangCode = NULL, AutoRenew = NULL, 
    PrivacyProtectAdminContact = NULL, PrivacyProtectRegistrantContact = NULL, 
    PrivacyProtectTechContact = NULL) 
{
    op <- Operation(name = "RegisterDomain", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- register_domain_input(DomainName = DomainName, DurationInYears = DurationInYears, 
        AdminContact = AdminContact, RegistrantContact = RegistrantContact, 
        TechContact = TechContact, IdnLangCode = IdnLangCode, 
        AutoRenew = AutoRenew, PrivacyProtectAdminContact = PrivacyProtectAdminContact, 
        PrivacyProtectRegistrantContact = PrivacyProtectRegistrantContact, 
        PrivacyProtectTechContact = PrivacyProtectTechContact)
    output <- register_domain_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation renews a domain for the specified number of years
#'
#' This operation renews a domain for the specified number of years. The cost of renewing your domain is billed to your AWS account.
#' 
#' We recommend that you renew your domain several weeks before the expiration date. Some TLD registries delete domains before the expiration date if you haven\'t renewed far enough in advance. For more information about renewing domain registration, see [Renewing Registration for a Domain](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-renew.html) in the Amazon Route 53 Developer Guide.
#'
#' @param DomainName The name of the domain that you want to renew.
#' @param CurrentExpiryYear The year when the registration for the domain is set to expire. This value must match the current expiration date for the domain.
#' @param DurationInYears The number of years that you want to renew the domain for. The maximum number of years depends on the top-level domain. For the range of valid values for your domain, see [Domains that You Can Register with Amazon Route 53](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html) in the *Amazon Route 53 Developer Guide*.
#' 
#' Default: 1
#'
#' @examples
#'
#' @export
renew_domain <- function (DomainName, CurrentExpiryYear, DurationInYears = NULL) 
{
    op <- Operation(name = "RenewDomain", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- renew_domain_input(DomainName = DomainName, CurrentExpiryYear = CurrentExpiryYear, 
        DurationInYears = DurationInYears)
    output <- renew_domain_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation resends the confirmation email to the current email address for the registrant contact
#'
#' For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation resends the confirmation email to the current email address for the registrant contact.
#'
#' @param domainName The name of the domain for which you want Amazon Route 53 to resend a confirmation email to the registrant contact.
#'
#' @examples
#'
#' @export
resend_contact_reachability_email <- function (domainName = NULL) 
{
    op <- Operation(name = "ResendContactReachabilityEmail", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- resend_contact_reachability_email_input(domainName = domainName)
    output <- resend_contact_reachability_email_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation returns the AuthCode for the domain
#'
#' This operation returns the AuthCode for the domain. To transfer a domain to another registrar, you provide this value to the new registrar.
#'
#' @param DomainName The name of the domain that you want to get an authorization code for.
#'
#' @examples
#'
#' @export
retrieve_domain_auth_code <- function (DomainName) 
{
    op <- Operation(name = "RetrieveDomainAuthCode", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- retrieve_domain_auth_code_input(DomainName = DomainName)
    output <- retrieve_domain_auth_code_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation transfers a domain from another registrar to Amazon Route 53
#'
#' This operation transfers a domain from another registrar to Amazon Route 53. When the transfer is complete, the domain is registered either with Amazon Registrar (for .com, .net, and .org domains) or with our registrar associate, Gandi (for all other TLDs).
#' 
#' For transfer requirements, a detailed procedure, and information about viewing the status of a domain transfer, see [Transferring Registration for a Domain to Amazon Route 53](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html) in the *Amazon Route 53 Developer Guide*.
#' 
#' If the registrar for your domain is also the DNS service provider for the domain, we highly recommend that you consider transferring your DNS service to Amazon Route 53 or to another DNS service provider before you transfer your registration. Some registrars provide free DNS service when you purchase a domain registration. When you transfer the registration, the previous registrar will not renew your domain registration and could end your DNS service at any time.
#' 
#' If the registrar for your domain is also the DNS service provider for the domain and you don\'t transfer DNS service to another provider, your website, email, and the web applications associated with the domain might become unavailable.
#' 
#' If the transfer is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the transfer doesn\'t complete successfully, the domain registrant will be notified by email.
#'
#' @param DomainName The name of the domain that you want to transfer to Amazon Route 53.
#' 
#' Constraints: The domain name can contain only the letters a through z, the numbers 0 through 9, and hyphen (-). Internationalized Domain Names are not supported.
#' @param DurationInYears The number of years that you want to register the domain for. Domains are registered for a minimum of one year. The maximum period depends on the top-level domain.
#' 
#' Default: 1
#' @param AdminContact Provides detailed contact information.
#' @param RegistrantContact Provides detailed contact information.
#' @param TechContact Provides detailed contact information.
#' @param IdnLangCode Reserved for future use.
#' @param Nameservers Contains details for the host and glue IP addresses.
#' @param AuthCode The authorization code for the domain. You get this value from the current registrar.
#' @param AutoRenew Indicates whether the domain will be automatically renewed (true) or not (false). Autorenewal only takes effect after the account is charged.
#' 
#' Default: true
#' @param PrivacyProtectAdminContact Whether you want to conceal contact information from WHOIS queries. If you specify `true`, WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify `false`, WHOIS queries return the information that you entered for the admin contact.
#' 
#' Default: `true`
#' @param PrivacyProtectRegistrantContact Whether you want to conceal contact information from WHOIS queries. If you specify `true`, WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify `false`, WHOIS queries return the information that you entered for the registrant contact (domain owner).
#' 
#' Default: `true`
#' @param PrivacyProtectTechContact Whether you want to conceal contact information from WHOIS queries. If you specify `true`, WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify `false`, WHOIS queries return the information that you entered for the technical contact.
#' 
#' Default: `true`
#'
#' @examples
#'
#' @export
transfer_domain <- function (DomainName, DurationInYears, AdminContact, 
    RegistrantContact, TechContact, IdnLangCode = NULL, Nameservers = NULL, 
    AuthCode = NULL, AutoRenew = NULL, PrivacyProtectAdminContact = NULL, 
    PrivacyProtectRegistrantContact = NULL, PrivacyProtectTechContact = NULL) 
{
    op <- Operation(name = "TransferDomain", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- transfer_domain_input(DomainName = DomainName, DurationInYears = DurationInYears, 
        AdminContact = AdminContact, RegistrantContact = RegistrantContact, 
        TechContact = TechContact, IdnLangCode = IdnLangCode, 
        Nameservers = Nameservers, AuthCode = AuthCode, AutoRenew = AutoRenew, 
        PrivacyProtectAdminContact = PrivacyProtectAdminContact, 
        PrivacyProtectRegistrantContact = PrivacyProtectRegistrantContact, 
        PrivacyProtectTechContact = PrivacyProtectTechContact)
    output <- transfer_domain_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation updates the contact information for a particular domain
#'
#' This operation updates the contact information for a particular domain. You must specify information for at least one contact: registrant, administrator, or technical.
#' 
#' If the update is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.
#'
#' @param DomainName The name of the domain that you want to update contact information for.
#' @param AdminContact Provides detailed contact information.
#' @param RegistrantContact Provides detailed contact information.
#' @param TechContact Provides detailed contact information.
#'
#' @examples
#'
#' @export
update_domain_contact <- function (DomainName, AdminContact = NULL, 
    RegistrantContact = NULL, TechContact = NULL) 
{
    op <- Operation(name = "UpdateDomainContact", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_domain_contact_input(DomainName = DomainName, 
        AdminContact = AdminContact, RegistrantContact = RegistrantContact, 
        TechContact = TechContact)
    output <- update_domain_contact_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation updates the specified domain contact\'s privacy setting
#'
#' This operation updates the specified domain contact\'s privacy setting. When privacy protection is enabled, contact information such as email address is replaced either with contact information for Amazon Registrar (for .com, .net, and .org domains) or with contact information for our registrar associate, Gandi.
#' 
#' This operation affects only the contact information for the specified contact type (registrant, administrator, or tech). If the request succeeds, Amazon Route 53 returns an operation ID that you can use with GetOperationDetail to track the progress and completion of the action. If the request doesn\'t complete successfully, the domain registrant will be notified by email.
#'
#' @param DomainName The name of the domain that you want to update the privacy setting for.
#' @param AdminPrivacy Whether you want to conceal contact information from WHOIS queries. If you specify `true`, WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify `false`, WHOIS queries return the information that you entered for the admin contact.
#' @param RegistrantPrivacy Whether you want to conceal contact information from WHOIS queries. If you specify `true`, WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify `false`, WHOIS queries return the information that you entered for the registrant contact (domain owner).
#' @param TechPrivacy Whether you want to conceal contact information from WHOIS queries. If you specify `true`, WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify `false`, WHOIS queries return the information that you entered for the technical contact.
#'
#' @examples
#'
#' @export
update_domain_contact_privacy <- function (DomainName, AdminPrivacy = NULL, 
    RegistrantPrivacy = NULL, TechPrivacy = NULL) 
{
    op <- Operation(name = "UpdateDomainContactPrivacy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_domain_contact_privacy_input(DomainName = DomainName, 
        AdminPrivacy = AdminPrivacy, RegistrantPrivacy = RegistrantPrivacy, 
        TechPrivacy = TechPrivacy)
    output <- update_domain_contact_privacy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation replaces the current set of name servers for the domain with the specified set of name servers
#'
#' This operation replaces the current set of name servers for the domain with the specified set of name servers. If you use Amazon Route 53 as your DNS service, specify the four name servers in the delegation set for the hosted zone for the domain.
#' 
#' If successful, this operation returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.
#'
#' @param DomainName The name of the domain that you want to change name servers for.
#' @param Nameservers A list of new name servers for the domain.
#' @param FIAuthKey The authorization key for .fi domains
#'
#' @examples
#'
#' @export
update_domain_nameservers <- function (DomainName, Nameservers, 
    FIAuthKey = NULL) 
{
    op <- Operation(name = "UpdateDomainNameservers", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_domain_nameservers_input(DomainName = DomainName, 
        Nameservers = Nameservers, FIAuthKey = FIAuthKey)
    output <- update_domain_nameservers_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation adds or updates tags for a specified domain
#'
#' This operation adds or updates tags for a specified domain.
#' 
#' All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.
#'
#' @param DomainName The domain for which you want to add or update tags.
#' @param TagsToUpdate A list of the tag keys and values that you want to add or update. If you specify a key that already exists, the corresponding value will be replaced.
#'
#' @examples
#'
#' @export
update_tags_for_domain <- function (DomainName, TagsToUpdate = NULL) 
{
    op <- Operation(name = "UpdateTagsForDomain", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_tags_for_domain_input(DomainName = DomainName, 
        TagsToUpdate = TagsToUpdate)
    output <- update_tags_for_domain_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns all the domain-related billing records for the current AWS account for a specified period
#'
#' Returns all the domain-related billing records for the current AWS account for a specified period
#'
#' @param Start The beginning date and time for the time period for which you want a list of billing records. Specify the date and time in Coordinated Universal time (UTC).
#' @param End The end date and time for the time period for which you want a list of billing records. Specify the date and time in Coordinated Universal time (UTC).
#' @param Marker For an initial request for a list of billing records, omit this element. If the number of billing records that are associated with the current AWS account during the specified period is greater than the value that you specified for `MaxItems`, you can use `Marker` to return additional billing records. Get the value of `NextPageMarker` from the previous response, and submit another request that includes the value of `NextPageMarker` in the `Marker` element.
#' 
#' Constraints: The marker must match the value of `NextPageMarker` that was returned in the previous response.
#' @param MaxItems The number of billing records to be returned.
#' 
#' Default: 20
#'
#' @examples
#'
#' @export
view_billing <- function (Start = NULL, End = NULL, Marker = NULL, 
    MaxItems = NULL) 
{
    op <- Operation(name = "ViewBilling", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- view_billing_input(Start = Start, End = End, Marker = Marker, 
        MaxItems = MaxItems)
    output <- view_billing_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
