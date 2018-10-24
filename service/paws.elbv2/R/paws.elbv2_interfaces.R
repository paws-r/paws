add_listener_certificates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ListenerArn = structure(logical(0), 
        shape = "ListenerArn", type = "string"), Certificates = structure(list(structure(list(CertificateArn = structure(logical(0), 
        shape = "CertificateArn", type = "string"), IsDefault = structure(logical(0), 
        shape = "Default", type = "boolean")), shape = "Certificate", 
        type = "structure")), shape = "CertificateList", type = "list")), 
        shape = "AddListenerCertificatesInput", type = "structure")
    return(populate(args, shape))
}

add_listener_certificates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Certificates = structure(list(structure(list(CertificateArn = structure(logical(0), 
        shape = "CertificateArn", type = "string"), IsDefault = structure(logical(0), 
        shape = "Default", type = "boolean")), shape = "Certificate", 
        type = "structure")), shape = "CertificateList", type = "list")), 
        shape = "AddListenerCertificatesOutput", type = "structure")
    return(populate(args, shape))
}

add_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArns = structure(list(structure(logical(0), 
        shape = "ResourceArn", type = "string")), shape = "ResourceArns", 
        type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), Value = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 0L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "Tag", 
        type = "structure")), shape = "TagList", type = "list", 
        min = 1L)), shape = "AddTagsInput", type = "structure")
    return(populate(args, shape))
}

add_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AddTagsOutput", type = "structure")
    return(populate(args, shape))
}

create_listener_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerArn = structure(logical(0), 
        shape = "LoadBalancerArn", type = "string"), Protocol = structure(logical(0), 
        shape = "ProtocolEnum", type = "string"), Port = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 1L), 
        SslPolicy = structure(logical(0), shape = "SslPolicyName", 
            type = "string"), Certificates = structure(list(structure(list(CertificateArn = structure(logical(0), 
            shape = "CertificateArn", type = "string"), IsDefault = structure(logical(0), 
            shape = "Default", type = "boolean")), shape = "Certificate", 
            type = "structure")), shape = "CertificateList", 
            type = "list"), DefaultActions = structure(list(structure(list(Type = structure(logical(0), 
            shape = "ActionTypeEnum", type = "string"), TargetGroupArn = structure(logical(0), 
            shape = "TargetGroupArn", type = "string"), AuthenticateOidcConfig = structure(list(Issuer = structure(logical(0), 
            shape = "AuthenticateOidcActionIssuer", type = "string"), 
            AuthorizationEndpoint = structure(logical(0), shape = "AuthenticateOidcActionAuthorizationEndpoint", 
                type = "string"), TokenEndpoint = structure(logical(0), 
                shape = "AuthenticateOidcActionTokenEndpoint", 
                type = "string"), UserInfoEndpoint = structure(logical(0), 
                shape = "AuthenticateOidcActionUserInfoEndpoint", 
                type = "string"), ClientId = structure(logical(0), 
                shape = "AuthenticateOidcActionClientId", type = "string"), 
            ClientSecret = structure(logical(0), shape = "AuthenticateOidcActionClientSecret", 
                type = "string"), SessionCookieName = structure(logical(0), 
                shape = "AuthenticateOidcActionSessionCookieName", 
                type = "string"), Scope = structure(logical(0), 
                shape = "AuthenticateOidcActionScope", type = "string"), 
            SessionTimeout = structure(logical(0), shape = "AuthenticateOidcActionSessionTimeout", 
                type = "long"), AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
                shape = "AuthenticateOidcActionAuthenticationRequestParamValue", 
                type = "string")), shape = "AuthenticateOidcActionAuthenticationRequestExtraParams", 
                type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
                shape = "AuthenticateOidcActionConditionalBehaviorEnum", 
                type = "string")), shape = "AuthenticateOidcActionConfig", 
            type = "structure"), AuthenticateCognitoConfig = structure(list(UserPoolArn = structure(logical(0), 
            shape = "AuthenticateCognitoActionUserPoolArn", type = "string"), 
            UserPoolClientId = structure(logical(0), shape = "AuthenticateCognitoActionUserPoolClientId", 
                type = "string"), UserPoolDomain = structure(logical(0), 
                shape = "AuthenticateCognitoActionUserPoolDomain", 
                type = "string"), SessionCookieName = structure(logical(0), 
                shape = "AuthenticateCognitoActionSessionCookieName", 
                type = "string"), Scope = structure(logical(0), 
                shape = "AuthenticateCognitoActionScope", type = "string"), 
            SessionTimeout = structure(logical(0), shape = "AuthenticateCognitoActionSessionTimeout", 
                type = "long"), AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
                shape = "AuthenticateCognitoActionAuthenticationRequestParamValue", 
                type = "string")), shape = "AuthenticateCognitoActionAuthenticationRequestExtraParams", 
                type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
                shape = "AuthenticateCognitoActionConditionalBehaviorEnum", 
                type = "string")), shape = "AuthenticateCognitoActionConfig", 
            type = "structure"), Order = structure(logical(0), 
            shape = "ActionOrder", type = "integer", max = 50000L, 
            min = 1L), RedirectConfig = structure(list(Protocol = structure(logical(0), 
            shape = "RedirectActionProtocol", type = "string", 
            pattern = "^(HTTPS?|#\\{protocol\\})$"), Port = structure(logical(0), 
            shape = "RedirectActionPort", type = "string"), Host = structure(logical(0), 
            shape = "RedirectActionHost", type = "string", max = 128L, 
            min = 1L), Path = structure(logical(0), shape = "RedirectActionPath", 
            type = "string", max = 128L, min = 1L), Query = structure(logical(0), 
            shape = "RedirectActionQuery", type = "string", max = 128L, 
            min = 0L), StatusCode = structure(logical(0), shape = "RedirectActionStatusCodeEnum", 
            type = "string")), shape = "RedirectActionConfig", 
            type = "structure"), FixedResponseConfig = structure(list(MessageBody = structure(logical(0), 
            shape = "FixedResponseActionMessage", type = "string", 
            max = 1024L, min = 0L), StatusCode = structure(logical(0), 
            shape = "FixedResponseActionStatusCode", type = "string", 
            pattern = "^(2|4|5)\\d\\d$"), ContentType = structure(logical(0), 
            shape = "FixedResponseActionContentType", type = "string", 
            max = 32L, min = 0L)), shape = "FixedResponseActionConfig", 
            type = "structure")), shape = "Action", type = "structure")), 
            shape = "Actions", type = "list")), shape = "CreateListenerInput", 
        type = "structure")
    return(populate(args, shape))
}

create_listener_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Listeners = structure(list(structure(list(ListenerArn = structure(logical(0), 
        shape = "ListenerArn", type = "string"), LoadBalancerArn = structure(logical(0), 
        shape = "LoadBalancerArn", type = "string"), Port = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 1L), 
        Protocol = structure(logical(0), shape = "ProtocolEnum", 
            type = "string"), Certificates = structure(list(structure(list(CertificateArn = structure(logical(0), 
            shape = "CertificateArn", type = "string"), IsDefault = structure(logical(0), 
            shape = "Default", type = "boolean")), shape = "Certificate", 
            type = "structure")), shape = "CertificateList", 
            type = "list"), SslPolicy = structure(logical(0), 
            shape = "SslPolicyName", type = "string"), DefaultActions = structure(list(structure(list(Type = structure(logical(0), 
            shape = "ActionTypeEnum", type = "string"), TargetGroupArn = structure(logical(0), 
            shape = "TargetGroupArn", type = "string"), AuthenticateOidcConfig = structure(list(Issuer = structure(logical(0), 
            shape = "AuthenticateOidcActionIssuer", type = "string"), 
            AuthorizationEndpoint = structure(logical(0), shape = "AuthenticateOidcActionAuthorizationEndpoint", 
                type = "string"), TokenEndpoint = structure(logical(0), 
                shape = "AuthenticateOidcActionTokenEndpoint", 
                type = "string"), UserInfoEndpoint = structure(logical(0), 
                shape = "AuthenticateOidcActionUserInfoEndpoint", 
                type = "string"), ClientId = structure(logical(0), 
                shape = "AuthenticateOidcActionClientId", type = "string"), 
            ClientSecret = structure(logical(0), shape = "AuthenticateOidcActionClientSecret", 
                type = "string"), SessionCookieName = structure(logical(0), 
                shape = "AuthenticateOidcActionSessionCookieName", 
                type = "string"), Scope = structure(logical(0), 
                shape = "AuthenticateOidcActionScope", type = "string"), 
            SessionTimeout = structure(logical(0), shape = "AuthenticateOidcActionSessionTimeout", 
                type = "long"), AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
                shape = "AuthenticateOidcActionAuthenticationRequestParamValue", 
                type = "string")), shape = "AuthenticateOidcActionAuthenticationRequestExtraParams", 
                type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
                shape = "AuthenticateOidcActionConditionalBehaviorEnum", 
                type = "string")), shape = "AuthenticateOidcActionConfig", 
            type = "structure"), AuthenticateCognitoConfig = structure(list(UserPoolArn = structure(logical(0), 
            shape = "AuthenticateCognitoActionUserPoolArn", type = "string"), 
            UserPoolClientId = structure(logical(0), shape = "AuthenticateCognitoActionUserPoolClientId", 
                type = "string"), UserPoolDomain = structure(logical(0), 
                shape = "AuthenticateCognitoActionUserPoolDomain", 
                type = "string"), SessionCookieName = structure(logical(0), 
                shape = "AuthenticateCognitoActionSessionCookieName", 
                type = "string"), Scope = structure(logical(0), 
                shape = "AuthenticateCognitoActionScope", type = "string"), 
            SessionTimeout = structure(logical(0), shape = "AuthenticateCognitoActionSessionTimeout", 
                type = "long"), AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
                shape = "AuthenticateCognitoActionAuthenticationRequestParamValue", 
                type = "string")), shape = "AuthenticateCognitoActionAuthenticationRequestExtraParams", 
                type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
                shape = "AuthenticateCognitoActionConditionalBehaviorEnum", 
                type = "string")), shape = "AuthenticateCognitoActionConfig", 
            type = "structure"), Order = structure(logical(0), 
            shape = "ActionOrder", type = "integer", max = 50000L, 
            min = 1L), RedirectConfig = structure(list(Protocol = structure(logical(0), 
            shape = "RedirectActionProtocol", type = "string", 
            pattern = "^(HTTPS?|#\\{protocol\\})$"), Port = structure(logical(0), 
            shape = "RedirectActionPort", type = "string"), Host = structure(logical(0), 
            shape = "RedirectActionHost", type = "string", max = 128L, 
            min = 1L), Path = structure(logical(0), shape = "RedirectActionPath", 
            type = "string", max = 128L, min = 1L), Query = structure(logical(0), 
            shape = "RedirectActionQuery", type = "string", max = 128L, 
            min = 0L), StatusCode = structure(logical(0), shape = "RedirectActionStatusCodeEnum", 
            type = "string")), shape = "RedirectActionConfig", 
            type = "structure"), FixedResponseConfig = structure(list(MessageBody = structure(logical(0), 
            shape = "FixedResponseActionMessage", type = "string", 
            max = 1024L, min = 0L), StatusCode = structure(logical(0), 
            shape = "FixedResponseActionStatusCode", type = "string", 
            pattern = "^(2|4|5)\\d\\d$"), ContentType = structure(logical(0), 
            shape = "FixedResponseActionContentType", type = "string", 
            max = 32L, min = 0L)), shape = "FixedResponseActionConfig", 
            type = "structure")), shape = "Action", type = "structure")), 
            shape = "Actions", type = "list")), shape = "Listener", 
        type = "structure")), shape = "Listeners", type = "list")), 
        shape = "CreateListenerOutput", type = "structure")
    return(populate(args, shape))
}

