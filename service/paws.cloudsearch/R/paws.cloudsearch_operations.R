#' Indexes the search suggestions
#'
#' Indexes the search suggestions. For more information, see [Configuring Suggesters](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html#configuring-suggesters) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName 
#'
#' @examples
#'
#' @export
build_suggesters <- function (DomainName) 
{
    op <- Operation(name = "BuildSuggesters", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- build_suggesters_input(DomainName = DomainName)
    output <- build_suggesters_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new search domain
#'
#' Creates a new search domain. For more information, see [Creating a Search Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/creating-domains.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName A name for the domain you are creating. Allowed characters are a-z (lower-case letters), 0-9, and hyphen (-). Domain names must start with a letter or number and be at least 3 and no more than 28 characters long.
#'
#' @examples
#'
#' @export
create_domain <- function (DomainName) 
{
    op <- Operation(name = "CreateDomain", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_domain_input(DomainName = DomainName)
    output <- create_domain_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Configures an analysis scheme that can be applied to a `text` or `text-array` field to define language-specific text processing options
#'
#' Configures an analysis scheme that can be applied to a `text` or `text-array` field to define language-specific text processing options. For more information, see [Configuring Analysis Schemes](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName 
#' @param AnalysisScheme 
#'
#' @examples
#'
#' @export
define_analysis_scheme <- function (DomainName, AnalysisScheme) 
{
    op <- Operation(name = "DefineAnalysisScheme", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- define_analysis_scheme_input(DomainName = DomainName, 
        AnalysisScheme = AnalysisScheme)
    output <- define_analysis_scheme_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Configures an `Expression` for the search domain
#'
#' Configures an `Expression` for the search domain. Used to create new expressions and modify existing ones. If the expression exists, the new configuration replaces the old one. For more information, see [Configuring Expressions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName 
#' @param Expression 
#'
#' @examples
#'
#' @export
define_expression <- function (DomainName, Expression) 
{
    op <- Operation(name = "DefineExpression", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- define_expression_input(DomainName = DomainName, 
        Expression = Expression)
    output <- define_expression_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Configures an `IndexField` for the search domain
#'
#' Configures an `IndexField` for the search domain. Used to create new fields and modify existing ones. You must specify the name of the domain you are configuring and an index field configuration. The index field configuration specifies a unique name, the index field type, and the options you want to configure for the field. The options you can specify depend on the `IndexFieldType`. If the field exists, the new configuration replaces the old one. For more information, see [Configuring Index Fields](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName 
#' @param IndexField The index field and field options you want to configure.
#'
#' @examples
#'
#' @export
define_index_field <- function (DomainName, IndexField) 
{
    op <- Operation(name = "DefineIndexField", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- define_index_field_input(DomainName = DomainName, 
        IndexField = IndexField)
    output <- define_index_field_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Configures a suggester for a domain
#'
#' Configures a suggester for a domain. A suggester enables you to display possible matches before users finish typing their queries. When you configure a suggester, you must specify the name of the text field you want to search for possible matches and a unique name for the suggester. For more information, see [Getting Search Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName 
#' @param Suggester 
#'
#' @examples
#'
#' @export
define_suggester <- function (DomainName, Suggester) 
{
    op <- Operation(name = "DefineSuggester", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- define_suggester_input(DomainName = DomainName, 
        Suggester = Suggester)
    output <- define_suggester_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an analysis scheme
#'
#' Deletes an analysis scheme. For more information, see [Configuring Analysis Schemes](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName 
#' @param AnalysisSchemeName The name of the analysis scheme you want to delete.
#'
#' @examples
#'
#' @export
delete_analysis_scheme <- function (DomainName, AnalysisSchemeName) 
{
    op <- Operation(name = "DeleteAnalysisScheme", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_analysis_scheme_input(DomainName = DomainName, 
        AnalysisSchemeName = AnalysisSchemeName)
    output <- delete_analysis_scheme_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently deletes a search domain and all of its data
#'
#' Permanently deletes a search domain and all of its data. Once a domain has been deleted, it cannot be recovered. For more information, see [Deleting a Search Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/deleting-domains.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName The name of the domain you want to permanently delete.
#'
#' @examples
#'
#' @export
delete_domain <- function (DomainName) 
{
    op <- Operation(name = "DeleteDomain", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_domain_input(DomainName = DomainName)
    output <- delete_domain_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes an `Expression` from the search domain
#'
#' Removes an `Expression` from the search domain. For more information, see [Configuring Expressions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName 
#' @param ExpressionName The name of the `Expression` to delete.
#'
#' @examples
#'
#' @export
delete_expression <- function (DomainName, ExpressionName) 
{
    op <- Operation(name = "DeleteExpression", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_expression_input(DomainName = DomainName, 
        ExpressionName = ExpressionName)
    output <- delete_expression_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes an `IndexField` from the search domain
#'
#' Removes an `IndexField` from the search domain. For more information, see [Configuring Index Fields](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName 
#' @param IndexFieldName The name of the index field your want to remove from the domain\'s indexing options.
#'
#' @examples
#'
#' @export
delete_index_field <- function (DomainName, IndexFieldName) 
{
    op <- Operation(name = "DeleteIndexField", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_index_field_input(DomainName = DomainName, 
        IndexFieldName = IndexFieldName)
    output <- delete_index_field_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a suggester
#'
#' Deletes a suggester. For more information, see [Getting Search Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName 
#' @param SuggesterName Specifies the name of the suggester you want to delete.
#'
#' @examples
#'
#' @export
delete_suggester <- function (DomainName, SuggesterName) 
{
    op <- Operation(name = "DeleteSuggester", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_suggester_input(DomainName = DomainName, 
        SuggesterName = SuggesterName)
    output <- delete_suggester_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the analysis schemes configured for a domain
#'
#' Gets the analysis schemes configured for a domain. An analysis scheme defines language-specific text processing options for a `text` field. Can be limited to specific analysis schemes by name. By default, shows all analysis schemes and includes any pending changes to the configuration. Set the `Deployed` option to `true` to show the active configuration and exclude pending changes. For more information, see [Configuring Analysis Schemes](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName The name of the domain you want to describe.
#' @param AnalysisSchemeNames The analysis schemes you want to describe.
#' @param Deployed Whether to display the deployed configuration (`true`) or include any pending changes (`false`). Defaults to `false`.
#'
#' @examples
#'
#' @export
describe_analysis_schemes <- function (DomainName, AnalysisSchemeNames = NULL, 
    Deployed = NULL) 
{
    op <- Operation(name = "DescribeAnalysisSchemes", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_analysis_schemes_input(DomainName = DomainName, 
        AnalysisSchemeNames = AnalysisSchemeNames, Deployed = Deployed)
    output <- describe_analysis_schemes_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the availability options configured for a domain
#'
#' Gets the availability options configured for a domain. By default, shows the configuration with any pending changes. Set the `Deployed` option to `true` to show the active configuration and exclude pending changes. For more information, see [Configuring Availability Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName The name of the domain you want to describe.
#' @param Deployed Whether to display the deployed configuration (`true`) or include any pending changes (`false`). Defaults to `false`.
#'
#' @examples
#'
#' @export
describe_availability_options <- function (DomainName, Deployed = NULL) 
{
    op <- Operation(name = "DescribeAvailabilityOptions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_availability_options_input(DomainName = DomainName, 
        Deployed = Deployed)
    output <- describe_availability_options_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the search domains owned by this account
#'
#' Gets information about the search domains owned by this account. Can be limited to specific domains. Shows all domains by default. To get the number of searchable documents in a domain, use the console or submit a `matchall` request to your domain\'s search endpoint: `q=matchall&amp;q.parser=structured&amp;size=0`. For more information, see [Getting Information about a Search Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainNames The names of the domains you want to include in the response.
#'
#' @examples
#'
#' @export
describe_domains <- function (DomainNames = NULL) 
{
    op <- Operation(name = "DescribeDomains", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_domains_input(DomainNames = DomainNames)
    output <- describe_domains_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the expressions configured for the search domain
#'
#' Gets the expressions configured for the search domain. Can be limited to specific expressions by name. By default, shows all expressions and includes any pending changes to the configuration. Set the `Deployed` option to `true` to show the active configuration and exclude pending changes. For more information, see [Configuring Expressions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName The name of the domain you want to describe.
#' @param ExpressionNames Limits the `DescribeExpressions` response to the specified expressions. If not specified, all expressions are shown.
#' @param Deployed Whether to display the deployed configuration (`true`) or include any pending changes (`false`). Defaults to `false`.
#'
#' @examples
#'
#' @export
describe_expressions <- function (DomainName, ExpressionNames = NULL, 
    Deployed = NULL) 
{
    op <- Operation(name = "DescribeExpressions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_expressions_input(DomainName = DomainName, 
        ExpressionNames = ExpressionNames, Deployed = Deployed)
    output <- describe_expressions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the index fields configured for the search domain
#'
#' Gets information about the index fields configured for the search domain. Can be limited to specific fields by name. By default, shows all fields and includes any pending changes to the configuration. Set the `Deployed` option to `true` to show the active configuration and exclude pending changes. For more information, see [Getting Domain Information](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName The name of the domain you want to describe.
#' @param FieldNames A list of the index fields you want to describe. If not specified, information is returned for all configured index fields.
#' @param Deployed Whether to display the deployed configuration (`true`) or include any pending changes (`false`). Defaults to `false`.
#'
#' @examples
#'
#' @export
describe_index_fields <- function (DomainName, FieldNames = NULL, 
    Deployed = NULL) 
{
    op <- Operation(name = "DescribeIndexFields", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_index_fields_input(DomainName = DomainName, 
        FieldNames = FieldNames, Deployed = Deployed)
    output <- describe_index_fields_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the scaling parameters configured for a domain
#'
#' Gets the scaling parameters configured for a domain. A domain\'s scaling parameters specify the desired search instance type and replication count. For more information, see [Configuring Scaling Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName 
#'
#' @examples
#'
#' @export
describe_scaling_parameters <- function (DomainName) 
{
    op <- Operation(name = "DescribeScalingParameters", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_scaling_parameters_input(DomainName = DomainName)
    output <- describe_scaling_parameters_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the access policies that control access to the domain\'s document and search endpoints
#'
#' Gets information about the access policies that control access to the domain\'s document and search endpoints. By default, shows the configuration with any pending changes. Set the `Deployed` option to `true` to show the active configuration and exclude pending changes. For more information, see [Configuring Access for a Search Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName The name of the domain you want to describe.
#' @param Deployed Whether to display the deployed configuration (`true`) or include any pending changes (`false`). Defaults to `false`.
#'
#' @examples
#'
#' @export
describe_service_access_policies <- function (DomainName, Deployed = NULL) 
{
    op <- Operation(name = "DescribeServiceAccessPolicies", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_service_access_policies_input(DomainName = DomainName, 
        Deployed = Deployed)
    output <- describe_service_access_policies_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the suggesters configured for a domain
#'
#' Gets the suggesters configured for a domain. A suggester enables you to display possible matches before users finish typing their queries. Can be limited to specific suggesters by name. By default, shows all suggesters and includes any pending changes to the configuration. Set the `Deployed` option to `true` to show the active configuration and exclude pending changes. For more information, see [Getting Search Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName The name of the domain you want to describe.
#' @param SuggesterNames The suggesters you want to describe.
#' @param Deployed Whether to display the deployed configuration (`true`) or include any pending changes (`false`). Defaults to `false`.
#'
#' @examples
#'
#' @export
describe_suggesters <- function (DomainName, SuggesterNames = NULL, 
    Deployed = NULL) 
{
    op <- Operation(name = "DescribeSuggesters", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_suggesters_input(DomainName = DomainName, 
        SuggesterNames = SuggesterNames, Deployed = Deployed)
    output <- describe_suggesters_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Tells the search domain to start indexing its documents using the latest indexing options
#'
#' Tells the search domain to start indexing its documents using the latest indexing options. This operation must be invoked to activate options whose OptionStatus is `RequiresIndexDocuments`.
#'
#' @param DomainName 
#'
#' @examples
#'
#' @export
index_documents <- function (DomainName) 
{
    op <- Operation(name = "IndexDocuments", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- index_documents_input(DomainName = DomainName)
    output <- index_documents_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all search domains owned by an account
#'
#' Lists all search domains owned by an account.
#'

#'
#' @examples
#'
#' @export
list_domain_names <- function () 
{
    op <- Operation(name = "ListDomainNames", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_domain_names_input()
    output <- list_domain_names_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Configures the availability options for a domain
#'
#' Configures the availability options for a domain. Enabling the Multi-AZ option expands an Amazon CloudSearch domain to an additional Availability Zone in the same Region to increase fault tolerance in the event of a service disruption. Changes to the Multi-AZ option can take about half an hour to become active. For more information, see [Configuring Availability Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName 
#' @param MultiAZ You expand an existing search domain to a second Availability Zone by setting the Multi-AZ option to true. Similarly, you can turn off the Multi-AZ option to downgrade the domain to a single Availability Zone by setting the Multi-AZ option to `false`.
#'
#' @examples
#'
#' @export
update_availability_options <- function (DomainName, MultiAZ) 
{
    op <- Operation(name = "UpdateAvailabilityOptions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_availability_options_input(DomainName = DomainName, 
        MultiAZ = MultiAZ)
    output <- update_availability_options_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Configures scaling parameters for a domain
#'
#' Configures scaling parameters for a domain. A domain\'s scaling parameters specify the desired search instance type and replication count. Amazon CloudSearch will still automatically scale your domain based on the volume of data and traffic, but not below the desired instance type and replication count. If the Multi-AZ option is enabled, these values control the resources used per Availability Zone. For more information, see [Configuring Scaling Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html) in the *Amazon CloudSearch Developer Guide*.
#'
#' @param DomainName 
#' @param ScalingParameters 
#'
#' @examples
#'
#' @export
update_scaling_parameters <- function (DomainName, ScalingParameters) 
{
    op <- Operation(name = "UpdateScalingParameters", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_scaling_parameters_input(DomainName = DomainName, 
        ScalingParameters = ScalingParameters)
    output <- update_scaling_parameters_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Configures the access rules that control access to the domain\'s document and search endpoints
#'
#' Configures the access rules that control access to the domain\'s document and search endpoints. For more information, see [Configuring Access for an Amazon CloudSearch Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html).
#'
#' @param DomainName 
#' @param AccessPolicies The access rules you want to configure. These rules replace any existing rules.
#'
#' @examples
#'
#' @export
update_service_access_policies <- function (DomainName, AccessPolicies) 
{
    op <- Operation(name = "UpdateServiceAccessPolicies", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_service_access_policies_input(DomainName = DomainName, 
        AccessPolicies = AccessPolicies)
    output <- update_service_access_policies_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
