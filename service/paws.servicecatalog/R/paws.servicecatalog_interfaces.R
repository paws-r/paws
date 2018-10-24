accept_portfolio_share_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        PortfolioId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*")), 
        shape = "AcceptPortfolioShareInput", type = "structure")
    return(populate(args, shape))
}

accept_portfolio_share_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AcceptPortfolioShareOutput", 
        type = "structure")
    return(populate(args, shape))
}

associate_principal_with_portfolio_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        PortfolioId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        PrincipalARN = structure(logical(0), shape = "PrincipalARN", 
            type = "string", max = 1000L, min = 1L), PrincipalType = structure(logical(0), 
            shape = "PrincipalType", type = "string")), shape = "AssociatePrincipalWithPortfolioInput", 
        type = "structure")
    return(populate(args, shape))
}

associate_principal_with_portfolio_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AssociatePrincipalWithPortfolioOutput", 
        type = "structure")
    return(populate(args, shape))
}

associate_product_with_portfolio_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        ProductId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        PortfolioId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        SourcePortfolioId = structure(logical(0), shape = "Id", 
            type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*")), 
        shape = "AssociateProductWithPortfolioInput", type = "structure")
    return(populate(args, shape))
}

associate_product_with_portfolio_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AssociateProductWithPortfolioOutput", 
        type = "structure")
    return(populate(args, shape))
}

associate_service_action_with_provisioning_artifact_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisioningArtifactId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ServiceActionId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L)), 
        shape = "AssociateServiceActionWithProvisioningArtifactInput", 
        type = "structure")
    return(populate(args, shape))
}

associate_service_action_with_provisioning_artifact_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AssociateServiceActionWithProvisioningArtifactOutput", 
        type = "structure")
    return(populate(args, shape))
}

associate_tag_option_with_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "ResourceId", type = "string"), TagOptionId = structure(logical(0), 
        shape = "TagOptionId", type = "string", max = 100L, min = 1L)), 
        shape = "AssociateTagOptionWithResourceInput", type = "structure")
    return(populate(args, shape))
}

associate_tag_option_with_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AssociateTagOptionWithResourceOutput", 
        type = "structure")
    return(populate(args, shape))
}

batch_associate_service_action_with_provisioning_artifact_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceActionAssociations = structure(list(structure(list(ServiceActionId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisioningArtifactId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*")), shape = "ServiceActionAssociation", 
        type = "structure")), shape = "ServiceActionAssociations", 
        type = "list", max = 50L, min = 1L), AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L)), 
        shape = "BatchAssociateServiceActionWithProvisioningArtifactInput", 
        type = "structure")
    return(populate(args, shape))
}

batch_associate_service_action_with_provisioning_artifact_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedServiceActionAssociations = structure(list(structure(list(ServiceActionId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisioningArtifactId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ErrorCode = structure(logical(0), 
        shape = "ServiceActionAssociationErrorCode", type = "string"), 
        ErrorMessage = structure(logical(0), shape = "ServiceActionAssociationErrorMessage", 
            type = "string", max = 1024L, min = 1L)), shape = "FailedServiceActionAssociation", 
        type = "structure")), shape = "FailedServiceActionAssociations", 
        type = "list", max = 50L)), shape = "BatchAssociateServiceActionWithProvisioningArtifactOutput", 
        type = "structure")
    return(populate(args, shape))
}

batch_disassociate_service_action_from_provisioning_artifact_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceActionAssociations = structure(list(structure(list(ServiceActionId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisioningArtifactId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*")), shape = "ServiceActionAssociation", 
        type = "structure")), shape = "ServiceActionAssociations", 
        type = "list", max = 50L, min = 1L), AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L)), 
        shape = "BatchDisassociateServiceActionFromProvisioningArtifactInput", 
        type = "structure")
    return(populate(args, shape))
}

batch_disassociate_service_action_from_provisioning_artifact_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedServiceActionAssociations = structure(list(structure(list(ServiceActionId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisioningArtifactId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ErrorCode = structure(logical(0), 
        shape = "ServiceActionAssociationErrorCode", type = "string"), 
        ErrorMessage = structure(logical(0), shape = "ServiceActionAssociationErrorMessage", 
            type = "string", max = 1024L, min = 1L)), shape = "FailedServiceActionAssociation", 
        type = "structure")), shape = "FailedServiceActionAssociations", 
        type = "list", max = 50L)), shape = "BatchDisassociateServiceActionFromProvisioningArtifactOutput", 
        type = "structure")
    return(populate(args, shape))
}

copy_product_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        SourceProductArn = structure(logical(0), shape = "ProductArn", 
            type = "string", max = 1224L, min = 1L, pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        TargetProductId = structure(logical(0), shape = "Id", 
            type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        TargetProductName = structure(logical(0), shape = "ProductViewName", 
            type = "string", max = 8191L), SourceProvisioningArtifactIdentifiers = structure(list(structure(list(structure(logical(0), 
            shape = "ProvisioningArtifactPropertyValue", type = "string")), 
            shape = "SourceProvisioningArtifactPropertiesMap", 
            type = "map")), shape = "SourceProvisioningArtifactProperties", 
            type = "list"), CopyOptions = structure(list(structure(logical(0), 
            shape = "CopyOption", type = "string")), shape = "CopyOptions", 
            type = "list"), IdempotencyToken = structure(logical(0), 
            shape = "IdempotencyToken", idempotencyToken = TRUE, 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*")), 
        shape = "CopyProductInput", type = "structure")
    return(populate(args, shape))
}

copy_product_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CopyProductToken = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*")), shape = "CopyProductOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_constraint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        PortfolioId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProductId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        Parameters = structure(logical(0), shape = "ConstraintParameters", 
            type = "string"), Type = structure(logical(0), shape = "ConstraintType", 
            type = "string", max = 1024L, min = 1L), Description = structure(logical(0), 
            shape = "ConstraintDescription", type = "string", 
            max = 2000L), IdempotencyToken = structure(logical(0), 
            shape = "IdempotencyToken", idempotencyToken = TRUE, 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*")), 
        shape = "CreateConstraintInput", type = "structure")
    return(populate(args, shape))
}

create_constraint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConstraintDetail = structure(list(ConstraintId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Type = structure(logical(0), 
        shape = "ConstraintType", type = "string", max = 1024L, 
        min = 1L), Description = structure(logical(0), shape = "ConstraintDescription", 
        type = "string", max = 2000L), Owner = structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "^[0-9]{12}$")), 
        shape = "ConstraintDetail", type = "structure"), ConstraintParameters = structure(logical(0), 
        shape = "ConstraintParameters", type = "string"), Status = structure(logical(0), 
        shape = "Status", type = "string")), shape = "CreateConstraintOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_portfolio_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        DisplayName = structure(logical(0), shape = "PortfolioDisplayName", 
            type = "string", max = 100L, min = 1L), Description = structure(logical(0), 
            shape = "PortfolioDescription", type = "string", 
            max = 2000L), ProviderName = structure(logical(0), 
            shape = "ProviderName", type = "string", max = 50L, 
            min = 1L), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "AddTags", 
            type = "list", max = 20L), IdempotencyToken = structure(logical(0), 
            shape = "IdempotencyToken", idempotencyToken = TRUE, 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*")), 
        shape = "CreatePortfolioInput", type = "structure")
    return(populate(args, shape))
}

create_portfolio_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PortfolioDetail = structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 150L, min = 1L), 
        DisplayName = structure(logical(0), shape = "PortfolioDisplayName", 
            type = "string", max = 100L, min = 1L), Description = structure(logical(0), 
            shape = "PortfolioDescription", type = "string", 
            max = 2000L), CreatedTime = structure(logical(0), 
            shape = "CreationTime", type = "timestamp"), ProviderName = structure(logical(0), 
            shape = "ProviderName", type = "string", max = 50L, 
            min = 1L)), shape = "PortfolioDetail", type = "structure"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "Tags", 
            type = "list", max = 50L)), shape = "CreatePortfolioOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_portfolio_share_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        PortfolioId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        AccountId = structure(logical(0), shape = "AccountId", 
            type = "string", pattern = "^[0-9]{12}$")), shape = "CreatePortfolioShareInput", 
        type = "structure")
    return(populate(args, shape))
}

create_portfolio_share_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreatePortfolioShareOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_product_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        Name = structure(logical(0), shape = "ProductViewName", 
            type = "string", max = 8191L), Owner = structure(logical(0), 
            shape = "ProductViewOwner", type = "string", max = 8191L), 
        Description = structure(logical(0), shape = "ProductViewShortDescription", 
            type = "string", max = 8191L), Distributor = structure(logical(0), 
            shape = "ProductViewOwner", type = "string", max = 8191L), 
        SupportDescription = structure(logical(0), shape = "SupportDescription", 
            type = "string", max = 8191L), SupportEmail = structure(logical(0), 
            shape = "SupportEmail", type = "string", max = 254L), 
        SupportUrl = structure(logical(0), shape = "SupportUrl", 
            type = "string", max = 2083L), ProductType = structure(logical(0), 
            shape = "ProductType", type = "string", max = 8191L), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "AddTags", 
            type = "list", max = 20L), ProvisioningArtifactParameters = structure(list(Name = structure(logical(0), 
            shape = "ProvisioningArtifactName", type = "string"), 
            Description = structure(logical(0), shape = "ProvisioningArtifactDescription", 
                type = "string"), Info = structure(list(structure(logical(0), 
                shape = "ProvisioningArtifactInfoValue", type = "string")), 
                shape = "ProvisioningArtifactInfo", type = "map", 
                max = 100L, min = 1L), Type = structure(logical(0), 
                shape = "ProvisioningArtifactType", type = "string")), 
            shape = "ProvisioningArtifactProperties", type = "structure"), 
        IdempotencyToken = structure(logical(0), shape = "IdempotencyToken", 
            idempotencyToken = TRUE, type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*")), 
        shape = "CreateProductInput", type = "structure")
    return(populate(args, shape))
}

