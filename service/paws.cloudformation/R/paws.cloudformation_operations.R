#' Cancels an update on the specified stack
#'
#' Cancels an update on the specified stack. If the call completes successfully, the stack rolls back the update and reverts to the previous stack configuration.
#' 
#' You can cancel only stacks that are in the UPDATE\_IN\_PROGRESS state.
#'
#' @param StackName The name or the unique stack ID that is associated with the stack.
#' @param ClientRequestToken A unique identifier for this `CancelUpdateStack` request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you\'re not attempting to cancel an update on a stack with the same name. You might retry `CancelUpdateStack` requests to ensure that AWS CloudFormation successfully received them.
#'
#' @examples
#'
#' @export
cancel_update_stack <- function (StackName, ClientRequestToken = NULL) 
{
    op <- Operation(name = "CancelUpdateStack", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- cancel_update_stack_input(StackName = StackName, 
        ClientRequestToken = ClientRequestToken)
    output <- cancel_update_stack_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' For a specified stack that is in the `UPDATE_ROLLBACK_FAILED` state, continues rolling it back to the `UPDATE_ROLLBACK_COMPLETE` state
#'
#' For a specified stack that is in the `UPDATE_ROLLBACK_FAILED` state, continues rolling it back to the `UPDATE_ROLLBACK_COMPLETE` state. Depending on the cause of the failure, you can manually [fix the error](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed) and continue the rollback. By continuing the rollback, you can return your stack to a working state (the `UPDATE_ROLLBACK_COMPLETE` state), and then try to update the stack again.
#' 
#' A stack goes into the `UPDATE_ROLLBACK_FAILED` state when AWS CloudFormation cannot roll back all changes after a failed stack update. For example, you might have a stack that is rolling back to an old database instance that was deleted outside of AWS CloudFormation. Because AWS CloudFormation doesn\'t know the database was deleted, it assumes that the database instance still exists and attempts to roll back to it, causing the update rollback to fail.
#'
#' @param StackName The name or the unique ID of the stack that you want to continue rolling back.
#' 
#' Don\'t specify the name of a nested stack (a stack that was created by using the `AWS::CloudFormation::Stack` resource). Instead, use this operation on the parent stack (the stack that contains the `AWS::CloudFormation::Stack` resource).
#' @param RoleARN The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to roll back the stack. AWS CloudFormation uses the role\'s credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don\'t have permission to pass it. Ensure that the role grants least privilege.
#' 
#' If you don\'t specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.
#' @param ResourcesToSkip A list of the logical IDs of the resources that AWS CloudFormation skips during the continue update rollback operation. You can specify only resources that are in the `UPDATE_FAILED` state because a rollback failed. You can\'t specify resources that are in the `UPDATE_FAILED` state for other reasons, for example, because an update was cancelled. To check why a resource update failed, use the DescribeStackResources action, and view the resource status reason.
#' 
#' Specify this property to skip rolling back resources that AWS CloudFormation can\'t successfully roll back. We recommend that you [troubleshoot](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed) resources before skipping them. AWS CloudFormation sets the status of the specified resources to `UPDATE_COMPLETE` and continues to roll back the stack. After the rollback is complete, the state of the skipped resources will be inconsistent with the state of the resources in the stack template. Before performing another stack update, you must update the stack or resources to be consistent with each other. If you don\'t, subsequent stack updates might fail, and the stack will become unrecoverable.
#' 
#' Specify the minimum number of resources required to successfully roll back your stack. For example, a failed resource update might cause dependent resources to fail. In this case, it might not be necessary to skip the dependent resources.
#' 
#' To skip resources that are part of nested stacks, use the following format: `NestedStackName.ResourceLogicalID`. If you want to specify the logical ID of a stack resource (`Type: AWS::CloudFormation::Stack`) in the `ResourcesToSkip` list, then its corresponding embedded stack must be in one of the following states: `DELETE_IN_PROGRESS`, `DELETE_COMPLETE`, or `DELETE_FAILED`.
#' 
#' Don\'t confuse a child stack\'s name with its corresponding logical ID defined in the parent stack. For an example of a continue update rollback operation with nested stacks, see [Using ResourcesToSkip to recover a nested stacks hierarchy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html#nested-stacks).
#' @param ClientRequestToken A unique identifier for this `ContinueUpdateRollback` request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you\'re not attempting to continue the rollback to a stack with the same name. You might retry `ContinueUpdateRollback` requests to ensure that AWS CloudFormation successfully received them.
#'
#' @examples
#'
#' @export
continue_update_rollback <- function (StackName, RoleARN = NULL, 
    ResourcesToSkip = NULL, ClientRequestToken = NULL) 
{
    op <- Operation(name = "ContinueUpdateRollback", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- continue_update_rollback_input(StackName = StackName, 
        RoleARN = RoleARN, ResourcesToSkip = ResourcesToSkip, 
        ClientRequestToken = ClientRequestToken)
    output <- continue_update_rollback_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a list of changes that will be applied to a stack so that you can review the changes before executing them
#'
#' Creates a list of changes that will be applied to a stack so that you can review the changes before executing them. You can create a change set for a stack that doesn\'t exist or an existing stack. If you create a change set for a stack that doesn\'t exist, the change set shows all of the resources that AWS CloudFormation will create. If you create a change set for an existing stack, AWS CloudFormation compares the stack\'s information with the information that you submit in the change set and lists the differences. Use change sets to understand which resources AWS CloudFormation will create or change, and how it will change resources in an existing stack, before you create or update a stack.
#' 
#' To create a change set for a stack that doesn\'t exist, for the `ChangeSetType` parameter, specify `CREATE`. To create a change set for an existing stack, specify `UPDATE` for the `ChangeSetType` parameter. After the `CreateChangeSet` call successfully completes, AWS CloudFormation starts creating the change set. To check the status of the change set or to review it, use the DescribeChangeSet action.
#' 
#' When you are satisfied with the changes the change set will make, execute the change set by using the ExecuteChangeSet action. AWS CloudFormation doesn\'t make changes until you execute the change set.
#'
#' @param StackName The name or the unique ID of the stack for which you are creating a change set. AWS CloudFormation generates the change set by comparing this stack\'s information with the information that you submit, such as a modified template or different parameter input values.
#' @param ChangeSetName The name of the change set. The name must be unique among all change sets that are associated with the specified stack.
#' 
#' A change set name can contain only alphanumeric, case sensitive characters and hyphens. It must start with an alphabetic character and cannot exceed 128 characters.
#' @param TemplateBody A structure that contains the body of the revised template, with a minimum length of 1 byte and a maximum length of 51,200 bytes. AWS CloudFormation generates the change set by comparing this template with the template of the stack that you specified.
#' 
#' Conditional: You must specify only `TemplateBody` or `TemplateURL`.
#' @param TemplateURL The location of the file that contains the revised template. The URL must point to a template (max size: 460,800 bytes) that is located in an S3 bucket. AWS CloudFormation generates the change set by comparing this template with the stack that you specified.
#' 
#' Conditional: You must specify only `TemplateBody` or `TemplateURL`.
#' @param UsePreviousTemplate Whether to reuse the template that is associated with the stack to create the change set.
#' @param Parameters A list of `Parameter` structures that specify input parameters for the change set. For more information, see the [Parameter](http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html) data type.
#' @param Capabilities A list of values that you must specify before AWS CloudFormation can update certain stacks. Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter.
#' 
#' The only valid values are `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`. The following resources require you to specify this parameter: [AWS::IAM::AccessKey](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html), [AWS::IAM::Group](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html), [AWS::IAM::InstanceProfile](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html), [AWS::IAM::Policy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html), [AWS::IAM::Role](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html), [AWS::IAM::User](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html), and [AWS::IAM::UserToGroupAddition](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html). If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.
#' 
#' If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify `CAPABILITY_NAMED_IAM`. If you don\'t specify this parameter, this action returns an `InsufficientCapabilities` error.
#' 
#' For more information, see [Acknowledging IAM Resources in AWS CloudFormation Templates](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities).
#' @param ResourceTypes The template resource types that you have permissions to work with if you execute this change set, such as `AWS::EC2::Instance`, `AWS::EC2::*`, or `Custom::MyCustomInstance`.
#' 
#' If the list of resource types doesn\'t include a resource type that you\'re updating, the stack update fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for condition keys in IAM policies for AWS CloudFormation. For more information, see [Controlling Access with AWS Identity and Access Management](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html) in the AWS CloudFormation User Guide.
#' @param RoleARN The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes when executing the change set. AWS CloudFormation uses the role\'s credentials to make calls on your behalf. AWS CloudFormation uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don\'t have permission to pass it. Ensure that the role grants least privilege.
#' 
#' If you don\'t specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.
#' @param RollbackConfiguration The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
#' @param NotificationARNs The Amazon Resource Names (ARNs) of Amazon Simple Notification Service (Amazon SNS) topics that AWS CloudFormation associates with the stack. To remove all associated notification topics, specify an empty list.
#' @param Tags Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to resources in the stack. You can specify a maximum of 50 tags.
#' @param ClientToken A unique identifier for this `CreateChangeSet` request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you\'re not attempting to create another change set with the same name. You might retry `CreateChangeSet` requests to ensure that AWS CloudFormation successfully received them.
#' @param Description A description to help you identify this change set.
#' @param ChangeSetType The type of change set operation. To create a change set for a new stack, specify `CREATE`. To create a change set for an existing stack, specify `UPDATE`.
#' 
#' If you create a change set for a new stack, AWS Cloudformation creates a stack with a unique stack ID, but no template or resources. The stack will be in the [`REVIEW_IN_PROGRESS`](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-describing-stacks.html#d0e11995) state until you execute the change set.
#' 
#' By default, AWS CloudFormation specifies `UPDATE`. You can\'t use the `UPDATE` type to create a change set for a new stack or the `CREATE` type to create a change set for an existing stack.
#'
#' @examples
#'
#' @export
create_change_set <- function (StackName, ChangeSetName, TemplateBody = NULL, 
    TemplateURL = NULL, UsePreviousTemplate = NULL, Parameters = NULL, 
    Capabilities = NULL, ResourceTypes = NULL, RoleARN = NULL, 
    RollbackConfiguration = NULL, NotificationARNs = NULL, Tags = NULL, 
    ClientToken = NULL, Description = NULL, ChangeSetType = NULL) 
{
    op <- Operation(name = "CreateChangeSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_change_set_input(StackName = StackName, ChangeSetName = ChangeSetName, 
        TemplateBody = TemplateBody, TemplateURL = TemplateURL, 
        UsePreviousTemplate = UsePreviousTemplate, Parameters = Parameters, 
        Capabilities = Capabilities, ResourceTypes = ResourceTypes, 
        RoleARN = RoleARN, RollbackConfiguration = RollbackConfiguration, 
        NotificationARNs = NotificationARNs, Tags = Tags, ClientToken = ClientToken, 
        Description = Description, ChangeSetType = ChangeSetType)
    output <- create_change_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a stack as specified in the template
#'
#' Creates a stack as specified in the template. After the call completes successfully, the stack creation starts. You can check the status of the stack via the DescribeStacks API.
#'
#' @param StackName The name that is associated with the stack. The name must be unique in the region in which you are creating the stack.
#' 
#' A stack name can contain only alphanumeric characters (case sensitive) and hyphens. It must start with an alphabetic character and cannot be longer than 128 characters.
#' @param TemplateBody Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, go to [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.
#' 
#' Conditional: You must specify either the `TemplateBody` or the `TemplateURL` parameter, but not both.
#' @param TemplateURL Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information, go to the [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.
#' 
#' Conditional: You must specify either the `TemplateBody` or the `TemplateURL` parameter, but not both.
#' @param Parameters A list of `Parameter` structures that specify input parameters for the stack. For more information, see the [Parameter](http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html) data type.
#' @param DisableRollback Set to `true` to disable rollback of the stack if stack creation failed. You can specify either `DisableRollback` or `OnFailure`, but not both.
#' 
#' Default: `false`
#' @param RollbackConfiguration The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
#' @param TimeoutInMinutes The amount of time that can pass before the stack status becomes CREATE\_FAILED; if `DisableRollback` is not set or is set to `false`, the stack will be rolled back.
#' @param NotificationARNs The Simple Notification Service (SNS) topic ARNs to publish stack related events. You can find your SNS topic ARNs using the SNS console or your Command Line Interface (CLI).
#' @param Capabilities A list of values that you must specify before AWS CloudFormation can create certain stacks. Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter.
#' 
#' The only valid values are `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`. The following resources require you to specify this parameter: [AWS::IAM::AccessKey](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html), [AWS::IAM::Group](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html), [AWS::IAM::InstanceProfile](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html), [AWS::IAM::Policy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html), [AWS::IAM::Role](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html), [AWS::IAM::User](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html), and [AWS::IAM::UserToGroupAddition](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html). If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.
#' 
#' If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify `CAPABILITY_NAMED_IAM`. If you don\'t specify this parameter, this action returns an `InsufficientCapabilities` error.
#' 
#' For more information, see [Acknowledging IAM Resources in AWS CloudFormation Templates](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities).
#' @param ResourceTypes The template resource types that you have permissions to work with for this create stack action, such as `AWS::EC2::Instance`, `AWS::EC2::*`, or `Custom::MyCustomInstance`. Use the following syntax to describe template resource types: `AWS::*` (for all AWS resource), `Custom::*` (for all custom resources), `Custom::logical_ID logical_ID ` (for a specific custom resource), `AWS::service_name::*service_name::*` (for all resources of a particular AWS service), and `AWS::service_name::resource_logical_ID service_name::resource_logical_ID ` (for a specific AWS resource).
#' 
#' If the list of resource types doesn\'t include a resource that you\'re creating, the stack creation fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for AWS CloudFormation-specific condition keys in IAM policies. For more information, see [Controlling Access with AWS Identity and Access Management](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html).
#' @param RoleARN The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to create the stack. AWS CloudFormation uses the role\'s credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don\'t have permission to pass it. Ensure that the role grants least privilege.
#' 
#' If you don\'t specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.
#' @param OnFailure Determines what action will be taken if stack creation fails. This must be one of: DO\_NOTHING, ROLLBACK, or DELETE. You can specify either `OnFailure` or `DisableRollback`, but not both.
#' 
#' Default: `ROLLBACK`
#' @param StackPolicyBody Structure containing the stack policy body. For more information, go to [Prevent Updates to Stack Resources](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html) in the *AWS CloudFormation User Guide*. You can specify either the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
#' @param StackPolicyURL Location of a file containing the stack policy. The URL must point to a policy (maximum size: 16 KB) located in an S3 bucket in the same region as the stack. You can specify either the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
#' @param Tags Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to the resources created in the stack. A maximum number of 50 tags can be specified.
#' @param ClientRequestToken A unique identifier for this `CreateStack` request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you\'re not attempting to create a stack with the same name. You might retry `CreateStack` requests to ensure that AWS CloudFormation successfully received them.
#' 
#' All events triggered by a given stack operation are assigned the same client request token, which you can use to track operations. For example, if you execute a `CreateStack` operation with the token `token1`, then all the `StackEvents` generated by that operation will have `ClientRequestToken` set as `token1`.
#' 
#' In the console, stack operations display the client request token on the Events tab. Stack operations that are initiated from the console use the token format *Console-StackOperation-ID*, which helps you easily identify the stack operation . For example, if you create a stack using the console, each stack event would be assigned the same token in the following format: `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
#' @param EnableTerminationProtection Whether to enable termination protection on the specified stack. If a user attempts to delete a stack with termination protection enabled, the operation fails and the stack remains unchanged. For more information, see [Protecting a Stack From Being Deleted](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html) in the *AWS CloudFormation User Guide*. Termination protection is disabled on stacks by default.
#' 
#' For [nested stacks](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html), termination protection is set on the root stack and cannot be changed directly on the nested stack.
#'
#' @examples
#'
#' @export
create_stack <- function (StackName, TemplateBody = NULL, TemplateURL = NULL, 
    Parameters = NULL, DisableRollback = NULL, RollbackConfiguration = NULL, 
    TimeoutInMinutes = NULL, NotificationARNs = NULL, Capabilities = NULL, 
    ResourceTypes = NULL, RoleARN = NULL, OnFailure = NULL, StackPolicyBody = NULL, 
    StackPolicyURL = NULL, Tags = NULL, ClientRequestToken = NULL, 
    EnableTerminationProtection = NULL) 
{
    op <- Operation(name = "CreateStack", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_stack_input(StackName = StackName, TemplateBody = TemplateBody, 
        TemplateURL = TemplateURL, Parameters = Parameters, DisableRollback = DisableRollback, 
        RollbackConfiguration = RollbackConfiguration, TimeoutInMinutes = TimeoutInMinutes, 
        NotificationARNs = NotificationARNs, Capabilities = Capabilities, 
        ResourceTypes = ResourceTypes, RoleARN = RoleARN, OnFailure = OnFailure, 
        StackPolicyBody = StackPolicyBody, StackPolicyURL = StackPolicyURL, 
        Tags = Tags, ClientRequestToken = ClientRequestToken, 
        EnableTerminationProtection = EnableTerminationProtection)
    output <- create_stack_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates stack instances for the specified accounts, within the specified regions
#'
#' Creates stack instances for the specified accounts, within the specified regions. A stack instance refers to a stack in a specific account and region. `Accounts` and `Regions` are required parameters---you must specify at least one account and one region.
#'
#' @param StackSetName The name or unique ID of the stack set that you want to create stack instances from.
#' @param Accounts The names of one or more AWS accounts that you want to create stack instances in the specified region(s) for.
#' @param Regions The names of one or more regions where you want to create stack instances using the specified AWS account(s).
#' @param ParameterOverrides A list of stack set parameters whose values you want to override in the selected stack instances.
#' 
#' Any overridden parameter values will be applied to all stack instances in the specified accounts and regions. When specifying parameters and their values, be aware of how AWS CloudFormation sets parameter values during stack instance operations:
#' 
#' -   To override the current value for a parameter, include the parameter and specify its value.
#' 
#' -   To leave a parameter set to its present value, you can do one of the following:
#' 
#'     -   Do not include the parameter in the list.
#' 
#'     -   Include the parameter and specify `UsePreviousValue` as `true`. (You cannot specify both a value and set `UsePreviousValue` to `true`.)
#' 
#' -   To set all overridden parameter back to the values specified in the stack set, specify a parameter list but do not include any parameters.
#' 
#' -   To leave all parameters set to their present values, do not specify this property at all.
#' 
#' During stack set updates, any parameter values overridden for a stack instance are not updated, but retain their overridden value.
#' 
#' You can only override the parameter *values* that are specified in the stack set; to add or delete a parameter itself, use [UpdateStackSet](http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html) to update the stack set template.
#' @param OperationPreferences Preferences for how AWS CloudFormation performs this stack set operation.
#' @param OperationId The unique identifier for this stack set operation.
#' 
#' The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You might retry stack set operation requests to ensure that AWS CloudFormation successfully received them.
#' 
#' If you don\'t specify an operation ID, the SDK generates one automatically.
#' 
#' Repeating this stack set operation with a new operation ID retries all stack instances whose status is `OUTDATED`.
#'
#' @examples
#'
#' @export
create_stack_instances <- function (StackSetName, Accounts, Regions, 
    ParameterOverrides = NULL, OperationPreferences = NULL, OperationId = NULL) 
{
    op <- Operation(name = "CreateStackInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_stack_instances_input(StackSetName = StackSetName, 
        Accounts = Accounts, Regions = Regions, ParameterOverrides = ParameterOverrides, 
        OperationPreferences = OperationPreferences, OperationId = OperationId)
    output <- create_stack_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a stack set
#'
#' Creates a stack set.
#'
#' @param StackSetName The name to associate with the stack set. The name must be unique in the region where you create your stack set.
#' 
#' A stack name can contain only alphanumeric characters (case-sensitive) and hyphens. It must start with an alphabetic character and can\'t be longer than 128 characters.
#' @param Description A description of the stack set. You can use the description to identify the stack set\'s purpose or other important information.
#' @param TemplateBody The structure that contains the template body, with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, see [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.
#' 
#' Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but not both.
#' @param TemplateURL The location of the file that contains the template body. The URL must point to a template (maximum size: 460,800 bytes) that\'s located in an Amazon S3 bucket. For more information, see [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.
#' 
#' Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but not both.
#' @param Parameters The input parameters for the stack set template.
#' @param Capabilities A list of values that you must specify before AWS CloudFormation can create certain stack sets. Some stack set templates might include resources that can affect permissions in your AWS account---for example, by creating new AWS Identity and Access Management (IAM) users. For those stack sets, you must explicitly acknowledge their capabilities by specifying this parameter.
#' 
#' The only valid values are CAPABILITY\_IAM and CAPABILITY\_NAMED\_IAM. The following resources require you to specify this parameter:
#' 
#' -   AWS::IAM::AccessKey
#' 
#' -   AWS::IAM::Group
#' 
#' -   AWS::IAM::InstanceProfile
#' 
#' -   AWS::IAM::Policy
#' 
#' -   AWS::IAM::Role
#' 
#' -   AWS::IAM::User
#' 
#' -   AWS::IAM::UserToGroupAddition
#' 
#' If your stack template contains these resources, we recommend that you review all permissions that are associated with them and edit their permissions if necessary.
#' 
#' If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify CAPABILITY\_NAMED\_IAM. If you don\'t specify this parameter, this action returns an `InsufficientCapabilities` error.
#' 
#' For more information, see [Acknowledging IAM Resources in AWS CloudFormation Templates.](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities)
#' @param Tags The key-value pairs to associate with this stack set and the stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the stacks. A maximum number of 50 tags can be specified.
#' 
#' If you specify tags as part of a `CreateStackSet` action, AWS CloudFormation checks to see if you have the required IAM permission to tag resources. If you don\'t, the entire `CreateStackSet` action fails with an `access denied` error, and the stack set is not created.
#' @param AdministrationRoleARN The Amazon Resource Number (ARN) of the IAM role to use to create this stack set.
#' 
#' Specify an IAM role only if you are using customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account. For more information, see [Prerequisites: Granting Permissions for Stack Set Operations](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html) in the *AWS CloudFormation User Guide*.
#' @param ExecutionRoleName The name of the IAM execution role to use to create the stack set. If you do not specify an execution role, AWS CloudFormation uses the `AWSCloudFormationStackSetExecutionRole` role for the stack set operation.
#' 
#' Specify an IAM role only if you are using customized execution roles to control which stack resources users and groups can include in their stack sets.
#' @param ClientRequestToken A unique identifier for this `CreateStackSet` request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you\'re not attempting to create another stack set with the same name. You might retry `CreateStackSet` requests to ensure that AWS CloudFormation successfully received them.
#' 
#' If you don\'t specify an operation ID, the SDK generates one automatically.
#'
#' @examples
#'
#' @export
create_stack_set <- function (StackSetName, Description = NULL, 
    TemplateBody = NULL, TemplateURL = NULL, Parameters = NULL, 
    Capabilities = NULL, Tags = NULL, AdministrationRoleARN = NULL, 
    ExecutionRoleName = NULL, ClientRequestToken = NULL) 
{
    op <- Operation(name = "CreateStackSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_stack_set_input(StackSetName = StackSetName, 
        Description = Description, TemplateBody = TemplateBody, 
        TemplateURL = TemplateURL, Parameters = Parameters, Capabilities = Capabilities, 
        Tags = Tags, AdministrationRoleARN = AdministrationRoleARN, 
        ExecutionRoleName = ExecutionRoleName, ClientRequestToken = ClientRequestToken)
    output <- create_stack_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified change set
#'
#' Deletes the specified change set. Deleting change sets ensures that no one executes the wrong change set.
#' 
#' If the call successfully completes, AWS CloudFormation successfully deleted the change set.
#'
#' @param ChangeSetName The name or Amazon Resource Name (ARN) of the change set that you want to delete.
#' @param StackName If you specified the name of a change set to delete, specify the stack name or ID (ARN) that is associated with it.
#'
#' @examples
#'
#' @export
delete_change_set <- function (ChangeSetName, StackName = NULL) 
{
    op <- Operation(name = "DeleteChangeSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_change_set_input(ChangeSetName = ChangeSetName, 
        StackName = StackName)
    output <- delete_change_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specified stack
#'
#' Deletes a specified stack. Once the call completes successfully, stack deletion starts. Deleted stacks do not show up in the DescribeStacks API if the deletion has been completed successfully.
#'
#' @param StackName The name or the unique stack ID that is associated with the stack.
#' @param RetainResources For stacks in the `DELETE_FAILED` state, a list of resource logical IDs that are associated with the resources you want to retain. During deletion, AWS CloudFormation deletes the stack but does not delete the retained resources.
#' 
#' Retaining resources is useful when you cannot delete a resource, such as a non-empty S3 bucket, but you want to delete the stack.
#' @param RoleARN The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to delete the stack. AWS CloudFormation uses the role\'s credentials to make calls on your behalf.
#' 
#' If you don\'t specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.
#' @param ClientRequestToken A unique identifier for this `DeleteStack` request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you\'re not attempting to delete a stack with the same name. You might retry `DeleteStack` requests to ensure that AWS CloudFormation successfully received them.
#' 
#' All events triggered by a given stack operation are assigned the same client request token, which you can use to track operations. For example, if you execute a `CreateStack` operation with the token `token1`, then all the `StackEvents` generated by that operation will have `ClientRequestToken` set as `token1`.
#' 
#' In the console, stack operations display the client request token on the Events tab. Stack operations that are initiated from the console use the token format *Console-StackOperation-ID*, which helps you easily identify the stack operation . For example, if you create a stack using the console, each stack event would be assigned the same token in the following format: `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
#'
#' @examples
#'
#' @export
delete_stack <- function (StackName, RetainResources = NULL, 
    RoleARN = NULL, ClientRequestToken = NULL) 
{
    op <- Operation(name = "DeleteStack", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_stack_input(StackName = StackName, RetainResources = RetainResources, 
        RoleARN = RoleARN, ClientRequestToken = ClientRequestToken)
    output <- delete_stack_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes stack instances for the specified accounts, in the specified regions
#'
#' Deletes stack instances for the specified accounts, in the specified regions.
#'
#' @param StackSetName The name or unique ID of the stack set that you want to delete stack instances for.
#' @param Accounts The names of the AWS accounts that you want to delete stack instances for.
#' @param Regions The regions where you want to delete stack set instances.
#' @param RetainStacks Removes the stack instances from the specified stack set, but doesn\'t delete the stacks. You can\'t reassociate a retained stack or add an existing, saved stack to a new stack set.
#' 
#' For more information, see [Stack set operation options](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options).
#' @param OperationPreferences Preferences for how AWS CloudFormation performs this stack set operation.
#' @param OperationId The unique identifier for this stack set operation.
#' 
#' If you don\'t specify an operation ID, the SDK generates one automatically.
#' 
#' The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You can retry stack set operation requests to ensure that AWS CloudFormation successfully received them.
#' 
#' Repeating this stack set operation with a new operation ID retries all stack instances whose status is `OUTDATED`.
#'
#' @examples
#'
#' @export
delete_stack_instances <- function (StackSetName, Accounts, Regions, 
    RetainStacks, OperationPreferences = NULL, OperationId = NULL) 
{
    op <- Operation(name = "DeleteStackInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_stack_instances_input(StackSetName = StackSetName, 
        Accounts = Accounts, Regions = Regions, RetainStacks = RetainStacks, 
        OperationPreferences = OperationPreferences, OperationId = OperationId)
    output <- delete_stack_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a stack set
#'
#' Deletes a stack set. Before you can delete a stack set, all of its member stack instances must be deleted. For more information about how to do this, see DeleteStackInstances.
#'
#' @param StackSetName The name or unique ID of the stack set that you\'re deleting. You can obtain this value by running ListStackSets.
#'
#' @examples
#'
#' @export
delete_stack_set <- function (StackSetName) 
{
    op <- Operation(name = "DeleteStackSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_stack_set_input(StackSetName = StackSetName)
    output <- delete_stack_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves your account\'s AWS CloudFormation limits, such as the maximum number of stacks that you can create in your account
#'
#' Retrieves your account\'s AWS CloudFormation limits, such as the maximum number of stacks that you can create in your account.
#'
#' @param NextToken A string that identifies the next page of limits that you want to retrieve.
#'
#' @examples
#'
#' @export
describe_account_limits <- function (NextToken = NULL) 
{
    op <- Operation(name = "DescribeAccountLimits", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_account_limits_input(NextToken = NextToken)
    output <- describe_account_limits_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the inputs for the change set and a list of changes that AWS CloudFormation will make if you execute the change set
#'
#' Returns the inputs for the change set and a list of changes that AWS CloudFormation will make if you execute the change set. For more information, see [Updating Stacks Using Change Sets](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html) in the AWS CloudFormation User Guide.
#'
#' @param ChangeSetName The name or Amazon Resource Name (ARN) of the change set that you want to describe.
#' @param StackName If you specified the name of a change set, specify the stack name or ID (ARN) of the change set you want to describe.
#' @param NextToken A string (provided by the DescribeChangeSet response output) that identifies the next page of information that you want to retrieve.
#'
#' @examples
#'
#' @export
describe_change_set <- function (ChangeSetName, StackName = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "DescribeChangeSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_change_set_input(ChangeSetName = ChangeSetName, 
        StackName = StackName, NextToken = NextToken)
    output <- describe_change_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns all stack related events for a specified stack in reverse chronological order
#'
#' Returns all stack related events for a specified stack in reverse chronological order. For more information about a stack\'s event history, go to [Stacks](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/concept-stack.html) in the AWS CloudFormation User Guide.
#' 
#' You can list events for stacks that have failed to create or have been deleted by specifying the unique stack identifier (stack ID).
#'
#' @param StackName The name or the unique stack ID that is associated with the stack, which are not always interchangeable:
#' 
#' -   Running stacks: You can specify either the stack\'s name or its unique stack ID.
#' 
#' -   Deleted stacks: You must specify the unique stack ID.
#' 
#' Default: There is no default value.
#' @param NextToken A string that identifies the next page of events that you want to retrieve.
#'
#' @examples
#'
#' @export
describe_stack_events <- function (StackName = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeStackEvents", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_stack_events_input(StackName = StackName, 
        NextToken = NextToken)
    output <- describe_stack_events_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the stack instance that\'s associated with the specified stack set, AWS account, and region
#'
#' Returns the stack instance that\'s associated with the specified stack set, AWS account, and region.
#' 
#' For a list of stack instances that are associated with a specific stack set, use ListStackInstances.
#'
#' @param StackSetName The name or the unique stack ID of the stack set that you want to get stack instance information for.
#' @param StackInstanceAccount The ID of an AWS account that\'s associated with this stack instance.
#' @param StackInstanceRegion The name of a region that\'s associated with this stack instance.
#'
#' @examples
#'
#' @export
describe_stack_instance <- function (StackSetName, StackInstanceAccount, 
    StackInstanceRegion) 
{
    op <- Operation(name = "DescribeStackInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_stack_instance_input(StackSetName = StackSetName, 
        StackInstanceAccount = StackInstanceAccount, StackInstanceRegion = StackInstanceRegion)
    output <- describe_stack_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a description of the specified resource in the specified stack
#'
#' Returns a description of the specified resource in the specified stack.
#' 
#' For deleted stacks, DescribeStackResource returns resource information for up to 90 days after the stack has been deleted.
#'
#' @param StackName The name or the unique stack ID that is associated with the stack, which are not always interchangeable:
#' 
#' -   Running stacks: You can specify either the stack\'s name or its unique stack ID.
#' 
#' -   Deleted stacks: You must specify the unique stack ID.
#' 
#' Default: There is no default value.
#' @param LogicalResourceId The logical name of the resource as specified in the template.
#' 
#' Default: There is no default value.
#'
#' @examples
#'
#' @export
describe_stack_resource <- function (StackName, LogicalResourceId) 
{
    op <- Operation(name = "DescribeStackResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_stack_resource_input(StackName = StackName, 
        LogicalResourceId = LogicalResourceId)
    output <- describe_stack_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns AWS resource descriptions for running and deleted stacks
#'
#' Returns AWS resource descriptions for running and deleted stacks. If `StackName` is specified, all the associated resources that are part of the stack are returned. If `PhysicalResourceId` is specified, the associated resources of the stack that the resource belongs to are returned.
#' 
#' Only the first 100 resources will be returned. If your stack has more resources than this, you should use `ListStackResources` instead.
#' 
#' For deleted stacks, `DescribeStackResources` returns resource information for up to 90 days after the stack has been deleted.
#' 
#' You must specify either `StackName` or `PhysicalResourceId`, but not both. In addition, you can specify `LogicalResourceId` to filter the returned result. For more information about resources, the `LogicalResourceId` and `PhysicalResourceId`, go to the [AWS CloudFormation User Guide](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/).
#' 
#' A `ValidationError` is returned if you specify both `StackName` and `PhysicalResourceId` in the same request.
#'
#' @param StackName The name or the unique stack ID that is associated with the stack, which are not always interchangeable:
#' 
#' -   Running stacks: You can specify either the stack\'s name or its unique stack ID.
#' 
#' -   Deleted stacks: You must specify the unique stack ID.
#' 
#' Default: There is no default value.
#' 
#' Required: Conditional. If you do not specify `StackName`, you must specify `PhysicalResourceId`.
#' @param LogicalResourceId The logical name of the resource as specified in the template.
#' 
#' Default: There is no default value.
#' @param PhysicalResourceId The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation.
#' 
#' For example, for an Amazon Elastic Compute Cloud (EC2) instance, `PhysicalResourceId` corresponds to the `InstanceId`. You can pass the EC2 `InstanceId` to `DescribeStackResources` to find which stack the instance belongs to and what other resources are part of the stack.
#' 
#' Required: Conditional. If you do not specify `PhysicalResourceId`, you must specify `StackName`.
#' 
#' Default: There is no default value.
#'
#' @examples
#'
#' @export
describe_stack_resources <- function (StackName = NULL, LogicalResourceId = NULL, 
    PhysicalResourceId = NULL) 
{
    op <- Operation(name = "DescribeStackResources", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_stack_resources_input(StackName = StackName, 
        LogicalResourceId = LogicalResourceId, PhysicalResourceId = PhysicalResourceId)
    output <- describe_stack_resources_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the description of the specified stack set
#'
#' Returns the description of the specified stack set.
#'
#' @param StackSetName The name or unique ID of the stack set whose description you want.
#'
#' @examples
#'
#' @export
describe_stack_set <- function (StackSetName) 
{
    op <- Operation(name = "DescribeStackSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_stack_set_input(StackSetName = StackSetName)
    output <- describe_stack_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the description of the specified stack set operation
#'
#' Returns the description of the specified stack set operation.
#'
#' @param StackSetName The name or the unique stack ID of the stack set for the stack operation.
#' @param OperationId The unique ID of the stack set operation.
#'
#' @examples
#'
#' @export
describe_stack_set_operation <- function (StackSetName, OperationId) 
{
    op <- Operation(name = "DescribeStackSetOperation", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_stack_set_operation_input(StackSetName = StackSetName, 
        OperationId = OperationId)
    output <- describe_stack_set_operation_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the description for the specified stack; if no stack name was specified, then it returns the description for all the stacks created
#'
#' Returns the description for the specified stack; if no stack name was specified, then it returns the description for all the stacks created.
#' 
#' If the stack does not exist, an `AmazonCloudFormationException` is returned.
#'
#' @param StackName The name or the unique stack ID that is associated with the stack, which are not always interchangeable:
#' 
#' -   Running stacks: You can specify either the stack\'s name or its unique stack ID.
#' 
#' -   Deleted stacks: You must specify the unique stack ID.
#' 
#' Default: There is no default value.
#' @param NextToken A string that identifies the next page of stacks that you want to retrieve.
#'
#' @examples
#'
#' @export
describe_stacks <- function (StackName = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeStacks", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_stacks_input(StackName = StackName, NextToken = NextToken)
    output <- describe_stacks_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the estimated monthly cost of a template
#'
#' Returns the estimated monthly cost of a template. The return value is an AWS Simple Monthly Calculator URL with a query string that describes the resources required to run the template.
#'
#' @param TemplateBody Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. (For more information, go to [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.)
#' 
#' Conditional: You must pass `TemplateBody` or `TemplateURL`. If both are passed, only `TemplateBody` is used.
#' @param TemplateURL Location of file containing the template body. The URL must point to a template that is located in an Amazon S3 bucket. For more information, go to [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.
#' 
#' Conditional: You must pass `TemplateURL` or `TemplateBody`. If both are passed, only `TemplateBody` is used.
#' @param Parameters A list of `Parameter` structures that specify input parameters.
#'
#' @examples
#'
#' @export
estimate_template_cost <- function (TemplateBody = NULL, TemplateURL = NULL, 
    Parameters = NULL) 
{
    op <- Operation(name = "EstimateTemplateCost", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- estimate_template_cost_input(TemplateBody = TemplateBody, 
        TemplateURL = TemplateURL, Parameters = Parameters)
    output <- estimate_template_cost_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a stack using the input information that was provided when the specified change set was created
#'
#' Updates a stack using the input information that was provided when the specified change set was created. After the call successfully completes, AWS CloudFormation starts updating the stack. Use the DescribeStacks action to view the status of the update.
#' 
#' When you execute a change set, AWS CloudFormation deletes all other change sets associated with the stack because they aren\'t valid for the updated stack.
#' 
#' If a stack policy is associated with the stack, AWS CloudFormation enforces the policy during the update. You can\'t specify a temporary stack policy that overrides the current policy.
#'
#' @param ChangeSetName The name or ARN of the change set that you want use to update the specified stack.
#' @param StackName If you specified the name of a change set, specify the stack name or ID (ARN) that is associated with the change set you want to execute.
#' @param ClientRequestToken A unique identifier for this `ExecuteChangeSet` request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you\'re not attempting to execute a change set to update a stack with the same name. You might retry `ExecuteChangeSet` requests to ensure that AWS CloudFormation successfully received them.
#'
#' @examples
#'
#' @export
execute_change_set <- function (ChangeSetName, StackName = NULL, 
    ClientRequestToken = NULL) 
{
    op <- Operation(name = "ExecuteChangeSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- execute_change_set_input(ChangeSetName = ChangeSetName, 
        StackName = StackName, ClientRequestToken = ClientRequestToken)
    output <- execute_change_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the stack policy for a specified stack
#'
#' Returns the stack policy for a specified stack. If a stack doesn\'t have a policy, a null value is returned.
#'
#' @param StackName The name or unique stack ID that is associated with the stack whose policy you want to get.
#'
#' @examples
#'
#' @export
get_stack_policy <- function (StackName) 
{
    op <- Operation(name = "GetStackPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_stack_policy_input(StackName = StackName)
    output <- get_stack_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the template body for a specified stack
#'
#' Returns the template body for a specified stack. You can get the template for running or deleted stacks.
#' 
#' For deleted stacks, GetTemplate returns the template for up to 90 days after the stack has been deleted.
#' 
#' If the template does not exist, a `ValidationError` is returned.
#'
#' @param StackName The name or the unique stack ID that is associated with the stack, which are not always interchangeable:
#' 
#' -   Running stacks: You can specify either the stack\'s name or its unique stack ID.
#' 
#' -   Deleted stacks: You must specify the unique stack ID.
#' 
#' Default: There is no default value.
#' @param ChangeSetName The name or Amazon Resource Name (ARN) of a change set for which AWS CloudFormation returns the associated template. If you specify a name, you must also specify the `StackName`.
#' @param TemplateStage For templates that include transforms, the stage of the template that AWS CloudFormation returns. To get the user-submitted template, specify `Original`. To get the template after AWS CloudFormation has processed all transforms, specify `Processed`.
#' 
#' If the template doesn\'t include transforms, `Original` and `Processed` return the same template. By default, AWS CloudFormation specifies `Original`.
#'
#' @examples
#'
#' @export
get_template <- function (StackName = NULL, ChangeSetName = NULL, 
    TemplateStage = NULL) 
{
    op <- Operation(name = "GetTemplate", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_template_input(StackName = StackName, ChangeSetName = ChangeSetName, 
        TemplateStage = TemplateStage)
    output <- get_template_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a new or existing template
#'
#' Returns information about a new or existing template. The `GetTemplateSummary` action is useful for viewing parameter information, such as default parameter values and parameter types, before you create or update a stack or stack set.
#' 
#' You can use the `GetTemplateSummary` action when you submit a template, or you can get template information for a stack set, or a running or deleted stack.
#' 
#' For deleted stacks, `GetTemplateSummary` returns the template information for up to 90 days after the stack has been deleted. If the template does not exist, a `ValidationError` is returned.
#'
#' @param TemplateBody Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information about templates, see [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.
#' 
#' Conditional: You must specify only one of the following parameters: `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
#' @param TemplateURL Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information about templates, see [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.
#' 
#' Conditional: You must specify only one of the following parameters: `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
#' @param StackName The name or the stack ID that is associated with the stack, which are not always interchangeable. For running stacks, you can specify either the stack\'s name or its unique stack ID. For deleted stack, you must specify the unique stack ID.
#' 
#' Conditional: You must specify only one of the following parameters: `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
#' @param StackSetName The name or unique ID of the stack set from which the stack was created.
#' 
#' Conditional: You must specify only one of the following parameters: `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
#'
#' @examples
#'
#' @export
get_template_summary <- function (TemplateBody = NULL, TemplateURL = NULL, 
    StackName = NULL, StackSetName = NULL) 
{
    op <- Operation(name = "GetTemplateSummary", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_template_summary_input(TemplateBody = TemplateBody, 
        TemplateURL = TemplateURL, StackName = StackName, StackSetName = StackSetName)
    output <- get_template_summary_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the ID and status of each active change set for a stack
#'
#' Returns the ID and status of each active change set for a stack. For example, AWS CloudFormation lists change sets that are in the `CREATE_IN_PROGRESS` or `CREATE_PENDING` state.
#'
#' @param StackName The name or the Amazon Resource Name (ARN) of the stack for which you want to list change sets.
#' @param NextToken A string (provided by the ListChangeSets response output) that identifies the next page of change sets that you want to retrieve.
#'
#' @examples
#'
#' @export
list_change_sets <- function (StackName, NextToken = NULL) 
{
    op <- Operation(name = "ListChangeSets", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_change_sets_input(StackName = StackName, NextToken = NextToken)
    output <- list_change_sets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all exported output values in the account and region in which you call this action
#'
#' Lists all exported output values in the account and region in which you call this action. Use this action to see the exported output values that you can import into other stacks. To import values, use the [`Fn::ImportValue`](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html) function.
#' 
#' For more information, see [AWS CloudFormation Export Stack Output Values](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html).
#'
#' @param NextToken A string (provided by the ListExports response output) that identifies the next page of exported output values that you asked to retrieve.
#'
#' @examples
#'
#' @export
list_exports <- function (NextToken = NULL) 
{
    op <- Operation(name = "ListExports", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_exports_input(NextToken = NextToken)
    output <- list_exports_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all stacks that are importing an exported output value
#'
#' Lists all stacks that are importing an exported output value. To modify or remove an exported output value, first use this action to see which stacks are using it. To see the exported output values in your account, see ListExports.
#' 
#' For more information about importing an exported output value, see the [`Fn::ImportValue`](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html) function.
#'
#' @param ExportName The name of the exported output value. AWS CloudFormation returns the stack names that are importing this value.
#' @param NextToken A string (provided by the ListImports response output) that identifies the next page of stacks that are importing the specified exported output value.
#'
#' @examples
#'
#' @export
list_imports <- function (ExportName, NextToken = NULL) 
{
    op <- Operation(name = "ListImports", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_imports_input(ExportName = ExportName, NextToken = NextToken)
    output <- list_imports_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns summary information about stack instances that are associated with the specified stack set
#'
#' Returns summary information about stack instances that are associated with the specified stack set. You can filter for stack instances that are associated with a specific AWS account name or region.
#'
#' @param StackSetName The name or unique ID of the stack set that you want to list stack instances for.
#' @param NextToken If the previous request didn\'t return all of the remaining results, the response\'s `NextToken` parameter value is set to a token. To retrieve the next set of results, call `ListStackInstances` again and assign that token to the request object\'s `NextToken` parameter. If there are no remaining results, the previous response object\'s `NextToken` parameter is set to `null`.
#' @param MaxResults The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.
#' @param StackInstanceAccount The name of the AWS account that you want to list stack instances for.
#' @param StackInstanceRegion The name of the region where you want to list stack instances.
#'
#' @examples
#'
#' @export
list_stack_instances <- function (StackSetName, NextToken = NULL, 
    MaxResults = NULL, StackInstanceAccount = NULL, StackInstanceRegion = NULL) 
{
    op <- Operation(name = "ListStackInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_stack_instances_input(StackSetName = StackSetName, 
        NextToken = NextToken, MaxResults = MaxResults, StackInstanceAccount = StackInstanceAccount, 
        StackInstanceRegion = StackInstanceRegion)
    output <- list_stack_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns descriptions of all resources of the specified stack
#'
#' Returns descriptions of all resources of the specified stack.
#' 
#' For deleted stacks, ListStackResources returns resource information for up to 90 days after the stack has been deleted.
#'
#' @param StackName The name or the unique stack ID that is associated with the stack, which are not always interchangeable:
#' 
#' -   Running stacks: You can specify either the stack\'s name or its unique stack ID.
#' 
#' -   Deleted stacks: You must specify the unique stack ID.
#' 
#' Default: There is no default value.
#' @param NextToken A string that identifies the next page of stack resources that you want to retrieve.
#'
#' @examples
#'
#' @export
list_stack_resources <- function (StackName, NextToken = NULL) 
{
    op <- Operation(name = "ListStackResources", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_stack_resources_input(StackName = StackName, 
        NextToken = NextToken)
    output <- list_stack_resources_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns summary information about the results of a stack set operation
#'
#' Returns summary information about the results of a stack set operation.
#'
#' @param StackSetName The name or unique ID of the stack set that you want to get operation results for.
#' @param OperationId The ID of the stack set operation.
#' @param NextToken If the previous request didn\'t return all of the remaining results, the response object\'s `NextToken` parameter value is set to a token. To retrieve the next set of results, call `ListStackSetOperationResults` again and assign that token to the request object\'s `NextToken` parameter. If there are no remaining results, the previous response object\'s `NextToken` parameter is set to `null`.
#' @param MaxResults The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.
#'
#' @examples
#'
#' @export
list_stack_set_operation_results <- function (StackSetName, OperationId, 
    NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "ListStackSetOperationResults", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_stack_set_operation_results_input(StackSetName = StackSetName, 
        OperationId = OperationId, NextToken = NextToken, MaxResults = MaxResults)
    output <- list_stack_set_operation_results_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns summary information about operations performed on a stack set
#'
#' Returns summary information about operations performed on a stack set.
#'
#' @param StackSetName The name or unique ID of the stack set that you want to get operation summaries for.
#' @param NextToken If the previous paginated request didn\'t return all of the remaining results, the response object\'s `NextToken` parameter value is set to a token. To retrieve the next set of results, call `ListStackSetOperations` again and assign that token to the request object\'s `NextToken` parameter. If there are no remaining results, the previous response object\'s `NextToken` parameter is set to `null`.
#' @param MaxResults The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.
#'
#' @examples
#'
#' @export
list_stack_set_operations <- function (StackSetName, NextToken = NULL, 
    MaxResults = NULL) 
{
    op <- Operation(name = "ListStackSetOperations", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_stack_set_operations_input(StackSetName = StackSetName, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- list_stack_set_operations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns summary information about stack sets that are associated with the user
#'
#' Returns summary information about stack sets that are associated with the user.
#'
#' @param NextToken If the previous paginated request didn\'t return all of the remaining results, the response object\'s `NextToken` parameter value is set to a token. To retrieve the next set of results, call `ListStackSets` again and assign that token to the request object\'s `NextToken` parameter. If there are no remaining results, the previous response object\'s `NextToken` parameter is set to `null`.
#' @param MaxResults The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.
#' @param Status The status of the stack sets that you want to get summary information about.
#'
#' @examples
#'
#' @export
list_stack_sets <- function (NextToken = NULL, MaxResults = NULL, 
    Status = NULL) 
{
    op <- Operation(name = "ListStackSets", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_stack_sets_input(NextToken = NextToken, MaxResults = MaxResults, 
        Status = Status)
    output <- list_stack_sets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the summary information for stacks whose status matches the specified StackStatusFilter
#'
#' Returns the summary information for stacks whose status matches the specified StackStatusFilter. Summary information for stacks that have been deleted is kept for 90 days after the stack is deleted. If no StackStatusFilter is specified, summary information for all stacks is returned (including existing stacks and stacks that have been deleted).
#'
#' @param NextToken A string that identifies the next page of stacks that you want to retrieve.
#' @param StackStatusFilter Stack status to use as a filter. Specify one or more stack status codes to list only stacks with the specified status codes. For a complete list of stack status codes, see the `StackStatus` parameter of the Stack data type.
#'
#' @examples
#'
#' @export
list_stacks <- function (NextToken = NULL, StackStatusFilter = NULL) 
{
    op <- Operation(name = "ListStacks", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_stacks_input(NextToken = NextToken, StackStatusFilter = StackStatusFilter)
    output <- list_stacks_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets a stack policy for a specified stack
#'
#' Sets a stack policy for a specified stack.
#'
#' @param StackName The name or unique stack ID that you want to associate a policy with.
#' @param StackPolicyBody Structure containing the stack policy body. For more information, go to [Prevent Updates to Stack Resources](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html) in the AWS CloudFormation User Guide. You can specify either the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
#' @param StackPolicyURL Location of a file containing the stack policy. The URL must point to a policy (maximum size: 16 KB) located in an S3 bucket in the same region as the stack. You can specify either the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
#'
#' @examples
#'
#' @export
set_stack_policy <- function (StackName, StackPolicyBody = NULL, 
    StackPolicyURL = NULL) 
{
    op <- Operation(name = "SetStackPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- set_stack_policy_input(StackName = StackName, StackPolicyBody = StackPolicyBody, 
        StackPolicyURL = StackPolicyURL)
    output <- set_stack_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sends a signal to the specified resource with a success or failure status
#'
#' Sends a signal to the specified resource with a success or failure status. You can use the SignalResource API in conjunction with a creation policy or update policy. AWS CloudFormation doesn\'t proceed with a stack creation or update until resources receive the required number of signals or the timeout period is exceeded. The SignalResource API is useful in cases where you want to send signals from anywhere other than an Amazon EC2 instance.
#'
#' @param StackName The stack name or unique stack ID that includes the resource that you want to signal.
#' @param LogicalResourceId The logical ID of the resource that you want to signal. The logical ID is the name of the resource that given in the template.
#' @param UniqueId A unique ID of the signal. When you signal Amazon EC2 instances or Auto Scaling groups, specify the instance ID that you are signaling as the unique ID. If you send multiple signals to a single resource (such as signaling a wait condition), each signal requires a different unique ID.
#' @param Status The status of the signal, which is either success or failure. A failure signal causes AWS CloudFormation to immediately fail the stack creation or update.
#'
#' @examples
#'
#' @export
signal_resource <- function (StackName, LogicalResourceId, UniqueId, 
    Status) 
{
    op <- Operation(name = "SignalResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- signal_resource_input(StackName = StackName, LogicalResourceId = LogicalResourceId, 
        UniqueId = UniqueId, Status = Status)
    output <- signal_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops an in-progress operation on a stack set and its associated stack instances
#'
#' Stops an in-progress operation on a stack set and its associated stack instances.
#'
#' @param StackSetName The name or unique ID of the stack set that you want to stop the operation for.
#' @param OperationId The ID of the stack operation.
#'
#' @examples
#'
#' @export
stop_stack_set_operation <- function (StackSetName, OperationId) 
{
    op <- Operation(name = "StopStackSetOperation", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_stack_set_operation_input(StackSetName = StackSetName, 
        OperationId = OperationId)
    output <- stop_stack_set_operation_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a stack as specified in the template
#'
#' Updates a stack as specified in the template. After the call completes successfully, the stack update starts. You can check the status of the stack via the DescribeStacks action.
#' 
#' To get a copy of the template for an existing stack, you can use the GetTemplate action.
#' 
#' For more information about creating an update template, updating a stack, and monitoring the progress of the update, see [Updating a Stack](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html).
#'
#' @param StackName The name or unique stack ID of the stack to update.
#' @param TemplateBody Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. (For more information, go to [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.)
#' 
#' Conditional: You must specify only one of the following parameters: `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to `true`.
#' @param TemplateURL Location of file containing the template body. The URL must point to a template that is located in an Amazon S3 bucket. For more information, go to [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.
#' 
#' Conditional: You must specify only one of the following parameters: `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to `true`.
#' @param UsePreviousTemplate Reuse the existing template that is associated with the stack that you are updating.
#' 
#' Conditional: You must specify only one of the following parameters: `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to `true`.
#' @param StackPolicyDuringUpdateBody Structure containing the temporary overriding stack policy body. You can specify either the `StackPolicyDuringUpdateBody` or the `StackPolicyDuringUpdateURL` parameter, but not both.
#' 
#' If you want to update protected resources, specify a temporary overriding stack policy during this update. If you do not specify a stack policy, the current policy that is associated with the stack will be used.
#' @param StackPolicyDuringUpdateURL Location of a file containing the temporary overriding stack policy. The URL must point to a policy (max size: 16KB) located in an S3 bucket in the same region as the stack. You can specify either the `StackPolicyDuringUpdateBody` or the `StackPolicyDuringUpdateURL` parameter, but not both.
#' 
#' If you want to update protected resources, specify a temporary overriding stack policy during this update. If you do not specify a stack policy, the current policy that is associated with the stack will be used.
#' @param Parameters A list of `Parameter` structures that specify input parameters for the stack. For more information, see the [Parameter](http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html) data type.
#' @param Capabilities A list of values that you must specify before AWS CloudFormation can update certain stacks. Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter.
#' 
#' The only valid values are `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`. The following resources require you to specify this parameter: [AWS::IAM::AccessKey](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html), [AWS::IAM::Group](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html), [AWS::IAM::InstanceProfile](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html), [AWS::IAM::Policy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html), [AWS::IAM::Role](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html), [AWS::IAM::User](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html), and [AWS::IAM::UserToGroupAddition](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html). If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.
#' 
#' If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify `CAPABILITY_NAMED_IAM`. If you don\'t specify this parameter, this action returns an `InsufficientCapabilities` error.
#' 
#' For more information, see [Acknowledging IAM Resources in AWS CloudFormation Templates](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities).
#' @param ResourceTypes The template resource types that you have permissions to work with for this update stack action, such as `AWS::EC2::Instance`, `AWS::EC2::*`, or `Custom::MyCustomInstance`.
#' 
#' If the list of resource types doesn\'t include a resource that you\'re updating, the stack update fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for AWS CloudFormation-specific condition keys in IAM policies. For more information, see [Controlling Access with AWS Identity and Access Management](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html).
#' @param RoleARN The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to update the stack. AWS CloudFormation uses the role\'s credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don\'t have permission to pass it. Ensure that the role grants least privilege.
#' 
#' If you don\'t specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.
#' @param RollbackConfiguration The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
#' @param StackPolicyBody Structure containing a new stack policy body. You can specify either the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
#' 
#' You might update the stack policy, for example, in order to protect a new resource that you created during a stack update. If you do not specify a stack policy, the current policy that is associated with the stack is unchanged.
#' @param StackPolicyURL Location of a file containing the updated stack policy. The URL must point to a policy (max size: 16KB) located in an S3 bucket in the same region as the stack. You can specify either the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
#' 
#' You might update the stack policy, for example, in order to protect a new resource that you created during a stack update. If you do not specify a stack policy, the current policy that is associated with the stack is unchanged.
#' @param NotificationARNs Amazon Simple Notification Service topic Amazon Resource Names (ARNs) that AWS CloudFormation associates with the stack. Specify an empty list to remove all notification topics.
#' @param Tags Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to supported resources in the stack. You can specify a maximum number of 50 tags.
#' 
#' If you don\'t specify this parameter, AWS CloudFormation doesn\'t modify the stack\'s tags. If you specify an empty value, AWS CloudFormation removes all associated tags.
#' @param ClientRequestToken A unique identifier for this `UpdateStack` request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you\'re not attempting to update a stack with the same name. You might retry `UpdateStack` requests to ensure that AWS CloudFormation successfully received them.
#' 
#' All events triggered by a given stack operation are assigned the same client request token, which you can use to track operations. For example, if you execute a `CreateStack` operation with the token `token1`, then all the `StackEvents` generated by that operation will have `ClientRequestToken` set as `token1`.
#' 
#' In the console, stack operations display the client request token on the Events tab. Stack operations that are initiated from the console use the token format *Console-StackOperation-ID*, which helps you easily identify the stack operation . For example, if you create a stack using the console, each stack event would be assigned the same token in the following format: `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
#'
#' @examples
#'
#' @export
update_stack <- function (StackName, TemplateBody = NULL, TemplateURL = NULL, 
    UsePreviousTemplate = NULL, StackPolicyDuringUpdateBody = NULL, 
    StackPolicyDuringUpdateURL = NULL, Parameters = NULL, Capabilities = NULL, 
    ResourceTypes = NULL, RoleARN = NULL, RollbackConfiguration = NULL, 
    StackPolicyBody = NULL, StackPolicyURL = NULL, NotificationARNs = NULL, 
    Tags = NULL, ClientRequestToken = NULL) 
{
    op <- Operation(name = "UpdateStack", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_stack_input(StackName = StackName, TemplateBody = TemplateBody, 
        TemplateURL = TemplateURL, UsePreviousTemplate = UsePreviousTemplate, 
        StackPolicyDuringUpdateBody = StackPolicyDuringUpdateBody, 
        StackPolicyDuringUpdateURL = StackPolicyDuringUpdateURL, 
        Parameters = Parameters, Capabilities = Capabilities, 
        ResourceTypes = ResourceTypes, RoleARN = RoleARN, RollbackConfiguration = RollbackConfiguration, 
        StackPolicyBody = StackPolicyBody, StackPolicyURL = StackPolicyURL, 
        NotificationARNs = NotificationARNs, Tags = Tags, ClientRequestToken = ClientRequestToken)
    output <- update_stack_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the parameter values for stack instances for the specified accounts, within the specified regions
#'
#' Updates the parameter values for stack instances for the specified accounts, within the specified regions. A stack instance refers to a stack in a specific account and region.
#' 
#' You can only update stack instances in regions and accounts where they already exist; to create additional stack instances, use [CreateStackInstances](http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateStackInstances.html).
#' 
#' During stack set updates, any parameters overridden for a stack instance are not updated, but retain their overridden value.
#' 
#' You can only update the parameter *values* that are specified in the stack set; to add or delete a parameter itself, use [UpdateStackSet](http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html) to update the stack set template. If you add a parameter to a template, before you can override the parameter value specified in the stack set you must first use [UpdateStackSet](http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html) to update all stack instances with the updated template and parameter value specified in the stack set. Once a stack instance has been updated with the new parameter, you can then override the parameter value using `UpdateStackInstances`.
#'
#' @param StackSetName The name or unique ID of the stack set associated with the stack instances.
#' @param Accounts The names of one or more AWS accounts for which you want to update parameter values for stack instances. The overridden parameter values will be applied to all stack instances in the specified accounts and regions.
#' @param Regions The names of one or more regions in which you want to update parameter values for stack instances. The overridden parameter values will be applied to all stack instances in the specified accounts and regions.
#' @param ParameterOverrides A list of input parameters whose values you want to update for the specified stack instances.
#' 
#' Any overridden parameter values will be applied to all stack instances in the specified accounts and regions. When specifying parameters and their values, be aware of how AWS CloudFormation sets parameter values during stack instance update operations:
#' 
#' -   To override the current value for a parameter, include the parameter and specify its value.
#' 
#' -   To leave a parameter set to its present value, you can do one of the following:
#' 
#'     -   Do not include the parameter in the list.
#' 
#'     -   Include the parameter and specify `UsePreviousValue` as `true`. (You cannot specify both a value and set `UsePreviousValue` to `true`.)
#' 
#' -   To set all overridden parameter back to the values specified in the stack set, specify a parameter list but do not include any parameters.
#' 
#' -   To leave all parameters set to their present values, do not specify this property at all.
#' 
#' During stack set updates, any parameter values overridden for a stack instance are not updated, but retain their overridden value.
#' 
#' You can only override the parameter *values* that are specified in the stack set; to add or delete a parameter itself, use `UpdateStackSet` to update the stack set template. If you add a parameter to a template, before you can override the parameter value specified in the stack set you must first use [UpdateStackSet](http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html) to update all stack instances with the updated template and parameter value specified in the stack set. Once a stack instance has been updated with the new parameter, you can then override the parameter value using `UpdateStackInstances`.
#' @param OperationPreferences Preferences for how AWS CloudFormation performs this stack set operation.
#' @param OperationId The unique identifier for this stack set operation.
#' 
#' The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You might retry stack set operation requests to ensure that AWS CloudFormation successfully received them.
#' 
#' If you don\'t specify an operation ID, the SDK generates one automatically.
#'
#' @examples
#'
#' @export
update_stack_instances <- function (StackSetName, Accounts, Regions, 
    ParameterOverrides = NULL, OperationPreferences = NULL, OperationId = NULL) 
{
    op <- Operation(name = "UpdateStackInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_stack_instances_input(StackSetName = StackSetName, 
        Accounts = Accounts, Regions = Regions, ParameterOverrides = ParameterOverrides, 
        OperationPreferences = OperationPreferences, OperationId = OperationId)
    output <- update_stack_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the stack set, and associated stack instances in the specified accounts and regions
#'
#' Updates the stack set, and associated stack instances in the specified accounts and regions.
#' 
#' Even if the stack set operation created by updating the stack set fails (completely or partially, below or above a specified failure tolerance), the stack set is updated with your changes. Subsequent CreateStackInstances calls on the specified stack set use the updated stack set.
#'
#' @param StackSetName The name or unique ID of the stack set that you want to update.
#' @param Description A brief description of updates that you are making.
#' @param TemplateBody The structure that contains the template body, with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, see [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.
#' 
#' Conditional: You must specify only one of the following parameters: `TemplateBody` or `TemplateURL`---or set `UsePreviousTemplate` to true.
#' @param TemplateURL The location of the file that contains the template body. The URL must point to a template (maximum size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information, see [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.
#' 
#' Conditional: You must specify only one of the following parameters: `TemplateBody` or `TemplateURL`---or set `UsePreviousTemplate` to true.
#' @param UsePreviousTemplate Use the existing template that\'s associated with the stack set that you\'re updating.
#' 
#' Conditional: You must specify only one of the following parameters: `TemplateBody` or `TemplateURL`---or set `UsePreviousTemplate` to true.
#' @param Parameters A list of input parameters for the stack set template.
#' @param Capabilities A list of values that you must specify before AWS CloudFormation can create certain stack sets. Some stack set templates might include resources that can affect permissions in your AWS account---for example, by creating new AWS Identity and Access Management (IAM) users. For those stack sets, you must explicitly acknowledge their capabilities by specifying this parameter.
#' 
#' The only valid values are CAPABILITY\_IAM and CAPABILITY\_NAMED\_IAM. The following resources require you to specify this parameter:
#' 
#' -   AWS::IAM::AccessKey
#' 
#' -   AWS::IAM::Group
#' 
#' -   AWS::IAM::InstanceProfile
#' 
#' -   AWS::IAM::Policy
#' 
#' -   AWS::IAM::Role
#' 
#' -   AWS::IAM::User
#' 
#' -   AWS::IAM::UserToGroupAddition
#' 
#' If your stack template contains these resources, we recommend that you review all permissions that are associated with them and edit their permissions if necessary.
#' 
#' If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify CAPABILITY\_NAMED\_IAM. If you don\'t specify this parameter, this action returns an `InsufficientCapabilities` error.
#' 
#' For more information, see [Acknowledging IAM Resources in AWS CloudFormation Templates.](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities)
#' @param Tags The key-value pairs to associate with this stack set and the stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the stacks. You can specify a maximum number of 50 tags.
#' 
#' If you specify tags for this parameter, those tags replace any list of tags that are currently associated with this stack set. This means:
#' 
#' -   If you don\'t specify this parameter, AWS CloudFormation doesn\'t modify the stack\'s tags.
#' 
#' -   If you specify *any* tags using this parameter, you must specify *all* the tags that you want associated with this stack set, even tags you\'ve specifed before (for example, when creating the stack set or during a previous update of the stack set.). Any tags that you don\'t include in the updated list of tags are removed from the stack set, and therefore from the stacks and resources as well.
#' 
#' -   If you specify an empty value, AWS CloudFormation removes all currently associated tags.
#' 
#' If you specify new tags as part of an `UpdateStackSet` action, AWS CloudFormation checks to see if you have the required IAM permission to tag resources. If you omit tags that are currently associated with the stack set from the list of tags you specify, AWS CloudFormation assumes that you want to remove those tags from the stack set, and checks to see if you have permission to untag resources. If you don\'t have the necessary permission(s), the entire `UpdateStackSet` action fails with an `access denied` error, and the stack set is not updated.
#' @param OperationPreferences Preferences for how AWS CloudFormation performs this stack set operation.
#' @param AdministrationRoleARN The Amazon Resource Number (ARN) of the IAM role to use to update this stack set.
#' 
#' Specify an IAM role only if you are using customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account. For more information, see [Define Permissions for Multiple Administrators](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html) in the *AWS CloudFormation User Guide*.
#' 
#' If you specify a customized administrator role, AWS CloudFormation uses that role to update the stack. If you do not specify a customized administrator role, AWS CloudFormation performs the update using the role previously associated with the stack set, so long as you have permissions to perform operations on the stack set.
#' @param ExecutionRoleName The name of the IAM execution role to use to update the stack set. If you do not specify an execution role, AWS CloudFormation uses the `AWSCloudFormationStackSetExecutionRole` role for the stack set operation.
#' 
#' Specify an IAM role only if you are using customized execution roles to control which stack resources users and groups can include in their stack sets.
#' 
#' If you specify a customized execution role, AWS CloudFormation uses that role to update the stack. If you do not specify a customized execution role, AWS CloudFormation performs the update using the role previously associated with the stack set, so long as you have permissions to perform operations on the stack set.
#' @param OperationId The unique ID for this stack set operation.
#' 
#' The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You might retry stack set operation requests to ensure that AWS CloudFormation successfully received them.
#' 
#' If you don\'t specify an operation ID, AWS CloudFormation generates one automatically.
#' 
#' Repeating this stack set operation with a new operation ID retries all stack instances whose status is `OUTDATED`.
#' @param Accounts The accounts in which to update associated stack instances. If you specify accounts, you must also specify the regions in which to update stack set instances.
#' 
#' To update *all* the stack instances associated with this stack set, do not specify the `Accounts` or `Regions` properties.
#' 
#' If the stack set update includes changes to the template (that is, if the `TemplateBody` or `TemplateURL` properties are specified), or the `Parameters` property, AWS CloudFormation marks all stack instances with a status of `OUTDATED` prior to updating the stack instances in the specified accounts and regions. If the stack set update does not include changes to the template or parameters, AWS CloudFormation updates the stack instances in the specified accounts and regions, while leaving all other stack instances with their existing stack instance status.
#' @param Regions The regions in which to update associated stack instances. If you specify regions, you must also specify accounts in which to update stack set instances.
#' 
#' To update *all* the stack instances associated with this stack set, do not specify the `Accounts` or `Regions` properties.
#' 
#' If the stack set update includes changes to the template (that is, if the `TemplateBody` or `TemplateURL` properties are specified), or the `Parameters` property, AWS CloudFormation marks all stack instances with a status of `OUTDATED` prior to updating the stack instances in the specified accounts and regions. If the stack set update does not include changes to the template or parameters, AWS CloudFormation updates the stack instances in the specified accounts and regions, while leaving all other stack instances with their existing stack instance status.
#'
#' @examples
#'
#' @export
update_stack_set <- function (StackSetName, Description = NULL, 
    TemplateBody = NULL, TemplateURL = NULL, UsePreviousTemplate = NULL, 
    Parameters = NULL, Capabilities = NULL, Tags = NULL, OperationPreferences = NULL, 
    AdministrationRoleARN = NULL, ExecutionRoleName = NULL, OperationId = NULL, 
    Accounts = NULL, Regions = NULL) 
{
    op <- Operation(name = "UpdateStackSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_stack_set_input(StackSetName = StackSetName, 
        Description = Description, TemplateBody = TemplateBody, 
        TemplateURL = TemplateURL, UsePreviousTemplate = UsePreviousTemplate, 
        Parameters = Parameters, Capabilities = Capabilities, 
        Tags = Tags, OperationPreferences = OperationPreferences, 
        AdministrationRoleARN = AdministrationRoleARN, ExecutionRoleName = ExecutionRoleName, 
        OperationId = OperationId, Accounts = Accounts, Regions = Regions)
    output <- update_stack_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates termination protection for the specified stack
#'
#' Updates termination protection for the specified stack. If a user attempts to delete a stack with termination protection enabled, the operation fails and the stack remains unchanged. For more information, see [Protecting a Stack From Being Deleted](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html) in the *AWS CloudFormation User Guide*.
#' 
#' For [nested stacks](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html), termination protection is set on the root stack and cannot be changed directly on the nested stack.
#'
#' @param EnableTerminationProtection Whether to enable termination protection on the specified stack.
#' @param StackName The name or unique ID of the stack for which you want to set termination protection.
#'
#' @examples
#'
#' @export
update_termination_protection <- function (EnableTerminationProtection, 
    StackName) 
{
    op <- Operation(name = "UpdateTerminationProtection", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_termination_protection_input(EnableTerminationProtection = EnableTerminationProtection, 
        StackName = StackName)
    output <- update_termination_protection_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Validates a specified template
#'
#' Validates a specified template. AWS CloudFormation first checks if the template is valid JSON. If it isn\'t, AWS CloudFormation checks if the template is valid YAML. If both these checks fail, AWS CloudFormation returns a template validation error.
#'
#' @param TemplateBody Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, go to [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.
#' 
#' Conditional: You must pass `TemplateURL` or `TemplateBody`. If both are passed, only `TemplateBody` is used.
#' @param TemplateURL Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information, go to [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.
#' 
#' Conditional: You must pass `TemplateURL` or `TemplateBody`. If both are passed, only `TemplateBody` is used.
#'
#' @examples
#'
#' @export
validate_template <- function (TemplateBody = NULL, TemplateURL = NULL) 
{
    op <- Operation(name = "ValidateTemplate", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- validate_template_input(TemplateBody = TemplateBody, 
        TemplateURL = TemplateURL)
    output <- validate_template_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
