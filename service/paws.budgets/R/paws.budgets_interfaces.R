create_budget_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", max = 12L, min = 12L), 
        Budget = structure(list(BudgetName = structure(logical(0), 
            shape = "BudgetName", type = "string", max = 100L, 
            pattern = "[^:\\\\]+"), BudgetLimit = structure(list(Amount = structure(logical(0), 
            shape = "NumericValue", type = "string", pattern = "([0-9]*\\.)?[0-9]+"), 
            Unit = structure(logical(0), shape = "UnitValue", 
                type = "string", min = 1L)), shape = "Spend", 
            type = "structure"), CostFilters = structure(list(structure(list(structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "DimensionValues", 
            type = "list")), shape = "CostFilters", type = "map"), 
            CostTypes = structure(list(IncludeTax = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeSubscription = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), UseBlended = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeRefund = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeCredit = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeUpfront = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeRecurring = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeOtherSubscription = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeSupport = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeDiscount = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), UseAmortized = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE)), shape = "CostTypes", type = "structure"), 
            TimeUnit = structure(logical(0), shape = "TimeUnit", 
                type = "string"), TimePeriod = structure(list(Start = structure(logical(0), 
                shape = "GenericTimestamp", type = "timestamp"), 
                End = structure(logical(0), shape = "GenericTimestamp", 
                  type = "timestamp")), shape = "TimePeriod", 
                type = "structure"), CalculatedSpend = structure(list(ActualSpend = structure(list(Amount = structure(logical(0), 
                shape = "NumericValue", type = "string", pattern = "([0-9]*\\.)?[0-9]+"), 
                Unit = structure(logical(0), shape = "UnitValue", 
                  type = "string", min = 1L)), shape = "Spend", 
                type = "structure"), ForecastedSpend = structure(list(Amount = structure(logical(0), 
                shape = "NumericValue", type = "string", pattern = "([0-9]*\\.)?[0-9]+"), 
                Unit = structure(logical(0), shape = "UnitValue", 
                  type = "string", min = 1L)), shape = "Spend", 
                type = "structure")), shape = "CalculatedSpend", 
                type = "structure"), BudgetType = structure(logical(0), 
                shape = "BudgetType", type = "string")), shape = "Budget", 
            type = "structure"), NotificationsWithSubscribers = structure(list(structure(list(Notification = structure(list(NotificationType = structure(logical(0), 
            shape = "NotificationType", type = "string"), ComparisonOperator = structure(logical(0), 
            shape = "ComparisonOperator", type = "string"), Threshold = structure(logical(0), 
            shape = "NotificationThreshold", type = "double", 
            max = 1000000000L, min = 0.1), ThresholdType = structure(logical(0), 
            shape = "ThresholdType", type = "string")), shape = "Notification", 
            type = "structure"), Subscribers = structure(list(structure(list(SubscriptionType = structure(logical(0), 
            shape = "SubscriptionType", type = "string"), Address = structure(logical(0), 
            shape = "SubscriberAddress", type = "string", min = 1L)), 
            shape = "Subscriber", type = "structure")), shape = "Subscribers", 
            type = "list", max = 11L, min = 1L)), shape = "NotificationWithSubscribers", 
            type = "structure")), shape = "NotificationWithSubscribersList", 
            type = "list", max = 5L)), shape = "CreateBudgetRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_budget_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateBudgetResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_notification_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", max = 12L, min = 12L), 
        BudgetName = structure(logical(0), shape = "BudgetName", 
            type = "string", max = 100L, pattern = "[^:\\\\]+"), 
        Notification = structure(list(NotificationType = structure(logical(0), 
            shape = "NotificationType", type = "string"), ComparisonOperator = structure(logical(0), 
            shape = "ComparisonOperator", type = "string"), Threshold = structure(logical(0), 
            shape = "NotificationThreshold", type = "double", 
            max = 1000000000L, min = 0.1), ThresholdType = structure(logical(0), 
            shape = "ThresholdType", type = "string")), shape = "Notification", 
            type = "structure"), Subscribers = structure(list(structure(list(SubscriptionType = structure(logical(0), 
            shape = "SubscriptionType", type = "string"), Address = structure(logical(0), 
            shape = "SubscriberAddress", type = "string", min = 1L)), 
            shape = "Subscriber", type = "structure")), shape = "Subscribers", 
            type = "list", max = 11L, min = 1L)), shape = "CreateNotificationRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_notification_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateNotificationResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_subscriber_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", max = 12L, min = 12L), 
        BudgetName = structure(logical(0), shape = "BudgetName", 
            type = "string", max = 100L, pattern = "[^:\\\\]+"), 
        Notification = structure(list(NotificationType = structure(logical(0), 
            shape = "NotificationType", type = "string"), ComparisonOperator = structure(logical(0), 
            shape = "ComparisonOperator", type = "string"), Threshold = structure(logical(0), 
            shape = "NotificationThreshold", type = "double", 
            max = 1000000000L, min = 0.1), ThresholdType = structure(logical(0), 
            shape = "ThresholdType", type = "string")), shape = "Notification", 
            type = "structure"), Subscriber = structure(list(SubscriptionType = structure(logical(0), 
            shape = "SubscriptionType", type = "string"), Address = structure(logical(0), 
            shape = "SubscriberAddress", type = "string", min = 1L)), 
            shape = "Subscriber", type = "structure")), shape = "CreateSubscriberRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_subscriber_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateSubscriberResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_budget_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", max = 12L, min = 12L), 
        BudgetName = structure(logical(0), shape = "BudgetName", 
            type = "string", max = 100L, pattern = "[^:\\\\]+")), 
        shape = "DeleteBudgetRequest", type = "structure")
    return(populate(args, shape))
}