create_load_balancer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "LoadBalancerName", 
        type = "string"), Subnets = structure(list(structure(logical(0), 
        shape = "SubnetId", type = "string")), shape = "Subnets", 
        type = "list"), SubnetMappings = structure(list(structure(list(SubnetId = structure(logical(0), 
        shape = "SubnetId", type = "string"), AllocationId = structure(logical(0), 
        shape = "AllocationId", type = "string")), shape = "SubnetMapping", 
        type = "structure")), shape = "SubnetMappings", type = "list"), 
        SecurityGroups = structure(list(structure(logical(0), 
            shape = "SecurityGroupId", type = "string")), shape = "SecurityGroups", 
            type = "list"), Scheme = structure(logical(0), shape = "LoadBalancerSchemeEnum", 
            type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list", min = 1L), Type = structure(logical(0), 
            shape = "LoadBalancerTypeEnum", type = "string"), 
        IpAddressType = structure(logical(0), shape = "IpAddressType", 
            type = "string")), shape = "CreateLoadBalancerInput", 
        type = "structure")
    return(populate(args, shape))
}

create_load_balancer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancers = structure(list(structure(list(LoadBalancerArn = structure(logical(0), 
        shape = "LoadBalancerArn", type = "string"), DNSName = structure(logical(0), 
        shape = "DNSName", type = "string"), CanonicalHostedZoneId = structure(logical(0), 
        shape = "CanonicalHostedZoneId", type = "string"), CreatedTime = structure(logical(0), 
        shape = "CreatedTime", type = "timestamp"), LoadBalancerName = structure(logical(0), 
        shape = "LoadBalancerName", type = "string"), Scheme = structure(logical(0), 
        shape = "LoadBalancerSchemeEnum", type = "string"), VpcId = structure(logical(0), 
        shape = "VpcId", type = "string"), State = structure(list(Code = structure(logical(0), 
        shape = "LoadBalancerStateEnum", type = "string"), Reason = structure(logical(0), 
        shape = "StateReason", type = "string")), shape = "LoadBalancerState", 
        type = "structure"), Type = structure(logical(0), shape = "LoadBalancerTypeEnum", 
        type = "string"), AvailabilityZones = structure(list(structure(list(ZoneName = structure(logical(0), 
        shape = "ZoneName", type = "string"), SubnetId = structure(logical(0), 
        shape = "SubnetId", type = "string"), LoadBalancerAddresses = structure(list(structure(list(IpAddress = structure(logical(0), 
        shape = "IpAddress", type = "string"), AllocationId = structure(logical(0), 
        shape = "AllocationId", type = "string")), shape = "LoadBalancerAddress", 
        type = "structure")), shape = "LoadBalancerAddresses", 
        type = "list")), shape = "AvailabilityZone", type = "structure")), 
        shape = "AvailabilityZones", type = "list"), SecurityGroups = structure(list(structure(logical(0), 
        shape = "SecurityGroupId", type = "string")), shape = "SecurityGroups", 
        type = "list"), IpAddressType = structure(logical(0), 
        shape = "IpAddressType", type = "string")), shape = "LoadBalancer", 
        type = "structure")), shape = "LoadBalancers", type = "list")), 
        shape = "CreateLoadBalancerOutput", type = "structure")
    return(populate(args, shape))
}

create_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ListenerArn = structure(logical(0), 
        shape = "ListenerArn", type = "string"), Conditions = structure(list(structure(list(Field = structure(logical(0), 
        shape = "ConditionFieldName", type = "string", max = 64L), 
        Values = structure(list(structure(logical(0), shape = "StringValue", 
            type = "string")), shape = "ListOfString", type = "list")), 
        shape = "RuleCondition", type = "structure")), shape = "RuleConditionList", 
        type = "list"), Priority = structure(logical(0), shape = "RulePriority", 
        type = "integer", max = 50000L, min = 1L), Actions = structure(list(structure(list(Type = structure(logical(0), 
        shape = "ActionTypeEnum", type = "string"), TargetGroupArn = structure(logical(0), 
        shape = "TargetGroupArn", type = "string"), AuthenticateOidcConfig = structure(list(Issuer = structure(logical(0), 
        shape = "AuthenticateOidcActionIssuer", type = "string"), 
        AuthorizationEndpoint = structure(logical(0), shape = "AuthenticateOidcActionAuthorizationEndpoint", 
            type = "string"), TokenEndpoint = structure(logical(0), 
            shape = "AuthenticateOidcActionTokenEndpoint", type = "string"), 
        UserInfoEndpoint = structure(logical(0), shape = "AuthenticateOidcActionUserInfoEndpoint", 
            type = "string"), ClientId = structure(logical(0), 
            shape = "AuthenticateOidcActionClientId", type = "string"), 
        ClientSecret = structure(logical(0), shape = "AuthenticateOidcActionClientSecret", 
            type = "string"), SessionCookieName = structure(logical(0), 
            shape = "AuthenticateOidcActionSessionCookieName", 
            type = "string"), Scope = structure(logical(0), shape = "AuthenticateOidcActionScope", 
            type = "string"), SessionTimeout = structure(logical(0), 
            shape = "AuthenticateOidcActionSessionTimeout", type = "long"), 
        AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
            shape = "AuthenticateOidcActionAuthenticationRequestParamValue", 
            type = "string")), shape = "AuthenticateOidcActionAuthenticationRequestExtraParams", 
            type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
            shape = "AuthenticateOidcActionConditionalBehaviorEnum", 
            type = "string")), shape = "AuthenticateOidcActionConfig", 
        type = "structure"), AuthenticateCognitoConfig = structure(list(UserPoolArn = structure(logical(0), 
        shape = "AuthenticateCognitoActionUserPoolArn", type = "string"), 
        UserPoolClientId = structure(logical(0), shape = "AuthenticateCognitoActionUserPoolClientId", 
            type = "string"), UserPoolDomain = structure(logical(0), 
            shape = "AuthenticateCognitoActionUserPoolDomain", 
            type = "string"), SessionCookieName = structure(logical(0), 
            shape = "AuthenticateCognitoActionSessionCookieName", 
            type = "string"), Scope = structure(logical(0), shape = "AuthenticateCognitoActionScope", 
            type = "string"), SessionTimeout = structure(logical(0), 
            shape = "AuthenticateCognitoActionSessionTimeout", 
            type = "long"), AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
            shape = "AuthenticateCognitoActionAuthenticationRequestParamValue", 
            type = "string")), shape = "AuthenticateCognitoActionAuthenticationRequestExtraParams", 
            type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
            shape = "AuthenticateCognitoActionConditionalBehaviorEnum", 
            type = "string")), shape = "AuthenticateCognitoActionConfig", 
        type = "structure"), Order = structure(logical(0), shape = "ActionOrder", 
        type = "integer", max = 50000L, min = 1L), RedirectConfig = structure(list(Protocol = structure(logical(0), 
        shape = "RedirectActionProtocol", type = "string", pattern = "^(HTTPS?|#\\{protocol\\})$"), 
        Port = structure(logical(0), shape = "RedirectActionPort", 
            type = "string"), Host = structure(logical(0), shape = "RedirectActionHost", 
            type = "string", max = 128L, min = 1L), Path = structure(logical(0), 
            shape = "RedirectActionPath", type = "string", max = 128L, 
            min = 1L), Query = structure(logical(0), shape = "RedirectActionQuery", 
            type = "string", max = 128L, min = 0L), StatusCode = structure(logical(0), 
            shape = "RedirectActionStatusCodeEnum", type = "string")), 
        shape = "RedirectActionConfig", type = "structure"), 
        FixedResponseConfig = structure(list(MessageBody = structure(logical(0), 
            shape = "FixedResponseActionMessage", type = "string", 
            max = 1024L, min = 0L), StatusCode = structure(logical(0), 
            shape = "FixedResponseActionStatusCode", type = "string", 
            pattern = "^(2|4|5)\\d\\d$"), ContentType = structure(logical(0), 
            shape = "FixedResponseActionContentType", type = "string", 
            max = 32L, min = 0L)), shape = "FixedResponseActionConfig", 
            type = "structure")), shape = "Action", type = "structure")), 
        shape = "Actions", type = "list")), shape = "CreateRuleInput", 
        type = "structure")
    return(populate(args, shape))
}

