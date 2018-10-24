#' Returns a list of entities that have been affected by the specified events, based on the specified filter criteria
#'
#' Returns a list of entities that have been affected by the specified events, based on the specified filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the AWS service. Events that have impact beyond that of the affected entities, or where the extent of impact is unknown, include at least one entity indicating this.
#' 
#' At least one event ARN is required. Results are sorted by the `lastUpdatedTime` of the entity, starting with the most recent.
#'
#' @param filter Values to narrow the results returned. At least one event ARN is required.
#' @param locale The locale (language) to return information in. English (en) is the default and the only supported value at this time.
#' @param nextToken If the results of a search are large, only a portion of the results are returned, and a `nextToken` pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
#' @param maxResults The maximum number of items to return in one batch, between 10 and 100, inclusive.
#'
#' @examples
#'
#' @export
describe_affected_entities <- function (filter, locale = NULL, 
    nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "DescribeAffectedEntities", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_affected_entities_input(filter = filter, 
        locale = locale, nextToken = nextToken, maxResults = maxResults)
    output <- describe_affected_entities_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the number of entities that are affected by each of the specified events
#'
#' Returns the number of entities that are affected by each of the specified events. If no events are specified, the counts of all affected entities are returned.
#'
#' @param eventArns A list of event ARNs (unique identifiers). For example: `"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"`
#'
#' @examples
#'
#' @export
describe_entity_aggregates <- function (eventArns = NULL) 
{
    op <- Operation(name = "DescribeEntityAggregates", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_entity_aggregates_input(eventArns = eventArns)
    output <- describe_entity_aggregates_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the number of events of each event type (issue, scheduled change, and account notification)
#'
#' Returns the number of events of each event type (issue, scheduled change, and account notification). If no filter is specified, the counts of all events in each category are returned.
#'
#' @param aggregateField The only currently supported value is `eventTypeCategory`.
#' @param filter Values to narrow the results returned.
#' @param maxResults The maximum number of items to return in one batch, between 10 and 100, inclusive.
#' @param nextToken If the results of a search are large, only a portion of the results are returned, and a `nextToken` pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
#'
#' @examples
#'
#' @export
describe_event_aggregates <- function (aggregateField, filter = NULL, 
    maxResults = NULL, nextToken = NULL) 
{
    op <- Operation(name = "DescribeEventAggregates", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_event_aggregates_input(aggregateField = aggregateField, 
        filter = filter, maxResults = maxResults, nextToken = nextToken)
    output <- describe_event_aggregates_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns detailed information about one or more specified events
#'
#' Returns detailed information about one or more specified events. Information includes standard event data (region, service, etc., as returned by DescribeEvents), a detailed event description, and possible additional metadata that depends upon the nature of the event. Affected entities are not included; to retrieve those, use the DescribeAffectedEntities operation.
#' 
#' If a specified event cannot be retrieved, an error message is returned for that event.
#'
#' @param eventArns A list of event ARNs (unique identifiers). For example: `"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"`
#' @param locale The locale (language) to return information in. English (en) is the default and the only supported value at this time.
#'
#' @examples
#'
#' @export
describe_event_details <- function (eventArns, locale = NULL) 
{
    op <- Operation(name = "DescribeEventDetails", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_event_details_input(eventArns = eventArns, 
        locale = locale)
    output <- describe_event_details_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the event types that meet the specified filter criteria
#'
#' Returns the event types that meet the specified filter criteria. If no filter criteria are specified, all event types are returned, in no particular order.
#'
#' @param filter Values to narrow the results returned.
#' @param locale The locale (language) to return information in. English (en) is the default and the only supported value at this time.
#' @param nextToken If the results of a search are large, only a portion of the results are returned, and a `nextToken` pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
#' @param maxResults The maximum number of items to return in one batch, between 10 and 100, inclusive.
#'
#' @examples
#'
#' @export
describe_event_types <- function (filter = NULL, locale = NULL, 
    nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "DescribeEventTypes", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_event_types_input(filter = filter, locale = locale, 
        nextToken = nextToken, maxResults = maxResults)
    output <- describe_event_types_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about events that meet the specified filter criteria
#'
#' Returns information about events that meet the specified filter criteria. Events are returned in a summary form and do not include the detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the DescribeEventDetails and DescribeAffectedEntities operations.
#' 
#' If no filter criteria are specified, all events are returned. Results are sorted by `lastModifiedTime`, starting with the most recent.
#'
#' @param filter Values to narrow the results returned.
#' @param nextToken If the results of a search are large, only a portion of the results are returned, and a `nextToken` pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
#' @param maxResults The maximum number of items to return in one batch, between 10 and 100, inclusive.
#' @param locale The locale (language) to return information in. English (en) is the default and the only supported value at this time.
#'
#' @examples
#'
#' @export
describe_events <- function (filter = NULL, nextToken = NULL, 
    maxResults = NULL, locale = NULL) 
{
    op <- Operation(name = "DescribeEvents", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_events_input(filter = filter, nextToken = nextToken, 
        maxResults = maxResults, locale = locale)
    output <- describe_events_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
