add_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerNames = structure(list(structure(logical(0), 
        shape = "AccessPointName", type = "string")), shape = "LoadBalancerNames", 
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

apply_security_groups_to_load_balancer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), SecurityGroups = structure(list(structure(logical(0), 
        shape = "SecurityGroupId", type = "string")), shape = "SecurityGroups", 
        type = "list")), shape = "ApplySecurityGroupsToLoadBalancerInput", 
        type = "structure")
    return(populate(args, shape))
}

apply_security_groups_to_load_balancer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityGroups = structure(list(structure(logical(0), 
        shape = "SecurityGroupId", type = "string")), shape = "SecurityGroups", 
        type = "list")), shape = "ApplySecurityGroupsToLoadBalancerOutput", 
        type = "structure")
    return(populate(args, shape))
}

attach_load_balancer_to_subnets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), Subnets = structure(list(structure(logical(0), 
        shape = "SubnetId", type = "string")), shape = "Subnets", 
        type = "list")), shape = "AttachLoadBalancerToSubnetsInput", 
        type = "structure")
    return(populate(args, shape))
}

attach_load_balancer_to_subnets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Subnets = structure(list(structure(logical(0), 
        shape = "SubnetId", type = "string")), shape = "Subnets", 
        type = "list")), shape = "AttachLoadBalancerToSubnetsOutput", 
        type = "structure")
    return(populate(args, shape))
}

configure_health_check_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), HealthCheck = structure(list(Target = structure(logical(0), 
        shape = "HealthCheckTarget", type = "string"), Interval = structure(logical(0), 
        shape = "HealthCheckInterval", type = "integer", max = 300L, 
        min = 5L), Timeout = structure(logical(0), shape = "HealthCheckTimeout", 
        type = "integer", max = 60L, min = 2L), UnhealthyThreshold = structure(logical(0), 
        shape = "UnhealthyThreshold", type = "integer", max = 10L, 
        min = 2L), HealthyThreshold = structure(logical(0), shape = "HealthyThreshold", 
        type = "integer", max = 10L, min = 2L)), shape = "HealthCheck", 
        type = "structure")), shape = "ConfigureHealthCheckInput", 
        type = "structure")
    return(populate(args, shape))
}

configure_health_check_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HealthCheck = structure(list(Target = structure(logical(0), 
        shape = "HealthCheckTarget", type = "string"), Interval = structure(logical(0), 
        shape = "HealthCheckInterval", type = "integer", max = 300L, 
        min = 5L), Timeout = structure(logical(0), shape = "HealthCheckTimeout", 
        type = "integer", max = 60L, min = 2L), UnhealthyThreshold = structure(logical(0), 
        shape = "UnhealthyThreshold", type = "integer", max = 10L, 
        min = 2L), HealthyThreshold = structure(logical(0), shape = "HealthyThreshold", 
        type = "integer", max = 10L, min = 2L)), shape = "HealthCheck", 
        type = "structure")), shape = "ConfigureHealthCheckOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_app_cookie_stickiness_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string"), CookieName = structure(logical(0), 
        shape = "CookieName", type = "string")), shape = "CreateAppCookieStickinessPolicyInput", 
        type = "structure")
    return(populate(args, shape))
}

create_app_cookie_stickiness_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateAppCookieStickinessPolicyOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_lb_cookie_stickiness_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string"), CookieExpirationPeriod = structure(logical(0), 
        shape = "CookieExpirationPeriod", type = "long")), shape = "CreateLBCookieStickinessPolicyInput", 
        type = "structure")
    return(populate(args, shape))
}

create_lb_cookie_stickiness_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateLBCookieStickinessPolicyOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_load_balancer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), Listeners = structure(list(structure(list(Protocol = structure(logical(0), 
        shape = "Protocol", type = "string"), LoadBalancerPort = structure(logical(0), 
        shape = "AccessPointPort", type = "integer"), InstanceProtocol = structure(logical(0), 
        shape = "Protocol", type = "string"), InstancePort = structure(logical(0), 
        shape = "InstancePort", type = "integer", max = 65535L, 
        min = 1L), SSLCertificateId = structure(logical(0), shape = "SSLCertificateId", 
        type = "string")), shape = "Listener", type = "structure")), 
        shape = "Listeners", type = "list"), AvailabilityZones = structure(list(structure(logical(0), 
        shape = "AvailabilityZone", type = "string")), shape = "AvailabilityZones", 
        type = "list"), Subnets = structure(list(structure(logical(0), 
        shape = "SubnetId", type = "string")), shape = "Subnets", 
        type = "list"), SecurityGroups = structure(list(structure(logical(0), 
        shape = "SecurityGroupId", type = "string")), shape = "SecurityGroups", 
        type = "list"), Scheme = structure(logical(0), shape = "LoadBalancerScheme", 
        type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), Value = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 0L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "Tag", 
        type = "structure")), shape = "TagList", type = "list", 
        min = 1L)), shape = "CreateAccessPointInput", type = "structure")
    return(populate(args, shape))
}