create_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Rules = structure(list(structure(list(RuleArn = structure(logical(0), 
        shape = "RuleArn", type = "string"), Priority = structure(logical(0), 
        shape = "String", type = "string"), Conditions = structure(list(structure(list(Field = structure(logical(0), 
        shape = "ConditionFieldName", type = "string", max = 64L), 
        Values = structure(list(structure(logical(0), shape = "StringValue", 
            type = "string")), shape = "ListOfString", type = "list")), 
        shape = "RuleCondition", type = "structure")), shape = "RuleConditionList", 
        type = "list"), Actions = structure(list(structure(list(Type = structure(logical(0), 
        shape = "ActionTypeEnum", type = "string"), TargetGroupArn = structure(logical(0), 
        shape = "TargetGroupArn", type = "string"), AuthenticateOidcConfig = structure(list(Issuer = structure(logical(0), 
        shape = "AuthenticateOidcActionIssuer", type = "string"), 
        AuthorizationEndpoint = structure(logical(0), shape = "AuthenticateOidcActionAuthorizationEndpoint", 
            type = "string"), TokenEndpoint = structure(logical(0), 
            shape = "AuthenticateOidcActionTokenEndpoint", type = "string"), 
        UserInfoEndpoint = structure(logical(0), shape = "AuthenticateOidcActionUserInfoEndpoint", 
            type = "string"), ClientId = structure(logical(0), 
            shape = "AuthenticateOidcActionClientId", type = "string"), 
        ClientSecret = structure(logical(0), shape = "AuthenticateOidcActionClientSecret", 
            type = "string"), SessionCookieName = structure(logical(0), 
            shape = "AuthenticateOidcActionSessionCookieName", 
            type = "string"), Scope = structure(logical(0), shape = "AuthenticateOidcActionScope", 
            type = "string"), SessionTimeout = structure(logical(0), 
            shape = "AuthenticateOidcActionSessionTimeout", type = "long"), 
        AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
            shape = "AuthenticateOidcActionAuthenticationRequestParamValue", 
            type = "string")), shape = "AuthenticateOidcActionAuthenticationRequestExtraParams", 
            type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
            shape = "AuthenticateOidcActionConditionalBehaviorEnum", 
            type = "string")), shape = "AuthenticateOidcActionConfig", 
        type = "structure"), AuthenticateCognitoConfig = structure(list(UserPoolArn = structure(logical(0), 
        shape = "AuthenticateCognitoActionUserPoolArn", type = "string"), 
        UserPoolClientId = structure(logical(0), shape = "AuthenticateCognitoActionUserPoolClientId", 
            type = "string"), UserPoolDomain = structure(logical(0), 
            shape = "AuthenticateCognitoActionUserPoolDomain", 
            type = "string"), SessionCookieName = structure(logical(0), 
            shape = "AuthenticateCognitoActionSessionCookieName", 
            type = "string"), Scope = structure(logical(0), shape = "AuthenticateCognitoActionScope", 
            type = "string"), SessionTimeout = structure(logical(0), 
            shape = "AuthenticateCognitoActionSessionTimeout", 
            type = "long"), AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
            shape = "AuthenticateCognitoActionAuthenticationRequestParamValue", 
            type = "string")), shape = "AuthenticateCognitoActionAuthenticationRequestExtraParams", 
            type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
            shape = "AuthenticateCognitoActionConditionalBehaviorEnum", 
            type = "string")), shape = "AuthenticateCognitoActionConfig", 
        type = "structure"), Order = structure(logical(0), shape = "ActionOrder", 
        type = "integer", max = 50000L, min = 1L), RedirectConfig = structure(list(Protocol = structure(logical(0), 
        shape = "RedirectActionProtocol", type = "string", pattern = "^(HTTPS?|#\\{protocol\\})$"), 
        Port = structure(logical(0), shape = "RedirectActionPort", 
            type = "string"), Host = structure(logical(0), shape = "RedirectActionHost", 
            type = "string", max = 128L, min = 1L), Path = structure(logical(0), 
            shape = "RedirectActionPath", type = "string", max = 128L, 
            min = 1L), Query = structure(logical(0), shape = "RedirectActionQuery", 
            type = "string", max = 128L, min = 0L), StatusCode = structure(logical(0), 
            shape = "RedirectActionStatusCodeEnum", type = "string")), 
        shape = "RedirectActionConfig", type = "structure"), 
        FixedResponseConfig = structure(list(MessageBody = structure(logical(0), 
            shape = "FixedResponseActionMessage", type = "string", 
            max = 1024L, min = 0L), StatusCode = structure(logical(0), 
            shape = "FixedResponseActionStatusCode", type = "string", 
            pattern = "^(2|4|5)\\d\\d$"), ContentType = structure(logical(0), 
            shape = "FixedResponseActionContentType", type = "string", 
            max = 32L, min = 0L)), shape = "FixedResponseActionConfig", 
            type = "structure")), shape = "Action", type = "structure")), 
        shape = "Actions", type = "list"), IsDefault = structure(logical(0), 
        shape = "IsDefault", type = "boolean")), shape = "Rule", 
        type = "structure")), shape = "Rules", type = "list")), 
        shape = "CreateRuleOutput", type = "structure")
    return(populate(args, shape))
}

create_target_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "TargetGroupName", 
        type = "string"), Protocol = structure(logical(0), shape = "ProtocolEnum", 
        type = "string"), Port = structure(logical(0), shape = "Port", 
        type = "integer", max = 65535L, min = 1L), VpcId = structure(logical(0), 
        shape = "VpcId", type = "string"), HealthCheckProtocol = structure(logical(0), 
        shape = "ProtocolEnum", type = "string"), HealthCheckPort = structure(logical(0), 
        shape = "HealthCheckPort", type = "string"), HealthCheckPath = structure(logical(0), 
        shape = "Path", type = "string", max = 1024L, min = 1L), 
        HealthCheckIntervalSeconds = structure(logical(0), shape = "HealthCheckIntervalSeconds", 
            type = "integer", max = 300L, min = 5L), HealthCheckTimeoutSeconds = structure(logical(0), 
            shape = "HealthCheckTimeoutSeconds", type = "integer", 
            max = 60L, min = 2L), HealthyThresholdCount = structure(logical(0), 
            shape = "HealthCheckThresholdCount", type = "integer", 
            max = 10L, min = 2L), UnhealthyThresholdCount = structure(logical(0), 
            shape = "HealthCheckThresholdCount", type = "integer", 
            max = 10L, min = 2L), Matcher = structure(list(HttpCode = structure(logical(0), 
            shape = "HttpCode", type = "string")), shape = "Matcher", 
            type = "structure"), TargetType = structure(logical(0), 
            shape = "TargetTypeEnum", type = "string")), shape = "CreateTargetGroupInput", 
        type = "structure")
    return(populate(args, shape))
}

create_target_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetGroups = structure(list(structure(list(TargetGroupArn = structure(logical(0), 
        shape = "TargetGroupArn", type = "string"), TargetGroupName = structure(logical(0), 
        shape = "TargetGroupName", type = "string"), Protocol = structure(logical(0), 
        shape = "ProtocolEnum", type = "string"), Port = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 1L), 
        VpcId = structure(logical(0), shape = "VpcId", type = "string"), 
        HealthCheckProtocol = structure(logical(0), shape = "ProtocolEnum", 
            type = "string"), HealthCheckPort = structure(logical(0), 
            shape = "HealthCheckPort", type = "string"), HealthCheckIntervalSeconds = structure(logical(0), 
            shape = "HealthCheckIntervalSeconds", type = "integer", 
            max = 300L, min = 5L), HealthCheckTimeoutSeconds = structure(logical(0), 
            shape = "HealthCheckTimeoutSeconds", type = "integer", 
            max = 60L, min = 2L), HealthyThresholdCount = structure(logical(0), 
            shape = "HealthCheckThresholdCount", type = "integer", 
            max = 10L, min = 2L), UnhealthyThresholdCount = structure(logical(0), 
            shape = "HealthCheckThresholdCount", type = "integer", 
            max = 10L, min = 2L), HealthCheckPath = structure(logical(0), 
            shape = "Path", type = "string", max = 1024L, min = 1L), 
        Matcher = structure(list(HttpCode = structure(logical(0), 
            shape = "HttpCode", type = "string")), shape = "Matcher", 
            type = "structure"), LoadBalancerArns = structure(list(structure(logical(0), 
            shape = "LoadBalancerArn", type = "string")), shape = "LoadBalancerArns", 
            type = "list"), TargetType = structure(logical(0), 
            shape = "TargetTypeEnum", type = "string")), shape = "TargetGroup", 
        type = "structure")), shape = "TargetGroups", type = "list")), 
        shape = "CreateTargetGroupOutput", type = "structure")
    return(populate(args, shape))
}

delete_listener_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ListenerArn = structure(logical(0), 
        shape = "ListenerArn", type = "string")), shape = "DeleteListenerInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_listener_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteListenerOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_load_balancer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerArn = structure(logical(0), 
        shape = "LoadBalancerArn", type = "string")), shape = "DeleteLoadBalancerInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_load_balancer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteLoadBalancerOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleArn = structure(logical(0), shape = "RuleArn", 
        type = "string")), shape = "DeleteRuleInput", type = "structure")
    return(populate(args, shape))
}

delete_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteRuleOutput", type = "structure")
    return(populate(args, shape))
}

delete_target_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetGroupArn = structure(logical(0), 
        shape = "TargetGroupArn", type = "string")), shape = "DeleteTargetGroupInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_target_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteTargetGroupOutput", 
        type = "structure")
    return(populate(args, shape))
}

deregister_targets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetGroupArn = structure(logical(0), 
        shape = "TargetGroupArn", type = "string"), Targets = structure(list(structure(list(Id = structure(logical(0), 
        shape = "TargetId", type = "string"), Port = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 1L), 
        AvailabilityZone = structure(logical(0), shape = "ZoneName", 
            type = "string")), shape = "TargetDescription", type = "structure")), 
        shape = "TargetDescriptions", type = "list")), shape = "DeregisterTargetsInput", 
        type = "structure")
    return(populate(args, shape))
}

deregister_targets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeregisterTargetsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_account_limits_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "Marker", 
        type = "string"), PageSize = structure(logical(0), shape = "PageSize", 
        type = "integer", max = 400L, min = 1L)), shape = "DescribeAccountLimitsInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_account_limits_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Limits = structure(list(structure(list(Name = structure(logical(0), 
        shape = "Name", type = "string"), Max = structure(logical(0), 
        shape = "Max", type = "string")), shape = "Limit", type = "structure")), 
        shape = "Limits", type = "list"), NextMarker = structure(logical(0), 
        shape = "Marker", type = "string")), shape = "DescribeAccountLimitsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_listener_certificates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ListenerArn = structure(logical(0), 
        shape = "ListenerArn", type = "string"), Marker = structure(logical(0), 
        shape = "Marker", type = "string"), PageSize = structure(logical(0), 
        shape = "PageSize", type = "integer", max = 400L, min = 1L)), 
        shape = "DescribeListenerCertificatesInput", type = "structure")
    return(populate(args, shape))
}

