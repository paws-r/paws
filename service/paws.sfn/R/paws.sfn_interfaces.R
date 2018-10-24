create_activity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "Name", 
        type = "string", max = 80L, min = 1L, locationName = "name")), 
        shape = "CreateActivityInput", type = "structure")
    return(populate(args, shape))
}

create_activity_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActivityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "activityArn"), CreationDate = structure(logical(0), 
        shape = "Timestamp", type = "timestamp", locationName = "creationDate")), 
        shape = "CreateActivityOutput", type = "structure")
    return(populate(args, shape))
}

create_state_machine_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "Name", 
        type = "string", max = 80L, min = 1L, locationName = "name"), 
        Definition = structure(logical(0), shape = "Definition", 
            type = "string", max = 1048576L, min = 1L, locationName = "definition"), 
        RoleArn = structure(logical(0), shape = "Arn", type = "string", 
            max = 256L, min = 1L, locationName = "roleArn")), 
        shape = "CreateStateMachineInput", type = "structure")
    return(populate(args, shape))
}

create_state_machine_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StateMachineArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "stateMachineArn"), CreationDate = structure(logical(0), 
        shape = "Timestamp", type = "timestamp", locationName = "creationDate")), 
        shape = "CreateStateMachineOutput", type = "structure")
    return(populate(args, shape))
}

delete_activity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActivityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "activityArn")), shape = "DeleteActivityInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_activity_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteActivityOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_state_machine_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StateMachineArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "stateMachineArn")), shape = "DeleteStateMachineInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_state_machine_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteStateMachineOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_activity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActivityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "activityArn")), shape = "DescribeActivityInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_activity_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActivityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "activityArn"), Name = structure(logical(0), 
        shape = "Name", type = "string", max = 80L, min = 1L, 
        locationName = "name"), CreationDate = structure(logical(0), 
        shape = "Timestamp", type = "timestamp", locationName = "creationDate")), 
        shape = "DescribeActivityOutput", type = "structure")
    return(populate(args, shape))
}

describe_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExecutionArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "executionArn")), shape = "DescribeExecutionInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExecutionArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "executionArn"), StateMachineArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "stateMachineArn"), Name = structure(logical(0), 
        shape = "Name", type = "string", max = 80L, min = 1L, 
        locationName = "name"), Status = structure(logical(0), 
        shape = "ExecutionStatus", type = "string", locationName = "status"), 
        StartDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "startDate"), 
        StopDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "stopDate"), Input = structure(logical(0), 
            shape = "Data", type = "string", max = 32768L, locationName = "input"), 
        Output = structure(logical(0), shape = "Data", type = "string", 
            max = 32768L, locationName = "output")), shape = "DescribeExecutionOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_state_machine_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StateMachineArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "stateMachineArn")), shape = "DescribeStateMachineInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_state_machine_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StateMachineArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "stateMachineArn"), Name = structure(logical(0), 
        shape = "Name", type = "string", max = 80L, min = 1L, 
        locationName = "name"), Status = structure(logical(0), 
        shape = "StateMachineStatus", type = "string", locationName = "status"), 
        Definition = structure(logical(0), shape = "Definition", 
            type = "string", max = 1048576L, min = 1L, locationName = "definition"), 
        RoleArn = structure(logical(0), shape = "Arn", type = "string", 
            max = 256L, min = 1L, locationName = "roleArn"), 
        CreationDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "creationDate")), 
        shape = "DescribeStateMachineOutput", type = "structure")
    return(populate(args, shape))
}

describe_state_machine_for_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExecutionArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "executionArn")), shape = "DescribeStateMachineForExecutionInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_state_machine_for_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StateMachineArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "stateMachineArn"), Name = structure(logical(0), 
        shape = "Name", type = "string", max = 80L, min = 1L, 
        locationName = "name"), Definition = structure(logical(0), 
        shape = "Definition", type = "string", max = 1048576L, 
        min = 1L, locationName = "definition"), RoleArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "roleArn"), UpdateDate = structure(logical(0), 
        shape = "Timestamp", type = "timestamp", locationName = "updateDate")), 
        shape = "DescribeStateMachineForExecutionOutput", type = "structure")
    return(populate(args, shape))
}

