activate_pipeline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineId = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "pipelineId"), ParameterValues = structure(list(structure(list(Id = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "id"), StringValue = structure(logical(0), 
        shape = "fieldStringValue", type = "string", min = 0L, 
        max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "stringValue")), shape = "ParameterValue", 
        type = "structure")), shape = "ParameterValueList", type = "list", 
        locationName = "parameterValues"), StartTimestamp = structure(logical(0), 
        shape = "timestamp", type = "timestamp", locationName = "startTimestamp")), 
        shape = "ActivatePipelineInput", type = "structure")
    return(populate(args, shape))
}

activate_pipeline_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ActivatePipelineOutput", 
        type = "structure")
    return(populate(args, shape))
}

add_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineId = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "pipelineId"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "tagKey", type = "string", min = 1L, max = 128L, 
        locationName = "key"), Value = structure(logical(0), 
        shape = "tagValue", type = "string", min = 0L, max = 256L, 
        locationName = "value")), shape = "Tag", type = "structure")), 
        shape = "tagList", type = "list", min = 0L, max = 10L, 
        locationName = "tags")), shape = "AddTagsInput", type = "structure")
    return(populate(args, shape))
}

add_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AddTagsOutput", type = "structure")
    return(populate(args, shape))
}

create_pipeline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "id", 
        type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "name"), UniqueId = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "uniqueId"), Description = structure(logical(0), 
        shape = "string", type = "string", min = 0L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "description"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "tagKey", type = "string", min = 1L, max = 128L, 
        locationName = "key"), Value = structure(logical(0), 
        shape = "tagValue", type = "string", min = 0L, max = 256L, 
        locationName = "value")), shape = "Tag", type = "structure")), 
        shape = "tagList", type = "list", min = 0L, max = 10L, 
        locationName = "tags")), shape = "CreatePipelineInput", 
        type = "structure")
    return(populate(args, shape))
}

create_pipeline_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineId = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "pipelineId")), shape = "CreatePipelineOutput", 
        type = "structure")
    return(populate(args, shape))
}

deactivate_pipeline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineId = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "pipelineId"), CancelActive = structure(logical(0), 
        shape = "cancelActive", type = "boolean", locationName = "cancelActive")), 
        shape = "DeactivatePipelineInput", type = "structure")
    return(populate(args, shape))
}

deactivate_pipeline_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeactivatePipelineOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_pipeline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineId = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "pipelineId")), shape = "DeletePipelineInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_pipeline_output <- function () 
{
    return(list())
}

describe_objects_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineId = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "pipelineId"), ObjectIds = structure(list(structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "idList", type = "list", locationName = "objectIds"), 
        EvaluateExpressions = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "evaluateExpressions"), 
        Marker = structure(logical(0), shape = "string", type = "string", 
            min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
            locationName = "marker")), shape = "DescribeObjectsInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_objects_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineObjects = structure(list(structure(list(Id = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "id"), Name = structure(logical(0), shape = "id", 
        type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "name"), Fields = structure(list(structure(list(Key = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "key"), StringValue = structure(logical(0), 
        shape = "fieldStringValue", type = "string", min = 0L, 
        max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "stringValue"), RefValue = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "refValue")), shape = "Field", type = "structure")), 
        shape = "fieldList", type = "list", locationName = "fields")), 
        shape = "PipelineObject", type = "structure")), shape = "PipelineObjectList", 
        type = "list", locationName = "pipelineObjects"), Marker = structure(logical(0), 
        shape = "string", type = "string", min = 0L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "marker"), HasMoreResults = structure(logical(0), 
        shape = "boolean", type = "boolean", locationName = "hasMoreResults")), 
        shape = "DescribeObjectsOutput", type = "structure")
    return(populate(args, shape))
}

describe_pipelines_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineIds = structure(list(structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "idList", type = "list", locationName = "pipelineIds")), 
        shape = "DescribePipelinesInput", type = "structure")
    return(populate(args, shape))
}