describe_listener_certificates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Certificates = structure(list(structure(list(CertificateArn = structure(logical(0), 
        shape = "CertificateArn", type = "string"), IsDefault = structure(logical(0), 
        shape = "Default", type = "boolean")), shape = "Certificate", 
        type = "structure")), shape = "CertificateList", type = "list"), 
        NextMarker = structure(logical(0), shape = "Marker", 
            type = "string")), shape = "DescribeListenerCertificatesOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_listeners_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerArn = structure(logical(0), 
        shape = "LoadBalancerArn", type = "string"), ListenerArns = structure(list(structure(logical(0), 
        shape = "ListenerArn", type = "string")), shape = "ListenerArns", 
        type = "list"), Marker = structure(logical(0), shape = "Marker", 
        type = "string"), PageSize = structure(logical(0), shape = "PageSize", 
        type = "integer", max = 400L, min = 1L)), shape = "DescribeListenersInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_listeners_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Listeners = structure(list(structure(list(ListenerArn = structure(logical(0), 
        shape = "ListenerArn", type = "string"), LoadBalancerArn = structure(logical(0), 
        shape = "LoadBalancerArn", type = "string"), Port = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 1L), 
        Protocol = structure(logical(0), shape = "ProtocolEnum", 
            type = "string"), Certificates = structure(list(structure(list(CertificateArn = structure(logical(0), 
            shape = "CertificateArn", type = "string"), IsDefault = structure(logical(0), 
            shape = "Default", type = "boolean")), shape = "Certificate", 
            type = "structure")), shape = "CertificateList", 
            type = "list"), SslPolicy = structure(logical(0), 
            shape = "SslPolicyName", type = "string"), DefaultActions = structure(list(structure(list(Type = structure(logical(0), 
            shape = "ActionTypeEnum", type = "string"), TargetGroupArn = structure(logical(0), 
            shape = "TargetGroupArn", type = "string"), AuthenticateOidcConfig = structure(list(Issuer = structure(logical(0), 
            shape = "AuthenticateOidcActionIssuer", type = "string"), 
            AuthorizationEndpoint = structure(logical(0), shape = "AuthenticateOidcActionAuthorizationEndpoint", 
                type = "string"), TokenEndpoint = structure(logical(0), 
                shape = "AuthenticateOidcActionTokenEndpoint", 
                type = "string"), UserInfoEndpoint = structure(logical(0), 
                shape = "AuthenticateOidcActionUserInfoEndpoint", 
                type = "string"), ClientId = structure(logical(0), 
                shape = "AuthenticateOidcActionClientId", type = "string"), 
            ClientSecret = structure(logical(0), shape = "AuthenticateOidcActionClientSecret", 
                type = "string"), SessionCookieName = structure(logical(0), 
                shape = "AuthenticateOidcActionSessionCookieName", 
                type = "string"), Scope = structure(logical(0), 
                shape = "AuthenticateOidcActionScope", type = "string"), 
            SessionTimeout = structure(logical(0), shape = "AuthenticateOidcActionSessionTimeout", 
                type = "long"), AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
                shape = "AuthenticateOidcActionAuthenticationRequestParamValue", 
                type = "string")), shape = "AuthenticateOidcActionAuthenticationRequestExtraParams", 
                type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
                shape = "AuthenticateOidcActionConditionalBehaviorEnum", 
                type = "string")), shape = "AuthenticateOidcActionConfig", 
            type = "structure"), AuthenticateCognitoConfig = structure(list(UserPoolArn = structure(logical(0), 
            shape = "AuthenticateCognitoActionUserPoolArn", type = "string"), 
            UserPoolClientId = structure(logical(0), shape = "AuthenticateCognitoActionUserPoolClientId", 
                type = "string"), UserPoolDomain = structure(logical(0), 
                shape = "AuthenticateCognitoActionUserPoolDomain", 
                type = "string"), SessionCookieName = structure(logical(0), 
                shape = "AuthenticateCognitoActionSessionCookieName", 
                type = "string"), Scope = structure(logical(0), 
                shape = "AuthenticateCognitoActionScope", type = "string"), 
            SessionTimeout = structure(logical(0), shape = "AuthenticateCognitoActionSessionTimeout", 
                type = "long"), AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
                shape = "AuthenticateCognitoActionAuthenticationRequestParamValue", 
                type = "string")), shape = "AuthenticateCognitoActionAuthenticationRequestExtraParams", 
                type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
                shape = "AuthenticateCognitoActionConditionalBehaviorEnum", 
                type = "string")), shape = "AuthenticateCognitoActionConfig", 
            type = "structure"), Order = structure(logical(0), 
            shape = "ActionOrder", type = "integer", max = 50000L, 
            min = 1L), RedirectConfig = structure(list(Protocol = structure(logical(0), 
            shape = "RedirectActionProtocol", type = "string", 
            pattern = "^(HTTPS?|#\\{protocol\\})$"), Port = structure(logical(0), 
            shape = "RedirectActionPort", type = "string"), Host = structure(logical(0), 
            shape = "RedirectActionHost", type = "string", max = 128L, 
            min = 1L), Path = structure(logical(0), shape = "RedirectActionPath", 
            type = "string", max = 128L, min = 1L), Query = structure(logical(0), 
            shape = "RedirectActionQuery", type = "string", max = 128L, 
            min = 0L), StatusCode = structure(logical(0), shape = "RedirectActionStatusCodeEnum", 
            type = "string")), shape = "RedirectActionConfig", 
            type = "structure"), FixedResponseConfig = structure(list(MessageBody = structure(logical(0), 
            shape = "FixedResponseActionMessage", type = "string", 
            max = 1024L, min = 0L), StatusCode = structure(logical(0), 
            shape = "FixedResponseActionStatusCode", type = "string", 
            pattern = "^(2|4|5)\\d\\d$"), ContentType = structure(logical(0), 
            shape = "FixedResponseActionContentType", type = "string", 
            max = 32L, min = 0L)), shape = "FixedResponseActionConfig", 
            type = "structure")), shape = "Action", type = "structure")), 
            shape = "Actions", type = "list")), shape = "Listener", 
        type = "structure")), shape = "Listeners", type = "list"), 
        NextMarker = structure(logical(0), shape = "Marker", 
            type = "string")), shape = "DescribeListenersOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_load_balancer_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerArn = structure(logical(0), 
        shape = "LoadBalancerArn", type = "string")), shape = "DescribeLoadBalancerAttributesInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_load_balancer_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attributes = structure(list(structure(list(Key = structure(logical(0), 
        shape = "LoadBalancerAttributeKey", type = "string", 
        max = 256L, pattern = "^[a-zA-Z0-9._]+$"), Value = structure(logical(0), 
        shape = "LoadBalancerAttributeValue", type = "string", 
        max = 1024L)), shape = "LoadBalancerAttribute", type = "structure")), 
        shape = "LoadBalancerAttributes", type = "list", max = 20L)), 
        shape = "DescribeLoadBalancerAttributesOutput", type = "structure")
    return(populate(args, shape))
}

describe_load_balancers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerArns = structure(list(structure(logical(0), 
        shape = "LoadBalancerArn", type = "string")), shape = "LoadBalancerArns", 
        type = "list"), Names = structure(list(structure(logical(0), 
        shape = "LoadBalancerName", type = "string")), shape = "LoadBalancerNames", 
        type = "list"), Marker = structure(logical(0), shape = "Marker", 
        type = "string"), PageSize = structure(logical(0), shape = "PageSize", 
        type = "integer", max = 400L, min = 1L)), shape = "DescribeLoadBalancersInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_load_balancers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancers = structure(list(structure(list(LoadBalancerArn = structure(logical(0), 
        shape = "LoadBalancerArn", type = "string"), DNSName = structure(logical(0), 
        shape = "DNSName", type = "string"), CanonicalHostedZoneId = structure(logical(0), 
        shape = "CanonicalHostedZoneId", type = "string"), CreatedTime = structure(logical(0), 
        shape = "CreatedTime", type = "timestamp"), LoadBalancerName = structure(logical(0), 
        shape = "LoadBalancerName", type = "string"), Scheme = structure(logical(0), 
        shape = "LoadBalancerSchemeEnum", type = "string"), VpcId = structure(logical(0), 
        shape = "VpcId", type = "string"), State = structure(list(Code = structure(logical(0), 
        shape = "LoadBalancerStateEnum", type = "string"), Reason = structure(logical(0), 
        shape = "StateReason", type = "string")), shape = "LoadBalancerState", 
        type = "structure"), Type = structure(logical(0), shape = "LoadBalancerTypeEnum", 
        type = "string"), AvailabilityZones = structure(list(structure(list(ZoneName = structure(logical(0), 
        shape = "ZoneName", type = "string"), SubnetId = structure(logical(0), 
        shape = "SubnetId", type = "string"), LoadBalancerAddresses = structure(list(structure(list(IpAddress = structure(logical(0), 
        shape = "IpAddress", type = "string"), AllocationId = structure(logical(0), 
        shape = "AllocationId", type = "string")), shape = "LoadBalancerAddress", 
        type = "structure")), shape = "LoadBalancerAddresses", 
        type = "list")), shape = "AvailabilityZone", type = "structure")), 
        shape = "AvailabilityZones", type = "list"), SecurityGroups = structure(list(structure(logical(0), 
        shape = "SecurityGroupId", type = "string")), shape = "SecurityGroups", 
        type = "list"), IpAddressType = structure(logical(0), 
        shape = "IpAddressType", type = "string")), shape = "LoadBalancer", 
        type = "structure")), shape = "LoadBalancers", type = "list"), 
        NextMarker = structure(logical(0), shape = "Marker", 
            type = "string")), shape = "DescribeLoadBalancersOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_rules_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ListenerArn = structure(logical(0), 
        shape = "ListenerArn", type = "string"), RuleArns = structure(list(structure(logical(0), 
        shape = "RuleArn", type = "string")), shape = "RuleArns", 
        type = "list"), Marker = structure(logical(0), shape = "Marker", 
        type = "string"), PageSize = structure(logical(0), shape = "PageSize", 
        type = "integer", max = 400L, min = 1L)), shape = "DescribeRulesInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_rules_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Rules = structure(list(structure(list(RuleArn = structure(logical(0), 
        shape = "RuleArn", type = "string"), Priority = structure(logical(0), 
        shape = "String", type = "string"), Conditions = structure(list(structure(list(Field = structure(logical(0), 
        shape = "ConditionFieldName", type = "string", max = 64L), 
        Values = structure(list(structure(logical(0), shape = "StringValue", 
            type = "string")), shape = "ListOfString", type = "list")), 
        shape = "RuleCondition", type = "structure")), shape = "RuleConditionList", 
        type = "list"), Actions = structure(list(structure(list(Type = structure(logical(0), 
        shape = "ActionTypeEnum", type = "string"), TargetGroupArn = structure(logical(0), 
        shape = "TargetGroupArn", type = "string"), AuthenticateOidcConfig = structure(list(Issuer = structure(logical(0), 
        shape = "AuthenticateOidcActionIssuer", type = "string"), 
        AuthorizationEndpoint = structure(logical(0), shape = "AuthenticateOidcActionAuthorizationEndpoint", 
            type = "string"), TokenEndpoint = structure(logical(0), 
            shape = "AuthenticateOidcActionTokenEndpoint", type = "string"), 
        UserInfoEndpoint = structure(logical(0), shape = "AuthenticateOidcActionUserInfoEndpoint", 
            type = "string"), ClientId = structure(logical(0), 
            shape = "AuthenticateOidcActionClientId", type = "string"), 
        ClientSecret = structure(logical(0), shape = "AuthenticateOidcActionClientSecret", 
            type = "string"), SessionCookieName = structure(logical(0), 
            shape = "AuthenticateOidcActionSessionCookieName", 
            type = "string"), Scope = structure(logical(0), shape = "AuthenticateOidcActionScope", 
            type = "string"), SessionTimeout = structure(logical(0), 
            shape = "AuthenticateOidcActionSessionTimeout", type = "long"), 
        AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
            shape = "AuthenticateOidcActionAuthenticationRequestParamValue", 
            type = "string")), shape = "AuthenticateOidcActionAuthenticationRequestExtraParams", 
            type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
            shape = "AuthenticateOidcActionConditionalBehaviorEnum", 
            type = "string")), shape = "AuthenticateOidcActionConfig", 
        type = "structure"), AuthenticateCognitoConfig = structure(list(UserPoolArn = structure(logical(0), 
        shape = "AuthenticateCognitoActionUserPoolArn", type = "string"), 
        UserPoolClientId = structure(logical(0), shape = "AuthenticateCognitoActionUserPoolClientId", 
            type = "string"), UserPoolDomain = structure(logical(0), 
            shape = "AuthenticateCognitoActionUserPoolDomain", 
            type = "string"), SessionCookieName = structure(logical(0), 
            shape = "AuthenticateCognitoActionSessionCookieName", 
            type = "string"), Scope = structure(logical(0), shape = "AuthenticateCognitoActionScope", 
            type = "string"), SessionTimeout = structure(logical(0), 
            shape = "AuthenticateCognitoActionSessionTimeout", 
            type = "long"), AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
            shape = "AuthenticateCognitoActionAuthenticationRequestParamValue", 
            type = "string")), shape = "AuthenticateCognitoActionAuthenticationRequestExtraParams", 
            type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
            shape = "AuthenticateCognitoActionConditionalBehaviorEnum", 
            type = "string")), shape = "AuthenticateCognitoActionConfig", 
        type = "structure"), Order = structure(logical(0), shape = "ActionOrder", 
        type = "integer", max = 50000L, min = 1L), RedirectConfig = structure(list(Protocol = structure(logical(0), 
        shape = "RedirectActionProtocol", type = "string", pattern = "^(HTTPS?|#\\{protocol\\})$"), 
        Port = structure(logical(0), shape = "RedirectActionPort", 
            type = "string"), Host = structure(logical(0), shape = "RedirectActionHost", 
            type = "string", max = 128L, min = 1L), Path = structure(logical(0), 
            shape = "RedirectActionPath", type = "string", max = 128L, 
            min = 1L), Query = structure(logical(0), shape = "RedirectActionQuery", 
            type = "string", max = 128L, min = 0L), StatusCode = structure(logical(0), 
            shape = "RedirectActionStatusCodeEnum", type = "string")), 
        shape = "RedirectActionConfig", type = "structure"), 
        FixedResponseConfig = structure(list(MessageBody = structure(logical(0), 
            shape = "FixedResponseActionMessage", type = "string", 
            max = 1024L, min = 0L), StatusCode = structure(logical(0), 
            shape = "FixedResponseActionStatusCode", type = "string", 
            pattern = "^(2|4|5)\\d\\d$"), ContentType = structure(logical(0), 
            shape = "FixedResponseActionContentType", type = "string", 
            max = 32L, min = 0L)), shape = "FixedResponseActionConfig", 
            type = "structure")), shape = "Action", type = "structure")), 
        shape = "Actions", type = "list"), IsDefault = structure(logical(0), 
        shape = "IsDefault", type = "boolean")), shape = "Rule", 
        type = "structure")), shape = "Rules", type = "list"), 
        NextMarker = structure(logical(0), shape = "Marker", 
            type = "string")), shape = "DescribeRulesOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_ssl_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Names = structure(list(structure(logical(0), 
        shape = "SslPolicyName", type = "string")), shape = "SslPolicyNames", 
        type = "list"), Marker = structure(logical(0), shape = "Marker", 
        type = "string"), PageSize = structure(logical(0), shape = "PageSize", 
        type = "integer", max = 400L, min = 1L)), shape = "DescribeSSLPoliciesInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_ssl_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SslPolicies = structure(list(structure(list(SslProtocols = structure(list(structure(logical(0), 
        shape = "SslProtocol", type = "string")), shape = "SslProtocols", 
        type = "list"), Ciphers = structure(list(structure(list(Name = structure(logical(0), 
        shape = "CipherName", type = "string"), Priority = structure(logical(0), 
        shape = "CipherPriority", type = "integer")), shape = "Cipher", 
        type = "structure")), shape = "Ciphers", type = "list"), 
        Name = structure(logical(0), shape = "SslPolicyName", 
            type = "string")), shape = "SslPolicy", type = "structure")), 
        shape = "SslPolicies", type = "list"), NextMarker = structure(logical(0), 
        shape = "Marker", type = "string")), shape = "DescribeSSLPoliciesOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArns = structure(list(structure(logical(0), 
        shape = "ResourceArn", type = "string")), shape = "ResourceArns", 
        type = "list")), shape = "DescribeTagsInput", type = "structure")
    return(populate(args, shape))
}