create_load_balancer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DNSName = structure(logical(0), shape = "DNSName", 
        type = "string")), shape = "CreateAccessPointOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_load_balancer_listeners_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), Listeners = structure(list(structure(list(Protocol = structure(logical(0), 
        shape = "Protocol", type = "string"), LoadBalancerPort = structure(logical(0), 
        shape = "AccessPointPort", type = "integer"), InstanceProtocol = structure(logical(0), 
        shape = "Protocol", type = "string"), InstancePort = structure(logical(0), 
        shape = "InstancePort", type = "integer", max = 65535L, 
        min = 1L), SSLCertificateId = structure(logical(0), shape = "SSLCertificateId", 
        type = "string")), shape = "Listener", type = "structure")), 
        shape = "Listeners", type = "list")), shape = "CreateLoadBalancerListenerInput", 
        type = "structure")
    return(populate(args, shape))
}

create_load_balancer_listeners_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateLoadBalancerListenerOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_load_balancer_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string"), PolicyTypeName = structure(logical(0), 
        shape = "PolicyTypeName", type = "string"), PolicyAttributes = structure(list(structure(list(AttributeName = structure(logical(0), 
        shape = "AttributeName", type = "string"), AttributeValue = structure(logical(0), 
        shape = "AttributeValue", type = "string")), shape = "PolicyAttribute", 
        type = "structure")), shape = "PolicyAttributes", type = "list")), 
        shape = "CreateLoadBalancerPolicyInput", type = "structure")
    return(populate(args, shape))
}

create_load_balancer_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateLoadBalancerPolicyOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_load_balancer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string")), shape = "DeleteAccessPointInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_load_balancer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteAccessPointOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_load_balancer_listeners_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), LoadBalancerPorts = structure(list(structure(logical(0), 
        shape = "AccessPointPort", type = "integer")), shape = "Ports", 
        type = "list")), shape = "DeleteLoadBalancerListenerInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_load_balancer_listeners_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteLoadBalancerListenerOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_load_balancer_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string")), shape = "DeleteLoadBalancerPolicyInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_load_balancer_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteLoadBalancerPolicyOutput", 
        type = "structure")
    return(populate(args, shape))
}

deregister_instances_from_load_balancer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), Instances = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string")), shape = "Instance", 
        type = "structure")), shape = "Instances", type = "list")), 
        shape = "DeregisterEndPointsInput", type = "structure")
    return(populate(args, shape))
}

deregister_instances_from_load_balancer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Instances = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string")), shape = "Instance", 
        type = "structure")), shape = "Instances", type = "list")), 
        shape = "DeregisterEndPointsOutput", type = "structure")
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

describe_instance_health_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), Instances = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string")), shape = "Instance", 
        type = "structure")), shape = "Instances", type = "list")), 
        shape = "DescribeEndPointStateInput", type = "structure")
    return(populate(args, shape))
}

describe_instance_health_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceStates = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string"), State = structure(logical(0), 
        shape = "State", type = "string"), ReasonCode = structure(logical(0), 
        shape = "ReasonCode", type = "string"), Description = structure(logical(0), 
        shape = "Description", type = "string")), shape = "InstanceState", 
        type = "structure")), shape = "InstanceStates", type = "list")), 
        shape = "DescribeEndPointStateOutput", type = "structure")
    return(populate(args, shape))
}