describe_pipelines_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineDescriptionList = structure(list(structure(list(PipelineId = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "pipelineId"), Name = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "name"), Fields = structure(list(structure(list(Key = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "key"), StringValue = structure(logical(0), 
        shape = "fieldStringValue", type = "string", min = 0L, 
        max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "stringValue"), RefValue = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "refValue")), shape = "Field", type = "structure")), 
        shape = "fieldList", type = "list", locationName = "fields"), 
        Description = structure(logical(0), shape = "string", 
            type = "string", min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
            locationName = "description"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "tagKey", type = "string", min = 1L, max = 128L, 
            locationName = "key"), Value = structure(logical(0), 
            shape = "tagValue", type = "string", min = 0L, max = 256L, 
            locationName = "value")), shape = "Tag", type = "structure")), 
            shape = "tagList", type = "list", min = 0L, max = 10L, 
            locationName = "tags")), shape = "PipelineDescription", 
        type = "structure")), shape = "PipelineDescriptionList", 
        type = "list", locationName = "pipelineDescriptionList")), 
        shape = "DescribePipelinesOutput", type = "structure")
    return(populate(args, shape))
}

evaluate_expression_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineId = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "pipelineId"), ObjectId = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "objectId"), Expression = structure(logical(0), 
        shape = "longString", type = "string", min = 0L, max = 20971520L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "expression")), shape = "EvaluateExpressionInput", 
        type = "structure")
    return(populate(args, shape))
}

evaluate_expression_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EvaluatedExpression = structure(logical(0), 
        shape = "longString", type = "string", min = 0L, max = 20971520L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "evaluatedExpression")), shape = "EvaluateExpressionOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_pipeline_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineId = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "pipelineId"), Version = structure(logical(0), 
        shape = "string", type = "string", min = 0L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "version")), shape = "GetPipelineDefinitionInput", 
        type = "structure")
    return(populate(args, shape))
}

get_pipeline_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineObjects = structure(list(structure(list(Id = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "id"), Name = structure(logical(0), shape = "id", 
        type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "name"), Fields = structure(list(structure(list(Key = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "key"), StringValue = structure(logical(0), 
        shape = "fieldStringValue", type = "string", min = 0L, 
        max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "stringValue"), RefValue = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "refValue")), shape = "Field", type = "structure")), 
        shape = "fieldList", type = "list", locationName = "fields")), 
        shape = "PipelineObject", type = "structure")), shape = "PipelineObjectList", 
        type = "list", locationName = "pipelineObjects"), ParameterObjects = structure(list(structure(list(Id = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "id"), Attributes = structure(list(structure(list(Key = structure(logical(0), 
        shape = "attributeNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "key"), StringValue = structure(logical(0), 
        shape = "attributeValueString", type = "string", min = 0L, 
        max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "stringValue")), shape = "ParameterAttribute", 
        type = "structure")), shape = "ParameterAttributeList", 
        type = "list", locationName = "attributes")), shape = "ParameterObject", 
        type = "structure")), shape = "ParameterObjectList", 
        type = "list", locationName = "parameterObjects"), ParameterValues = structure(list(structure(list(Id = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "id"), StringValue = structure(logical(0), 
        shape = "fieldStringValue", type = "string", min = 0L, 
        max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "stringValue")), shape = "ParameterValue", 
        type = "structure")), shape = "ParameterValueList", type = "list", 
        locationName = "parameterValues")), shape = "GetPipelineDefinitionOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_pipelines_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "string", 
        type = "string", min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "marker")), shape = "ListPipelinesInput", 
        type = "structure")
    return(populate(args, shape))
}