describe_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TagDescriptions = structure(list(structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), Value = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 0L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "Tag", 
        type = "structure")), shape = "TagList", type = "list", 
        min = 1L)), shape = "TagDescription", type = "structure")), 
        shape = "TagDescriptions", type = "list")), shape = "DescribeTagsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_target_group_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetGroupArn = structure(logical(0), 
        shape = "TargetGroupArn", type = "string")), shape = "DescribeTargetGroupAttributesInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_target_group_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attributes = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TargetGroupAttributeKey", type = "string", max = 256L, 
        pattern = "^[a-zA-Z0-9._]+$"), Value = structure(logical(0), 
        shape = "TargetGroupAttributeValue", type = "string")), 
        shape = "TargetGroupAttribute", type = "structure")), 
        shape = "TargetGroupAttributes", type = "list")), shape = "DescribeTargetGroupAttributesOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_target_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerArn = structure(logical(0), 
        shape = "LoadBalancerArn", type = "string"), TargetGroupArns = structure(list(structure(logical(0), 
        shape = "TargetGroupArn", type = "string")), shape = "TargetGroupArns", 
        type = "list"), Names = structure(list(structure(logical(0), 
        shape = "TargetGroupName", type = "string")), shape = "TargetGroupNames", 
        type = "list"), Marker = structure(logical(0), shape = "Marker", 
        type = "string"), PageSize = structure(logical(0), shape = "PageSize", 
        type = "integer", max = 400L, min = 1L)), shape = "DescribeTargetGroupsInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_target_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetGroups = structure(list(structure(list(TargetGroupArn = structure(logical(0), 
        shape = "TargetGroupArn", type = "string"), TargetGroupName = structure(logical(0), 
        shape = "TargetGroupName", type = "string"), Protocol = structure(logical(0), 
        shape = "ProtocolEnum", type = "string"), Port = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 1L), 
        VpcId = structure(logical(0), shape = "VpcId", type = "string"), 
        HealthCheckProtocol = structure(logical(0), shape = "ProtocolEnum", 
            type = "string"), HealthCheckPort = structure(logical(0), 
            shape = "HealthCheckPort", type = "string"), HealthCheckIntervalSeconds = structure(logical(0), 
            shape = "HealthCheckIntervalSeconds", type = "integer", 
            max = 300L, min = 5L), HealthCheckTimeoutSeconds = structure(logical(0), 
            shape = "HealthCheckTimeoutSeconds", type = "integer", 
            max = 60L, min = 2L), HealthyThresholdCount = structure(logical(0), 
            shape = "HealthCheckThresholdCount", type = "integer", 
            max = 10L, min = 2L), UnhealthyThresholdCount = structure(logical(0), 
            shape = "HealthCheckThresholdCount", type = "integer", 
            max = 10L, min = 2L), HealthCheckPath = structure(logical(0), 
            shape = "Path", type = "string", max = 1024L, min = 1L), 
        Matcher = structure(list(HttpCode = structure(logical(0), 
            shape = "HttpCode", type = "string")), shape = "Matcher", 
            type = "structure"), LoadBalancerArns = structure(list(structure(logical(0), 
            shape = "LoadBalancerArn", type = "string")), shape = "LoadBalancerArns", 
            type = "list"), TargetType = structure(logical(0), 
            shape = "TargetTypeEnum", type = "string")), shape = "TargetGroup", 
        type = "structure")), shape = "TargetGroups", type = "list"), 
        NextMarker = structure(logical(0), shape = "Marker", 
            type = "string")), shape = "DescribeTargetGroupsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_target_health_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetGroupArn = structure(logical(0), 
        shape = "TargetGroupArn", type = "string"), Targets = structure(list(structure(list(Id = structure(logical(0), 
        shape = "TargetId", type = "string"), Port = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 1L), 
        AvailabilityZone = structure(logical(0), shape = "ZoneName", 
            type = "string")), shape = "TargetDescription", type = "structure")), 
        shape = "TargetDescriptions", type = "list")), shape = "DescribeTargetHealthInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_target_health_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetHealthDescriptions = structure(list(structure(list(Target = structure(list(Id = structure(logical(0), 
        shape = "TargetId", type = "string"), Port = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 1L), 
        AvailabilityZone = structure(logical(0), shape = "ZoneName", 
            type = "string")), shape = "TargetDescription", type = "structure"), 
        HealthCheckPort = structure(logical(0), shape = "HealthCheckPort", 
            type = "string"), TargetHealth = structure(list(State = structure(logical(0), 
            shape = "TargetHealthStateEnum", type = "string"), 
            Reason = structure(logical(0), shape = "TargetHealthReasonEnum", 
                type = "string"), Description = structure(logical(0), 
                shape = "Description", type = "string")), shape = "TargetHealth", 
            type = "structure")), shape = "TargetHealthDescription", 
        type = "structure")), shape = "TargetHealthDescriptions", 
        type = "list")), shape = "DescribeTargetHealthOutput", 
        type = "structure")
    return(populate(args, shape))
}

modify_listener_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ListenerArn = structure(logical(0), 
        shape = "ListenerArn", type = "string"), Port = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 1L), 
        Protocol = structure(logical(0), shape = "ProtocolEnum", 
            type = "string"), SslPolicy = structure(logical(0), 
            shape = "SslPolicyName", type = "string"), Certificates = structure(list(structure(list(CertificateArn = structure(logical(0), 
            shape = "CertificateArn", type = "string"), IsDefault = structure(logical(0), 
            shape = "Default", type = "boolean")), shape = "Certificate", 
            type = "structure")), shape = "CertificateList", 
            type = "list"), DefaultActions = structure(list(structure(list(Type = structure(logical(0), 
            shape = "ActionTypeEnum", type = "string"), TargetGroupArn = structure(logical(0), 
            shape = "TargetGroupArn", type = "string"), AuthenticateOidcConfig = structure(list(Issuer = structure(logical(0), 
            shape = "AuthenticateOidcActionIssuer", type = "string"), 
            AuthorizationEndpoint = structure(logical(0), shape = "AuthenticateOidcActionAuthorizationEndpoint", 
                type = "string"), TokenEndpoint = structure(logical(0), 
                shape = "AuthenticateOidcActionTokenEndpoint", 
                type = "string"), UserInfoEndpoint = structure(logical(0), 
                shape = "AuthenticateOidcActionUserInfoEndpoint", 
                type = "string"), ClientId = structure(logical(0), 
                shape = "AuthenticateOidcActionClientId", type = "string"), 
            ClientSecret = structure(logical(0), shape = "AuthenticateOidcActionClientSecret", 
                type = "string"), SessionCookieName = structure(logical(0), 
                shape = "AuthenticateOidcActionSessionCookieName", 
                type = "string"), Scope = structure(logical(0), 
                shape = "AuthenticateOidcActionScope", type = "string"), 
            SessionTimeout = structure(logical(0), shape = "AuthenticateOidcActionSessionTimeout", 
                type = "long"), AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
                shape = "AuthenticateOidcActionAuthenticationRequestParamValue", 
                type = "string")), shape = "AuthenticateOidcActionAuthenticationRequestExtraParams", 
                type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
                shape = "AuthenticateOidcActionConditionalBehaviorEnum", 
                type = "string")), shape = "AuthenticateOidcActionConfig", 
            type = "structure"), AuthenticateCognitoConfig = structure(list(UserPoolArn = structure(logical(0), 
            shape = "AuthenticateCognitoActionUserPoolArn", type = "string"), 
            UserPoolClientId = structure(logical(0), shape = "AuthenticateCognitoActionUserPoolClientId", 
                type = "string"), UserPoolDomain = structure(logical(0), 
                shape = "AuthenticateCognitoActionUserPoolDomain", 
                type = "string"), SessionCookieName = structure(logical(0), 
                shape = "AuthenticateCognitoActionSessionCookieName", 
                type = "string"), Scope = structure(logical(0), 
                shape = "AuthenticateCognitoActionScope", type = "string"), 
            SessionTimeout = structure(logical(0), shape = "AuthenticateCognitoActionSessionTimeout", 
                type = "long"), AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
                shape = "AuthenticateCognitoActionAuthenticationRequestParamValue", 
                type = "string")), shape = "AuthenticateCognitoActionAuthenticationRequestExtraParams", 
                type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
                shape = "AuthenticateCognitoActionConditionalBehaviorEnum", 
                type = "string")), shape = "AuthenticateCognitoActionConfig", 
            type = "structure"), Order = structure(logical(0), 
            shape = "ActionOrder", type = "integer", max = 50000L, 
            min = 1L), RedirectConfig = structure(list(Protocol = structure(logical(0), 
            shape = "RedirectActionProtocol", type = "string", 
            pattern = "^(HTTPS?|#\\{protocol\\})$"), Port = structure(logical(0), 
            shape = "RedirectActionPort", type = "string"), Host = structure(logical(0), 
            shape = "RedirectActionHost", type = "string", max = 128L, 
            min = 1L), Path = structure(logical(0), shape = "RedirectActionPath", 
            type = "string", max = 128L, min = 1L), Query = structure(logical(0), 
            shape = "RedirectActionQuery", type = "string", max = 128L, 
            min = 0L), StatusCode = structure(logical(0), shape = "RedirectActionStatusCodeEnum", 
            type = "string")), shape = "RedirectActionConfig", 
            type = "structure"), FixedResponseConfig = structure(list(MessageBody = structure(logical(0), 
            shape = "FixedResponseActionMessage", type = "string", 
            max = 1024L, min = 0L), StatusCode = structure(logical(0), 
            shape = "FixedResponseActionStatusCode", type = "string", 
            pattern = "^(2|4|5)\\d\\d$"), ContentType = structure(logical(0), 
            shape = "FixedResponseActionContentType", type = "string", 
            max = 32L, min = 0L)), shape = "FixedResponseActionConfig", 
            type = "structure")), shape = "Action", type = "structure")), 
            shape = "Actions", type = "list")), shape = "ModifyListenerInput", 
        type = "structure")
    return(populate(args, shape))
}