create_product_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProductViewDetail = structure(list(ProductViewSummary = structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ProductViewName", type = "string", max = 8191L), 
        Owner = structure(logical(0), shape = "ProductViewOwner", 
            type = "string", max = 8191L), ShortDescription = structure(logical(0), 
            shape = "ProductViewShortDescription", type = "string", 
            max = 8191L), Type = structure(logical(0), shape = "ProductType", 
            type = "string", max = 8191L), Distributor = structure(logical(0), 
            shape = "ProductViewDistributor", type = "string"), 
        HasDefaultPath = structure(logical(0), shape = "HasDefaultPath", 
            type = "boolean"), SupportEmail = structure(logical(0), 
            shape = "SupportEmail", type = "string", max = 254L), 
        SupportDescription = structure(logical(0), shape = "SupportDescription", 
            type = "string", max = 8191L), SupportUrl = structure(logical(0), 
            shape = "SupportUrl", type = "string", max = 2083L)), 
        shape = "ProductViewSummary", type = "structure"), Status = structure(logical(0), 
        shape = "Status", type = "string"), ProductARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 150L, min = 1L), 
        CreatedTime = structure(logical(0), shape = "CreatedTime", 
            type = "timestamp")), shape = "ProductViewDetail", 
        type = "structure"), ProvisioningArtifactDetail = structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ProvisioningArtifactName", type = "string"), 
        Description = structure(logical(0), shape = "ProvisioningArtifactName", 
            type = "string"), Type = structure(logical(0), shape = "ProvisioningArtifactType", 
            type = "string"), CreatedTime = structure(logical(0), 
            shape = "CreationTime", type = "timestamp"), Active = structure(logical(0), 
            shape = "ProvisioningArtifactActive", type = "boolean")), 
        shape = "ProvisioningArtifactDetail", type = "structure"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "Tags", 
            type = "list", max = 50L)), shape = "CreateProductOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_provisioned_product_plan_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        PlanName = structure(logical(0), shape = "ProvisionedProductPlanName", 
            type = "string"), PlanType = structure(logical(0), 
            shape = "ProvisionedProductPlanType", type = "string"), 
        NotificationArns = structure(list(structure(logical(0), 
            shape = "NotificationArn", type = "string", max = 1224L, 
            min = 1L, pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
            shape = "NotificationArns", type = "list", max = 5L), 
        PathId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProductId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProvisionedProductName = structure(logical(0), shape = "ProvisionedProductName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]*"), 
        ProvisioningArtifactId = structure(logical(0), shape = "Id", 
            type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProvisioningParameters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "ParameterKey", type = "string", max = 1000L, 
            min = 1L), Value = structure(logical(0), shape = "ParameterValue", 
            type = "string", max = 4096L), UsePreviousValue = structure(logical(0), 
            shape = "UsePreviousValue", type = "boolean")), shape = "UpdateProvisioningParameter", 
            type = "structure")), shape = "UpdateProvisioningParameters", 
            type = "list"), IdempotencyToken = structure(logical(0), 
            shape = "IdempotencyToken", idempotencyToken = TRUE, 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "Tags", 
            type = "list", max = 50L)), shape = "CreateProvisionedProductPlanInput", 
        type = "structure")
    return(populate(args, shape))
}

create_provisioned_product_plan_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlanName = structure(logical(0), 
        shape = "ProvisionedProductPlanName", type = "string"), 
        PlanId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProvisionProductId = structure(logical(0), shape = "Id", 
            type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProvisionedProductName = structure(logical(0), shape = "ProvisionedProductName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]*"), 
        ProvisioningArtifactId = structure(logical(0), shape = "Id", 
            type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*")), 
        shape = "CreateProvisionedProductPlanOutput", type = "structure")
    return(populate(args, shape))
}

create_provisioning_artifact_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        ProductId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        Parameters = structure(list(Name = structure(logical(0), 
            shape = "ProvisioningArtifactName", type = "string"), 
            Description = structure(logical(0), shape = "ProvisioningArtifactDescription", 
                type = "string"), Info = structure(list(structure(logical(0), 
                shape = "ProvisioningArtifactInfoValue", type = "string")), 
                shape = "ProvisioningArtifactInfo", type = "map", 
                max = 100L, min = 1L), Type = structure(logical(0), 
                shape = "ProvisioningArtifactType", type = "string")), 
            shape = "ProvisioningArtifactProperties", type = "structure"), 
        IdempotencyToken = structure(logical(0), shape = "IdempotencyToken", 
            idempotencyToken = TRUE, type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*")), 
        shape = "CreateProvisioningArtifactInput", type = "structure")
    return(populate(args, shape))
}

create_provisioning_artifact_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProvisioningArtifactDetail = structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ProvisioningArtifactName", type = "string"), 
        Description = structure(logical(0), shape = "ProvisioningArtifactName", 
            type = "string"), Type = structure(logical(0), shape = "ProvisioningArtifactType", 
            type = "string"), CreatedTime = structure(logical(0), 
            shape = "CreationTime", type = "timestamp"), Active = structure(logical(0), 
            shape = "ProvisioningArtifactActive", type = "boolean")), 
        shape = "ProvisioningArtifactDetail", type = "structure"), 
        Info = structure(list(structure(logical(0), shape = "ProvisioningArtifactInfoValue", 
            type = "string")), shape = "ProvisioningArtifactInfo", 
            type = "map", max = 100L, min = 1L), Status = structure(logical(0), 
            shape = "Status", type = "string")), shape = "CreateProvisioningArtifactOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_service_action_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "ServiceActionName", 
        type = "string", max = 256L, min = 1L, pattern = "^[a-zA-Z0-9_\\-.]*"), 
        DefinitionType = structure(logical(0), shape = "ServiceActionDefinitionType", 
            type = "string"), Definition = structure(list(structure(logical(0), 
            shape = "ServiceActionDefinitionValue", type = "string", 
            max = 1024L, min = 1L)), shape = "ServiceActionDefinitionMap", 
            type = "map", max = 100L, min = 1L), Description = structure(logical(0), 
            shape = "ServiceActionDescription", type = "string", 
            max = 1024L), AcceptLanguage = structure(logical(0), 
            shape = "AcceptLanguage", type = "string", max = 100L), 
        IdempotencyToken = structure(logical(0), shape = "IdempotencyToken", 
            idempotencyToken = TRUE, type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*")), 
        shape = "CreateServiceActionInput", type = "structure")
    return(populate(args, shape))
}

create_service_action_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceActionDetail = structure(list(ServiceActionSummary = structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ServiceActionName", type = "string", max = 256L, 
        min = 1L, pattern = "^[a-zA-Z0-9_\\-.]*"), Description = structure(logical(0), 
        shape = "ServiceActionDescription", type = "string", 
        max = 1024L), DefinitionType = structure(logical(0), 
        shape = "ServiceActionDefinitionType", type = "string")), 
        shape = "ServiceActionSummary", type = "structure"), 
        Definition = structure(list(structure(logical(0), shape = "ServiceActionDefinitionValue", 
            type = "string", max = 1024L, min = 1L)), shape = "ServiceActionDefinitionMap", 
            type = "map", max = 100L, min = 1L)), shape = "ServiceActionDetail", 
        type = "structure")), shape = "CreateServiceActionOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_tag_option_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Key = structure(logical(0), shape = "TagOptionKey", 
        type = "string", max = 128L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        Value = structure(logical(0), shape = "TagOptionValue", 
            type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
        shape = "CreateTagOptionInput", type = "structure")
    return(populate(args, shape))
}

create_tag_option_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TagOptionDetail = structure(list(Key = structure(logical(0), 
        shape = "TagOptionKey", type = "string", max = 128L, 
        min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        Value = structure(logical(0), shape = "TagOptionValue", 
            type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        Active = structure(logical(0), shape = "TagOptionActive", 
            type = "boolean"), Id = structure(logical(0), shape = "TagOptionId", 
            type = "string", max = 100L, min = 1L)), shape = "TagOptionDetail", 
        type = "structure")), shape = "CreateTagOptionOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_constraint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        Id = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*")), 
        shape = "DeleteConstraintInput", type = "structure")
    return(populate(args, shape))
}

delete_constraint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteConstraintOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_portfolio_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        Id = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*")), 
        shape = "DeletePortfolioInput", type = "structure")
    return(populate(args, shape))
}

delete_portfolio_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeletePortfolioOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_portfolio_share_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        PortfolioId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        AccountId = structure(logical(0), shape = "AccountId", 
            type = "string", pattern = "^[0-9]{12}$")), shape = "DeletePortfolioShareInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_portfolio_share_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeletePortfolioShareOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_product_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        Id = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*")), 
        shape = "DeleteProductInput", type = "structure")
    return(populate(args, shape))
}

delete_product_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteProductOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_provisioned_product_plan_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        PlanId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        IgnoreErrors = structure(logical(0), shape = "IgnoreErrors", 
            type = "boolean")), shape = "DeleteProvisionedProductPlanInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_provisioned_product_plan_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteProvisionedProductPlanOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_provisioning_artifact_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        ProductId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProvisioningArtifactId = structure(logical(0), shape = "Id", 
            type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*")), 
        shape = "DeleteProvisioningArtifactInput", type = "structure")
    return(populate(args, shape))
}

delete_provisioning_artifact_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteProvisioningArtifactOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_service_action_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "Id", 
        type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        AcceptLanguage = structure(logical(0), shape = "AcceptLanguage", 
            type = "string", max = 100L)), shape = "DeleteServiceActionInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_service_action_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteServiceActionOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_tag_option_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "TagOptionId", 
        type = "string", max = 100L, min = 1L)), shape = "DeleteTagOptionInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_tag_option_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteTagOptionOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_constraint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        Id = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*")), 
        shape = "DescribeConstraintInput", type = "structure")
    return(populate(args, shape))
}

describe_constraint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConstraintDetail = structure(list(ConstraintId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Type = structure(logical(0), 
        shape = "ConstraintType", type = "string", max = 1024L, 
        min = 1L), Description = structure(logical(0), shape = "ConstraintDescription", 
        type = "string", max = 2000L), Owner = structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "^[0-9]{12}$")), 
        shape = "ConstraintDetail", type = "structure"), ConstraintParameters = structure(logical(0), 
        shape = "ConstraintParameters", type = "string"), Status = structure(logical(0), 
        shape = "Status", type = "string")), shape = "DescribeConstraintOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_copy_product_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        CopyProductToken = structure(logical(0), shape = "Id", 
            type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*")), 
        shape = "DescribeCopyProductStatusInput", type = "structure")
    return(populate(args, shape))
}

describe_copy_product_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CopyProductStatus = structure(logical(0), 
        shape = "CopyProductStatus", type = "string"), TargetProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), StatusDetail = structure(logical(0), 
        shape = "StatusDetail", type = "string")), shape = "DescribeCopyProductStatusOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_portfolio_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        Id = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*")), 
        shape = "DescribePortfolioInput", type = "structure")
    return(populate(args, shape))
}

describe_portfolio_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PortfolioDetail = structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 150L, min = 1L), 
        DisplayName = structure(logical(0), shape = "PortfolioDisplayName", 
            type = "string", max = 100L, min = 1L), Description = structure(logical(0), 
            shape = "PortfolioDescription", type = "string", 
            max = 2000L), CreatedTime = structure(logical(0), 
            shape = "CreationTime", type = "timestamp"), ProviderName = structure(logical(0), 
            shape = "ProviderName", type = "string", max = 50L, 
            min = 1L)), shape = "PortfolioDetail", type = "structure"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "Tags", 
            type = "list", max = 50L), TagOptions = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagOptionKey", type = "string", max = 128L, 
            min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagOptionValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Active = structure(logical(0), shape = "TagOptionActive", 
                type = "boolean"), Id = structure(logical(0), 
                shape = "TagOptionId", type = "string", max = 100L, 
                min = 1L)), shape = "TagOptionDetail", type = "structure")), 
            shape = "TagOptionDetails", type = "list")), shape = "DescribePortfolioOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_product_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        Id = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*")), 
        shape = "DescribeProductInput", type = "structure")
    return(populate(args, shape))
}