describe_load_balancer_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string")), shape = "DescribeLoadBalancerAttributesInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_load_balancer_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerAttributes = structure(list(CrossZoneLoadBalancing = structure(list(Enabled = structure(logical(0), 
        shape = "CrossZoneLoadBalancingEnabled", type = "boolean")), 
        shape = "CrossZoneLoadBalancing", type = "structure"), 
        AccessLog = structure(list(Enabled = structure(logical(0), 
            shape = "AccessLogEnabled", type = "boolean"), S3BucketName = structure(logical(0), 
            shape = "S3BucketName", type = "string"), EmitInterval = structure(logical(0), 
            shape = "AccessLogInterval", type = "integer"), S3BucketPrefix = structure(logical(0), 
            shape = "AccessLogPrefix", type = "string")), shape = "AccessLog", 
            type = "structure"), ConnectionDraining = structure(list(Enabled = structure(logical(0), 
            shape = "ConnectionDrainingEnabled", type = "boolean"), 
            Timeout = structure(logical(0), shape = "ConnectionDrainingTimeout", 
                type = "integer")), shape = "ConnectionDraining", 
            type = "structure"), ConnectionSettings = structure(list(IdleTimeout = structure(logical(0), 
            shape = "IdleTimeout", type = "integer", max = 3600L, 
            min = 1L)), shape = "ConnectionSettings", type = "structure"), 
        AdditionalAttributes = structure(list(structure(list(Key = structure(logical(0), 
            shape = "AdditionalAttributeKey", type = "string", 
            max = 256L, pattern = "^[a-zA-Z0-9.]+$"), Value = structure(logical(0), 
            shape = "AdditionalAttributeValue", type = "string", 
            max = 256L, pattern = "^[a-zA-Z0-9.]+$")), shape = "AdditionalAttribute", 
            type = "structure")), shape = "AdditionalAttributes", 
            type = "list", max = 10L)), shape = "LoadBalancerAttributes", 
        type = "structure")), shape = "DescribeLoadBalancerAttributesOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_load_balancer_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), PolicyNames = structure(list(structure(logical(0), 
        shape = "PolicyName", type = "string")), shape = "PolicyNames", 
        type = "list")), shape = "DescribeLoadBalancerPoliciesInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_load_balancer_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyDescriptions = structure(list(structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string"), PolicyTypeName = structure(logical(0), 
        shape = "PolicyTypeName", type = "string"), PolicyAttributeDescriptions = structure(list(structure(list(AttributeName = structure(logical(0), 
        shape = "AttributeName", type = "string"), AttributeValue = structure(logical(0), 
        shape = "AttributeValue", type = "string")), shape = "PolicyAttributeDescription", 
        type = "structure")), shape = "PolicyAttributeDescriptions", 
        type = "list")), shape = "PolicyDescription", type = "structure")), 
        shape = "PolicyDescriptions", type = "list")), shape = "DescribeLoadBalancerPoliciesOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_load_balancer_policy_types_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyTypeNames = structure(list(structure(logical(0), 
        shape = "PolicyTypeName", type = "string")), shape = "PolicyTypeNames", 
        type = "list")), shape = "DescribeLoadBalancerPolicyTypesInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_load_balancer_policy_types_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyTypeDescriptions = structure(list(structure(list(PolicyTypeName = structure(logical(0), 
        shape = "PolicyTypeName", type = "string"), Description = structure(logical(0), 
        shape = "Description", type = "string"), PolicyAttributeTypeDescriptions = structure(list(structure(list(AttributeName = structure(logical(0), 
        shape = "AttributeName", type = "string"), AttributeType = structure(logical(0), 
        shape = "AttributeType", type = "string"), Description = structure(logical(0), 
        shape = "Description", type = "string"), DefaultValue = structure(logical(0), 
        shape = "DefaultValue", type = "string"), Cardinality = structure(logical(0), 
        shape = "Cardinality", type = "string")), shape = "PolicyAttributeTypeDescription", 
        type = "structure")), shape = "PolicyAttributeTypeDescriptions", 
        type = "list")), shape = "PolicyTypeDescription", type = "structure")), 
        shape = "PolicyTypeDescriptions", type = "list")), shape = "DescribeLoadBalancerPolicyTypesOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_load_balancers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerNames = structure(list(structure(logical(0), 
        shape = "AccessPointName", type = "string")), shape = "LoadBalancerNames", 
        type = "list"), Marker = structure(logical(0), shape = "Marker", 
        type = "string"), PageSize = structure(logical(0), shape = "PageSize", 
        type = "integer", max = 400L, min = 1L)), shape = "DescribeAccessPointsInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_load_balancers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerDescriptions = structure(list(structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), DNSName = structure(logical(0), 
        shape = "DNSName", type = "string"), CanonicalHostedZoneName = structure(logical(0), 
        shape = "DNSName", type = "string"), CanonicalHostedZoneNameID = structure(logical(0), 
        shape = "DNSName", type = "string"), ListenerDescriptions = structure(list(structure(list(Listener = structure(list(Protocol = structure(logical(0), 
        shape = "Protocol", type = "string"), LoadBalancerPort = structure(logical(0), 
        shape = "AccessPointPort", type = "integer"), InstanceProtocol = structure(logical(0), 
        shape = "Protocol", type = "string"), InstancePort = structure(logical(0), 
        shape = "InstancePort", type = "integer", max = 65535L, 
        min = 1L), SSLCertificateId = structure(logical(0), shape = "SSLCertificateId", 
        type = "string")), shape = "Listener", type = "structure"), 
        PolicyNames = structure(list(structure(logical(0), shape = "PolicyName", 
            type = "string")), shape = "PolicyNames", type = "list")), 
        shape = "ListenerDescription", type = "structure")), 
        shape = "ListenerDescriptions", type = "list"), Policies = structure(list(AppCookieStickinessPolicies = structure(list(structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string"), CookieName = structure(logical(0), 
        shape = "CookieName", type = "string")), shape = "AppCookieStickinessPolicy", 
        type = "structure")), shape = "AppCookieStickinessPolicies", 
        type = "list"), LBCookieStickinessPolicies = structure(list(structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string"), CookieExpirationPeriod = structure(logical(0), 
        shape = "CookieExpirationPeriod", type = "long")), shape = "LBCookieStickinessPolicy", 
        type = "structure")), shape = "LBCookieStickinessPolicies", 
        type = "list"), OtherPolicies = structure(list(structure(logical(0), 
        shape = "PolicyName", type = "string")), shape = "PolicyNames", 
        type = "list")), shape = "Policies", type = "structure"), 
        BackendServerDescriptions = structure(list(structure(list(InstancePort = structure(logical(0), 
            shape = "InstancePort", type = "integer", max = 65535L, 
            min = 1L), PolicyNames = structure(list(structure(logical(0), 
            shape = "PolicyName", type = "string")), shape = "PolicyNames", 
            type = "list")), shape = "BackendServerDescription", 
            type = "structure")), shape = "BackendServerDescriptions", 
            type = "list"), AvailabilityZones = structure(list(structure(logical(0), 
            shape = "AvailabilityZone", type = "string")), shape = "AvailabilityZones", 
            type = "list"), Subnets = structure(list(structure(logical(0), 
            shape = "SubnetId", type = "string")), shape = "Subnets", 
            type = "list"), VPCId = structure(logical(0), shape = "VPCId", 
            type = "string"), Instances = structure(list(structure(list(InstanceId = structure(logical(0), 
            shape = "InstanceId", type = "string")), shape = "Instance", 
            type = "structure")), shape = "Instances", type = "list"), 
        HealthCheck = structure(list(Target = structure(logical(0), 
            shape = "HealthCheckTarget", type = "string"), Interval = structure(logical(0), 
            shape = "HealthCheckInterval", type = "integer", 
            max = 300L, min = 5L), Timeout = structure(logical(0), 
            shape = "HealthCheckTimeout", type = "integer", max = 60L, 
            min = 2L), UnhealthyThreshold = structure(logical(0), 
            shape = "UnhealthyThreshold", type = "integer", max = 10L, 
            min = 2L), HealthyThreshold = structure(logical(0), 
            shape = "HealthyThreshold", type = "integer", max = 10L, 
            min = 2L)), shape = "HealthCheck", type = "structure"), 
        SourceSecurityGroup = structure(list(OwnerAlias = structure(logical(0), 
            shape = "SecurityGroupOwnerAlias", type = "string"), 
            GroupName = structure(logical(0), shape = "SecurityGroupName", 
                type = "string")), shape = "SourceSecurityGroup", 
            type = "structure"), SecurityGroups = structure(list(structure(logical(0), 
            shape = "SecurityGroupId", type = "string")), shape = "SecurityGroups", 
            type = "list"), CreatedTime = structure(logical(0), 
            shape = "CreatedTime", type = "timestamp"), Scheme = structure(logical(0), 
            shape = "LoadBalancerScheme", type = "string")), 
        shape = "LoadBalancerDescription", type = "structure")), 
        shape = "LoadBalancerDescriptions", type = "list"), NextMarker = structure(logical(0), 
        shape = "Marker", type = "string")), shape = "DescribeAccessPointsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerNames = structure(list(structure(logical(0), 
        shape = "AccessPointName", type = "string")), shape = "LoadBalancerNamesMax20", 
        type = "list", max = 20L, min = 1L)), shape = "DescribeTagsInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TagDescriptions = structure(list(structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
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

