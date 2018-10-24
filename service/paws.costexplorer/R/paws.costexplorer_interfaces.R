get_cost_and_usage_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TimePeriod = structure(list(Start = structure(logical(0), 
        shape = "YearMonthDay", type = "string", pattern = "\\d{4}-\\d{2}-\\d{2}"), 
        End = structure(logical(0), shape = "YearMonthDay", type = "string", 
            pattern = "\\d{4}-\\d{2}-\\d{2}")), shape = "DateInterval", 
        type = "structure"), Granularity = structure(logical(0), 
        shape = "Granularity", type = "string"), Filter = structure(list(Or = structure(list(structure(logical(0), 
        shape = "Expression", type = "structure")), shape = "Expressions", 
        type = "list"), And = structure(list(structure(logical(0), 
        shape = "Expression", type = "structure")), shape = "Expressions", 
        type = "list"), Not = structure(logical(0), shape = "Expression", 
        type = "structure"), Dimensions = structure(list(Key = structure(logical(0), 
        shape = "Dimension", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "Value", type = "string")), shape = "Values", 
        type = "list")), shape = "DimensionValues", type = "structure"), 
        Tags = structure(list(Key = structure(logical(0), shape = "TagKey", 
            type = "string"), Values = structure(list(structure(logical(0), 
            shape = "Value", type = "string")), shape = "Values", 
            type = "list")), shape = "TagValues", type = "structure")), 
        shape = "Expression", type = "structure"), Metrics = structure(list(structure(logical(0), 
        shape = "MetricName", type = "string")), shape = "MetricNames", 
        type = "list"), GroupBy = structure(list(structure(list(Type = structure(logical(0), 
        shape = "GroupDefinitionType", type = "string"), Key = structure(logical(0), 
        shape = "GroupDefinitionKey", type = "string")), shape = "GroupDefinition", 
        type = "structure")), shape = "GroupDefinitions", type = "list"), 
        NextPageToken = structure(logical(0), shape = "NextPageToken", 
            type = "string")), shape = "GetCostAndUsageRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_cost_and_usage_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextPageToken = structure(logical(0), 
        shape = "NextPageToken", type = "string"), GroupDefinitions = structure(list(structure(list(Type = structure(logical(0), 
        shape = "GroupDefinitionType", type = "string"), Key = structure(logical(0), 
        shape = "GroupDefinitionKey", type = "string")), shape = "GroupDefinition", 
        type = "structure")), shape = "GroupDefinitions", type = "list"), 
        ResultsByTime = structure(list(structure(list(TimePeriod = structure(list(Start = structure(logical(0), 
            shape = "YearMonthDay", type = "string", pattern = "\\d{4}-\\d{2}-\\d{2}"), 
            End = structure(logical(0), shape = "YearMonthDay", 
                type = "string", pattern = "\\d{4}-\\d{2}-\\d{2}")), 
            shape = "DateInterval", type = "structure"), Total = structure(list(structure(list(Amount = structure(logical(0), 
            shape = "MetricAmount", type = "string"), Unit = structure(logical(0), 
            shape = "MetricUnit", type = "string")), shape = "MetricValue", 
            type = "structure")), shape = "Metrics", type = "map"), 
            Groups = structure(list(structure(list(Keys = structure(list(structure(logical(0), 
                shape = "Key", type = "string")), shape = "Keys", 
                type = "list"), Metrics = structure(list(structure(list(Amount = structure(logical(0), 
                shape = "MetricAmount", type = "string"), Unit = structure(logical(0), 
                shape = "MetricUnit", type = "string")), shape = "MetricValue", 
                type = "structure")), shape = "Metrics", type = "map")), 
                shape = "Group", type = "structure")), shape = "Groups", 
                type = "list"), Estimated = structure(logical(0), 
                shape = "Estimated", type = "boolean")), shape = "ResultByTime", 
            type = "structure")), shape = "ResultsByTime", type = "list")), 
        shape = "GetCostAndUsageResponse", type = "structure")
    return(populate(args, shape))
}