describe_product_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProductViewSummary = structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ProductViewName", type = "string", max = 8191L), 
        Owner = structure(logical(0), shape = "ProductViewOwner", 
            type = "string", max = 8191L), ShortDescription = structure(logical(0), 
            shape = "ProductViewShortDescription", type = "string", 
            max = 8191L), Type = structure(logical(0), shape = "ProductType", 
            type = "string", max = 8191L), Distributor = structure(logical(0), 
            shape = "ProductViewDistributor", type = "string"), 
        HasDefaultPath = structure(logical(0), shape = "HasDefaultPath", 
            type = "boolean"), SupportEmail = structure(logical(0), 
            shape = "SupportEmail", type = "string", max = 254L), 
        SupportDescription = structure(logical(0), shape = "SupportDescription", 
            type = "string", max = 8191L), SupportUrl = structure(logical(0), 
            shape = "SupportUrl", type = "string", max = 2083L)), 
        shape = "ProductViewSummary", type = "structure"), ProvisioningArtifacts = structure(list(structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ProvisioningArtifactName", type = "string"), 
        Description = structure(logical(0), shape = "ProvisioningArtifactDescription", 
            type = "string"), CreatedTime = structure(logical(0), 
            shape = "ProvisioningArtifactCreatedTime", type = "timestamp")), 
        shape = "ProvisioningArtifact", type = "structure")), 
        shape = "ProvisioningArtifacts", type = "list")), shape = "DescribeProductOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_product_as_admin_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        Id = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*")), 
        shape = "DescribeProductAsAdminInput", type = "structure")
    return(populate(args, shape))
}

describe_product_as_admin_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProductViewDetail = structure(list(ProductViewSummary = structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ProductViewName", type = "string", max = 8191L), 
        Owner = structure(logical(0), shape = "ProductViewOwner", 
            type = "string", max = 8191L), ShortDescription = structure(logical(0), 
            shape = "ProductViewShortDescription", type = "string", 
            max = 8191L), Type = structure(logical(0), shape = "ProductType", 
            type = "string", max = 8191L), Distributor = structure(logical(0), 
            shape = "ProductViewDistributor", type = "string"), 
        HasDefaultPath = structure(logical(0), shape = "HasDefaultPath", 
            type = "boolean"), SupportEmail = structure(logical(0), 
            shape = "SupportEmail", type = "string", max = 254L), 
        SupportDescription = structure(logical(0), shape = "SupportDescription", 
            type = "string", max = 8191L), SupportUrl = structure(logical(0), 
            shape = "SupportUrl", type = "string", max = 2083L)), 
        shape = "ProductViewSummary", type = "structure"), Status = structure(logical(0), 
        shape = "Status", type = "string"), ProductARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 150L, min = 1L), 
        CreatedTime = structure(logical(0), shape = "CreatedTime", 
            type = "timestamp")), shape = "ProductViewDetail", 
        type = "structure"), ProvisioningArtifactSummaries = structure(list(structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ProvisioningArtifactName", type = "string"), 
        Description = structure(logical(0), shape = "ProvisioningArtifactDescription", 
            type = "string"), CreatedTime = structure(logical(0), 
            shape = "ProvisioningArtifactCreatedTime", type = "timestamp"), 
        ProvisioningArtifactMetadata = structure(list(structure(logical(0), 
            shape = "ProvisioningArtifactInfoValue", type = "string")), 
            shape = "ProvisioningArtifactInfo", type = "map", 
            max = 100L, min = 1L)), shape = "ProvisioningArtifactSummary", 
        type = "structure")), shape = "ProvisioningArtifactSummaries", 
        type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), Value = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "Tag", 
        type = "structure")), shape = "Tags", type = "list", 
        max = 50L), TagOptions = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagOptionKey", type = "string", max = 128L, 
        min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        Value = structure(logical(0), shape = "TagOptionValue", 
            type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        Active = structure(logical(0), shape = "TagOptionActive", 
            type = "boolean"), Id = structure(logical(0), shape = "TagOptionId", 
            type = "string", max = 100L, min = 1L)), shape = "TagOptionDetail", 
        type = "structure")), shape = "TagOptionDetails", type = "list")), 
        shape = "DescribeProductAsAdminOutput", type = "structure")
    return(populate(args, shape))
}

describe_product_view_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        Id = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*")), 
        shape = "DescribeProductViewInput", type = "structure")
    return(populate(args, shape))
}

describe_product_view_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProductViewSummary = structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ProductViewName", type = "string", max = 8191L), 
        Owner = structure(logical(0), shape = "ProductViewOwner", 
            type = "string", max = 8191L), ShortDescription = structure(logical(0), 
            shape = "ProductViewShortDescription", type = "string", 
            max = 8191L), Type = structure(logical(0), shape = "ProductType", 
            type = "string", max = 8191L), Distributor = structure(logical(0), 
            shape = "ProductViewDistributor", type = "string"), 
        HasDefaultPath = structure(logical(0), shape = "HasDefaultPath", 
            type = "boolean"), SupportEmail = structure(logical(0), 
            shape = "SupportEmail", type = "string", max = 254L), 
        SupportDescription = structure(logical(0), shape = "SupportDescription", 
            type = "string", max = 8191L), SupportUrl = structure(logical(0), 
            shape = "SupportUrl", type = "string", max = 2083L)), 
        shape = "ProductViewSummary", type = "structure"), ProvisioningArtifacts = structure(list(structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ProvisioningArtifactName", type = "string"), 
        Description = structure(logical(0), shape = "ProvisioningArtifactDescription", 
            type = "string"), CreatedTime = structure(logical(0), 
            shape = "ProvisioningArtifactCreatedTime", type = "timestamp")), 
        shape = "ProvisioningArtifact", type = "structure")), 
        shape = "ProvisioningArtifacts", type = "list")), shape = "DescribeProductViewOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_provisioned_product_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        Id = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*")), 
        shape = "DescribeProvisionedProductInput", type = "structure")
    return(populate(args, shape))
}

describe_provisioned_product_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProvisionedProductDetail = structure(list(Name = structure(logical(0), 
        shape = "ProvisionedProductNameOrArn", type = "string", 
        max = 1224L, min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]{0,127}|arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        Arn = structure(logical(0), shape = "ProvisionedProductNameOrArn", 
            type = "string", max = 1224L, min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]{0,127}|arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        Type = structure(logical(0), shape = "ProvisionedProductType", 
            type = "string"), Id = structure(logical(0), shape = "ProvisionedProductId", 
            type = "string"), Status = structure(logical(0), 
            shape = "ProvisionedProductStatus", type = "string"), 
        StatusMessage = structure(logical(0), shape = "ProvisionedProductStatusMessage", 
            type = "string"), CreatedTime = structure(logical(0), 
            shape = "CreatedTime", type = "timestamp"), IdempotencyToken = structure(logical(0), 
            shape = "IdempotencyToken", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*"), 
        LastRecordId = structure(logical(0), shape = "LastRequestId", 
            type = "string"), ProductId = structure(logical(0), 
            shape = "Id", type = "string", max = 100L, min = 1L, 
            pattern = "^[a-zA-Z0-9_\\-]*"), ProvisioningArtifactId = structure(logical(0), 
            shape = "Id", type = "string", max = 100L, min = 1L, 
            pattern = "^[a-zA-Z0-9_\\-]*")), shape = "ProvisionedProductDetail", 
        type = "structure"), CloudWatchDashboards = structure(list(structure(list(Name = structure(logical(0), 
        shape = "CloudWatchDashboardName", type = "string")), 
        shape = "CloudWatchDashboard", type = "structure")), 
        shape = "CloudWatchDashboards", type = "list")), shape = "DescribeProvisionedProductOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_provisioned_product_plan_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        PlanId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        PageSize = structure(logical(0), shape = "PageSize", 
            type = "integer", max = 20L, min = 0L), PageToken = structure(logical(0), 
            shape = "PageToken", type = "string", max = 2024L, 
            pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "DescribeProvisionedProductPlanInput", type = "structure")
    return(populate(args, shape))
}

describe_provisioned_product_plan_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProvisionedProductPlanDetails = structure(list(CreatedTime = structure(logical(0), 
        shape = "CreatedTime", type = "timestamp"), PathId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), PlanName = structure(logical(0), 
        shape = "ProvisionedProductPlanName", type = "string"), 
        PlanId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProvisionProductId = structure(logical(0), shape = "Id", 
            type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProvisionProductName = structure(logical(0), shape = "ProvisionedProductName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]*"), 
        PlanType = structure(logical(0), shape = "ProvisionedProductPlanType", 
            type = "string"), ProvisioningArtifactId = structure(logical(0), 
            shape = "Id", type = "string", max = 100L, min = 1L, 
            pattern = "^[a-zA-Z0-9_\\-]*"), Status = structure(logical(0), 
            shape = "ProvisionedProductPlanStatus", type = "string"), 
        UpdatedTime = structure(logical(0), shape = "UpdatedTime", 
            type = "timestamp"), NotificationArns = structure(list(structure(logical(0), 
            shape = "NotificationArn", type = "string", max = 1224L, 
            min = 1L, pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
            shape = "NotificationArns", type = "list", max = 5L), 
        ProvisioningParameters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "ParameterKey", type = "string", max = 1000L, 
            min = 1L), Value = structure(logical(0), shape = "ParameterValue", 
            type = "string", max = 4096L), UsePreviousValue = structure(logical(0), 
            shape = "UsePreviousValue", type = "boolean")), shape = "UpdateProvisioningParameter", 
            type = "structure")), shape = "UpdateProvisioningParameters", 
            type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "Tags", 
            type = "list", max = 50L), StatusMessage = structure(logical(0), 
            shape = "StatusMessage", type = "string", pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ProvisionedProductPlanDetails", type = "structure"), 
        ResourceChanges = structure(list(structure(list(Action = structure(logical(0), 
            shape = "ChangeAction", type = "string"), LogicalResourceId = structure(logical(0), 
            shape = "LogicalResourceId", type = "string"), PhysicalResourceId = structure(logical(0), 
            shape = "PhysicalResourceId", type = "string"), ResourceType = structure(logical(0), 
            shape = "PlanResourceType", type = "string", max = 256L, 
            min = 1L), Replacement = structure(logical(0), shape = "Replacement", 
            type = "string"), Scope = structure(list(structure(logical(0), 
            shape = "ResourceAttribute", type = "string")), shape = "Scope", 
            type = "list"), Details = structure(list(structure(list(Target = structure(list(Attribute = structure(logical(0), 
            shape = "ResourceAttribute", type = "string"), Name = structure(logical(0), 
            shape = "PropertyName", type = "string"), RequiresRecreation = structure(logical(0), 
            shape = "RequiresRecreation", type = "string")), 
            shape = "ResourceTargetDefinition", type = "structure"), 
            Evaluation = structure(logical(0), shape = "EvaluationType", 
                type = "string"), CausingEntity = structure(logical(0), 
                shape = "CausingEntity", type = "string")), shape = "ResourceChangeDetail", 
            type = "structure")), shape = "ResourceChangeDetails", 
            type = "list")), shape = "ResourceChange", type = "structure")), 
            shape = "ResourceChanges", type = "list"), NextPageToken = structure(logical(0), 
            shape = "PageToken", type = "string", max = 2024L, 
            pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "DescribeProvisionedProductPlanOutput", type = "structure")
    return(populate(args, shape))
}

