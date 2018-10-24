#' Accepts an offer to share the specified portfolio
#'
#' Accepts an offer to share the specified portfolio.
#'
#' @param PortfolioId The portfolio identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
accept_portfolio_share <- function (PortfolioId, AcceptLanguage = NULL) 
{
    op <- Operation(name = "AcceptPortfolioShare", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- accept_portfolio_share_input(PortfolioId = PortfolioId, 
        AcceptLanguage = AcceptLanguage)
    output <- accept_portfolio_share_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates the specified principal ARN with the specified portfolio
#'
#' Associates the specified principal ARN with the specified portfolio.
#'
#' @param PortfolioId The portfolio identifier.
#' @param PrincipalARN The ARN of the principal (IAM user, role, or group).
#' @param PrincipalType The principal type. The supported value is `IAM`.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
associate_principal_with_portfolio <- function (PortfolioId, 
    PrincipalARN, PrincipalType, AcceptLanguage = NULL) 
{
    op <- Operation(name = "AssociatePrincipalWithPortfolio", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- associate_principal_with_portfolio_input(PortfolioId = PortfolioId, 
        PrincipalARN = PrincipalARN, PrincipalType = PrincipalType, 
        AcceptLanguage = AcceptLanguage)
    output <- associate_principal_with_portfolio_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates the specified product with the specified portfolio
#'
#' Associates the specified product with the specified portfolio.
#'
#' @param ProductId The product identifier.
#' @param PortfolioId The portfolio identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param SourcePortfolioId The identifier of the source portfolio.
#'
#' @examples
#'
#' @export
associate_product_with_portfolio <- function (ProductId, PortfolioId, 
    AcceptLanguage = NULL, SourcePortfolioId = NULL) 
{
    op <- Operation(name = "AssociateProductWithPortfolio", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- associate_product_with_portfolio_input(ProductId = ProductId, 
        PortfolioId = PortfolioId, AcceptLanguage = AcceptLanguage, 
        SourcePortfolioId = SourcePortfolioId)
    output <- associate_product_with_portfolio_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates a self-service action with a provisioning artifact
#'
#' Associates a self-service action with a provisioning artifact.
#'
#' @param ProductId The product identifier. For example, `prod-abcdzk7xy33qa`.
#' @param ProvisioningArtifactId The identifier of the provisioning artifact. For example, `pa-4abcdjnxjj6ne`.
#' @param ServiceActionId The self-service action identifier. For example, `act-fs7abcd89wxyz`.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
associate_service_action_with_provisioning_artifact <- function (ProductId, 
    ProvisioningArtifactId, ServiceActionId, AcceptLanguage = NULL) 
{
    op <- Operation(name = "AssociateServiceActionWithProvisioningArtifact", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- associate_service_action_with_provisioning_artifact_input(ProductId = ProductId, 
        ProvisioningArtifactId = ProvisioningArtifactId, ServiceActionId = ServiceActionId, 
        AcceptLanguage = AcceptLanguage)
    output <- associate_service_action_with_provisioning_artifact_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associate the specified TagOption with the specified portfolio or product
#'
#' Associate the specified TagOption with the specified portfolio or product.
#'
#' @param ResourceId The resource identifier.
#' @param TagOptionId The TagOption identifier.
#'
#' @examples
#'
#' @export
associate_tag_option_with_resource <- function (ResourceId, TagOptionId) 
{
    op <- Operation(name = "AssociateTagOptionWithResource", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- associate_tag_option_with_resource_input(ResourceId = ResourceId, 
        TagOptionId = TagOptionId)
    output <- associate_tag_option_with_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates multiple self-service actions with provisioning artifacts
#'
#' Associates multiple self-service actions with provisioning artifacts.
#'
#' @param ServiceActionAssociations One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
batch_associate_service_action_with_provisioning_artifact <- function (ServiceActionAssociations, 
    AcceptLanguage = NULL) 
{
    op <- Operation(name = "BatchAssociateServiceActionWithProvisioningArtifact", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- batch_associate_service_action_with_provisioning_artifact_input(ServiceActionAssociations = ServiceActionAssociations, 
        AcceptLanguage = AcceptLanguage)
    output <- batch_associate_service_action_with_provisioning_artifact_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates a batch of self-service actions from the specified provisioning artifact
#'
#' Disassociates a batch of self-service actions from the specified provisioning artifact.
#'
#' @param ServiceActionAssociations One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
batch_disassociate_service_action_from_provisioning_artifact <- function (ServiceActionAssociations, 
    AcceptLanguage = NULL) 
{
    op <- Operation(name = "BatchDisassociateServiceActionFromProvisioningArtifact", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- batch_disassociate_service_action_from_provisioning_artifact_input(ServiceActionAssociations = ServiceActionAssociations, 
        AcceptLanguage = AcceptLanguage)
    output <- batch_disassociate_service_action_from_provisioning_artifact_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Copies the specified source product to the specified target product or a new product
#'
#' Copies the specified source product to the specified target product or a new product.
#' 
#' You can copy a product to the same account or another account. You can copy a product to the same region or another region.
#' 
#' This operation is performed asynchronously. To track the progress of the operation, use DescribeCopyProductStatus.
#'
#' @param SourceProductArn The Amazon Resource Name (ARN) of the source product.
#' @param IdempotencyToken A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param TargetProductId The identifier of the target product. By default, a new product is created.
#' @param TargetProductName A name for the target product. The default is the name of the source product.
#' @param SourceProvisioningArtifactIdentifiers The identifiers of the provisioning artifacts (also known as versions) of the product to copy. By default, all provisioning artifacts are copied.
#' @param CopyOptions The copy options. If the value is `CopyTags`, the tags from the source product are copied to the target product.
#'
#' @examples
#'
#' @export
copy_product <- function (SourceProductArn, IdempotencyToken, 
    AcceptLanguage = NULL, TargetProductId = NULL, TargetProductName = NULL, 
    SourceProvisioningArtifactIdentifiers = NULL, CopyOptions = NULL) 
{
    op <- Operation(name = "CopyProduct", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- copy_product_input(SourceProductArn = SourceProductArn, 
        IdempotencyToken = IdempotencyToken, AcceptLanguage = AcceptLanguage, 
        TargetProductId = TargetProductId, TargetProductName = TargetProductName, 
        SourceProvisioningArtifactIdentifiers = SourceProvisioningArtifactIdentifiers, 
        CopyOptions = CopyOptions)
    output <- copy_product_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a constraint
#'
#' Creates a constraint.
#'
#' @param PortfolioId The portfolio identifier.
#' @param ProductId The product identifier.
#' @param Parameters The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:
#' 
#' LAUNCH
#' 
#' :   Specify the `RoleArn` property as follows:
#' 
#'     \\\"RoleArn\\\" : \\\"arn:aws:iam::123456789012:role/LaunchRole\\\"
#' 
#' NOTIFICATION
#' 
#' :   Specify the `NotificationArns` property as follows:
#' 
#'     \\\"NotificationArns\\\" : &#91;\\\"arn:aws:sns:us-east-1:123456789012:Topic\\\"&#93;
#' 
#' TEMPLATE
#' 
#' :   Specify the `Rules` property. For more information, see [Template Constraint Rules](http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html).
#' @param Type The type of constraint.
#' 
#' -   `LAUNCH`
#' 
#' -   `NOTIFICATION`
#' 
#' -   `TEMPLATE`
#' @param IdempotencyToken A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param Description The description of the constraint.
#'
#' @examples
#'
#' @export
create_constraint <- function (PortfolioId, ProductId, Parameters, 
    Type, IdempotencyToken, AcceptLanguage = NULL, Description = NULL) 
{
    op <- Operation(name = "CreateConstraint", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_constraint_input(PortfolioId = PortfolioId, 
        ProductId = ProductId, Parameters = Parameters, Type = Type, 
        IdempotencyToken = IdempotencyToken, AcceptLanguage = AcceptLanguage, 
        Description = Description)
    output <- create_constraint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a portfolio
#'
#' Creates a portfolio.
#'
#' @param DisplayName The name to use for display purposes.
#' @param ProviderName The name of the portfolio provider.
#' @param IdempotencyToken A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param Description The description of the portfolio.
#' @param Tags One or more tags.
#'
#' @examples
#'
#' @export
create_portfolio <- function (DisplayName, ProviderName, IdempotencyToken, 
    AcceptLanguage = NULL, Description = NULL, Tags = NULL) 
{
    op <- Operation(name = "CreatePortfolio", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_portfolio_input(DisplayName = DisplayName, 
        ProviderName = ProviderName, IdempotencyToken = IdempotencyToken, 
        AcceptLanguage = AcceptLanguage, Description = Description, 
        Tags = Tags)
    output <- create_portfolio_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Shares the specified portfolio with the specified account
#'
#' Shares the specified portfolio with the specified account.
#'
#' @param PortfolioId The portfolio identifier.
#' @param AccountId The AWS account ID.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
create_portfolio_share <- function (PortfolioId, AccountId, AcceptLanguage = NULL) 
{
    op <- Operation(name = "CreatePortfolioShare", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_portfolio_share_input(PortfolioId = PortfolioId, 
        AccountId = AccountId, AcceptLanguage = AcceptLanguage)
    output <- create_portfolio_share_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a product
#'
#' Creates a product.
#'
#' @param Name The name of the product.
#' @param Owner The owner of the product.
#' @param ProductType The type of product.
#' @param ProvisioningArtifactParameters The configuration of the provisioning artifact.
#' @param IdempotencyToken A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param Description The description of the product.
#' @param Distributor The distributor of the product.
#' @param SupportDescription The support information about the product.
#' @param SupportEmail The contact email for product support.
#' @param SupportUrl The contact URL for product support.
#' @param Tags One or more tags.
#'
#' @examples
#'
#' @export
create_product <- function (Name, Owner, ProductType, ProvisioningArtifactParameters, 
    IdempotencyToken, AcceptLanguage = NULL, Description = NULL, 
    Distributor = NULL, SupportDescription = NULL, SupportEmail = NULL, 
    SupportUrl = NULL, Tags = NULL) 
{
    op <- Operation(name = "CreateProduct", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_product_input(Name = Name, Owner = Owner, 
        ProductType = ProductType, ProvisioningArtifactParameters = ProvisioningArtifactParameters, 
        IdempotencyToken = IdempotencyToken, AcceptLanguage = AcceptLanguage, 
        Description = Description, Distributor = Distributor, 
        SupportDescription = SupportDescription, SupportEmail = SupportEmail, 
        SupportUrl = SupportUrl, Tags = Tags)
    output <- create_product_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a plan
#'
#' Creates a plan. A plan includes the list of resources to be created (when provisioning a new product) or modified (when updating a provisioned product) when the plan is executed.
#' 
#' You can create one plan per provisioned product. To create a plan for an existing provisioned product, the product status must be AVAILBLE or TAINTED.
#' 
#' To view the resource changes in the change set, use DescribeProvisionedProductPlan. To create or modify the provisioned product, use ExecuteProvisionedProductPlan.
#'
#' @param PlanName The name of the plan.
#' @param PlanType The plan type.
#' @param ProductId The product identifier.
#' @param ProvisionedProductName A user-friendly name for the provisioned product. This value must be unique for the AWS account and cannot be updated after the product is provisioned.
#' @param ProvisioningArtifactId The identifier of the provisioning artifact.
#' @param IdempotencyToken A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param NotificationArns Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.
#' @param PathId The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use ListLaunchPaths.
#' @param ProvisioningParameters Parameters specified by the administrator that are required for provisioning the product.
#' @param Tags One or more tags.
#'
#' @examples
#'
#' @export
create_provisioned_product_plan <- function (PlanName, PlanType, 
    ProductId, ProvisionedProductName, ProvisioningArtifactId, 
    IdempotencyToken, AcceptLanguage = NULL, NotificationArns = NULL, 
    PathId = NULL, ProvisioningParameters = NULL, Tags = NULL) 
{
    op <- Operation(name = "CreateProvisionedProductPlan", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_provisioned_product_plan_input(PlanName = PlanName, 
        PlanType = PlanType, ProductId = ProductId, ProvisionedProductName = ProvisionedProductName, 
        ProvisioningArtifactId = ProvisioningArtifactId, IdempotencyToken = IdempotencyToken, 
        AcceptLanguage = AcceptLanguage, NotificationArns = NotificationArns, 
        PathId = PathId, ProvisioningParameters = ProvisioningParameters, 
        Tags = Tags)
    output <- create_provisioned_product_plan_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a provisioning artifact (also known as a version) for the specified product
#'
#' Creates a provisioning artifact (also known as a version) for the specified product.
#' 
#' You cannot create a provisioning artifact for a product that was shared with you.
#'
#' @param ProductId The product identifier.
#' @param Parameters The configuration for the provisioning artifact.
#' @param IdempotencyToken A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
create_provisioning_artifact <- function (ProductId, Parameters, 
    IdempotencyToken, AcceptLanguage = NULL) 
{
    op <- Operation(name = "CreateProvisioningArtifact", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_provisioning_artifact_input(ProductId = ProductId, 
        Parameters = Parameters, IdempotencyToken = IdempotencyToken, 
        AcceptLanguage = AcceptLanguage)
    output <- create_provisioning_artifact_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a self-service action
#'
#' Creates a self-service action.
#'
#' @param Name The self-service action name.
#' @param DefinitionType The service action definition type. For example, `SSM_AUTOMATION`.
#' @param Definition The self-service action definition. Can be one of the following:
#' 
#' Name
#' 
#' :   The name of the AWS Systems Manager Document. For example, `AWS-RestartEC2Instance`.
#' 
#' Version
#' 
#' :   The AWS Systems Manager automation document version. For example, `"Version": "1"`
#' 
#' AssumeRole
#' 
#' :   The Amazon Resource Name (ARN) of the role that performs the self-service actions on your behalf. For example, `"AssumeRole": "arn:aws:iam::12345678910:role/ActionRole"`.
#' 
#'     To reuse the provisioned product launch role, set to `"AssumeRole": "LAUNCH_ROLE"`.
#' 
#' Parameters
#' 
#' :   The list of parameters in JSON format.
#' 
#'     For example: `[{\"Name\":\"InstanceId\",\"Type\":\"TARGET\"}]`.
#' @param IdempotencyToken A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
#' @param Description The self-service action description.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
create_service_action <- function (Name, DefinitionType, Definition, 
    IdempotencyToken, Description = NULL, AcceptLanguage = NULL) 
{
    op <- Operation(name = "CreateServiceAction", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_service_action_input(Name = Name, DefinitionType = DefinitionType, 
        Definition = Definition, IdempotencyToken = IdempotencyToken, 
        Description = Description, AcceptLanguage = AcceptLanguage)
    output <- create_service_action_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a TagOption
#'
#' Creates a TagOption.
#'
#' @param Key The TagOption key.
#' @param Value The TagOption value.
#'
#' @examples
#'
#' @export
create_tag_option <- function (Key, Value) 
{
    op <- Operation(name = "CreateTagOption", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_tag_option_input(Key = Key, Value = Value)
    output <- create_tag_option_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified constraint
#'
#' Deletes the specified constraint.
#'
#' @param Id The identifier of the constraint.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
delete_constraint <- function (Id, AcceptLanguage = NULL) 
{
    op <- Operation(name = "DeleteConstraint", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_constraint_input(Id = Id, AcceptLanguage = AcceptLanguage)
    output <- delete_constraint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified portfolio
#'
#' Deletes the specified portfolio.
#' 
#' You cannot delete a portfolio if it was shared with you or if it has associated products, users, constraints, or shared accounts.
#'
#' @param Id The portfolio identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
delete_portfolio <- function (Id, AcceptLanguage = NULL) 
{
    op <- Operation(name = "DeletePortfolio", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_portfolio_input(Id = Id, AcceptLanguage = AcceptLanguage)
    output <- delete_portfolio_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops sharing the specified portfolio with the specified account
#'
#' Stops sharing the specified portfolio with the specified account.
#'
#' @param PortfolioId The portfolio identifier.
#' @param AccountId The AWS account ID.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
delete_portfolio_share <- function (PortfolioId, AccountId, AcceptLanguage = NULL) 
{
    op <- Operation(name = "DeletePortfolioShare", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_portfolio_share_input(PortfolioId = PortfolioId, 
        AccountId = AccountId, AcceptLanguage = AcceptLanguage)
    output <- delete_portfolio_share_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified product
#'
#' Deletes the specified product.
#' 
#' You cannot delete a product if it was shared with you or is associated with a portfolio.
#'
#' @param Id The product identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
delete_product <- function (Id, AcceptLanguage = NULL) 
{
    op <- Operation(name = "DeleteProduct", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_product_input(Id = Id, AcceptLanguage = AcceptLanguage)
    output <- delete_product_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified plan
#'
#' Deletes the specified plan.
#'
#' @param PlanId The plan identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param IgnoreErrors If set to true, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources.
#'
#' @examples
#'
#' @export
delete_provisioned_product_plan <- function (PlanId, AcceptLanguage = NULL, 
    IgnoreErrors = NULL) 
{
    op <- Operation(name = "DeleteProvisionedProductPlan", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_provisioned_product_plan_input(PlanId = PlanId, 
        AcceptLanguage = AcceptLanguage, IgnoreErrors = IgnoreErrors)
    output <- delete_provisioned_product_plan_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified provisioning artifact (also known as a version) for the specified product
#'
#' Deletes the specified provisioning artifact (also known as a version) for the specified product.
#' 
#' You cannot delete a provisioning artifact associated with a product that was shared with you. You cannot delete the last provisioning artifact for a product, because a product must have at least one provisioning artifact.
#'
#' @param ProductId The product identifier.
#' @param ProvisioningArtifactId The identifier of the provisioning artifact.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
delete_provisioning_artifact <- function (ProductId, ProvisioningArtifactId, 
    AcceptLanguage = NULL) 
{
    op <- Operation(name = "DeleteProvisioningArtifact", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_provisioning_artifact_input(ProductId = ProductId, 
        ProvisioningArtifactId = ProvisioningArtifactId, AcceptLanguage = AcceptLanguage)
    output <- delete_provisioning_artifact_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a self-service action
#'
#' Deletes a self-service action.
#'
#' @param Id The self-service action identifier. For example, `act-fs7abcd89wxyz`.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
delete_service_action <- function (Id, AcceptLanguage = NULL) 
{
    op <- Operation(name = "DeleteServiceAction", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_service_action_input(Id = Id, AcceptLanguage = AcceptLanguage)
    output <- delete_service_action_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified TagOption
#'
#' Deletes the specified TagOption.
#' 
#' You cannot delete a TagOption if it is associated with a product or portfolio.
#'
#' @param Id The TagOption identifier.
#'
#' @examples
#'
#' @export
delete_tag_option <- function (Id) 
{
    op <- Operation(name = "DeleteTagOption", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_tag_option_input(Id = Id)
    output <- delete_tag_option_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the specified constraint
#'
#' Gets information about the specified constraint.
#'
#' @param Id The identifier of the constraint.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
describe_constraint <- function (Id, AcceptLanguage = NULL) 
{
    op <- Operation(name = "DescribeConstraint", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_constraint_input(Id = Id, AcceptLanguage = AcceptLanguage)
    output <- describe_constraint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the status of the specified copy product operation
#'
#' Gets the status of the specified copy product operation.
#'
#' @param CopyProductToken The token for the copy product operation. This token is returned by CopyProduct.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
describe_copy_product_status <- function (CopyProductToken, AcceptLanguage = NULL) 
{
    op <- Operation(name = "DescribeCopyProductStatus", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_copy_product_status_input(CopyProductToken = CopyProductToken, 
        AcceptLanguage = AcceptLanguage)
    output <- describe_copy_product_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the specified portfolio
#'
#' Gets information about the specified portfolio.
#'
#' @param Id The portfolio identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
describe_portfolio <- function (Id, AcceptLanguage = NULL) 
{
    op <- Operation(name = "DescribePortfolio", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_portfolio_input(Id = Id, AcceptLanguage = AcceptLanguage)
    output <- describe_portfolio_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the specified product
#'
#' Gets information about the specified product.
#'
#' @param Id The product identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
describe_product <- function (Id, AcceptLanguage = NULL) 
{
    op <- Operation(name = "DescribeProduct", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_product_input(Id = Id, AcceptLanguage = AcceptLanguage)
    output <- describe_product_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the specified product
#'
#' Gets information about the specified product. This operation is run with administrator access.
#'
#' @param Id The product identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
describe_product_as_admin <- function (Id, AcceptLanguage = NULL) 
{
    op <- Operation(name = "DescribeProductAsAdmin", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_product_as_admin_input(Id = Id, AcceptLanguage = AcceptLanguage)
    output <- describe_product_as_admin_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the specified product
#'
#' Gets information about the specified product.
#'
#' @param Id The product view identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
describe_product_view <- function (Id, AcceptLanguage = NULL) 
{
    op <- Operation(name = "DescribeProductView", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_product_view_input(Id = Id, AcceptLanguage = AcceptLanguage)
    output <- describe_product_view_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the specified provisioned product
#'
#' Gets information about the specified provisioned product.
#'
#' @param Id The provisioned product identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
describe_provisioned_product <- function (Id, AcceptLanguage = NULL) 
{
    op <- Operation(name = "DescribeProvisionedProduct", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_provisioned_product_input(Id = Id, AcceptLanguage = AcceptLanguage)
    output <- describe_provisioned_product_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the resource changes for the specified plan
#'
#' Gets information about the resource changes for the specified plan.
#'
#' @param PlanId The plan identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param PageSize The maximum number of items to return with this call.
#' @param PageToken The page token for the next set of results. To retrieve the first set of results, use null.
#'
#' @examples
#'
#' @export
describe_provisioned_product_plan <- function (PlanId, AcceptLanguage = NULL, 
    PageSize = NULL, PageToken = NULL) 
{
    op <- Operation(name = "DescribeProvisionedProductPlan", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_provisioned_product_plan_input(PlanId = PlanId, 
        AcceptLanguage = AcceptLanguage, PageSize = PageSize, 
        PageToken = PageToken)
    output <- describe_provisioned_product_plan_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the specified provisioning artifact (also known as a version) for the specified product
#'
#' Gets information about the specified provisioning artifact (also known as a version) for the specified product.
#'
#' @param ProvisioningArtifactId The identifier of the provisioning artifact.
#' @param ProductId The product identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param Verbose Indicates whether a verbose level of detail is enabled.
#'
#' @examples
#'
#' @export
describe_provisioning_artifact <- function (ProvisioningArtifactId, 
    ProductId, AcceptLanguage = NULL, Verbose = NULL) 
{
    op <- Operation(name = "DescribeProvisioningArtifact", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_provisioning_artifact_input(ProvisioningArtifactId = ProvisioningArtifactId, 
        ProductId = ProductId, AcceptLanguage = AcceptLanguage, 
        Verbose = Verbose)
    output <- describe_provisioning_artifact_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the configuration required to provision the specified product using the specified provisioning artifact
#'
#' Gets information about the configuration required to provision the specified product using the specified provisioning artifact.
#' 
#' If the output contains a TagOption key with an empty list of values, there is a TagOption conflict for that key. The end user cannot take action to fix the conflict, and launch is not blocked. In subsequent calls to ProvisionProduct, do not include conflicted TagOption keys as tags, or this causes the error \"Parameter validation failed: Missing required parameter in Tags&#91;*N*&#93;:*Value*\". Tag the provisioned product with the value `sc-tagoption-conflict-portfolioId-productId`.
#'
#' @param ProductId The product identifier.
#' @param ProvisioningArtifactId The identifier of the provisioning artifact.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param PathId The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use ListLaunchPaths.
#'
#' @examples
#'
#' @export
describe_provisioning_parameters <- function (ProductId, ProvisioningArtifactId, 
    AcceptLanguage = NULL, PathId = NULL) 
{
    op <- Operation(name = "DescribeProvisioningParameters", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_provisioning_parameters_input(ProductId = ProductId, 
        ProvisioningArtifactId = ProvisioningArtifactId, AcceptLanguage = AcceptLanguage, 
        PathId = PathId)
    output <- describe_provisioning_parameters_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the specified request operation
#'
#' Gets information about the specified request operation.
#' 
#' Use this operation after calling a request operation (for example, ProvisionProduct, TerminateProvisionedProduct, or UpdateProvisionedProduct).
#'
#' @param Id The record identifier of the provisioned product. This identifier is returned by the request operation.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param PageToken The page token for the next set of results. To retrieve the first set of results, use null.
#' @param PageSize The maximum number of items to return with this call.
#'
#' @examples
#'
#' @export
describe_record <- function (Id, AcceptLanguage = NULL, PageToken = NULL, 
    PageSize = NULL) 
{
    op <- Operation(name = "DescribeRecord", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_record_input(Id = Id, AcceptLanguage = AcceptLanguage, 
        PageToken = PageToken, PageSize = PageSize)
    output <- describe_record_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes a self-service action
#'
#' Describes a self-service action.
#'
#' @param Id The self-service action identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
describe_service_action <- function (Id, AcceptLanguage = NULL) 
{
    op <- Operation(name = "DescribeServiceAction", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_service_action_input(Id = Id, AcceptLanguage = AcceptLanguage)
    output <- describe_service_action_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the specified TagOption
#'
#' Gets information about the specified TagOption.
#'
#' @param Id The TagOption identifier.
#'
#' @examples
#'
#' @export
describe_tag_option <- function (Id) 
{
    op <- Operation(name = "DescribeTagOption", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_tag_option_input(Id = Id)
    output <- describe_tag_option_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates a previously associated principal ARN from a specified portfolio
#'
#' Disassociates a previously associated principal ARN from a specified portfolio.
#'
#' @param PortfolioId The portfolio identifier.
#' @param PrincipalARN The ARN of the principal (IAM user, role, or group).
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
disassociate_principal_from_portfolio <- function (PortfolioId, 
    PrincipalARN, AcceptLanguage = NULL) 
{
    op <- Operation(name = "DisassociatePrincipalFromPortfolio", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- disassociate_principal_from_portfolio_input(PortfolioId = PortfolioId, 
        PrincipalARN = PrincipalARN, AcceptLanguage = AcceptLanguage)
    output <- disassociate_principal_from_portfolio_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates the specified product from the specified portfolio
#'
#' Disassociates the specified product from the specified portfolio.
#'
#' @param ProductId The product identifier.
#' @param PortfolioId The portfolio identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
disassociate_product_from_portfolio <- function (ProductId, PortfolioId, 
    AcceptLanguage = NULL) 
{
    op <- Operation(name = "DisassociateProductFromPortfolio", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- disassociate_product_from_portfolio_input(ProductId = ProductId, 
        PortfolioId = PortfolioId, AcceptLanguage = AcceptLanguage)
    output <- disassociate_product_from_portfolio_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates the specified self-service action association from the specified provisioning artifact
#'
#' Disassociates the specified self-service action association from the specified provisioning artifact.
#'
#' @param ProductId The product identifier. For example, `prod-abcdzk7xy33qa`.
#' @param ProvisioningArtifactId The identifier of the provisioning artifact. For example, `pa-4abcdjnxjj6ne`.
#' @param ServiceActionId The self-service action identifier. For example, `act-fs7abcd89wxyz`.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
disassociate_service_action_from_provisioning_artifact <- function (ProductId, 
    ProvisioningArtifactId, ServiceActionId, AcceptLanguage = NULL) 
{
    op <- Operation(name = "DisassociateServiceActionFromProvisioningArtifact", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- disassociate_service_action_from_provisioning_artifact_input(ProductId = ProductId, 
        ProvisioningArtifactId = ProvisioningArtifactId, ServiceActionId = ServiceActionId, 
        AcceptLanguage = AcceptLanguage)
    output <- disassociate_service_action_from_provisioning_artifact_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates the specified TagOption from the specified resource
#'
#' Disassociates the specified TagOption from the specified resource.
#'
#' @param ResourceId The resource identifier.
#' @param TagOptionId The TagOption identifier.
#'
#' @examples
#'
#' @export
disassociate_tag_option_from_resource <- function (ResourceId, 
    TagOptionId) 
{
    op <- Operation(name = "DisassociateTagOptionFromResource", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- disassociate_tag_option_from_resource_input(ResourceId = ResourceId, 
        TagOptionId = TagOptionId)
    output <- disassociate_tag_option_from_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provisions or modifies a product based on the resource changes for the specified plan
#'
#' Provisions or modifies a product based on the resource changes for the specified plan.
#'
#' @param PlanId The plan identifier.
#' @param IdempotencyToken A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
execute_provisioned_product_plan <- function (PlanId, IdempotencyToken, 
    AcceptLanguage = NULL) 
{
    op <- Operation(name = "ExecuteProvisionedProductPlan", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- execute_provisioned_product_plan_input(PlanId = PlanId, 
        IdempotencyToken = IdempotencyToken, AcceptLanguage = AcceptLanguage)
    output <- execute_provisioned_product_plan_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Executes a self-service action against a provisioned product
#'
#' Executes a self-service action against a provisioned product.
#'
#' @param ProvisionedProductId The identifier of the provisioned product.
#' @param ServiceActionId The self-service action identifier. For example, `act-fs7abcd89wxyz`.
#' @param ExecuteToken An idempotency token that uniquely identifies the execute request.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
execute_provisioned_product_service_action <- function (ProvisionedProductId, 
    ServiceActionId, ExecuteToken, AcceptLanguage = NULL) 
{
    op <- Operation(name = "ExecuteProvisionedProductServiceAction", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- execute_provisioned_product_service_action_input(ProvisionedProductId = ProvisionedProductId, 
        ServiceActionId = ServiceActionId, ExecuteToken = ExecuteToken, 
        AcceptLanguage = AcceptLanguage)
    output <- execute_provisioned_product_service_action_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all portfolios for which sharing was accepted by this account
#'
#' Lists all portfolios for which sharing was accepted by this account.
#'
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param PageToken The page token for the next set of results. To retrieve the first set of results, use null.
#' @param PageSize The maximum number of items to return with this call.
#' @param PortfolioShareType The type of shared portfolios to list. The default is to list imported portfolios.
#' 
#' -   `AWS_SERVICECATALOG` - List default portfolios
#' 
#' -   `IMPORTED` - List imported portfolios
#'
#' @examples
#'
#' @export
list_accepted_portfolio_shares <- function (AcceptLanguage = NULL, 
    PageToken = NULL, PageSize = NULL, PortfolioShareType = NULL) 
{
    op <- Operation(name = "ListAcceptedPortfolioShares", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_accepted_portfolio_shares_input(AcceptLanguage = AcceptLanguage, 
        PageToken = PageToken, PageSize = PageSize, PortfolioShareType = PortfolioShareType)
    output <- list_accepted_portfolio_shares_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the constraints for the specified portfolio and product
#'
#' Lists the constraints for the specified portfolio and product.
#'
#' @param PortfolioId The portfolio identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param ProductId The product identifier.
#' @param PageSize The maximum number of items to return with this call.
#' @param PageToken The page token for the next set of results. To retrieve the first set of results, use null.
#'
#' @examples
#'
#' @export
list_constraints_for_portfolio <- function (PortfolioId, AcceptLanguage = NULL, 
    ProductId = NULL, PageSize = NULL, PageToken = NULL) 
{
    op <- Operation(name = "ListConstraintsForPortfolio", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_constraints_for_portfolio_input(PortfolioId = PortfolioId, 
        AcceptLanguage = AcceptLanguage, ProductId = ProductId, 
        PageSize = PageSize, PageToken = PageToken)
    output <- list_constraints_for_portfolio_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the paths to the specified product
#'
#' Lists the paths to the specified product. A path is how the user has access to a specified product, and is necessary when provisioning a product. A path also determines the constraints put on the product.
#'
#' @param ProductId The product identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param PageSize The maximum number of items to return with this call.
#' @param PageToken The page token for the next set of results. To retrieve the first set of results, use null.
#'
#' @examples
#'
#' @export
list_launch_paths <- function (ProductId, AcceptLanguage = NULL, 
    PageSize = NULL, PageToken = NULL) 
{
    op <- Operation(name = "ListLaunchPaths", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_launch_paths_input(ProductId = ProductId, AcceptLanguage = AcceptLanguage, 
        PageSize = PageSize, PageToken = PageToken)
    output <- list_launch_paths_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the account IDs that have access to the specified portfolio
#'
#' Lists the account IDs that have access to the specified portfolio.
#'
#' @param PortfolioId The portfolio identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
list_portfolio_access <- function (PortfolioId, AcceptLanguage = NULL) 
{
    op <- Operation(name = "ListPortfolioAccess", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_portfolio_access_input(PortfolioId = PortfolioId, 
        AcceptLanguage = AcceptLanguage)
    output <- list_portfolio_access_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all portfolios in the catalog
#'
#' Lists all portfolios in the catalog.
#'
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param PageToken The page token for the next set of results. To retrieve the first set of results, use null.
#' @param PageSize The maximum number of items to return with this call.
#'
#' @examples
#'
#' @export
list_portfolios <- function (AcceptLanguage = NULL, PageToken = NULL, 
    PageSize = NULL) 
{
    op <- Operation(name = "ListPortfolios", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_portfolios_input(AcceptLanguage = AcceptLanguage, 
        PageToken = PageToken, PageSize = PageSize)
    output <- list_portfolios_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all portfolios that the specified product is associated with
#'
#' Lists all portfolios that the specified product is associated with.
#'
#' @param ProductId The product identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param PageToken The page token for the next set of results. To retrieve the first set of results, use null.
#' @param PageSize The maximum number of items to return with this call.
#'
#' @examples
#'
#' @export
list_portfolios_for_product <- function (ProductId, AcceptLanguage = NULL, 
    PageToken = NULL, PageSize = NULL) 
{
    op <- Operation(name = "ListPortfoliosForProduct", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_portfolios_for_product_input(ProductId = ProductId, 
        AcceptLanguage = AcceptLanguage, PageToken = PageToken, 
        PageSize = PageSize)
    output <- list_portfolios_for_product_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all principal ARNs associated with the specified portfolio
#'
#' Lists all principal ARNs associated with the specified portfolio.
#'
#' @param PortfolioId The portfolio identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param PageSize The maximum number of items to return with this call.
#' @param PageToken The page token for the next set of results. To retrieve the first set of results, use null.
#'
#' @examples
#'
#' @export
list_principals_for_portfolio <- function (PortfolioId, AcceptLanguage = NULL, 
    PageSize = NULL, PageToken = NULL) 
{
    op <- Operation(name = "ListPrincipalsForPortfolio", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_principals_for_portfolio_input(PortfolioId = PortfolioId, 
        AcceptLanguage = AcceptLanguage, PageSize = PageSize, 
        PageToken = PageToken)
    output <- list_principals_for_portfolio_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the plans for the specified provisioned product or all plans to which the user has access
#'
#' Lists the plans for the specified provisioned product or all plans to which the user has access.
#'
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param ProvisionProductId The product identifier.
#' @param PageSize The maximum number of items to return with this call.
#' @param PageToken The page token for the next set of results. To retrieve the first set of results, use null.
#' @param AccessLevelFilter The access level to use to obtain results. The default is `User`.
#'
#' @examples
#'
#' @export
list_provisioned_product_plans <- function (AcceptLanguage = NULL, 
    ProvisionProductId = NULL, PageSize = NULL, PageToken = NULL, 
    AccessLevelFilter = NULL) 
{
    op <- Operation(name = "ListProvisionedProductPlans", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_provisioned_product_plans_input(AcceptLanguage = AcceptLanguage, 
        ProvisionProductId = ProvisionProductId, PageSize = PageSize, 
        PageToken = PageToken, AccessLevelFilter = AccessLevelFilter)
    output <- list_provisioned_product_plans_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all provisioning artifacts (also known as versions) for the specified product
#'
#' Lists all provisioning artifacts (also known as versions) for the specified product.
#'
#' @param ProductId The product identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
list_provisioning_artifacts <- function (ProductId, AcceptLanguage = NULL) 
{
    op <- Operation(name = "ListProvisioningArtifacts", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_provisioning_artifacts_input(ProductId = ProductId, 
        AcceptLanguage = AcceptLanguage)
    output <- list_provisioning_artifacts_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all provisioning artifacts (also known as versions) for the specified self-service action
#'
#' Lists all provisioning artifacts (also known as versions) for the specified self-service action.
#'
#' @param ServiceActionId The self-service action identifier. For example, `act-fs7abcd89wxyz`.
#' @param PageSize The maximum number of items to return with this call.
#' @param PageToken The page token for the next set of results. To retrieve the first set of results, use null.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
list_provisioning_artifacts_for_service_action <- function (ServiceActionId, 
    PageSize = NULL, PageToken = NULL, AcceptLanguage = NULL) 
{
    op <- Operation(name = "ListProvisioningArtifactsForServiceAction", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- list_provisioning_artifacts_for_service_action_input(ServiceActionId = ServiceActionId, 
        PageSize = PageSize, PageToken = PageToken, AcceptLanguage = AcceptLanguage)
    output <- list_provisioning_artifacts_for_service_action_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the specified requests or all performed requests
#'
#' Lists the specified requests or all performed requests.
#'
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param AccessLevelFilter The access level to use to obtain results. The default is `User`.
#' @param SearchFilter The search filter to scope the results.
#' @param PageSize The maximum number of items to return with this call.
#' @param PageToken The page token for the next set of results. To retrieve the first set of results, use null.
#'
#' @examples
#'
#' @export
list_record_history <- function (AcceptLanguage = NULL, AccessLevelFilter = NULL, 
    SearchFilter = NULL, PageSize = NULL, PageToken = NULL) 
{
    op <- Operation(name = "ListRecordHistory", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_record_history_input(AcceptLanguage = AcceptLanguage, 
        AccessLevelFilter = AccessLevelFilter, SearchFilter = SearchFilter, 
        PageSize = PageSize, PageToken = PageToken)
    output <- list_record_history_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the resources associated with the specified TagOption
#'
#' Lists the resources associated with the specified TagOption.
#'
#' @param TagOptionId The TagOption identifier.
#' @param ResourceType The resource type.
#' 
#' -   `Portfolio`
#' 
#' -   `Product`
#' @param PageSize The maximum number of items to return with this call.
#' @param PageToken The page token for the next set of results. To retrieve the first set of results, use null.
#'
#' @examples
#'
#' @export
list_resources_for_tag_option <- function (TagOptionId, ResourceType = NULL, 
    PageSize = NULL, PageToken = NULL) 
{
    op <- Operation(name = "ListResourcesForTagOption", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_resources_for_tag_option_input(TagOptionId = TagOptionId, 
        ResourceType = ResourceType, PageSize = PageSize, PageToken = PageToken)
    output <- list_resources_for_tag_option_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all self-service actions
#'
#' Lists all self-service actions.
#'
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param PageSize The maximum number of items to return with this call.
#' @param PageToken The page token for the next set of results. To retrieve the first set of results, use null.
#'
#' @examples
#'
#' @export
list_service_actions <- function (AcceptLanguage = NULL, PageSize = NULL, 
    PageToken = NULL) 
{
    op <- Operation(name = "ListServiceActions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_service_actions_input(AcceptLanguage = AcceptLanguage, 
        PageSize = PageSize, PageToken = PageToken)
    output <- list_service_actions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a paginated list of self-service actions associated with the specified Product ID and Provisioning Artifact ID
#'
#' Returns a paginated list of self-service actions associated with the specified Product ID and Provisioning Artifact ID.
#'
#' @param ProductId The product identifier. For example, `prod-abcdzk7xy33qa`.
#' @param ProvisioningArtifactId The identifier of the provisioning artifact. For example, `pa-4abcdjnxjj6ne`.
#' @param PageSize The maximum number of items to return with this call.
#' @param PageToken The page token for the next set of results. To retrieve the first set of results, use null.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
list_service_actions_for_provisioning_artifact <- function (ProductId, 
    ProvisioningArtifactId, PageSize = NULL, PageToken = NULL, 
    AcceptLanguage = NULL) 
{
    op <- Operation(name = "ListServiceActionsForProvisioningArtifact", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- list_service_actions_for_provisioning_artifact_input(ProductId = ProductId, 
        ProvisioningArtifactId = ProvisioningArtifactId, PageSize = PageSize, 
        PageToken = PageToken, AcceptLanguage = AcceptLanguage)
    output <- list_service_actions_for_provisioning_artifact_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the specified TagOptions or all TagOptions
#'
#' Lists the specified TagOptions or all TagOptions.
#'
#' @param Filters The search filters. If no search filters are specified, the output includes all TagOptions.
#' @param PageSize The maximum number of items to return with this call.
#' @param PageToken The page token for the next set of results. To retrieve the first set of results, use null.
#'
#' @examples
#'
#' @export
list_tag_options <- function (Filters = NULL, PageSize = NULL, 
    PageToken = NULL) 
{
    op <- Operation(name = "ListTagOptions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_tag_options_input(Filters = Filters, PageSize = PageSize, 
        PageToken = PageToken)
    output <- list_tag_options_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provisions the specified product
#'
#' Provisions the specified product.
#' 
#' A provisioned product is a resourced instance of a product. For example, provisioning a product based on a CloudFormation template launches a CloudFormation stack and its underlying resources. You can check the status of this request using DescribeRecord.
#' 
#' If the request contains a tag key with an empty list of values, there is a tag conflict for that key. Do not include conflicted keys as tags, or this causes the error \"Parameter validation failed: Missing required parameter in Tags&#91;*N*&#93;:*Value*\".
#'
#' @param ProductId The product identifier.
#' @param ProvisioningArtifactId The identifier of the provisioning artifact.
#' @param ProvisionedProductName A user-friendly name for the provisioned product. This value must be unique for the AWS account and cannot be updated after the product is provisioned.
#' @param ProvisionToken An idempotency token that uniquely identifies the provisioning request.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param PathId The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use ListLaunchPaths.
#' @param ProvisioningParameters Parameters specified by the administrator that are required for provisioning the product.
#' @param Tags One or more tags.
#' @param NotificationArns Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.
#'
#' @examples
#'
#' @export
provision_product <- function (ProductId, ProvisioningArtifactId, 
    ProvisionedProductName, ProvisionToken, AcceptLanguage = NULL, 
    PathId = NULL, ProvisioningParameters = NULL, Tags = NULL, 
    NotificationArns = NULL) 
{
    op <- Operation(name = "ProvisionProduct", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- provision_product_input(ProductId = ProductId, ProvisioningArtifactId = ProvisioningArtifactId, 
        ProvisionedProductName = ProvisionedProductName, ProvisionToken = ProvisionToken, 
        AcceptLanguage = AcceptLanguage, PathId = PathId, ProvisioningParameters = ProvisioningParameters, 
        Tags = Tags, NotificationArns = NotificationArns)
    output <- provision_product_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Rejects an offer to share the specified portfolio
#'
#' Rejects an offer to share the specified portfolio.
#'
#' @param PortfolioId The portfolio identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
reject_portfolio_share <- function (PortfolioId, AcceptLanguage = NULL) 
{
    op <- Operation(name = "RejectPortfolioShare", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reject_portfolio_share_input(PortfolioId = PortfolioId, 
        AcceptLanguage = AcceptLanguage)
    output <- reject_portfolio_share_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the provisioned products that are available (not terminated)
#'
#' Lists the provisioned products that are available (not terminated).
#' 
#' To use additional filtering, see SearchProvisionedProducts.
#'
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param AccessLevelFilter The access level to use to obtain results. The default is `User`.
#' @param PageSize The maximum number of items to return with this call.
#' @param PageToken The page token for the next set of results. To retrieve the first set of results, use null.
#'
#' @examples
#'
#' @export
scan_provisioned_products <- function (AcceptLanguage = NULL, 
    AccessLevelFilter = NULL, PageSize = NULL, PageToken = NULL) 
{
    op <- Operation(name = "ScanProvisionedProducts", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- scan_provisioned_products_input(AcceptLanguage = AcceptLanguage, 
        AccessLevelFilter = AccessLevelFilter, PageSize = PageSize, 
        PageToken = PageToken)
    output <- scan_provisioned_products_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the products to which the caller has access
#'
#' Gets information about the products to which the caller has access.
#'
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param Filters The search filters. If no search filters are specified, the output includes all products to which the caller has access.
#' @param PageSize The maximum number of items to return with this call.
#' @param SortBy The sort field. If no value is specified, the results are not sorted.
#' @param SortOrder The sort order. If no value is specified, the results are not sorted.
#' @param PageToken The page token for the next set of results. To retrieve the first set of results, use null.
#'
#' @examples
#'
#' @export
search_products <- function (AcceptLanguage = NULL, Filters = NULL, 
    PageSize = NULL, SortBy = NULL, SortOrder = NULL, PageToken = NULL) 
{
    op <- Operation(name = "SearchProducts", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- search_products_input(AcceptLanguage = AcceptLanguage, 
        Filters = Filters, PageSize = PageSize, SortBy = SortBy, 
        SortOrder = SortOrder, PageToken = PageToken)
    output <- search_products_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the products for the specified portfolio or all products
#'
#' Gets information about the products for the specified portfolio or all products.
#'
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param PortfolioId The portfolio identifier.
#' @param Filters The search filters. If no search filters are specified, the output includes all products to which the administrator has access.
#' @param SortBy The sort field. If no value is specified, the results are not sorted.
#' @param SortOrder The sort order. If no value is specified, the results are not sorted.
#' @param PageToken The page token for the next set of results. To retrieve the first set of results, use null.
#' @param PageSize The maximum number of items to return with this call.
#' @param ProductSource Access level of the source of the product.
#'
#' @examples
#'
#' @export
search_products_as_admin <- function (AcceptLanguage = NULL, 
    PortfolioId = NULL, Filters = NULL, SortBy = NULL, SortOrder = NULL, 
    PageToken = NULL, PageSize = NULL, ProductSource = NULL) 
{
    op <- Operation(name = "SearchProductsAsAdmin", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- search_products_as_admin_input(AcceptLanguage = AcceptLanguage, 
        PortfolioId = PortfolioId, Filters = Filters, SortBy = SortBy, 
        SortOrder = SortOrder, PageToken = PageToken, PageSize = PageSize, 
        ProductSource = ProductSource)
    output <- search_products_as_admin_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the provisioned products that meet the specified criteria
#'
#' Gets information about the provisioned products that meet the specified criteria.
#'
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param AccessLevelFilter The access level to use to obtain results. The default is `User`.
#' @param Filters The search filters.
#' 
#' When the key is `SearchQuery`, the searchable fields are `arn`, `createdTime`, `id`, `lastRecordId`, `idempotencyToken`, `name`, `physicalId`, `productId`, `provisioningArtifact`, `type`, `status`, `tags`, `userArn`, and `userArnSession`.
#' 
#' Example: `"SearchQuery":["status:AVAILABLE"]`
#' @param SortBy The sort field. If no value is specified, the results are not sorted. The valid values are `arn`, `id`, `name`, and `lastRecordId`.
#' @param SortOrder The sort order. If no value is specified, the results are not sorted.
#' @param PageSize The maximum number of items to return with this call.
#' @param PageToken The page token for the next set of results. To retrieve the first set of results, use null.
#'
#' @examples
#'
#' @export
search_provisioned_products <- function (AcceptLanguage = NULL, 
    AccessLevelFilter = NULL, Filters = NULL, SortBy = NULL, 
    SortOrder = NULL, PageSize = NULL, PageToken = NULL) 
{
    op <- Operation(name = "SearchProvisionedProducts", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- search_provisioned_products_input(AcceptLanguage = AcceptLanguage, 
        AccessLevelFilter = AccessLevelFilter, Filters = Filters, 
        SortBy = SortBy, SortOrder = SortOrder, PageSize = PageSize, 
        PageToken = PageToken)
    output <- search_provisioned_products_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Terminates the specified provisioned product
#'
#' Terminates the specified provisioned product.
#' 
#' This operation does not delete any records associated with the provisioned product.
#' 
#' You can check the status of this request using DescribeRecord.
#'
#' @param TerminateToken An idempotency token that uniquely identifies the termination request. This token is only valid during the termination process. After the provisioned product is terminated, subsequent requests to terminate the same provisioned product always return **ResourceNotFound**.
#' @param ProvisionedProductName The name of the provisioned product. You cannot specify both `ProvisionedProductName` and `ProvisionedProductId`.
#' @param ProvisionedProductId The identifier of the provisioned product. You cannot specify both `ProvisionedProductName` and `ProvisionedProductId`.
#' @param IgnoreErrors If set to true, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
terminate_provisioned_product <- function (TerminateToken, ProvisionedProductName = NULL, 
    ProvisionedProductId = NULL, IgnoreErrors = NULL, AcceptLanguage = NULL) 
{
    op <- Operation(name = "TerminateProvisionedProduct", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- terminate_provisioned_product_input(TerminateToken = TerminateToken, 
        ProvisionedProductName = ProvisionedProductName, ProvisionedProductId = ProvisionedProductId, 
        IgnoreErrors = IgnoreErrors, AcceptLanguage = AcceptLanguage)
    output <- terminate_provisioned_product_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the specified constraint
#'
#' Updates the specified constraint.
#'
#' @param Id The identifier of the constraint.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param Description The updated description of the constraint.
#'
#' @examples
#'
#' @export
update_constraint <- function (Id, AcceptLanguage = NULL, Description = NULL) 
{
    op <- Operation(name = "UpdateConstraint", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_constraint_input(Id = Id, AcceptLanguage = AcceptLanguage, 
        Description = Description)
    output <- update_constraint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the specified portfolio
#'
#' Updates the specified portfolio.
#' 
#' You cannot update a product that was shared with you.
#'
#' @param Id The portfolio identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param DisplayName The name to use for display purposes.
#' @param Description The updated description of the portfolio.
#' @param ProviderName The updated name of the portfolio provider.
#' @param AddTags The tags to add.
#' @param RemoveTags The tags to remove.
#'
#' @examples
#'
#' @export
update_portfolio <- function (Id, AcceptLanguage = NULL, DisplayName = NULL, 
    Description = NULL, ProviderName = NULL, AddTags = NULL, 
    RemoveTags = NULL) 
{
    op <- Operation(name = "UpdatePortfolio", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_portfolio_input(Id = Id, AcceptLanguage = AcceptLanguage, 
        DisplayName = DisplayName, Description = Description, 
        ProviderName = ProviderName, AddTags = AddTags, RemoveTags = RemoveTags)
    output <- update_portfolio_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the specified product
#'
#' Updates the specified product.
#'
#' @param Id The product identifier.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param Name The updated product name.
#' @param Owner The updated owner of the product.
#' @param Description The updated description of the product.
#' @param Distributor The updated distributor of the product.
#' @param SupportDescription The updated support description for the product.
#' @param SupportEmail The updated support email for the product.
#' @param SupportUrl The updated support URL for the product.
#' @param AddTags The tags to add to the product.
#' @param RemoveTags The tags to remove from the product.
#'
#' @examples
#'
#' @export
update_product <- function (Id, AcceptLanguage = NULL, Name = NULL, 
    Owner = NULL, Description = NULL, Distributor = NULL, SupportDescription = NULL, 
    SupportEmail = NULL, SupportUrl = NULL, AddTags = NULL, RemoveTags = NULL) 
{
    op <- Operation(name = "UpdateProduct", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_product_input(Id = Id, AcceptLanguage = AcceptLanguage, 
        Name = Name, Owner = Owner, Description = Description, 
        Distributor = Distributor, SupportDescription = SupportDescription, 
        SupportEmail = SupportEmail, SupportUrl = SupportUrl, 
        AddTags = AddTags, RemoveTags = RemoveTags)
    output <- update_product_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Requests updates to the configuration of the specified provisioned product
#'
#' Requests updates to the configuration of the specified provisioned product.
#' 
#' If there are tags associated with the object, they cannot be updated or added. Depending on the specific updates requested, this operation can update with no interruption, with some interruption, or replace the provisioned product entirely.
#' 
#' You can check the status of this request using DescribeRecord.
#'
#' @param UpdateToken The idempotency token that uniquely identifies the provisioning update request.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param ProvisionedProductName The updated name of the provisioned product. You cannot specify both `ProvisionedProductName` and `ProvisionedProductId`.
#' @param ProvisionedProductId The identifier of the provisioned product. You cannot specify both `ProvisionedProductName` and `ProvisionedProductId`.
#' @param ProductId The identifier of the provisioned product.
#' @param ProvisioningArtifactId The identifier of the provisioning artifact.
#' @param PathId The new path identifier. This value is optional if the product has a default path, and required if the product has more than one path.
#' @param ProvisioningParameters The new parameters.
#'
#' @examples
#'
#' @export
update_provisioned_product <- function (UpdateToken, AcceptLanguage = NULL, 
    ProvisionedProductName = NULL, ProvisionedProductId = NULL, 
    ProductId = NULL, ProvisioningArtifactId = NULL, PathId = NULL, 
    ProvisioningParameters = NULL) 
{
    op <- Operation(name = "UpdateProvisionedProduct", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_provisioned_product_input(UpdateToken = UpdateToken, 
        AcceptLanguage = AcceptLanguage, ProvisionedProductName = ProvisionedProductName, 
        ProvisionedProductId = ProvisionedProductId, ProductId = ProductId, 
        ProvisioningArtifactId = ProvisioningArtifactId, PathId = PathId, 
        ProvisioningParameters = ProvisioningParameters)
    output <- update_provisioned_product_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the specified provisioning artifact (also known as a version) for the specified product
#'
#' Updates the specified provisioning artifact (also known as a version) for the specified product.
#' 
#' You cannot update a provisioning artifact for a product that was shared with you.
#'
#' @param ProductId The product identifier.
#' @param ProvisioningArtifactId The identifier of the provisioning artifact.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#' @param Name The updated name of the provisioning artifact.
#' @param Description The updated description of the provisioning artifact.
#' @param Active Indicates whether the product version is active.
#'
#' @examples
#'
#' @export
update_provisioning_artifact <- function (ProductId, ProvisioningArtifactId, 
    AcceptLanguage = NULL, Name = NULL, Description = NULL, Active = NULL) 
{
    op <- Operation(name = "UpdateProvisioningArtifact", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_provisioning_artifact_input(ProductId = ProductId, 
        ProvisioningArtifactId = ProvisioningArtifactId, AcceptLanguage = AcceptLanguage, 
        Name = Name, Description = Description, Active = Active)
    output <- update_provisioning_artifact_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a self-service action
#'
#' Updates a self-service action.
#'
#' @param Id The self-service action identifier.
#' @param Name The self-service action name.
#' @param Definition A map that defines the self-service action.
#' @param Description The self-service action description.
#' @param AcceptLanguage The language code.
#' 
#' -   `en` - English (default)
#' 
#' -   `jp` - Japanese
#' 
#' -   `zh` - Chinese
#'
#' @examples
#'
#' @export
update_service_action <- function (Id, Name = NULL, Definition = NULL, 
    Description = NULL, AcceptLanguage = NULL) 
{
    op <- Operation(name = "UpdateServiceAction", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_service_action_input(Id = Id, Name = Name, 
        Definition = Definition, Description = Description, AcceptLanguage = AcceptLanguage)
    output <- update_service_action_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the specified TagOption
#'
#' Updates the specified TagOption.
#'
#' @param Id The TagOption identifier.
#' @param Value The updated value.
#' @param Active The updated active state.
#'
#' @examples
#'
#' @export
update_tag_option <- function (Id, Value = NULL, Active = NULL) 
{
    op <- Operation(name = "UpdateTagOption", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_tag_option_input(Id = Id, Value = Value, 
        Active = Active)
    output <- update_tag_option_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