list_pipelines_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineIdList = structure(list(structure(list(Id = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "id"), Name = structure(logical(0), shape = "id", 
        type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "name")), shape = "PipelineIdName", type = "structure")), 
        shape = "pipelineList", type = "list", locationName = "pipelineIdList"), 
        Marker = structure(logical(0), shape = "string", type = "string", 
            min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
            locationName = "marker"), HasMoreResults = structure(logical(0), 
            shape = "boolean", type = "boolean", locationName = "hasMoreResults")), 
        shape = "ListPipelinesOutput", type = "structure")
    return(populate(args, shape))
}

poll_for_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WorkerGroup = structure(logical(0), 
        shape = "string", type = "string", min = 0L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "workerGroup"), Hostname = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "hostname"), InstanceIdentity = structure(list(Document = structure(logical(0), 
        shape = "string", type = "string", min = 0L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "document"), Signature = structure(logical(0), 
        shape = "string", type = "string", min = 0L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "signature")), shape = "InstanceIdentity", 
        type = "structure", locationName = "instanceIdentity")), 
        shape = "PollForTaskInput", type = "structure")
    return(populate(args, shape))
}

poll_for_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskObject = structure(list(TaskId = structure(logical(0), 
        shape = "taskId", type = "string", min = 1L, max = 2048L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "taskId"), PipelineId = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "pipelineId"), AttemptId = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "attemptId"), Objects = structure(list(structure(list(Id = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "id"), Name = structure(logical(0), shape = "id", 
        type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "name"), Fields = structure(list(structure(list(Key = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "key"), StringValue = structure(logical(0), 
        shape = "fieldStringValue", type = "string", min = 0L, 
        max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "stringValue"), RefValue = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "refValue")), shape = "Field", type = "structure")), 
        shape = "fieldList", type = "list", locationName = "fields")), 
        shape = "PipelineObject", type = "structure")), shape = "PipelineObjectMap", 
        type = "map", locationName = "objects")), shape = "TaskObject", 
        type = "structure", locationName = "taskObject")), shape = "PollForTaskOutput", 
        type = "structure")
    return(populate(args, shape))
}

put_pipeline_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineId = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "pipelineId"), PipelineObjects = structure(list(structure(list(Id = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "id"), Name = structure(logical(0), shape = "id", 
        type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "name"), Fields = structure(list(structure(list(Key = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "key"), StringValue = structure(logical(0), 
        shape = "fieldStringValue", type = "string", min = 0L, 
        max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "stringValue"), RefValue = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "refValue")), shape = "Field", type = "structure")), 
        shape = "fieldList", type = "list", locationName = "fields")), 
        shape = "PipelineObject", type = "structure")), shape = "PipelineObjectList", 
        type = "list", locationName = "pipelineObjects"), ParameterObjects = structure(list(structure(list(Id = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "id"), Attributes = structure(list(structure(list(Key = structure(logical(0), 
        shape = "attributeNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "key"), StringValue = structure(logical(0), 
        shape = "attributeValueString", type = "string", min = 0L, 
        max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "stringValue")), shape = "ParameterAttribute", 
        type = "structure")), shape = "ParameterAttributeList", 
        type = "list", locationName = "attributes")), shape = "ParameterObject", 
        type = "structure")), shape = "ParameterObjectList", 
        type = "list", locationName = "parameterObjects"), ParameterValues = structure(list(structure(list(Id = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "id"), StringValue = structure(logical(0), 
        shape = "fieldStringValue", type = "string", min = 0L, 
        max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "stringValue")), shape = "ParameterValue", 
        type = "structure")), shape = "ParameterValueList", type = "list", 
        locationName = "parameterValues")), shape = "PutPipelineDefinitionInput", 
        type = "structure")
    return(populate(args, shape))
}

