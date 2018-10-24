#' The PutEvents operation records one or more events
#'
#' The PutEvents operation records one or more events. You can have up to 1,500 unique custom events per app, any combination of up to 40 attributes and metrics per custom event, and any number of attribute or metric values.
#'
#' @param events An array of Event JSON objects
#' @param clientContext The client context including the client ID, app title, app version and package name.
#' @param clientContextEncoding The encoding used for the client context.
#'
#' @examples
#'
#' @export
put_events <- function (events, clientContext, clientContextEncoding = NULL) 
{
    op <- Operation(name = "PutEvents", http_method = "POST", 
        http_path = "/2014-06-05/events", paginator = list())
    input <- put_events_input(events = events, clientContext = clientContext, 
        clientContextEncoding = clientContextEncoding)
    output <- put_events_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
