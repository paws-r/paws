#' Adds the specified tags to the specified load balancer
#'
#' Adds the specified tags to the specified load balancer. Each load balancer can have a maximum of 10 tags.
#' 
#' Each tag consists of a key and an optional value. If a tag with the same key is already associated with the load balancer, `AddTags` updates its value.
#' 
#' For more information, see [Tag Your Classic Load Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html) in the *Classic Load Balancers Guide*.
#'
#' @param LoadBalancerNames The name of the load balancer. You can specify one load balancer only.
#' @param Tags The tags.
#'
#' @examples
#' # This example adds two tags to the specified load balancer.
#' add_tags(
#'   LoadBalancerNames = list(
#'     "my-load-balancer"
#'   ),
#'   Tags = list(
#'     list(
#'       Key = "project",
#'       Value = "lima"
#'     ),
#'     list(
#'       Key = "department",
#'       Value = "digital-media"
#'     )
#'   )
#' )
#'
#' @export
add_tags <- function (LoadBalancerNames, Tags) 
{
    op <- Operation(name = "AddTags", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- add_tags_input(LoadBalancerNames = LoadBalancerNames, 
        Tags = Tags)
    output <- add_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates one or more security groups with your load balancer in a virtual private cloud (VPC)
#'
#' Associates one or more security groups with your load balancer in a virtual private cloud (VPC). The specified security groups override the previously associated security groups.
#' 
#' For more information, see [Security Groups for Load Balancers in a VPC](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-security-groups.html#elb-vpc-security-groups) in the *Classic Load Balancers Guide*.
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param SecurityGroups The IDs of the security groups to associate with the load balancer. Note that you cannot specify the name of the security group.
#'
#' @examples
#' # This example associates a security group with the specified load
#' # balancer in a VPC.
#' apply_security_groups_to_load_balancer(
#'   LoadBalancerName = "my-load-balancer",
#'   SecurityGroups = list(
#'     "sg-fc448899"
#'   )
#' )
#'
#' @export
apply_security_groups_to_load_balancer <- function (LoadBalancerName, 
    SecurityGroups) 
{
    op <- Operation(name = "ApplySecurityGroupsToLoadBalancer", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- apply_security_groups_to_load_balancer_input(LoadBalancerName = LoadBalancerName, 
        SecurityGroups = SecurityGroups)
    output <- apply_security_groups_to_load_balancer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds one or more subnets to the set of configured subnets for the specified load balancer
#'
#' Adds one or more subnets to the set of configured subnets for the specified load balancer.
#' 
#' The load balancer evenly distributes requests across all registered subnets. For more information, see [Add or Remove Subnets for Your Load Balancer in a VPC](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-manage-subnets.html) in the *Classic Load Balancers Guide*.
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param Subnets The IDs of the subnets to add. You can add only one subnet per Availability Zone.
#'
#' @examples
#' # This example adds the specified subnet to the set of configured subnets
#' # for the specified load balancer.
#' attach_load_balancer_to_subnets(
#'   LoadBalancerName = "my-load-balancer",
#'   Subnets = list(
#'     "subnet-0ecac448"
#'   )
#' )
#'
#' @export
attach_load_balancer_to_subnets <- function (LoadBalancerName, 
    Subnets) 
{
    op <- Operation(name = "AttachLoadBalancerToSubnets", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- attach_load_balancer_to_subnets_input(LoadBalancerName = LoadBalancerName, 
        Subnets = Subnets)
    output <- attach_load_balancer_to_subnets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Specifies the health check settings to use when evaluating the health state of your EC2 instances
#'
#' Specifies the health check settings to use when evaluating the health state of your EC2 instances.
#' 
#' For more information, see [Configure Health Checks for Your Load Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-healthchecks.html) in the *Classic Load Balancers Guide*.
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param HealthCheck The configuration information.
#'
#' @examples
#' # This example specifies the health check settings used to evaluate the
#' # health of your backend EC2 instances.
#' configure_health_check(
#'   HealthCheck = list(
#'     HealthyThreshold = 2L,
#'     Interval = 30L,
#'     Target = "HTTP:80/png",
#'     Timeout = 3L,
#'     UnhealthyThreshold = 2L
#'   ),
#'   LoadBalancerName = "my-load-balancer"
#' )
#'
#' @export
configure_health_check <- function (LoadBalancerName, HealthCheck) 
{
    op <- Operation(name = "ConfigureHealthCheck", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- configure_health_check_input(LoadBalancerName = LoadBalancerName, 
        HealthCheck = HealthCheck)
    output <- configure_health_check_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Generates a stickiness policy with sticky session lifetimes that follow that of an application-generated cookie
#'
#' Generates a stickiness policy with sticky session lifetimes that follow that of an application-generated cookie. This policy can be associated only with HTTP/HTTPS listeners.
#' 
#' This policy is similar to the policy created by CreateLBCookieStickinessPolicy, except that the lifetime of the special Elastic Load Balancing cookie, `AWSELB`, follows the lifetime of the application-generated cookie specified in the policy configuration. The load balancer only inserts a new stickiness cookie when the application response includes a new application cookie.
#' 
#' If the application cookie is explicitly removed or expires, the session stops being sticky until a new application cookie is issued.
#' 
#' For more information, see [Application-Controlled Session Stickiness](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application) in the *Classic Load Balancers Guide*.
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param PolicyName The name of the policy being created. Policy names must consist of alphanumeric characters and dashes (-). This name must be unique within the set of policies for this load balancer.
#' @param CookieName The name of the application cookie used for stickiness.
#'
#' @examples
#' # This example generates a stickiness policy that follows the sticky
#' # session lifetimes of the application-generated cookie.
#' create_app_cookie_stickiness_policy(
#'   CookieName = "my-app-cookie",
#'   LoadBalancerName = "my-load-balancer",
#'   PolicyName = "my-app-cookie-policy"
#' )
#'
#' @export
create_app_cookie_stickiness_policy <- function (LoadBalancerName, 
    PolicyName, CookieName) 
{
    op <- Operation(name = "CreateAppCookieStickinessPolicy", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- create_app_cookie_stickiness_policy_input(LoadBalancerName = LoadBalancerName, 
        PolicyName = PolicyName, CookieName = CookieName)
    output <- create_app_cookie_stickiness_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Generates a stickiness policy with sticky session lifetimes controlled by the lifetime of the browser (user-agent) or a specified expiration period
#'
#' Generates a stickiness policy with sticky session lifetimes controlled by the lifetime of the browser (user-agent) or a specified expiration period. This policy can be associated only with HTTP/HTTPS listeners.
#' 
#' When a load balancer implements this policy, the load balancer uses a special cookie to track the instance for each request. When the load balancer receives a request, it first checks to see if this cookie is present in the request. If so, the load balancer sends the request to the application server specified in the cookie. If not, the load balancer sends the request to a server that is chosen based on the existing load-balancing algorithm.
#' 
#' A cookie is inserted into the response for binding subsequent requests from the same user to that server. The validity of the cookie is based on the cookie expiration time, which is specified in the policy configuration.
#' 
#' For more information, see [Duration-Based Session Stickiness](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration) in the *Classic Load Balancers Guide*.
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param PolicyName The name of the policy being created. Policy names must consist of alphanumeric characters and dashes (-). This name must be unique within the set of policies for this load balancer.
#' @param CookieExpirationPeriod The time period, in seconds, after which the cookie should be considered stale. If you do not specify this parameter, the default value is 0, which indicates that the sticky session should last for the duration of the browser session.
#'
#' @examples
#' # This example generates a stickiness policy with sticky session lifetimes
#' # controlled by the specified expiration period.
#' create_lb_cookie_stickiness_policy(
#'   CookieExpirationPeriod = 60L,
#'   LoadBalancerName = "my-load-balancer",
#'   PolicyName = "my-duration-cookie-policy"
#' )
#'
#' @export
create_lb_cookie_stickiness_policy <- function (LoadBalancerName, 
    PolicyName, CookieExpirationPeriod = NULL) 
{
    op <- Operation(name = "CreateLBCookieStickinessPolicy", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- create_lb_cookie_stickiness_policy_input(LoadBalancerName = LoadBalancerName, 
        PolicyName = PolicyName, CookieExpirationPeriod = CookieExpirationPeriod)
    output <- create_lb_cookie_stickiness_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a Classic Load Balancer
#'
#' Creates a Classic Load Balancer.
#' 
#' You can add listeners, security groups, subnets, and tags when you create your load balancer, or you can add them later using CreateLoadBalancerListeners, ApplySecurityGroupsToLoadBalancer, AttachLoadBalancerToSubnets, and AddTags.
#' 
#' To describe your current load balancers, see DescribeLoadBalancers. When you are finished with a load balancer, you can delete it using DeleteLoadBalancer.
#' 
#' You can create up to 20 load balancers per region per account. You can request an increase for the number of load balancers for your account. For more information, see [Limits for Your Classic Load Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html) in the *Classic Load Balancers Guide*.
#'
#' @param LoadBalancerName The name of the load balancer.
#' 
#' This name must be unique within your set of load balancers for the region, must have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and cannot begin or end with a hyphen.
#' @param Listeners The listeners.
#' 
#' For more information, see [Listeners for Your Classic Load Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html) in the *Classic Load Balancers Guide*.
#' @param AvailabilityZones One or more Availability Zones from the same region as the load balancer.
#' 
#' You must specify at least one Availability Zone.
#' 
#' You can add more Availability Zones after you create the load balancer using EnableAvailabilityZonesForLoadBalancer.
#' @param Subnets The IDs of the subnets in your VPC to attach to the load balancer. Specify one subnet per Availability Zone specified in `AvailabilityZones`.
#' @param SecurityGroups The IDs of the security groups to assign to the load balancer.
#' @param Scheme The type of a load balancer. Valid only for load balancers in a VPC.
#' 
#' By default, Elastic Load Balancing creates an Internet-facing load balancer with a DNS name that resolves to public IP addresses. For more information about Internet-facing and Internal load balancers, see [Load Balancer Scheme](http://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/how-elastic-load-balancing-works.html#load-balancer-scheme) in the *Elastic Load Balancing User Guide*.
#' 
#' Specify `internal` to create a load balancer with a DNS name that resolves to private IP addresses.
#' @param Tags A list of tags to assign to the load balancer.
#' 
#' For more information about tagging your load balancer, see [Tag Your Classic Load Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html) in the *Classic Load Balancers Guide*.
#'
#' @examples
#' # This example creates a load balancer with an HTTP listener in a VPC.
#' create_load_balancer(
#'   Listeners = list(
#'     list(
#'       InstancePort = 80L,
#'       InstanceProtocol = "HTTP",
#'       LoadBalancerPort = 80L,
#'       Protocol = "HTTP"
#'     )
#'   ),
#'   LoadBalancerName = "my-load-balancer",
#'   SecurityGroups = list(
#'     "sg-a61988c3"
#'   ),
#'   Subnets = list(
#'     "subnet-15aaab61"
#'   )
#' )
#' 
#' # This example creates a load balancer with an HTTP listener in
#' # EC2-Classic.
#' create_load_balancer(
#'   AvailabilityZones = list(
#'     "us-west-2a"
#'   ),
#'   Listeners = list(
#'     list(
#'       InstancePort = 80L,
#'       InstanceProtocol = "HTTP",
#'       LoadBalancerPort = 80L,
#'       Protocol = "HTTP"
#'     )
#'   ),
#'   LoadBalancerName = "my-load-balancer"
#' )
#' 
#' # This example creates a load balancer with an HTTPS listener in a VPC.
#' create_load_balancer(
#'   Listeners = list(
#'     list(
#'       InstancePort = 80L,
#'       InstanceProtocol = "HTTP",
#'       LoadBalancerPort = 80L,
#'       Protocol = "HTTP"
#'     ),
#'     list(
#'       InstancePort = 80L,
#'       InstanceProtocol = "HTTP",
#'       LoadBalancerPort = 443L,
#'       Protocol = "HTTPS",
#'       SSLCertificateId = "arn:aws:iam::123456789012:server-certificate/my-server-cert"
#'     )
#'   ),
#'   LoadBalancerName = "my-load-balancer",
#'   SecurityGroups = list(
#'     "sg-a61988c3"
#'   ),
#'   Subnets = list(
#'     "subnet-15aaab61"
#'   )
#' )
#' 
#' # This example creates a load balancer with an HTTPS listener in
#' # EC2-Classic.
#' create_load_balancer(
#'   AvailabilityZones = list(
#'     "us-west-2a"
#'   ),
#'   Listeners = list(
#'     list(
#'       InstancePort = 80L,
#'       InstanceProtocol = "HTTP",
#'       LoadBalancerPort = 80L,
#'       Protocol = "HTTP"
#'     ),
#'     list(
#'       InstancePort = 80L,
#'       InstanceProtocol = "HTTP",
#'       LoadBalancerPort = 443L,
#'       Protocol = "HTTPS",
#'       SSLCertificateId = "arn:aws:iam::123456789012:server-certificate/my-server-cert"
#'     )
#'   ),
#'   LoadBalancerName = "my-load-balancer"
#' )
#' 
#' # This example creates an internal load balancer with an HTTP listener in
#' # a VPC.
#' create_load_balancer(
#'   Listeners = list(
#'     list(
#'       InstancePort = 80L,
#'       InstanceProtocol = "HTTP",
#'       LoadBalancerPort = 80L,
#'       Protocol = "HTTP"
#'     )
#'   ),
#'   LoadBalancerName = "my-load-balancer",
#'   Scheme = "internal",
#'   SecurityGroups = list(
#'     "sg-a61988c3"
#'   ),
#'   Subnets = list(
#'     "subnet-15aaab61"
#'   )
#' )
#'
#' @export
create_load_balancer <- function (LoadBalancerName, Listeners, 
    AvailabilityZones = NULL, Subnets = NULL, SecurityGroups = NULL, 
    Scheme = NULL, Tags = NULL) 
{
    op <- Operation(name = "CreateLoadBalancer", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_load_balancer_input(LoadBalancerName = LoadBalancerName, 
        Listeners = Listeners, AvailabilityZones = AvailabilityZones, 
        Subnets = Subnets, SecurityGroups = SecurityGroups, Scheme = Scheme, 
        Tags = Tags)
    output <- create_load_balancer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates one or more listeners for the specified load balancer
#'
#' Creates one or more listeners for the specified load balancer. If a listener with the specified port does not already exist, it is created; otherwise, the properties of the new listener must match the properties of the existing listener.
#' 
#' For more information, see [Listeners for Your Classic Load Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html) in the *Classic Load Balancers Guide*.
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param Listeners The listeners.
#'
#' @examples
#' # This example creates a listener for your load balancer at port 80 using
#' # the HTTP protocol.
#' create_load_balancer_listeners(
#'   Listeners = list(
#'     list(
#'       InstancePort = 80L,
#'       InstanceProtocol = "HTTP",
#'       LoadBalancerPort = 80L,
#'       Protocol = "HTTP"
#'     )
#'   ),
#'   LoadBalancerName = "my-load-balancer"
#' )
#' 
#' # This example creates a listener for your load balancer at port 443 using
#' # the HTTPS protocol.
#' create_load_balancer_listeners(
#'   Listeners = list(
#'     list(
#'       InstancePort = 80L,
#'       InstanceProtocol = "HTTP",
#'       LoadBalancerPort = 443L,
#'       Protocol = "HTTPS",
#'       SSLCertificateId = "arn:aws:iam::123456789012:server-certificate/my-server-cert"
#'     )
#'   ),
#'   LoadBalancerName = "my-load-balancer"
#' )
#'
#' @export
create_load_balancer_listeners <- function (LoadBalancerName, 
    Listeners) 
{
    op <- Operation(name = "CreateLoadBalancerListeners", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_load_balancer_listeners_input(LoadBalancerName = LoadBalancerName, 
        Listeners = Listeners)
    output <- create_load_balancer_listeners_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a policy with the specified attributes for the specified load balancer
#'
#' Creates a policy with the specified attributes for the specified load balancer.
#' 
#' Policies are settings that are saved for your load balancer and that can be applied to the listener or the application server, depending on the policy type.
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param PolicyName The name of the load balancer policy to be created. This name must be unique within the set of policies for this load balancer.
#' @param PolicyTypeName The name of the base policy type. To get the list of policy types, use DescribeLoadBalancerPolicyTypes.
#' @param PolicyAttributes The policy attributes.
#'
#' @examples
#' # This example creates a policy that enables Proxy Protocol on the
#' # specified load balancer.
#' create_load_balancer_policy(
#'   LoadBalancerName = "my-load-balancer",
#'   PolicyAttributes = list(
#'     list(
#'       AttributeName = "ProxyProtocol",
#'       AttributeValue = "true"
#'     )
#'   ),
#'   PolicyName = "my-ProxyProtocol-policy",
#'   PolicyTypeName = "ProxyProtocolPolicyType"
#' )
#' 
#' # This example creates a public key policy.
#' create_load_balancer_policy(
#'   LoadBalancerName = "my-load-balancer",
#'   PolicyAttributes = list(
#'     list(
#'       AttributeName = "PublicKey",
#'       AttributeValue = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwAYUjnfyEyXr1pxjhFWBpMlggUcqoi3kl+dS74kj//c6x7ROtusUaeQCTgIUkayttRDWchuqo1pHC1u+n5xxXnBBe2ejbb2WRsKIQ5rXEeixsjFpFsojpSQKkzhVGI6mJVZBJDVKSHmswnwLBdofLhzvllpovBPTHe+o4haAWvDBALJU0pkSI1FecPHcs2hwxf14zHoXy1e2k36A64nXW43wtfx5qcVSIxtCEOjnYRg7RPvybaGfQ+v6Iaxb/+7J5kEvZhTFQId+bSiJImF1FSUT1W1xwzBZPUbcUkkXDj45vC2s3Z8E+Lk7a3uZhvsQHLZnrfuWjBWGWvZ/MhZYgEXAMPLE"
#'     )
#'   ),
#'   PolicyName = "my-PublicKey-policy",
#'   PolicyTypeName = "PublicKeyPolicyType"
#' )
#' 
#' # This example creates a backend server authentication policy that enables
#' # authentication on your backend instance using a public key policy.
#' create_load_balancer_policy(
#'   LoadBalancerName = "my-load-balancer",
#'   PolicyAttributes = list(
#'     list(
#'       AttributeName = "PublicKeyPolicyName",
#'       AttributeValue = "my-PublicKey-policy"
#'     )
#'   ),
#'   PolicyName = "my-authentication-policy",
#'   PolicyTypeName = "BackendServerAuthenticationPolicyType"
#' )
#'
#' @export
create_load_balancer_policy <- function (LoadBalancerName, PolicyName, 
    PolicyTypeName, PolicyAttributes = NULL) 
{
    op <- Operation(name = "CreateLoadBalancerPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_load_balancer_policy_input(LoadBalancerName = LoadBalancerName, 
        PolicyName = PolicyName, PolicyTypeName = PolicyTypeName, 
        PolicyAttributes = PolicyAttributes)
    output <- create_load_balancer_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified load balancer
#'
#' Deletes the specified load balancer.
#' 
#' If you are attempting to recreate a load balancer, you must reconfigure all settings. The DNS name associated with a deleted load balancer are no longer usable. The name and associated DNS record of the deleted load balancer no longer exist and traffic sent to any of its IP addresses is no longer delivered to your instances.
#' 
#' If the load balancer does not exist or has already been deleted, the call to `DeleteLoadBalancer` still succeeds.
#'
#' @param LoadBalancerName The name of the load balancer.
#'
#' @examples
#' # This example deletes the specified load balancer.
#' delete_load_balancer(
#'   LoadBalancerName = "my-load-balancer"
#' )
#'
#' @export
delete_load_balancer <- function (LoadBalancerName) 
{
    op <- Operation(name = "DeleteLoadBalancer", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_load_balancer_input(LoadBalancerName = LoadBalancerName)
    output <- delete_load_balancer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified listeners from the specified load balancer
#'
#' Deletes the specified listeners from the specified load balancer.
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param LoadBalancerPorts The client port numbers of the listeners.
#'
#' @examples
#' # This example deletes the listener for the specified port from the
#' # specified load balancer.
#' delete_load_balancer_listeners(
#'   LoadBalancerName = "my-load-balancer",
#'   LoadBalancerPorts = list(
#'     80L
#'   )
#' )
#'
#' @export
delete_load_balancer_listeners <- function (LoadBalancerName, 
    LoadBalancerPorts) 
{
    op <- Operation(name = "DeleteLoadBalancerListeners", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_load_balancer_listeners_input(LoadBalancerName = LoadBalancerName, 
        LoadBalancerPorts = LoadBalancerPorts)
    output <- delete_load_balancer_listeners_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified policy from the specified load balancer
#'
#' Deletes the specified policy from the specified load balancer. This policy must not be enabled for any listeners.
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param PolicyName The name of the policy.
#'
#' @examples
#' # This example deletes the specified policy from the specified load
#' # balancer. The policy must not be enabled on any listener.
#' delete_load_balancer_policy(
#'   LoadBalancerName = "my-load-balancer",
#'   PolicyName = "my-duration-cookie-policy"
#' )
#'
#' @export
delete_load_balancer_policy <- function (LoadBalancerName, PolicyName) 
{
    op <- Operation(name = "DeleteLoadBalancerPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_load_balancer_policy_input(LoadBalancerName = LoadBalancerName, 
        PolicyName = PolicyName)
    output <- delete_load_balancer_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deregisters the specified instances from the specified load balancer
#'
#' Deregisters the specified instances from the specified load balancer. After the instance is deregistered, it no longer receives traffic from the load balancer.
#' 
#' You can use DescribeLoadBalancers to verify that the instance is deregistered from the load balancer.
#' 
#' For more information, see [Register or De-Register EC2 Instances](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html) in the *Classic Load Balancers Guide*.
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param Instances The IDs of the instances.
#'
#' @examples
#' # This example deregisters the specified instance from the specified load
#' # balancer.
#' deregister_instances_from_load_balancer(
#'   Instances = list(
#'     list(
#'       InstanceId = "i-d6f6fae3"
#'     )
#'   ),
#'   LoadBalancerName = "my-load-balancer"
#' )
#'
#' @export
deregister_instances_from_load_balancer <- function (LoadBalancerName, 
    Instances) 
{
    op <- Operation(name = "DeregisterInstancesFromLoadBalancer", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- deregister_instances_from_load_balancer_input(LoadBalancerName = LoadBalancerName, 
        Instances = Instances)
    output <- deregister_instances_from_load_balancer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the current Elastic Load Balancing resource limits for your AWS account
#'
#' Describes the current Elastic Load Balancing resource limits for your AWS account.
#' 
#' For more information, see [Limits for Your Classic Load Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html) in the *Classic Load Balancers Guide*.
#'
#' @param Marker The marker for the next set of results. (You received this marker from a previous call.)
#' @param PageSize The maximum number of results to return with this call.
#'
#' @examples
#'
#' @export
describe_account_limits <- function (Marker = NULL, PageSize = NULL) 
{
    op <- Operation(name = "DescribeAccountLimits", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_account_limits_input(Marker = Marker, PageSize = PageSize)
    output <- describe_account_limits_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the state of the specified instances with respect to the specified load balancer
#'
#' Describes the state of the specified instances with respect to the specified load balancer. If no instances are specified, the call describes the state of all instances that are currently registered with the load balancer. If instances are specified, their state is returned even if they are no longer registered with the load balancer. The state of terminated instances is not returned.
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param Instances The IDs of the instances.
#'
#' @examples
#' # This example describes the health of the instances for the specified
#' # load balancer.
#' describe_instance_health(
#'   LoadBalancerName = "my-load-balancer"
#' )
#'
#' @export
describe_instance_health <- function (LoadBalancerName, Instances = NULL) 
{
    op <- Operation(name = "DescribeInstanceHealth", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_instance_health_input(LoadBalancerName = LoadBalancerName, 
        Instances = Instances)
    output <- describe_instance_health_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the attributes for the specified load balancer
#'
#' Describes the attributes for the specified load balancer.
#'
#' @param LoadBalancerName The name of the load balancer.
#'
#' @examples
#' # This example describes the attributes of the specified load balancer.
#' describe_load_balancer_attributes(
#'   LoadBalancerName = "my-load-balancer"
#' )
#'
#' @export
describe_load_balancer_attributes <- function (LoadBalancerName) 
{
    op <- Operation(name = "DescribeLoadBalancerAttributes", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_load_balancer_attributes_input(LoadBalancerName = LoadBalancerName)
    output <- describe_load_balancer_attributes_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the specified policies
#'
#' Describes the specified policies.
#' 
#' If you specify a load balancer name, the action returns the descriptions of all policies created for the load balancer. If you specify a policy name associated with your load balancer, the action returns the description of that policy. If you don\'t specify a load balancer name, the action returns descriptions of the specified sample policies, or descriptions of all sample policies. The names of the sample policies have the `ELBSample-` prefix.
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param PolicyNames The names of the policies.
#'
#' @examples
#' # This example describes the specified policy associated with the
#' # specified load balancer.
#' describe_load_balancer_policies(
#'   LoadBalancerName = "my-load-balancer",
#'   PolicyNames = list(
#'     "my-authentication-policy"
#'   )
#' )
#'
#' @export
describe_load_balancer_policies <- function (LoadBalancerName = NULL, 
    PolicyNames = NULL) 
{
    op <- Operation(name = "DescribeLoadBalancerPolicies", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_load_balancer_policies_input(LoadBalancerName = LoadBalancerName, 
        PolicyNames = PolicyNames)
    output <- describe_load_balancer_policies_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the specified load balancer policy types or all load balancer policy types
#'
#' Describes the specified load balancer policy types or all load balancer policy types.
#' 
#' The description of each type indicates how it can be used. For example, some policies can be used only with layer 7 listeners, some policies can be used only with layer 4 listeners, and some policies can be used only with your EC2 instances.
#' 
#' You can use CreateLoadBalancerPolicy to create a policy configuration for any of these policy types. Then, depending on the policy type, use either SetLoadBalancerPoliciesOfListener or SetLoadBalancerPoliciesForBackendServer to set the policy.
#'
#' @param PolicyTypeNames The names of the policy types. If no names are specified, describes all policy types defined by Elastic Load Balancing.
#'
#' @examples
#' # This example describes the specified load balancer policy type.
#' describe_load_balancer_policy_types(
#'   PolicyTypeNames = list(
#'     "ProxyProtocolPolicyType"
#'   )
#' )
#'
#' @export
describe_load_balancer_policy_types <- function (PolicyTypeNames = NULL) 
{
    op <- Operation(name = "DescribeLoadBalancerPolicyTypes", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_load_balancer_policy_types_input(PolicyTypeNames = PolicyTypeNames)
    output <- describe_load_balancer_policy_types_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the specified the load balancers
#'
#' Describes the specified the load balancers. If no load balancers are specified, the call describes all of your load balancers.
#'
#' @param LoadBalancerNames The names of the load balancers.
#' @param Marker The marker for the next set of results. (You received this marker from a previous call.)
#' @param PageSize The maximum number of results to return with this call (a number from 1 to 400). The default is 400.
#'
#' @examples
#' # This example describes the specified load balancer.
#' describe_load_balancers(
#'   LoadBalancerNames = list(
#'     "my-load-balancer"
#'   )
#' )
#'
#' @export
describe_load_balancers <- function (LoadBalancerNames = NULL, 
    Marker = NULL, PageSize = NULL) 
{
    op <- Operation(name = "DescribeLoadBalancers", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_load_balancers_input(LoadBalancerNames = LoadBalancerNames, 
        Marker = Marker, PageSize = PageSize)
    output <- describe_load_balancers_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the tags associated with the specified load balancers
#'
#' Describes the tags associated with the specified load balancers.
#'
#' @param LoadBalancerNames The names of the load balancers.
#'
#' @examples
#' # This example describes the tags for the specified load balancer.
#' describe_tags(
#'   LoadBalancerNames = list(
#'     "my-load-balancer"
#'   )
#' )
#'
#' @export
describe_tags <- function (LoadBalancerNames) 
{
    op <- Operation(name = "DescribeTags", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_tags_input(LoadBalancerNames = LoadBalancerNames)
    output <- describe_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes the specified subnets from the set of configured subnets for the load balancer
#'
#' Removes the specified subnets from the set of configured subnets for the load balancer.
#' 
#' After a subnet is removed, all EC2 instances registered with the load balancer in the removed subnet go into the `OutOfService` state. Then, the load balancer balances the traffic among the remaining routable subnets.
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param Subnets The IDs of the subnets.
#'
#' @examples
#' # This example detaches the specified load balancer from the specified
#' # subnet.
#' detach_load_balancer_from_subnets(
#'   LoadBalancerName = "my-load-balancer",
#'   Subnets = list(
#'     "subnet-0ecac448"
#'   )
#' )
#'
#' @export
detach_load_balancer_from_subnets <- function (LoadBalancerName, 
    Subnets) 
{
    op <- Operation(name = "DetachLoadBalancerFromSubnets", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- detach_load_balancer_from_subnets_input(LoadBalancerName = LoadBalancerName, 
        Subnets = Subnets)
    output <- detach_load_balancer_from_subnets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes the specified Availability Zones from the set of Availability Zones for the specified load balancer in EC2-Classic or a default VPC
#'
#' Removes the specified Availability Zones from the set of Availability Zones for the specified load balancer in EC2-Classic or a default VPC.
#' 
#' For load balancers in a non-default VPC, use DetachLoadBalancerFromSubnets.
#' 
#' There must be at least one Availability Zone registered with a load balancer at all times. After an Availability Zone is removed, all instances registered with the load balancer that are in the removed Availability Zone go into the `OutOfService` state. Then, the load balancer attempts to equally balance the traffic among its remaining Availability Zones.
#' 
#' For more information, see [Add or Remove Availability Zones](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html) in the *Classic Load Balancers Guide*.
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param AvailabilityZones The Availability Zones.
#'
#' @examples
#' # This example removes the specified Availability Zone from the set of
#' # Availability Zones for the specified load balancer.
#' disable_availability_zones_for_load_balancer(
#'   AvailabilityZones = list(
#'     "us-west-2a"
#'   ),
#'   LoadBalancerName = "my-load-balancer"
#' )
#'
#' @export
disable_availability_zones_for_load_balancer <- function (LoadBalancerName, 
    AvailabilityZones) 
{
    op <- Operation(name = "DisableAvailabilityZonesForLoadBalancer", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- disable_availability_zones_for_load_balancer_input(LoadBalancerName = LoadBalancerName, 
        AvailabilityZones = AvailabilityZones)
    output <- disable_availability_zones_for_load_balancer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds the specified Availability Zones to the set of Availability Zones for the specified load balancer in EC2-Classic or a default VPC
#'
#' Adds the specified Availability Zones to the set of Availability Zones for the specified load balancer in EC2-Classic or a default VPC.
#' 
#' For load balancers in a non-default VPC, use AttachLoadBalancerToSubnets.
#' 
#' The load balancer evenly distributes requests across all its registered Availability Zones that contain instances. For more information, see [Add or Remove Availability Zones](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html) in the *Classic Load Balancers Guide*.
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param AvailabilityZones The Availability Zones. These must be in the same region as the load balancer.
#'
#' @examples
#' # This example adds the specified Availability Zone to the specified load
#' # balancer.
#' enable_availability_zones_for_load_balancer(
#'   AvailabilityZones = list(
#'     "us-west-2b"
#'   ),
#'   LoadBalancerName = "my-load-balancer"
#' )
#'
#' @export
enable_availability_zones_for_load_balancer <- function (LoadBalancerName, 
    AvailabilityZones) 
{
    op <- Operation(name = "EnableAvailabilityZonesForLoadBalancer", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- enable_availability_zones_for_load_balancer_input(LoadBalancerName = LoadBalancerName, 
        AvailabilityZones = AvailabilityZones)
    output <- enable_availability_zones_for_load_balancer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the attributes of the specified load balancer
#'
#' Modifies the attributes of the specified load balancer.
#' 
#' You can modify the load balancer attributes, such as `AccessLogs`, `ConnectionDraining`, and `CrossZoneLoadBalancing` by either enabling or disabling them. Or, you can modify the load balancer attribute `ConnectionSettings` by specifying an idle connection timeout value for your load balancer.
#' 
#' For more information, see the following in the *Classic Load Balancers Guide*:
#' 
#' -   [Cross-Zone Load Balancing](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html)
#' 
#' -   [Connection Draining](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html)
#' 
#' -   [Access Logs](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/access-log-collection.html)
#' 
#' -   [Idle Connection Timeout](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html)
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param LoadBalancerAttributes The attributes for the load balancer.
#'
#' @examples
#' # This example enables cross-zone load balancing for the specified load
#' # balancer.
#' modify_load_balancer_attributes(
#'   LoadBalancerAttributes = list(
#'     CrossZoneLoadBalancing = list(
#'       Enabled = TRUE
#'     )
#'   ),
#'   LoadBalancerName = "my-load-balancer"
#' )
#' 
#' # This example enables connection draining for the specified load
#' # balancer.
#' modify_load_balancer_attributes(
#'   LoadBalancerAttributes = list(
#'     ConnectionDraining = list(
#'       Enabled = TRUE,
#'       Timeout = 300L
#'     )
#'   ),
#'   LoadBalancerName = "my-load-balancer"
#' )
#'
#' @export
modify_load_balancer_attributes <- function (LoadBalancerName, 
    LoadBalancerAttributes) 
{
    op <- Operation(name = "ModifyLoadBalancerAttributes", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_load_balancer_attributes_input(LoadBalancerName = LoadBalancerName, 
        LoadBalancerAttributes = LoadBalancerAttributes)
    output <- modify_load_balancer_attributes_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds the specified instances to the specified load balancer
#'
#' Adds the specified instances to the specified load balancer.
#' 
#' The instance must be a running instance in the same network as the load balancer (EC2-Classic or the same VPC). If you have EC2-Classic instances and a load balancer in a VPC with ClassicLink enabled, you can link the EC2-Classic instances to that VPC and then register the linked EC2-Classic instances with the load balancer in the VPC.
#' 
#' Note that `RegisterInstanceWithLoadBalancer` completes when the request has been registered. Instance registration takes a little time to complete. To check the state of the registered instances, use DescribeLoadBalancers or DescribeInstanceHealth.
#' 
#' After the instance is registered, it starts receiving traffic and requests from the load balancer. Any instance that is not in one of the Availability Zones registered for the load balancer is moved to the `OutOfService` state. If an Availability Zone is added to the load balancer later, any instances registered with the load balancer move to the `InService` state.
#' 
#' To deregister instances from a load balancer, use DeregisterInstancesFromLoadBalancer.
#' 
#' For more information, see [Register or De-Register EC2 Instances](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html) in the *Classic Load Balancers Guide*.
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param Instances The IDs of the instances.
#'
#' @examples
#' # This example registers the specified instance with the specified load
#' # balancer.
#' register_instances_with_load_balancer(
#'   Instances = list(
#'     list(
#'       InstanceId = "i-d6f6fae3"
#'     )
#'   ),
#'   LoadBalancerName = "my-load-balancer"
#' )
#'
#' @export
register_instances_with_load_balancer <- function (LoadBalancerName, 
    Instances) 
{
    op <- Operation(name = "RegisterInstancesWithLoadBalancer", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- register_instances_with_load_balancer_input(LoadBalancerName = LoadBalancerName, 
        Instances = Instances)
    output <- register_instances_with_load_balancer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes one or more tags from the specified load balancer
#'
#' Removes one or more tags from the specified load balancer.
#'
#' @param LoadBalancerNames The name of the load balancer. You can specify a maximum of one load balancer name.
#' @param Tags The list of tag keys to remove.
#'
#' @examples
#' # This example removes the specified tag from the specified load balancer.
#' remove_tags(
#'   LoadBalancerNames = list(
#'     "my-load-balancer"
#'   ),
#'   Tags = list(
#'     list(
#'       Key = "project"
#'     )
#'   )
#' )
#'
#' @export
remove_tags <- function (LoadBalancerNames, Tags) 
{
    op <- Operation(name = "RemoveTags", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- remove_tags_input(LoadBalancerNames = LoadBalancerNames, 
        Tags = Tags)
    output <- remove_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the certificate that terminates the specified listener\'s SSL connections
#'
#' Sets the certificate that terminates the specified listener\'s SSL connections. The specified certificate replaces any prior certificate that was used on the same load balancer and port.
#' 
#' For more information about updating your SSL certificate, see [Replace the SSL Certificate for Your Load Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-update-ssl-cert.html) in the *Classic Load Balancers Guide*.
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param LoadBalancerPort The port that uses the specified SSL certificate.
#' @param SSLCertificateId The Amazon Resource Name (ARN) of the SSL certificate.
#'
#' @examples
#' # This example replaces the existing SSL certificate for the specified
#' # HTTPS listener.
#' set_load_balancer_listener_ssl_certificate(
#'   LoadBalancerName = "my-load-balancer",
#'   LoadBalancerPort = 443L,
#'   SSLCertificateId = "arn:aws:iam::123456789012:server-certificate/new-server-cert"
#' )
#'
#' @export
set_load_balancer_listener_ssl_certificate <- function (LoadBalancerName, 
    LoadBalancerPort, SSLCertificateId) 
{
    op <- Operation(name = "SetLoadBalancerListenerSSLCertificate", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- set_load_balancer_listener_ssl_certificate_input(LoadBalancerName = LoadBalancerName, 
        LoadBalancerPort = LoadBalancerPort, SSLCertificateId = SSLCertificateId)
    output <- set_load_balancer_listener_ssl_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Replaces the set of policies associated with the specified port on which the EC2 instance is listening with a new set of policies
#'
#' Replaces the set of policies associated with the specified port on which the EC2 instance is listening with a new set of policies. At this time, only the back-end server authentication policy type can be applied to the instance ports; this policy type is composed of multiple public key policies.
#' 
#' Each time you use `SetLoadBalancerPoliciesForBackendServer` to enable the policies, use the `PolicyNames` parameter to list the policies that you want to enable.
#' 
#' You can use DescribeLoadBalancers or DescribeLoadBalancerPolicies to verify that the policy is associated with the EC2 instance.
#' 
#' For more information about enabling back-end instance authentication, see [Configure Back-end Instance Authentication](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-create-https-ssl-load-balancer.html#configure_backendauth_clt) in the *Classic Load Balancers Guide*. For more information about Proxy Protocol, see [Configure Proxy Protocol Support](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-proxy-protocol.html) in the *Classic Load Balancers Guide*.
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param InstancePort The port number associated with the EC2 instance.
#' @param PolicyNames The names of the policies. If the list is empty, then all current polices are removed from the EC2 instance.
#'
#' @examples
#' # This example replaces the policies that are currently associated with
#' # the specified port.
#' set_load_balancer_policies_for_backend_server(
#'   InstancePort = 80L,
#'   LoadBalancerName = "my-load-balancer",
#'   PolicyNames = list(
#'     "my-ProxyProtocol-policy"
#'   )
#' )
#'
#' @export
set_load_balancer_policies_for_backend_server <- function (LoadBalancerName, 
    InstancePort, PolicyNames) 
{
    op <- Operation(name = "SetLoadBalancerPoliciesForBackendServer", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- set_load_balancer_policies_for_backend_server_input(LoadBalancerName = LoadBalancerName, 
        InstancePort = InstancePort, PolicyNames = PolicyNames)
    output <- set_load_balancer_policies_for_backend_server_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Replaces the current set of policies for the specified load balancer port with the specified set of policies
#'
#' Replaces the current set of policies for the specified load balancer port with the specified set of policies.
#' 
#' To enable back-end server authentication, use SetLoadBalancerPoliciesForBackendServer.
#' 
#' For more information about setting policies, see [Update the SSL Negotiation Configuration](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/ssl-config-update.html), [Duration-Based Session Stickiness](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration), and [Application-Controlled Session Stickiness](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application) in the *Classic Load Balancers Guide*.
#'
#' @param LoadBalancerName The name of the load balancer.
#' @param LoadBalancerPort The external port of the load balancer.
#' @param PolicyNames The names of the policies. This list must include all policies to be enabled. If you omit a policy that is currently enabled, it is disabled. If the list is empty, all current policies are disabled.
#'
#' @examples
#' # This example replaces the policies that are currently associated with
#' # the specified listener.
#' set_load_balancer_policies_of_listener(
#'   LoadBalancerName = "my-load-balancer",
#'   LoadBalancerPort = 80L,
#'   PolicyNames = list(
#'     "my-SSLNegotiation-policy"
#'   )
#' )
#'
#' @export
set_load_balancer_policies_of_listener <- function (LoadBalancerName, 
    LoadBalancerPort, PolicyNames) 
{
    op <- Operation(name = "SetLoadBalancerPoliciesOfListener", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- set_load_balancer_policies_of_listener_input(LoadBalancerName = LoadBalancerName, 
        LoadBalancerPort = LoadBalancerPort, PolicyNames = PolicyNames)
    output <- set_load_balancer_policies_of_listener_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