put_pipeline_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ValidationErrors = structure(list(structure(list(Id = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "id"), Errors = structure(list(structure(logical(0), 
        shape = "validationMessage", type = "string", min = 0L, 
        max = 10000L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "validationMessages", type = "list", locationName = "errors")), 
        shape = "ValidationError", type = "structure")), shape = "ValidationErrors", 
        type = "list", locationName = "validationErrors"), ValidationWarnings = structure(list(structure(list(Id = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "id"), Warnings = structure(list(structure(logical(0), 
        shape = "validationMessage", type = "string", min = 0L, 
        max = 10000L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "validationMessages", type = "list", locationName = "warnings")), 
        shape = "ValidationWarning", type = "structure")), shape = "ValidationWarnings", 
        type = "list", locationName = "validationWarnings"), 
        Errored = structure(logical(0), shape = "boolean", type = "boolean", 
            locationName = "errored")), shape = "PutPipelineDefinitionOutput", 
        type = "structure")
    return(populate(args, shape))
}

query_objects_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineId = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "pipelineId"), Query = structure(list(Selectors = structure(list(structure(list(FieldName = structure(logical(0), 
        shape = "string", type = "string", min = 0L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "fieldName"), Operator = structure(list(Type = structure(logical(0), 
        shape = "OperatorType", type = "string", locationName = "type"), 
        Values = structure(list(structure(logical(0), shape = "string", 
            type = "string", min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "stringList", type = "list", locationName = "values")), 
        shape = "Operator", type = "structure", locationName = "operator")), 
        shape = "Selector", type = "structure")), shape = "SelectorList", 
        type = "list", locationName = "selectors")), shape = "Query", 
        type = "structure", locationName = "query"), Sphere = structure(logical(0), 
        shape = "string", type = "string", min = 0L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "sphere"), Marker = structure(logical(0), 
        shape = "string", type = "string", min = 0L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "marker"), Limit = structure(logical(0), 
        shape = "int", type = "integer", locationName = "limit")), 
        shape = "QueryObjectsInput", type = "structure")
    return(populate(args, shape))
}

query_objects_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Ids = structure(list(structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "idList", type = "list", locationName = "ids"), 
        Marker = structure(logical(0), shape = "string", type = "string", 
            min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
            locationName = "marker"), HasMoreResults = structure(logical(0), 
            shape = "boolean", type = "boolean", locationName = "hasMoreResults")), 
        shape = "QueryObjectsOutput", type = "structure")
    return(populate(args, shape))
}

remove_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineId = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "pipelineId"), TagKeys = structure(list(structure(logical(0), 
        shape = "string", type = "string", min = 0L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "stringList", type = "list", locationName = "tagKeys")), 
        shape = "RemoveTagsInput", type = "structure")
    return(populate(args, shape))
}

remove_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RemoveTagsOutput", type = "structure")
    return(populate(args, shape))
}

report_task_progress_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskId = structure(logical(0), shape = "taskId", 
        type = "string", min = 1L, max = 2048L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "taskId"), Fields = structure(list(structure(list(Key = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "key"), StringValue = structure(logical(0), 
        shape = "fieldStringValue", type = "string", min = 0L, 
        max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "stringValue"), RefValue = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "refValue")), shape = "Field", type = "structure")), 
        shape = "fieldList", type = "list", locationName = "fields")), 
        shape = "ReportTaskProgressInput", type = "structure")
    return(populate(args, shape))
}

report_task_progress_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Canceled = structure(logical(0), 
        shape = "boolean", type = "boolean", locationName = "canceled")), 
        shape = "ReportTaskProgressOutput", type = "structure")
    return(populate(args, shape))
}

report_task_runner_heartbeat_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskrunnerId = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "taskrunnerId"), WorkerGroup = structure(logical(0), 
        shape = "string", type = "string", min = 0L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "workerGroup"), Hostname = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "hostname")), shape = "ReportTaskRunnerHeartbeatInput", 
        type = "structure")
    return(populate(args, shape))
}

report_task_runner_heartbeat_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Terminate = structure(logical(0), 
        shape = "boolean", type = "boolean", locationName = "terminate")), 
        shape = "ReportTaskRunnerHeartbeatOutput", type = "structure")
    return(populate(args, shape))
}