get_activity_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActivityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "activityArn"), WorkerName = structure(logical(0), 
        shape = "Name", type = "string", max = 80L, min = 1L, 
        locationName = "workerName")), shape = "GetActivityTaskInput", 
        type = "structure")
    return(populate(args, shape))
}

get_activity_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskToken = structure(logical(0), 
        shape = "TaskToken", type = "string", max = 1024L, min = 1L, 
        locationName = "taskToken"), Input = structure(logical(0), 
        shape = "Data", type = "string", max = 32768L, locationName = "input")), 
        shape = "GetActivityTaskOutput", type = "structure")
    return(populate(args, shape))
}

get_execution_history_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExecutionArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "executionArn"), MaxResults = structure(logical(0), 
        shape = "PageSize", type = "integer", max = 1000L, min = 0L, 
        locationName = "maxResults"), ReverseOrder = structure(logical(0), 
        shape = "ReverseOrder", type = "boolean", locationName = "reverseOrder"), 
        NextToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 1024L, min = 1L, locationName = "nextToken")), 
        shape = "GetExecutionHistoryInput", type = "structure")
    return(populate(args, shape))
}

get_execution_history_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Events = structure(list(structure(list(Timestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp", locationName = "timestamp"), 
        Type = structure(logical(0), shape = "HistoryEventType", 
            type = "string", locationName = "type"), Id = structure(logical(0), 
            shape = "EventId", type = "long", locationName = "id"), 
        PreviousEventId = structure(logical(0), shape = "EventId", 
            type = "long", locationName = "previousEventId"), 
        ActivityFailedEventDetails = structure(list(Error = structure(logical(0), 
            shape = "Error", type = "string", max = 256L, min = 0L, 
            locationName = "error"), Cause = structure(logical(0), 
            shape = "Cause", type = "string", max = 32768L, min = 0L, 
            locationName = "cause")), shape = "ActivityFailedEventDetails", 
            type = "structure", locationName = "activityFailedEventDetails"), 
        ActivityScheduleFailedEventDetails = structure(list(Error = structure(logical(0), 
            shape = "Error", type = "string", max = 256L, min = 0L, 
            locationName = "error"), Cause = structure(logical(0), 
            shape = "Cause", type = "string", max = 32768L, min = 0L, 
            locationName = "cause")), shape = "ActivityScheduleFailedEventDetails", 
            type = "structure", locationName = "activityScheduleFailedEventDetails"), 
        ActivityScheduledEventDetails = structure(list(Resource = structure(logical(0), 
            shape = "Arn", type = "string", max = 256L, min = 1L, 
            locationName = "resource"), Input = structure(logical(0), 
            shape = "Data", type = "string", max = 32768L, locationName = "input"), 
            TimeoutInSeconds = structure(logical(0), shape = "TimeoutInSeconds", 
                box = TRUE, type = "long", locationName = "timeoutInSeconds"), 
            HeartbeatInSeconds = structure(logical(0), shape = "TimeoutInSeconds", 
                box = TRUE, type = "long", locationName = "heartbeatInSeconds")), 
            shape = "ActivityScheduledEventDetails", type = "structure", 
            locationName = "activityScheduledEventDetails"), 
        ActivityStartedEventDetails = structure(list(WorkerName = structure(logical(0), 
            shape = "Identity", type = "string", max = 256L, 
            locationName = "workerName")), shape = "ActivityStartedEventDetails", 
            type = "structure", locationName = "activityStartedEventDetails"), 
        ActivitySucceededEventDetails = structure(list(Output = structure(logical(0), 
            shape = "Data", type = "string", max = 32768L, locationName = "output")), 
            shape = "ActivitySucceededEventDetails", type = "structure", 
            locationName = "activitySucceededEventDetails"), 
        ActivityTimedOutEventDetails = structure(list(Error = structure(logical(0), 
            shape = "Error", type = "string", max = 256L, min = 0L, 
            locationName = "error"), Cause = structure(logical(0), 
            shape = "Cause", type = "string", max = 32768L, min = 0L, 
            locationName = "cause")), shape = "ActivityTimedOutEventDetails", 
            type = "structure", locationName = "activityTimedOutEventDetails"), 
        ExecutionFailedEventDetails = structure(list(Error = structure(logical(0), 
            shape = "Error", type = "string", max = 256L, min = 0L, 
            locationName = "error"), Cause = structure(logical(0), 
            shape = "Cause", type = "string", max = 32768L, min = 0L, 
            locationName = "cause")), shape = "ExecutionFailedEventDetails", 
            type = "structure", locationName = "executionFailedEventDetails"), 
        ExecutionStartedEventDetails = structure(list(Input = structure(logical(0), 
            shape = "Data", type = "string", max = 32768L, locationName = "input"), 
            RoleArn = structure(logical(0), shape = "Arn", type = "string", 
                max = 256L, min = 1L, locationName = "roleArn")), 
            shape = "ExecutionStartedEventDetails", type = "structure", 
            locationName = "executionStartedEventDetails"), ExecutionSucceededEventDetails = structure(list(Output = structure(logical(0), 
            shape = "Data", type = "string", max = 32768L, locationName = "output")), 
            shape = "ExecutionSucceededEventDetails", type = "structure", 
            locationName = "executionSucceededEventDetails"), 
        ExecutionAbortedEventDetails = structure(list(Error = structure(logical(0), 
            shape = "Error", type = "string", max = 256L, min = 0L, 
            locationName = "error"), Cause = structure(logical(0), 
            shape = "Cause", type = "string", max = 32768L, min = 0L, 
            locationName = "cause")), shape = "ExecutionAbortedEventDetails", 
            type = "structure", locationName = "executionAbortedEventDetails"), 
        ExecutionTimedOutEventDetails = structure(list(Error = structure(logical(0), 
            shape = "Error", type = "string", max = 256L, min = 0L, 
            locationName = "error"), Cause = structure(logical(0), 
            shape = "Cause", type = "string", max = 32768L, min = 0L, 
            locationName = "cause")), shape = "ExecutionTimedOutEventDetails", 
            type = "structure", locationName = "executionTimedOutEventDetails"), 
        LambdaFunctionFailedEventDetails = structure(list(Error = structure(logical(0), 
            shape = "Error", type = "string", max = 256L, min = 0L, 
            locationName = "error"), Cause = structure(logical(0), 
            shape = "Cause", type = "string", max = 32768L, min = 0L, 
            locationName = "cause")), shape = "LambdaFunctionFailedEventDetails", 
            type = "structure", locationName = "lambdaFunctionFailedEventDetails"), 
        LambdaFunctionScheduleFailedEventDetails = structure(list(Error = structure(logical(0), 
            shape = "Error", type = "string", max = 256L, min = 0L, 
            locationName = "error"), Cause = structure(logical(0), 
            shape = "Cause", type = "string", max = 32768L, min = 0L, 
            locationName = "cause")), shape = "LambdaFunctionScheduleFailedEventDetails", 
            type = "structure", locationName = "lambdaFunctionScheduleFailedEventDetails"), 
        LambdaFunctionScheduledEventDetails = structure(list(Resource = structure(logical(0), 
            shape = "Arn", type = "string", max = 256L, min = 1L, 
            locationName = "resource"), Input = structure(logical(0), 
            shape = "Data", type = "string", max = 32768L, locationName = "input"), 
            TimeoutInSeconds = structure(logical(0), shape = "TimeoutInSeconds", 
                box = TRUE, type = "long", locationName = "timeoutInSeconds")), 
            shape = "LambdaFunctionScheduledEventDetails", type = "structure", 
            locationName = "lambdaFunctionScheduledEventDetails"), 
        LambdaFunctionStartFailedEventDetails = structure(list(Error = structure(logical(0), 
            shape = "Error", type = "string", max = 256L, min = 0L, 
            locationName = "error"), Cause = structure(logical(0), 
            shape = "Cause", type = "string", max = 32768L, min = 0L, 
            locationName = "cause")), shape = "LambdaFunctionStartFailedEventDetails", 
            type = "structure", locationName = "lambdaFunctionStartFailedEventDetails"), 
        LambdaFunctionSucceededEventDetails = structure(list(Output = structure(logical(0), 
            shape = "Data", type = "string", max = 32768L, locationName = "output")), 
            shape = "LambdaFunctionSucceededEventDetails", type = "structure", 
            locationName = "lambdaFunctionSucceededEventDetails"), 
        LambdaFunctionTimedOutEventDetails = structure(list(Error = structure(logical(0), 
            shape = "Error", type = "string", max = 256L, min = 0L, 
            locationName = "error"), Cause = structure(logical(0), 
            shape = "Cause", type = "string", max = 32768L, min = 0L, 
            locationName = "cause")), shape = "LambdaFunctionTimedOutEventDetails", 
            type = "structure", locationName = "lambdaFunctionTimedOutEventDetails"), 
        StateEnteredEventDetails = structure(list(Name = structure(logical(0), 
            shape = "Name", type = "string", max = 80L, min = 1L, 
            locationName = "name"), Input = structure(logical(0), 
            shape = "Data", type = "string", max = 32768L, locationName = "input")), 
            shape = "StateEnteredEventDetails", type = "structure", 
            locationName = "stateEnteredEventDetails"), StateExitedEventDetails = structure(list(Name = structure(logical(0), 
            shape = "Name", type = "string", max = 80L, min = 1L, 
            locationName = "name"), Output = structure(logical(0), 
            shape = "Data", type = "string", max = 32768L, locationName = "output")), 
            shape = "StateExitedEventDetails", type = "structure", 
            locationName = "stateExitedEventDetails")), shape = "HistoryEvent", 
        type = "structure")), shape = "HistoryEventList", type = "list", 
        locationName = "events"), NextToken = structure(logical(0), 
        shape = "PageToken", type = "string", max = 1024L, min = 1L, 
        locationName = "nextToken")), shape = "GetExecutionHistoryOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_activities_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "PageSize", type = "integer", max = 1000L, min = 0L, 
        locationName = "maxResults"), NextToken = structure(logical(0), 
        shape = "PageToken", type = "string", max = 1024L, min = 1L, 
        locationName = "nextToken")), shape = "ListActivitiesInput", 
        type = "structure")
    return(populate(args, shape))
}