modify_listener_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Listeners = structure(list(structure(list(ListenerArn = structure(logical(0), 
        shape = "ListenerArn", type = "string"), LoadBalancerArn = structure(logical(0), 
        shape = "LoadBalancerArn", type = "string"), Port = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 1L), 
        Protocol = structure(logical(0), shape = "ProtocolEnum", 
            type = "string"), Certificates = structure(list(structure(list(CertificateArn = structure(logical(0), 
            shape = "CertificateArn", type = "string"), IsDefault = structure(logical(0), 
            shape = "Default", type = "boolean")), shape = "Certificate", 
            type = "structure")), shape = "CertificateList", 
            type = "list"), SslPolicy = structure(logical(0), 
            shape = "SslPolicyName", type = "string"), DefaultActions = structure(list(structure(list(Type = structure(logical(0), 
            shape = "ActionTypeEnum", type = "string"), TargetGroupArn = structure(logical(0), 
            shape = "TargetGroupArn", type = "string"), AuthenticateOidcConfig = structure(list(Issuer = structure(logical(0), 
            shape = "AuthenticateOidcActionIssuer", type = "string"), 
            AuthorizationEndpoint = structure(logical(0), shape = "AuthenticateOidcActionAuthorizationEndpoint", 
                type = "string"), TokenEndpoint = structure(logical(0), 
                shape = "AuthenticateOidcActionTokenEndpoint", 
                type = "string"), UserInfoEndpoint = structure(logical(0), 
                shape = "AuthenticateOidcActionUserInfoEndpoint", 
                type = "string"), ClientId = structure(logical(0), 
                shape = "AuthenticateOidcActionClientId", type = "string"), 
            ClientSecret = structure(logical(0), shape = "AuthenticateOidcActionClientSecret", 
                type = "string"), SessionCookieName = structure(logical(0), 
                shape = "AuthenticateOidcActionSessionCookieName", 
                type = "string"), Scope = structure(logical(0), 
                shape = "AuthenticateOidcActionScope", type = "string"), 
            SessionTimeout = structure(logical(0), shape = "AuthenticateOidcActionSessionTimeout", 
                type = "long"), AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
                shape = "AuthenticateOidcActionAuthenticationRequestParamValue", 
                type = "string")), shape = "AuthenticateOidcActionAuthenticationRequestExtraParams", 
                type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
                shape = "AuthenticateOidcActionConditionalBehaviorEnum", 
                type = "string")), shape = "AuthenticateOidcActionConfig", 
            type = "structure"), AuthenticateCognitoConfig = structure(list(UserPoolArn = structure(logical(0), 
            shape = "AuthenticateCognitoActionUserPoolArn", type = "string"), 
            UserPoolClientId = structure(logical(0), shape = "AuthenticateCognitoActionUserPoolClientId", 
                type = "string"), UserPoolDomain = structure(logical(0), 
                shape = "AuthenticateCognitoActionUserPoolDomain", 
                type = "string"), SessionCookieName = structure(logical(0), 
                shape = "AuthenticateCognitoActionSessionCookieName", 
                type = "string"), Scope = structure(logical(0), 
                shape = "AuthenticateCognitoActionScope", type = "string"), 
            SessionTimeout = structure(logical(0), shape = "AuthenticateCognitoActionSessionTimeout", 
                type = "long"), AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
                shape = "AuthenticateCognitoActionAuthenticationRequestParamValue", 
                type = "string")), shape = "AuthenticateCognitoActionAuthenticationRequestExtraParams", 
                type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
                shape = "AuthenticateCognitoActionConditionalBehaviorEnum", 
                type = "string")), shape = "AuthenticateCognitoActionConfig", 
            type = "structure"), Order = structure(logical(0), 
            shape = "ActionOrder", type = "integer", max = 50000L, 
            min = 1L), RedirectConfig = structure(list(Protocol = structure(logical(0), 
            shape = "RedirectActionProtocol", type = "string", 
            pattern = "^(HTTPS?|#\\{protocol\\})$"), Port = structure(logical(0), 
            shape = "RedirectActionPort", type = "string"), Host = structure(logical(0), 
            shape = "RedirectActionHost", type = "string", max = 128L, 
            min = 1L), Path = structure(logical(0), shape = "RedirectActionPath", 
            type = "string", max = 128L, min = 1L), Query = structure(logical(0), 
            shape = "RedirectActionQuery", type = "string", max = 128L, 
            min = 0L), StatusCode = structure(logical(0), shape = "RedirectActionStatusCodeEnum", 
            type = "string")), shape = "RedirectActionConfig", 
            type = "structure"), FixedResponseConfig = structure(list(MessageBody = structure(logical(0), 
            shape = "FixedResponseActionMessage", type = "string", 
            max = 1024L, min = 0L), StatusCode = structure(logical(0), 
            shape = "FixedResponseActionStatusCode", type = "string", 
            pattern = "^(2|4|5)\\d\\d$"), ContentType = structure(logical(0), 
            shape = "FixedResponseActionContentType", type = "string", 
            max = 32L, min = 0L)), shape = "FixedResponseActionConfig", 
            type = "structure")), shape = "Action", type = "structure")), 
            shape = "Actions", type = "list")), shape = "Listener", 
        type = "structure")), shape = "Listeners", type = "list")), 
        shape = "ModifyListenerOutput", type = "structure")
    return(populate(args, shape))
}

modify_load_balancer_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerArn = structure(logical(0), 
        shape = "LoadBalancerArn", type = "string"), Attributes = structure(list(structure(list(Key = structure(logical(0), 
        shape = "LoadBalancerAttributeKey", type = "string", 
        max = 256L, pattern = "^[a-zA-Z0-9._]+$"), Value = structure(logical(0), 
        shape = "LoadBalancerAttributeValue", type = "string", 
        max = 1024L)), shape = "LoadBalancerAttribute", type = "structure")), 
        shape = "LoadBalancerAttributes", type = "list", max = 20L)), 
        shape = "ModifyLoadBalancerAttributesInput", type = "structure")
    return(populate(args, shape))
}

modify_load_balancer_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attributes = structure(list(structure(list(Key = structure(logical(0), 
        shape = "LoadBalancerAttributeKey", type = "string", 
        max = 256L, pattern = "^[a-zA-Z0-9._]+$"), Value = structure(logical(0), 
        shape = "LoadBalancerAttributeValue", type = "string", 
        max = 1024L)), shape = "LoadBalancerAttribute", type = "structure")), 
        shape = "LoadBalancerAttributes", type = "list", max = 20L)), 
        shape = "ModifyLoadBalancerAttributesOutput", type = "structure")
    return(populate(args, shape))
}