detach_load_balancer_from_subnets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), Subnets = structure(list(structure(logical(0), 
        shape = "SubnetId", type = "string")), shape = "Subnets", 
        type = "list")), shape = "DetachLoadBalancerFromSubnetsInput", 
        type = "structure")
    return(populate(args, shape))
}

detach_load_balancer_from_subnets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Subnets = structure(list(structure(logical(0), 
        shape = "SubnetId", type = "string")), shape = "Subnets", 
        type = "list")), shape = "DetachLoadBalancerFromSubnetsOutput", 
        type = "structure")
    return(populate(args, shape))
}

disable_availability_zones_for_load_balancer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), AvailabilityZones = structure(list(structure(logical(0), 
        shape = "AvailabilityZone", type = "string")), shape = "AvailabilityZones", 
        type = "list")), shape = "RemoveAvailabilityZonesInput", 
        type = "structure")
    return(populate(args, shape))
}

disable_availability_zones_for_load_balancer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AvailabilityZones = structure(list(structure(logical(0), 
        shape = "AvailabilityZone", type = "string")), shape = "AvailabilityZones", 
        type = "list")), shape = "RemoveAvailabilityZonesOutput", 
        type = "structure")
    return(populate(args, shape))
}

enable_availability_zones_for_load_balancer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), AvailabilityZones = structure(list(structure(logical(0), 
        shape = "AvailabilityZone", type = "string")), shape = "AvailabilityZones", 
        type = "list")), shape = "AddAvailabilityZonesInput", 
        type = "structure")
    return(populate(args, shape))
}

