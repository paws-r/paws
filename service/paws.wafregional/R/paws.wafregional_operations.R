#' Associates a web ACL with a resource
#'
#' Associates a web ACL with a resource.
#'
#' @param WebACLId A unique identifier (ID) for the web ACL.
#' @param ResourceArn The ARN (Amazon Resource Name) of the resource to be protected.
#'
#' @examples
#'
#' @export
associate_web_acl <- function (WebACLId, ResourceArn) 
{
    op <- Operation(name = "AssociateWebACL", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- associate_web_acl_input(WebACLId = WebACLId, ResourceArn = ResourceArn)
    output <- associate_web_acl_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a `ByteMatchSet`
#'
#' Creates a `ByteMatchSet`. You then use UpdateByteMatchSet to identify the part of a web request that you want AWS WAF to inspect, such as the values of the `User-Agent` header or the query string. For example, you can create a `ByteMatchSet` that matches any requests with `User-Agent` headers that contain the string `BadBot`. You can then configure AWS WAF to reject those requests.
#' 
#' To create and configure a `ByteMatchSet`, perform the following steps:
#' 
#' 1.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `CreateByteMatchSet` request.
#' 
#' 2.  Submit a `CreateByteMatchSet` request.
#' 
#' 3.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an `UpdateByteMatchSet` request.
#' 
#' 4.  Submit an UpdateByteMatchSet request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param Name A friendly name or description of the ByteMatchSet. You can\'t change `Name` after you create a `ByteMatchSet`.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#'
#' @export
create_byte_match_set <- function (Name, ChangeToken) 
{
    op <- Operation(name = "CreateByteMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_byte_match_set_input(Name = Name, ChangeToken = ChangeToken)
    output <- create_byte_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an GeoMatchSet, which you use to specify which web requests you want to allow or block based on the country that the requests originate from
#'
#' Creates an GeoMatchSet, which you use to specify which web requests you want to allow or block based on the country that the requests originate from. For example, if you\'re receiving a lot of requests from one or more countries and you want to block the requests, you can create an `GeoMatchSet` that contains those countries and then configure AWS WAF to block the requests.
#' 
#' To create and configure a `GeoMatchSet`, perform the following steps:
#' 
#' 1.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `CreateGeoMatchSet` request.
#' 
#' 2.  Submit a `CreateGeoMatchSet` request.
#' 
#' 3.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an UpdateGeoMatchSet request.
#' 
#' 4.  Submit an `UpdateGeoMatchSetSet` request to specify the countries that you want AWS WAF to watch for.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param Name A friendly name or description of the GeoMatchSet. You can\'t change `Name` after you create the `GeoMatchSet`.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#'
#' @export
create_geo_match_set <- function (Name, ChangeToken) 
{
    op <- Operation(name = "CreateGeoMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_geo_match_set_input(Name = Name, ChangeToken = ChangeToken)
    output <- create_geo_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an IPSet, which you use to specify which web requests you want to allow or block based on the IP addresses that the requests originate from
#'
#' Creates an IPSet, which you use to specify which web requests you want to allow or block based on the IP addresses that the requests originate from. For example, if you\'re receiving a lot of requests from one or more individual IP addresses or one or more ranges of IP addresses and you want to block the requests, you can create an `IPSet` that contains those IP addresses and then configure AWS WAF to block the requests.
#' 
#' To create and configure an `IPSet`, perform the following steps:
#' 
#' 1.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `CreateIPSet` request.
#' 
#' 2.  Submit a `CreateIPSet` request.
#' 
#' 3.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an UpdateIPSet request.
#' 
#' 4.  Submit an `UpdateIPSet` request to specify the IP addresses that you want AWS WAF to watch for.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param Name A friendly name or description of the IPSet. You can\'t change `Name` after you create the `IPSet`.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#' # The following example creates an IP match set named MyIPSetFriendlyName.
#' create_ip_set(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   Name = "MyIPSetFriendlyName"
#' )
#'
#' @export
create_ip_set <- function (Name, ChangeToken) 
{
    op <- Operation(name = "CreateIPSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_ip_set_input(Name = Name, ChangeToken = ChangeToken)
    output <- create_ip_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a RateBasedRule
#'
#' Creates a RateBasedRule. The `RateBasedRule` contains a `RateLimit`, which specifies the maximum number of requests that AWS WAF allows from a specified IP address in a five-minute period. The `RateBasedRule` also contains the `IPSet` objects, `ByteMatchSet` objects, and other predicates that identify the requests that you want to count or block if these requests exceed the `RateLimit`.
#' 
#' If you add more than one predicate to a `RateBasedRule`, a request not only must exceed the `RateLimit`, but it also must match all the specifications to be counted or blocked. For example, suppose you add the following to a `RateBasedRule`:
#' 
#' -   An `IPSet` that matches the IP address `192.0.2.44/32`
#' 
#' -   A `ByteMatchSet` that matches `BadBot` in the `User-Agent` header
#' 
#' Further, you specify a `RateLimit` of 15,000.
#' 
#' You then add the `RateBasedRule` to a `WebACL` and specify that you want to block requests that meet the conditions in the rule. For a request to be blocked, it must come from the IP address 192.0.2.44 *and* the `User-Agent` header in the request must contain the value `BadBot`. Further, requests that match these two conditions must be received at a rate of more than 15,000 requests every five minutes. If both conditions are met and the rate is exceeded, AWS WAF blocks the requests. If the rate drops below 15,000 for a five-minute period, AWS WAF no longer blocks the requests.
#' 
#' As a second example, suppose you want to limit requests to a particular page on your site. To do this, you could add the following to a `RateBasedRule`:
#' 
#' -   A `ByteMatchSet` with `FieldToMatch` of `URI`
#' 
#' -   A `PositionalConstraint` of `STARTS_WITH`
#' 
#' -   A `TargetString` of `login`
#' 
#' Further, you specify a `RateLimit` of 15,000.
#' 
#' By adding this `RateBasedRule` to a `WebACL`, you could limit requests to your login page without affecting the rest of your site.
#' 
#' To create and configure a `RateBasedRule`, perform the following steps:
#' 
#' 1.  Create and update the predicates that you want to include in the rule. For more information, see CreateByteMatchSet, CreateIPSet, and CreateSqlInjectionMatchSet.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `CreateRule` request.
#' 
#' 3.  Submit a `CreateRateBasedRule` request.
#' 
#' 4.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an UpdateRule request.
#' 
#' 5.  Submit an `UpdateRateBasedRule` request to specify the predicates that you want to include in the rule.
#' 
#' 6.  Create and update a `WebACL` that contains the `RateBasedRule`. For more information, see CreateWebACL.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param Name A friendly name or description of the RateBasedRule. You can\'t change the name of a `RateBasedRule` after you create it.
#' @param MetricName A friendly name or description for the metrics for this `RateBasedRule`. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can\'t contain whitespace. You can\'t change the name of the metric after you create the `RateBasedRule`.
#' @param RateKey The field that AWS WAF uses to determine if requests are likely arriving from a single source and thus subject to rate monitoring. The only valid value for `RateKey` is `IP`. `IP` indicates that requests that arrive from the same IP address are subject to the `RateLimit` that is specified in the `RateBasedRule`.
#' @param RateLimit The maximum number of requests, which have an identical value in the field that is specified by `RateKey`, allowed in a five-minute period. If the number of requests exceeds the `RateLimit` and the other predicates specified in the rule are also met, AWS WAF triggers the action that is specified for this rule.
#' @param ChangeToken The `ChangeToken` that you used to submit the `CreateRateBasedRule` request. You can also use this value to query the status of the request. For more information, see GetChangeTokenStatus.
#'
#' @examples
#'
#' @export
create_rate_based_rule <- function (Name, MetricName, RateKey, 
    RateLimit, ChangeToken) 
{
    op <- Operation(name = "CreateRateBasedRule", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_rate_based_rule_input(Name = Name, MetricName = MetricName, 
        RateKey = RateKey, RateLimit = RateLimit, ChangeToken = ChangeToken)
    output <- create_rate_based_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a RegexMatchSet
#'
#' Creates a RegexMatchSet. You then use UpdateRegexMatchSet to identify the part of a web request that you want AWS WAF to inspect, such as the values of the `User-Agent` header or the query string. For example, you can create a `RegexMatchSet` that contains a `RegexMatchTuple` that looks for any requests with `User-Agent` headers that match a `RegexPatternSet` with pattern `B[a@]dB[o0]t`. You can then configure AWS WAF to reject those requests.
#' 
#' To create and configure a `RegexMatchSet`, perform the following steps:
#' 
#' 1.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `CreateRegexMatchSet` request.
#' 
#' 2.  Submit a `CreateRegexMatchSet` request.
#' 
#' 3.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an `UpdateRegexMatchSet` request.
#' 
#' 4.  Submit an UpdateRegexMatchSet request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value, using a `RegexPatternSet`, that you want AWS WAF to watch for.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param Name A friendly name or description of the RegexMatchSet. You can\'t change `Name` after you create a `RegexMatchSet`.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#'
#' @export
create_regex_match_set <- function (Name, ChangeToken) 
{
    op <- Operation(name = "CreateRegexMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_regex_match_set_input(Name = Name, ChangeToken = ChangeToken)
    output <- create_regex_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a `RegexPatternSet`
#'
#' Creates a `RegexPatternSet`. You then use UpdateRegexPatternSet to specify the regular expression (regex) pattern that you want AWS WAF to search for, such as `B[a@]dB[o0]t`. You can then configure AWS WAF to reject those requests.
#' 
#' To create and configure a `RegexPatternSet`, perform the following steps:
#' 
#' 1.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `CreateRegexPatternSet` request.
#' 
#' 2.  Submit a `CreateRegexPatternSet` request.
#' 
#' 3.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an `UpdateRegexPatternSet` request.
#' 
#' 4.  Submit an UpdateRegexPatternSet request to specify the string that you want AWS WAF to watch for.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param Name A friendly name or description of the RegexPatternSet. You can\'t change `Name` after you create a `RegexPatternSet`.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#'
#' @export
create_regex_pattern_set <- function (Name, ChangeToken) 
{
    op <- Operation(name = "CreateRegexPatternSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_regex_pattern_set_input(Name = Name, ChangeToken = ChangeToken)
    output <- create_regex_pattern_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a `Rule`, which contains the `IPSet` objects, `ByteMatchSet` objects, and other predicates that identify the requests that you want to block
#'
#' Creates a `Rule`, which contains the `IPSet` objects, `ByteMatchSet` objects, and other predicates that identify the requests that you want to block. If you add more than one predicate to a `Rule`, a request must match all of the specifications to be allowed or blocked. For example, suppose you add the following to a `Rule`:
#' 
#' -   An `IPSet` that matches the IP address `192.0.2.44/32`
#' 
#' -   A `ByteMatchSet` that matches `BadBot` in the `User-Agent` header
#' 
#' You then add the `Rule` to a `WebACL` and specify that you want to blocks requests that satisfy the `Rule`. For a request to be blocked, it must come from the IP address 192.0.2.44 *and* the `User-Agent` header in the request must contain the value `BadBot`.
#' 
#' To create and configure a `Rule`, perform the following steps:
#' 
#' 1.  Create and update the predicates that you want to include in the `Rule`. For more information, see CreateByteMatchSet, CreateIPSet, and CreateSqlInjectionMatchSet.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `CreateRule` request.
#' 
#' 3.  Submit a `CreateRule` request.
#' 
#' 4.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an UpdateRule request.
#' 
#' 5.  Submit an `UpdateRule` request to specify the predicates that you want to include in the `Rule`.
#' 
#' 6.  Create and update a `WebACL` that contains the `Rule`. For more information, see CreateWebACL.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param Name A friendly name or description of the Rule. You can\'t change the name of a `Rule` after you create it.
#' @param MetricName A friendly name or description for the metrics for this `Rule`. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can\'t contain whitespace. You can\'t change the name of the metric after you create the `Rule`.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#' # The following example creates a rule named WAFByteHeaderRule.
#' create_rule(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   MetricName = "WAFByteHeaderRule",
#'   Name = "WAFByteHeaderRule"
#' )
#'
#' @export
create_rule <- function (Name, MetricName, ChangeToken) 
{
    op <- Operation(name = "CreateRule", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_rule_input(Name = Name, MetricName = MetricName, 
        ChangeToken = ChangeToken)
    output <- create_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a `RuleGroup`
#'
#' Creates a `RuleGroup`. A rule group is a collection of predefined rules that you add to a web ACL. You use UpdateRuleGroup to add rules to the rule group.
#' 
#' Rule groups are subject to the following limits:
#' 
#' -   Three rule groups per account. You can request an increase to this limit by contacting customer support.
#' 
#' -   One rule group per web ACL.
#' 
#' -   Ten rules per rule group.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param Name A friendly name or description of the RuleGroup. You can\'t change `Name` after you create a `RuleGroup`.
#' @param MetricName A friendly name or description for the metrics for this `RuleGroup`. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can\'t contain whitespace. You can\'t change the name of the metric after you create the `RuleGroup`.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#'
#' @export
create_rule_group <- function (Name, MetricName, ChangeToken) 
{
    op <- Operation(name = "CreateRuleGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_rule_group_input(Name = Name, MetricName = MetricName, 
        ChangeToken = ChangeToken)
    output <- create_rule_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a `SizeConstraintSet`
#'
#' Creates a `SizeConstraintSet`. You then use UpdateSizeConstraintSet to identify the part of a web request that you want AWS WAF to check for length, such as the length of the `User-Agent` header or the length of the query string. For example, you can create a `SizeConstraintSet` that matches any requests that have a query string that is longer than 100 bytes. You can then configure AWS WAF to reject those requests.
#' 
#' To create and configure a `SizeConstraintSet`, perform the following steps:
#' 
#' 1.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `CreateSizeConstraintSet` request.
#' 
#' 2.  Submit a `CreateSizeConstraintSet` request.
#' 
#' 3.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an `UpdateSizeConstraintSet` request.
#' 
#' 4.  Submit an UpdateSizeConstraintSet request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param Name A friendly name or description of the SizeConstraintSet. You can\'t change `Name` after you create a `SizeConstraintSet`.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#' # The following example creates size constraint set named
#' # MySampleSizeConstraintSet.
#' create_size_constraint_set(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   Name = "MySampleSizeConstraintSet"
#' )
#'
#' @export
create_size_constraint_set <- function (Name, ChangeToken) 
{
    op <- Operation(name = "CreateSizeConstraintSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_size_constraint_set_input(Name = Name, ChangeToken = ChangeToken)
    output <- create_size_constraint_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a SqlInjectionMatchSet, which you use to allow, block, or count requests that contain snippets of SQL code in a specified part of web requests
#'
#' Creates a SqlInjectionMatchSet, which you use to allow, block, or count requests that contain snippets of SQL code in a specified part of web requests. AWS WAF searches for character sequences that are likely to be malicious strings.
#' 
#' To create and configure a `SqlInjectionMatchSet`, perform the following steps:
#' 
#' 1.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `CreateSqlInjectionMatchSet` request.
#' 
#' 2.  Submit a `CreateSqlInjectionMatchSet` request.
#' 
#' 3.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an UpdateSqlInjectionMatchSet request.
#' 
#' 4.  Submit an UpdateSqlInjectionMatchSet request to specify the parts of web requests in which you want to allow, block, or count malicious SQL code.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param Name A friendly name or description for the SqlInjectionMatchSet that you\'re creating. You can\'t change `Name` after you create the `SqlInjectionMatchSet`.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#' # The following example creates a SQL injection match set named
#' # MySQLInjectionMatchSet.
#' create_sql_injection_match_set(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   Name = "MySQLInjectionMatchSet"
#' )
#'
#' @export
create_sql_injection_match_set <- function (Name, ChangeToken) 
{
    op <- Operation(name = "CreateSqlInjectionMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_sql_injection_match_set_input(Name = Name, 
        ChangeToken = ChangeToken)
    output <- create_sql_injection_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a `WebACL`, which contains the `Rules` that identify the CloudFront web requests that you want to allow, block, or count
#'
#' Creates a `WebACL`, which contains the `Rules` that identify the CloudFront web requests that you want to allow, block, or count. AWS WAF evaluates `Rules` in order based on the value of `Priority` for each `Rule`.
#' 
#' You also specify a default action, either `ALLOW` or `BLOCK`. If a web request doesn\'t match any of the `Rules` in a `WebACL`, AWS WAF responds to the request with the default action.
#' 
#' To create and configure a `WebACL`, perform the following steps:
#' 
#' 1.  Create and update the `ByteMatchSet` objects and other predicates that you want to include in `Rules`. For more information, see CreateByteMatchSet, UpdateByteMatchSet, CreateIPSet, UpdateIPSet, CreateSqlInjectionMatchSet, and UpdateSqlInjectionMatchSet.
#' 
#' 2.  Create and update the `Rules` that you want to include in the `WebACL`. For more information, see CreateRule and UpdateRule.
#' 
#' 3.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `CreateWebACL` request.
#' 
#' 4.  Submit a `CreateWebACL` request.
#' 
#' 5.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an UpdateWebACL request.
#' 
#' 6.  Submit an UpdateWebACL request to specify the `Rules` that you want to include in the `WebACL`, to specify the default action, and to associate the `WebACL` with a CloudFront distribution.
#' 
#' For more information about how to use the AWS WAF API, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param Name A friendly name or description of the WebACL. You can\'t change `Name` after you create the `WebACL`.
#' @param MetricName A friendly name or description for the metrics for this `WebACL`. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can\'t contain whitespace. You can\'t change `MetricName` after you create the `WebACL`.
#' @param DefaultAction The action that you want AWS WAF to take when a request doesn\'t match the criteria specified in any of the `Rule` objects that are associated with the `WebACL`.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#' # The following example creates a web ACL named CreateExample.
#' create_web_acl(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   DefaultAction = list(
#'     Type = "ALLOW"
#'   ),
#'   MetricName = "CreateExample",
#'   Name = "CreateExample"
#' )
#'
#' @export
create_web_acl <- function (Name, MetricName, DefaultAction, 
    ChangeToken) 
{
    op <- Operation(name = "CreateWebACL", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_web_acl_input(Name = Name, MetricName = MetricName, 
        DefaultAction = DefaultAction, ChangeToken = ChangeToken)
    output <- create_web_acl_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an XssMatchSet, which you use to allow, block, or count requests that contain cross-site scripting attacks in the specified part of web requests
#'
#' Creates an XssMatchSet, which you use to allow, block, or count requests that contain cross-site scripting attacks in the specified part of web requests. AWS WAF searches for character sequences that are likely to be malicious strings.
#' 
#' To create and configure an `XssMatchSet`, perform the following steps:
#' 
#' 1.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `CreateXssMatchSet` request.
#' 
#' 2.  Submit a `CreateXssMatchSet` request.
#' 
#' 3.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an UpdateXssMatchSet request.
#' 
#' 4.  Submit an UpdateXssMatchSet request to specify the parts of web requests in which you want to allow, block, or count cross-site scripting attacks.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param Name A friendly name or description for the XssMatchSet that you\'re creating. You can\'t change `Name` after you create the `XssMatchSet`.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#' # The following example creates an XSS match set named
#' # MySampleXssMatchSet.
#' create_xss_match_set(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   Name = "MySampleXssMatchSet"
#' )
#'
#' @export
create_xss_match_set <- function (Name, ChangeToken) 
{
    op <- Operation(name = "CreateXssMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_xss_match_set_input(Name = Name, ChangeToken = ChangeToken)
    output <- create_xss_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently deletes a ByteMatchSet
#'
#' Permanently deletes a ByteMatchSet. You can\'t delete a `ByteMatchSet` if it\'s still used in any `Rules` or if it still includes any ByteMatchTuple objects (any filters).
#' 
#' If you just want to remove a `ByteMatchSet` from a `Rule`, use UpdateRule.
#' 
#' To permanently delete a `ByteMatchSet`, perform the following steps:
#' 
#' 1.  Update the `ByteMatchSet` to remove filters, if any. For more information, see UpdateByteMatchSet.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `DeleteByteMatchSet` request.
#' 
#' 3.  Submit a `DeleteByteMatchSet` request.
#'
#' @param ByteMatchSetId The `ByteMatchSetId` of the ByteMatchSet that you want to delete. `ByteMatchSetId` is returned by CreateByteMatchSet and by ListByteMatchSets.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#' # The following example deletes a byte match set with the ID
#' # exampleIDs3t-46da-4fdb-b8d5-abc321j569j5.
#' delete_byte_match_set(
#'   ByteMatchSetId = "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5",
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
#' )
#'
#' @export
delete_byte_match_set <- function (ByteMatchSetId, ChangeToken) 
{
    op <- Operation(name = "DeleteByteMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_byte_match_set_input(ByteMatchSetId = ByteMatchSetId, 
        ChangeToken = ChangeToken)
    output <- delete_byte_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently deletes a GeoMatchSet
#'
#' Permanently deletes a GeoMatchSet. You can\'t delete a `GeoMatchSet` if it\'s still used in any `Rules` or if it still includes any countries.
#' 
#' If you just want to remove a `GeoMatchSet` from a `Rule`, use UpdateRule.
#' 
#' To permanently delete a `GeoMatchSet` from AWS WAF, perform the following steps:
#' 
#' 1.  Update the `GeoMatchSet` to remove any countries. For more information, see UpdateGeoMatchSet.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `DeleteGeoMatchSet` request.
#' 
#' 3.  Submit a `DeleteGeoMatchSet` request.
#'
#' @param GeoMatchSetId The `GeoMatchSetID` of the GeoMatchSet that you want to delete. `GeoMatchSetId` is returned by CreateGeoMatchSet and by ListGeoMatchSets.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#'
#' @export
delete_geo_match_set <- function (GeoMatchSetId, ChangeToken) 
{
    op <- Operation(name = "DeleteGeoMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_geo_match_set_input(GeoMatchSetId = GeoMatchSetId, 
        ChangeToken = ChangeToken)
    output <- delete_geo_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently deletes an IPSet
#'
#' Permanently deletes an IPSet. You can\'t delete an `IPSet` if it\'s still used in any `Rules` or if it still includes any IP addresses.
#' 
#' If you just want to remove an `IPSet` from a `Rule`, use UpdateRule.
#' 
#' To permanently delete an `IPSet` from AWS WAF, perform the following steps:
#' 
#' 1.  Update the `IPSet` to remove IP address ranges, if any. For more information, see UpdateIPSet.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `DeleteIPSet` request.
#' 
#' 3.  Submit a `DeleteIPSet` request.
#'
#' @param IPSetId The `IPSetId` of the IPSet that you want to delete. `IPSetId` is returned by CreateIPSet and by ListIPSets.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#' # The following example deletes an IP match set  with the ID
#' # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
#' delete_ip_set(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   IPSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
#' )
#'
#' @export
delete_ip_set <- function (IPSetId, ChangeToken) 
{
    op <- Operation(name = "DeleteIPSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_ip_set_input(IPSetId = IPSetId, ChangeToken = ChangeToken)
    output <- delete_ip_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently deletes the LoggingConfiguration from the specified web ACL
#'
#' Permanently deletes the LoggingConfiguration from the specified web ACL.
#'
#' @param ResourceArn The Amazon Resource Name (ARN) of the web ACL from which you want to delete the LoggingConfiguration.
#'
#' @examples
#'
#' @export
delete_logging_configuration <- function (ResourceArn) 
{
    op <- Operation(name = "DeleteLoggingConfiguration", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_logging_configuration_input(ResourceArn = ResourceArn)
    output <- delete_logging_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently deletes an IAM policy from the specified RuleGroup
#'
#' Permanently deletes an IAM policy from the specified RuleGroup.
#' 
#' The user making the request must be the owner of the RuleGroup.
#'
#' @param ResourceArn The Amazon Resource Name (ARN) of the RuleGroup from which you want to delete the policy.
#' 
#' The user making the request must be the owner of the RuleGroup.
#'
#' @examples
#'
#' @export
delete_permission_policy <- function (ResourceArn) 
{
    op <- Operation(name = "DeletePermissionPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_permission_policy_input(ResourceArn = ResourceArn)
    output <- delete_permission_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently deletes a RateBasedRule
#'
#' Permanently deletes a RateBasedRule. You can\'t delete a rule if it\'s still used in any `WebACL` objects or if it still includes any predicates, such as `ByteMatchSet` objects.
#' 
#' If you just want to remove a rule from a `WebACL`, use UpdateWebACL.
#' 
#' To permanently delete a `RateBasedRule` from AWS WAF, perform the following steps:
#' 
#' 1.  Update the `RateBasedRule` to remove predicates, if any. For more information, see UpdateRateBasedRule.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `DeleteRateBasedRule` request.
#' 
#' 3.  Submit a `DeleteRateBasedRule` request.
#'
#' @param RuleId The `RuleId` of the RateBasedRule that you want to delete. `RuleId` is returned by CreateRateBasedRule and by ListRateBasedRules.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#'
#' @export
delete_rate_based_rule <- function (RuleId, ChangeToken) 
{
    op <- Operation(name = "DeleteRateBasedRule", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_rate_based_rule_input(RuleId = RuleId, ChangeToken = ChangeToken)
    output <- delete_rate_based_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently deletes a RegexMatchSet
#'
#' Permanently deletes a RegexMatchSet. You can\'t delete a `RegexMatchSet` if it\'s still used in any `Rules` or if it still includes any `RegexMatchTuples` objects (any filters).
#' 
#' If you just want to remove a `RegexMatchSet` from a `Rule`, use UpdateRule.
#' 
#' To permanently delete a `RegexMatchSet`, perform the following steps:
#' 
#' 1.  Update the `RegexMatchSet` to remove filters, if any. For more information, see UpdateRegexMatchSet.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `DeleteRegexMatchSet` request.
#' 
#' 3.  Submit a `DeleteRegexMatchSet` request.
#'
#' @param RegexMatchSetId The `RegexMatchSetId` of the RegexMatchSet that you want to delete. `RegexMatchSetId` is returned by CreateRegexMatchSet and by ListRegexMatchSets.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#'
#' @export
delete_regex_match_set <- function (RegexMatchSetId, ChangeToken) 
{
    op <- Operation(name = "DeleteRegexMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_regex_match_set_input(RegexMatchSetId = RegexMatchSetId, 
        ChangeToken = ChangeToken)
    output <- delete_regex_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently deletes a RegexPatternSet
#'
#' Permanently deletes a RegexPatternSet. You can\'t delete a `RegexPatternSet` if it\'s still used in any `RegexMatchSet` or if the `RegexPatternSet` is not empty.
#'
#' @param RegexPatternSetId The `RegexPatternSetId` of the RegexPatternSet that you want to delete. `RegexPatternSetId` is returned by CreateRegexPatternSet and by ListRegexPatternSets.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#'
#' @export
delete_regex_pattern_set <- function (RegexPatternSetId, ChangeToken) 
{
    op <- Operation(name = "DeleteRegexPatternSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_regex_pattern_set_input(RegexPatternSetId = RegexPatternSetId, 
        ChangeToken = ChangeToken)
    output <- delete_regex_pattern_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently deletes a Rule
#'
#' Permanently deletes a Rule. You can\'t delete a `Rule` if it\'s still used in any `WebACL` objects or if it still includes any predicates, such as `ByteMatchSet` objects.
#' 
#' If you just want to remove a `Rule` from a `WebACL`, use UpdateWebACL.
#' 
#' To permanently delete a `Rule` from AWS WAF, perform the following steps:
#' 
#' 1.  Update the `Rule` to remove predicates, if any. For more information, see UpdateRule.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `DeleteRule` request.
#' 
#' 3.  Submit a `DeleteRule` request.
#'
#' @param RuleId The `RuleId` of the Rule that you want to delete. `RuleId` is returned by CreateRule and by ListRules.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#' # The following example deletes a rule with the ID WAFRule-1-Example.
#' delete_rule(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   RuleId = "WAFRule-1-Example"
#' )
#'
#' @export
delete_rule <- function (RuleId, ChangeToken) 
{
    op <- Operation(name = "DeleteRule", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_rule_input(RuleId = RuleId, ChangeToken = ChangeToken)
    output <- delete_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently deletes a RuleGroup
#'
#' Permanently deletes a RuleGroup. You can\'t delete a `RuleGroup` if it\'s still used in any `WebACL` objects or if it still includes any rules.
#' 
#' If you just want to remove a `RuleGroup` from a `WebACL`, use UpdateWebACL.
#' 
#' To permanently delete a `RuleGroup` from AWS WAF, perform the following steps:
#' 
#' 1.  Update the `RuleGroup` to remove rules, if any. For more information, see UpdateRuleGroup.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `DeleteRuleGroup` request.
#' 
#' 3.  Submit a `DeleteRuleGroup` request.
#'
#' @param RuleGroupId The `RuleGroupId` of the RuleGroup that you want to delete. `RuleGroupId` is returned by CreateRuleGroup and by ListRuleGroups.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#'
#' @export
delete_rule_group <- function (RuleGroupId, ChangeToken) 
{
    op <- Operation(name = "DeleteRuleGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_rule_group_input(RuleGroupId = RuleGroupId, 
        ChangeToken = ChangeToken)
    output <- delete_rule_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently deletes a SizeConstraintSet
#'
#' Permanently deletes a SizeConstraintSet. You can\'t delete a `SizeConstraintSet` if it\'s still used in any `Rules` or if it still includes any SizeConstraint objects (any filters).
#' 
#' If you just want to remove a `SizeConstraintSet` from a `Rule`, use UpdateRule.
#' 
#' To permanently delete a `SizeConstraintSet`, perform the following steps:
#' 
#' 1.  Update the `SizeConstraintSet` to remove filters, if any. For more information, see UpdateSizeConstraintSet.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `DeleteSizeConstraintSet` request.
#' 
#' 3.  Submit a `DeleteSizeConstraintSet` request.
#'
#' @param SizeConstraintSetId The `SizeConstraintSetId` of the SizeConstraintSet that you want to delete. `SizeConstraintSetId` is returned by CreateSizeConstraintSet and by ListSizeConstraintSets.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#' # The following example deletes a size constraint set  with the ID
#' # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
#' delete_size_constraint_set(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   SizeConstraintSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
#' )
#'
#' @export
delete_size_constraint_set <- function (SizeConstraintSetId, 
    ChangeToken) 
{
    op <- Operation(name = "DeleteSizeConstraintSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_size_constraint_set_input(SizeConstraintSetId = SizeConstraintSetId, 
        ChangeToken = ChangeToken)
    output <- delete_size_constraint_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently deletes a SqlInjectionMatchSet
#'
#' Permanently deletes a SqlInjectionMatchSet. You can\'t delete a `SqlInjectionMatchSet` if it\'s still used in any `Rules` or if it still contains any SqlInjectionMatchTuple objects.
#' 
#' If you just want to remove a `SqlInjectionMatchSet` from a `Rule`, use UpdateRule.
#' 
#' To permanently delete a `SqlInjectionMatchSet` from AWS WAF, perform the following steps:
#' 
#' 1.  Update the `SqlInjectionMatchSet` to remove filters, if any. For more information, see UpdateSqlInjectionMatchSet.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `DeleteSqlInjectionMatchSet` request.
#' 
#' 3.  Submit a `DeleteSqlInjectionMatchSet` request.
#'
#' @param SqlInjectionMatchSetId The `SqlInjectionMatchSetId` of the SqlInjectionMatchSet that you want to delete. `SqlInjectionMatchSetId` is returned by CreateSqlInjectionMatchSet and by ListSqlInjectionMatchSets.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#' # The following example deletes a SQL injection match set  with the ID
#' # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
#' delete_sql_injection_match_set(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   SqlInjectionMatchSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
#' )
#'
#' @export
delete_sql_injection_match_set <- function (SqlInjectionMatchSetId, 
    ChangeToken) 
{
    op <- Operation(name = "DeleteSqlInjectionMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_sql_injection_match_set_input(SqlInjectionMatchSetId = SqlInjectionMatchSetId, 
        ChangeToken = ChangeToken)
    output <- delete_sql_injection_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently deletes a WebACL
#'
#' Permanently deletes a WebACL. You can\'t delete a `WebACL` if it still contains any `Rules`.
#' 
#' To delete a `WebACL`, perform the following steps:
#' 
#' 1.  Update the `WebACL` to remove `Rules`, if any. For more information, see UpdateWebACL.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `DeleteWebACL` request.
#' 
#' 3.  Submit a `DeleteWebACL` request.
#'
#' @param WebACLId The `WebACLId` of the WebACL that you want to delete. `WebACLId` is returned by CreateWebACL and by ListWebACLs.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#' # The following example deletes a web ACL with the ID
#' # example-46da-4444-5555-example.
#' delete_web_acl(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   WebACLId = "example-46da-4444-5555-example"
#' )
#'
#' @export
delete_web_acl <- function (WebACLId, ChangeToken) 
{
    op <- Operation(name = "DeleteWebACL", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_web_acl_input(WebACLId = WebACLId, ChangeToken = ChangeToken)
    output <- delete_web_acl_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently deletes an XssMatchSet
#'
#' Permanently deletes an XssMatchSet. You can\'t delete an `XssMatchSet` if it\'s still used in any `Rules` or if it still contains any XssMatchTuple objects.
#' 
#' If you just want to remove an `XssMatchSet` from a `Rule`, use UpdateRule.
#' 
#' To permanently delete an `XssMatchSet` from AWS WAF, perform the following steps:
#' 
#' 1.  Update the `XssMatchSet` to remove filters, if any. For more information, see UpdateXssMatchSet.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of a `DeleteXssMatchSet` request.
#' 
#' 3.  Submit a `DeleteXssMatchSet` request.
#'
#' @param XssMatchSetId The `XssMatchSetId` of the XssMatchSet that you want to delete. `XssMatchSetId` is returned by CreateXssMatchSet and by ListXssMatchSets.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#' # The following example deletes an XSS match set with the ID
#' # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
#' delete_xss_match_set(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   XssMatchSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
#' )
#'
#' @export
delete_xss_match_set <- function (XssMatchSetId, ChangeToken) 
{
    op <- Operation(name = "DeleteXssMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_xss_match_set_input(XssMatchSetId = XssMatchSetId, 
        ChangeToken = ChangeToken)
    output <- delete_xss_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes a web ACL from the specified resource
#'
#' Removes a web ACL from the specified resource.
#'
#' @param ResourceArn The ARN (Amazon Resource Name) of the resource from which the web ACL is being removed.
#'
#' @examples
#'
#' @export
disassociate_web_acl <- function (ResourceArn) 
{
    op <- Operation(name = "DisassociateWebACL", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disassociate_web_acl_input(ResourceArn = ResourceArn)
    output <- disassociate_web_acl_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the ByteMatchSet specified by `ByteMatchSetId`
#'
#' Returns the ByteMatchSet specified by `ByteMatchSetId`.
#'
#' @param ByteMatchSetId The `ByteMatchSetId` of the ByteMatchSet that you want to get. `ByteMatchSetId` is returned by CreateByteMatchSet and by ListByteMatchSets.
#'
#' @examples
#' # The following example returns the details of a byte match set with the
#' # ID exampleIDs3t-46da-4fdb-b8d5-abc321j569j5.
#' get_byte_match_set(
#'   ByteMatchSetId = "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5"
#' )
#'
#' @export
get_byte_match_set <- function (ByteMatchSetId) 
{
    op <- Operation(name = "GetByteMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_byte_match_set_input(ByteMatchSetId = ByteMatchSetId)
    output <- get_byte_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' When you want to create, update, or delete AWS WAF objects, get a change token and include the change token in the create, update, or delete request
#'
#' When you want to create, update, or delete AWS WAF objects, get a change token and include the change token in the create, update, or delete request. Change tokens ensure that your application doesn\'t submit conflicting requests to AWS WAF.
#' 
#' Each create, update, or delete request must use a unique change token. If your application submits a `GetChangeToken` request and then submits a second `GetChangeToken` request before submitting a create, update, or delete request, the second `GetChangeToken` request returns the same value as the first `GetChangeToken` request.
#' 
#' When you use a change token in a create, update, or delete request, the status of the change token changes to `PENDING`, which indicates that AWS WAF is propagating the change to all AWS WAF servers. Use `GetChangeTokenStatus` to determine the status of your change token.
#'
#' @examples
#' # The following example returns a change token to use for a create, update
#' # or delete operation.
#' get_change_token()
#'
#' @export
get_change_token <- function () 
{
    op <- Operation(name = "GetChangeToken", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_change_token_input()
    output <- get_change_token_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the status of a `ChangeToken` that you got by calling GetChangeToken
#'
#' Returns the status of a `ChangeToken` that you got by calling GetChangeToken. `ChangeTokenStatus` is one of the following values:
#' 
#' -   `PROVISIONED`: You requested the change token by calling `GetChangeToken`, but you haven\'t used it yet in a call to create, update, or delete an AWS WAF object.
#' 
#' -   `PENDING`: AWS WAF is propagating the create, update, or delete request to all AWS WAF servers.
#' 
#' -   `IN_SYNC`: Propagation is complete.
#'
#' @param ChangeToken The change token for which you want to get the status. This change token was previously returned in the `GetChangeToken` response.
#'
#' @examples
#' # The following example returns the status of a change token with the ID
#' # abcd12f2-46da-4fdb-b8d5-fbd4c466928f.
#' get_change_token_status(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
#' )
#'
#' @export
get_change_token_status <- function (ChangeToken) 
{
    op <- Operation(name = "GetChangeTokenStatus", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_change_token_status_input(ChangeToken = ChangeToken)
    output <- get_change_token_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the GeoMatchSet that is specified by `GeoMatchSetId`
#'
#' Returns the GeoMatchSet that is specified by `GeoMatchSetId`.
#'
#' @param GeoMatchSetId The `GeoMatchSetId` of the GeoMatchSet that you want to get. `GeoMatchSetId` is returned by CreateGeoMatchSet and by ListGeoMatchSets.
#'
#' @examples
#'
#' @export
get_geo_match_set <- function (GeoMatchSetId) 
{
    op <- Operation(name = "GetGeoMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_geo_match_set_input(GeoMatchSetId = GeoMatchSetId)
    output <- get_geo_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the IPSet that is specified by `IPSetId`
#'
#' Returns the IPSet that is specified by `IPSetId`.
#'
#' @param IPSetId The `IPSetId` of the IPSet that you want to get. `IPSetId` is returned by CreateIPSet and by ListIPSets.
#'
#' @examples
#' # The following example returns the details of an IP match set with the ID
#' # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
#' get_ip_set(
#'   IPSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
#' )
#'
#' @export
get_ip_set <- function (IPSetId) 
{
    op <- Operation(name = "GetIPSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_ip_set_input(IPSetId = IPSetId)
    output <- get_ip_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the LoggingConfiguration for the specified web ACL
#'
#' Returns the LoggingConfiguration for the specified web ACL.
#'
#' @param ResourceArn The Amazon Resource Name (ARN) of the web ACL for which you want to get the LoggingConfiguration.
#'
#' @examples
#'
#' @export
get_logging_configuration <- function (ResourceArn) 
{
    op <- Operation(name = "GetLoggingConfiguration", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_logging_configuration_input(ResourceArn = ResourceArn)
    output <- get_logging_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the IAM policy attached to the RuleGroup
#'
#' Returns the IAM policy attached to the RuleGroup.
#'
#' @param ResourceArn The Amazon Resource Name (ARN) of the RuleGroup for which you want to get the policy.
#'
#' @examples
#'
#' @export
get_permission_policy <- function (ResourceArn) 
{
    op <- Operation(name = "GetPermissionPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_permission_policy_input(ResourceArn = ResourceArn)
    output <- get_permission_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the RateBasedRule that is specified by the `RuleId` that you included in the `GetRateBasedRule` request
#'
#' Returns the RateBasedRule that is specified by the `RuleId` that you included in the `GetRateBasedRule` request.
#'
#' @param RuleId The `RuleId` of the RateBasedRule that you want to get. `RuleId` is returned by CreateRateBasedRule and by ListRateBasedRules.
#'
#' @examples
#'
#' @export
get_rate_based_rule <- function (RuleId) 
{
    op <- Operation(name = "GetRateBasedRule", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_rate_based_rule_input(RuleId = RuleId)
    output <- get_rate_based_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of IP addresses currently being blocked by the RateBasedRule that is specified by the `RuleId`
#'
#' Returns an array of IP addresses currently being blocked by the RateBasedRule that is specified by the `RuleId`. The maximum number of managed keys that will be blocked is 10,000. If more than 10,000 addresses exceed the rate limit, the 10,000 addresses with the highest rates will be blocked.
#'
#' @param RuleId The `RuleId` of the RateBasedRule for which you want to get a list of `ManagedKeys`. `RuleId` is returned by CreateRateBasedRule and by ListRateBasedRules.
#' @param NextMarker A null value and not currently used. Do not include this in your request.
#'
#' @examples
#'
#' @export
get_rate_based_rule_managed_keys <- function (RuleId, NextMarker = NULL) 
{
    op <- Operation(name = "GetRateBasedRuleManagedKeys", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_rate_based_rule_managed_keys_input(RuleId = RuleId, 
        NextMarker = NextMarker)
    output <- get_rate_based_rule_managed_keys_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the RegexMatchSet specified by `RegexMatchSetId`
#'
#' Returns the RegexMatchSet specified by `RegexMatchSetId`.
#'
#' @param RegexMatchSetId The `RegexMatchSetId` of the RegexMatchSet that you want to get. `RegexMatchSetId` is returned by CreateRegexMatchSet and by ListRegexMatchSets.
#'
#' @examples
#'
#' @export
get_regex_match_set <- function (RegexMatchSetId) 
{
    op <- Operation(name = "GetRegexMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_regex_match_set_input(RegexMatchSetId = RegexMatchSetId)
    output <- get_regex_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the RegexPatternSet specified by `RegexPatternSetId`
#'
#' Returns the RegexPatternSet specified by `RegexPatternSetId`.
#'
#' @param RegexPatternSetId The `RegexPatternSetId` of the RegexPatternSet that you want to get. `RegexPatternSetId` is returned by CreateRegexPatternSet and by ListRegexPatternSets.
#'
#' @examples
#'
#' @export
get_regex_pattern_set <- function (RegexPatternSetId) 
{
    op <- Operation(name = "GetRegexPatternSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_regex_pattern_set_input(RegexPatternSetId = RegexPatternSetId)
    output <- get_regex_pattern_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the Rule that is specified by the `RuleId` that you included in the `GetRule` request
#'
#' Returns the Rule that is specified by the `RuleId` that you included in the `GetRule` request.
#'
#' @param RuleId The `RuleId` of the Rule that you want to get. `RuleId` is returned by CreateRule and by ListRules.
#'
#' @examples
#' # The following example returns the details of a rule with the ID
#' # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
#' get_rule(
#'   RuleId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
#' )
#'
#' @export
get_rule <- function (RuleId) 
{
    op <- Operation(name = "GetRule", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- get_rule_input(RuleId = RuleId)
    output <- get_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the RuleGroup that is specified by the `RuleGroupId` that you included in the `GetRuleGroup` request
#'
#' Returns the RuleGroup that is specified by the `RuleGroupId` that you included in the `GetRuleGroup` request.
#' 
#' To view the rules in a rule group, use ListActivatedRulesInRuleGroup.
#'
#' @param RuleGroupId The `RuleGroupId` of the RuleGroup that you want to get. `RuleGroupId` is returned by CreateRuleGroup and by ListRuleGroups.
#'
#' @examples
#'
#' @export
get_rule_group <- function (RuleGroupId) 
{
    op <- Operation(name = "GetRuleGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_rule_group_input(RuleGroupId = RuleGroupId)
    output <- get_rule_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets detailed information about a specified number of requests\--a sample\--that AWS WAF randomly selects from among the first 5,000 requests that your AWS resource received during a time range that you choose
#'
#' Gets detailed information about a specified number of requests\--a sample\--that AWS WAF randomly selects from among the first 5,000 requests that your AWS resource received during a time range that you choose. You can specify a sample size of up to 500 requests, and you can specify any time range in the previous three hours.
#' 
#' `GetSampledRequests` returns a time range, which is usually the time range that you specified. However, if your resource (such as a CloudFront distribution) received 5,000 requests before the specified time range elapsed, `GetSampledRequests` returns an updated time range. This new time range indicates the actual period during which AWS WAF selected the requests in the sample.
#'
#' @param WebAclId The `WebACLId` of the `WebACL` for which you want `GetSampledRequests` to return a sample of requests.
#' @param RuleId `RuleId` is one of three values:
#' 
#' -   The `RuleId` of the `Rule` or the `RuleGroupId` of the `RuleGroup` for which you want `GetSampledRequests` to return a sample of requests.
#' 
#' -   `Default_Action`, which causes `GetSampledRequests` to return a sample of the requests that didn\'t match any of the rules in the specified `WebACL`.
#' @param TimeWindow The start date and time and the end date and time of the range for which you want `GetSampledRequests` to return a sample of requests. Specify the date and time in the following format: `"2016-09-27T14:50Z"`. You can specify any time range in the previous three hours.
#' @param MaxItems The number of requests that you want AWS WAF to return from among the first 5,000 requests that your AWS resource received during the time range. If your resource received fewer requests than the value of `MaxItems`, `GetSampledRequests` returns information about all of them.
#'
#' @examples
#' # The following example returns detailed information about 100 requests
#' # --a sample-- that AWS WAF randomly selects from among the first 5,000
#' # requests that your AWS resource received between the time period
#' # 2016-09-27T15:50Z to 2016-09-27T15:50Z.
#' get_sampled_requests(
#'   MaxItems = 100L,
#'   RuleId = "WAFRule-1-Example",
#'   TimeWindow = list(
#'     EndTime = "2016-09-27T15:50Z",
#'     StartTime = "2016-09-27T15:50Z"
#'   ),
#'   WebAclId = "createwebacl-1472061481310"
#' )
#'
#' @export
get_sampled_requests <- function (WebAclId, RuleId, TimeWindow, 
    MaxItems) 
{
    op <- Operation(name = "GetSampledRequests", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_sampled_requests_input(WebAclId = WebAclId, 
        RuleId = RuleId, TimeWindow = TimeWindow, MaxItems = MaxItems)
    output <- get_sampled_requests_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the SizeConstraintSet specified by `SizeConstraintSetId`
#'
#' Returns the SizeConstraintSet specified by `SizeConstraintSetId`.
#'
#' @param SizeConstraintSetId The `SizeConstraintSetId` of the SizeConstraintSet that you want to get. `SizeConstraintSetId` is returned by CreateSizeConstraintSet and by ListSizeConstraintSets.
#'
#' @examples
#' # The following example returns the details of a size constraint match set
#' # with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
#' get_size_constraint_set(
#'   SizeConstraintSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
#' )
#'
#' @export
get_size_constraint_set <- function (SizeConstraintSetId) 
{
    op <- Operation(name = "GetSizeConstraintSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_size_constraint_set_input(SizeConstraintSetId = SizeConstraintSetId)
    output <- get_size_constraint_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the SqlInjectionMatchSet that is specified by `SqlInjectionMatchSetId`
#'
#' Returns the SqlInjectionMatchSet that is specified by `SqlInjectionMatchSetId`.
#'
#' @param SqlInjectionMatchSetId The `SqlInjectionMatchSetId` of the SqlInjectionMatchSet that you want to get. `SqlInjectionMatchSetId` is returned by CreateSqlInjectionMatchSet and by ListSqlInjectionMatchSets.
#'
#' @examples
#' # The following example returns the details of a SQL injection match set
#' # with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
#' get_sql_injection_match_set(
#'   SqlInjectionMatchSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
#' )
#'
#' @export
get_sql_injection_match_set <- function (SqlInjectionMatchSetId) 
{
    op <- Operation(name = "GetSqlInjectionMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_sql_injection_match_set_input(SqlInjectionMatchSetId = SqlInjectionMatchSetId)
    output <- get_sql_injection_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the WebACL that is specified by `WebACLId`
#'
#' Returns the WebACL that is specified by `WebACLId`.
#'
#' @param WebACLId The `WebACLId` of the WebACL that you want to get. `WebACLId` is returned by CreateWebACL and by ListWebACLs.
#'
#' @examples
#' # The following example returns the details of a web ACL with the ID
#' # createwebacl-1472061481310.
#' get_web_acl(
#'   WebACLId = "createwebacl-1472061481310"
#' )
#'
#' @export
get_web_acl <- function (WebACLId) 
{
    op <- Operation(name = "GetWebACL", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_web_acl_input(WebACLId = WebACLId)
    output <- get_web_acl_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the web ACL for the specified resource
#'
#' Returns the web ACL for the specified resource.
#'
#' @param ResourceArn The ARN (Amazon Resource Name) of the resource for which to get the web ACL.
#'
#' @examples
#'
#' @export
get_web_acl_for_resource <- function (ResourceArn) 
{
    op <- Operation(name = "GetWebACLForResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_web_acl_for_resource_input(ResourceArn = ResourceArn)
    output <- get_web_acl_for_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the XssMatchSet that is specified by `XssMatchSetId`
#'
#' Returns the XssMatchSet that is specified by `XssMatchSetId`.
#'
#' @param XssMatchSetId The `XssMatchSetId` of the XssMatchSet that you want to get. `XssMatchSetId` is returned by CreateXssMatchSet and by ListXssMatchSets.
#'
#' @examples
#' # The following example returns the details of an XSS match set with the
#' # ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
#' get_xss_match_set(
#'   XssMatchSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
#' )
#'
#' @export
get_xss_match_set <- function (XssMatchSetId) 
{
    op <- Operation(name = "GetXssMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_xss_match_set_input(XssMatchSetId = XssMatchSetId)
    output <- get_xss_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of ActivatedRule objects
#'
#' Returns an array of ActivatedRule objects.
#'
#' @param RuleGroupId The `RuleGroupId` of the RuleGroup for which you want to get a list of ActivatedRule objects.
#' @param NextMarker If you specify a value for `Limit` and you have more `ActivatedRules` than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `ActivatedRules`. For the second and subsequent `ListActivatedRulesInRuleGroup` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `ActivatedRules`.
#' @param Limit Specifies the number of `ActivatedRules` that you want AWS WAF to return for this request. If you have more `ActivatedRules` than the number that you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `ActivatedRules`.
#'
#' @examples
#'
#' @export
list_activated_rules_in_rule_group <- function (RuleGroupId = NULL, 
    NextMarker = NULL, Limit = NULL) 
{
    op <- Operation(name = "ListActivatedRulesInRuleGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_activated_rules_in_rule_group_input(RuleGroupId = RuleGroupId, 
        NextMarker = NextMarker, Limit = Limit)
    output <- list_activated_rules_in_rule_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of ByteMatchSetSummary objects
#'
#' Returns an array of ByteMatchSetSummary objects.
#'
#' @param NextMarker If you specify a value for `Limit` and you have more `ByteMatchSets` than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `ByteMatchSets`. For the second and subsequent `ListByteMatchSets` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `ByteMatchSets`.
#' @param Limit Specifies the number of `ByteMatchSet` objects that you want AWS WAF to return for this request. If you have more `ByteMatchSets` objects than the number you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `ByteMatchSet` objects.
#'
#' @examples
#'
#' @export
list_byte_match_sets <- function (NextMarker = NULL, Limit = NULL) 
{
    op <- Operation(name = "ListByteMatchSets", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_byte_match_sets_input(NextMarker = NextMarker, 
        Limit = Limit)
    output <- list_byte_match_sets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of GeoMatchSetSummary objects in the response
#'
#' Returns an array of GeoMatchSetSummary objects in the response.
#'
#' @param NextMarker If you specify a value for `Limit` and you have more `GeoMatchSet`s than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `GeoMatchSet` objects. For the second and subsequent `ListGeoMatchSets` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `GeoMatchSet` objects.
#' @param Limit Specifies the number of `GeoMatchSet` objects that you want AWS WAF to return for this request. If you have more `GeoMatchSet` objects than the number you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `GeoMatchSet` objects.
#'
#' @examples
#'
#' @export
list_geo_match_sets <- function (NextMarker = NULL, Limit = NULL) 
{
    op <- Operation(name = "ListGeoMatchSets", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_geo_match_sets_input(NextMarker = NextMarker, 
        Limit = Limit)
    output <- list_geo_match_sets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of IPSetSummary objects in the response
#'
#' Returns an array of IPSetSummary objects in the response.
#'
#' @param NextMarker If you specify a value for `Limit` and you have more `IPSets` than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `IPSets`. For the second and subsequent `ListIPSets` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `IPSets`.
#' @param Limit Specifies the number of `IPSet` objects that you want AWS WAF to return for this request. If you have more `IPSet` objects than the number you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `IPSet` objects.
#'
#' @examples
#' # The following example returns an array of up to 100 IP match sets.
#' list_ip_sets(
#'   Limit = 100L
#' )
#'
#' @export
list_ip_sets <- function (NextMarker = NULL, Limit = NULL) 
{
    op <- Operation(name = "ListIPSets", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_ip_sets_input(NextMarker = NextMarker, Limit = Limit)
    output <- list_ip_sets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of LoggingConfiguration objects
#'
#' Returns an array of LoggingConfiguration objects.
#'
#' @param NextMarker If you specify a value for `Limit` and you have more `LoggingConfigurations` than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `LoggingConfigurations`. For the second and subsequent `ListLoggingConfigurations` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `ListLoggingConfigurations`.
#' @param Limit Specifies the number of `LoggingConfigurations` that you want AWS WAF to return for this request. If you have more `LoggingConfigurations` than the number that you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `LoggingConfigurations`.
#'
#' @examples
#'
#' @export
list_logging_configurations <- function (NextMarker = NULL, Limit = NULL) 
{
    op <- Operation(name = "ListLoggingConfigurations", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_logging_configurations_input(NextMarker = NextMarker, 
        Limit = Limit)
    output <- list_logging_configurations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of RuleSummary objects
#'
#' Returns an array of RuleSummary objects.
#'
#' @param NextMarker If you specify a value for `Limit` and you have more `Rules` than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `Rules`. For the second and subsequent `ListRateBasedRules` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `Rules`.
#' @param Limit Specifies the number of `Rules` that you want AWS WAF to return for this request. If you have more `Rules` than the number that you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `Rules`.
#'
#' @examples
#'
#' @export
list_rate_based_rules <- function (NextMarker = NULL, Limit = NULL) 
{
    op <- Operation(name = "ListRateBasedRules", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_rate_based_rules_input(NextMarker = NextMarker, 
        Limit = Limit)
    output <- list_rate_based_rules_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of RegexMatchSetSummary objects
#'
#' Returns an array of RegexMatchSetSummary objects.
#'
#' @param NextMarker If you specify a value for `Limit` and you have more `RegexMatchSet` objects than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `ByteMatchSets`. For the second and subsequent `ListRegexMatchSets` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `RegexMatchSet` objects.
#' @param Limit Specifies the number of `RegexMatchSet` objects that you want AWS WAF to return for this request. If you have more `RegexMatchSet` objects than the number you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `RegexMatchSet` objects.
#'
#' @examples
#'
#' @export
list_regex_match_sets <- function (NextMarker = NULL, Limit = NULL) 
{
    op <- Operation(name = "ListRegexMatchSets", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_regex_match_sets_input(NextMarker = NextMarker, 
        Limit = Limit)
    output <- list_regex_match_sets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of RegexPatternSetSummary objects
#'
#' Returns an array of RegexPatternSetSummary objects.
#'
#' @param NextMarker If you specify a value for `Limit` and you have more `RegexPatternSet` objects than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `RegexPatternSet` objects. For the second and subsequent `ListRegexPatternSets` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `RegexPatternSet` objects.
#' @param Limit Specifies the number of `RegexPatternSet` objects that you want AWS WAF to return for this request. If you have more `RegexPatternSet` objects than the number you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `RegexPatternSet` objects.
#'
#' @examples
#'
#' @export
list_regex_pattern_sets <- function (NextMarker = NULL, Limit = NULL) 
{
    op <- Operation(name = "ListRegexPatternSets", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_regex_pattern_sets_input(NextMarker = NextMarker, 
        Limit = Limit)
    output <- list_regex_pattern_sets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of resources associated with the specified web ACL
#'
#' Returns an array of resources associated with the specified web ACL.
#'
#' @param WebACLId The unique identifier (ID) of the web ACL for which to list the associated resources.
#'
#' @examples
#'
#' @export
list_resources_for_web_acl <- function (WebACLId) 
{
    op <- Operation(name = "ListResourcesForWebACL", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_resources_for_web_acl_input(WebACLId = WebACLId)
    output <- list_resources_for_web_acl_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of RuleGroup objects
#'
#' Returns an array of RuleGroup objects.
#'
#' @param NextMarker If you specify a value for `Limit` and you have more `RuleGroups` than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `RuleGroups`. For the second and subsequent `ListRuleGroups` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `RuleGroups`.
#' @param Limit Specifies the number of `RuleGroups` that you want AWS WAF to return for this request. If you have more `RuleGroups` than the number that you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `RuleGroups`.
#'
#' @examples
#'
#' @export
list_rule_groups <- function (NextMarker = NULL, Limit = NULL) 
{
    op <- Operation(name = "ListRuleGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_rule_groups_input(NextMarker = NextMarker, 
        Limit = Limit)
    output <- list_rule_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of RuleSummary objects
#'
#' Returns an array of RuleSummary objects.
#'
#' @param NextMarker If you specify a value for `Limit` and you have more `Rules` than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `Rules`. For the second and subsequent `ListRules` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `Rules`.
#' @param Limit Specifies the number of `Rules` that you want AWS WAF to return for this request. If you have more `Rules` than the number that you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `Rules`.
#'
#' @examples
#' # The following example returns an array of up to 100 rules.
#' list_rules(
#'   Limit = 100L
#' )
#'
#' @export
list_rules <- function (NextMarker = NULL, Limit = NULL) 
{
    op <- Operation(name = "ListRules", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_rules_input(NextMarker = NextMarker, Limit = Limit)
    output <- list_rules_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of SizeConstraintSetSummary objects
#'
#' Returns an array of SizeConstraintSetSummary objects.
#'
#' @param NextMarker If you specify a value for `Limit` and you have more `SizeConstraintSets` than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `SizeConstraintSets`. For the second and subsequent `ListSizeConstraintSets` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `SizeConstraintSets`.
#' @param Limit Specifies the number of `SizeConstraintSet` objects that you want AWS WAF to return for this request. If you have more `SizeConstraintSets` objects than the number you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `SizeConstraintSet` objects.
#'
#' @examples
#' # The following example returns an array of up to 100 size contraint match
#' # sets.
#' list_size_constraint_sets(
#'   Limit = 100L
#' )
#'
#' @export
list_size_constraint_sets <- function (NextMarker = NULL, Limit = NULL) 
{
    op <- Operation(name = "ListSizeConstraintSets", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_size_constraint_sets_input(NextMarker = NextMarker, 
        Limit = Limit)
    output <- list_size_constraint_sets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of SqlInjectionMatchSet objects
#'
#' Returns an array of SqlInjectionMatchSet objects.
#'
#' @param NextMarker If you specify a value for `Limit` and you have more SqlInjectionMatchSet objects than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `SqlInjectionMatchSets`. For the second and subsequent `ListSqlInjectionMatchSets` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `SqlInjectionMatchSets`.
#' @param Limit Specifies the number of SqlInjectionMatchSet objects that you want AWS WAF to return for this request. If you have more `SqlInjectionMatchSet` objects than the number you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `Rules`.
#'
#' @examples
#' # The following example returns an array of up to 100 SQL injection match
#' # sets.
#' list_sql_injection_match_sets(
#'   Limit = 100L
#' )
#'
#' @export
list_sql_injection_match_sets <- function (NextMarker = NULL, 
    Limit = NULL) 
{
    op <- Operation(name = "ListSqlInjectionMatchSets", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_sql_injection_match_sets_input(NextMarker = NextMarker, 
        Limit = Limit)
    output <- list_sql_injection_match_sets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of RuleGroup objects that you are subscribed to
#'
#' Returns an array of RuleGroup objects that you are subscribed to.
#'
#' @param NextMarker If you specify a value for `Limit` and you have more `ByteMatchSets`subscribed rule groups than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of subscribed rule groups. For the second and subsequent `ListSubscribedRuleGroupsRequest` requests, specify the value of `NextMarker` from the previous response to get information about another batch of subscribed rule groups.
#' @param Limit Specifies the number of subscribed rule groups that you want AWS WAF to return for this request. If you have more objects than the number you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of objects.
#'
#' @examples
#'
#' @export
list_subscribed_rule_groups <- function (NextMarker = NULL, Limit = NULL) 
{
    op <- Operation(name = "ListSubscribedRuleGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_subscribed_rule_groups_input(NextMarker = NextMarker, 
        Limit = Limit)
    output <- list_subscribed_rule_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of WebACLSummary objects in the response
#'
#' Returns an array of WebACLSummary objects in the response.
#'
#' @param NextMarker If you specify a value for `Limit` and you have more `WebACL` objects than the number that you specify for `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `WebACL` objects. For the second and subsequent `ListWebACLs` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `WebACL` objects.
#' @param Limit Specifies the number of `WebACL` objects that you want AWS WAF to return for this request. If you have more `WebACL` objects than the number that you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `WebACL` objects.
#'
#' @examples
#' # The following example returns an array of up to 100 web ACLs.
#' list_web_ac_ls(
#'   Limit = 100L
#' )
#'
#' @export
list_web_ac_ls <- function (NextMarker = NULL, Limit = NULL) 
{
    op <- Operation(name = "ListWebACLs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_web_ac_ls_input(NextMarker = NextMarker, Limit = Limit)
    output <- list_web_ac_ls_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of XssMatchSet objects
#'
#' Returns an array of XssMatchSet objects.
#'
#' @param NextMarker If you specify a value for `Limit` and you have more XssMatchSet objects than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `XssMatchSets`. For the second and subsequent `ListXssMatchSets` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `XssMatchSets`.
#' @param Limit Specifies the number of XssMatchSet objects that you want AWS WAF to return for this request. If you have more `XssMatchSet` objects than the number you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `Rules`.
#'
#' @examples
#' # The following example returns an array of up to 100 XSS match sets.
#' list_xss_match_sets(
#'   Limit = 100L
#' )
#'
#' @export
list_xss_match_sets <- function (NextMarker = NULL, Limit = NULL) 
{
    op <- Operation(name = "ListXssMatchSets", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_xss_match_sets_input(NextMarker = NextMarker, 
        Limit = Limit)
    output <- list_xss_match_sets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates a LoggingConfiguration with a specified web ACL
#'
#' Associates a LoggingConfiguration with a specified web ACL.
#' 
#' You can access information about all traffic that AWS WAF inspects using the following steps:
#' 
#' 1.  Create an Amazon Kinesis Data Firehose delivery stream. For more information, see [Creating an Amazon Kinesis Data Firehose Delivery Stream](https://docs.aws.amazon.com/firehose/latest/dev/what-is-this-service.html).
#' 
#' 2.  Associate that delivery stream to your web ACL using a `PutLoggingConfiguration` request.
#' 
#' When you successfully enable logging using a `PutLoggingConfiguration` request, AWS WAF will create a service linked role with the necessary permissions to write logs to the Amazon Kinesis Data Firehose delivery stream. For more information, see [Logging Web ACL Traffic Information](http://docs.aws.amazon.com/waf/latest/developerguide/logging.html) in the *AWS WAF Developer Guide*.
#'
#' @param LoggingConfiguration The Amazon Kinesis Data Firehose delivery streams that contains the inspected traffic information, the redacted fields details, and the Amazon Resource Name (ARN) of the web ACL to monitor.
#'
#' @examples
#'
#' @export
put_logging_configuration <- function (LoggingConfiguration) 
{
    op <- Operation(name = "PutLoggingConfiguration", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_logging_configuration_input(LoggingConfiguration = LoggingConfiguration)
    output <- put_logging_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Attaches a IAM policy to the specified resource
#'
#' Attaches a IAM policy to the specified resource. The only supported use for this action is to share a RuleGroup across accounts.
#' 
#' The `PutPermissionPolicy` is subject to the following restrictions:
#' 
#' -   You can attach only one policy with each `PutPermissionPolicy` request.
#' 
#' -   The policy must include an `Effect`, `Action` and `Principal`.
#' 
#' -   `Effect` must specify `Allow`.
#' 
#' -   The `Action` in the policy must be `waf:UpdateWebACL`, `waf-regional:UpdateWebACL`, `waf:GetRuleGroup` and `waf-regional:GetRuleGroup` . Any extra or wildcard actions in the policy will be rejected.
#' 
#' -   The policy cannot include a `Resource` parameter.
#' 
#' -   The ARN in the request must be a valid WAF RuleGroup ARN and the RuleGroup must exist in the same region.
#' 
#' -   The user making the request must be the owner of the RuleGroup.
#' 
#' -   Your policy must be composed using IAM Policy version 2012-10-17.
#' 
#' For more information, see [IAM Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html).
#' 
#' An example of a valid policy parameter is shown in the Examples section below.
#'
#' @param ResourceArn The Amazon Resource Name (ARN) of the RuleGroup to which you want to attach the policy.
#' @param Policy The policy to attach to the specified RuleGroup.
#'
#' @examples
#'
#' @export
put_permission_policy <- function (ResourceArn, Policy) 
{
    op <- Operation(name = "PutPermissionPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_permission_policy_input(ResourceArn = ResourceArn, 
        Policy = Policy)
    output <- put_permission_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Inserts or deletes ByteMatchTuple objects (filters) in a ByteMatchSet
#'
#' Inserts or deletes ByteMatchTuple objects (filters) in a ByteMatchSet. For each `ByteMatchTuple` object, you specify the following values:
#' 
#' -   Whether to insert or delete the object from the array. If you want to change a `ByteMatchSetUpdate` object, you delete the existing object and add a new one.
#' 
#' -   The part of a web request that you want AWS WAF to inspect, such as a query string or the value of the `User-Agent` header.
#' 
#' -   The bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to look for. For more information, including how you specify the values for the AWS WAF API and the AWS CLI or SDKs, see `TargetString` in the ByteMatchTuple data type.
#' 
#' -   Where to look, such as at the beginning or the end of a query string.
#' 
#' -   Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.
#' 
#' For example, you can add a `ByteMatchSetUpdate` object that matches web requests in which `User-Agent` headers contain the string `BadBot`. You can then configure AWS WAF to block those requests.
#' 
#' To create and configure a `ByteMatchSet`, perform the following steps:
#' 
#' 1.  Create a `ByteMatchSet.` For more information, see CreateByteMatchSet.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of an `UpdateByteMatchSet` request.
#' 
#' 3.  Submit an `UpdateByteMatchSet` request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param ByteMatchSetId The `ByteMatchSetId` of the ByteMatchSet that you want to update. `ByteMatchSetId` is returned by CreateByteMatchSet and by ListByteMatchSets.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#' @param Updates An array of `ByteMatchSetUpdate` objects that you want to insert into or delete from a ByteMatchSet. For more information, see the applicable data types:
#' 
#' -   ByteMatchSetUpdate: Contains `Action` and `ByteMatchTuple`
#' 
#' -   ByteMatchTuple: Contains `FieldToMatch`, `PositionalConstraint`, `TargetString`, and `TextTransformation`
#' 
#' -   FieldToMatch: Contains `Data` and `Type`
#'
#' @examples
#' # The following example deletes a ByteMatchTuple object (filters) in an
#' # byte match set with the ID exampleIDs3t-46da-4fdb-b8d5-abc321j569j5.
#' update_byte_match_set(
#'   ByteMatchSetId = "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5",
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   Updates = list(
#'     list(
#'       Action = "DELETE",
#'       ByteMatchTuple = list(
#'         FieldToMatch = list(
#'           Data = "referer",
#'           Type = "HEADER"
#'         ),
#'         PositionalConstraint = "CONTAINS",
#'         TargetString = "badrefer1",
#'         TextTransformation = "NONE"
#'       )
#'     )
#'   )
#' )
#'
#' @export
update_byte_match_set <- function (ByteMatchSetId, ChangeToken, 
    Updates) 
{
    op <- Operation(name = "UpdateByteMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_byte_match_set_input(ByteMatchSetId = ByteMatchSetId, 
        ChangeToken = ChangeToken, Updates = Updates)
    output <- update_byte_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Inserts or deletes GeoMatchConstraint objects in an `GeoMatchSet`
#'
#' Inserts or deletes GeoMatchConstraint objects in an `GeoMatchSet`. For each `GeoMatchConstraint` object, you specify the following values:
#' 
#' -   Whether to insert or delete the object from the array. If you want to change an `GeoMatchConstraint` object, you delete the existing object and add a new one.
#' 
#' -   The `Type`. The only valid value for `Type` is `Country`.
#' 
#' -   The `Value`, which is a two character code for the country to add to the `GeoMatchConstraint` object. Valid codes are listed in GeoMatchConstraint\$Value.
#' 
#' To create and configure an `GeoMatchSet`, perform the following steps:
#' 
#' 1.  Submit a CreateGeoMatchSet request.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of an UpdateGeoMatchSet request.
#' 
#' 3.  Submit an `UpdateGeoMatchSet` request to specify the country that you want AWS WAF to watch for.
#' 
#' When you update an `GeoMatchSet`, you specify the country that you want to add and/or the country that you want to delete. If you want to change a country, you delete the existing country and add the new one.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param GeoMatchSetId The `GeoMatchSetId` of the GeoMatchSet that you want to update. `GeoMatchSetId` is returned by CreateGeoMatchSet and by ListGeoMatchSets.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#' @param Updates An array of `GeoMatchSetUpdate` objects that you want to insert into or delete from an GeoMatchSet. For more information, see the applicable data types:
#' 
#' -   GeoMatchSetUpdate: Contains `Action` and `GeoMatchConstraint`
#' 
#' -   GeoMatchConstraint: Contains `Type` and `Value`
#' 
#'     You can have only one `Type` and `Value` per `GeoMatchConstraint`. To add multiple countries, include multiple `GeoMatchSetUpdate` objects in your request.
#'
#' @examples
#'
#' @export
update_geo_match_set <- function (GeoMatchSetId, ChangeToken, 
    Updates) 
{
    op <- Operation(name = "UpdateGeoMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_geo_match_set_input(GeoMatchSetId = GeoMatchSetId, 
        ChangeToken = ChangeToken, Updates = Updates)
    output <- update_geo_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Inserts or deletes IPSetDescriptor objects in an `IPSet`
#'
#' Inserts or deletes IPSetDescriptor objects in an `IPSet`. For each `IPSetDescriptor` object, you specify the following values:
#' 
#' -   Whether to insert or delete the object from the array. If you want to change an `IPSetDescriptor` object, you delete the existing object and add a new one.
#' 
#' -   The IP address version, `IPv4` or `IPv6`.
#' 
#' -   The IP address in CIDR notation, for example, `192.0.2.0/24` (for the range of IP addresses from `192.0.2.0` to `192.0.2.255`) or `192.0.2.44/32` (for the individual IP address `192.0.2.44`).
#' 
#' AWS WAF supports IPv4 address ranges: /8 and any range between /16 through /32. AWS WAF supports IPv6 address ranges: /16, /24, /32, /48, /56, /64, and /128. For more information about CIDR notation, see the Wikipedia entry [Classless Inter-Domain Routing](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).
#' 
#' IPv6 addresses can be represented using any of the following formats:
#' 
#' -   1111:0000:0000:0000:0000:0000:0000:0111/128
#' 
#' -   1111:0:0:0:0:0:0:0111/128
#' 
#' -   1111::0111/128
#' 
#' -   1111::111/128
#' 
#' You use an `IPSet` to specify which web requests you want to allow or block based on the IP addresses that the requests originated from. For example, if you\'re receiving a lot of requests from one or a small number of IP addresses and you want to block the requests, you can create an `IPSet` that specifies those IP addresses, and then configure AWS WAF to block the requests.
#' 
#' To create and configure an `IPSet`, perform the following steps:
#' 
#' 1.  Submit a CreateIPSet request.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of an UpdateIPSet request.
#' 
#' 3.  Submit an `UpdateIPSet` request to specify the IP addresses that you want AWS WAF to watch for.
#' 
#' When you update an `IPSet`, you specify the IP addresses that you want to add and/or the IP addresses that you want to delete. If you want to change an IP address, you delete the existing IP address and add the new one.
#' 
#' You can insert a maximum of 1000 addresses in a single request.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param IPSetId The `IPSetId` of the IPSet that you want to update. `IPSetId` is returned by CreateIPSet and by ListIPSets.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#' @param Updates An array of `IPSetUpdate` objects that you want to insert into or delete from an IPSet. For more information, see the applicable data types:
#' 
#' -   IPSetUpdate: Contains `Action` and `IPSetDescriptor`
#' 
#' -   IPSetDescriptor: Contains `Type` and `Value`
#' 
#' You can insert a maximum of 1000 addresses in a single request.
#'
#' @examples
#' # The following example deletes an IPSetDescriptor object in an IP match
#' # set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
#' update_ip_set(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   IPSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
#'   Updates = list(
#'     list(
#'       Action = "DELETE",
#'       IPSetDescriptor = list(
#'         Type = "IPV4",
#'         Value = "192.0.2.44/32"
#'       )
#'     )
#'   )
#' )
#'
#' @export
update_ip_set <- function (IPSetId, ChangeToken, Updates) 
{
    op <- Operation(name = "UpdateIPSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_ip_set_input(IPSetId = IPSetId, ChangeToken = ChangeToken, 
        Updates = Updates)
    output <- update_ip_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Inserts or deletes Predicate objects in a rule and updates the `RateLimit` in the rule
#'
#' Inserts or deletes Predicate objects in a rule and updates the `RateLimit` in the rule.
#' 
#' Each `Predicate` object identifies a predicate, such as a ByteMatchSet or an IPSet, that specifies the web requests that you want to block or count. The `RateLimit` specifies the number of requests every five minutes that triggers the rule.
#' 
#' If you add more than one predicate to a `RateBasedRule`, a request must match all the predicates and exceed the `RateLimit` to be counted or blocked. For example, suppose you add the following to a `RateBasedRule`:
#' 
#' -   An `IPSet` that matches the IP address `192.0.2.44/32`
#' 
#' -   A `ByteMatchSet` that matches `BadBot` in the `User-Agent` header
#' 
#' Further, you specify a `RateLimit` of 15,000.
#' 
#' You then add the `RateBasedRule` to a `WebACL` and specify that you want to block requests that satisfy the rule. For a request to be blocked, it must come from the IP address 192.0.2.44 *and* the `User-Agent` header in the request must contain the value `BadBot`. Further, requests that match these two conditions much be received at a rate of more than 15,000 every five minutes. If the rate drops below this limit, AWS WAF no longer blocks the requests.
#' 
#' As a second example, suppose you want to limit requests to a particular page on your site. To do this, you could add the following to a `RateBasedRule`:
#' 
#' -   A `ByteMatchSet` with `FieldToMatch` of `URI`
#' 
#' -   A `PositionalConstraint` of `STARTS_WITH`
#' 
#' -   A `TargetString` of `login`
#' 
#' Further, you specify a `RateLimit` of 15,000.
#' 
#' By adding this `RateBasedRule` to a `WebACL`, you could limit requests to your login page without affecting the rest of your site.
#'
#' @param RuleId The `RuleId` of the `RateBasedRule` that you want to update. `RuleId` is returned by `CreateRateBasedRule` and by ListRateBasedRules.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#' @param Updates An array of `RuleUpdate` objects that you want to insert into or delete from a RateBasedRule.
#' @param RateLimit The maximum number of requests, which have an identical value in the field specified by the `RateKey`, allowed in a five-minute period. If the number of requests exceeds the `RateLimit` and the other predicates specified in the rule are also met, AWS WAF triggers the action that is specified for this rule.
#'
#' @examples
#'
#' @export
update_rate_based_rule <- function (RuleId, ChangeToken, Updates, 
    RateLimit) 
{
    op <- Operation(name = "UpdateRateBasedRule", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_rate_based_rule_input(RuleId = RuleId, ChangeToken = ChangeToken, 
        Updates = Updates, RateLimit = RateLimit)
    output <- update_rate_based_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Inserts or deletes RegexMatchTuple objects (filters) in a RegexMatchSet
#'
#' Inserts or deletes RegexMatchTuple objects (filters) in a RegexMatchSet. For each `RegexMatchSetUpdate` object, you specify the following values:
#' 
#' -   Whether to insert or delete the object from the array. If you want to change a `RegexMatchSetUpdate` object, you delete the existing object and add a new one.
#' 
#' -   The part of a web request that you want AWS WAF to inspectupdate, such as a query string or the value of the `User-Agent` header.
#' 
#' -   The identifier of the pattern (a regular expression) that you want AWS WAF to look for. For more information, see RegexPatternSet.
#' 
#' -   Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.
#' 
#' For example, you can create a `RegexPatternSet` that matches any requests with `User-Agent` headers that contain the string `B[a@]dB[o0]t`. You can then configure AWS WAF to reject those requests.
#' 
#' To create and configure a `RegexMatchSet`, perform the following steps:
#' 
#' 1.  Create a `RegexMatchSet.` For more information, see CreateRegexMatchSet.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of an `UpdateRegexMatchSet` request.
#' 
#' 3.  Submit an `UpdateRegexMatchSet` request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the identifier of the `RegexPatternSet` that contain the regular expression patters you want AWS WAF to watch for.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param RegexMatchSetId The `RegexMatchSetId` of the RegexMatchSet that you want to update. `RegexMatchSetId` is returned by CreateRegexMatchSet and by ListRegexMatchSets.
#' @param Updates An array of `RegexMatchSetUpdate` objects that you want to insert into or delete from a RegexMatchSet. For more information, see RegexMatchTuple.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#'
#' @export
update_regex_match_set <- function (RegexMatchSetId, Updates, 
    ChangeToken) 
{
    op <- Operation(name = "UpdateRegexMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_regex_match_set_input(RegexMatchSetId = RegexMatchSetId, 
        Updates = Updates, ChangeToken = ChangeToken)
    output <- update_regex_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Inserts or deletes `RegexPatternString` objects in a RegexPatternSet
#'
#' Inserts or deletes `RegexPatternString` objects in a RegexPatternSet. For each `RegexPatternString` object, you specify the following values:
#' 
#' -   Whether to insert or delete the `RegexPatternString`.
#' 
#' -   The regular expression pattern that you want to insert or delete. For more information, see RegexPatternSet.
#' 
#' For example, you can create a `RegexPatternString` such as `B[a@]dB[o0]t`. AWS WAF will match this `RegexPatternString` to:
#' 
#' -   BadBot
#' 
#' -   BadB0t
#' 
#' -   B\@dBot
#' 
#' -   B\@dB0t
#' 
#' To create and configure a `RegexPatternSet`, perform the following steps:
#' 
#' 1.  Create a `RegexPatternSet.` For more information, see CreateRegexPatternSet.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of an `UpdateRegexPatternSet` request.
#' 
#' 3.  Submit an `UpdateRegexPatternSet` request to specify the regular expression pattern that you want AWS WAF to watch for.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param RegexPatternSetId The `RegexPatternSetId` of the RegexPatternSet that you want to update. `RegexPatternSetId` is returned by CreateRegexPatternSet and by ListRegexPatternSets.
#' @param Updates An array of `RegexPatternSetUpdate` objects that you want to insert into or delete from a RegexPatternSet.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#'
#' @export
update_regex_pattern_set <- function (RegexPatternSetId, Updates, 
    ChangeToken) 
{
    op <- Operation(name = "UpdateRegexPatternSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_regex_pattern_set_input(RegexPatternSetId = RegexPatternSetId, 
        Updates = Updates, ChangeToken = ChangeToken)
    output <- update_regex_pattern_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Inserts or deletes Predicate objects in a `Rule`
#'
#' Inserts or deletes Predicate objects in a `Rule`. Each `Predicate` object identifies a predicate, such as a ByteMatchSet or an IPSet, that specifies the web requests that you want to allow, block, or count. If you add more than one predicate to a `Rule`, a request must match all of the specifications to be allowed, blocked, or counted. For example, suppose you add the following to a `Rule`:
#' 
#' -   A `ByteMatchSet` that matches the value `BadBot` in the `User-Agent` header
#' 
#' -   An `IPSet` that matches the IP address `192.0.2.44`
#' 
#' You then add the `Rule` to a `WebACL` and specify that you want to block requests that satisfy the `Rule`. For a request to be blocked, the `User-Agent` header in the request must contain the value `BadBot` *and* the request must originate from the IP address 192.0.2.44.
#' 
#' To create and configure a `Rule`, perform the following steps:
#' 
#' 1.  Create and update the predicates that you want to include in the `Rule`.
#' 
#' 2.  Create the `Rule`. See CreateRule.
#' 
#' 3.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an UpdateRule request.
#' 
#' 4.  Submit an `UpdateRule` request to add predicates to the `Rule`.
#' 
#' 5.  Create and update a `WebACL` that contains the `Rule`. See CreateWebACL.
#' 
#' If you want to replace one `ByteMatchSet` or `IPSet` with another, you delete the existing one and add the new one.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param RuleId The `RuleId` of the `Rule` that you want to update. `RuleId` is returned by `CreateRule` and by ListRules.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#' @param Updates An array of `RuleUpdate` objects that you want to insert into or delete from a Rule. For more information, see the applicable data types:
#' 
#' -   RuleUpdate: Contains `Action` and `Predicate`
#' 
#' -   Predicate: Contains `DataId`, `Negated`, and `Type`
#' 
#' -   FieldToMatch: Contains `Data` and `Type`
#'
#' @examples
#' # The following example deletes a Predicate object in a rule with the ID
#' # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
#' update_rule(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   RuleId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
#'   Updates = list(
#'     list(
#'       Action = "DELETE",
#'       Predicate = list(
#'         DataId = "MyByteMatchSetID",
#'         Negated = FALSE,
#'         Type = "ByteMatch"
#'       )
#'     )
#'   )
#' )
#'
#' @export
update_rule <- function (RuleId, ChangeToken, Updates) 
{
    op <- Operation(name = "UpdateRule", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_rule_input(RuleId = RuleId, ChangeToken = ChangeToken, 
        Updates = Updates)
    output <- update_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Inserts or deletes ActivatedRule objects in a `RuleGroup`
#'
#' Inserts or deletes ActivatedRule objects in a `RuleGroup`.
#' 
#' You can only insert `REGULAR` rules into a rule group.
#' 
#' You can have a maximum of ten rules per rule group.
#' 
#' To create and configure a `RuleGroup`, perform the following steps:
#' 
#' 1.  Create and update the `Rules` that you want to include in the `RuleGroup`. See CreateRule.
#' 
#' 2.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an UpdateRuleGroup request.
#' 
#' 3.  Submit an `UpdateRuleGroup` request to add `Rules` to the `RuleGroup`.
#' 
#' 4.  Create and update a `WebACL` that contains the `RuleGroup`. See CreateWebACL.
#' 
#' If you want to replace one `Rule` with another, you delete the existing one and add the new one.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param RuleGroupId The `RuleGroupId` of the RuleGroup that you want to update. `RuleGroupId` is returned by CreateRuleGroup and by ListRuleGroups.
#' @param Updates An array of `RuleGroupUpdate` objects that you want to insert into or delete from a RuleGroup.
#' 
#' You can only insert `REGULAR` rules into a rule group.
#' 
#' `ActivatedRule|OverrideAction` applies only when updating or adding a `RuleGroup` to a `WebACL`. In this case you do not use `ActivatedRule|Action`. For all other update requests, `ActivatedRule|Action` is used instead of `ActivatedRule|OverrideAction`.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#'
#' @examples
#'
#' @export
update_rule_group <- function (RuleGroupId, Updates, ChangeToken) 
{
    op <- Operation(name = "UpdateRuleGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_rule_group_input(RuleGroupId = RuleGroupId, 
        Updates = Updates, ChangeToken = ChangeToken)
    output <- update_rule_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Inserts or deletes SizeConstraint objects (filters) in a SizeConstraintSet
#'
#' Inserts or deletes SizeConstraint objects (filters) in a SizeConstraintSet. For each `SizeConstraint` object, you specify the following values:
#' 
#' -   Whether to insert or delete the object from the array. If you want to change a `SizeConstraintSetUpdate` object, you delete the existing object and add a new one.
#' 
#' -   The part of a web request that you want AWS WAF to evaluate, such as the length of a query string or the length of the `User-Agent` header.
#' 
#' -   Whether to perform any transformations on the request, such as converting it to lowercase, before checking its length. Note that transformations of the request body are not supported because the AWS resource forwards only the first `8192` bytes of your request to AWS WAF.
#' 
#'     You can only specify a single type of TextTransformation.
#' 
#' -   A `ComparisonOperator` used for evaluating the selected part of the request against the specified `Size`, such as equals, greater than, less than, and so on.
#' 
#' -   The length, in bytes, that you want AWS WAF to watch for in selected part of the request. The length is computed after applying the transformation.
#' 
#' For example, you can add a `SizeConstraintSetUpdate` object that matches web requests in which the length of the `User-Agent` header is greater than 100 bytes. You can then configure AWS WAF to block those requests.
#' 
#' To create and configure a `SizeConstraintSet`, perform the following steps:
#' 
#' 1.  Create a `SizeConstraintSet.` For more information, see CreateSizeConstraintSet.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of an `UpdateSizeConstraintSet` request.
#' 
#' 3.  Submit an `UpdateSizeConstraintSet` request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param SizeConstraintSetId The `SizeConstraintSetId` of the SizeConstraintSet that you want to update. `SizeConstraintSetId` is returned by CreateSizeConstraintSet and by ListSizeConstraintSets.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#' @param Updates An array of `SizeConstraintSetUpdate` objects that you want to insert into or delete from a SizeConstraintSet. For more information, see the applicable data types:
#' 
#' -   SizeConstraintSetUpdate: Contains `Action` and `SizeConstraint`
#' 
#' -   SizeConstraint: Contains `FieldToMatch`, `TextTransformation`, `ComparisonOperator`, and `Size`
#' 
#' -   FieldToMatch: Contains `Data` and `Type`
#'
#' @examples
#' # The following example deletes a SizeConstraint object (filters) in a
#' # size constraint set with the ID
#' # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
#' update_size_constraint_set(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   SizeConstraintSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
#'   Updates = list(
#'     list(
#'       Action = "DELETE",
#'       SizeConstraint = list(
#'         ComparisonOperator = "GT",
#'         FieldToMatch = list(
#'           Type = "QUERY_STRING"
#'         ),
#'         Size = 0L,
#'         TextTransformation = "NONE"
#'       )
#'     )
#'   )
#' )
#'
#' @export
update_size_constraint_set <- function (SizeConstraintSetId, 
    ChangeToken, Updates) 
{
    op <- Operation(name = "UpdateSizeConstraintSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_size_constraint_set_input(SizeConstraintSetId = SizeConstraintSetId, 
        ChangeToken = ChangeToken, Updates = Updates)
    output <- update_size_constraint_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Inserts or deletes SqlInjectionMatchTuple objects (filters) in a SqlInjectionMatchSet
#'
#' Inserts or deletes SqlInjectionMatchTuple objects (filters) in a SqlInjectionMatchSet. For each `SqlInjectionMatchTuple` object, you specify the following values:
#' 
#' -   `Action`: Whether to insert the object into or delete the object from the array. To change a `SqlInjectionMatchTuple`, you delete the existing object and add a new one.
#' 
#' -   `FieldToMatch`: The part of web requests that you want AWS WAF to inspect and, if you want AWS WAF to inspect a header or custom query parameter, the name of the header or parameter.
#' 
#' -   `TextTransformation`: Which text transformation, if any, to perform on the web request before inspecting the request for snippets of malicious SQL code.
#' 
#'     You can only specify a single type of TextTransformation.
#' 
#' You use `SqlInjectionMatchSet` objects to specify which CloudFront requests you want to allow, block, or count. For example, if you\'re receiving requests that contain snippets of SQL code in the query string and you want to block the requests, you can create a `SqlInjectionMatchSet` with the applicable settings, and then configure AWS WAF to block the requests.
#' 
#' To create and configure a `SqlInjectionMatchSet`, perform the following steps:
#' 
#' 1.  Submit a CreateSqlInjectionMatchSet request.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of an UpdateIPSet request.
#' 
#' 3.  Submit an `UpdateSqlInjectionMatchSet` request to specify the parts of web requests that you want AWS WAF to inspect for snippets of SQL code.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param SqlInjectionMatchSetId The `SqlInjectionMatchSetId` of the `SqlInjectionMatchSet` that you want to update. `SqlInjectionMatchSetId` is returned by CreateSqlInjectionMatchSet and by ListSqlInjectionMatchSets.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#' @param Updates An array of `SqlInjectionMatchSetUpdate` objects that you want to insert into or delete from a SqlInjectionMatchSet. For more information, see the applicable data types:
#' 
#' -   SqlInjectionMatchSetUpdate: Contains `Action` and `SqlInjectionMatchTuple`
#' 
#' -   SqlInjectionMatchTuple: Contains `FieldToMatch` and `TextTransformation`
#' 
#' -   FieldToMatch: Contains `Data` and `Type`
#'
#' @examples
#' # The following example deletes a SqlInjectionMatchTuple object (filters)
#' # in a SQL injection match set with the ID
#' # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
#' update_sql_injection_match_set(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   SqlInjectionMatchSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
#'   Updates = list(
#'     list(
#'       Action = "DELETE",
#'       SqlInjectionMatchTuple = list(
#'         FieldToMatch = list(
#'           Type = "QUERY_STRING"
#'         ),
#'         TextTransformation = "URL_DECODE"
#'       )
#'     )
#'   )
#' )
#'
#' @export
update_sql_injection_match_set <- function (SqlInjectionMatchSetId, 
    ChangeToken, Updates) 
{
    op <- Operation(name = "UpdateSqlInjectionMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_sql_injection_match_set_input(SqlInjectionMatchSetId = SqlInjectionMatchSetId, 
        ChangeToken = ChangeToken, Updates = Updates)
    output <- update_sql_injection_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Inserts or deletes ActivatedRule objects in a `WebACL`
#'
#' Inserts or deletes ActivatedRule objects in a `WebACL`. Each `Rule` identifies web requests that you want to allow, block, or count. When you update a `WebACL`, you specify the following values:
#' 
#' -   A default action for the `WebACL`, either `ALLOW` or `BLOCK`. AWS WAF performs the default action if a request doesn\'t match the criteria in any of the `Rules` in a `WebACL`.
#' 
#' -   The `Rules` that you want to add and/or delete. If you want to replace one `Rule` with another, you delete the existing `Rule` and add the new one.
#' 
#' -   For each `Rule`, whether you want AWS WAF to allow requests, block requests, or count requests that match the conditions in the `Rule`.
#' 
#' -   The order in which you want AWS WAF to evaluate the `Rules` in a `WebACL`. If you add more than one `Rule` to a `WebACL`, AWS WAF evaluates each request against the `Rules` in order based on the value of `Priority`. (The `Rule` that has the lowest value for `Priority` is evaluated first.) When a web request matches all of the predicates (such as `ByteMatchSets` and `IPSets`) in a `Rule`, AWS WAF immediately takes the corresponding action, allow or block, and doesn\'t evaluate the request against the remaining `Rules` in the `WebACL`, if any.
#' 
#' To create and configure a `WebACL`, perform the following steps:
#' 
#' 1.  Create and update the predicates that you want to include in `Rules`. For more information, see CreateByteMatchSet, UpdateByteMatchSet, CreateIPSet, UpdateIPSet, CreateSqlInjectionMatchSet, and UpdateSqlInjectionMatchSet.
#' 
#' 2.  Create and update the `Rules` that you want to include in the `WebACL`. For more information, see CreateRule and UpdateRule.
#' 
#' 3.  Create a `WebACL`. See CreateWebACL.
#' 
#' 4.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an UpdateWebACL request.
#' 
#' 5.  Submit an `UpdateWebACL` request to specify the `Rules` that you want to include in the `WebACL`, to specify the default action, and to associate the `WebACL` with a CloudFront distribution.
#' 
#' Be aware that if you try to add a RATE\_BASED rule to a web ACL without setting the rule type when first creating the rule, the UpdateWebACL request will fail because the request tries to add a REGULAR rule (the default rule type) with the specified ID, which does not exist.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param WebACLId The `WebACLId` of the WebACL that you want to update. `WebACLId` is returned by CreateWebACL and by ListWebACLs.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#' @param Updates An array of updates to make to the WebACL.
#' 
#' An array of `WebACLUpdate` objects that you want to insert into or delete from a WebACL. For more information, see the applicable data types:
#' 
#' -   WebACLUpdate: Contains `Action` and `ActivatedRule`
#' 
#' -   ActivatedRule: Contains `Action`, `OverrideAction`, `Priority`, `RuleId`, and `Type`. `ActivatedRule|OverrideAction` applies only when updating or adding a `RuleGroup` to a `WebACL`. In this case you do not use `ActivatedRule|Action`. For all other update requests, `ActivatedRule|Action` is used instead of `ActivatedRule|OverrideAction`.
#' 
#' -   WafAction: Contains `Type`
#' @param DefaultAction A default action for the web ACL, either ALLOW or BLOCK. AWS WAF performs the default action if a request doesn\'t match the criteria in any of the rules in a web ACL.
#'
#' @examples
#' # The following example deletes an ActivatedRule object in a WebACL with
#' # the ID webacl-1472061481310.
#' update_web_acl(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   DefaultAction = list(
#'     Type = "ALLOW"
#'   ),
#'   Updates = list(
#'     list(
#'       Action = "DELETE",
#'       ActivatedRule = list(
#'         Action = list(
#'           Type = "ALLOW"
#'         ),
#'         Priority = 1L,
#'         RuleId = "WAFRule-1-Example"
#'       )
#'     )
#'   ),
#'   WebACLId = "webacl-1472061481310"
#' )
#'
#' @export
update_web_acl <- function (WebACLId, ChangeToken, Updates = NULL, 
    DefaultAction = NULL) 
{
    op <- Operation(name = "UpdateWebACL", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_web_acl_input(WebACLId = WebACLId, ChangeToken = ChangeToken, 
        Updates = Updates, DefaultAction = DefaultAction)
    output <- update_web_acl_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Inserts or deletes XssMatchTuple objects (filters) in an XssMatchSet
#'
#' Inserts or deletes XssMatchTuple objects (filters) in an XssMatchSet. For each `XssMatchTuple` object, you specify the following values:
#' 
#' -   `Action`: Whether to insert the object into or delete the object from the array. To change a `XssMatchTuple`, you delete the existing object and add a new one.
#' 
#' -   `FieldToMatch`: The part of web requests that you want AWS WAF to inspect and, if you want AWS WAF to inspect a header or custom query parameter, the name of the header or parameter.
#' 
#' -   `TextTransformation`: Which text transformation, if any, to perform on the web request before inspecting the request for cross-site scripting attacks.
#' 
#'     You can only specify a single type of TextTransformation.
#' 
#' You use `XssMatchSet` objects to specify which CloudFront requests you want to allow, block, or count. For example, if you\'re receiving requests that contain cross-site scripting attacks in the request body and you want to block the requests, you can create an `XssMatchSet` with the applicable settings, and then configure AWS WAF to block the requests.
#' 
#' To create and configure an `XssMatchSet`, perform the following steps:
#' 
#' 1.  Submit a CreateXssMatchSet request.
#' 
#' 2.  Use GetChangeToken to get the change token that you provide in the `ChangeToken` parameter of an UpdateIPSet request.
#' 
#' 3.  Submit an `UpdateXssMatchSet` request to specify the parts of web requests that you want AWS WAF to inspect for cross-site scripting attacks.
#' 
#' For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param XssMatchSetId The `XssMatchSetId` of the `XssMatchSet` that you want to update. `XssMatchSetId` is returned by CreateXssMatchSet and by ListXssMatchSets.
#' @param ChangeToken The value returned by the most recent call to GetChangeToken.
#' @param Updates An array of `XssMatchSetUpdate` objects that you want to insert into or delete from a XssMatchSet. For more information, see the applicable data types:
#' 
#' -   XssMatchSetUpdate: Contains `Action` and `XssMatchTuple`
#' 
#' -   XssMatchTuple: Contains `FieldToMatch` and `TextTransformation`
#' 
#' -   FieldToMatch: Contains `Data` and `Type`
#'
#' @examples
#' # The following example deletes an XssMatchTuple object (filters) in an
#' # XssMatchSet with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
#' update_xss_match_set(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   Updates = list(
#'     list(
#'       Action = "DELETE",
#'       XssMatchTuple = list(
#'         FieldToMatch = list(
#'           Type = "QUERY_STRING"
#'         ),
#'         TextTransformation = "URL_DECODE"
#'       )
#'     )
#'   ),
#'   XssMatchSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
#' )
#'
#' @export
update_xss_match_set <- function (XssMatchSetId, ChangeToken, 
    Updates) 
{
    op <- Operation(name = "UpdateXssMatchSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_xss_match_set_input(XssMatchSetId = XssMatchSetId, 
        ChangeToken = ChangeToken, Updates = Updates)
    output <- update_xss_match_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
