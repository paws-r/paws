cancel_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string"), APIVersion = structure(logical(0), 
        shape = "APIVersion", type = "string")), shape = "CancelJobInput", 
        type = "structure")
    return(populate(args, shape))
}

cancel_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Success = structure(logical(0), shape = "Success", 
        type = "boolean")), shape = "CancelJobOutput", type = "structure")
    return(populate(args, shape))
}

create_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobType = structure(logical(0), shape = "JobType", 
        type = "string"), Manifest = structure(logical(0), shape = "Manifest", 
        type = "string"), ManifestAddendum = structure(logical(0), 
        shape = "ManifestAddendum", type = "string"), ValidateOnly = structure(logical(0), 
        shape = "ValidateOnly", type = "boolean"), APIVersion = structure(logical(0), 
        shape = "APIVersion", type = "string")), shape = "CreateJobInput", 
        type = "structure")
    return(populate(args, shape))
}

create_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string"), JobType = structure(logical(0), shape = "JobType", 
        type = "string"), Signature = structure(logical(0), shape = "Signature", 
        type = "string"), SignatureFileContents = structure(logical(0), 
        shape = "SignatureFileContents", type = "string"), WarningMessage = structure(logical(0), 
        shape = "WarningMessage", type = "string"), ArtifactList = structure(list(structure(list(Description = structure(logical(0), 
        shape = "Description", type = "string"), URL = structure(logical(0), 
        shape = "URL", type = "string")), shape = "Artifact", 
        type = "structure")), shape = "ArtifactList", type = "list")), 
        shape = "CreateJobOutput", type = "structure")
    return(populate(args, shape))
}

get_shipping_label_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobIds = structure(list(structure(logical(0), 
        shape = "GenericString", type = "string")), shape = "JobIdList", 
        type = "list", locationName = "jobIds"), Name = structure(logical(0), 
        shape = "name", type = "string", locationName = "name"), 
        Company = structure(logical(0), shape = "company", type = "string", 
            locationName = "company"), PhoneNumber = structure(logical(0), 
            shape = "phoneNumber", type = "string", locationName = "phoneNumber"), 
        Country = structure(logical(0), shape = "country", type = "string", 
            locationName = "country"), StateOrProvince = structure(logical(0), 
            shape = "stateOrProvince", type = "string", locationName = "stateOrProvince"), 
        City = structure(logical(0), shape = "city", type = "string", 
            locationName = "city"), PostalCode = structure(logical(0), 
            shape = "postalCode", type = "string", locationName = "postalCode"), 
        Street1 = structure(logical(0), shape = "street1", type = "string", 
            locationName = "street1"), Street2 = structure(logical(0), 
            shape = "street2", type = "string", locationName = "street2"), 
        Street3 = structure(logical(0), shape = "street3", type = "string", 
            locationName = "street3"), APIVersion = structure(logical(0), 
            shape = "APIVersion", type = "string")), shape = "GetShippingLabelInput", 
        type = "structure")
    return(populate(args, shape))
}

get_shipping_label_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ShippingLabelURL = structure(logical(0), 
        shape = "GenericString", type = "string"), Warning = structure(logical(0), 
        shape = "GenericString", type = "string")), shape = "GetShippingLabelOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string"), APIVersion = structure(logical(0), 
        shape = "APIVersion", type = "string")), shape = "GetStatusInput", 
        type = "structure")
    return(populate(args, shape))
}

get_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string"), JobType = structure(logical(0), shape = "JobType", 
        type = "string"), LocationCode = structure(logical(0), 
        shape = "LocationCode", type = "string"), LocationMessage = structure(logical(0), 
        shape = "LocationMessage", type = "string"), ProgressCode = structure(logical(0), 
        shape = "ProgressCode", type = "string"), ProgressMessage = structure(logical(0), 
        shape = "ProgressMessage", type = "string"), Carrier = structure(logical(0), 
        shape = "Carrier", type = "string"), TrackingNumber = structure(logical(0), 
        shape = "TrackingNumber", type = "string"), LogBucket = structure(logical(0), 
        shape = "LogBucket", type = "string"), LogKey = structure(logical(0), 
        shape = "LogKey", type = "string"), ErrorCount = structure(logical(0), 
        shape = "ErrorCount", type = "integer"), Signature = structure(logical(0), 
        shape = "Signature", type = "string"), SignatureFileContents = structure(logical(0), 
        shape = "Signature", type = "string"), CurrentManifest = structure(logical(0), 
        shape = "CurrentManifest", type = "string"), CreationDate = structure(logical(0), 
        shape = "CreationDate", type = "timestamp"), ArtifactList = structure(list(structure(list(Description = structure(logical(0), 
        shape = "Description", type = "string"), URL = structure(logical(0), 
        shape = "URL", type = "string")), shape = "Artifact", 
        type = "structure")), shape = "ArtifactList", type = "list")), 
        shape = "GetStatusOutput", type = "structure")
    return(populate(args, shape))
}

list_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxJobs = structure(logical(0), shape = "MaxJobs", 
        type = "integer"), Marker = structure(logical(0), shape = "Marker", 
        type = "string"), APIVersion = structure(logical(0), 
        shape = "APIVersion", type = "string")), shape = "ListJobsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Jobs = structure(list(structure(list(JobId = structure(logical(0), 
        shape = "JobId", type = "string"), CreationDate = structure(logical(0), 
        shape = "CreationDate", type = "timestamp"), IsCanceled = structure(logical(0), 
        shape = "IsCanceled", type = "boolean"), JobType = structure(logical(0), 
        shape = "JobType", type = "string")), shape = "Job", 
        type = "structure")), shape = "JobsList", type = "list"), 
        IsTruncated = structure(logical(0), shape = "IsTruncated", 
            type = "boolean")), shape = "ListJobsOutput", type = "structure")
    return(populate(args, shape))
}

update_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string"), Manifest = structure(logical(0), shape = "Manifest", 
        type = "string"), JobType = structure(logical(0), shape = "JobType", 
        type = "string"), ValidateOnly = structure(logical(0), 
        shape = "ValidateOnly", type = "boolean"), APIVersion = structure(logical(0), 
        shape = "APIVersion", type = "string")), shape = "UpdateJobInput", 
        type = "structure")
    return(populate(args, shape))
}

update_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Success = structure(logical(0), shape = "Success", 
        type = "boolean"), WarningMessage = structure(logical(0), 
        shape = "WarningMessage", type = "string"), ArtifactList = structure(list(structure(list(Description = structure(logical(0), 
        shape = "Description", type = "string"), URL = structure(logical(0), 
        shape = "URL", type = "string")), shape = "Artifact", 
        type = "structure")), shape = "ArtifactList", type = "list")), 
        shape = "UpdateJobOutput", type = "structure")
    return(populate(args, shape))
}