delete_budget_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteBudgetResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_notification_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", max = 12L, min = 12L), 
        BudgetName = structure(logical(0), shape = "BudgetName", 
            type = "string", max = 100L, pattern = "[^:\\\\]+"), 
        Notification = structure(list(NotificationType = structure(logical(0), 
            shape = "NotificationType", type = "string"), ComparisonOperator = structure(logical(0), 
            shape = "ComparisonOperator", type = "string"), Threshold = structure(logical(0), 
            shape = "NotificationThreshold", type = "double", 
            max = 1000000000L, min = 0.1), ThresholdType = structure(logical(0), 
            shape = "ThresholdType", type = "string")), shape = "Notification", 
            type = "structure")), shape = "DeleteNotificationRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_notification_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteNotificationResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_subscriber_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", max = 12L, min = 12L), 
        BudgetName = structure(logical(0), shape = "BudgetName", 
            type = "string", max = 100L, pattern = "[^:\\\\]+"), 
        Notification = structure(list(NotificationType = structure(logical(0), 
            shape = "NotificationType", type = "string"), ComparisonOperator = structure(logical(0), 
            shape = "ComparisonOperator", type = "string"), Threshold = structure(logical(0), 
            shape = "NotificationThreshold", type = "double", 
            max = 1000000000L, min = 0.1), ThresholdType = structure(logical(0), 
            shape = "ThresholdType", type = "string")), shape = "Notification", 
            type = "structure"), Subscriber = structure(list(SubscriptionType = structure(logical(0), 
            shape = "SubscriptionType", type = "string"), Address = structure(logical(0), 
            shape = "SubscriberAddress", type = "string", min = 1L)), 
            shape = "Subscriber", type = "structure")), shape = "DeleteSubscriberRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_subscriber_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteSubscriberResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_budget_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", max = 12L, min = 12L), 
        BudgetName = structure(logical(0), shape = "BudgetName", 
            type = "string", max = 100L, pattern = "[^:\\\\]+")), 
        shape = "DescribeBudgetRequest", type = "structure")
    return(populate(args, shape))
}