describe_provisioning_artifact_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        ProvisioningArtifactId = structure(logical(0), shape = "Id", 
            type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProductId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        Verbose = structure(logical(0), shape = "Verbose", type = "boolean")), 
        shape = "DescribeProvisioningArtifactInput", type = "structure")
    return(populate(args, shape))
}

describe_provisioning_artifact_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProvisioningArtifactDetail = structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ProvisioningArtifactName", type = "string"), 
        Description = structure(logical(0), shape = "ProvisioningArtifactName", 
            type = "string"), Type = structure(logical(0), shape = "ProvisioningArtifactType", 
            type = "string"), CreatedTime = structure(logical(0), 
            shape = "CreationTime", type = "timestamp"), Active = structure(logical(0), 
            shape = "ProvisioningArtifactActive", type = "boolean")), 
        shape = "ProvisioningArtifactDetail", type = "structure"), 
        Info = structure(list(structure(logical(0), shape = "ProvisioningArtifactInfoValue", 
            type = "string")), shape = "ProvisioningArtifactInfo", 
            type = "map", max = 100L, min = 1L), Status = structure(logical(0), 
            shape = "Status", type = "string")), shape = "DescribeProvisioningArtifactOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_provisioning_parameters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        ProductId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProvisioningArtifactId = structure(logical(0), shape = "Id", 
            type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        PathId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*")), 
        shape = "DescribeProvisioningParametersInput", type = "structure")
    return(populate(args, shape))
}

describe_provisioning_parameters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProvisioningArtifactParameters = structure(list(structure(list(ParameterKey = structure(logical(0), 
        shape = "ParameterKey", type = "string", max = 1000L, 
        min = 1L), DefaultValue = structure(logical(0), shape = "DefaultValue", 
        type = "string"), ParameterType = structure(logical(0), 
        shape = "ParameterType", type = "string"), IsNoEcho = structure(logical(0), 
        shape = "NoEcho", type = "boolean"), Description = structure(logical(0), 
        shape = "Description", type = "string"), ParameterConstraints = structure(list(AllowedValues = structure(list(structure(logical(0), 
        shape = "AllowedValue", type = "string")), shape = "AllowedValues", 
        type = "list")), shape = "ParameterConstraints", type = "structure")), 
        shape = "ProvisioningArtifactParameter", type = "structure")), 
        shape = "ProvisioningArtifactParameters", type = "list"), 
        ConstraintSummaries = structure(list(structure(list(Type = structure(logical(0), 
            shape = "ConstraintType", type = "string", max = 1024L, 
            min = 1L), Description = structure(logical(0), shape = "ConstraintDescription", 
            type = "string", max = 2000L)), shape = "ConstraintSummary", 
            type = "structure")), shape = "ConstraintSummaries", 
            type = "list"), UsageInstructions = structure(list(structure(list(Type = structure(logical(0), 
            shape = "InstructionType", type = "string"), Value = structure(logical(0), 
            shape = "InstructionValue", type = "string")), shape = "UsageInstruction", 
            type = "structure")), shape = "UsageInstructions", 
            type = "list"), TagOptions = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagOptionKey", type = "string", max = 128L, 
            min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Values = structure(list(structure(logical(0), shape = "TagOptionValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
                shape = "TagOptionValues", type = "list")), shape = "TagOptionSummary", 
            type = "structure")), shape = "TagOptionSummaries", 
            type = "list")), shape = "DescribeProvisioningParametersOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_record_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        Id = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        PageToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*"), 
        PageSize = structure(logical(0), shape = "PageSize", 
            type = "integer", max = 20L, min = 0L)), shape = "DescribeRecordInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_record_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RecordDetail = structure(list(RecordId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisionedProductName = structure(logical(0), 
        shape = "ProvisionedProductName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]*"), Status = structure(logical(0), 
        shape = "RecordStatus", type = "string"), CreatedTime = structure(logical(0), 
        shape = "CreatedTime", type = "timestamp"), UpdatedTime = structure(logical(0), 
        shape = "UpdatedTime", type = "timestamp"), ProvisionedProductType = structure(logical(0), 
        shape = "ProvisionedProductType", type = "string"), RecordType = structure(logical(0), 
        shape = "RecordType", type = "string"), ProvisionedProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisioningArtifactId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), PathId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), RecordErrors = structure(list(structure(list(Code = structure(logical(0), 
        shape = "ErrorCode", type = "string"), Description = structure(logical(0), 
        shape = "ErrorDescription", type = "string")), shape = "RecordError", 
        type = "structure")), shape = "RecordErrors", type = "list"), 
        RecordTags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "RecordTagKey", type = "string", max = 128L, 
            min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
            Value = structure(logical(0), shape = "RecordTagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$")), 
            shape = "RecordTag", type = "structure")), shape = "RecordTags", 
            type = "list", max = 50L)), shape = "RecordDetail", 
        type = "structure"), RecordOutputs = structure(list(structure(list(OutputKey = structure(logical(0), 
        shape = "OutputKey", type = "string"), OutputValue = structure(logical(0), 
        shape = "OutputValue", type = "string"), Description = structure(logical(0), 
        shape = "Description", type = "string")), shape = "RecordOutput", 
        type = "structure")), shape = "RecordOutputs", type = "list"), 
        NextPageToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "DescribeRecordOutput", type = "structure")
    return(populate(args, shape))
}

describe_service_action_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "Id", 
        type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        AcceptLanguage = structure(logical(0), shape = "AcceptLanguage", 
            type = "string", max = 100L)), shape = "DescribeServiceActionInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_service_action_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceActionDetail = structure(list(ServiceActionSummary = structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ServiceActionName", type = "string", max = 256L, 
        min = 1L, pattern = "^[a-zA-Z0-9_\\-.]*"), Description = structure(logical(0), 
        shape = "ServiceActionDescription", type = "string", 
        max = 1024L), DefinitionType = structure(logical(0), 
        shape = "ServiceActionDefinitionType", type = "string")), 
        shape = "ServiceActionSummary", type = "structure"), 
        Definition = structure(list(structure(logical(0), shape = "ServiceActionDefinitionValue", 
            type = "string", max = 1024L, min = 1L)), shape = "ServiceActionDefinitionMap", 
            type = "map", max = 100L, min = 1L)), shape = "ServiceActionDetail", 
        type = "structure")), shape = "DescribeServiceActionOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_tag_option_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "TagOptionId", 
        type = "string", max = 100L, min = 1L)), shape = "DescribeTagOptionInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_tag_option_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TagOptionDetail = structure(list(Key = structure(logical(0), 
        shape = "TagOptionKey", type = "string", max = 128L, 
        min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        Value = structure(logical(0), shape = "TagOptionValue", 
            type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        Active = structure(logical(0), shape = "TagOptionActive", 
            type = "boolean"), Id = structure(logical(0), shape = "TagOptionId", 
            type = "string", max = 100L, min = 1L)), shape = "TagOptionDetail", 
        type = "structure")), shape = "DescribeTagOptionOutput", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_principal_from_portfolio_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        PortfolioId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        PrincipalARN = structure(logical(0), shape = "PrincipalARN", 
            type = "string", max = 1000L, min = 1L)), shape = "DisassociatePrincipalFromPortfolioInput", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_principal_from_portfolio_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociatePrincipalFromPortfolioOutput", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_product_from_portfolio_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        ProductId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        PortfolioId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*")), 
        shape = "DisassociateProductFromPortfolioInput", type = "structure")
    return(populate(args, shape))
}

disassociate_product_from_portfolio_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateProductFromPortfolioOutput", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_service_action_from_provisioning_artifact_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisioningArtifactId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ServiceActionId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L)), 
        shape = "DisassociateServiceActionFromProvisioningArtifactInput", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_service_action_from_provisioning_artifact_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateServiceActionFromProvisioningArtifactOutput", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_tag_option_from_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "ResourceId", type = "string"), TagOptionId = structure(logical(0), 
        shape = "TagOptionId", type = "string", max = 100L, min = 1L)), 
        shape = "DisassociateTagOptionFromResourceInput", type = "structure")
    return(populate(args, shape))
}

disassociate_tag_option_from_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateTagOptionFromResourceOutput", 
        type = "structure")
    return(populate(args, shape))
}

execute_provisioned_product_plan_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        PlanId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        IdempotencyToken = structure(logical(0), shape = "IdempotencyToken", 
            idempotencyToken = TRUE, type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*")), 
        shape = "ExecuteProvisionedProductPlanInput", type = "structure")
    return(populate(args, shape))
}

execute_provisioned_product_plan_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RecordDetail = structure(list(RecordId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisionedProductName = structure(logical(0), 
        shape = "ProvisionedProductName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]*"), Status = structure(logical(0), 
        shape = "RecordStatus", type = "string"), CreatedTime = structure(logical(0), 
        shape = "CreatedTime", type = "timestamp"), UpdatedTime = structure(logical(0), 
        shape = "UpdatedTime", type = "timestamp"), ProvisionedProductType = structure(logical(0), 
        shape = "ProvisionedProductType", type = "string"), RecordType = structure(logical(0), 
        shape = "RecordType", type = "string"), ProvisionedProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisioningArtifactId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), PathId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), RecordErrors = structure(list(structure(list(Code = structure(logical(0), 
        shape = "ErrorCode", type = "string"), Description = structure(logical(0), 
        shape = "ErrorDescription", type = "string")), shape = "RecordError", 
        type = "structure")), shape = "RecordErrors", type = "list"), 
        RecordTags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "RecordTagKey", type = "string", max = 128L, 
            min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
            Value = structure(logical(0), shape = "RecordTagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$")), 
            shape = "RecordTag", type = "structure")), shape = "RecordTags", 
            type = "list", max = 50L)), shape = "RecordDetail", 
        type = "structure")), shape = "ExecuteProvisionedProductPlanOutput", 
        type = "structure")
    return(populate(args, shape))
}

execute_provisioned_product_service_action_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProvisionedProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ServiceActionId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ExecuteToken = structure(logical(0), 
        shape = "IdempotencyToken", idempotencyToken = TRUE, 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*"), 
        AcceptLanguage = structure(logical(0), shape = "AcceptLanguage", 
            type = "string", max = 100L)), shape = "ExecuteProvisionedProductServiceActionInput", 
        type = "structure")
    return(populate(args, shape))
}