list_activities_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Activities = structure(list(structure(list(ActivityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "activityArn"), Name = structure(logical(0), 
        shape = "Name", type = "string", max = 80L, min = 1L, 
        locationName = "name"), CreationDate = structure(logical(0), 
        shape = "Timestamp", type = "timestamp", locationName = "creationDate")), 
        shape = "ActivityListItem", type = "structure")), shape = "ActivityList", 
        type = "list", locationName = "activities"), NextToken = structure(logical(0), 
        shape = "PageToken", type = "string", max = 1024L, min = 1L, 
        locationName = "nextToken")), shape = "ListActivitiesOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_executions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StateMachineArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "stateMachineArn"), StatusFilter = structure(logical(0), 
        shape = "ExecutionStatus", type = "string", locationName = "statusFilter"), 
        MaxResults = structure(logical(0), shape = "PageSize", 
            type = "integer", max = 1000L, min = 0L, locationName = "maxResults"), 
        NextToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 1024L, min = 1L, locationName = "nextToken")), 
        shape = "ListExecutionsInput", type = "structure")
    return(populate(args, shape))
}

list_executions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Executions = structure(list(structure(list(ExecutionArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "executionArn"), StateMachineArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "stateMachineArn"), Name = structure(logical(0), 
        shape = "Name", type = "string", max = 80L, min = 1L, 
        locationName = "name"), Status = structure(logical(0), 
        shape = "ExecutionStatus", type = "string", locationName = "status"), 
        StartDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "startDate"), 
        StopDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "stopDate")), 
        shape = "ExecutionListItem", type = "structure")), shape = "ExecutionList", 
        type = "list", locationName = "executions"), NextToken = structure(logical(0), 
        shape = "PageToken", type = "string", max = 1024L, min = 1L, 
        locationName = "nextToken")), shape = "ListExecutionsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_state_machines_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "PageSize", type = "integer", max = 1000L, min = 0L, 
        locationName = "maxResults"), NextToken = structure(logical(0), 
        shape = "PageToken", type = "string", max = 1024L, min = 1L, 
        locationName = "nextToken")), shape = "ListStateMachinesInput", 
        type = "structure")
    return(populate(args, shape))
}

