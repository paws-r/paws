#' Retrieves cost and usage metrics for your account
#'
#' Retrieves cost and usage metrics for your account. You can specify which cost and usage-related metric, such as `BlendedCosts` or `UsageQuantity`, that you want the request to return. You can also filter and group your data by various dimensions, such as `SERVICE` or `AZ`, in a specific time range. For a complete list of valid dimensions, see the ` GetDimensionValues GetDimensionValues ` operation. Master accounts in an organization in AWS Organizations have access to all member accounts.
#'
#' @param TimePeriod Sets the start and end dates for retrieving AWS costs. The start date is inclusive, but the end date is exclusive. For example, if `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost and usage data is retrieved from `2017-01-01` up to and including `2017-04-30` but not including `2017-05-01`.
#' @param Granularity Sets the AWS cost granularity to `MONTHLY` or `DAILY`. If `Granularity` isn\'t set, the response object doesn\'t include the `Granularity`, either `MONTHLY` or `DAILY`.
#' @param Filter Filters AWS costs by different dimensions. For example, you can specify `SERVICE` and `LINKED_ACCOUNT` and get the costs that are associated with that account\'s usage of that service. You can nest `Expression` objects to define any combination of dimension filters. For more information, see [Expression](http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html).
#' @param Metrics Which metrics are returned in the query. For more information about blended and unblended rates, see [Why does the \"blended\" annotation appear on some line items in my bill?](https://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/).
#' 
#' Valid values are `AmortizedCost`, `BlendedCost`, `UnblendedCost`, and `UsageQuantity`.
#' 
#' If you return the `UsageQuantity` metric, the service aggregates all usage numbers without taking into account the units. For example, if you aggregate `usageQuantity` across all of EC2, the results aren\'t meaningful because EC2 compute hours and data transfer are measured in different units (for example, hours vs. GB). To get more meaningful `UsageQuantity` metrics, filter by `UsageType` or `UsageTypeGroups`.
#' 
#' `Metrics` is required for `GetCostAndUsage` requests.
#' @param GroupBy You can group AWS costs using up to two different groups, either dimensions, tag keys, or both.
#' 
#' When you group by tag key, you get all tag values, including empty strings.
#' 
#' Valid values are `AZ`, `INSTANCE_TYPE`, `LEGAL_ENTITY_NAME`, `LINKED_ACCOUNT`, `OPERATION`, `PLATFORM`, `PURCHASE_TYPE`, `SERVICE`, `TAGS`, `TENANCY`, and `USAGE_TYPE`.
#' @param NextPageToken The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
#'
#' @examples
#'
#' @export
get_cost_and_usage <- function (TimePeriod = NULL, Granularity = NULL, 
    Filter = NULL, Metrics = NULL, GroupBy = NULL, NextPageToken = NULL) 
{
    op <- Operation(name = "GetCostAndUsage", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_cost_and_usage_input(TimePeriod = TimePeriod, 
        Granularity = Granularity, Filter = Filter, Metrics = Metrics, 
        GroupBy = GroupBy, NextPageToken = NextPageToken)
    output <- get_cost_and_usage_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves all available filter values for a specified filter over a period of time
#'
#' Retrieves all available filter values for a specified filter over a period of time. You can search the dimension values for an arbitrary string.
#'
#' @param TimePeriod The start and end dates for retrieving the dimension values. The start date is inclusive, but the end date is exclusive. For example, if `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost and usage data is retrieved from `2017-01-01` up to and including `2017-04-30` but not including `2017-05-01`.
#' @param Dimension The name of the dimension. Each `Dimension` is available for different a `Context`. For more information, see `Context`.
#' @param SearchString The value that you want to search the filter values for.
#' @param Context The context for the call to `GetDimensionValues`. This can be `RESERVATIONS` or `COST_AND_USAGE`. The default value is `COST_AND_USAGE`. If the context is set to `RESERVATIONS`, the resulting dimension values can be used in the `GetReservationUtilization` operation. If the context is set to `COST_AND_USAGE` the resulting dimension values can be used in the `GetCostAndUsage` operation.
#' 
#' If you set the context to `COST_AND_USAGE`, you can use the following dimensions for searching:
#' 
#' -   AZ - The Availability Zone. An example is `us-east-1a`.
#' 
#' -   DATABASE\_ENGINE - The Amazon Relational Database Service database. Examples are Aurora or MySQL.
#' 
#' -   INSTANCE\_TYPE - The type of EC2 instance. An example is `m4.xlarge`.
#' 
#' -   LEGAL\_ENTITY\_NAME - The name of the organization that sells you AWS services, such as Amazon Web Services.
#' 
#' -   LINKED\_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.
#' 
#' -   OPERATING\_SYSTEM - The operating system. Examples are Windows or Linux.
#' 
#' -   OPERATION - The action performed. Examples include `RunInstance` and `CreateBucket`.
#' 
#' -   PLATFORM - The EC2 operating system. Examples are Windows or Linux.
#' 
#' -   PURCHASE\_TYPE - The reservation type of the purchase to which this usage is related. Examples include On-Demand Instances and Standard Reserved Instances.
#' 
#' -   SERVICE - The AWS service such as Amazon DynamoDB.
#' 
#' -   USAGE\_TYPE - The type of usage. An example is DataTransfer-In-Bytes. The response for the `GetDimensionValues` operation includes a unit attribute. Examples include GB and Hrs.
#' 
#' -   USAGE\_TYPE\_GROUP - The grouping of common usage types. An example is EC2: CloudWatch -- Alarms. The response for this operation includes a unit attribute.
#' 
#' -   RECORD\_TYPE - The different types of charges such as RI fees, usage costs, tax refunds, and credits.
#' 
#' If you set the context to `RESERVATIONS`, you can use the following dimensions for searching:
#' 
#' -   AZ - The Availability Zone. An example is `us-east-1a`.
#' 
#' -   CACHE\_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or Linux.
#' 
#' -   DEPLOYMENT\_OPTION - The scope of Amazon Relational Database Service deployments. Valid values are `SingleAZ` and `MultiAZ`.
#' 
#' -   INSTANCE\_TYPE - The type of EC2 instance. An example is `m4.xlarge`.
#' 
#' -   LINKED\_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.
#' 
#' -   PLATFORM - The EC2 operating system. Examples are Windows or Linux.
#' 
#' -   REGION - The AWS Region.
#' 
#' -   SCOPE (Utilization only) - The scope of a Reserved Instance (RI). Values are regional or a single Availability Zone.
#' 
#' -   TAG (Coverage only) - The tags that are associated with a Reserved Instance (RI).
#' 
#' -   TENANCY - The tenancy of a resource. Examples are shared or dedicated.
#' @param NextPageToken The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
#'
#' @examples
#'
#' @export
get_dimension_values <- function (TimePeriod, Dimension, SearchString = NULL, 
    Context = NULL, NextPageToken = NULL) 
{
    op <- Operation(name = "GetDimensionValues", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_dimension_values_input(TimePeriod = TimePeriod, 
        Dimension = Dimension, SearchString = SearchString, Context = Context, 
        NextPageToken = NextPageToken)
    output <- get_dimension_values_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the reservation coverage for your account
#'
#' Retrieves the reservation coverage for your account. This allows you to see how much of your Amazon Elastic Compute Cloud, Amazon ElastiCache, Amazon Relational Database Service, or Amazon Redshift usage is covered by a reservation. An organization\'s master account can see the coverage of the associated member accounts. For any time period, you can filter data about reservation usage by the following dimensions:
#' 
#' -   AZ
#' 
#' -   CACHE\_ENGINE
#' 
#' -   DATABASE\_ENGINE
#' 
#' -   DEPLOYMENT\_OPTION
#' 
#' -   INSTANCE\_TYPE
#' 
#' -   LINKED\_ACCOUNT
#' 
#' -   OPERATING\_SYSTEM
#' 
#' -   PLATFORM
#' 
#' -   REGION
#' 
#' -   SERVICE
#' 
#' -   TAG
#' 
#' -   TENANCY
#' 
#' To determine valid values for a dimension, use the `GetDimensionValues` operation.
#'
#' @param TimePeriod The start and end dates of the period for which you want to retrieve data about reservation coverage. You can retrieve data for a maximum of 13 months: the last 12 months and the current month. The start date is inclusive, but the end date is exclusive. For example, if `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost and usage data is retrieved from `2017-01-01` up to and including `2017-04-30` but not including `2017-05-01`.
#' @param GroupBy You can group the data by the following attributes:
#' 
#' -   AZ
#' 
#' -   CACHE\_ENGINE
#' 
#' -   DATABASE\_ENGINE
#' 
#' -   DEPLOYMENT\_OPTION
#' 
#' -   INSTANCE\_TYPE
#' 
#' -   LINKED\_ACCOUNT
#' 
#' -   OPERATING\_SYSTEM
#' 
#' -   PLATFORM
#' 
#' -   REGION
#' 
#' -   TAG
#' 
#' -   TENANCY
#' @param Granularity The granularity of the AWS cost data for the reservation. Valid values are `MONTHLY` and `DAILY`.
#' 
#' If `GroupBy` is set, `Granularity` can\'t be set. If `Granularity` isn\'t set, the response object doesn\'t include `Granularity`, either `MONTHLY` or `DAILY`.
#' @param Filter Filters utilization data by dimensions. You can filter by the following dimensions:
#' 
#' -   AZ
#' 
#' -   CACHE\_ENGINE
#' 
#' -   DATABASE\_ENGINE
#' 
#' -   DEPLOYMENT\_OPTION
#' 
#' -   INSTANCE\_TYPE
#' 
#' -   LINKED\_ACCOUNT
#' 
#' -   OPERATING\_SYSTEM
#' 
#' -   PLATFORM
#' 
#' -   REGION
#' 
#' -   SERVICE
#' 
#' -   TAG
#' 
#' -   TENANCY
#' 
#' `GetReservationCoverage` uses the same ` Expression Expression ` object as the other operations, but only `AND` is supported among each dimension. You can nest only one level deep. If there are multiple values for a dimension, they are OR\'d together.
#' 
#' If you don\'t provide a `SERVICE` filter, Cost Explorer defaults to EC2.
#' @param NextPageToken The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
#'
#' @examples
#'
#' @export
get_reservation_coverage <- function (TimePeriod, GroupBy = NULL, 
    Granularity = NULL, Filter = NULL, NextPageToken = NULL) 
{
    op <- Operation(name = "GetReservationCoverage", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_reservation_coverage_input(TimePeriod = TimePeriod, 
        GroupBy = GroupBy, Granularity = Granularity, Filter = Filter, 
        NextPageToken = NextPageToken)
    output <- get_reservation_coverage_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets recommendations for which reservations to purchase
#'
#' Gets recommendations for which reservations to purchase. These recommendations could help you reduce your costs. Reservations provide a discounted hourly rate (up to 75%) compared to On-Demand pricing.
#' 
#' AWS generates your recommendations by identifying your On-Demand usage during a specific time period and collecting your usage into categories that are eligible for a reservation. After AWS has these categories, it simulates every combination of reservations in each category of usage to identify the best number of each type of RI to purchase to maximize your estimated savings.
#' 
#' For example, AWS automatically aggregates your EC2 Linux, shared tenancy, and c4 family usage in the US West (Oregon) Region and recommends that you buy size-flexible regional reservations to apply to the c4 family usage. AWS recommends the smallest size instance in an instance family. This makes it easier to purchase a size-flexible RI. AWS also shows the equal number of normalized units so that you can purchase any instance size that you want. For this example, your RI recommendation would be for `c4.large`, because that is the smallest size instance in the c4 instance family.
#'
#' @param Service The specific service that you want recommendations for.
#' @param AccountId The account ID that is associated with the recommendation.
#' @param AccountScope The account scope that you want recommendations for. `PAYER` means that AWS includes the master account and any member accounts when it calculates its recommendations. `LINKED` means that AWS includes only member accounts when it calculates its recommendations.
#' 
#' Valid values are `PAYER` and `LINKED`.
#' @param LookbackPeriodInDays The number of previous days that you want AWS to consider when it calculates your recommendations.
#' @param TermInYears The reservation term that you want recommendations for.
#' @param PaymentOption The reservation purchase option that you want recommendations for.
#' @param ServiceSpecification The hardware specifications for the service instances that you want recommendations for, such as standard or convertible EC2 instances.
#' @param PageSize The number of recommendations that you want returned in a single response object.
#' @param NextPageToken The pagination token that indicates the next set of results that you want to retrieve.
#'
#' @examples
#'
#' @export
get_reservation_purchase_recommendation <- function (Service, 
    AccountId = NULL, AccountScope = NULL, LookbackPeriodInDays = NULL, 
    TermInYears = NULL, PaymentOption = NULL, ServiceSpecification = NULL, 
    PageSize = NULL, NextPageToken = NULL) 
{
    op <- Operation(name = "GetReservationPurchaseRecommendation", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- get_reservation_purchase_recommendation_input(Service = Service, 
        AccountId = AccountId, AccountScope = AccountScope, LookbackPeriodInDays = LookbackPeriodInDays, 
        TermInYears = TermInYears, PaymentOption = PaymentOption, 
        ServiceSpecification = ServiceSpecification, PageSize = PageSize, 
        NextPageToken = NextPageToken)
    output <- get_reservation_purchase_recommendation_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the reservation utilization for your account
#'
#' Retrieves the reservation utilization for your account. Master accounts in an organization have access to member accounts. You can filter data by dimensions in a time period. You can use `GetDimensionValues` to determine the possible dimension values. Currently, you can group only by `SUBSCRIPTION_ID`.
#'
#' @param TimePeriod Sets the start and end dates for retrieving Reserved Instance (RI) utilization. The start date is inclusive, but the end date is exclusive. For example, if `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost and usage data is retrieved from `2017-01-01` up to and including `2017-04-30` but not including `2017-05-01`.
#' @param GroupBy Groups only by `SUBSCRIPTION_ID`. Metadata is included.
#' @param Granularity If `GroupBy` is set, `Granularity` can\'t be set. If `Granularity` isn\'t set, the response object doesn\'t include `Granularity`, either `MONTHLY` or `DAILY`. If both `GroupBy` and `Granularity` aren\'t set, `GetReservationUtilization` defaults to `DAILY`.
#' @param Filter Filters utilization data by dimensions. You can filter by the following dimensions:
#' 
#' -   AZ
#' 
#' -   CACHE\_ENGINE
#' 
#' -   DATABASE\_ENGINE
#' 
#' -   DEPLOYMENT\_OPTION
#' 
#' -   INSTANCE\_TYPE
#' 
#' -   LINKED\_ACCOUNT
#' 
#' -   OPERATING\_SYSTEM
#' 
#' -   PLATFORM
#' 
#' -   REGION
#' 
#' -   SERVICE
#' 
#' -   SCOPE
#' 
#' -   TENANCY
#' 
#' `GetReservationUtilization` uses the same ` Expression Expression ` object as the other operations, but only `AND` is supported among each dimension, and nesting is supported up to only one level deep. If there are multiple values for a dimension, they are OR\'d together.
#' @param NextPageToken The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
#'
#' @examples
#'
#' @export
get_reservation_utilization <- function (TimePeriod, GroupBy = NULL, 
    Granularity = NULL, Filter = NULL, NextPageToken = NULL) 
{
    op <- Operation(name = "GetReservationUtilization", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_reservation_utilization_input(TimePeriod = TimePeriod, 
        GroupBy = GroupBy, Granularity = Granularity, Filter = Filter, 
        NextPageToken = NextPageToken)
    output <- get_reservation_utilization_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Queries for available tag keys and tag values for a specified period
#'
#' Queries for available tag keys and tag values for a specified period. You can search the tag values for an arbitrary string.
#'
#' @param TimePeriod The start and end dates for retrieving the dimension values. The start date is inclusive, but the end date is exclusive. For example, if `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost and usage data is retrieved from `2017-01-01` up to and including `2017-04-30` but not including `2017-05-01`.
#' @param SearchString The value that you want to search for.
#' @param TagKey The key of the tag that you want to return values for.
#' @param NextPageToken The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
#'
#' @examples
#'
#' @export
get_tags <- function (TimePeriod, SearchString = NULL, TagKey = NULL, 
    NextPageToken = NULL) 
{
    op <- Operation(name = "GetTags", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- get_tags_input(TimePeriod = TimePeriod, SearchString = SearchString, 
        TagKey = TagKey, NextPageToken = NextPageToken)
    output <- get_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