execute_provisioned_product_service_action_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RecordDetail = structure(list(RecordId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisionedProductName = structure(logical(0), 
        shape = "ProvisionedProductName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]*"), Status = structure(logical(0), 
        shape = "RecordStatus", type = "string"), CreatedTime = structure(logical(0), 
        shape = "CreatedTime", type = "timestamp"), UpdatedTime = structure(logical(0), 
        shape = "UpdatedTime", type = "timestamp"), ProvisionedProductType = structure(logical(0), 
        shape = "ProvisionedProductType", type = "string"), RecordType = structure(logical(0), 
        shape = "RecordType", type = "string"), ProvisionedProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisioningArtifactId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), PathId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), RecordErrors = structure(list(structure(list(Code = structure(logical(0), 
        shape = "ErrorCode", type = "string"), Description = structure(logical(0), 
        shape = "ErrorDescription", type = "string")), shape = "RecordError", 
        type = "structure")), shape = "RecordErrors", type = "list"), 
        RecordTags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "RecordTagKey", type = "string", max = 128L, 
            min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
            Value = structure(logical(0), shape = "RecordTagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$")), 
            shape = "RecordTag", type = "structure")), shape = "RecordTags", 
            type = "list", max = 50L)), shape = "RecordDetail", 
        type = "structure")), shape = "ExecuteProvisionedProductServiceActionOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_accepted_portfolio_shares_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        PageToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*"), 
        PageSize = structure(logical(0), shape = "PageSize", 
            type = "integer", max = 20L, min = 0L), PortfolioShareType = structure(logical(0), 
            shape = "PortfolioShareType", type = "string")), 
        shape = "ListAcceptedPortfolioSharesInput", type = "structure")
    return(populate(args, shape))
}

list_accepted_portfolio_shares_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PortfolioDetails = structure(list(structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 150L, min = 1L), 
        DisplayName = structure(logical(0), shape = "PortfolioDisplayName", 
            type = "string", max = 100L, min = 1L), Description = structure(logical(0), 
            shape = "PortfolioDescription", type = "string", 
            max = 2000L), CreatedTime = structure(logical(0), 
            shape = "CreationTime", type = "timestamp"), ProviderName = structure(logical(0), 
            shape = "ProviderName", type = "string", max = 50L, 
            min = 1L)), shape = "PortfolioDetail", type = "structure")), 
        shape = "PortfolioDetails", type = "list"), NextPageToken = structure(logical(0), 
        shape = "PageToken", type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListAcceptedPortfolioSharesOutput", type = "structure")
    return(populate(args, shape))
}

list_constraints_for_portfolio_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        PortfolioId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProductId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        PageSize = structure(logical(0), shape = "PageSize", 
            type = "integer", max = 20L, min = 0L), PageToken = structure(logical(0), 
            shape = "PageToken", type = "string", max = 2024L, 
            pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListConstraintsForPortfolioInput", type = "structure")
    return(populate(args, shape))
}

list_constraints_for_portfolio_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConstraintDetails = structure(list(structure(list(ConstraintId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Type = structure(logical(0), 
        shape = "ConstraintType", type = "string", max = 1024L, 
        min = 1L), Description = structure(logical(0), shape = "ConstraintDescription", 
        type = "string", max = 2000L), Owner = structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "^[0-9]{12}$")), 
        shape = "ConstraintDetail", type = "structure")), shape = "ConstraintDetails", 
        type = "list"), NextPageToken = structure(logical(0), 
        shape = "PageToken", type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListConstraintsForPortfolioOutput", type = "structure")
    return(populate(args, shape))
}

list_launch_paths_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        ProductId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        PageSize = structure(logical(0), shape = "PageSize", 
            type = "integer", max = 20L, min = 0L), PageToken = structure(logical(0), 
            shape = "PageToken", type = "string", max = 2024L, 
            pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListLaunchPathsInput", type = "structure")
    return(populate(args, shape))
}

list_launch_paths_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LaunchPathSummaries = structure(list(structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ConstraintSummaries = structure(list(structure(list(Type = structure(logical(0), 
        shape = "ConstraintType", type = "string", max = 1024L, 
        min = 1L), Description = structure(logical(0), shape = "ConstraintDescription", 
        type = "string", max = 2000L)), shape = "ConstraintSummary", 
        type = "structure")), shape = "ConstraintSummaries", 
        type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), Value = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "Tag", 
        type = "structure")), shape = "Tags", type = "list", 
        max = 50L), Name = structure(logical(0), shape = "PortfolioName", 
        type = "string")), shape = "LaunchPathSummary", type = "structure")), 
        shape = "LaunchPathSummaries", type = "list"), NextPageToken = structure(logical(0), 
        shape = "PageToken", type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListLaunchPathsOutput", type = "structure")
    return(populate(args, shape))
}

list_portfolio_access_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        PortfolioId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*")), 
        shape = "ListPortfolioAccessInput", type = "structure")
    return(populate(args, shape))
}

list_portfolio_access_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountIds = structure(list(structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "^[0-9]{12}$")), 
        shape = "AccountIds", type = "list"), NextPageToken = structure(logical(0), 
        shape = "PageToken", type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListPortfolioAccessOutput", type = "structure")
    return(populate(args, shape))
}

list_portfolios_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        PageToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*"), 
        PageSize = structure(logical(0), shape = "PageSize", 
            type = "integer", max = 20L, min = 0L)), shape = "ListPortfoliosInput", 
        type = "structure")
    return(populate(args, shape))
}

list_portfolios_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PortfolioDetails = structure(list(structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 150L, min = 1L), 
        DisplayName = structure(logical(0), shape = "PortfolioDisplayName", 
            type = "string", max = 100L, min = 1L), Description = structure(logical(0), 
            shape = "PortfolioDescription", type = "string", 
            max = 2000L), CreatedTime = structure(logical(0), 
            shape = "CreationTime", type = "timestamp"), ProviderName = structure(logical(0), 
            shape = "ProviderName", type = "string", max = 50L, 
            min = 1L)), shape = "PortfolioDetail", type = "structure")), 
        shape = "PortfolioDetails", type = "list"), NextPageToken = structure(logical(0), 
        shape = "PageToken", type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListPortfoliosOutput", type = "structure")
    return(populate(args, shape))
}

list_portfolios_for_product_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        ProductId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        PageToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*"), 
        PageSize = structure(logical(0), shape = "PageSize", 
            type = "integer", max = 20L, min = 0L)), shape = "ListPortfoliosForProductInput", 
        type = "structure")
    return(populate(args, shape))
}

list_portfolios_for_product_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PortfolioDetails = structure(list(structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 150L, min = 1L), 
        DisplayName = structure(logical(0), shape = "PortfolioDisplayName", 
            type = "string", max = 100L, min = 1L), Description = structure(logical(0), 
            shape = "PortfolioDescription", type = "string", 
            max = 2000L), CreatedTime = structure(logical(0), 
            shape = "CreationTime", type = "timestamp"), ProviderName = structure(logical(0), 
            shape = "ProviderName", type = "string", max = 50L, 
            min = 1L)), shape = "PortfolioDetail", type = "structure")), 
        shape = "PortfolioDetails", type = "list"), NextPageToken = structure(logical(0), 
        shape = "PageToken", type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListPortfoliosForProductOutput", type = "structure")
    return(populate(args, shape))
}

list_principals_for_portfolio_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        PortfolioId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        PageSize = structure(logical(0), shape = "PageSize", 
            type = "integer", max = 20L, min = 0L), PageToken = structure(logical(0), 
            shape = "PageToken", type = "string", max = 2024L, 
            pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListPrincipalsForPortfolioInput", type = "structure")
    return(populate(args, shape))
}

list_principals_for_portfolio_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Principals = structure(list(structure(list(PrincipalARN = structure(logical(0), 
        shape = "PrincipalARN", type = "string", max = 1000L, 
        min = 1L), PrincipalType = structure(logical(0), shape = "PrincipalType", 
        type = "string")), shape = "Principal", type = "structure")), 
        shape = "Principals", type = "list"), NextPageToken = structure(logical(0), 
        shape = "PageToken", type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListPrincipalsForPortfolioOutput", type = "structure")
    return(populate(args, shape))
}

list_provisioned_product_plans_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        ProvisionProductId = structure(logical(0), shape = "Id", 
            type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        PageSize = structure(logical(0), shape = "PageSize", 
            type = "integer", max = 20L, min = 0L), PageToken = structure(logical(0), 
            shape = "PageToken", type = "string", max = 2024L, 
            pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*"), 
        AccessLevelFilter = structure(list(Key = structure(logical(0), 
            shape = "AccessLevelFilterKey", type = "string"), 
            Value = structure(logical(0), shape = "AccessLevelFilterValue", 
                type = "string")), shape = "AccessLevelFilter", 
            type = "structure")), shape = "ListProvisionedProductPlansInput", 
        type = "structure")
    return(populate(args, shape))
}

list_provisioned_product_plans_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProvisionedProductPlans = structure(list(structure(list(PlanName = structure(logical(0), 
        shape = "ProvisionedProductPlanName", type = "string"), 
        PlanId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProvisionProductId = structure(logical(0), shape = "Id", 
            type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProvisionProductName = structure(logical(0), shape = "ProvisionedProductName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]*"), 
        PlanType = structure(logical(0), shape = "ProvisionedProductPlanType", 
            type = "string"), ProvisioningArtifactId = structure(logical(0), 
            shape = "Id", type = "string", max = 100L, min = 1L, 
            pattern = "^[a-zA-Z0-9_\\-]*")), shape = "ProvisionedProductPlanSummary", 
        type = "structure")), shape = "ProvisionedProductPlans", 
        type = "list"), NextPageToken = structure(logical(0), 
        shape = "PageToken", type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListProvisionedProductPlansOutput", type = "structure")
    return(populate(args, shape))
}

list_provisioning_artifacts_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        ProductId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*")), 
        shape = "ListProvisioningArtifactsInput", type = "structure")
    return(populate(args, shape))
}

list_provisioning_artifacts_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProvisioningArtifactDetails = structure(list(structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ProvisioningArtifactName", type = "string"), 
        Description = structure(logical(0), shape = "ProvisioningArtifactName", 
            type = "string"), Type = structure(logical(0), shape = "ProvisioningArtifactType", 
            type = "string"), CreatedTime = structure(logical(0), 
            shape = "CreationTime", type = "timestamp"), Active = structure(logical(0), 
            shape = "ProvisioningArtifactActive", type = "boolean")), 
        shape = "ProvisioningArtifactDetail", type = "structure")), 
        shape = "ProvisioningArtifactDetails", type = "list"), 
        NextPageToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListProvisioningArtifactsOutput", type = "structure")
    return(populate(args, shape))
}

list_provisioning_artifacts_for_service_action_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceActionId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), PageSize = structure(logical(0), 
        shape = "PageSize", type = "integer", max = 20L, min = 0L), 
        PageToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*"), 
        AcceptLanguage = structure(logical(0), shape = "AcceptLanguage", 
            type = "string", max = 100L)), shape = "ListProvisioningArtifactsForServiceActionInput", 
        type = "structure")
    return(populate(args, shape))
}