set_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineId = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "pipelineId"), ObjectIds = structure(list(structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "idList", type = "list", locationName = "objectIds"), 
        Status = structure(logical(0), shape = "string", type = "string", 
            min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
            locationName = "status")), shape = "SetStatusInput", 
        type = "structure")
    return(populate(args, shape))
}

set_status_output <- function () 
{
    return(list())
}

set_task_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskId = structure(logical(0), shape = "taskId", 
        type = "string", min = 1L, max = 2048L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "taskId"), TaskStatus = structure(logical(0), 
        shape = "TaskStatus", type = "string", locationName = "taskStatus"), 
        ErrorId = structure(logical(0), shape = "string", type = "string", 
            min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
            locationName = "errorId"), ErrorMessage = structure(logical(0), 
            shape = "errorMessage", type = "string", locationName = "errorMessage"), 
        ErrorStackTrace = structure(logical(0), shape = "string", 
            type = "string", min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
            locationName = "errorStackTrace")), shape = "SetTaskStatusInput", 
        type = "structure")
    return(populate(args, shape))
}

set_task_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SetTaskStatusOutput", 
        type = "structure")
    return(populate(args, shape))
}

validate_pipeline_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineId = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "pipelineId"), PipelineObjects = structure(list(structure(list(Id = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "id"), Name = structure(logical(0), shape = "id", 
        type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "name"), Fields = structure(list(structure(list(Key = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "key"), StringValue = structure(logical(0), 
        shape = "fieldStringValue", type = "string", min = 0L, 
        max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "stringValue"), RefValue = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "refValue")), shape = "Field", type = "structure")), 
        shape = "fieldList", type = "list", locationName = "fields")), 
        shape = "PipelineObject", type = "structure")), shape = "PipelineObjectList", 
        type = "list", locationName = "pipelineObjects"), ParameterObjects = structure(list(structure(list(Id = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "id"), Attributes = structure(list(structure(list(Key = structure(logical(0), 
        shape = "attributeNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "key"), StringValue = structure(logical(0), 
        shape = "attributeValueString", type = "string", min = 0L, 
        max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "stringValue")), shape = "ParameterAttribute", 
        type = "structure")), shape = "ParameterAttributeList", 
        type = "list", locationName = "attributes")), shape = "ParameterObject", 
        type = "structure")), shape = "ParameterObjectList", 
        type = "list", locationName = "parameterObjects"), ParameterValues = structure(list(structure(list(Id = structure(logical(0), 
        shape = "fieldNameString", type = "string", min = 1L, 
        max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "id"), StringValue = structure(logical(0), 
        shape = "fieldStringValue", type = "string", min = 0L, 
        max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "stringValue")), shape = "ParameterValue", 
        type = "structure")), shape = "ParameterValueList", type = "list", 
        locationName = "parameterValues")), shape = "ValidatePipelineDefinitionInput", 
        type = "structure")
    return(populate(args, shape))
}

validate_pipeline_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ValidationErrors = structure(list(structure(list(Id = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "id"), Errors = structure(list(structure(logical(0), 
        shape = "validationMessage", type = "string", min = 0L, 
        max = 10000L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "validationMessages", type = "list", locationName = "errors")), 
        shape = "ValidationError", type = "structure")), shape = "ValidationErrors", 
        type = "list", locationName = "validationErrors"), ValidationWarnings = structure(list(structure(list(Id = structure(logical(0), 
        shape = "id", type = "string", min = 1L, max = 1024L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", 
        locationName = "id"), Warnings = structure(list(structure(logical(0), 
        shape = "validationMessage", type = "string", min = 0L, 
        max = 10000L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "validationMessages", type = "list", locationName = "warnings")), 
        shape = "ValidationWarning", type = "structure")), shape = "ValidationWarnings", 
        type = "list", locationName = "validationWarnings"), 
        Errored = structure(logical(0), shape = "boolean", type = "boolean", 
            locationName = "errored")), shape = "ValidatePipelineDefinitionOutput", 
        type = "structure")
    return(populate(args, shape))
}