enable_availability_zones_for_load_balancer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AvailabilityZones = structure(list(structure(logical(0), 
        shape = "AvailabilityZone", type = "string")), shape = "AvailabilityZones", 
        type = "list")), shape = "AddAvailabilityZonesOutput", 
        type = "structure")
    return(populate(args, shape))
}

modify_load_balancer_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), LoadBalancerAttributes = structure(list(CrossZoneLoadBalancing = structure(list(Enabled = structure(logical(0), 
        shape = "CrossZoneLoadBalancingEnabled", type = "boolean")), 
        shape = "CrossZoneLoadBalancing", type = "structure"), 
        AccessLog = structure(list(Enabled = structure(logical(0), 
            shape = "AccessLogEnabled", type = "boolean"), S3BucketName = structure(logical(0), 
            shape = "S3BucketName", type = "string"), EmitInterval = structure(logical(0), 
            shape = "AccessLogInterval", type = "integer"), S3BucketPrefix = structure(logical(0), 
            shape = "AccessLogPrefix", type = "string")), shape = "AccessLog", 
            type = "structure"), ConnectionDraining = structure(list(Enabled = structure(logical(0), 
            shape = "ConnectionDrainingEnabled", type = "boolean"), 
            Timeout = structure(logical(0), shape = "ConnectionDrainingTimeout", 
                type = "integer")), shape = "ConnectionDraining", 
            type = "structure"), ConnectionSettings = structure(list(IdleTimeout = structure(logical(0), 
            shape = "IdleTimeout", type = "integer", max = 3600L, 
            min = 1L)), shape = "ConnectionSettings", type = "structure"), 
        AdditionalAttributes = structure(list(structure(list(Key = structure(logical(0), 
            shape = "AdditionalAttributeKey", type = "string", 
            max = 256L, pattern = "^[a-zA-Z0-9.]+$"), Value = structure(logical(0), 
            shape = "AdditionalAttributeValue", type = "string", 
            max = 256L, pattern = "^[a-zA-Z0-9.]+$")), shape = "AdditionalAttribute", 
            type = "structure")), shape = "AdditionalAttributes", 
            type = "list", max = 10L)), shape = "LoadBalancerAttributes", 
        type = "structure")), shape = "ModifyLoadBalancerAttributesInput", 
        type = "structure")
    return(populate(args, shape))
}