modify_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleArn = structure(logical(0), shape = "RuleArn", 
        type = "string"), Conditions = structure(list(structure(list(Field = structure(logical(0), 
        shape = "ConditionFieldName", type = "string", max = 64L), 
        Values = structure(list(structure(logical(0), shape = "StringValue", 
            type = "string")), shape = "ListOfString", type = "list")), 
        shape = "RuleCondition", type = "structure")), shape = "RuleConditionList", 
        type = "list"), Actions = structure(list(structure(list(Type = structure(logical(0), 
        shape = "ActionTypeEnum", type = "string"), TargetGroupArn = structure(logical(0), 
        shape = "TargetGroupArn", type = "string"), AuthenticateOidcConfig = structure(list(Issuer = structure(logical(0), 
        shape = "AuthenticateOidcActionIssuer", type = "string"), 
        AuthorizationEndpoint = structure(logical(0), shape = "AuthenticateOidcActionAuthorizationEndpoint", 
            type = "string"), TokenEndpoint = structure(logical(0), 
            shape = "AuthenticateOidcActionTokenEndpoint", type = "string"), 
        UserInfoEndpoint = structure(logical(0), shape = "AuthenticateOidcActionUserInfoEndpoint", 
            type = "string"), ClientId = structure(logical(0), 
            shape = "AuthenticateOidcActionClientId", type = "string"), 
        ClientSecret = structure(logical(0), shape = "AuthenticateOidcActionClientSecret", 
            type = "string"), SessionCookieName = structure(logical(0), 
            shape = "AuthenticateOidcActionSessionCookieName", 
            type = "string"), Scope = structure(logical(0), shape = "AuthenticateOidcActionScope", 
            type = "string"), SessionTimeout = structure(logical(0), 
            shape = "AuthenticateOidcActionSessionTimeout", type = "long"), 
        AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
            shape = "AuthenticateOidcActionAuthenticationRequestParamValue", 
            type = "string")), shape = "AuthenticateOidcActionAuthenticationRequestExtraParams", 
            type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
            shape = "AuthenticateOidcActionConditionalBehaviorEnum", 
            type = "string")), shape = "AuthenticateOidcActionConfig", 
        type = "structure"), AuthenticateCognitoConfig = structure(list(UserPoolArn = structure(logical(0), 
        shape = "AuthenticateCognitoActionUserPoolArn", type = "string"), 
        UserPoolClientId = structure(logical(0), shape = "AuthenticateCognitoActionUserPoolClientId", 
            type = "string"), UserPoolDomain = structure(logical(0), 
            shape = "AuthenticateCognitoActionUserPoolDomain", 
            type = "string"), SessionCookieName = structure(logical(0), 
            shape = "AuthenticateCognitoActionSessionCookieName", 
            type = "string"), Scope = structure(logical(0), shape = "AuthenticateCognitoActionScope", 
            type = "string"), SessionTimeout = structure(logical(0), 
            shape = "AuthenticateCognitoActionSessionTimeout", 
            type = "long"), AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
            shape = "AuthenticateCognitoActionAuthenticationRequestParamValue", 
            type = "string")), shape = "AuthenticateCognitoActionAuthenticationRequestExtraParams", 
            type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
            shape = "AuthenticateCognitoActionConditionalBehaviorEnum", 
            type = "string")), shape = "AuthenticateCognitoActionConfig", 
        type = "structure"), Order = structure(logical(0), shape = "ActionOrder", 
        type = "integer", max = 50000L, min = 1L), RedirectConfig = structure(list(Protocol = structure(logical(0), 
        shape = "RedirectActionProtocol", type = "string", pattern = "^(HTTPS?|#\\{protocol\\})$"), 
        Port = structure(logical(0), shape = "RedirectActionPort", 
            type = "string"), Host = structure(logical(0), shape = "RedirectActionHost", 
            type = "string", max = 128L, min = 1L), Path = structure(logical(0), 
            shape = "RedirectActionPath", type = "string", max = 128L, 
            min = 1L), Query = structure(logical(0), shape = "RedirectActionQuery", 
            type = "string", max = 128L, min = 0L), StatusCode = structure(logical(0), 
            shape = "RedirectActionStatusCodeEnum", type = "string")), 
        shape = "RedirectActionConfig", type = "structure"), 
        FixedResponseConfig = structure(list(MessageBody = structure(logical(0), 
            shape = "FixedResponseActionMessage", type = "string", 
            max = 1024L, min = 0L), StatusCode = structure(logical(0), 
            shape = "FixedResponseActionStatusCode", type = "string", 
            pattern = "^(2|4|5)\\d\\d$"), ContentType = structure(logical(0), 
            shape = "FixedResponseActionContentType", type = "string", 
            max = 32L, min = 0L)), shape = "FixedResponseActionConfig", 
            type = "structure")), shape = "Action", type = "structure")), 
        shape = "Actions", type = "list")), shape = "ModifyRuleInput", 
        type = "structure")
    return(populate(args, shape))
}

modify_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Rules = structure(list(structure(list(RuleArn = structure(logical(0), 
        shape = "RuleArn", type = "string"), Priority = structure(logical(0), 
        shape = "String", type = "string"), Conditions = structure(list(structure(list(Field = structure(logical(0), 
        shape = "ConditionFieldName", type = "string", max = 64L), 
        Values = structure(list(structure(logical(0), shape = "StringValue", 
            type = "string")), shape = "ListOfString", type = "list")), 
        shape = "RuleCondition", type = "structure")), shape = "RuleConditionList", 
        type = "list"), Actions = structure(list(structure(list(Type = structure(logical(0), 
        shape = "ActionTypeEnum", type = "string"), TargetGroupArn = structure(logical(0), 
        shape = "TargetGroupArn", type = "string"), AuthenticateOidcConfig = structure(list(Issuer = structure(logical(0), 
        shape = "AuthenticateOidcActionIssuer", type = "string"), 
        AuthorizationEndpoint = structure(logical(0), shape = "AuthenticateOidcActionAuthorizationEndpoint", 
            type = "string"), TokenEndpoint = structure(logical(0), 
            shape = "AuthenticateOidcActionTokenEndpoint", type = "string"), 
        UserInfoEndpoint = structure(logical(0), shape = "AuthenticateOidcActionUserInfoEndpoint", 
            type = "string"), ClientId = structure(logical(0), 
            shape = "AuthenticateOidcActionClientId", type = "string"), 
        ClientSecret = structure(logical(0), shape = "AuthenticateOidcActionClientSecret", 
            type = "string"), SessionCookieName = structure(logical(0), 
            shape = "AuthenticateOidcActionSessionCookieName", 
            type = "string"), Scope = structure(logical(0), shape = "AuthenticateOidcActionScope", 
            type = "string"), SessionTimeout = structure(logical(0), 
            shape = "AuthenticateOidcActionSessionTimeout", type = "long"), 
        AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
            shape = "AuthenticateOidcActionAuthenticationRequestParamValue", 
            type = "string")), shape = "AuthenticateOidcActionAuthenticationRequestExtraParams", 
            type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
            shape = "AuthenticateOidcActionConditionalBehaviorEnum", 
            type = "string")), shape = "AuthenticateOidcActionConfig", 
        type = "structure"), AuthenticateCognitoConfig = structure(list(UserPoolArn = structure(logical(0), 
        shape = "AuthenticateCognitoActionUserPoolArn", type = "string"), 
        UserPoolClientId = structure(logical(0), shape = "AuthenticateCognitoActionUserPoolClientId", 
            type = "string"), UserPoolDomain = structure(logical(0), 
            shape = "AuthenticateCognitoActionUserPoolDomain", 
            type = "string"), SessionCookieName = structure(logical(0), 
            shape = "AuthenticateCognitoActionSessionCookieName", 
            type = "string"), Scope = structure(logical(0), shape = "AuthenticateCognitoActionScope", 
            type = "string"), SessionTimeout = structure(logical(0), 
            shape = "AuthenticateCognitoActionSessionTimeout", 
            type = "long"), AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
            shape = "AuthenticateCognitoActionAuthenticationRequestParamValue", 
            type = "string")), shape = "AuthenticateCognitoActionAuthenticationRequestExtraParams", 
            type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
            shape = "AuthenticateCognitoActionConditionalBehaviorEnum", 
            type = "string")), shape = "AuthenticateCognitoActionConfig", 
        type = "structure"), Order = structure(logical(0), shape = "ActionOrder", 
        type = "integer", max = 50000L, min = 1L), RedirectConfig = structure(list(Protocol = structure(logical(0), 
        shape = "RedirectActionProtocol", type = "string", pattern = "^(HTTPS?|#\\{protocol\\})$"), 
        Port = structure(logical(0), shape = "RedirectActionPort", 
            type = "string"), Host = structure(logical(0), shape = "RedirectActionHost", 
            type = "string", max = 128L, min = 1L), Path = structure(logical(0), 
            shape = "RedirectActionPath", type = "string", max = 128L, 
            min = 1L), Query = structure(logical(0), shape = "RedirectActionQuery", 
            type = "string", max = 128L, min = 0L), StatusCode = structure(logical(0), 
            shape = "RedirectActionStatusCodeEnum", type = "string")), 
        shape = "RedirectActionConfig", type = "structure"), 
        FixedResponseConfig = structure(list(MessageBody = structure(logical(0), 
            shape = "FixedResponseActionMessage", type = "string", 
            max = 1024L, min = 0L), StatusCode = structure(logical(0), 
            shape = "FixedResponseActionStatusCode", type = "string", 
            pattern = "^(2|4|5)\\d\\d$"), ContentType = structure(logical(0), 
            shape = "FixedResponseActionContentType", type = "string", 
            max = 32L, min = 0L)), shape = "FixedResponseActionConfig", 
            type = "structure")), shape = "Action", type = "structure")), 
        shape = "Actions", type = "list"), IsDefault = structure(logical(0), 
        shape = "IsDefault", type = "boolean")), shape = "Rule", 
        type = "structure")), shape = "Rules", type = "list")), 
        shape = "ModifyRuleOutput", type = "structure")
    return(populate(args, shape))
}

modify_target_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetGroupArn = structure(logical(0), 
        shape = "TargetGroupArn", type = "string"), HealthCheckProtocol = structure(logical(0), 
        shape = "ProtocolEnum", type = "string"), HealthCheckPort = structure(logical(0), 
        shape = "HealthCheckPort", type = "string"), HealthCheckPath = structure(logical(0), 
        shape = "Path", type = "string", max = 1024L, min = 1L), 
        HealthCheckIntervalSeconds = structure(logical(0), shape = "HealthCheckIntervalSeconds", 
            type = "integer", max = 300L, min = 5L), HealthCheckTimeoutSeconds = structure(logical(0), 
            shape = "HealthCheckTimeoutSeconds", type = "integer", 
            max = 60L, min = 2L), HealthyThresholdCount = structure(logical(0), 
            shape = "HealthCheckThresholdCount", type = "integer", 
            max = 10L, min = 2L), UnhealthyThresholdCount = structure(logical(0), 
            shape = "HealthCheckThresholdCount", type = "integer", 
            max = 10L, min = 2L), Matcher = structure(list(HttpCode = structure(logical(0), 
            shape = "HttpCode", type = "string")), shape = "Matcher", 
            type = "structure")), shape = "ModifyTargetGroupInput", 
        type = "structure")
    return(populate(args, shape))
}

modify_target_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetGroups = structure(list(structure(list(TargetGroupArn = structure(logical(0), 
        shape = "TargetGroupArn", type = "string"), TargetGroupName = structure(logical(0), 
        shape = "TargetGroupName", type = "string"), Protocol = structure(logical(0), 
        shape = "ProtocolEnum", type = "string"), Port = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 1L), 
        VpcId = structure(logical(0), shape = "VpcId", type = "string"), 
        HealthCheckProtocol = structure(logical(0), shape = "ProtocolEnum", 
            type = "string"), HealthCheckPort = structure(logical(0), 
            shape = "HealthCheckPort", type = "string"), HealthCheckIntervalSeconds = structure(logical(0), 
            shape = "HealthCheckIntervalSeconds", type = "integer", 
            max = 300L, min = 5L), HealthCheckTimeoutSeconds = structure(logical(0), 
            shape = "HealthCheckTimeoutSeconds", type = "integer", 
            max = 60L, min = 2L), HealthyThresholdCount = structure(logical(0), 
            shape = "HealthCheckThresholdCount", type = "integer", 
            max = 10L, min = 2L), UnhealthyThresholdCount = structure(logical(0), 
            shape = "HealthCheckThresholdCount", type = "integer", 
            max = 10L, min = 2L), HealthCheckPath = structure(logical(0), 
            shape = "Path", type = "string", max = 1024L, min = 1L), 
        Matcher = structure(list(HttpCode = structure(logical(0), 
            shape = "HttpCode", type = "string")), shape = "Matcher", 
            type = "structure"), LoadBalancerArns = structure(list(structure(logical(0), 
            shape = "LoadBalancerArn", type = "string")), shape = "LoadBalancerArns", 
            type = "list"), TargetType = structure(logical(0), 
            shape = "TargetTypeEnum", type = "string")), shape = "TargetGroup", 
        type = "structure")), shape = "TargetGroups", type = "list")), 
        shape = "ModifyTargetGroupOutput", type = "structure")
    return(populate(args, shape))
}

