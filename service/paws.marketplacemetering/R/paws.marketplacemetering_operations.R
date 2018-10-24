#' BatchMeterUsage is called from a SaaS application listed on the AWS Marketplace to post metering records for a set of customers
#'
#' BatchMeterUsage is called from a SaaS application listed on the AWS Marketplace to post metering records for a set of customers.
#' 
#' For identical requests, the API is idempotent; requests can be retried with the same records or a subset of the input records.
#' 
#' Every request to BatchMeterUsage is for one product. If you need to meter usage for multiple products, you must make multiple calls to BatchMeterUsage.
#' 
#' BatchMeterUsage can process up to 25 UsageRecords at a time.
#'
#' @param UsageRecords The set of UsageRecords to submit. BatchMeterUsage accepts up to 25 UsageRecords at a time.
#' @param ProductCode Product code is used to uniquely identify a product in AWS Marketplace. The product code should be the same as the one used during the publishing of a new product.
#'
#' @examples
#'
#' @export
batch_meter_usage <- function (UsageRecords, ProductCode) 
{
    op <- Operation(name = "BatchMeterUsage", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_meter_usage_input(UsageRecords = UsageRecords, 
        ProductCode = ProductCode)
    output <- batch_meter_usage_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' API to emit metering records
#'
#' API to emit metering records. For identical requests, the API is idempotent. It simply returns the metering record ID.
#' 
#' MeterUsage is authenticated on the buyer\'s AWS account, generally when running from an EC2 instance on the AWS Marketplace.
#'
#' @param ProductCode Product code is used to uniquely identify a product in AWS Marketplace. The product code should be the same as the one used during the publishing of a new product.
#' @param Timestamp Timestamp of the hour, recorded in UTC. The seconds and milliseconds portions of the timestamp will be ignored.
#' @param UsageDimension It will be one of the fcp dimension name provided during the publishing of the product.
#' @param UsageQuantity Consumption value for the hour.
#' @param DryRun Checks whether you have the permissions required for the action, but does not make the request. If you have the permissions, the request returns DryRunOperation; otherwise, it returns UnauthorizedException.
#'
#' @examples
#'
#' @export
meter_usage <- function (ProductCode, Timestamp, UsageDimension, 
    UsageQuantity, DryRun) 
{
    op <- Operation(name = "MeterUsage", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- meter_usage_input(ProductCode = ProductCode, Timestamp = Timestamp, 
        UsageDimension = UsageDimension, UsageQuantity = UsageQuantity, 
        DryRun = DryRun)
    output <- meter_usage_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' ResolveCustomer is called by a SaaS application during the registration process
#'
#' ResolveCustomer is called by a SaaS application during the registration process. When a buyer visits your website during the registration process, the buyer submits a registration token through their browser. The registration token is resolved through this API to obtain a CustomerIdentifier and product code.
#'
#' @param RegistrationToken When a buyer visits your website during the registration process, the buyer submits a registration token through the browser. The registration token is resolved to obtain a CustomerIdentifier and product code.
#'
#' @examples
#'
#' @export
resolve_customer <- function (RegistrationToken) 
{
    op <- Operation(name = "ResolveCustomer", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- resolve_customer_input(RegistrationToken = RegistrationToken)
    output <- resolve_customer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
