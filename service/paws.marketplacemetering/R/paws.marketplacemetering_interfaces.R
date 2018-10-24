batch_meter_usage_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UsageRecords = structure(list(structure(list(Timestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), CustomerIdentifier = structure(logical(0), 
        shape = "CustomerIdentifier", type = "string", max = 255L, 
        min = 1L), Dimension = structure(logical(0), shape = "UsageDimension", 
        type = "string", max = 255L, min = 1L), Quantity = structure(logical(0), 
        shape = "UsageQuantity", type = "integer", max = 1000000L, 
        min = 0L)), shape = "UsageRecord", type = "structure")), 
        shape = "UsageRecordList", type = "list", max = 25L, 
        min = 0L), ProductCode = structure(logical(0), shape = "ProductCode", 
        type = "string", max = 255L, min = 1L)), shape = "BatchMeterUsageRequest", 
        type = "structure")
    return(populate(args, shape))
}

batch_meter_usage_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Results = structure(list(structure(list(UsageRecord = structure(list(Timestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), CustomerIdentifier = structure(logical(0), 
        shape = "CustomerIdentifier", type = "string", max = 255L, 
        min = 1L), Dimension = structure(logical(0), shape = "UsageDimension", 
        type = "string", max = 255L, min = 1L), Quantity = structure(logical(0), 
        shape = "UsageQuantity", type = "integer", max = 1000000L, 
        min = 0L)), shape = "UsageRecord", type = "structure"), 
        MeteringRecordId = structure(logical(0), shape = "String", 
            type = "string"), Status = structure(logical(0), 
            shape = "UsageRecordResultStatus", type = "string")), 
        shape = "UsageRecordResult", type = "structure")), shape = "UsageRecordResultList", 
        type = "list"), UnprocessedRecords = structure(list(structure(list(Timestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), CustomerIdentifier = structure(logical(0), 
        shape = "CustomerIdentifier", type = "string", max = 255L, 
        min = 1L), Dimension = structure(logical(0), shape = "UsageDimension", 
        type = "string", max = 255L, min = 1L), Quantity = structure(logical(0), 
        shape = "UsageQuantity", type = "integer", max = 1000000L, 
        min = 0L)), shape = "UsageRecord", type = "structure")), 
        shape = "UsageRecordList", type = "list", max = 25L, 
        min = 0L)), shape = "BatchMeterUsageResult", type = "structure")
    return(populate(args, shape))
}

meter_usage_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProductCode = structure(logical(0), 
        shape = "ProductCode", type = "string", max = 255L, min = 1L), 
        Timestamp = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), UsageDimension = structure(logical(0), 
            shape = "UsageDimension", type = "string", max = 255L, 
            min = 1L), UsageQuantity = structure(logical(0), 
            shape = "UsageQuantity", type = "integer", max = 1000000L, 
            min = 0L), DryRun = structure(logical(0), shape = "Boolean", 
            type = "boolean")), shape = "MeterUsageRequest", 
        type = "structure")
    return(populate(args, shape))
}

meter_usage_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MeteringRecordId = structure(logical(0), 
        shape = "String", type = "string")), shape = "MeterUsageResult", 
        type = "structure")
    return(populate(args, shape))
}

resolve_customer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistrationToken = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = "\\S+")), 
        shape = "ResolveCustomerRequest", type = "structure")
    return(populate(args, shape))
}

resolve_customer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CustomerIdentifier = structure(logical(0), 
        shape = "CustomerIdentifier", type = "string", max = 255L, 
        min = 1L), ProductCode = structure(logical(0), shape = "ProductCode", 
        type = "string", max = 255L, min = 1L)), shape = "ResolveCustomerResult", 
        type = "structure")
    return(populate(args, shape))
}