describe_budget_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Budget = structure(list(BudgetName = structure(logical(0), 
        shape = "BudgetName", type = "string", max = 100L, pattern = "[^:\\\\]+"), 
        BudgetLimit = structure(list(Amount = structure(logical(0), 
            shape = "NumericValue", type = "string", pattern = "([0-9]*\\.)?[0-9]+"), 
            Unit = structure(logical(0), shape = "UnitValue", 
                type = "string", min = 1L)), shape = "Spend", 
            type = "structure"), CostFilters = structure(list(structure(list(structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "DimensionValues", 
            type = "list")), shape = "CostFilters", type = "map"), 
        CostTypes = structure(list(IncludeTax = structure(logical(0), 
            shape = "NullableBoolean", type = "boolean", box = TRUE), 
            IncludeSubscription = structure(logical(0), shape = "NullableBoolean", 
                type = "boolean", box = TRUE), UseBlended = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeRefund = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeCredit = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeUpfront = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeRecurring = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeOtherSubscription = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeSupport = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeDiscount = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), UseAmortized = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE)), shape = "CostTypes", type = "structure"), 
        TimeUnit = structure(logical(0), shape = "TimeUnit", 
            type = "string"), TimePeriod = structure(list(Start = structure(logical(0), 
            shape = "GenericTimestamp", type = "timestamp"), 
            End = structure(logical(0), shape = "GenericTimestamp", 
                type = "timestamp")), shape = "TimePeriod", type = "structure"), 
        CalculatedSpend = structure(list(ActualSpend = structure(list(Amount = structure(logical(0), 
            shape = "NumericValue", type = "string", pattern = "([0-9]*\\.)?[0-9]+"), 
            Unit = structure(logical(0), shape = "UnitValue", 
                type = "string", min = 1L)), shape = "Spend", 
            type = "structure"), ForecastedSpend = structure(list(Amount = structure(logical(0), 
            shape = "NumericValue", type = "string", pattern = "([0-9]*\\.)?[0-9]+"), 
            Unit = structure(logical(0), shape = "UnitValue", 
                type = "string", min = 1L)), shape = "Spend", 
            type = "structure")), shape = "CalculatedSpend", 
            type = "structure"), BudgetType = structure(logical(0), 
            shape = "BudgetType", type = "string")), shape = "Budget", 
        type = "structure")), shape = "DescribeBudgetResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_budgets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", max = 12L, min = 12L), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", box = TRUE, max = 100L, min = 1L), 
        NextToken = structure(logical(0), shape = "GenericString", 
            type = "string")), shape = "DescribeBudgetsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_budgets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Budgets = structure(list(structure(list(BudgetName = structure(logical(0), 
        shape = "BudgetName", type = "string", max = 100L, pattern = "[^:\\\\]+"), 
        BudgetLimit = structure(list(Amount = structure(logical(0), 
            shape = "NumericValue", type = "string", pattern = "([0-9]*\\.)?[0-9]+"), 
            Unit = structure(logical(0), shape = "UnitValue", 
                type = "string", min = 1L)), shape = "Spend", 
            type = "structure"), CostFilters = structure(list(structure(list(structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "DimensionValues", 
            type = "list")), shape = "CostFilters", type = "map"), 
        CostTypes = structure(list(IncludeTax = structure(logical(0), 
            shape = "NullableBoolean", type = "boolean", box = TRUE), 
            IncludeSubscription = structure(logical(0), shape = "NullableBoolean", 
                type = "boolean", box = TRUE), UseBlended = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeRefund = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeCredit = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeUpfront = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeRecurring = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeOtherSubscription = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeSupport = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeDiscount = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), UseAmortized = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE)), shape = "CostTypes", type = "structure"), 
        TimeUnit = structure(logical(0), shape = "TimeUnit", 
            type = "string"), TimePeriod = structure(list(Start = structure(logical(0), 
            shape = "GenericTimestamp", type = "timestamp"), 
            End = structure(logical(0), shape = "GenericTimestamp", 
                type = "timestamp")), shape = "TimePeriod", type = "structure"), 
        CalculatedSpend = structure(list(ActualSpend = structure(list(Amount = structure(logical(0), 
            shape = "NumericValue", type = "string", pattern = "([0-9]*\\.)?[0-9]+"), 
            Unit = structure(logical(0), shape = "UnitValue", 
                type = "string", min = 1L)), shape = "Spend", 
            type = "structure"), ForecastedSpend = structure(list(Amount = structure(logical(0), 
            shape = "NumericValue", type = "string", pattern = "([0-9]*\\.)?[0-9]+"), 
            Unit = structure(logical(0), shape = "UnitValue", 
                type = "string", min = 1L)), shape = "Spend", 
            type = "structure")), shape = "CalculatedSpend", 
            type = "structure"), BudgetType = structure(logical(0), 
            shape = "BudgetType", type = "string")), shape = "Budget", 
        type = "structure")), shape = "Budgets", type = "list"), 
        NextToken = structure(logical(0), shape = "GenericString", 
            type = "string")), shape = "DescribeBudgetsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_notifications_for_budget_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", max = 12L, min = 12L), 
        BudgetName = structure(logical(0), shape = "BudgetName", 
            type = "string", max = 100L, pattern = "[^:\\\\]+"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", box = TRUE, max = 100L, min = 1L), 
        NextToken = structure(logical(0), shape = "GenericString", 
            type = "string")), shape = "DescribeNotificationsForBudgetRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_notifications_for_budget_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Notifications = structure(list(structure(list(NotificationType = structure(logical(0), 
        shape = "NotificationType", type = "string"), ComparisonOperator = structure(logical(0), 
        shape = "ComparisonOperator", type = "string"), Threshold = structure(logical(0), 
        shape = "NotificationThreshold", type = "double", max = 1000000000L, 
        min = 0.1), ThresholdType = structure(logical(0), shape = "ThresholdType", 
        type = "string")), shape = "Notification", type = "structure")), 
        shape = "Notifications", type = "list"), NextToken = structure(logical(0), 
        shape = "GenericString", type = "string")), shape = "DescribeNotificationsForBudgetResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_subscribers_for_notification_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", max = 12L, min = 12L), 
        BudgetName = structure(logical(0), shape = "BudgetName", 
            type = "string", max = 100L, pattern = "[^:\\\\]+"), 
        Notification = structure(list(NotificationType = structure(logical(0), 
            shape = "NotificationType", type = "string"), ComparisonOperator = structure(logical(0), 
            shape = "ComparisonOperator", type = "string"), Threshold = structure(logical(0), 
            shape = "NotificationThreshold", type = "double", 
            max = 1000000000L, min = 0.1), ThresholdType = structure(logical(0), 
            shape = "ThresholdType", type = "string")), shape = "Notification", 
            type = "structure"), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", box = TRUE, 
            max = 100L, min = 1L), NextToken = structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "DescribeSubscribersForNotificationRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_subscribers_for_notification_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Subscribers = structure(list(structure(list(SubscriptionType = structure(logical(0), 
        shape = "SubscriptionType", type = "string"), Address = structure(logical(0), 
        shape = "SubscriberAddress", type = "string", min = 1L)), 
        shape = "Subscriber", type = "structure")), shape = "Subscribers", 
        type = "list", max = 11L, min = 1L), NextToken = structure(logical(0), 
        shape = "GenericString", type = "string")), shape = "DescribeSubscribersForNotificationResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_budget_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", max = 12L, min = 12L), 
        NewBudget = structure(list(BudgetName = structure(logical(0), 
            shape = "BudgetName", type = "string", max = 100L, 
            pattern = "[^:\\\\]+"), BudgetLimit = structure(list(Amount = structure(logical(0), 
            shape = "NumericValue", type = "string", pattern = "([0-9]*\\.)?[0-9]+"), 
            Unit = structure(logical(0), shape = "UnitValue", 
                type = "string", min = 1L)), shape = "Spend", 
            type = "structure"), CostFilters = structure(list(structure(list(structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "DimensionValues", 
            type = "list")), shape = "CostFilters", type = "map"), 
            CostTypes = structure(list(IncludeTax = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeSubscription = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), UseBlended = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeRefund = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeCredit = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeUpfront = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeRecurring = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeOtherSubscription = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeSupport = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), IncludeDiscount = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE), UseAmortized = structure(logical(0), 
                shape = "NullableBoolean", type = "boolean", 
                box = TRUE)), shape = "CostTypes", type = "structure"), 
            TimeUnit = structure(logical(0), shape = "TimeUnit", 
                type = "string"), TimePeriod = structure(list(Start = structure(logical(0), 
                shape = "GenericTimestamp", type = "timestamp"), 
                End = structure(logical(0), shape = "GenericTimestamp", 
                  type = "timestamp")), shape = "TimePeriod", 
                type = "structure"), CalculatedSpend = structure(list(ActualSpend = structure(list(Amount = structure(logical(0), 
                shape = "NumericValue", type = "string", pattern = "([0-9]*\\.)?[0-9]+"), 
                Unit = structure(logical(0), shape = "UnitValue", 
                  type = "string", min = 1L)), shape = "Spend", 
                type = "structure"), ForecastedSpend = structure(list(Amount = structure(logical(0), 
                shape = "NumericValue", type = "string", pattern = "([0-9]*\\.)?[0-9]+"), 
                Unit = structure(logical(0), shape = "UnitValue", 
                  type = "string", min = 1L)), shape = "Spend", 
                type = "structure")), shape = "CalculatedSpend", 
                type = "structure"), BudgetType = structure(logical(0), 
                shape = "BudgetType", type = "string")), shape = "Budget", 
            type = "structure")), shape = "UpdateBudgetRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_budget_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateBudgetResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_notification_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", max = 12L, min = 12L), 
        BudgetName = structure(logical(0), shape = "BudgetName", 
            type = "string", max = 100L, pattern = "[^:\\\\]+"), 
        OldNotification = structure(list(NotificationType = structure(logical(0), 
            shape = "NotificationType", type = "string"), ComparisonOperator = structure(logical(0), 
            shape = "ComparisonOperator", type = "string"), Threshold = structure(logical(0), 
            shape = "NotificationThreshold", type = "double", 
            max = 1000000000L, min = 0.1), ThresholdType = structure(logical(0), 
            shape = "ThresholdType", type = "string")), shape = "Notification", 
            type = "structure"), NewNotification = structure(list(NotificationType = structure(logical(0), 
            shape = "NotificationType", type = "string"), ComparisonOperator = structure(logical(0), 
            shape = "ComparisonOperator", type = "string"), Threshold = structure(logical(0), 
            shape = "NotificationThreshold", type = "double", 
            max = 1000000000L, min = 0.1), ThresholdType = structure(logical(0), 
            shape = "ThresholdType", type = "string")), shape = "Notification", 
            type = "structure")), shape = "UpdateNotificationRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_notification_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateNotificationResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_subscriber_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", max = 12L, min = 12L), 
        BudgetName = structure(logical(0), shape = "BudgetName", 
            type = "string", max = 100L, pattern = "[^:\\\\]+"), 
        Notification = structure(list(NotificationType = structure(logical(0), 
            shape = "NotificationType", type = "string"), ComparisonOperator = structure(logical(0), 
            shape = "ComparisonOperator", type = "string"), Threshold = structure(logical(0), 
            shape = "NotificationThreshold", type = "double", 
            max = 1000000000L, min = 0.1), ThresholdType = structure(logical(0), 
            shape = "ThresholdType", type = "string")), shape = "Notification", 
            type = "structure"), OldSubscriber = structure(list(SubscriptionType = structure(logical(0), 
            shape = "SubscriptionType", type = "string"), Address = structure(logical(0), 
            shape = "SubscriberAddress", type = "string", min = 1L)), 
            shape = "Subscriber", type = "structure"), NewSubscriber = structure(list(SubscriptionType = structure(logical(0), 
            shape = "SubscriptionType", type = "string"), Address = structure(logical(0), 
            shape = "SubscriberAddress", type = "string", min = 1L)), 
            shape = "Subscriber", type = "structure")), shape = "UpdateSubscriberRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_subscriber_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateSubscriberResponse", 
        type = "structure")
    return(populate(args, shape))
}
