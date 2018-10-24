#' This operation cancels a specified job
#'
#' This operation cancels a specified job. Only the job owner can cancel it. The operation fails if the job has already started or is complete.
#'
#' @param JobId 
#' @param APIVersion 
#'
#' @examples
#'
#' @export
cancel_job <- function (JobId, APIVersion = NULL) 
{
    op <- Operation(name = "CancelJob", http_method = "POST", 
        http_path = "/?Operation=CancelJob", paginator = list())
    input <- cancel_job_input(JobId = JobId, APIVersion = APIVersion)
    output <- cancel_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation initiates the process of scheduling an upload or download of your data
#'
#' This operation initiates the process of scheduling an upload or download of your data. You include in the request a manifest that describes the data transfer specifics. The response to the request includes a job ID, which you can use in other operations, a signature that you use to identify your storage device, and the address where you should ship your storage device.
#'
#' @param JobType 
#' @param Manifest 
#' @param ValidateOnly 
#' @param ManifestAddendum 
#' @param APIVersion 
#'
#' @examples
#'
#' @export
create_job <- function (JobType, Manifest, ValidateOnly, ManifestAddendum = NULL, 
    APIVersion = NULL) 
{
    op <- Operation(name = "CreateJob", http_method = "POST", 
        http_path = "/?Operation=CreateJob", paginator = list())
    input <- create_job_input(JobType = JobType, Manifest = Manifest, 
        ValidateOnly = ValidateOnly, ManifestAddendum = ManifestAddendum, 
        APIVersion = APIVersion)
    output <- create_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation generates a pre-paid UPS shipping label that you will use to ship your device to AWS for processing
#'
#' This operation generates a pre-paid UPS shipping label that you will use to ship your device to AWS for processing.
#'
#' @param jobIds 
#' @param name 
#' @param company 
#' @param phoneNumber 
#' @param country 
#' @param stateOrProvince 
#' @param city 
#' @param postalCode 
#' @param street1 
#' @param street2 
#' @param street3 
#' @param APIVersion 
#'
#' @examples
#'
#' @export
get_shipping_label <- function (jobIds, name = NULL, company = NULL, 
    phoneNumber = NULL, country = NULL, stateOrProvince = NULL, 
    city = NULL, postalCode = NULL, street1 = NULL, street2 = NULL, 
    street3 = NULL, APIVersion = NULL) 
{
    op <- Operation(name = "GetShippingLabel", http_method = "POST", 
        http_path = "/?Operation=GetShippingLabel", paginator = list())
    input <- get_shipping_label_input(jobIds = jobIds, name = name, 
        company = company, phoneNumber = phoneNumber, country = country, 
        stateOrProvince = stateOrProvince, city = city, postalCode = postalCode, 
        street1 = street1, street2 = street2, street3 = street3, 
        APIVersion = APIVersion)
    output <- get_shipping_label_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation returns information about a job, including where the job is in the processing pipeline, the status of the results, and the signature value associated with the job
#'
#' This operation returns information about a job, including where the job is in the processing pipeline, the status of the results, and the signature value associated with the job. You can only return information about jobs you own.
#'
#' @param JobId 
#' @param APIVersion 
#'
#' @examples
#'
#' @export
get_status <- function (JobId, APIVersion = NULL) 
{
    op <- Operation(name = "GetStatus", http_method = "POST", 
        http_path = "/?Operation=GetStatus", paginator = list())
    input <- get_status_input(JobId = JobId, APIVersion = APIVersion)
    output <- get_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This operation returns the jobs associated with the requester
#'
#' This operation returns the jobs associated with the requester. AWS Import/Export lists the jobs in reverse chronological order based on the date of creation. For example if Job Test1 was created 2009Dec30 and Test2 was created 2010Feb05, the ListJobs operation would return Test2 followed by Test1.
#'
#' @param MaxJobs 
#' @param Marker 
#' @param APIVersion 
#'
#' @examples
#'
#' @export
list_jobs <- function (MaxJobs = NULL, Marker = NULL, APIVersion = NULL) 
{
    op <- Operation(name = "ListJobs", http_method = "POST", 
        http_path = "/?Operation=ListJobs", paginator = list())
    input <- list_jobs_input(MaxJobs = MaxJobs, Marker = Marker, 
        APIVersion = APIVersion)
    output <- list_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' You use this operation to change the parameters specified in the original manifest file by supplying a new manifest file
#'
#' You use this operation to change the parameters specified in the original manifest file by supplying a new manifest file. The manifest file attached to this request replaces the original manifest file. You can only use the operation after a CreateJob request but before the data transfer starts and you can only use it on jobs you own.
#'
#' @param JobId 
#' @param Manifest 
#' @param JobType 
#' @param ValidateOnly 
#' @param APIVersion 
#'
#' @examples
#'
#' @export
update_job <- function (JobId, Manifest, JobType, ValidateOnly, 
    APIVersion = NULL) 
{
    op <- Operation(name = "UpdateJob", http_method = "POST", 
        http_path = "/?Operation=UpdateJob", paginator = list())
    input <- update_job_input(JobId = JobId, Manifest = Manifest, 
        JobType = JobType, ValidateOnly = ValidateOnly, APIVersion = APIVersion)
    output <- update_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
