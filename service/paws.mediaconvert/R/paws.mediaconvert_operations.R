#' Permanently remove a job from a queue
#'
#' Permanently remove a job from a queue. Once you have canceled a job, you can't start it again. You can't delete a running job.
#'
#' @param Id The Job ID of the job to be cancelled.
#'
#' @examples
#'
#' @export
cancel_job <- function (Id) 
{
    op <- Operation(name = "CancelJob", http_method = "DELETE", 
        http_path = "/2017-08-29/jobs/{id}", paginator = list())
    input <- cancel_job_input(Id = Id)
    output <- cancel_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Create a new transcoding job
#'
#' Create a new transcoding job. For information about jobs and job settings, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
#'
#' @param Role Required. The IAM role you use for creating this job. For details about permissions, see the User Guide topic at the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html.
#' @param Settings 
#' @param BillingTagsSource 
#' @param ClientRequestToken Idempotency token for CreateJob operation.
#' @param JobTemplate When you create a job, you can either specify a job template or specify the transcoding settings individually
#' @param Queue Optional. When you create a job, you can specify a queue to send it to. If you don't specify, the job will go to the default queue. For more about queues, see the User Guide topic at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html.
#' @param UserMetadata User-defined metadata that you want to associate with an MediaConvert job. You specify metadata in key/value pairs.
#'
#' @examples
#'
#' @export
create_job <- function (Role, Settings, BillingTagsSource = NULL, 
    ClientRequestToken = NULL, JobTemplate = NULL, Queue = NULL, 
    UserMetadata = NULL) 
{
    op <- Operation(name = "CreateJob", http_method = "POST", 
        http_path = "/2017-08-29/jobs", paginator = list())
    input <- create_job_input(Role = Role, Settings = Settings, 
        BillingTagsSource = BillingTagsSource, ClientRequestToken = ClientRequestToken, 
        JobTemplate = JobTemplate, Queue = Queue, UserMetadata = UserMetadata)
    output <- create_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Create a new job template
#'
#' Create a new job template. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
#'
#' @param Settings 
#' @param Name The name of the job template you are creating.
#' @param Category Optional. A category for the job template you are creating
#' @param Description Optional. A description of the job template you are creating.
#' @param Queue Optional. The queue that jobs created from this template are assigned to. If you don't specify this, jobs will go to the default queue.
#' @param Tags The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.
#'
#' @examples
#'
#' @export
create_job_template <- function (Settings, Name, Category = NULL, 
    Description = NULL, Queue = NULL, Tags = NULL) 
{
    op <- Operation(name = "CreateJobTemplate", http_method = "POST", 
        http_path = "/2017-08-29/jobTemplates", paginator = list())
    input <- create_job_template_input(Settings = Settings, Name = Name, 
        Category = Category, Description = Description, Queue = Queue, 
        Tags = Tags)
    output <- create_job_template_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Create a new preset
#'
#' Create a new preset. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
#'
#' @param Settings 
#' @param Name The name of the preset you are creating.
#' @param Category Optional. A category for the preset you are creating.
#' @param Description Optional. A description of the preset you are creating.
#' @param Tags The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.
#'
#' @examples
#'
#' @export
create_preset <- function (Settings, Name, Category = NULL, Description = NULL, 
    Tags = NULL) 
{
    op <- Operation(name = "CreatePreset", http_method = "POST", 
        http_path = "/2017-08-29/presets", paginator = list())
    input <- create_preset_input(Settings = Settings, Name = Name, 
        Category = Category, Description = Description, Tags = Tags)
    output <- create_preset_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Create a new transcoding queue
#'
#' Create a new transcoding queue. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
#'
#' @param Name The name of the queue that you are creating.
#' @param Description Optional. A description of the queue that you are creating.
#' @param PricingPlan Optional; default is on-demand. Specifies whether the pricing plan for the queue is on-demand or reserved. The pricing plan for the queue determines whether you pay on-demand or reserved pricing for the transcoding jobs you run through the queue. For reserved queue pricing, you must set up a contract. You can create a reserved queue contract through the AWS Elemental MediaConvert console.
#' @param ReservationPlanSettings Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues.
#' @param Tags The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.
#'
#' @examples
#'
#' @export
create_queue <- function (Name, Description = NULL, PricingPlan = NULL, 
    ReservationPlanSettings = NULL, Tags = NULL) 
{
    op <- Operation(name = "CreateQueue", http_method = "POST", 
        http_path = "/2017-08-29/queues", paginator = list())
    input <- create_queue_input(Name = Name, Description = Description, 
        PricingPlan = PricingPlan, ReservationPlanSettings = ReservationPlanSettings, 
        Tags = Tags)
    output <- create_queue_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently delete a job template you have created
#'
#' Permanently delete a job template you have created.
#'
#' @param Name The name of the job template to be deleted.
#'
#' @examples
#'
#' @export
delete_job_template <- function (Name) 
{
    op <- Operation(name = "DeleteJobTemplate", http_method = "DELETE", 
        http_path = "/2017-08-29/jobTemplates/{name}", paginator = list())
    input <- delete_job_template_input(Name = Name)
    output <- delete_job_template_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently delete a preset you have created
#'
#' Permanently delete a preset you have created.
#'
#' @param Name The name of the preset to be deleted.
#'
#' @examples
#'
#' @export
delete_preset <- function (Name) 
{
    op <- Operation(name = "DeletePreset", http_method = "DELETE", 
        http_path = "/2017-08-29/presets/{name}", paginator = list())
    input <- delete_preset_input(Name = Name)
    output <- delete_preset_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently delete a queue you have created
#'
#' Permanently delete a queue you have created.
#'
#' @param Name The name of the queue to be deleted.
#'
#' @examples
#'
#' @export
delete_queue <- function (Name) 
{
    op <- Operation(name = "DeleteQueue", http_method = "DELETE", 
        http_path = "/2017-08-29/queues/{name}", paginator = list())
    input <- delete_queue_input(Name = Name)
    output <- delete_queue_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Send an request with an empty body to the regional API endpoint to get your account API endpoint
#'
#' Send an request with an empty body to the regional API endpoint to get your account API endpoint.
#'
#' @param MaxResults Optional. Max number of endpoints, up to twenty, that will be returned at one time.
#' @param Mode 
#' @param NextToken Use this string, provided with the response to a previous request, to request the next batch of endpoints.
#'
#' @examples
#'
#' @export
describe_endpoints <- function (MaxResults = NULL, Mode = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "DescribeEndpoints", http_method = "POST", 
        http_path = "/2017-08-29/endpoints", paginator = list())
    input <- describe_endpoints_input(MaxResults = MaxResults, 
        Mode = Mode, NextToken = NextToken)
    output <- describe_endpoints_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieve the JSON for a specific completed transcoding job
#'
#' Retrieve the JSON for a specific completed transcoding job.
#'
#' @param Id the job ID of the job.
#'
#' @examples
#'
#' @export
get_job <- function (Id) 
{
    op <- Operation(name = "GetJob", http_method = "GET", http_path = "/2017-08-29/jobs/{id}", 
        paginator = list())
    input <- get_job_input(Id = Id)
    output <- get_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieve the JSON for a specific job template
#'
#' Retrieve the JSON for a specific job template.
#'
#' @param Name The name of the job template.
#'
#' @examples
#'
#' @export
get_job_template <- function (Name) 
{
    op <- Operation(name = "GetJobTemplate", http_method = "GET", 
        http_path = "/2017-08-29/jobTemplates/{name}", paginator = list())
    input <- get_job_template_input(Name = Name)
    output <- get_job_template_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieve the JSON for a specific preset
#'
#' Retrieve the JSON for a specific preset.
#'
#' @param Name The name of the preset.
#'
#' @examples
#'
#' @export
get_preset <- function (Name) 
{
    op <- Operation(name = "GetPreset", http_method = "GET", 
        http_path = "/2017-08-29/presets/{name}", paginator = list())
    input <- get_preset_input(Name = Name)
    output <- get_preset_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieve the JSON for a specific queue
#'
#' Retrieve the JSON for a specific queue.
#'
#' @param Name The name of the queue that you want information about.
#'
#' @examples
#'
#' @export
get_queue <- function (Name) 
{
    op <- Operation(name = "GetQueue", http_method = "GET", http_path = "/2017-08-29/queues/{name}", 
        paginator = list())
    input <- get_queue_input(Name = Name)
    output <- get_queue_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieve a JSON array of up to twenty of your job templates
#'
#' Retrieve a JSON array of up to twenty of your job templates. This will return the templates themselves, not just a list of them. To retrieve the next twenty templates, use the nextToken string returned with the array
#'
#' @param Category Optionally, specify a job template category to limit responses to only job templates from that category.
#' @param ListBy 
#' @param MaxResults Optional. Number of job templates, up to twenty, that will be returned at one time.
#' @param NextToken Use this string, provided with the response to a previous request, to request the next batch of job templates.
#' @param Order 
#'
#' @examples
#'
#' @export
list_job_templates <- function (Category = NULL, ListBy = NULL, 
    MaxResults = NULL, NextToken = NULL, Order = NULL) 
{
    op <- Operation(name = "ListJobTemplates", http_method = "GET", 
        http_path = "/2017-08-29/jobTemplates", paginator = list())
    input <- list_job_templates_input(Category = Category, ListBy = ListBy, 
        MaxResults = MaxResults, NextToken = NextToken, Order = Order)
    output <- list_job_templates_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieve a JSON array of up to twenty of your most recently created jobs
#'
#' Retrieve a JSON array of up to twenty of your most recently created jobs. This array includes in-process, completed, and errored jobs. This will return the jobs themselves, not just a list of the jobs. To retrieve the twenty next most recent jobs, use the nextToken string returned with the array.
#'
#' @param MaxResults Optional. Number of jobs, up to twenty, that will be returned at one time.
#' @param NextToken Use this string, provided with the response to a previous request, to request the next batch of jobs.
#' @param Order 
#' @param Queue Provide a queue name to get back only jobs from that queue.
#' @param Status 
#'
#' @examples
#'
#' @export
list_jobs <- function (MaxResults = NULL, NextToken = NULL, Order = NULL, 
    Queue = NULL, Status = NULL) 
{
    op <- Operation(name = "ListJobs", http_method = "GET", http_path = "/2017-08-29/jobs", 
        paginator = list())
    input <- list_jobs_input(MaxResults = MaxResults, NextToken = NextToken, 
        Order = Order, Queue = Queue, Status = Status)
    output <- list_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieve a JSON array of up to twenty of your presets
#'
#' Retrieve a JSON array of up to twenty of your presets. This will return the presets themselves, not just a list of them. To retrieve the next twenty presets, use the nextToken string returned with the array.
#'
#' @param Category Optionally, specify a preset category to limit responses to only presets from that category.
#' @param ListBy 
#' @param MaxResults Optional. Number of presets, up to twenty, that will be returned at one time
#' @param NextToken Use this string, provided with the response to a previous request, to request the next batch of presets.
#' @param Order 
#'
#' @examples
#'
#' @export
list_presets <- function (Category = NULL, ListBy = NULL, MaxResults = NULL, 
    NextToken = NULL, Order = NULL) 
{
    op <- Operation(name = "ListPresets", http_method = "GET", 
        http_path = "/2017-08-29/presets", paginator = list())
    input <- list_presets_input(Category = Category, ListBy = ListBy, 
        MaxResults = MaxResults, NextToken = NextToken, Order = Order)
    output <- list_presets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieve a JSON array of up to twenty of your queues
#'
#' Retrieve a JSON array of up to twenty of your queues. This will return the queues themselves, not just a list of them. To retrieve the next twenty queues, use the nextToken string returned with the array.
#'
#' @param ListBy 
#' @param MaxResults Optional. Number of queues, up to twenty, that will be returned at one time.
#' @param NextToken Use this string, provided with the response to a previous request, to request the next batch of queues.
#' @param Order 
#'
#' @examples
#'
#' @export
list_queues <- function (ListBy = NULL, MaxResults = NULL, NextToken = NULL, 
    Order = NULL) 
{
    op <- Operation(name = "ListQueues", http_method = "GET", 
        http_path = "/2017-08-29/queues", paginator = list())
    input <- list_queues_input(ListBy = ListBy, MaxResults = MaxResults, 
        NextToken = NextToken, Order = Order)
    output <- list_queues_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieve the tags for a MediaConvert resource
#'
#' Retrieve the tags for a MediaConvert resource.
#'
#' @param Arn The Amazon Resource Name (ARN) of the resource that you want to list tags for. To get the ARN, send a GET request with the resource name.
#'
#' @examples
#'
#' @export
list_tags_for_resource <- function (Arn) 
{
    op <- Operation(name = "ListTagsForResource", http_method = "GET", 
        http_path = "/2017-08-29/tags/{arn}", paginator = list())
    input <- list_tags_for_resource_input(Arn = Arn)
    output <- list_tags_for_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Add tags to a MediaConvert queue, preset, or job template
#'
#' Add tags to a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
#'
#' @param Arn The Amazon Resource Name (ARN) of the resource that you want to tag. To get the ARN, send a GET request with the resource name.
#' @param Tags The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.
#'
#' @examples
#'
#' @export
tag_resource <- function (Arn, Tags) 
{
    op <- Operation(name = "TagResource", http_method = "POST", 
        http_path = "/2017-08-29/tags", paginator = list())
    input <- tag_resource_input(Arn = Arn, Tags = Tags)
    output <- tag_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Remove tags from a MediaConvert queue, preset, or job template
#'
#' Remove tags from a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
#'
#' @param Arn The Amazon Resource Name (ARN) of the resource that you want to remove tags from. To get the ARN, send a GET request with the resource name.
#' @param TagKeys The keys of the tags that you want to remove from the resource.
#'
#' @examples
#'
#' @export
untag_resource <- function (Arn, TagKeys = NULL) 
{
    op <- Operation(name = "UntagResource", http_method = "PUT", 
        http_path = "/2017-08-29/tags/{arn}", paginator = list())
    input <- untag_resource_input(Arn = Arn, TagKeys = TagKeys)
    output <- untag_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modify one of your existing job templates
#'
#' Modify one of your existing job templates.
#'
#' @param Name The name of the job template you are modifying
#' @param Category The new category for the job template, if you are changing it.
#' @param Description The new description for the job template, if you are changing it.
#' @param Queue The new queue for the job template, if you are changing it.
#' @param Settings 
#'
#' @examples
#'
#' @export
update_job_template <- function (Name, Category = NULL, Description = NULL, 
    Queue = NULL, Settings = NULL) 
{
    op <- Operation(name = "UpdateJobTemplate", http_method = "PUT", 
        http_path = "/2017-08-29/jobTemplates/{name}", paginator = list())
    input <- update_job_template_input(Name = Name, Category = Category, 
        Description = Description, Queue = Queue, Settings = Settings)
    output <- update_job_template_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modify one of your existing presets
#'
#' Modify one of your existing presets.
#'
#' @param Name The name of the preset you are modifying.
#' @param Category The new category for the preset, if you are changing it.
#' @param Description The new description for the preset, if you are changing it.
#' @param Settings 
#'
#' @examples
#'
#' @export
update_preset <- function (Name, Category = NULL, Description = NULL, 
    Settings = NULL) 
{
    op <- Operation(name = "UpdatePreset", http_method = "PUT", 
        http_path = "/2017-08-29/presets/{name}", paginator = list())
    input <- update_preset_input(Name = Name, Category = Category, 
        Description = Description, Settings = Settings)
    output <- update_preset_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modify one of your existing queues
#'
#' Modify one of your existing queues.
#'
#' @param Name The name of the queue that you are modifying.
#' @param Description The new description for the queue, if you are changing it.
#' @param ReservationPlanSettings Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues.
#' @param Status Pause or activate a queue by changing its status between ACTIVE and PAUSED. If you pause a queue, jobs in that queue won't begin. Jobs that are running when you pause the queue continue to run until they finish or result in an error.
#'
#' @examples
#'
#' @export
update_queue <- function (Name, Description = NULL, ReservationPlanSettings = NULL, 
    Status = NULL) 
{
    op <- Operation(name = "UpdateQueue", http_method = "PUT", 
        http_path = "/2017-08-29/queues/{name}", paginator = list())
    input <- update_queue_input(Name = Name, Description = Description, 
        ReservationPlanSettings = ReservationPlanSettings, Status = Status)
    output <- update_queue_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