list_state_machines_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StateMachines = structure(list(structure(list(StateMachineArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "stateMachineArn"), Name = structure(logical(0), 
        shape = "Name", type = "string", max = 80L, min = 1L, 
        locationName = "name"), CreationDate = structure(logical(0), 
        shape = "Timestamp", type = "timestamp", locationName = "creationDate")), 
        shape = "StateMachineListItem", type = "structure")), 
        shape = "StateMachineList", type = "list", locationName = "stateMachines"), 
        NextToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 1024L, min = 1L, locationName = "nextToken")), 
        shape = "ListStateMachinesOutput", type = "structure")
    return(populate(args, shape))
}

send_task_failure_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskToken = structure(logical(0), 
        shape = "TaskToken", type = "string", max = 1024L, min = 1L, 
        locationName = "taskToken"), Error = structure(logical(0), 
        shape = "Error", type = "string", max = 256L, min = 0L, 
        locationName = "error"), Cause = structure(logical(0), 
        shape = "Cause", type = "string", max = 32768L, min = 0L, 
        locationName = "cause")), shape = "SendTaskFailureInput", 
        type = "structure")
    return(populate(args, shape))
}

send_task_failure_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SendTaskFailureOutput", 
        type = "structure")
    return(populate(args, shape))
}

send_task_heartbeat_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskToken = structure(logical(0), 
        shape = "TaskToken", type = "string", max = 1024L, min = 1L, 
        locationName = "taskToken")), shape = "SendTaskHeartbeatInput", 
        type = "structure")
    return(populate(args, shape))
}