modify_target_group_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetGroupArn = structure(logical(0), 
        shape = "TargetGroupArn", type = "string"), Attributes = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TargetGroupAttributeKey", type = "string", max = 256L, 
        pattern = "^[a-zA-Z0-9._]+$"), Value = structure(logical(0), 
        shape = "TargetGroupAttributeValue", type = "string")), 
        shape = "TargetGroupAttribute", type = "structure")), 
        shape = "TargetGroupAttributes", type = "list")), shape = "ModifyTargetGroupAttributesInput", 
        type = "structure")
    return(populate(args, shape))
}

modify_target_group_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attributes = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TargetGroupAttributeKey", type = "string", max = 256L, 
        pattern = "^[a-zA-Z0-9._]+$"), Value = structure(logical(0), 
        shape = "TargetGroupAttributeValue", type = "string")), 
        shape = "TargetGroupAttribute", type = "structure")), 
        shape = "TargetGroupAttributes", type = "list")), shape = "ModifyTargetGroupAttributesOutput", 
        type = "structure")
    return(populate(args, shape))
}

register_targets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetGroupArn = structure(logical(0), 
        shape = "TargetGroupArn", type = "string"), Targets = structure(list(structure(list(Id = structure(logical(0), 
        shape = "TargetId", type = "string"), Port = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 1L), 
        AvailabilityZone = structure(logical(0), shape = "ZoneName", 
            type = "string")), shape = "TargetDescription", type = "structure")), 
        shape = "TargetDescriptions", type = "list")), shape = "RegisterTargetsInput", 
        type = "structure")
    return(populate(args, shape))
}

register_targets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RegisterTargetsOutput", 
        type = "structure")
    return(populate(args, shape))
}

remove_listener_certificates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ListenerArn = structure(logical(0), 
        shape = "ListenerArn", type = "string"), Certificates = structure(list(structure(list(CertificateArn = structure(logical(0), 
        shape = "CertificateArn", type = "string"), IsDefault = structure(logical(0), 
        shape = "Default", type = "boolean")), shape = "Certificate", 
        type = "structure")), shape = "CertificateList", type = "list")), 
        shape = "RemoveListenerCertificatesInput", type = "structure")
    return(populate(args, shape))
}

remove_listener_certificates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RemoveListenerCertificatesOutput", 
        type = "structure")
    return(populate(args, shape))
}

remove_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArns = structure(list(structure(logical(0), 
        shape = "ResourceArn", type = "string")), shape = "ResourceArns", 
        type = "list"), TagKeys = structure(list(structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "TagKeys", 
        type = "list")), shape = "RemoveTagsInput", type = "structure")
    return(populate(args, shape))
}

remove_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RemoveTagsOutput", type = "structure")
    return(populate(args, shape))
}

set_ip_address_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerArn = structure(logical(0), 
        shape = "LoadBalancerArn", type = "string"), IpAddressType = structure(logical(0), 
        shape = "IpAddressType", type = "string")), shape = "SetIpAddressTypeInput", 
        type = "structure")
    return(populate(args, shape))
}

set_ip_address_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IpAddressType = structure(logical(0), 
        shape = "IpAddressType", type = "string")), shape = "SetIpAddressTypeOutput", 
        type = "structure")
    return(populate(args, shape))
}

set_rule_priorities_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RulePriorities = structure(list(structure(list(RuleArn = structure(logical(0), 
        shape = "RuleArn", type = "string"), Priority = structure(logical(0), 
        shape = "RulePriority", type = "integer", max = 50000L, 
        min = 1L)), shape = "RulePriorityPair", type = "structure")), 
        shape = "RulePriorityList", type = "list")), shape = "SetRulePrioritiesInput", 
        type = "structure")
    return(populate(args, shape))
}

set_rule_priorities_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Rules = structure(list(structure(list(RuleArn = structure(logical(0), 
        shape = "RuleArn", type = "string"), Priority = structure(logical(0), 
        shape = "String", type = "string"), Conditions = structure(list(structure(list(Field = structure(logical(0), 
        shape = "ConditionFieldName", type = "string", max = 64L), 
        Values = structure(list(structure(logical(0), shape = "StringValue", 
            type = "string")), shape = "ListOfString", type = "list")), 
        shape = "RuleCondition", type = "structure")), shape = "RuleConditionList", 
        type = "list"), Actions = structure(list(structure(list(Type = structure(logical(0), 
        shape = "ActionTypeEnum", type = "string"), TargetGroupArn = structure(logical(0), 
        shape = "TargetGroupArn", type = "string"), AuthenticateOidcConfig = structure(list(Issuer = structure(logical(0), 
        shape = "AuthenticateOidcActionIssuer", type = "string"), 
        AuthorizationEndpoint = structure(logical(0), shape = "AuthenticateOidcActionAuthorizationEndpoint", 
            type = "string"), TokenEndpoint = structure(logical(0), 
            shape = "AuthenticateOidcActionTokenEndpoint", type = "string"), 
        UserInfoEndpoint = structure(logical(0), shape = "AuthenticateOidcActionUserInfoEndpoint", 
            type = "string"), ClientId = structure(logical(0), 
            shape = "AuthenticateOidcActionClientId", type = "string"), 
        ClientSecret = structure(logical(0), shape = "AuthenticateOidcActionClientSecret", 
            type = "string"), SessionCookieName = structure(logical(0), 
            shape = "AuthenticateOidcActionSessionCookieName", 
            type = "string"), Scope = structure(logical(0), shape = "AuthenticateOidcActionScope", 
            type = "string"), SessionTimeout = structure(logical(0), 
            shape = "AuthenticateOidcActionSessionTimeout", type = "long"), 
        AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
            shape = "AuthenticateOidcActionAuthenticationRequestParamValue", 
            type = "string")), shape = "AuthenticateOidcActionAuthenticationRequestExtraParams", 
            type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
            shape = "AuthenticateOidcActionConditionalBehaviorEnum", 
            type = "string")), shape = "AuthenticateOidcActionConfig", 
        type = "structure"), AuthenticateCognitoConfig = structure(list(UserPoolArn = structure(logical(0), 
        shape = "AuthenticateCognitoActionUserPoolArn", type = "string"), 
        UserPoolClientId = structure(logical(0), shape = "AuthenticateCognitoActionUserPoolClientId", 
            type = "string"), UserPoolDomain = structure(logical(0), 
            shape = "AuthenticateCognitoActionUserPoolDomain", 
            type = "string"), SessionCookieName = structure(logical(0), 
            shape = "AuthenticateCognitoActionSessionCookieName", 
            type = "string"), Scope = structure(logical(0), shape = "AuthenticateCognitoActionScope", 
            type = "string"), SessionTimeout = structure(logical(0), 
            shape = "AuthenticateCognitoActionSessionTimeout", 
            type = "long"), AuthenticationRequestExtraParams = structure(list(structure(logical(0), 
            shape = "AuthenticateCognitoActionAuthenticationRequestParamValue", 
            type = "string")), shape = "AuthenticateCognitoActionAuthenticationRequestExtraParams", 
            type = "map"), OnUnauthenticatedRequest = structure(logical(0), 
            shape = "AuthenticateCognitoActionConditionalBehaviorEnum", 
            type = "string")), shape = "AuthenticateCognitoActionConfig", 
        type = "structure"), Order = structure(logical(0), shape = "ActionOrder", 
        type = "integer", max = 50000L, min = 1L), RedirectConfig = structure(list(Protocol = structure(logical(0), 
        shape = "RedirectActionProtocol", type = "string", pattern = "^(HTTPS?|#\\{protocol\\})$"), 
        Port = structure(logical(0), shape = "RedirectActionPort", 
            type = "string"), Host = structure(logical(0), shape = "RedirectActionHost", 
            type = "string", max = 128L, min = 1L), Path = structure(logical(0), 
            shape = "RedirectActionPath", type = "string", max = 128L, 
            min = 1L), Query = structure(logical(0), shape = "RedirectActionQuery", 
            type = "string", max = 128L, min = 0L), StatusCode = structure(logical(0), 
            shape = "RedirectActionStatusCodeEnum", type = "string")), 
        shape = "RedirectActionConfig", type = "structure"), 
        FixedResponseConfig = structure(list(MessageBody = structure(logical(0), 
            shape = "FixedResponseActionMessage", type = "string", 
            max = 1024L, min = 0L), StatusCode = structure(logical(0), 
            shape = "FixedResponseActionStatusCode", type = "string", 
            pattern = "^(2|4|5)\\d\\d$"), ContentType = structure(logical(0), 
            shape = "FixedResponseActionContentType", type = "string", 
            max = 32L, min = 0L)), shape = "FixedResponseActionConfig", 
            type = "structure")), shape = "Action", type = "structure")), 
        shape = "Actions", type = "list"), IsDefault = structure(logical(0), 
        shape = "IsDefault", type = "boolean")), shape = "Rule", 
        type = "structure")), shape = "Rules", type = "list")), 
        shape = "SetRulePrioritiesOutput", type = "structure")
    return(populate(args, shape))
}

set_security_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerArn = structure(logical(0), 
        shape = "LoadBalancerArn", type = "string"), SecurityGroups = structure(list(structure(logical(0), 
        shape = "SecurityGroupId", type = "string")), shape = "SecurityGroups", 
        type = "list")), shape = "SetSecurityGroupsInput", type = "structure")
    return(populate(args, shape))
}

set_security_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityGroupIds = structure(list(structure(logical(0), 
        shape = "SecurityGroupId", type = "string")), shape = "SecurityGroups", 
        type = "list")), shape = "SetSecurityGroupsOutput", type = "structure")
    return(populate(args, shape))
}

set_subnets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerArn = structure(logical(0), 
        shape = "LoadBalancerArn", type = "string"), Subnets = structure(list(structure(logical(0), 
        shape = "SubnetId", type = "string")), shape = "Subnets", 
        type = "list"), SubnetMappings = structure(list(structure(list(SubnetId = structure(logical(0), 
        shape = "SubnetId", type = "string"), AllocationId = structure(logical(0), 
        shape = "AllocationId", type = "string")), shape = "SubnetMapping", 
        type = "structure")), shape = "SubnetMappings", type = "list")), 
        shape = "SetSubnetsInput", type = "structure")
    return(populate(args, shape))
}

set_subnets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AvailabilityZones = structure(list(structure(list(ZoneName = structure(logical(0), 
        shape = "ZoneName", type = "string"), SubnetId = structure(logical(0), 
        shape = "SubnetId", type = "string"), LoadBalancerAddresses = structure(list(structure(list(IpAddress = structure(logical(0), 
        shape = "IpAddress", type = "string"), AllocationId = structure(logical(0), 
        shape = "AllocationId", type = "string")), shape = "LoadBalancerAddress", 
        type = "structure")), shape = "LoadBalancerAddresses", 
        type = "list")), shape = "AvailabilityZone", type = "structure")), 
        shape = "AvailabilityZones", type = "list")), shape = "SetSubnetsOutput", 
        type = "structure")
    return(populate(args, shape))
}
