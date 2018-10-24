#' Creates an activity
#'
#' Creates an activity. An activity is a task which you write in any programming language and host on any machine which has access to AWS Step Functions. Activities must poll Step Functions using the `GetActivityTask` API action and respond using `SendTask*` API actions. This function lets Step Functions know the existence of your activity and returns an identifier for use in a state machine and when polling from the activity.
#'
#' @param name The name of the activity to create. This name must be unique for your AWS account and region for 90 days. For more information, see [Limits Related to State Machine Executions](http://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions) in the *AWS Step Functions Developer Guide*.
#' 
#' A name must *not* contain:
#' 
#' -   whitespace
#' 
#' -   brackets `< > { } [ ]`
#' 
#' -   wildcard characters `? *`
#' 
#' -   special characters `` \" # % \ ^ | ~ ` $ & , ; : / ``
#' 
#' -   control characters (`U+0000-001F`, `U+007F-009F`)
#'
#' @examples
#'
#' @export
create_activity <- function (name) 
{
    op <- Operation(name = "CreateActivity", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_activity_input(name = name)
    output <- create_activity_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a state machine
#'
#' Creates a state machine. A state machine consists of a collection of states that can do work (`Task` states), determine to which states to transition next (`Choice` states), stop an execution with an error (`Fail` states), and so on. State machines are specified using a JSON-based, structured language.
#'
#' @param name The name of the state machine. This name must be unique for your AWS account and region for 90 days. For more information, see [Limits Related to State Machine Executions](http://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions) in the *AWS Step Functions Developer Guide*.
#' 
#' A name must *not* contain:
#' 
#' -   whitespace
#' 
#' -   brackets `< > { } [ ]`
#' 
#' -   wildcard characters `? *`
#' 
#' -   special characters `` \" # % \ ^ | ~ ` $ & , ; : / ``
#' 
#' -   control characters (`U+0000-001F`, `U+007F-009F`)
#' @param definition The Amazon States Language definition of the state machine.
#' @param roleArn The Amazon Resource Name (ARN) of the IAM role to use for this state machine.
#'
#' @examples
#'
#' @export
create_state_machine <- function (name, definition, roleArn) 
{
    op <- Operation(name = "CreateStateMachine", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_state_machine_input(name = name, definition = definition, 
        roleArn = roleArn)
    output <- create_state_machine_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an activity
#'
#' Deletes an activity.
#'
#' @param activityArn The Amazon Resource Name (ARN) of the activity to delete.
#'
#' @examples
#'
#' @export
delete_activity <- function (activityArn) 
{
    op <- Operation(name = "DeleteActivity", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_activity_input(activityArn = activityArn)
    output <- delete_activity_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a state machine
#'
#' Deletes a state machine. This is an asynchronous operation: It sets the state machine\'s status to `DELETING` and begins the deletion process. Each state machine execution is deleted the next time it makes a state transition.
#' 
#' The state machine itself is deleted after all executions are completed or deleted.
#'
#' @param stateMachineArn The Amazon Resource Name (ARN) of the state machine to delete.
#'
#' @examples
#'
#' @export
delete_state_machine <- function (stateMachineArn) 
{
    op <- Operation(name = "DeleteStateMachine", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_state_machine_input(stateMachineArn = stateMachineArn)
    output <- delete_state_machine_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes an activity
#'
#' Describes an activity.
#'
#' @param activityArn The Amazon Resource Name (ARN) of the activity to describe.
#'
#' @examples
#'
#' @export
describe_activity <- function (activityArn) 
{
    op <- Operation(name = "DescribeActivity", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_activity_input(activityArn = activityArn)
    output <- describe_activity_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes an execution
#'
#' Describes an execution.
#'
#' @param executionArn The Amazon Resource Name (ARN) of the execution to describe.
#'
#' @examples
#'
#' @export
describe_execution <- function (executionArn) 
{
    op <- Operation(name = "DescribeExecution", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_execution_input(executionArn = executionArn)
    output <- describe_execution_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes a state machine
#'
#' Describes a state machine.
#'
#' @param stateMachineArn The Amazon Resource Name (ARN) of the state machine to describe.
#'
#' @examples
#'
#' @export
describe_state_machine <- function (stateMachineArn) 
{
    op <- Operation(name = "DescribeStateMachine", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_state_machine_input(stateMachineArn = stateMachineArn)
    output <- describe_state_machine_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the state machine associated with a specific execution
#'
#' Describes the state machine associated with a specific execution.
#'
#' @param executionArn The Amazon Resource Name (ARN) of the execution you want state machine information for.
#'
#' @examples
#'
#' @export
describe_state_machine_for_execution <- function (executionArn) 
{
    op <- Operation(name = "DescribeStateMachineForExecution", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_state_machine_for_execution_input(executionArn = executionArn)
    output <- describe_state_machine_for_execution_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Used by workers to retrieve a task (with the specified activity ARN) which has been scheduled for execution by a running state machine
#'
#' Used by workers to retrieve a task (with the specified activity ARN) which has been scheduled for execution by a running state machine. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available (i.e. an execution of a task of this type is needed.) The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns a `taskToken` with a null string.
#' 
#' Workers should set their client side socket timeout to at least 65 seconds (5 seconds higher than the maximum time the service may hold the poll request).
#'
#' @param activityArn The Amazon Resource Name (ARN) of the activity to retrieve tasks from (assigned when you create the task using CreateActivity.)
#' @param workerName You can provide an arbitrary name in order to identify the worker that the task is assigned to. This name is used when it is logged in the execution history.
#'
#' @examples
#'
#' @export
get_activity_task <- function (activityArn, workerName = NULL) 
{
    op <- Operation(name = "GetActivityTask", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_activity_task_input(activityArn = activityArn, 
        workerName = workerName)
    output <- get_activity_task_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the history of the specified execution as a list of events
#'
#' Returns the history of the specified execution as a list of events. By default, the results are returned in ascending order of the `timeStamp` of the events. Use the `reverseOrder` parameter to get the latest events first.
#' 
#' If a `nextToken` is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextToken`. Keep all other arguments unchanged.
#'
#' @param executionArn The Amazon Resource Name (ARN) of the execution.
#' @param maxResults The maximum number of results that are returned per call. You can use `nextToken` to obtain further pages of results. The default is 100 and the maximum allowed page size is 100. A value of 0 uses the default.
#' 
#' This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.
#' @param reverseOrder Lists events in descending order of their `timeStamp`.
#' @param nextToken If a `nextToken` is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextToken`. Keep all other arguments unchanged.
#' 
#' The configured `maxResults` determines how many results can be returned in a single call.
#'
#' @examples
#'
#' @export
get_execution_history <- function (executionArn, maxResults = NULL, 
    reverseOrder = NULL, nextToken = NULL) 
{
    op <- Operation(name = "GetExecutionHistory", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_execution_history_input(executionArn = executionArn, 
        maxResults = maxResults, reverseOrder = reverseOrder, 
        nextToken = nextToken)
    output <- get_execution_history_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the existing activities
#'
#' Lists the existing activities.
#' 
#' If a `nextToken` is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextToken`. Keep all other arguments unchanged.
#'
#' @param maxResults The maximum number of results that are returned per call. You can use `nextToken` to obtain further pages of results. The default is 100 and the maximum allowed page size is 100. A value of 0 uses the default.
#' 
#' This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.
#' @param nextToken If a `nextToken` is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextToken`. Keep all other arguments unchanged.
#' 
#' The configured `maxResults` determines how many results can be returned in a single call.
#'
#' @examples
#'
#' @export
list_activities <- function (maxResults = NULL, nextToken = NULL) 
{
    op <- Operation(name = "ListActivities", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_activities_input(maxResults = maxResults, nextToken = nextToken)
    output <- list_activities_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the executions of a state machine that meet the filtering criteria
#'
#' Lists the executions of a state machine that meet the filtering criteria.
#' 
#' If a `nextToken` is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextToken`. Keep all other arguments unchanged.
#'
#' @param stateMachineArn The Amazon Resource Name (ARN) of the state machine whose executions is listed.
#' @param statusFilter If specified, only list the executions whose current execution status matches the given filter.
#' @param maxResults The maximum number of results that are returned per call. You can use `nextToken` to obtain further pages of results. The default is 100 and the maximum allowed page size is 100. A value of 0 uses the default.
#' 
#' This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.
#' @param nextToken If a `nextToken` is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextToken`. Keep all other arguments unchanged.
#' 
#' The configured `maxResults` determines how many results can be returned in a single call.
#'
#' @examples
#'
#' @export
list_executions <- function (stateMachineArn, statusFilter = NULL, 
    maxResults = NULL, nextToken = NULL) 
{
    op <- Operation(name = "ListExecutions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_executions_input(stateMachineArn = stateMachineArn, 
        statusFilter = statusFilter, maxResults = maxResults, 
        nextToken = nextToken)
    output <- list_executions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the existing state machines
#'
#' Lists the existing state machines.
#' 
#' If a `nextToken` is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextToken`. Keep all other arguments unchanged.
#'
#' @param maxResults The maximum number of results that are returned per call. You can use `nextToken` to obtain further pages of results. The default is 100 and the maximum allowed page size is 100. A value of 0 uses the default.
#' 
#' This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.
#' @param nextToken If a `nextToken` is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextToken`. Keep all other arguments unchanged.
#' 
#' The configured `maxResults` determines how many results can be returned in a single call.
#'
#' @examples
#'
#' @export
list_state_machines <- function (maxResults = NULL, nextToken = NULL) 
{
    op <- Operation(name = "ListStateMachines", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_state_machines_input(maxResults = maxResults, 
        nextToken = nextToken)
    output <- list_state_machines_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Used by workers to report that the task identified by the `taskToken` failed
#'
#' Used by workers to report that the task identified by the `taskToken` failed.
#'
#' @param taskToken The token that represents this task. Task tokens are generated by the service when the tasks are assigned to a worker (see GetActivityTask::taskToken).
#' @param error An arbitrary error code that identifies the cause of the failure.
#' @param cause A more detailed explanation of the cause of the failure.
#'
#' @examples
#'
#' @export
send_task_failure <- function (taskToken, error = NULL, cause = NULL) 
{
    op <- Operation(name = "SendTaskFailure", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- send_task_failure_input(taskToken = taskToken, error = error, 
        cause = cause)
    output <- send_task_failure_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Used by workers to report to the service that the task represented by the specified `taskToken` is still making progress
#'
#' Used by workers to report to the service that the task represented by the specified `taskToken` is still making progress. This action resets the `Heartbeat` clock. The `Heartbeat` threshold is specified in the state machine\'s Amazon States Language definition. This action does not in itself create an event in the execution history. However, if the task times out, the execution history contains an `ActivityTimedOut` event.
#' 
#' The `Timeout` of a task, defined in the state machine\'s Amazon States Language definition, is its maximum allowed duration, regardless of the number of SendTaskHeartbeat requests received.
#' 
#' This operation is only useful for long-lived tasks to report the liveliness of the task.
#'
#' @param taskToken The token that represents this task. Task tokens are generated by the service when the tasks are assigned to a worker (see GetActivityTaskOutput\$taskToken).
#'
#' @examples
#'
#' @export
send_task_heartbeat <- function (taskToken) 
{
    op <- Operation(name = "SendTaskHeartbeat", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- send_task_heartbeat_input(taskToken = taskToken)
    output <- send_task_heartbeat_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Used by workers to report that the task identified by the `taskToken` completed successfully
#'
#' Used by workers to report that the task identified by the `taskToken` completed successfully.
#'
#' @param taskToken The token that represents this task. Task tokens are generated by the service when the tasks are assigned to a worker (see GetActivityTaskOutput\$taskToken).
#' @param output The JSON output of the task.
#'
#' @examples
#'
#' @export
send_task_success <- function (taskToken, output) 
{
    op <- Operation(name = "SendTaskSuccess", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- send_task_success_input(taskToken = taskToken, output = output)
    output <- send_task_success_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts a state machine execution
#'
#' Starts a state machine execution.
#'
#' @param stateMachineArn The Amazon Resource Name (ARN) of the state machine to execute.
#' @param name The name of the execution. This name must be unique for your AWS account and region for 90 days. For more information, see [Limits Related to State Machine Executions](http://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions) in the *AWS Step Functions Developer Guide*.
#' 
#' An execution can\'t use the name of another execution for 90 days.
#' 
#' When you make multiple `StartExecution` calls with the same name, the new execution doesn\'t run and the following rules apply:
#' 
#' -   When the original execution is open and the execution input from the new call is *different*, the `ExecutionAlreadyExists` message is returned.
#' 
#' -   When the original execution is open and the execution input from the new call is *identical*, the `Success` message is returned.
#' 
#' -   When the original execution is closed, the `ExecutionAlreadyExists` message is returned regardless of input.
#' 
#' A name must *not* contain:
#' 
#' -   whitespace
#' 
#' -   brackets `< > { } [ ]`
#' 
#' -   wildcard characters `? *`
#' 
#' -   special characters `` \" # % \ ^ | ~ ` $ & , ; : / ``
#' 
#' -   control characters (`U+0000-001F`, `U+007F-009F`)
#' @param input The string that contains the JSON input data for the execution, for example:
#' 
#' `"input": "{\"first_name\" : \"test\"}"`
#' 
#' If you don\'t include any JSON input data, you still must include the two braces, for example: `"input": "{}"`
#'
#' @examples
#'
#' @export
start_execution <- function (stateMachineArn, name = NULL, input = NULL) 
{
    op <- Operation(name = "StartExecution", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_execution_input(stateMachineArn = stateMachineArn, 
        name = name, input = input)
    output <- start_execution_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops an execution
#'
#' Stops an execution.
#'
#' @param executionArn The Amazon Resource Name (ARN) of the execution to stop.
#' @param error An arbitrary error code that identifies the cause of the termination.
#' @param cause A more detailed explanation of the cause of the termination.
#'
#' @examples
#'
#' @export
stop_execution <- function (executionArn, error = NULL, cause = NULL) 
{
    op <- Operation(name = "StopExecution", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_execution_input(executionArn = executionArn, 
        error = error, cause = cause)
    output <- stop_execution_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates an existing state machine by modifying its `definition` and/or `roleArn`
#'
#' Updates an existing state machine by modifying its `definition` and/or `roleArn`. Running executions will continue to use the previous `definition` and `roleArn`.
#' 
#' All `StartExecution` calls within a few seconds will use the updated `definition` and `roleArn`. Executions started immediately after calling `UpdateStateMachine` may use the previous state machine `definition` and `roleArn`. You must include at least one of `definition` or `roleArn` or you will receive a `MissingRequiredParameter` error.
#'
#' @param stateMachineArn The Amazon Resource Name (ARN) of the state machine.
#' @param definition The Amazon States Language definition of the state machine.
#' @param roleArn The Amazon Resource Name (ARN) of the IAM role of the state machine.
#'
#' @examples
#'
#' @export
update_state_machine <- function (stateMachineArn, definition = NULL, 
    roleArn = NULL) 
{
    op <- Operation(name = "UpdateStateMachine", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_state_machine_input(stateMachineArn = stateMachineArn, 
        definition = definition, roleArn = roleArn)
    output <- update_state_machine_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