modify_load_balancer_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), LoadBalancerAttributes = structure(list(CrossZoneLoadBalancing = structure(list(Enabled = structure(logical(0), 
        shape = "CrossZoneLoadBalancingEnabled", type = "boolean")), 
        shape = "CrossZoneLoadBalancing", type = "structure"), 
        AccessLog = structure(list(Enabled = structure(logical(0), 
            shape = "AccessLogEnabled", type = "boolean"), S3BucketName = structure(logical(0), 
            shape = "S3BucketName", type = "string"), EmitInterval = structure(logical(0), 
            shape = "AccessLogInterval", type = "integer"), S3BucketPrefix = structure(logical(0), 
            shape = "AccessLogPrefix", type = "string")), shape = "AccessLog", 
            type = "structure"), ConnectionDraining = structure(list(Enabled = structure(logical(0), 
            shape = "ConnectionDrainingEnabled", type = "boolean"), 
            Timeout = structure(logical(0), shape = "ConnectionDrainingTimeout", 
                type = "integer")), shape = "ConnectionDraining", 
            type = "structure"), ConnectionSettings = structure(list(IdleTimeout = structure(logical(0), 
            shape = "IdleTimeout", type = "integer", max = 3600L, 
            min = 1L)), shape = "ConnectionSettings", type = "structure"), 
        AdditionalAttributes = structure(list(structure(list(Key = structure(logical(0), 
            shape = "AdditionalAttributeKey", type = "string", 
            max = 256L, pattern = "^[a-zA-Z0-9.]+$"), Value = structure(logical(0), 
            shape = "AdditionalAttributeValue", type = "string", 
            max = 256L, pattern = "^[a-zA-Z0-9.]+$")), shape = "AdditionalAttribute", 
            type = "structure")), shape = "AdditionalAttributes", 
            type = "list", max = 10L)), shape = "LoadBalancerAttributes", 
        type = "structure")), shape = "ModifyLoadBalancerAttributesOutput", 
        type = "structure")
    return(populate(args, shape))
}

register_instances_with_load_balancer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), Instances = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string")), shape = "Instance", 
        type = "structure")), shape = "Instances", type = "list")), 
        shape = "RegisterEndPointsInput", type = "structure")
    return(populate(args, shape))
}

register_instances_with_load_balancer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Instances = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string")), shape = "Instance", 
        type = "structure")), shape = "Instances", type = "list")), 
        shape = "RegisterEndPointsOutput", type = "structure")
    return(populate(args, shape))
}

remove_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerNames = structure(list(structure(logical(0), 
        shape = "AccessPointName", type = "string")), shape = "LoadBalancerNames", 
        type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "TagKeyOnly", 
        type = "structure")), shape = "TagKeyList", type = "list", 
        min = 1L)), shape = "RemoveTagsInput", type = "structure")
    return(populate(args, shape))
}

remove_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RemoveTagsOutput", type = "structure")
    return(populate(args, shape))
}

set_load_balancer_listener_ssl_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), LoadBalancerPort = structure(logical(0), 
        shape = "AccessPointPort", type = "integer"), SSLCertificateId = structure(logical(0), 
        shape = "SSLCertificateId", type = "string")), shape = "SetLoadBalancerListenerSSLCertificateInput", 
        type = "structure")
    return(populate(args, shape))
}

set_load_balancer_listener_ssl_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SetLoadBalancerListenerSSLCertificateOutput", 
        type = "structure")
    return(populate(args, shape))
}

set_load_balancer_policies_for_backend_server_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), InstancePort = structure(logical(0), 
        shape = "EndPointPort", type = "integer"), PolicyNames = structure(list(structure(logical(0), 
        shape = "PolicyName", type = "string")), shape = "PolicyNames", 
        type = "list")), shape = "SetLoadBalancerPoliciesForBackendServerInput", 
        type = "structure")
    return(populate(args, shape))
}

set_load_balancer_policies_for_backend_server_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SetLoadBalancerPoliciesForBackendServerOutput", 
        type = "structure")
    return(populate(args, shape))
}

set_load_balancer_policies_of_listener_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "AccessPointName", type = "string"), LoadBalancerPort = structure(logical(0), 
        shape = "AccessPointPort", type = "integer"), PolicyNames = structure(list(structure(logical(0), 
        shape = "PolicyName", type = "string")), shape = "PolicyNames", 
        type = "list")), shape = "SetLoadBalancerPoliciesOfListenerInput", 
        type = "structure")
    return(populate(args, shape))
}

set_load_balancer_policies_of_listener_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SetLoadBalancerPoliciesOfListenerOutput", 
        type = "structure")
    return(populate(args, shape))
}