list_provisioning_artifacts_for_service_action_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProvisioningArtifactViews = structure(list(structure(list(ProductViewSummary = structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ProductViewName", type = "string", max = 8191L), 
        Owner = structure(logical(0), shape = "ProductViewOwner", 
            type = "string", max = 8191L), ShortDescription = structure(logical(0), 
            shape = "ProductViewShortDescription", type = "string", 
            max = 8191L), Type = structure(logical(0), shape = "ProductType", 
            type = "string", max = 8191L), Distributor = structure(logical(0), 
            shape = "ProductViewDistributor", type = "string"), 
        HasDefaultPath = structure(logical(0), shape = "HasDefaultPath", 
            type = "boolean"), SupportEmail = structure(logical(0), 
            shape = "SupportEmail", type = "string", max = 254L), 
        SupportDescription = structure(logical(0), shape = "SupportDescription", 
            type = "string", max = 8191L), SupportUrl = structure(logical(0), 
            shape = "SupportUrl", type = "string", max = 2083L)), 
        shape = "ProductViewSummary", type = "structure"), ProvisioningArtifact = structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ProvisioningArtifactName", type = "string"), 
        Description = structure(logical(0), shape = "ProvisioningArtifactDescription", 
            type = "string"), CreatedTime = structure(logical(0), 
            shape = "ProvisioningArtifactCreatedTime", type = "timestamp")), 
        shape = "ProvisioningArtifact", type = "structure")), 
        shape = "ProvisioningArtifactView", type = "structure")), 
        shape = "ProvisioningArtifactViews", type = "list"), 
        NextPageToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListProvisioningArtifactsForServiceActionOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_record_history_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        AccessLevelFilter = structure(list(Key = structure(logical(0), 
            shape = "AccessLevelFilterKey", type = "string"), 
            Value = structure(logical(0), shape = "AccessLevelFilterValue", 
                type = "string")), shape = "AccessLevelFilter", 
            type = "structure"), SearchFilter = structure(list(Key = structure(logical(0), 
            shape = "SearchFilterKey", type = "string"), Value = structure(logical(0), 
            shape = "SearchFilterValue", type = "string")), shape = "ListRecordHistorySearchFilter", 
            type = "structure"), PageSize = structure(logical(0), 
            shape = "PageSize", type = "integer", max = 20L, 
            min = 0L), PageToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListRecordHistoryInput", type = "structure")
    return(populate(args, shape))
}

list_record_history_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RecordDetails = structure(list(structure(list(RecordId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisionedProductName = structure(logical(0), 
        shape = "ProvisionedProductName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]*"), Status = structure(logical(0), 
        shape = "RecordStatus", type = "string"), CreatedTime = structure(logical(0), 
        shape = "CreatedTime", type = "timestamp"), UpdatedTime = structure(logical(0), 
        shape = "UpdatedTime", type = "timestamp"), ProvisionedProductType = structure(logical(0), 
        shape = "ProvisionedProductType", type = "string"), RecordType = structure(logical(0), 
        shape = "RecordType", type = "string"), ProvisionedProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisioningArtifactId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), PathId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), RecordErrors = structure(list(structure(list(Code = structure(logical(0), 
        shape = "ErrorCode", type = "string"), Description = structure(logical(0), 
        shape = "ErrorDescription", type = "string")), shape = "RecordError", 
        type = "structure")), shape = "RecordErrors", type = "list"), 
        RecordTags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "RecordTagKey", type = "string", max = 128L, 
            min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
            Value = structure(logical(0), shape = "RecordTagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$")), 
            shape = "RecordTag", type = "structure")), shape = "RecordTags", 
            type = "list", max = 50L)), shape = "RecordDetail", 
        type = "structure")), shape = "RecordDetails", type = "list"), 
        NextPageToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListRecordHistoryOutput", type = "structure")
    return(populate(args, shape))
}

list_resources_for_tag_option_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TagOptionId = structure(logical(0), 
        shape = "TagOptionId", type = "string", max = 100L, min = 1L), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string"), PageSize = structure(logical(0), 
            shape = "PageSize", type = "integer", max = 20L, 
            min = 0L), PageToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListResourcesForTagOptionInput", type = "structure")
    return(populate(args, shape))
}

list_resources_for_tag_option_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceDetails = structure(list(structure(list(Id = structure(logical(0), 
        shape = "ResourceDetailId", type = "string"), ARN = structure(logical(0), 
        shape = "ResourceDetailARN", type = "string"), Name = structure(logical(0), 
        shape = "ResourceDetailName", type = "string"), Description = structure(logical(0), 
        shape = "ResourceDetailDescription", type = "string"), 
        CreatedTime = structure(logical(0), shape = "ResourceDetailCreatedTime", 
            type = "timestamp")), shape = "ResourceDetail", type = "structure")), 
        shape = "ResourceDetails", type = "list"), PageToken = structure(logical(0), 
        shape = "PageToken", type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListResourcesForTagOptionOutput", type = "structure")
    return(populate(args, shape))
}

list_service_actions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        PageSize = structure(logical(0), shape = "PageSize", 
            type = "integer", max = 20L, min = 0L), PageToken = structure(logical(0), 
            shape = "PageToken", type = "string", max = 2024L, 
            pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListServiceActionsInput", type = "structure")
    return(populate(args, shape))
}

list_service_actions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceActionSummaries = structure(list(structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ServiceActionName", type = "string", max = 256L, 
        min = 1L, pattern = "^[a-zA-Z0-9_\\-.]*"), Description = structure(logical(0), 
        shape = "ServiceActionDescription", type = "string", 
        max = 1024L), DefinitionType = structure(logical(0), 
        shape = "ServiceActionDefinitionType", type = "string")), 
        shape = "ServiceActionSummary", type = "structure")), 
        shape = "ServiceActionSummaries", type = "list"), NextPageToken = structure(logical(0), 
        shape = "PageToken", type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListServiceActionsOutput", type = "structure")
    return(populate(args, shape))
}

list_service_actions_for_provisioning_artifact_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisioningArtifactId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), PageSize = structure(logical(0), 
        shape = "PageSize", type = "integer", max = 20L, min = 0L), 
        PageToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*"), 
        AcceptLanguage = structure(logical(0), shape = "AcceptLanguage", 
            type = "string", max = 100L)), shape = "ListServiceActionsForProvisioningArtifactInput", 
        type = "structure")
    return(populate(args, shape))
}

list_service_actions_for_provisioning_artifact_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceActionSummaries = structure(list(structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ServiceActionName", type = "string", max = 256L, 
        min = 1L, pattern = "^[a-zA-Z0-9_\\-.]*"), Description = structure(logical(0), 
        shape = "ServiceActionDescription", type = "string", 
        max = 1024L), DefinitionType = structure(logical(0), 
        shape = "ServiceActionDefinitionType", type = "string")), 
        shape = "ServiceActionSummary", type = "structure")), 
        shape = "ServiceActionSummaries", type = "list"), NextPageToken = structure(logical(0), 
        shape = "PageToken", type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListServiceActionsForProvisioningArtifactOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_tag_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(Key = structure(logical(0), 
        shape = "TagOptionKey", type = "string", max = 128L, 
        min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        Value = structure(logical(0), shape = "TagOptionValue", 
            type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        Active = structure(logical(0), shape = "TagOptionActive", 
            type = "boolean")), shape = "ListTagOptionsFilters", 
        type = "structure"), PageSize = structure(logical(0), 
        shape = "PageSize", type = "integer", max = 20L, min = 0L), 
        PageToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListTagOptionsInput", type = "structure")
    return(populate(args, shape))
}

list_tag_options_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TagOptionDetails = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagOptionKey", type = "string", max = 128L, 
        min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        Value = structure(logical(0), shape = "TagOptionValue", 
            type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        Active = structure(logical(0), shape = "TagOptionActive", 
            type = "boolean"), Id = structure(logical(0), shape = "TagOptionId", 
            type = "string", max = 100L, min = 1L)), shape = "TagOptionDetail", 
        type = "structure")), shape = "TagOptionDetails", type = "list"), 
        PageToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ListTagOptionsOutput", type = "structure")
    return(populate(args, shape))
}

provision_product_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        ProductId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProvisioningArtifactId = structure(logical(0), shape = "Id", 
            type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        PathId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProvisionedProductName = structure(logical(0), shape = "ProvisionedProductName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]*"), 
        ProvisioningParameters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "ParameterKey", type = "string", max = 1000L, 
            min = 1L), Value = structure(logical(0), shape = "ParameterValue", 
            type = "string", max = 4096L)), shape = "ProvisioningParameter", 
            type = "structure")), shape = "ProvisioningParameters", 
            type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "Tags", 
            type = "list", max = 50L), NotificationArns = structure(list(structure(logical(0), 
            shape = "NotificationArn", type = "string", max = 1224L, 
            min = 1L, pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
            shape = "NotificationArns", type = "list", max = 5L), 
        ProvisionToken = structure(logical(0), shape = "IdempotencyToken", 
            idempotencyToken = TRUE, type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*")), 
        shape = "ProvisionProductInput", type = "structure")
    return(populate(args, shape))
}

provision_product_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RecordDetail = structure(list(RecordId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisionedProductName = structure(logical(0), 
        shape = "ProvisionedProductName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]*"), Status = structure(logical(0), 
        shape = "RecordStatus", type = "string"), CreatedTime = structure(logical(0), 
        shape = "CreatedTime", type = "timestamp"), UpdatedTime = structure(logical(0), 
        shape = "UpdatedTime", type = "timestamp"), ProvisionedProductType = structure(logical(0), 
        shape = "ProvisionedProductType", type = "string"), RecordType = structure(logical(0), 
        shape = "RecordType", type = "string"), ProvisionedProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisioningArtifactId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), PathId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), RecordErrors = structure(list(structure(list(Code = structure(logical(0), 
        shape = "ErrorCode", type = "string"), Description = structure(logical(0), 
        shape = "ErrorDescription", type = "string")), shape = "RecordError", 
        type = "structure")), shape = "RecordErrors", type = "list"), 
        RecordTags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "RecordTagKey", type = "string", max = 128L, 
            min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
            Value = structure(logical(0), shape = "RecordTagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$")), 
            shape = "RecordTag", type = "structure")), shape = "RecordTags", 
            type = "list", max = 50L)), shape = "RecordDetail", 
        type = "structure")), shape = "ProvisionProductOutput", 
        type = "structure")
    return(populate(args, shape))
}

reject_portfolio_share_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        PortfolioId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*")), 
        shape = "RejectPortfolioShareInput", type = "structure")
    return(populate(args, shape))
}

reject_portfolio_share_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RejectPortfolioShareOutput", 
        type = "structure")
    return(populate(args, shape))
}

scan_provisioned_products_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        AccessLevelFilter = structure(list(Key = structure(logical(0), 
            shape = "AccessLevelFilterKey", type = "string"), 
            Value = structure(logical(0), shape = "AccessLevelFilterValue", 
                type = "string")), shape = "AccessLevelFilter", 
            type = "structure"), PageSize = structure(logical(0), 
            shape = "PageSize", type = "integer", max = 20L, 
            min = 0L), PageToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ScanProvisionedProductsInput", type = "structure")
    return(populate(args, shape))
}