get_dimension_values_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SearchString = structure(logical(0), 
        shape = "SearchString", type = "string"), TimePeriod = structure(list(Start = structure(logical(0), 
        shape = "YearMonthDay", type = "string", pattern = "\\d{4}-\\d{2}-\\d{2}"), 
        End = structure(logical(0), shape = "YearMonthDay", type = "string", 
            pattern = "\\d{4}-\\d{2}-\\d{2}")), shape = "DateInterval", 
        type = "structure"), Dimension = structure(logical(0), 
        shape = "Dimension", type = "string"), Context = structure(logical(0), 
        shape = "Context", type = "string"), NextPageToken = structure(logical(0), 
        shape = "NextPageToken", type = "string")), shape = "GetDimensionValuesRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_dimension_values_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DimensionValues = structure(list(structure(list(Value = structure(logical(0), 
        shape = "Value", type = "string"), Attributes = structure(list(structure(logical(0), 
        shape = "AttributeValue", type = "string")), shape = "Attributes", 
        type = "map")), shape = "DimensionValuesWithAttributes", 
        type = "structure")), shape = "DimensionValuesWithAttributesList", 
        type = "list"), ReturnSize = structure(logical(0), shape = "PageSize", 
        type = "integer"), TotalSize = structure(logical(0), 
        shape = "PageSize", type = "integer"), NextPageToken = structure(logical(0), 
        shape = "NextPageToken", type = "string")), shape = "GetDimensionValuesResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_reservation_coverage_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TimePeriod = structure(list(Start = structure(logical(0), 
        shape = "YearMonthDay", type = "string", pattern = "\\d{4}-\\d{2}-\\d{2}"), 
        End = structure(logical(0), shape = "YearMonthDay", type = "string", 
            pattern = "\\d{4}-\\d{2}-\\d{2}")), shape = "DateInterval", 
        type = "structure"), GroupBy = structure(list(structure(list(Type = structure(logical(0), 
        shape = "GroupDefinitionType", type = "string"), Key = structure(logical(0), 
        shape = "GroupDefinitionKey", type = "string")), shape = "GroupDefinition", 
        type = "structure")), shape = "GroupDefinitions", type = "list"), 
        Granularity = structure(logical(0), shape = "Granularity", 
            type = "string"), Filter = structure(list(Or = structure(list(structure(logical(0), 
            shape = "Expression", type = "structure")), shape = "Expressions", 
            type = "list"), And = structure(list(structure(logical(0), 
            shape = "Expression", type = "structure")), shape = "Expressions", 
            type = "list"), Not = structure(logical(0), shape = "Expression", 
            type = "structure"), Dimensions = structure(list(Key = structure(logical(0), 
            shape = "Dimension", type = "string"), Values = structure(list(structure(logical(0), 
            shape = "Value", type = "string")), shape = "Values", 
            type = "list")), shape = "DimensionValues", type = "structure"), 
            Tags = structure(list(Key = structure(logical(0), 
                shape = "TagKey", type = "string"), Values = structure(list(structure(logical(0), 
                shape = "Value", type = "string")), shape = "Values", 
                type = "list")), shape = "TagValues", type = "structure")), 
            shape = "Expression", type = "structure"), NextPageToken = structure(logical(0), 
            shape = "NextPageToken", type = "string")), shape = "GetReservationCoverageRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_reservation_coverage_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CoveragesByTime = structure(list(structure(list(TimePeriod = structure(list(Start = structure(logical(0), 
        shape = "YearMonthDay", type = "string", pattern = "\\d{4}-\\d{2}-\\d{2}"), 
        End = structure(logical(0), shape = "YearMonthDay", type = "string", 
            pattern = "\\d{4}-\\d{2}-\\d{2}")), shape = "DateInterval", 
        type = "structure"), Groups = structure(list(structure(list(Attributes = structure(list(structure(logical(0), 
        shape = "AttributeValue", type = "string")), shape = "Attributes", 
        type = "map"), Coverage = structure(list(CoverageHours = structure(list(OnDemandHours = structure(logical(0), 
        shape = "OnDemandHours", type = "string"), ReservedHours = structure(logical(0), 
        shape = "ReservedHours", type = "string"), TotalRunningHours = structure(logical(0), 
        shape = "TotalRunningHours", type = "string"), CoverageHoursPercentage = structure(logical(0), 
        shape = "CoverageHoursPercentage", type = "string")), 
        shape = "CoverageHours", type = "structure")), shape = "Coverage", 
        type = "structure")), shape = "ReservationCoverageGroup", 
        type = "structure")), shape = "ReservationCoverageGroups", 
        type = "list"), Total = structure(list(CoverageHours = structure(list(OnDemandHours = structure(logical(0), 
        shape = "OnDemandHours", type = "string"), ReservedHours = structure(logical(0), 
        shape = "ReservedHours", type = "string"), TotalRunningHours = structure(logical(0), 
        shape = "TotalRunningHours", type = "string"), CoverageHoursPercentage = structure(logical(0), 
        shape = "CoverageHoursPercentage", type = "string")), 
        shape = "CoverageHours", type = "structure")), shape = "Coverage", 
        type = "structure")), shape = "CoverageByTime", type = "structure")), 
        shape = "CoveragesByTime", type = "list"), Total = structure(list(CoverageHours = structure(list(OnDemandHours = structure(logical(0), 
        shape = "OnDemandHours", type = "string"), ReservedHours = structure(logical(0), 
        shape = "ReservedHours", type = "string"), TotalRunningHours = structure(logical(0), 
        shape = "TotalRunningHours", type = "string"), CoverageHoursPercentage = structure(logical(0), 
        shape = "CoverageHoursPercentage", type = "string")), 
        shape = "CoverageHours", type = "structure")), shape = "Coverage", 
        type = "structure"), NextPageToken = structure(logical(0), 
        shape = "NextPageToken", type = "string")), shape = "GetReservationCoverageResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_reservation_purchase_recommendation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "GenericString", type = "string"), Service = structure(logical(0), 
        shape = "GenericString", type = "string"), AccountScope = structure(logical(0), 
        shape = "AccountScope", type = "string"), LookbackPeriodInDays = structure(logical(0), 
        shape = "LookbackPeriodInDays", type = "string"), TermInYears = structure(logical(0), 
        shape = "TermInYears", type = "string"), PaymentOption = structure(logical(0), 
        shape = "PaymentOption", type = "string"), ServiceSpecification = structure(list(EC2Specification = structure(list(OfferingClass = structure(logical(0), 
        shape = "OfferingClass", type = "string")), shape = "EC2Specification", 
        type = "structure")), shape = "ServiceSpecification", 
        type = "structure"), PageSize = structure(logical(0), 
        shape = "NonNegativeInteger", type = "integer", min = 0L), 
        NextPageToken = structure(logical(0), shape = "NextPageToken", 
            type = "string")), shape = "GetReservationPurchaseRecommendationRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_reservation_purchase_recommendation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Metadata = structure(list(RecommendationId = structure(logical(0), 
        shape = "GenericString", type = "string"), GenerationTimestamp = structure(logical(0), 
        shape = "GenericString", type = "string")), shape = "ReservationPurchaseRecommendationMetadata", 
        type = "structure"), Recommendations = structure(list(structure(list(AccountScope = structure(logical(0), 
        shape = "AccountScope", type = "string"), LookbackPeriodInDays = structure(logical(0), 
        shape = "LookbackPeriodInDays", type = "string"), TermInYears = structure(logical(0), 
        shape = "TermInYears", type = "string"), PaymentOption = structure(logical(0), 
        shape = "PaymentOption", type = "string"), ServiceSpecification = structure(list(EC2Specification = structure(list(OfferingClass = structure(logical(0), 
        shape = "OfferingClass", type = "string")), shape = "EC2Specification", 
        type = "structure")), shape = "ServiceSpecification", 
        type = "structure"), RecommendationDetails = structure(list(structure(list(InstanceDetails = structure(list(EC2InstanceDetails = structure(list(Family = structure(logical(0), 
        shape = "GenericString", type = "string"), InstanceType = structure(logical(0), 
        shape = "GenericString", type = "string"), Region = structure(logical(0), 
        shape = "GenericString", type = "string"), AvailabilityZone = structure(logical(0), 
        shape = "GenericString", type = "string"), Platform = structure(logical(0), 
        shape = "GenericString", type = "string"), Tenancy = structure(logical(0), 
        shape = "GenericString", type = "string"), CurrentGeneration = structure(logical(0), 
        shape = "GenericBoolean", type = "boolean"), SizeFlexEligible = structure(logical(0), 
        shape = "GenericBoolean", type = "boolean")), shape = "EC2InstanceDetails", 
        type = "structure"), RDSInstanceDetails = structure(list(Family = structure(logical(0), 
        shape = "GenericString", type = "string"), InstanceType = structure(logical(0), 
        shape = "GenericString", type = "string"), Region = structure(logical(0), 
        shape = "GenericString", type = "string"), DatabaseEngine = structure(logical(0), 
        shape = "GenericString", type = "string"), DatabaseEdition = structure(logical(0), 
        shape = "GenericString", type = "string"), DeploymentOption = structure(logical(0), 
        shape = "GenericString", type = "string"), LicenseModel = structure(logical(0), 
        shape = "GenericString", type = "string"), CurrentGeneration = structure(logical(0), 
        shape = "GenericBoolean", type = "boolean"), SizeFlexEligible = structure(logical(0), 
        shape = "GenericBoolean", type = "boolean")), shape = "RDSInstanceDetails", 
        type = "structure"), RedshiftInstanceDetails = structure(list(Family = structure(logical(0), 
        shape = "GenericString", type = "string"), NodeType = structure(logical(0), 
        shape = "GenericString", type = "string"), Region = structure(logical(0), 
        shape = "GenericString", type = "string"), CurrentGeneration = structure(logical(0), 
        shape = "GenericBoolean", type = "boolean"), SizeFlexEligible = structure(logical(0), 
        shape = "GenericBoolean", type = "boolean")), shape = "RedshiftInstanceDetails", 
        type = "structure"), ElastiCacheInstanceDetails = structure(list(Family = structure(logical(0), 
        shape = "GenericString", type = "string"), NodeType = structure(logical(0), 
        shape = "GenericString", type = "string"), Region = structure(logical(0), 
        shape = "GenericString", type = "string"), ProductDescription = structure(logical(0), 
        shape = "GenericString", type = "string"), CurrentGeneration = structure(logical(0), 
        shape = "GenericBoolean", type = "boolean"), SizeFlexEligible = structure(logical(0), 
        shape = "GenericBoolean", type = "boolean")), shape = "ElastiCacheInstanceDetails", 
        type = "structure"), ESInstanceDetails = structure(list(InstanceClass = structure(logical(0), 
        shape = "GenericString", type = "string"), InstanceSize = structure(logical(0), 
        shape = "GenericString", type = "string"), Region = structure(logical(0), 
        shape = "GenericString", type = "string"), CurrentGeneration = structure(logical(0), 
        shape = "GenericBoolean", type = "boolean"), SizeFlexEligible = structure(logical(0), 
        shape = "GenericBoolean", type = "boolean")), shape = "ESInstanceDetails", 
        type = "structure")), shape = "InstanceDetails", type = "structure"), 
        RecommendedNumberOfInstancesToPurchase = structure(logical(0), 
            shape = "GenericString", type = "string"), RecommendedNormalizedUnitsToPurchase = structure(logical(0), 
            shape = "GenericString", type = "string"), MinimumNumberOfInstancesUsedPerHour = structure(logical(0), 
            shape = "GenericString", type = "string"), MinimumNormalizedUnitsUsedPerHour = structure(logical(0), 
            shape = "GenericString", type = "string"), MaximumNumberOfInstancesUsedPerHour = structure(logical(0), 
            shape = "GenericString", type = "string"), MaximumNormalizedUnitsUsedPerHour = structure(logical(0), 
            shape = "GenericString", type = "string"), AverageNumberOfInstancesUsedPerHour = structure(logical(0), 
            shape = "GenericString", type = "string"), AverageNormalizedUnitsUsedPerHour = structure(logical(0), 
            shape = "GenericString", type = "string"), AverageUtilization = structure(logical(0), 
            shape = "GenericString", type = "string"), EstimatedBreakEvenInMonths = structure(logical(0), 
            shape = "GenericString", type = "string"), CurrencyCode = structure(logical(0), 
            shape = "GenericString", type = "string"), EstimatedMonthlySavingsAmount = structure(logical(0), 
            shape = "GenericString", type = "string"), EstimatedMonthlySavingsPercentage = structure(logical(0), 
            shape = "GenericString", type = "string"), EstimatedMonthlyOnDemandCost = structure(logical(0), 
            shape = "GenericString", type = "string"), EstimatedReservationCostForLookbackPeriod = structure(logical(0), 
            shape = "GenericString", type = "string"), UpfrontCost = structure(logical(0), 
            shape = "GenericString", type = "string"), RecurringStandardMonthlyCost = structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "ReservationPurchaseRecommendationDetail", 
        type = "structure")), shape = "ReservationPurchaseRecommendationDetails", 
        type = "list"), RecommendationSummary = structure(list(TotalEstimatedMonthlySavingsAmount = structure(logical(0), 
        shape = "GenericString", type = "string"), TotalEstimatedMonthlySavingsPercentage = structure(logical(0), 
        shape = "GenericString", type = "string"), CurrencyCode = structure(logical(0), 
        shape = "GenericString", type = "string")), shape = "ReservationPurchaseRecommendationSummary", 
        type = "structure")), shape = "ReservationPurchaseRecommendation", 
        type = "structure")), shape = "ReservationPurchaseRecommendations", 
        type = "list"), NextPageToken = structure(logical(0), 
        shape = "NextPageToken", type = "string")), shape = "GetReservationPurchaseRecommendationResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_reservation_utilization_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TimePeriod = structure(list(Start = structure(logical(0), 
        shape = "YearMonthDay", type = "string", pattern = "\\d{4}-\\d{2}-\\d{2}"), 
        End = structure(logical(0), shape = "YearMonthDay", type = "string", 
            pattern = "\\d{4}-\\d{2}-\\d{2}")), shape = "DateInterval", 
        type = "structure"), GroupBy = structure(list(structure(list(Type = structure(logical(0), 
        shape = "GroupDefinitionType", type = "string"), Key = structure(logical(0), 
        shape = "GroupDefinitionKey", type = "string")), shape = "GroupDefinition", 
        type = "structure")), shape = "GroupDefinitions", type = "list"), 
        Granularity = structure(logical(0), shape = "Granularity", 
            type = "string"), Filter = structure(list(Or = structure(list(structure(logical(0), 
            shape = "Expression", type = "structure")), shape = "Expressions", 
            type = "list"), And = structure(list(structure(logical(0), 
            shape = "Expression", type = "structure")), shape = "Expressions", 
            type = "list"), Not = structure(logical(0), shape = "Expression", 
            type = "structure"), Dimensions = structure(list(Key = structure(logical(0), 
            shape = "Dimension", type = "string"), Values = structure(list(structure(logical(0), 
            shape = "Value", type = "string")), shape = "Values", 
            type = "list")), shape = "DimensionValues", type = "structure"), 
            Tags = structure(list(Key = structure(logical(0), 
                shape = "TagKey", type = "string"), Values = structure(list(structure(logical(0), 
                shape = "Value", type = "string")), shape = "Values", 
                type = "list")), shape = "TagValues", type = "structure")), 
            shape = "Expression", type = "structure"), NextPageToken = structure(logical(0), 
            shape = "NextPageToken", type = "string")), shape = "GetReservationUtilizationRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_reservation_utilization_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UtilizationsByTime = structure(list(structure(list(TimePeriod = structure(list(Start = structure(logical(0), 
        shape = "YearMonthDay", type = "string", pattern = "\\d{4}-\\d{2}-\\d{2}"), 
        End = structure(logical(0), shape = "YearMonthDay", type = "string", 
            pattern = "\\d{4}-\\d{2}-\\d{2}")), shape = "DateInterval", 
        type = "structure"), Groups = structure(list(structure(list(Key = structure(logical(0), 
        shape = "ReservationGroupKey", type = "string"), Value = structure(logical(0), 
        shape = "ReservationGroupValue", type = "string"), Attributes = structure(list(structure(logical(0), 
        shape = "AttributeValue", type = "string")), shape = "Attributes", 
        type = "map"), Utilization = structure(list(UtilizationPercentage = structure(logical(0), 
        shape = "UtilizationPercentage", type = "string"), PurchasedHours = structure(logical(0), 
        shape = "PurchasedHours", type = "string"), TotalActualHours = structure(logical(0), 
        shape = "TotalActualHours", type = "string"), UnusedHours = structure(logical(0), 
        shape = "UnusedHours", type = "string"), OnDemandCostOfRIHoursUsed = structure(logical(0), 
        shape = "OnDemandCostOfRIHoursUsed", type = "string"), 
        NetRISavings = structure(logical(0), shape = "NetRISavings", 
            type = "string"), TotalPotentialRISavings = structure(logical(0), 
            shape = "TotalPotentialRISavings", type = "string"), 
        AmortizedUpfrontFee = structure(logical(0), shape = "AmortizedUpfrontFee", 
            type = "string"), AmortizedRecurringFee = structure(logical(0), 
            shape = "AmortizedRecurringFee", type = "string"), 
        TotalAmortizedFee = structure(logical(0), shape = "TotalAmortizedFee", 
            type = "string")), shape = "ReservationAggregates", 
        type = "structure")), shape = "ReservationUtilizationGroup", 
        type = "structure")), shape = "ReservationUtilizationGroups", 
        type = "list"), Total = structure(list(UtilizationPercentage = structure(logical(0), 
        shape = "UtilizationPercentage", type = "string"), PurchasedHours = structure(logical(0), 
        shape = "PurchasedHours", type = "string"), TotalActualHours = structure(logical(0), 
        shape = "TotalActualHours", type = "string"), UnusedHours = structure(logical(0), 
        shape = "UnusedHours", type = "string"), OnDemandCostOfRIHoursUsed = structure(logical(0), 
        shape = "OnDemandCostOfRIHoursUsed", type = "string"), 
        NetRISavings = structure(logical(0), shape = "NetRISavings", 
            type = "string"), TotalPotentialRISavings = structure(logical(0), 
            shape = "TotalPotentialRISavings", type = "string"), 
        AmortizedUpfrontFee = structure(logical(0), shape = "AmortizedUpfrontFee", 
            type = "string"), AmortizedRecurringFee = structure(logical(0), 
            shape = "AmortizedRecurringFee", type = "string"), 
        TotalAmortizedFee = structure(logical(0), shape = "TotalAmortizedFee", 
            type = "string")), shape = "ReservationAggregates", 
        type = "structure")), shape = "UtilizationByTime", type = "structure")), 
        shape = "UtilizationsByTime", type = "list"), Total = structure(list(UtilizationPercentage = structure(logical(0), 
        shape = "UtilizationPercentage", type = "string"), PurchasedHours = structure(logical(0), 
        shape = "PurchasedHours", type = "string"), TotalActualHours = structure(logical(0), 
        shape = "TotalActualHours", type = "string"), UnusedHours = structure(logical(0), 
        shape = "UnusedHours", type = "string"), OnDemandCostOfRIHoursUsed = structure(logical(0), 
        shape = "OnDemandCostOfRIHoursUsed", type = "string"), 
        NetRISavings = structure(logical(0), shape = "NetRISavings", 
            type = "string"), TotalPotentialRISavings = structure(logical(0), 
            shape = "TotalPotentialRISavings", type = "string"), 
        AmortizedUpfrontFee = structure(logical(0), shape = "AmortizedUpfrontFee", 
            type = "string"), AmortizedRecurringFee = structure(logical(0), 
            shape = "AmortizedRecurringFee", type = "string"), 
        TotalAmortizedFee = structure(logical(0), shape = "TotalAmortizedFee", 
            type = "string")), shape = "ReservationAggregates", 
        type = "structure"), NextPageToken = structure(logical(0), 
        shape = "NextPageToken", type = "string")), shape = "GetReservationUtilizationResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SearchString = structure(logical(0), 
        shape = "SearchString", type = "string"), TimePeriod = structure(list(Start = structure(logical(0), 
        shape = "YearMonthDay", type = "string", pattern = "\\d{4}-\\d{2}-\\d{2}"), 
        End = structure(logical(0), shape = "YearMonthDay", type = "string", 
            pattern = "\\d{4}-\\d{2}-\\d{2}")), shape = "DateInterval", 
        type = "structure"), TagKey = structure(logical(0), shape = "TagKey", 
        type = "string"), NextPageToken = structure(logical(0), 
        shape = "NextPageToken", type = "string")), shape = "GetTagsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextPageToken = structure(logical(0), 
        shape = "NextPageToken", type = "string"), Tags = structure(list(structure(logical(0), 
        shape = "Entity", type = "string")), shape = "TagList", 
        type = "list"), ReturnSize = structure(logical(0), shape = "PageSize", 
        type = "integer"), TotalSize = structure(logical(0), 
        shape = "PageSize", type = "integer")), shape = "GetTagsResponse", 
        type = "structure")
    return(populate(args, shape))
}
