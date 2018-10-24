#' Creates a budget and, if included, notifications and subscribers
#'
#' Creates a budget and, if included, notifications and subscribers.
#'
#' @param AccountId The `accountId` that is associated with the budget.
#' @param Budget The budget object that you want to create.
#' @param NotificationsWithSubscribers A notification that you want to associate with a budget. A budget can have up to five notifications, and each notification can have one SNS subscriber and up to ten email subscribers. If you include notifications and subscribers in your `CreateBudget` call, AWS creates the notifications and subscribers for you.
#'
#' @examples
#'
#' @export
create_budget <- function (AccountId, Budget, NotificationsWithSubscribers = NULL) 
{
    op <- Operation(name = "CreateBudget", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_budget_input(AccountId = AccountId, Budget = Budget, 
        NotificationsWithSubscribers = NotificationsWithSubscribers)
    output <- create_budget_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a notification
#'
#' Creates a notification. You must create the budget before you create the associated notification.
#'
#' @param AccountId The `accountId` that is associated with the budget that you want to create a notification for.
#' @param BudgetName The name of the budget that you want AWS to notified you about. Budget names must be unique within an account.
#' @param Notification The notification that you want to create.
#' @param Subscribers A list of subscribers that you want to associate with the notification. Each notification can have one SNS subscriber and up to ten email subscribers.
#'
#' @examples
#'
#' @export
create_notification <- function (AccountId, BudgetName, Notification, 
    Subscribers) 
{
    op <- Operation(name = "CreateNotification", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_notification_input(AccountId = AccountId, 
        BudgetName = BudgetName, Notification = Notification, 
        Subscribers = Subscribers)
    output <- create_notification_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a subscriber
#'
#' Creates a subscriber. You must create the associated budget and notification before you create the subscriber.
#'
#' @param AccountId The `accountId` associated with the budget that you want to create a subscriber for.
#' @param BudgetName The name of the budget that you want to subscribe to. Budget names must be unique within an account.
#' @param Notification The notification that you want to create a subscriber for.
#' @param Subscriber The subscriber that you want to associate with a budget notification.
#'
#' @examples
#'
#' @export
create_subscriber <- function (AccountId, BudgetName, Notification, 
    Subscriber) 
{
    op <- Operation(name = "CreateSubscriber", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_subscriber_input(AccountId = AccountId, BudgetName = BudgetName, 
        Notification = Notification, Subscriber = Subscriber)
    output <- create_subscriber_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a budget
#'
#' Deletes a budget. You can delete your budget at any time.
#' 
#' **Deleting a budget also deletes the notifications and subscribers associated with that budget.**
#'
#' @param AccountId The `accountId` that is associated with the budget that you want to delete.
#' @param BudgetName The name of the budget that you want to delete.
#'
#' @examples
#'
#' @export
delete_budget <- function (AccountId, BudgetName) 
{
    op <- Operation(name = "DeleteBudget", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_budget_input(AccountId = AccountId, BudgetName = BudgetName)
    output <- delete_budget_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a notification
#'
#' Deletes a notification.
#' 
#' **Deleting a notification also deletes the subscribers associated with the notification.**
#'
#' @param AccountId The `accountId` that is associated with the budget whose notification you want to delete.
#' @param BudgetName The name of the budget whose notification you want to delete.
#' @param Notification The notification that you want to delete.
#'
#' @examples
#'
#' @export
delete_notification <- function (AccountId, BudgetName, Notification) 
{
    op <- Operation(name = "DeleteNotification", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_notification_input(AccountId = AccountId, 
        BudgetName = BudgetName, Notification = Notification)
    output <- delete_notification_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a subscriber
#'
#' Deletes a subscriber.
#' 
#' **Deleting the last subscriber to a notification also deletes the notification.**
#'
#' @param AccountId The `accountId` that is associated with the budget whose subscriber you want to delete.
#' @param BudgetName The name of the budget whose subscriber you want to delete.
#' @param Notification The notification whose subscriber you want to delete.
#' @param Subscriber The subscriber that you want to delete.
#'
#' @examples
#'
#' @export
delete_subscriber <- function (AccountId, BudgetName, Notification, 
    Subscriber) 
{
    op <- Operation(name = "DeleteSubscriber", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_subscriber_input(AccountId = AccountId, BudgetName = BudgetName, 
        Notification = Notification, Subscriber = Subscriber)
    output <- delete_subscriber_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes a budget
#'
#' Describes a budget.
#'
#' @param AccountId The `accountId` that is associated with the budget that you want a description of.
#' @param BudgetName The name of the budget that you want a description of.
#'
#' @examples
#'
#' @export
describe_budget <- function (AccountId, BudgetName) 
{
    op <- Operation(name = "DescribeBudget", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_budget_input(AccountId = AccountId, BudgetName = BudgetName)
    output <- describe_budget_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the budgets associated with an account
#'
#' Lists the budgets associated with an account.
#'
#' @param AccountId The `accountId` that is associated with the budgets that you want descriptions of.
#' @param MaxResults Optional integer. Specifies the maximum number of results to return in response.
#' @param NextToken The pagination token that indicates the next set of results to retrieve.
#'
#' @examples
#'
#' @export
describe_budgets <- function (AccountId, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeBudgets", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_budgets_input(AccountId = AccountId, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- describe_budgets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the notifications associated with a budget
#'
#' Lists the notifications associated with a budget.
#'
#' @param AccountId The `accountId` that is associated with the budget whose notifications you want descriptions of.
#' @param BudgetName The name of the budget whose notifications you want descriptions of.
#' @param MaxResults Optional integer. Specifies the maximum number of results to return in response.
#' @param NextToken The pagination token that indicates the next set of results to retrieve.
#'
#' @examples
#'
#' @export
describe_notifications_for_budget <- function (AccountId, BudgetName, 
    MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeNotificationsForBudget", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_notifications_for_budget_input(AccountId = AccountId, 
        BudgetName = BudgetName, MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_notifications_for_budget_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the subscribers associated with a notification
#'
#' Lists the subscribers associated with a notification.
#'
#' @param AccountId The `accountId` that is associated with the budget whose subscribers you want descriptions of.
#' @param BudgetName The name of the budget whose subscribers you want descriptions of.
#' @param Notification The notification whose subscribers you want to list.
#' @param MaxResults Optional integer. Specifies the maximum number of results to return in response.
#' @param NextToken The pagination token that indicates the next set of results to retrieve.
#'
#' @examples
#'
#' @export
describe_subscribers_for_notification <- function (AccountId, 
    BudgetName, Notification, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeSubscribersForNotification", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_subscribers_for_notification_input(AccountId = AccountId, 
        BudgetName = BudgetName, Notification = Notification, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_subscribers_for_notification_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a budget
#'
#' Updates a budget. You can change every part of a budget except for the `budgetName` and the `calculatedSpend`. When a budget is modified, the `calculatedSpend` drops to zero until AWS has new usage data to use for forecasting.
#'
#' @param AccountId The `accountId` that is associated with the budget that you want to update.
#' @param NewBudget The budget that you want to update your budget to.
#'
#' @examples
#'
#' @export
update_budget <- function (AccountId, NewBudget) 
{
    op <- Operation(name = "UpdateBudget", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_budget_input(AccountId = AccountId, NewBudget = NewBudget)
    output <- update_budget_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a notification
#'
#' Updates a notification.
#'
#' @param AccountId The `accountId` that is associated with the budget whose notification you want to update.
#' @param BudgetName The name of the budget whose notification you want to update.
#' @param OldNotification The previous notification associated with a budget.
#' @param NewNotification The updated notification to be associated with a budget.
#'
#' @examples
#'
#' @export
update_notification <- function (AccountId, BudgetName, OldNotification, 
    NewNotification) 
{
    op <- Operation(name = "UpdateNotification", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_notification_input(AccountId = AccountId, 
        BudgetName = BudgetName, OldNotification = OldNotification, 
        NewNotification = NewNotification)
    output <- update_notification_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a subscriber
#'
#' Updates a subscriber.
#'
#' @param AccountId The `accountId` that is associated with the budget whose subscriber you want to update.
#' @param BudgetName The name of the budget whose subscriber you want to update.
#' @param Notification The notification whose subscriber you want to update.
#' @param OldSubscriber The previous subscriber associated with a budget notification.
#' @param NewSubscriber The updated subscriber associated with a budget notification.
#'
#' @examples
#'
#' @export
update_subscriber <- function (AccountId, BudgetName, Notification, 
    OldSubscriber, NewSubscriber) 
{
    op <- Operation(name = "UpdateSubscriber", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_subscriber_input(AccountId = AccountId, BudgetName = BudgetName, 
        Notification = Notification, OldSubscriber = OldSubscriber, 
        NewSubscriber = NewSubscriber)
    output <- update_subscriber_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