scan_provisioned_products_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProvisionedProducts = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ProvisionedProductNameOrArn", type = "string", 
        max = 1224L, min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]{0,127}|arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        Arn = structure(logical(0), shape = "ProvisionedProductNameOrArn", 
            type = "string", max = 1224L, min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]{0,127}|arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        Type = structure(logical(0), shape = "ProvisionedProductType", 
            type = "string"), Id = structure(logical(0), shape = "ProvisionedProductId", 
            type = "string"), Status = structure(logical(0), 
            shape = "ProvisionedProductStatus", type = "string"), 
        StatusMessage = structure(logical(0), shape = "ProvisionedProductStatusMessage", 
            type = "string"), CreatedTime = structure(logical(0), 
            shape = "CreatedTime", type = "timestamp"), IdempotencyToken = structure(logical(0), 
            shape = "IdempotencyToken", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*"), 
        LastRecordId = structure(logical(0), shape = "LastRequestId", 
            type = "string"), ProductId = structure(logical(0), 
            shape = "Id", type = "string", max = 100L, min = 1L, 
            pattern = "^[a-zA-Z0-9_\\-]*"), ProvisioningArtifactId = structure(logical(0), 
            shape = "Id", type = "string", max = 100L, min = 1L, 
            pattern = "^[a-zA-Z0-9_\\-]*")), shape = "ProvisionedProductDetail", 
        type = "structure")), shape = "ProvisionedProductDetails", 
        type = "list"), NextPageToken = structure(logical(0), 
        shape = "PageToken", type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "ScanProvisionedProductsOutput", type = "structure")
    return(populate(args, shape))
}

search_products_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        Filters = structure(list(structure(list(structure(logical(0), 
            shape = "ProductViewFilterValue", type = "string")), 
            shape = "ProductViewFilterValues", type = "list")), 
            shape = "ProductViewFilters", type = "map"), PageSize = structure(logical(0), 
            shape = "PageSize", type = "integer", max = 20L, 
            min = 0L), SortBy = structure(logical(0), shape = "ProductViewSortBy", 
            type = "string"), SortOrder = structure(logical(0), 
            shape = "SortOrder", type = "string"), PageToken = structure(logical(0), 
            shape = "PageToken", type = "string", max = 2024L, 
            pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "SearchProductsInput", type = "structure")
    return(populate(args, shape))
}

search_products_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProductViewSummaries = structure(list(structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ProductViewName", type = "string", max = 8191L), 
        Owner = structure(logical(0), shape = "ProductViewOwner", 
            type = "string", max = 8191L), ShortDescription = structure(logical(0), 
            shape = "ProductViewShortDescription", type = "string", 
            max = 8191L), Type = structure(logical(0), shape = "ProductType", 
            type = "string", max = 8191L), Distributor = structure(logical(0), 
            shape = "ProductViewDistributor", type = "string"), 
        HasDefaultPath = structure(logical(0), shape = "HasDefaultPath", 
            type = "boolean"), SupportEmail = structure(logical(0), 
            shape = "SupportEmail", type = "string", max = 254L), 
        SupportDescription = structure(logical(0), shape = "SupportDescription", 
            type = "string", max = 8191L), SupportUrl = structure(logical(0), 
            shape = "SupportUrl", type = "string", max = 2083L)), 
        shape = "ProductViewSummary", type = "structure")), shape = "ProductViewSummaries", 
        type = "list"), ProductViewAggregations = structure(list(structure(list(structure(list(Value = structure(logical(0), 
        shape = "AttributeValue", type = "string"), ApproximateCount = structure(logical(0), 
        shape = "ApproximateCount", type = "integer")), shape = "ProductViewAggregationValue", 
        type = "structure")), shape = "ProductViewAggregationValues", 
        type = "list")), shape = "ProductViewAggregations", type = "map"), 
        NextPageToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "SearchProductsOutput", type = "structure")
    return(populate(args, shape))
}

search_products_as_admin_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        PortfolioId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        Filters = structure(list(structure(list(structure(logical(0), 
            shape = "ProductViewFilterValue", type = "string")), 
            shape = "ProductViewFilterValues", type = "list")), 
            shape = "ProductViewFilters", type = "map"), SortBy = structure(logical(0), 
            shape = "ProductViewSortBy", type = "string"), SortOrder = structure(logical(0), 
            shape = "SortOrder", type = "string"), PageToken = structure(logical(0), 
            shape = "PageToken", type = "string", max = 2024L, 
            pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*"), 
        PageSize = structure(logical(0), shape = "PageSize", 
            type = "integer", max = 20L, min = 0L), ProductSource = structure(logical(0), 
            shape = "ProductSource", type = "string")), shape = "SearchProductsAsAdminInput", 
        type = "structure")
    return(populate(args, shape))
}

search_products_as_admin_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProductViewDetails = structure(list(structure(list(ProductViewSummary = structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ProductViewName", type = "string", max = 8191L), 
        Owner = structure(logical(0), shape = "ProductViewOwner", 
            type = "string", max = 8191L), ShortDescription = structure(logical(0), 
            shape = "ProductViewShortDescription", type = "string", 
            max = 8191L), Type = structure(logical(0), shape = "ProductType", 
            type = "string", max = 8191L), Distributor = structure(logical(0), 
            shape = "ProductViewDistributor", type = "string"), 
        HasDefaultPath = structure(logical(0), shape = "HasDefaultPath", 
            type = "boolean"), SupportEmail = structure(logical(0), 
            shape = "SupportEmail", type = "string", max = 254L), 
        SupportDescription = structure(logical(0), shape = "SupportDescription", 
            type = "string", max = 8191L), SupportUrl = structure(logical(0), 
            shape = "SupportUrl", type = "string", max = 2083L)), 
        shape = "ProductViewSummary", type = "structure"), Status = structure(logical(0), 
        shape = "Status", type = "string"), ProductARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 150L, min = 1L), 
        CreatedTime = structure(logical(0), shape = "CreatedTime", 
            type = "timestamp")), shape = "ProductViewDetail", 
        type = "structure")), shape = "ProductViewDetails", type = "list"), 
        NextPageToken = structure(logical(0), shape = "PageToken", 
            type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "SearchProductsAsAdminOutput", type = "structure")
    return(populate(args, shape))
}

search_provisioned_products_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        AccessLevelFilter = structure(list(Key = structure(logical(0), 
            shape = "AccessLevelFilterKey", type = "string"), 
            Value = structure(logical(0), shape = "AccessLevelFilterValue", 
                type = "string")), shape = "AccessLevelFilter", 
            type = "structure"), Filters = structure(list(structure(list(structure(logical(0), 
            shape = "ProvisionedProductViewFilterValue", type = "string")), 
            shape = "ProvisionedProductViewFilterValues", type = "list")), 
            shape = "ProvisionedProductFilters", type = "map"), 
        SortBy = structure(logical(0), shape = "SortField", type = "string"), 
        SortOrder = structure(logical(0), shape = "SortOrder", 
            type = "string"), PageSize = structure(logical(0), 
            shape = "SearchProvisionedProductsPageSize", type = "integer", 
            max = 100L, min = 0L), PageToken = structure(logical(0), 
            shape = "PageToken", type = "string", max = 2024L, 
            pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "SearchProvisionedProductsInput", type = "structure")
    return(populate(args, shape))
}

search_provisioned_products_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProvisionedProducts = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ProvisionedProductNameOrArn", type = "string", 
        max = 1224L, min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]{0,127}|arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        Arn = structure(logical(0), shape = "ProvisionedProductNameOrArn", 
            type = "string", max = 1224L, min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]{0,127}|arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        Type = structure(logical(0), shape = "ProvisionedProductType", 
            type = "string"), Id = structure(logical(0), shape = "Id", 
            type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        Status = structure(logical(0), shape = "ProvisionedProductStatus", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "ProvisionedProductStatusMessage", type = "string"), 
        CreatedTime = structure(logical(0), shape = "CreatedTime", 
            type = "timestamp"), IdempotencyToken = structure(logical(0), 
            shape = "IdempotencyToken", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*"), 
        LastRecordId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "Tags", 
            type = "list", max = 50L), PhysicalId = structure(logical(0), 
            shape = "PhysicalId", type = "string"), ProductId = structure(logical(0), 
            shape = "Id", type = "string", max = 100L, min = 1L, 
            pattern = "^[a-zA-Z0-9_\\-]*"), ProvisioningArtifactId = structure(logical(0), 
            shape = "Id", type = "string", max = 100L, min = 1L, 
            pattern = "^[a-zA-Z0-9_\\-]*"), UserArn = structure(logical(0), 
            shape = "UserArn", type = "string"), UserArnSession = structure(logical(0), 
            shape = "UserArnSession", type = "string")), shape = "ProvisionedProductAttribute", 
        type = "structure")), shape = "ProvisionedProductAttributes", 
        type = "list"), TotalResultsCount = structure(logical(0), 
        shape = "TotalResultsCount", type = "integer"), NextPageToken = structure(logical(0), 
        shape = "PageToken", type = "string", max = 2024L, pattern = "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*")), 
        shape = "SearchProvisionedProductsOutput", type = "structure")
    return(populate(args, shape))
}

terminate_provisioned_product_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProvisionedProductName = structure(logical(0), 
        shape = "ProvisionedProductNameOrArn", type = "string", 
        max = 1224L, min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]{0,127}|arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        ProvisionedProductId = structure(logical(0), shape = "Id", 
            type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        TerminateToken = structure(logical(0), shape = "IdempotencyToken", 
            idempotencyToken = TRUE, type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*"), 
        IgnoreErrors = structure(logical(0), shape = "IgnoreErrors", 
            type = "boolean"), AcceptLanguage = structure(logical(0), 
            shape = "AcceptLanguage", type = "string", max = 100L)), 
        shape = "TerminateProvisionedProductInput", type = "structure")
    return(populate(args, shape))
}

terminate_provisioned_product_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RecordDetail = structure(list(RecordId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisionedProductName = structure(logical(0), 
        shape = "ProvisionedProductName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]*"), Status = structure(logical(0), 
        shape = "RecordStatus", type = "string"), CreatedTime = structure(logical(0), 
        shape = "CreatedTime", type = "timestamp"), UpdatedTime = structure(logical(0), 
        shape = "UpdatedTime", type = "timestamp"), ProvisionedProductType = structure(logical(0), 
        shape = "ProvisionedProductType", type = "string"), RecordType = structure(logical(0), 
        shape = "RecordType", type = "string"), ProvisionedProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisioningArtifactId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), PathId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), RecordErrors = structure(list(structure(list(Code = structure(logical(0), 
        shape = "ErrorCode", type = "string"), Description = structure(logical(0), 
        shape = "ErrorDescription", type = "string")), shape = "RecordError", 
        type = "structure")), shape = "RecordErrors", type = "list"), 
        RecordTags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "RecordTagKey", type = "string", max = 128L, 
            min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
            Value = structure(logical(0), shape = "RecordTagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$")), 
            shape = "RecordTag", type = "structure")), shape = "RecordTags", 
            type = "list", max = 50L)), shape = "RecordDetail", 
        type = "structure")), shape = "TerminateProvisionedProductOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_constraint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        Id = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        Description = structure(logical(0), shape = "ConstraintDescription", 
            type = "string", max = 2000L)), shape = "UpdateConstraintInput", 
        type = "structure")
    return(populate(args, shape))
}