send_task_heartbeat_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SendTaskHeartbeatOutput", 
        type = "structure")
    return(populate(args, shape))
}

send_task_success_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskToken = structure(logical(0), 
        shape = "TaskToken", type = "string", max = 1024L, min = 1L, 
        locationName = "taskToken"), Output = structure(logical(0), 
        shape = "Data", type = "string", max = 32768L, locationName = "output")), 
        shape = "SendTaskSuccessInput", type = "structure")
    return(populate(args, shape))
}

send_task_success_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SendTaskSuccessOutput", 
        type = "structure")
    return(populate(args, shape))
}

start_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StateMachineArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "stateMachineArn"), Name = structure(logical(0), 
        shape = "Name", type = "string", max = 80L, min = 1L, 
        locationName = "name"), Input = structure(logical(0), 
        shape = "Data", type = "string", max = 32768L, locationName = "input")), 
        shape = "StartExecutionInput", type = "structure")
    return(populate(args, shape))
}

start_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExecutionArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "executionArn"), StartDate = structure(logical(0), 
        shape = "Timestamp", type = "timestamp", locationName = "startDate")), 
        shape = "StartExecutionOutput", type = "structure")
    return(populate(args, shape))
}

stop_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExecutionArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "executionArn"), Error = structure(logical(0), 
        shape = "Error", type = "string", max = 256L, min = 0L, 
        locationName = "error"), Cause = structure(logical(0), 
        shape = "Cause", type = "string", max = 32768L, min = 0L, 
        locationName = "cause")), shape = "StopExecutionInput", 
        type = "structure")
    return(populate(args, shape))
}

stop_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StopDate = structure(logical(0), 
        shape = "Timestamp", type = "timestamp", locationName = "stopDate")), 
        shape = "StopExecutionOutput", type = "structure")
    return(populate(args, shape))
}

update_state_machine_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StateMachineArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "stateMachineArn"), Definition = structure(logical(0), 
        shape = "Definition", type = "string", max = 1048576L, 
        min = 1L, locationName = "definition"), RoleArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 256L, min = 1L, 
        locationName = "roleArn")), shape = "UpdateStateMachineInput", 
        type = "structure")
    return(populate(args, shape))
}

update_state_machine_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UpdateDate = structure(logical(0), 
        shape = "Timestamp", type = "timestamp", locationName = "updateDate")), 
        shape = "UpdateStateMachineOutput", type = "structure")
    return(populate(args, shape))
}