update_constraint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConstraintDetail = structure(list(ConstraintId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Type = structure(logical(0), 
        shape = "ConstraintType", type = "string", max = 1024L, 
        min = 1L), Description = structure(logical(0), shape = "ConstraintDescription", 
        type = "string", max = 2000L), Owner = structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "^[0-9]{12}$")), 
        shape = "ConstraintDetail", type = "structure"), ConstraintParameters = structure(logical(0), 
        shape = "ConstraintParameters", type = "string"), Status = structure(logical(0), 
        shape = "Status", type = "string")), shape = "UpdateConstraintOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_portfolio_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        Id = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        DisplayName = structure(logical(0), shape = "PortfolioDisplayName", 
            type = "string", max = 100L, min = 1L), Description = structure(logical(0), 
            shape = "PortfolioDescription", type = "string", 
            max = 2000L), ProviderName = structure(logical(0), 
            shape = "ProviderName", type = "string", max = 50L, 
            min = 1L), AddTags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "AddTags", 
            type = "list", max = 20L), RemoveTags = structure(list(structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "TagKeys", type = "list")), shape = "UpdatePortfolioInput", 
        type = "structure")
    return(populate(args, shape))
}

update_portfolio_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PortfolioDetail = structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 150L, min = 1L), 
        DisplayName = structure(logical(0), shape = "PortfolioDisplayName", 
            type = "string", max = 100L, min = 1L), Description = structure(logical(0), 
            shape = "PortfolioDescription", type = "string", 
            max = 2000L), CreatedTime = structure(logical(0), 
            shape = "CreationTime", type = "timestamp"), ProviderName = structure(logical(0), 
            shape = "ProviderName", type = "string", max = 50L, 
            min = 1L)), shape = "PortfolioDetail", type = "structure"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "Tags", 
            type = "list", max = 50L)), shape = "UpdatePortfolioOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_product_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        Id = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        Name = structure(logical(0), shape = "ProductViewName", 
            type = "string", max = 8191L), Owner = structure(logical(0), 
            shape = "ProductViewOwner", type = "string", max = 8191L), 
        Description = structure(logical(0), shape = "ProductViewShortDescription", 
            type = "string", max = 8191L), Distributor = structure(logical(0), 
            shape = "ProductViewOwner", type = "string", max = 8191L), 
        SupportDescription = structure(logical(0), shape = "SupportDescription", 
            type = "string", max = 8191L), SupportEmail = structure(logical(0), 
            shape = "SupportEmail", type = "string", max = 254L), 
        SupportUrl = structure(logical(0), shape = "SupportUrl", 
            type = "string", max = 2083L), AddTags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "AddTags", 
            type = "list", max = 20L), RemoveTags = structure(list(structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "TagKeys", type = "list")), shape = "UpdateProductInput", 
        type = "structure")
    return(populate(args, shape))
}

update_product_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProductViewDetail = structure(list(ProductViewSummary = structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ProductViewName", type = "string", max = 8191L), 
        Owner = structure(logical(0), shape = "ProductViewOwner", 
            type = "string", max = 8191L), ShortDescription = structure(logical(0), 
            shape = "ProductViewShortDescription", type = "string", 
            max = 8191L), Type = structure(logical(0), shape = "ProductType", 
            type = "string", max = 8191L), Distributor = structure(logical(0), 
            shape = "ProductViewDistributor", type = "string"), 
        HasDefaultPath = structure(logical(0), shape = "HasDefaultPath", 
            type = "boolean"), SupportEmail = structure(logical(0), 
            shape = "SupportEmail", type = "string", max = 254L), 
        SupportDescription = structure(logical(0), shape = "SupportDescription", 
            type = "string", max = 8191L), SupportUrl = structure(logical(0), 
            shape = "SupportUrl", type = "string", max = 2083L)), 
        shape = "ProductViewSummary", type = "structure"), Status = structure(logical(0), 
        shape = "Status", type = "string"), ProductARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 150L, min = 1L), 
        CreatedTime = structure(logical(0), shape = "CreatedTime", 
            type = "timestamp")), shape = "ProductViewDetail", 
        type = "structure"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), Value = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "Tag", 
        type = "structure")), shape = "Tags", type = "list", 
        max = 50L)), shape = "UpdateProductOutput", type = "structure")
    return(populate(args, shape))
}

update_provisioned_product_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        ProvisionedProductName = structure(logical(0), shape = "ProvisionedProductNameOrArn", 
            type = "string", max = 1224L, min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]{0,127}|arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        ProvisionedProductId = structure(logical(0), shape = "Id", 
            type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProductId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProvisioningArtifactId = structure(logical(0), shape = "Id", 
            type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        PathId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProvisioningParameters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "ParameterKey", type = "string", max = 1000L, 
            min = 1L), Value = structure(logical(0), shape = "ParameterValue", 
            type = "string", max = 4096L), UsePreviousValue = structure(logical(0), 
            shape = "UsePreviousValue", type = "boolean")), shape = "UpdateProvisioningParameter", 
            type = "structure")), shape = "UpdateProvisioningParameters", 
            type = "list"), UpdateToken = structure(logical(0), 
            shape = "IdempotencyToken", idempotencyToken = TRUE, 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*")), 
        shape = "UpdateProvisionedProductInput", type = "structure")
    return(populate(args, shape))
}

update_provisioned_product_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RecordDetail = structure(list(RecordId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisionedProductName = structure(logical(0), 
        shape = "ProvisionedProductName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9][a-zA-Z0-9._-]*"), Status = structure(logical(0), 
        shape = "RecordStatus", type = "string"), CreatedTime = structure(logical(0), 
        shape = "CreatedTime", type = "timestamp"), UpdatedTime = structure(logical(0), 
        shape = "UpdatedTime", type = "timestamp"), ProvisionedProductType = structure(logical(0), 
        shape = "ProvisionedProductType", type = "string"), RecordType = structure(logical(0), 
        shape = "RecordType", type = "string"), ProvisionedProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProductId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), ProvisioningArtifactId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), PathId = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), RecordErrors = structure(list(structure(list(Code = structure(logical(0), 
        shape = "ErrorCode", type = "string"), Description = structure(logical(0), 
        shape = "ErrorDescription", type = "string")), shape = "RecordError", 
        type = "structure")), shape = "RecordErrors", type = "list"), 
        RecordTags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "RecordTagKey", type = "string", max = 128L, 
            min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
            Value = structure(logical(0), shape = "RecordTagValue", 
                type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$")), 
            shape = "RecordTag", type = "structure")), shape = "RecordTags", 
            type = "list", max = 50L)), shape = "RecordDetail", 
        type = "structure")), shape = "UpdateProvisionedProductOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_provisioning_artifact_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AcceptLanguage = structure(logical(0), 
        shape = "AcceptLanguage", type = "string", max = 100L), 
        ProductId = structure(logical(0), shape = "Id", type = "string", 
            max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        ProvisioningArtifactId = structure(logical(0), shape = "Id", 
            type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        Name = structure(logical(0), shape = "ProvisioningArtifactName", 
            type = "string"), Description = structure(logical(0), 
            shape = "ProvisioningArtifactDescription", type = "string"), 
        Active = structure(logical(0), shape = "ProvisioningArtifactActive", 
            type = "boolean")), shape = "UpdateProvisioningArtifactInput", 
        type = "structure")
    return(populate(args, shape))
}

update_provisioning_artifact_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProvisioningArtifactDetail = structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ProvisioningArtifactName", type = "string"), 
        Description = structure(logical(0), shape = "ProvisioningArtifactName", 
            type = "string"), Type = structure(logical(0), shape = "ProvisioningArtifactType", 
            type = "string"), CreatedTime = structure(logical(0), 
            shape = "CreationTime", type = "timestamp"), Active = structure(logical(0), 
            shape = "ProvisioningArtifactActive", type = "boolean")), 
        shape = "ProvisioningArtifactDetail", type = "structure"), 
        Info = structure(list(structure(logical(0), shape = "ProvisioningArtifactInfoValue", 
            type = "string")), shape = "ProvisioningArtifactInfo", 
            type = "map", max = 100L, min = 1L), Status = structure(logical(0), 
            shape = "Status", type = "string")), shape = "UpdateProvisioningArtifactOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_service_action_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "Id", 
        type = "string", max = 100L, min = 1L, pattern = "^[a-zA-Z0-9_\\-]*"), 
        Name = structure(logical(0), shape = "ServiceActionName", 
            type = "string", max = 256L, min = 1L, pattern = "^[a-zA-Z0-9_\\-.]*"), 
        Definition = structure(list(structure(logical(0), shape = "ServiceActionDefinitionValue", 
            type = "string", max = 1024L, min = 1L)), shape = "ServiceActionDefinitionMap", 
            type = "map", max = 100L, min = 1L), Description = structure(logical(0), 
            shape = "ServiceActionDescription", type = "string", 
            max = 1024L), AcceptLanguage = structure(logical(0), 
            shape = "AcceptLanguage", type = "string", max = 100L)), 
        shape = "UpdateServiceActionInput", type = "structure")
    return(populate(args, shape))
}

update_service_action_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceActionDetail = structure(list(ServiceActionSummary = structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 100L, min = 1L, 
        pattern = "^[a-zA-Z0-9_\\-]*"), Name = structure(logical(0), 
        shape = "ServiceActionName", type = "string", max = 256L, 
        min = 1L, pattern = "^[a-zA-Z0-9_\\-.]*"), Description = structure(logical(0), 
        shape = "ServiceActionDescription", type = "string", 
        max = 1024L), DefinitionType = structure(logical(0), 
        shape = "ServiceActionDefinitionType", type = "string")), 
        shape = "ServiceActionSummary", type = "structure"), 
        Definition = structure(list(structure(logical(0), shape = "ServiceActionDefinitionValue", 
            type = "string", max = 1024L, min = 1L)), shape = "ServiceActionDefinitionMap", 
            type = "map", max = 100L, min = 1L)), shape = "ServiceActionDetail", 
        type = "structure")), shape = "UpdateServiceActionOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_tag_option_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "TagOptionId", 
        type = "string", max = 100L, min = 1L), Value = structure(logical(0), 
        shape = "TagOptionValue", type = "string", max = 256L, 
        min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        Active = structure(logical(0), shape = "TagOptionActive", 
            type = "boolean")), shape = "UpdateTagOptionInput", 
        type = "structure")
    return(populate(args, shape))
}

update_tag_option_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TagOptionDetail = structure(list(Key = structure(logical(0), 
        shape = "TagOptionKey", type = "string", max = 128L, 
        min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        Value = structure(logical(0), shape = "TagOptionValue", 
            type = "string", max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        Active = structure(logical(0), shape = "TagOptionActive", 
            type = "boolean"), Id = structure(logical(0), shape = "TagOptionId", 
            type = "string", max = 100L, min = 1L)), shape = "TagOptionDetail", 
        type = "structure")), shape = "UpdateTagOptionOutput", 
        type = "structure")
    return(populate(args, shape))
}
