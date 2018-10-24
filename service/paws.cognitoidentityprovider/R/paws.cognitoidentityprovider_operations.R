#' Adds additional user attributes to the user pool schema
#'
#' Adds additional user attributes to the user pool schema.
#'
#' @param UserPoolId The user pool ID for the user pool where you want to add custom attributes.
#' @param CustomAttributes An array of custom attributes, such as Mutable and Name.
#'
#' @examples
#'
#' @export
add_custom_attributes <- function (UserPoolId, CustomAttributes) 
{
    op <- Operation(name = "AddCustomAttributes", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- add_custom_attributes_input(UserPoolId = UserPoolId, 
        CustomAttributes = CustomAttributes)
    output <- add_custom_attributes_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds the specified user to the specified group
#'
#' Adds the specified user to the specified group.
#' 
#' Requires developer credentials.
#'
#' @param UserPoolId The user pool ID for the user pool.
#' @param Username The username for the user.
#' @param GroupName The group name.
#'
#' @examples
#'
#' @export
admin_add_user_to_group <- function (UserPoolId, Username, GroupName) 
{
    op <- Operation(name = "AdminAddUserToGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_add_user_to_group_input(UserPoolId = UserPoolId, 
        Username = Username, GroupName = GroupName)
    output <- admin_add_user_to_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Confirms user registration as an admin without using a confirmation code
#'
#' Confirms user registration as an admin without using a confirmation code. Works on any user.
#' 
#' Requires developer credentials.
#'
#' @param UserPoolId The user pool ID for which you want to confirm user registration.
#' @param Username The user name for which you want to confirm user registration.
#'
#' @examples
#'
#' @export
admin_confirm_sign_up <- function (UserPoolId, Username) 
{
    op <- Operation(name = "AdminConfirmSignUp", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_confirm_sign_up_input(UserPoolId = UserPoolId, 
        Username = Username)
    output <- admin_confirm_sign_up_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new user in the specified user pool
#'
#' Creates a new user in the specified user pool.
#' 
#' If `MessageAction` is not set, the default is to send a welcome message via email or phone (SMS).
#' 
#' This message is based on a template that you configured in your call to or . This template includes your custom sign-up instructions and placeholders for user name and temporary password.
#' 
#' Alternatively, you can call AdminCreateUser with "SUPPRESS" for the `MessageAction` parameter, and Amazon Cognito will not send any email.
#' 
#' In either case, the user will be in the `FORCE_CHANGE_PASSWORD` state until they sign in and change their password.
#' 
#' AdminCreateUser requires developer credentials.
#'
#' @param UserPoolId The user pool ID for the user pool where the user will be created.
#' @param Username The username for the user. Must be unique within the user pool. Must be a UTF-8 string between 1 and 128 characters. After the user is created, the username cannot be changed.
#' @param UserAttributes An array of name-value pairs that contain user attributes and attribute values to be set for the user to be created. You can create a user without specifying any attributes other than `Username`. However, any attributes that you specify as required (in or in the **Attributes** tab of the console) must be supplied either by you (in your call to `AdminCreateUser`) or by the user (when he or she signs up in response to your welcome message).
#' 
#' For custom attributes, you must prepend the `custom:` prefix to the attribute name.
#' 
#' To send a message inviting the user to sign up, you must specify the user\'s email address or phone number. This can be done in your call to AdminCreateUser or in the **Users** tab of the Amazon Cognito console for managing your user pools.
#' 
#' In your call to `AdminCreateUser`, you can set the `email_verified` attribute to `True`, and you can set the `phone_number_verified` attribute to `True`. (You can also do this by calling .)
#' 
#' -   **email**: The email address of the user to whom the message that contains the code and username will be sent. Required if the `email_verified` attribute is set to `True`, or if `"EMAIL"` is specified in the `DesiredDeliveryMediums` parameter.
#' 
#' -   **phone\_number**: The phone number of the user to whom the message that contains the code and username will be sent. Required if the `phone_number_verified` attribute is set to `True`, or if `"SMS"` is specified in the `DesiredDeliveryMediums` parameter.
#' @param ValidationData The user\'s validation data. This is an array of name-value pairs that contain user attributes and attribute values that you can use for custom validation, such as restricting the types of user accounts that can be registered. For example, you might choose to allow or disallow user sign-up based on the user\'s domain.
#' 
#' To configure custom validation, you must create a Pre Sign-up Lambda trigger for the user pool as described in the Amazon Cognito Developer Guide. The Lambda trigger receives the validation data and uses it in the validation process.
#' 
#' The user\'s validation data is not persisted.
#' @param TemporaryPassword The user\'s temporary password. This password must conform to the password policy that you specified when you created the user pool.
#' 
#' The temporary password is valid only once. To complete the Admin Create User flow, the user must enter the temporary password in the sign-in page along with a new password to be used in all future sign-ins.
#' 
#' This parameter is not required. If you do not specify a value, Amazon Cognito generates one for you.
#' 
#' The temporary password can only be used until the user account expiration limit that you specified when you created the user pool. To reset the account after that time limit, you must call `AdminCreateUser` again, specifying `"RESEND"` for the `MessageAction` parameter.
#' @param ForceAliasCreation This parameter is only used if the `phone_number_verified` or `email_verified` attribute is set to `True`. Otherwise, it is ignored.
#' 
#' If this parameter is set to `True` and the phone number or email address specified in the UserAttributes parameter already exists as an alias with a different user, the API call will migrate the alias from the previous user to the newly created user. The previous user will no longer be able to log in using that alias.
#' 
#' If this parameter is set to `False`, the API throws an `AliasExistsException` error if the alias already exists. The default value is `False`.
#' @param MessageAction Set to `"RESEND"` to resend the invitation message to a user that already exists and reset the expiration limit on the user\'s account. Set to `"SUPPRESS"` to suppress sending the message. Only one value can be specified.
#' @param DesiredDeliveryMediums Specify `"EMAIL"` if email will be used to send the welcome message. Specify `"SMS"` if the phone number will be used. The default value is `"SMS"`. More than one value can be specified.
#'
#' @examples
#'
#' @export
admin_create_user <- function (UserPoolId, Username, UserAttributes = NULL, 
    ValidationData = NULL, TemporaryPassword = NULL, ForceAliasCreation = NULL, 
    MessageAction = NULL, DesiredDeliveryMediums = NULL) 
{
    op <- Operation(name = "AdminCreateUser", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_create_user_input(UserPoolId = UserPoolId, 
        Username = Username, UserAttributes = UserAttributes, 
        ValidationData = ValidationData, TemporaryPassword = TemporaryPassword, 
        ForceAliasCreation = ForceAliasCreation, MessageAction = MessageAction, 
        DesiredDeliveryMediums = DesiredDeliveryMediums)
    output <- admin_create_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a user as an administrator
#'
#' Deletes a user as an administrator. Works on any user.
#' 
#' Requires developer credentials.
#'
#' @param UserPoolId The user pool ID for the user pool where you want to delete the user.
#' @param Username The user name of the user you wish to delete.
#'
#' @examples
#'
#' @export
admin_delete_user <- function (UserPoolId, Username) 
{
    op <- Operation(name = "AdminDeleteUser", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_delete_user_input(UserPoolId = UserPoolId, 
        Username = Username)
    output <- admin_delete_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the user attributes in a user pool as an administrator
#'
#' Deletes the user attributes in a user pool as an administrator. Works on any user.
#' 
#' Requires developer credentials.
#'
#' @param UserPoolId The user pool ID for the user pool where you want to delete user attributes.
#' @param Username The user name of the user from which you would like to delete attributes.
#' @param UserAttributeNames An array of strings representing the user attribute names you wish to delete.
#' 
#' For custom attributes, you must prepend the `custom:` prefix to the attribute name.
#'
#' @examples
#'
#' @export
admin_delete_user_attributes <- function (UserPoolId, Username, 
    UserAttributeNames) 
{
    op <- Operation(name = "AdminDeleteUserAttributes", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_delete_user_attributes_input(UserPoolId = UserPoolId, 
        Username = Username, UserAttributeNames = UserAttributeNames)
    output <- admin_delete_user_attributes_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disables the user from signing in with the specified external (SAML or social) identity provider
#'
#' Disables the user from signing in with the specified external (SAML or social) identity provider. If the user to disable is a Cognito User Pools native username + password user, they are not permitted to use their password to sign-in. If the user to disable is a linked external IdP user, any link between that user and an existing user is removed. The next time the external user (no longer attached to the previously linked `DestinationUser`) signs in, they must create a new user account. See .
#' 
#' This action is enabled only for admin access and requires developer credentials.
#' 
#' The `ProviderName` must match the value specified when creating an IdP for the pool.
#' 
#' To disable a native username + password user, the `ProviderName` value must be `Cognito` and the `ProviderAttributeName` must be `Cognito_Subject`, with the `ProviderAttributeValue` being the name that is used in the user pool for the user.
#' 
#' The `ProviderAttributeName` must always be `Cognito_Subject` for social identity providers. The `ProviderAttributeValue` must always be the exact subject that was used when the user was originally linked as a source user.
#' 
#' For de-linking a SAML identity, there are two scenarios. If the linked identity has not yet been used to sign-in, the `ProviderAttributeName` and `ProviderAttributeValue` must be the same values that were used for the `SourceUser` when the identities were originally linked in the call. (If the linking was done with `ProviderAttributeName` set to `Cognito_Subject`, the same applies here). However, if the user has already signed in, the `ProviderAttributeName` must be `Cognito_Subject` and `ProviderAttributeValue` must be the subject of the SAML assertion.
#'
#' @param UserPoolId The user pool ID for the user pool.
#' @param User The user to be disabled.
#'
#' @examples
#'
#' @export
admin_disable_provider_for_user <- function (UserPoolId, User) 
{
    op <- Operation(name = "AdminDisableProviderForUser", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_disable_provider_for_user_input(UserPoolId = UserPoolId, 
        User = User)
    output <- admin_disable_provider_for_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disables the specified user as an administrator
#'
#' Disables the specified user as an administrator. Works on any user.
#' 
#' Requires developer credentials.
#'
#' @param UserPoolId The user pool ID for the user pool where you want to disable the user.
#' @param Username The user name of the user you wish to disable.
#'
#' @examples
#'
#' @export
admin_disable_user <- function (UserPoolId, Username) 
{
    op <- Operation(name = "AdminDisableUser", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_disable_user_input(UserPoolId = UserPoolId, 
        Username = Username)
    output <- admin_disable_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Enables the specified user as an administrator
#'
#' Enables the specified user as an administrator. Works on any user.
#' 
#' Requires developer credentials.
#'
#' @param UserPoolId The user pool ID for the user pool where you want to enable the user.
#' @param Username The user name of the user you wish to enable.
#'
#' @examples
#'
#' @export
admin_enable_user <- function (UserPoolId, Username) 
{
    op <- Operation(name = "AdminEnableUser", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_enable_user_input(UserPoolId = UserPoolId, 
        Username = Username)
    output <- admin_enable_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Forgets the device, as an administrator
#'
#' Forgets the device, as an administrator.
#' 
#' Requires developer credentials.
#'
#' @param UserPoolId The user pool ID.
#' @param Username The user name.
#' @param DeviceKey The device key.
#'
#' @examples
#'
#' @export
admin_forget_device <- function (UserPoolId, Username, DeviceKey) 
{
    op <- Operation(name = "AdminForgetDevice", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_forget_device_input(UserPoolId = UserPoolId, 
        Username = Username, DeviceKey = DeviceKey)
    output <- admin_forget_device_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the device, as an administrator
#'
#' Gets the device, as an administrator.
#' 
#' Requires developer credentials.
#'
#' @param DeviceKey The device key.
#' @param UserPoolId The user pool ID.
#' @param Username The user name.
#'
#' @examples
#'
#' @export
admin_get_device <- function (DeviceKey, UserPoolId, Username) 
{
    op <- Operation(name = "AdminGetDevice", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_get_device_input(DeviceKey = DeviceKey, UserPoolId = UserPoolId, 
        Username = Username)
    output <- admin_get_device_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the specified user by user name in a user pool as an administrator
#'
#' Gets the specified user by user name in a user pool as an administrator. Works on any user.
#' 
#' Requires developer credentials.
#'
#' @param UserPoolId The user pool ID for the user pool where you want to get information about the user.
#' @param Username The user name of the user you wish to retrieve.
#'
#' @examples
#'
#' @export
admin_get_user <- function (UserPoolId, Username) 
{
    op <- Operation(name = "AdminGetUser", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_get_user_input(UserPoolId = UserPoolId, Username = Username)
    output <- admin_get_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Initiates the authentication flow, as an administrator
#'
#' Initiates the authentication flow, as an administrator.
#' 
#' Requires developer credentials.
#'
#' @param UserPoolId The ID of the Amazon Cognito user pool.
#' @param ClientId The app client ID.
#' @param AuthFlow The authentication flow for this call to execute. The API action will depend on this value. For example:
#' 
#' -   `REFRESH_TOKEN_AUTH` will take in a valid refresh token and return new tokens.
#' 
#' -   `USER_SRP_AUTH` will take in `USERNAME` and `SRP_A` and return the SRP variables to be used for next challenge execution.
#' 
#' -   `USER_PASSWORD_AUTH` will take in `USERNAME` and `PASSWORD` and return the next challenge or tokens.
#' 
#' Valid values include:
#' 
#' -   `USER_SRP_AUTH`: Authentication flow for the Secure Remote Password (SRP) protocol.
#' 
#' -   `REFRESH_TOKEN_AUTH`/`REFRESH_TOKEN`: Authentication flow for refreshing the access token and ID token by supplying a valid refresh token.
#' 
#' -   `CUSTOM_AUTH`: Custom authentication flow.
#' 
#' -   `ADMIN_NO_SRP_AUTH`: Non-SRP authentication flow; you can pass in the USERNAME and PASSWORD directly if the flow is enabled for calling the app client.
#' 
#' -   `USER_PASSWORD_AUTH`: Non-SRP authentication flow; USERNAME and PASSWORD are passed directly. If a user migration Lambda trigger is set, this flow will invoke the user migration Lambda if the USERNAME is not found in the user pool.
#' @param AuthParameters The authentication parameters. These are inputs corresponding to the `AuthFlow` that you are invoking. The required values depend on the value of `AuthFlow`:
#' 
#' -   For `USER_SRP_AUTH`: `USERNAME` (required), `SRP_A` (required), `SECRET_HASH` (required if the app client is configured with a client secret), `DEVICE_KEY`
#' 
#' -   For `REFRESH_TOKEN_AUTH/REFRESH_TOKEN`: `REFRESH_TOKEN` (required), `SECRET_HASH` (required if the app client is configured with a client secret), `DEVICE_KEY`
#' 
#' -   For `ADMIN_NO_SRP_AUTH`: `USERNAME` (required), `SECRET_HASH` (if app client is configured with client secret), `PASSWORD` (required), `DEVICE_KEY`
#' 
#' -   For `CUSTOM_AUTH`: `USERNAME` (required), `SECRET_HASH` (if app client is configured with client secret), `DEVICE_KEY`
#' @param ClientMetadata This is a random key-value pair map which can contain any key and will be passed to your PreAuthentication Lambda trigger as-is. It can be used to implement additional validations around authentication.
#' @param AnalyticsMetadata The analytics metadata for collecting Amazon Pinpoint metrics for `AdminInitiateAuth` calls.
#' @param ContextData Contextual data such as the user\'s device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
#'
#' @examples
#'
#' @export
admin_initiate_auth <- function (UserPoolId, ClientId, AuthFlow, 
    AuthParameters = NULL, ClientMetadata = NULL, AnalyticsMetadata = NULL, 
    ContextData = NULL) 
{
    op <- Operation(name = "AdminInitiateAuth", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_initiate_auth_input(UserPoolId = UserPoolId, 
        ClientId = ClientId, AuthFlow = AuthFlow, AuthParameters = AuthParameters, 
        ClientMetadata = ClientMetadata, AnalyticsMetadata = AnalyticsMetadata, 
        ContextData = ContextData)
    output <- admin_initiate_auth_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Links an existing user account in a user pool (`DestinationUser`) to an identity from an external identity provider (`SourceUser`) based on a specified attribute name and value from the external identity provider
#'
#' Links an existing user account in a user pool (`DestinationUser`) to an identity from an external identity provider (`SourceUser`) based on a specified attribute name and value from the external identity provider. This allows you to create a link from the existing user account to an external federated user identity that has not yet been used to sign in, so that the federated user identity can be used to sign in as the existing user account.
#' 
#' For example, if there is an existing user with a username and password, this API links that user to a federated user identity, so that when the federated user identity is used, the user signs in as the existing user account.
#' 
#' Because this API allows a user with an external federated identity to sign in as an existing user in the user pool, it is critical that it only be used with external identity providers and provider attributes that have been trusted by the application owner.
#' 
#' See also .
#' 
#' This action is enabled only for admin access and requires developer credentials.
#'
#' @param UserPoolId The user pool ID for the user pool.
#' @param DestinationUser The existing user in the user pool to be linked to the external identity provider user account. Can be a native (Username + Password) Cognito User Pools user or a federated user (for example, a SAML or Facebook user). If the user doesn\'t exist, an exception is thrown. This is the user that is returned when the new user (with the linked identity provider attribute) signs in.
#' 
#' For a native username + password user, the `ProviderAttributeValue` for the `DestinationUser` should be the username in the user pool. For a federated user, it should be the provider-specific `user_id`.
#' 
#' The `ProviderAttributeName` of the `DestinationUser` is ignored.
#' 
#' The `ProviderName` should be set to `Cognito` for users in Cognito user pools.
#' @param SourceUser An external identity provider account for a user who does not currently exist yet in the user pool. This user must be a federated user (for example, a SAML or Facebook user), not another native user.
#' 
#' If the `SourceUser` is a federated social identity provider user (Facebook, Google, or Login with Amazon), you must set the `ProviderAttributeName` to `Cognito_Subject`. For social identity providers, the `ProviderName` will be `Facebook`, `Google`, or `LoginWithAmazon`, and Cognito will automatically parse the Facebook, Google, and Login with Amazon tokens for `id`, `sub`, and `user_id`, respectively. The `ProviderAttributeValue` for the user must be the same value as the `id`, `sub`, or `user_id` value found in the social identity provider token.
#' 
#' For SAML, the `ProviderAttributeName` can be any value that matches a claim in the SAML assertion. If you wish to link SAML users based on the subject of the SAML assertion, you should map the subject to a claim through the SAML identity provider and submit that claim name as the `ProviderAttributeName`. If you set `ProviderAttributeName` to `Cognito_Subject`, Cognito will automatically parse the default unique identifier found in the subject from the SAML token.
#'
#' @examples
#'
#' @export
admin_link_provider_for_user <- function (UserPoolId, DestinationUser, 
    SourceUser) 
{
    op <- Operation(name = "AdminLinkProviderForUser", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_link_provider_for_user_input(UserPoolId = UserPoolId, 
        DestinationUser = DestinationUser, SourceUser = SourceUser)
    output <- admin_link_provider_for_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists devices, as an administrator
#'
#' Lists devices, as an administrator.
#' 
#' Requires developer credentials.
#'
#' @param UserPoolId The user pool ID.
#' @param Username The user name.
#' @param Limit The limit of the devices request.
#' @param PaginationToken The pagination token.
#'
#' @examples
#'
#' @export
admin_list_devices <- function (UserPoolId, Username, Limit = NULL, 
    PaginationToken = NULL) 
{
    op <- Operation(name = "AdminListDevices", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_list_devices_input(UserPoolId = UserPoolId, 
        Username = Username, Limit = Limit, PaginationToken = PaginationToken)
    output <- admin_list_devices_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the groups that the user belongs to
#'
#' Lists the groups that the user belongs to.
#' 
#' Requires developer credentials.
#'
#' @param Username The username for the user.
#' @param UserPoolId The user pool ID for the user pool.
#' @param Limit The limit of the request to list groups.
#' @param NextToken An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
#'
#' @examples
#'
#' @export
admin_list_groups_for_user <- function (Username, UserPoolId, 
    Limit = NULL, NextToken = NULL) 
{
    op <- Operation(name = "AdminListGroupsForUser", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_list_groups_for_user_input(Username = Username, 
        UserPoolId = UserPoolId, Limit = Limit, NextToken = NextToken)
    output <- admin_list_groups_for_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists a history of user activity and any risks detected as part of Amazon Cognito advanced security
#'
#' Lists a history of user activity and any risks detected as part of Amazon Cognito advanced security.
#'
#' @param UserPoolId The user pool ID.
#' @param Username The user pool username or an alias.
#' @param MaxResults The maximum number of authentication events to return.
#' @param NextToken A pagination token.
#'
#' @examples
#'
#' @export
admin_list_user_auth_events <- function (UserPoolId, Username, 
    MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "AdminListUserAuthEvents", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_list_user_auth_events_input(UserPoolId = UserPoolId, 
        Username = Username, MaxResults = MaxResults, NextToken = NextToken)
    output <- admin_list_user_auth_events_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes the specified user from the specified group
#'
#' Removes the specified user from the specified group.
#' 
#' Requires developer credentials.
#'
#' @param UserPoolId The user pool ID for the user pool.
#' @param Username The username for the user.
#' @param GroupName The group name.
#'
#' @examples
#'
#' @export
admin_remove_user_from_group <- function (UserPoolId, Username, 
    GroupName) 
{
    op <- Operation(name = "AdminRemoveUserFromGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_remove_user_from_group_input(UserPoolId = UserPoolId, 
        Username = Username, GroupName = GroupName)
    output <- admin_remove_user_from_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Resets the specified user\'s password in a user pool as an administrator
#'
#' Resets the specified user\'s password in a user pool as an administrator. Works on any user.
#' 
#' When a developer calls this API, the current password is invalidated, so it must be changed. If a user tries to sign in after the API is called, the app will get a PasswordResetRequiredException exception back and should direct the user down the flow to reset the password, which is the same as the forgot password flow. In addition, if the user pool has phone verification selected and a verified phone number exists for the user, or if email verification is selected and a verified email exists for the user, calling this API will also result in sending a message to the end user with the code to change their password.
#' 
#' Requires developer credentials.
#'
#' @param UserPoolId The user pool ID for the user pool where you want to reset the user\'s password.
#' @param Username The user name of the user whose password you wish to reset.
#'
#' @examples
#'
#' @export
admin_reset_user_password <- function (UserPoolId, Username) 
{
    op <- Operation(name = "AdminResetUserPassword", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_reset_user_password_input(UserPoolId = UserPoolId, 
        Username = Username)
    output <- admin_reset_user_password_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Responds to an authentication challenge, as an administrator
#'
#' Responds to an authentication challenge, as an administrator.
#' 
#' Requires developer credentials.
#'
#' @param UserPoolId The ID of the Amazon Cognito user pool.
#' @param ClientId The app client ID.
#' @param ChallengeName The challenge name. For more information, see .
#' @param ChallengeResponses The challenge responses. These are inputs corresponding to the value of `ChallengeName`, for example:
#' 
#' -   `SMS_MFA`: `SMS_MFA_CODE`, `USERNAME`, `SECRET_HASH` (if app client is configured with client secret).
#' 
#' -   `PASSWORD_VERIFIER`: `PASSWORD_CLAIM_SIGNATURE`, `PASSWORD_CLAIM_SECRET_BLOCK`, `TIMESTAMP`, `USERNAME`, `SECRET_HASH` (if app client is configured with client secret).
#' 
#' -   `ADMIN_NO_SRP_AUTH`: `PASSWORD`, `USERNAME`, `SECRET_HASH` (if app client is configured with client secret).
#' 
#' -   `NEW_PASSWORD_REQUIRED`: `NEW_PASSWORD`, any other required attributes, `USERNAME`, `SECRET_HASH` (if app client is configured with client secret).
#' 
#' The value of the `USERNAME` attribute must be the user\'s actual username, not an alias (such as email address or phone number). To make this easier, the `AdminInitiateAuth` response includes the actual username value in the `USERNAMEUSER_ID_FOR_SRP` attribute, even if you specified an alias in your call to `AdminInitiateAuth`.
#' @param Session The session which should be passed both ways in challenge-response calls to the service. If `InitiateAuth` or `RespondToAuthChallenge` API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next `RespondToAuthChallenge` API call.
#' @param AnalyticsMetadata The analytics metadata for collecting Amazon Pinpoint metrics for `AdminRespondToAuthChallenge` calls.
#' @param ContextData Contextual data such as the user\'s device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
#'
#' @examples
#'
#' @export
admin_respond_to_auth_challenge <- function (UserPoolId, ClientId, 
    ChallengeName, ChallengeResponses = NULL, Session = NULL, 
    AnalyticsMetadata = NULL, ContextData = NULL) 
{
    op <- Operation(name = "AdminRespondToAuthChallenge", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_respond_to_auth_challenge_input(UserPoolId = UserPoolId, 
        ClientId = ClientId, ChallengeName = ChallengeName, ChallengeResponses = ChallengeResponses, 
        Session = Session, AnalyticsMetadata = AnalyticsMetadata, 
        ContextData = ContextData)
    output <- admin_respond_to_auth_challenge_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the user\'s multi-factor authentication (MFA) preference
#'
#' Sets the user\'s multi-factor authentication (MFA) preference.
#'
#' @param Username The user pool username or alias.
#' @param UserPoolId The user pool ID.
#' @param SMSMfaSettings The SMS text message MFA settings.
#' @param SoftwareTokenMfaSettings The time-based one-time password software token MFA settings.
#'
#' @examples
#'
#' @export
admin_set_user_mfa_preference <- function (Username, UserPoolId, 
    SMSMfaSettings = NULL, SoftwareTokenMfaSettings = NULL) 
{
    op <- Operation(name = "AdminSetUserMFAPreference", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_set_user_mfa_preference_input(Username = Username, 
        UserPoolId = UserPoolId, SMSMfaSettings = SMSMfaSettings, 
        SoftwareTokenMfaSettings = SoftwareTokenMfaSettings)
    output <- admin_set_user_mfa_preference_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets all the user settings for a specified user name
#'
#' Sets all the user settings for a specified user name. Works on any user.
#' 
#' Requires developer credentials.
#'
#' @param UserPoolId The user pool ID for the user pool where you want to set the user\'s settings, such as MFA options.
#' @param Username The user name of the user for whom you wish to set user settings.
#' @param MFAOptions Specifies the options for MFA (e.g., email or phone number).
#'
#' @examples
#'
#' @export
admin_set_user_settings <- function (UserPoolId, Username, MFAOptions) 
{
    op <- Operation(name = "AdminSetUserSettings", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_set_user_settings_input(UserPoolId = UserPoolId, 
        Username = Username, MFAOptions = MFAOptions)
    output <- admin_set_user_settings_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides feedback for an authentication event as to whether it was from a valid user
#'
#' Provides feedback for an authentication event as to whether it was from a valid user. This feedback is used for improving the risk evaluation decision for the user pool as part of Amazon Cognito advanced security.
#'
#' @param UserPoolId The user pool ID.
#' @param Username The user pool username.
#' @param EventId The authentication event ID.
#' @param FeedbackValue The authentication event feedback value.
#'
#' @examples
#'
#' @export
admin_update_auth_event_feedback <- function (UserPoolId, Username, 
    EventId, FeedbackValue) 
{
    op <- Operation(name = "AdminUpdateAuthEventFeedback", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_update_auth_event_feedback_input(UserPoolId = UserPoolId, 
        Username = Username, EventId = EventId, FeedbackValue = FeedbackValue)
    output <- admin_update_auth_event_feedback_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the device status as an administrator
#'
#' Updates the device status as an administrator.
#' 
#' Requires developer credentials.
#'
#' @param UserPoolId The user pool ID.
#' @param Username The user name.
#' @param DeviceKey The device key.
#' @param DeviceRememberedStatus The status indicating whether a device has been remembered or not.
#'
#' @examples
#'
#' @export
admin_update_device_status <- function (UserPoolId, Username, 
    DeviceKey, DeviceRememberedStatus = NULL) 
{
    op <- Operation(name = "AdminUpdateDeviceStatus", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_update_device_status_input(UserPoolId = UserPoolId, 
        Username = Username, DeviceKey = DeviceKey, DeviceRememberedStatus = DeviceRememberedStatus)
    output <- admin_update_device_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the specified user\'s attributes, including developer attributes, as an administrator
#'
#' Updates the specified user\'s attributes, including developer attributes, as an administrator. Works on any user.
#' 
#' For custom attributes, you must prepend the `custom:` prefix to the attribute name.
#' 
#' In addition to updating user attributes, this API can also be used to mark phone and email as verified.
#' 
#' Requires developer credentials.
#'
#' @param UserPoolId The user pool ID for the user pool where you want to update user attributes.
#' @param Username The user name of the user for whom you want to update user attributes.
#' @param UserAttributes An array of name-value pairs representing user attributes.
#' 
#' For custom attributes, you must prepend the `custom:` prefix to the attribute name.
#'
#' @examples
#'
#' @export
admin_update_user_attributes <- function (UserPoolId, Username, 
    UserAttributes) 
{
    op <- Operation(name = "AdminUpdateUserAttributes", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_update_user_attributes_input(UserPoolId = UserPoolId, 
        Username = Username, UserAttributes = UserAttributes)
    output <- admin_update_user_attributes_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Signs out users from all devices, as an administrator
#'
#' Signs out users from all devices, as an administrator.
#' 
#' Requires developer credentials.
#'
#' @param UserPoolId The user pool ID.
#' @param Username The user name.
#'
#' @examples
#'
#' @export
admin_user_global_sign_out <- function (UserPoolId, Username) 
{
    op <- Operation(name = "AdminUserGlobalSignOut", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- admin_user_global_sign_out_input(UserPoolId = UserPoolId, 
        Username = Username)
    output <- admin_user_global_sign_out_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a unique generated shared secret key code for the user account
#'
#' Returns a unique generated shared secret key code for the user account. The request takes an access token or a session string, but not both.
#'
#' @param AccessToken The access token.
#' @param Session The session which should be passed both ways in challenge-response calls to the service. This allows authentication of the user as part of the MFA setup process.
#'
#' @examples
#'
#' @export
associate_software_token <- function (AccessToken = NULL, Session = NULL) 
{
    op <- Operation(name = "AssociateSoftwareToken", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- associate_software_token_input(AccessToken = AccessToken, 
        Session = Session)
    output <- associate_software_token_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes the password for a specified user in a user pool
#'
#' Changes the password for a specified user in a user pool.
#'
#' @param PreviousPassword The old password.
#' @param ProposedPassword The new password.
#' @param AccessToken The access token.
#'
#' @examples
#'
#' @export
change_password <- function (PreviousPassword, ProposedPassword, 
    AccessToken) 
{
    op <- Operation(name = "ChangePassword", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- change_password_input(PreviousPassword = PreviousPassword, 
        ProposedPassword = ProposedPassword, AccessToken = AccessToken)
    output <- change_password_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Confirms tracking of the device
#'
#' Confirms tracking of the device. This API call is the call that begins device tracking.
#'
#' @param AccessToken The access token.
#' @param DeviceKey The device key.
#' @param DeviceSecretVerifierConfig The configuration of the device secret verifier.
#' @param DeviceName The device name.
#'
#' @examples
#'
#' @export
confirm_device <- function (AccessToken, DeviceKey, DeviceSecretVerifierConfig = NULL, 
    DeviceName = NULL) 
{
    op <- Operation(name = "ConfirmDevice", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- confirm_device_input(AccessToken = AccessToken, 
        DeviceKey = DeviceKey, DeviceSecretVerifierConfig = DeviceSecretVerifierConfig, 
        DeviceName = DeviceName)
    output <- confirm_device_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Allows a user to enter a confirmation code to reset a forgotten password
#'
#' Allows a user to enter a confirmation code to reset a forgotten password.
#'
#' @param ClientId The app client ID of the app associated with the user pool.
#' @param Username The user name of the user for whom you want to enter a code to retrieve a forgotten password.
#' @param ConfirmationCode The confirmation code sent by a user\'s request to retrieve a forgotten password. For more information, see
#' @param Password The password sent by a user\'s request to retrieve a forgotten password.
#' @param SecretHash A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.
#' @param AnalyticsMetadata The Amazon Pinpoint analytics metadata for collecting metrics for `ConfirmForgotPassword` calls.
#' @param UserContextData Contextual data such as the user\'s device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
#'
#' @examples
#'
#' @export
confirm_forgot_password <- function (ClientId, Username, ConfirmationCode, 
    Password, SecretHash = NULL, AnalyticsMetadata = NULL, UserContextData = NULL) 
{
    op <- Operation(name = "ConfirmForgotPassword", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- confirm_forgot_password_input(ClientId = ClientId, 
        Username = Username, ConfirmationCode = ConfirmationCode, 
        Password = Password, SecretHash = SecretHash, AnalyticsMetadata = AnalyticsMetadata, 
        UserContextData = UserContextData)
    output <- confirm_forgot_password_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Confirms registration of a user and handles the existing alias from a previous user
#'
#' Confirms registration of a user and handles the existing alias from a previous user.
#'
#' @param ClientId The ID of the app client associated with the user pool.
#' @param Username The user name of the user whose registration you wish to confirm.
#' @param ConfirmationCode The confirmation code sent by a user\'s request to confirm registration.
#' @param SecretHash A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.
#' @param ForceAliasCreation Boolean to be specified to force user confirmation irrespective of existing alias. By default set to `False`. If this parameter is set to `True` and the phone number/email used for sign up confirmation already exists as an alias with a different user, the API call will migrate the alias from the previous user to the newly created user being confirmed. If set to `False`, the API will throw an **AliasExistsException** error.
#' @param AnalyticsMetadata The Amazon Pinpoint analytics metadata for collecting metrics for `ConfirmSignUp` calls.
#' @param UserContextData Contextual data such as the user\'s device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
#'
#' @examples
#'
#' @export
confirm_sign_up <- function (ClientId, Username, ConfirmationCode, 
    SecretHash = NULL, ForceAliasCreation = NULL, AnalyticsMetadata = NULL, 
    UserContextData = NULL) 
{
    op <- Operation(name = "ConfirmSignUp", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- confirm_sign_up_input(ClientId = ClientId, Username = Username, 
        ConfirmationCode = ConfirmationCode, SecretHash = SecretHash, 
        ForceAliasCreation = ForceAliasCreation, AnalyticsMetadata = AnalyticsMetadata, 
        UserContextData = UserContextData)
    output <- confirm_sign_up_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new group in the specified user pool
#'
#' Creates a new group in the specified user pool.
#' 
#' Requires developer credentials.
#'
#' @param GroupName The name of the group. Must be unique.
#' @param UserPoolId The user pool ID for the user pool.
#' @param Description A string containing the description of the group.
#' @param RoleArn The role ARN for the group.
#' @param Precedence A nonnegative integer value that specifies the precedence of this group relative to the other groups that a user can belong to in the user pool. Zero is the highest precedence value. Groups with lower `Precedence` values take precedence over groups with higher or null `Precedence` values. If a user belongs to two or more groups, it is the group with the lowest precedence value whose role ARN will be used in the `cognito:roles` and `cognito:preferred_role` claims in the user\'s tokens.
#' 
#' Two groups can have the same `Precedence` value. If this happens, neither group takes precedence over the other. If two groups with the same `Precedence` have the same role ARN, that role is used in the `cognito:preferred_role` claim in tokens for users in each group. If the two groups have different role ARNs, the `cognito:preferred_role` claim is not set in users\' tokens.
#' 
#' The default `Precedence` value is null.
#'
#' @examples
#'
#' @export
create_group <- function (GroupName, UserPoolId, Description = NULL, 
    RoleArn = NULL, Precedence = NULL) 
{
    op <- Operation(name = "CreateGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_group_input(GroupName = GroupName, UserPoolId = UserPoolId, 
        Description = Description, RoleArn = RoleArn, Precedence = Precedence)
    output <- create_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an identity provider for a user pool
#'
#' Creates an identity provider for a user pool.
#'
#' @param UserPoolId The user pool ID.
#' @param ProviderName The identity provider name.
#' @param ProviderType The identity provider type.
#' @param ProviderDetails The identity provider details, such as `MetadataURL` and `MetadataFile`.
#' @param AttributeMapping A mapping of identity provider attributes to standard and custom user pool attributes.
#' @param IdpIdentifiers A list of identity provider identifiers.
#'
#' @examples
#'
#' @export
create_identity_provider <- function (UserPoolId, ProviderName, 
    ProviderType, ProviderDetails, AttributeMapping = NULL, IdpIdentifiers = NULL) 
{
    op <- Operation(name = "CreateIdentityProvider", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_identity_provider_input(UserPoolId = UserPoolId, 
        ProviderName = ProviderName, ProviderType = ProviderType, 
        ProviderDetails = ProviderDetails, AttributeMapping = AttributeMapping, 
        IdpIdentifiers = IdpIdentifiers)
    output <- create_identity_provider_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new OAuth2
#'
#' Creates a new OAuth2.0 resource server and defines custom scopes in it.
#'
#' @param UserPoolId The user pool ID for the user pool.
#' @param Identifier A unique resource server identifier for the resource server. This could be an HTTPS endpoint where the resource server is located. For example, `https://my-weather-api.example.com`.
#' @param Name A friendly name for the resource server.
#' @param Scopes A list of scopes. Each scope is map, where the keys are `name` and `description`.
#'
#' @examples
#'
#' @export
create_resource_server <- function (UserPoolId, Identifier, Name, 
    Scopes = NULL) 
{
    op <- Operation(name = "CreateResourceServer", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_resource_server_input(UserPoolId = UserPoolId, 
        Identifier = Identifier, Name = Name, Scopes = Scopes)
    output <- create_resource_server_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates the user import job
#'
#' Creates the user import job.
#'
#' @param JobName The job name for the user import job.
#' @param UserPoolId The user pool ID for the user pool that the users are being imported into.
#' @param CloudWatchLogsRoleArn The role ARN for the Amazon CloudWatch Logging role for the user import job.
#'
#' @examples
#'
#' @export
create_user_import_job <- function (JobName, UserPoolId, CloudWatchLogsRoleArn) 
{
    op <- Operation(name = "CreateUserImportJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_user_import_job_input(JobName = JobName, 
        UserPoolId = UserPoolId, CloudWatchLogsRoleArn = CloudWatchLogsRoleArn)
    output <- create_user_import_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new Amazon Cognito user pool and sets the password policy for the pool
#'
#' Creates a new Amazon Cognito user pool and sets the password policy for the pool.
#'
#' @param PoolName A string used to name the user pool.
#' @param Policies The policies associated with the new user pool.
#' @param LambdaConfig The Lambda trigger configuration information for the new user pool.
#' 
#' In a push model, event sources (such as Amazon S3 and custom applications) need permission to invoke a function. So you will need to make an extra call to add permission for these event sources to invoke your Lambda function.
#' 
#' For more information on using the Lambda API to add permission, see [AddPermission](https://docs.aws.amazon.com/lambda/latest/dg/API_AddPermission.html).
#' 
#' For adding permission using the AWS CLI, see [add-permission](https://docs.aws.amazon.com/cli/latest/reference/lambda/add-permission.html).
#' @param AutoVerifiedAttributes The attributes to be auto-verified. Possible values: **email**, **phone\_number**.
#' @param AliasAttributes Attributes supported as an alias for this user pool. Possible values: **phone\_number**, **email**, or **preferred\_username**.
#' @param UsernameAttributes Specifies whether email addresses or phone numbers can be specified as usernames when a user signs up.
#' @param SmsVerificationMessage A string representing the SMS verification message.
#' @param EmailVerificationMessage A string representing the email verification message.
#' @param EmailVerificationSubject A string representing the email verification subject.
#' @param VerificationMessageTemplate The template for the verification message that the user sees when the app requests permission to access the user\'s information.
#' @param SmsAuthenticationMessage A string representing the SMS authentication message.
#' @param MfaConfiguration Specifies MFA configuration details.
#' @param DeviceConfiguration The device configuration.
#' @param EmailConfiguration The email configuration.
#' @param SmsConfiguration The SMS configuration.
#' @param UserPoolTags The cost allocation tags for the user pool. For more information, see [Adding Cost Allocation Tags to Your User Pool](http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html)
#' @param AdminCreateUserConfig The configuration for `AdminCreateUser` requests.
#' @param Schema An array of schema attributes for the new user pool. These attributes can be standard or custom attributes.
#' @param UserPoolAddOns Used to enable advanced security risk detection. Set the key `AdvancedSecurityMode` to the value \"AUDIT\".
#'
#' @examples
#'
#' @export
create_user_pool <- function (PoolName, Policies = NULL, LambdaConfig = NULL, 
    AutoVerifiedAttributes = NULL, AliasAttributes = NULL, UsernameAttributes = NULL, 
    SmsVerificationMessage = NULL, EmailVerificationMessage = NULL, 
    EmailVerificationSubject = NULL, VerificationMessageTemplate = NULL, 
    SmsAuthenticationMessage = NULL, MfaConfiguration = NULL, 
    DeviceConfiguration = NULL, EmailConfiguration = NULL, SmsConfiguration = NULL, 
    UserPoolTags = NULL, AdminCreateUserConfig = NULL, Schema = NULL, 
    UserPoolAddOns = NULL) 
{
    op <- Operation(name = "CreateUserPool", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_user_pool_input(PoolName = PoolName, Policies = Policies, 
        LambdaConfig = LambdaConfig, AutoVerifiedAttributes = AutoVerifiedAttributes, 
        AliasAttributes = AliasAttributes, UsernameAttributes = UsernameAttributes, 
        SmsVerificationMessage = SmsVerificationMessage, EmailVerificationMessage = EmailVerificationMessage, 
        EmailVerificationSubject = EmailVerificationSubject, 
        VerificationMessageTemplate = VerificationMessageTemplate, 
        SmsAuthenticationMessage = SmsAuthenticationMessage, 
        MfaConfiguration = MfaConfiguration, DeviceConfiguration = DeviceConfiguration, 
        EmailConfiguration = EmailConfiguration, SmsConfiguration = SmsConfiguration, 
        UserPoolTags = UserPoolTags, AdminCreateUserConfig = AdminCreateUserConfig, 
        Schema = Schema, UserPoolAddOns = UserPoolAddOns)
    output <- create_user_pool_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates the user pool client
#'
#' Creates the user pool client.
#'
#' @param UserPoolId The user pool ID for the user pool where you want to create a user pool client.
#' @param ClientName The client name for the user pool client you would like to create.
#' @param GenerateSecret Boolean to specify whether you want to generate a secret for the user pool client being created.
#' @param RefreshTokenValidity The time limit, in days, after which the refresh token is no longer valid and cannot be used.
#' @param ReadAttributes The read attributes.
#' @param WriteAttributes The write attributes.
#' @param ExplicitAuthFlows The explicit authentication flows.
#' @param SupportedIdentityProviders A list of provider names for the identity providers that are supported on this client.
#' @param CallbackURLs A list of allowed redirect (callback) URLs for the identity providers.
#' 
#' A redirect URI must:
#' 
#' -   Be an absolute URI.
#' 
#' -   Be registered with the authorization server.
#' 
#' -   Not include a fragment component.
#' 
#' See [OAuth 2.0 - Redirection Endpoint](https://tools.ietf.org/html/rfc6749#section-3.1.2).
#' 
#' Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only.
#' 
#' App callback URLs such as myapp://example are also supported.
#' @param LogoutURLs A list of allowed logout URLs for the identity providers.
#' @param DefaultRedirectURI The default redirect URI. Must be in the `CallbackURLs` list.
#' 
#' A redirect URI must:
#' 
#' -   Be an absolute URI.
#' 
#' -   Be registered with the authorization server.
#' 
#' -   Not include a fragment component.
#' 
#' See [OAuth 2.0 - Redirection Endpoint](https://tools.ietf.org/html/rfc6749#section-3.1.2).
#' 
#' Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only.
#' 
#' App callback URLs such as myapp://example are also supported.
#' @param AllowedOAuthFlows Set to `code` to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint.
#' 
#' Set to `token` to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly.
#' @param AllowedOAuthScopes A list of allowed `OAuth` scopes. Currently supported values are `"phone"`, `"email"`, `"openid"`, and `"Cognito"`.
#' @param AllowedOAuthFlowsUserPoolClient Set to `True` if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.
#' @param AnalyticsConfiguration The Amazon Pinpoint analytics configuration for collecting metrics for this user pool.
#'
#' @examples
#'
#' @export
create_user_pool_client <- function (UserPoolId, ClientName, 
    GenerateSecret = NULL, RefreshTokenValidity = NULL, ReadAttributes = NULL, 
    WriteAttributes = NULL, ExplicitAuthFlows = NULL, SupportedIdentityProviders = NULL, 
    CallbackURLs = NULL, LogoutURLs = NULL, DefaultRedirectURI = NULL, 
    AllowedOAuthFlows = NULL, AllowedOAuthScopes = NULL, AllowedOAuthFlowsUserPoolClient = NULL, 
    AnalyticsConfiguration = NULL) 
{
    op <- Operation(name = "CreateUserPoolClient", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_user_pool_client_input(UserPoolId = UserPoolId, 
        ClientName = ClientName, GenerateSecret = GenerateSecret, 
        RefreshTokenValidity = RefreshTokenValidity, ReadAttributes = ReadAttributes, 
        WriteAttributes = WriteAttributes, ExplicitAuthFlows = ExplicitAuthFlows, 
        SupportedIdentityProviders = SupportedIdentityProviders, 
        CallbackURLs = CallbackURLs, LogoutURLs = LogoutURLs, 
        DefaultRedirectURI = DefaultRedirectURI, AllowedOAuthFlows = AllowedOAuthFlows, 
        AllowedOAuthScopes = AllowedOAuthScopes, AllowedOAuthFlowsUserPoolClient = AllowedOAuthFlowsUserPoolClient, 
        AnalyticsConfiguration = AnalyticsConfiguration)
    output <- create_user_pool_client_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new domain for a user pool
#'
#' Creates a new domain for a user pool.
#'
#' @param Domain The domain string.
#' @param UserPoolId The user pool ID.
#' @param CustomDomainConfig The configuration for a custom domain that hosts the sign-up and sign-in webpages for your application.
#' 
#' Provide this parameter only if you want to use own custom domain for your user pool. Otherwise, you can exclude this parameter and use the Amazon Cognito hosted domain instead.
#' 
#' For more information about the hosted domain and custom domains, see [Configuring a User Pool Domain](http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-assign-domain.html).
#'
#' @examples
#'
#' @export
create_user_pool_domain <- function (Domain, UserPoolId, CustomDomainConfig = NULL) 
{
    op <- Operation(name = "CreateUserPoolDomain", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_user_pool_domain_input(Domain = Domain, UserPoolId = UserPoolId, 
        CustomDomainConfig = CustomDomainConfig)
    output <- create_user_pool_domain_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a group
#'
#' Deletes a group. Currently only groups with no members can be deleted.
#' 
#' Requires developer credentials.
#'
#' @param GroupName The name of the group.
#' @param UserPoolId The user pool ID for the user pool.
#'
#' @examples
#'
#' @export
delete_group <- function (GroupName, UserPoolId) 
{
    op <- Operation(name = "DeleteGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_group_input(GroupName = GroupName, UserPoolId = UserPoolId)
    output <- delete_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an identity provider for a user pool
#'
#' Deletes an identity provider for a user pool.
#'
#' @param UserPoolId The user pool ID.
#' @param ProviderName The identity provider name.
#'
#' @examples
#'
#' @export
delete_identity_provider <- function (UserPoolId, ProviderName) 
{
    op <- Operation(name = "DeleteIdentityProvider", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_identity_provider_input(UserPoolId = UserPoolId, 
        ProviderName = ProviderName)
    output <- delete_identity_provider_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a resource server
#'
#' Deletes a resource server.
#'
#' @param UserPoolId The user pool ID for the user pool that hosts the resource server.
#' @param Identifier The identifier for the resource server.
#'
#' @examples
#'
#' @export
delete_resource_server <- function (UserPoolId, Identifier) 
{
    op <- Operation(name = "DeleteResourceServer", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_resource_server_input(UserPoolId = UserPoolId, 
        Identifier = Identifier)
    output <- delete_resource_server_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Allows a user to delete himself or herself
#'
#' Allows a user to delete himself or herself.
#'
#' @param AccessToken The access token from a request to delete a user.
#'
#' @examples
#'
#' @export
delete_user <- function (AccessToken) 
{
    op <- Operation(name = "DeleteUser", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_user_input(AccessToken = AccessToken)
    output <- delete_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the attributes for a user
#'
#' Deletes the attributes for a user.
#'
#' @param UserAttributeNames An array of strings representing the user attribute names you wish to delete.
#' 
#' For custom attributes, you must prepend the `custom:` prefix to the attribute name.
#' @param AccessToken The access token used in the request to delete user attributes.
#'
#' @examples
#'
#' @export
delete_user_attributes <- function (UserAttributeNames, AccessToken) 
{
    op <- Operation(name = "DeleteUserAttributes", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_user_attributes_input(UserAttributeNames = UserAttributeNames, 
        AccessToken = AccessToken)
    output <- delete_user_attributes_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified Amazon Cognito user pool
#'
#' Deletes the specified Amazon Cognito user pool.
#'
#' @param UserPoolId The user pool ID for the user pool you want to delete.
#'
#' @examples
#'
#' @export
delete_user_pool <- function (UserPoolId) 
{
    op <- Operation(name = "DeleteUserPool", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_user_pool_input(UserPoolId = UserPoolId)
    output <- delete_user_pool_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Allows the developer to delete the user pool client
#'
#' Allows the developer to delete the user pool client.
#'
#' @param UserPoolId The user pool ID for the user pool where you want to delete the client.
#' @param ClientId The app client ID of the app associated with the user pool.
#'
#' @examples
#'
#' @export
delete_user_pool_client <- function (UserPoolId, ClientId) 
{
    op <- Operation(name = "DeleteUserPoolClient", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_user_pool_client_input(UserPoolId = UserPoolId, 
        ClientId = ClientId)
    output <- delete_user_pool_client_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a domain for a user pool
#'
#' Deletes a domain for a user pool.
#'
#' @param Domain The domain string.
#' @param UserPoolId The user pool ID.
#'
#' @examples
#'
#' @export
delete_user_pool_domain <- function (Domain, UserPoolId) 
{
    op <- Operation(name = "DeleteUserPoolDomain", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_user_pool_domain_input(Domain = Domain, UserPoolId = UserPoolId)
    output <- delete_user_pool_domain_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about a specific identity provider
#'
#' Gets information about a specific identity provider.
#'
#' @param UserPoolId The user pool ID.
#' @param ProviderName The identity provider name.
#'
#' @examples
#'
#' @export
describe_identity_provider <- function (UserPoolId, ProviderName) 
{
    op <- Operation(name = "DescribeIdentityProvider", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_identity_provider_input(UserPoolId = UserPoolId, 
        ProviderName = ProviderName)
    output <- describe_identity_provider_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes a resource server
#'
#' Describes a resource server.
#'
#' @param UserPoolId The user pool ID for the user pool that hosts the resource server.
#' @param Identifier The identifier for the resource server
#'
#' @examples
#'
#' @export
describe_resource_server <- function (UserPoolId, Identifier) 
{
    op <- Operation(name = "DescribeResourceServer", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_resource_server_input(UserPoolId = UserPoolId, 
        Identifier = Identifier)
    output <- describe_resource_server_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the risk configuration
#'
#' Describes the risk configuration.
#'
#' @param UserPoolId The user pool ID.
#' @param ClientId The app client ID.
#'
#' @examples
#'
#' @export
describe_risk_configuration <- function (UserPoolId, ClientId = NULL) 
{
    op <- Operation(name = "DescribeRiskConfiguration", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_risk_configuration_input(UserPoolId = UserPoolId, 
        ClientId = ClientId)
    output <- describe_risk_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the user import job
#'
#' Describes the user import job.
#'
#' @param UserPoolId The user pool ID for the user pool that the users are being imported into.
#' @param JobId The job ID for the user import job.
#'
#' @examples
#'
#' @export
describe_user_import_job <- function (UserPoolId, JobId) 
{
    op <- Operation(name = "DescribeUserImportJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_user_import_job_input(UserPoolId = UserPoolId, 
        JobId = JobId)
    output <- describe_user_import_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the configuration information and metadata of the specified user pool
#'
#' Returns the configuration information and metadata of the specified user pool.
#'
#' @param UserPoolId The user pool ID for the user pool you want to describe.
#'
#' @examples
#'
#' @export
describe_user_pool <- function (UserPoolId) 
{
    op <- Operation(name = "DescribeUserPool", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_user_pool_input(UserPoolId = UserPoolId)
    output <- describe_user_pool_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Client method for returning the configuration information and metadata of the specified user pool app client
#'
#' Client method for returning the configuration information and metadata of the specified user pool app client.
#'
#' @param UserPoolId The user pool ID for the user pool you want to describe.
#' @param ClientId The app client ID of the app associated with the user pool.
#'
#' @examples
#'
#' @export
describe_user_pool_client <- function (UserPoolId, ClientId) 
{
    op <- Operation(name = "DescribeUserPoolClient", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_user_pool_client_input(UserPoolId = UserPoolId, 
        ClientId = ClientId)
    output <- describe_user_pool_client_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about a domain
#'
#' Gets information about a domain.
#'
#' @param Domain The domain string.
#'
#' @examples
#'
#' @export
describe_user_pool_domain <- function (Domain) 
{
    op <- Operation(name = "DescribeUserPoolDomain", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_user_pool_domain_input(Domain = Domain)
    output <- describe_user_pool_domain_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Forgets the specified device
#'
#' Forgets the specified device.
#'
#' @param DeviceKey The device key.
#' @param AccessToken The access token for the forgotten device request.
#'
#' @examples
#'
#' @export
forget_device <- function (DeviceKey, AccessToken = NULL) 
{
    op <- Operation(name = "ForgetDevice", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- forget_device_input(DeviceKey = DeviceKey, AccessToken = AccessToken)
    output <- forget_device_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Calling this API causes a message to be sent to the end user with a confirmation code that is required to change the user\'s password
#'
#' Calling this API causes a message to be sent to the end user with a confirmation code that is required to change the user\'s password. For the `Username` parameter, you can use the username or user alias. If a verified phone number exists for the user, the confirmation code is sent to the phone number. Otherwise, if a verified email exists, the confirmation code is sent to the email. If neither a verified phone number nor a verified email exists, `InvalidParameterException` is thrown. To use the confirmation code for resetting the password, call .
#'
#' @param ClientId The ID of the client associated with the user pool.
#' @param Username The user name of the user for whom you want to enter a code to reset a forgotten password.
#' @param SecretHash A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.
#' @param UserContextData Contextual data such as the user\'s device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
#' @param AnalyticsMetadata The Amazon Pinpoint analytics metadata for collecting metrics for `ForgotPassword` calls.
#'
#' @examples
#'
#' @export
forgot_password <- function (ClientId, Username, SecretHash = NULL, 
    UserContextData = NULL, AnalyticsMetadata = NULL) 
{
    op <- Operation(name = "ForgotPassword", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- forgot_password_input(ClientId = ClientId, Username = Username, 
        SecretHash = SecretHash, UserContextData = UserContextData, 
        AnalyticsMetadata = AnalyticsMetadata)
    output <- forgot_password_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the header information for the 
#'
#' Gets the header information for the .csv file to be used as input for the user import job.
#'
#' @param UserPoolId The user pool ID for the user pool that the users are to be imported into.
#'
#' @examples
#'
#' @export
get_csv_header <- function (UserPoolId) 
{
    op <- Operation(name = "GetCSVHeader", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_csv_header_input(UserPoolId = UserPoolId)
    output <- get_csv_header_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the device
#'
#' Gets the device.
#'
#' @param DeviceKey The device key.
#' @param AccessToken The access token.
#'
#' @examples
#'
#' @export
get_device <- function (DeviceKey, AccessToken = NULL) 
{
    op <- Operation(name = "GetDevice", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_device_input(DeviceKey = DeviceKey, AccessToken = AccessToken)
    output <- get_device_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a group
#'
#' Gets a group.
#' 
#' Requires developer credentials.
#'
#' @param GroupName The name of the group.
#' @param UserPoolId The user pool ID for the user pool.
#'
#' @examples
#'
#' @export
get_group <- function (GroupName, UserPoolId) 
{
    op <- Operation(name = "GetGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_group_input(GroupName = GroupName, UserPoolId = UserPoolId)
    output <- get_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the specified identity provider
#'
#' Gets the specified identity provider.
#'
#' @param UserPoolId The user pool ID.
#' @param IdpIdentifier The identity provider ID.
#'
#' @examples
#'
#' @export
get_identity_provider_by_identifier <- function (UserPoolId, 
    IdpIdentifier) 
{
    op <- Operation(name = "GetIdentityProviderByIdentifier", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- get_identity_provider_by_identifier_input(UserPoolId = UserPoolId, 
        IdpIdentifier = IdpIdentifier)
    output <- get_identity_provider_by_identifier_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' This method takes a user pool ID, and returns the signing certificate
#'
#' This method takes a user pool ID, and returns the signing certificate.
#'
#' @param UserPoolId The user pool ID.
#'
#' @examples
#'
#' @export
get_signing_certificate <- function (UserPoolId) 
{
    op <- Operation(name = "GetSigningCertificate", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_signing_certificate_input(UserPoolId = UserPoolId)
    output <- get_signing_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the UI Customization information for a particular app client\'s app UI, if there is something set
#'
#' Gets the UI Customization information for a particular app client\'s app UI, if there is something set. If nothing is set for the particular client, but there is an existing pool level customization (app `clientId` will be `ALL`), then that is returned. If nothing is present, then an empty shape is returned.
#'
#' @param UserPoolId The user pool ID for the user pool.
#' @param ClientId The client ID for the client app.
#'
#' @examples
#'
#' @export
get_ui_customization <- function (UserPoolId, ClientId = NULL) 
{
    op <- Operation(name = "GetUICustomization", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_ui_customization_input(UserPoolId = UserPoolId, 
        ClientId = ClientId)
    output <- get_ui_customization_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the user attributes and metadata for a user
#'
#' Gets the user attributes and metadata for a user.
#'
#' @param AccessToken The access token returned by the server response to get information about the user.
#'
#' @examples
#'
#' @export
get_user <- function (AccessToken) 
{
    op <- Operation(name = "GetUser", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- get_user_input(AccessToken = AccessToken)
    output <- get_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the user attribute verification code for the specified attribute name
#'
#' Gets the user attribute verification code for the specified attribute name.
#'
#' @param AccessToken The access token returned by the server response to get the user attribute verification code.
#' @param AttributeName The attribute name returned by the server response to get the user attribute verification code.
#'
#' @examples
#'
#' @export
get_user_attribute_verification_code <- function (AccessToken, 
    AttributeName) 
{
    op <- Operation(name = "GetUserAttributeVerificationCode", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- get_user_attribute_verification_code_input(AccessToken = AccessToken, 
        AttributeName = AttributeName)
    output <- get_user_attribute_verification_code_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the user pool multi-factor authentication (MFA) configuration
#'
#' Gets the user pool multi-factor authentication (MFA) configuration.
#'
#' @param UserPoolId The user pool ID.
#'
#' @examples
#'
#' @export
get_user_pool_mfa_config <- function (UserPoolId) 
{
    op <- Operation(name = "GetUserPoolMfaConfig", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_user_pool_mfa_config_input(UserPoolId = UserPoolId)
    output <- get_user_pool_mfa_config_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Signs out users from all devices
#'
#' Signs out users from all devices.
#'
#' @param AccessToken The access token.
#'
#' @examples
#'
#' @export
global_sign_out <- function (AccessToken) 
{
    op <- Operation(name = "GlobalSignOut", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- global_sign_out_input(AccessToken = AccessToken)
    output <- global_sign_out_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Initiates the authentication flow
#'
#' Initiates the authentication flow.
#'
#' @param AuthFlow The authentication flow for this call to execute. The API action will depend on this value. For example:
#' 
#' -   `REFRESH_TOKEN_AUTH` will take in a valid refresh token and return new tokens.
#' 
#' -   `USER_SRP_AUTH` will take in `USERNAME` and `SRP_A` and return the SRP variables to be used for next challenge execution.
#' 
#' -   `USER_PASSWORD_AUTH` will take in `USERNAME` and `PASSWORD` and return the next challenge or tokens.
#' 
#' Valid values include:
#' 
#' -   `USER_SRP_AUTH`: Authentication flow for the Secure Remote Password (SRP) protocol.
#' 
#' -   `REFRESH_TOKEN_AUTH`/`REFRESH_TOKEN`: Authentication flow for refreshing the access token and ID token by supplying a valid refresh token.
#' 
#' -   `CUSTOM_AUTH`: Custom authentication flow.
#' 
#' -   `USER_PASSWORD_AUTH`: Non-SRP authentication flow; USERNAME and PASSWORD are passed directly. If a user migration Lambda trigger is set, this flow will invoke the user migration Lambda if the USERNAME is not found in the user pool.
#' 
#' `ADMIN_NO_SRP_AUTH` is not a valid value.
#' @param ClientId The app client ID.
#' @param AuthParameters The authentication parameters. These are inputs corresponding to the `AuthFlow` that you are invoking. The required values depend on the value of `AuthFlow`:
#' 
#' -   For `USER_SRP_AUTH`: `USERNAME` (required), `SRP_A` (required), `SECRET_HASH` (required if the app client is configured with a client secret), `DEVICE_KEY`
#' 
#' -   For `REFRESH_TOKEN_AUTH/REFRESH_TOKEN`: `REFRESH_TOKEN` (required), `SECRET_HASH` (required if the app client is configured with a client secret), `DEVICE_KEY`
#' 
#' -   For `CUSTOM_AUTH`: `USERNAME` (required), `SECRET_HASH` (if app client is configured with client secret), `DEVICE_KEY`
#' @param ClientMetadata This is a random key-value pair map which can contain any key and will be passed to your PreAuthentication Lambda trigger as-is. It can be used to implement additional validations around authentication.
#' @param AnalyticsMetadata The Amazon Pinpoint analytics metadata for collecting metrics for `InitiateAuth` calls.
#' @param UserContextData Contextual data such as the user\'s device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
#'
#' @examples
#'
#' @export
initiate_auth <- function (AuthFlow, ClientId, AuthParameters = NULL, 
    ClientMetadata = NULL, AnalyticsMetadata = NULL, UserContextData = NULL) 
{
    op <- Operation(name = "InitiateAuth", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- initiate_auth_input(AuthFlow = AuthFlow, ClientId = ClientId, 
        AuthParameters = AuthParameters, ClientMetadata = ClientMetadata, 
        AnalyticsMetadata = AnalyticsMetadata, UserContextData = UserContextData)
    output <- initiate_auth_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the devices
#'
#' Lists the devices.
#'
#' @param AccessToken The access tokens for the request to list devices.
#' @param Limit The limit of the device request.
#' @param PaginationToken The pagination token for the list request.
#'
#' @examples
#'
#' @export
list_devices <- function (AccessToken, Limit = NULL, PaginationToken = NULL) 
{
    op <- Operation(name = "ListDevices", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_devices_input(AccessToken = AccessToken, Limit = Limit, 
        PaginationToken = PaginationToken)
    output <- list_devices_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the groups associated with a user pool
#'
#' Lists the groups associated with a user pool.
#' 
#' Requires developer credentials.
#'
#' @param UserPoolId The user pool ID for the user pool.
#' @param Limit The limit of the request to list groups.
#' @param NextToken An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
#'
#' @examples
#'
#' @export
list_groups <- function (UserPoolId, Limit = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_groups_input(UserPoolId = UserPoolId, Limit = Limit, 
        NextToken = NextToken)
    output <- list_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists information about all identity providers for a user pool
#'
#' Lists information about all identity providers for a user pool.
#'
#' @param UserPoolId The user pool ID.
#' @param MaxResults The maximum number of identity providers to return.
#' @param NextToken A pagination token.
#'
#' @examples
#'
#' @export
list_identity_providers <- function (UserPoolId, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "ListIdentityProviders", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_identity_providers_input(UserPoolId = UserPoolId, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- list_identity_providers_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the resource servers for a user pool
#'
#' Lists the resource servers for a user pool.
#'
#' @param UserPoolId The user pool ID for the user pool.
#' @param MaxResults The maximum number of resource servers to return.
#' @param NextToken A pagination token.
#'
#' @examples
#'
#' @export
list_resource_servers <- function (UserPoolId, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "ListResourceServers", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_resource_servers_input(UserPoolId = UserPoolId, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- list_resource_servers_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the user import jobs
#'
#' Lists the user import jobs.
#'
#' @param UserPoolId The user pool ID for the user pool that the users are being imported into.
#' @param MaxResults The maximum number of import jobs you want the request to return.
#' @param PaginationToken An identifier that was returned from the previous call to `ListUserImportJobs`, which can be used to return the next set of import jobs in the list.
#'
#' @examples
#'
#' @export
list_user_import_jobs <- function (UserPoolId, MaxResults, PaginationToken = NULL) 
{
    op <- Operation(name = "ListUserImportJobs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_user_import_jobs_input(UserPoolId = UserPoolId, 
        MaxResults = MaxResults, PaginationToken = PaginationToken)
    output <- list_user_import_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the clients that have been created for the specified user pool
#'
#' Lists the clients that have been created for the specified user pool.
#'
#' @param UserPoolId The user pool ID for the user pool where you want to list user pool clients.
#' @param MaxResults The maximum number of results you want the request to return when listing the user pool clients.
#' @param NextToken An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
#'
#' @examples
#'
#' @export
list_user_pool_clients <- function (UserPoolId, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "ListUserPoolClients", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_user_pool_clients_input(UserPoolId = UserPoolId, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- list_user_pool_clients_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the user pools associated with an AWS account
#'
#' Lists the user pools associated with an AWS account.
#'
#' @param MaxResults The maximum number of results you want the request to return when listing the user pools.
#' @param NextToken An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
#'
#' @examples
#'
#' @export
list_user_pools <- function (MaxResults, NextToken = NULL) 
{
    op <- Operation(name = "ListUserPools", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_user_pools_input(MaxResults = MaxResults, NextToken = NextToken)
    output <- list_user_pools_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the users in the Amazon Cognito user pool
#'
#' Lists the users in the Amazon Cognito user pool.
#'
#' @param UserPoolId The user pool ID for the user pool on which the search should be performed.
#' @param AttributesToGet An array of strings, where each string is the name of a user attribute to be returned for each user in the search results. If the array is null, all attributes are returned.
#' @param Limit Maximum number of users to be returned.
#' @param PaginationToken An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
#' @param Filter A filter string of the form \"*AttributeName* *Filter-Type* \"*AttributeValue*\"\". Quotation marks within the filter string must be escaped using the backslash (\\) character. For example, \"`family_name` = \\\"Reddy\\\"\".
#' 
#' -   *AttributeName*: The name of the attribute to search for. You can only search for one attribute at a time.
#' 
#' -   *Filter-Type*: For an exact match, use =, for example, \"`given_name` = \\\"Jon\\\"\". For a prefix (\"starts with\") match, use \^=, for example, \"`given_name` \^= \\\"Jon\\\"\".
#' 
#' -   *AttributeValue*: The attribute value that must be matched for each user.
#' 
#' If the filter string is empty, `ListUsers` returns all users in the user pool.
#' 
#' You can only search for the following standard attributes:
#' 
#' -   `username` (case-sensitive)
#' 
#' -   `email`
#' 
#' -   `phone_number`
#' 
#' -   `name`
#' 
#' -   `given_name`
#' 
#' -   `family_name`
#' 
#' -   `preferred_username`
#' 
#' -   `cognito:user_status` (called **Status** in the Console) (case-insensitive)
#' 
#' -   `status (called Enabled in the Console) (case-sensitive)Enabled in the Console) (case-sensitive)`
#' 
#' -   `sub`
#' 
#' Custom attributes are not searchable.
#' 
#' For more information, see [Searching for Users Using the ListUsers API](http://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-using-listusers-api) and [Examples of Using the ListUsers API](http://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-listusers-api-examples) in the *Amazon Cognito Developer Guide*.
#'
#' @examples
#'
#' @export
list_users <- function (UserPoolId, AttributesToGet = NULL, Limit = NULL, 
    PaginationToken = NULL, Filter = NULL) 
{
    op <- Operation(name = "ListUsers", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_users_input(UserPoolId = UserPoolId, AttributesToGet = AttributesToGet, 
        Limit = Limit, PaginationToken = PaginationToken, Filter = Filter)
    output <- list_users_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the users in the specified group
#'
#' Lists the users in the specified group.
#' 
#' Requires developer credentials.
#'
#' @param UserPoolId The user pool ID for the user pool.
#' @param GroupName The name of the group.
#' @param Limit The limit of the request to list users.
#' @param NextToken An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
#'
#' @examples
#'
#' @export
list_users_in_group <- function (UserPoolId, GroupName, Limit = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "ListUsersInGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_users_in_group_input(UserPoolId = UserPoolId, 
        GroupName = GroupName, Limit = Limit, NextToken = NextToken)
    output <- list_users_in_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Resends the confirmation (for confirmation of registration) to a specific user in the user pool
#'
#' Resends the confirmation (for confirmation of registration) to a specific user in the user pool.
#'
#' @param ClientId The ID of the client associated with the user pool.
#' @param Username The user name of the user to whom you wish to resend a confirmation code.
#' @param SecretHash A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.
#' @param UserContextData Contextual data such as the user\'s device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
#' @param AnalyticsMetadata The Amazon Pinpoint analytics metadata for collecting metrics for `ResendConfirmationCode` calls.
#'
#' @examples
#'
#' @export
resend_confirmation_code <- function (ClientId, Username, SecretHash = NULL, 
    UserContextData = NULL, AnalyticsMetadata = NULL) 
{
    op <- Operation(name = "ResendConfirmationCode", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- resend_confirmation_code_input(ClientId = ClientId, 
        Username = Username, SecretHash = SecretHash, UserContextData = UserContextData, 
        AnalyticsMetadata = AnalyticsMetadata)
    output <- resend_confirmation_code_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Responds to the authentication challenge
#'
#' Responds to the authentication challenge.
#'
#' @param ClientId The app client ID.
#' @param ChallengeName The challenge name. For more information, see .
#' 
#' `ADMIN_NO_SRP_AUTH` is not a valid value.
#' @param Session The session which should be passed both ways in challenge-response calls to the service. If `InitiateAuth` or `RespondToAuthChallenge` API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next `RespondToAuthChallenge` API call.
#' @param ChallengeResponses The challenge responses. These are inputs corresponding to the value of `ChallengeName`, for example:
#' 
#' -   `SMS_MFA`: `SMS_MFA_CODE`, `USERNAME`, `SECRET_HASH` (if app client is configured with client secret).
#' 
#' -   `PASSWORD_VERIFIER`: `PASSWORD_CLAIM_SIGNATURE`, `PASSWORD_CLAIM_SECRET_BLOCK`, `TIMESTAMP`, `USERNAME`, `SECRET_HASH` (if app client is configured with client secret).
#' 
#' -   `NEW_PASSWORD_REQUIRED`: `NEW_PASSWORD`, any other required attributes, `USERNAME`, `SECRET_HASH` (if app client is configured with client secret).
#' @param AnalyticsMetadata The Amazon Pinpoint analytics metadata for collecting metrics for `RespondToAuthChallenge` calls.
#' @param UserContextData Contextual data such as the user\'s device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
#'
#' @examples
#'
#' @export
respond_to_auth_challenge <- function (ClientId, ChallengeName, 
    Session = NULL, ChallengeResponses = NULL, AnalyticsMetadata = NULL, 
    UserContextData = NULL) 
{
    op <- Operation(name = "RespondToAuthChallenge", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- respond_to_auth_challenge_input(ClientId = ClientId, 
        ChallengeName = ChallengeName, Session = Session, ChallengeResponses = ChallengeResponses, 
        AnalyticsMetadata = AnalyticsMetadata, UserContextData = UserContextData)
    output <- respond_to_auth_challenge_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Configures actions on detected risks
#'
#' Configures actions on detected risks. To delete the risk configuration for `UserPoolId` or `ClientId`, pass null values for all four configuration types.
#' 
#' To enable Amazon Cognito advanced security features, update the user pool to include the `UserPoolAddOns` key`AdvancedSecurityMode`.
#' 
#' See .
#'
#' @param UserPoolId The user pool ID.
#' @param ClientId The app client ID. If `ClientId` is null, then the risk configuration is mapped to `userPoolId`. When the client ID is null, the same risk configuration is applied to all the clients in the userPool.
#' 
#' Otherwise, `ClientId` is mapped to the client. When the client ID is not null, the user pool configuration is overridden and the risk configuration for the client is used instead.
#' @param CompromisedCredentialsRiskConfiguration The compromised credentials risk configuration.
#' @param AccountTakeoverRiskConfiguration The account takeover risk configuration.
#' @param RiskExceptionConfiguration The configuration to override the risk decision.
#'
#' @examples
#'
#' @export
set_risk_configuration <- function (UserPoolId, ClientId = NULL, 
    CompromisedCredentialsRiskConfiguration = NULL, AccountTakeoverRiskConfiguration = NULL, 
    RiskExceptionConfiguration = NULL) 
{
    op <- Operation(name = "SetRiskConfiguration", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- set_risk_configuration_input(UserPoolId = UserPoolId, 
        ClientId = ClientId, CompromisedCredentialsRiskConfiguration = CompromisedCredentialsRiskConfiguration, 
        AccountTakeoverRiskConfiguration = AccountTakeoverRiskConfiguration, 
        RiskExceptionConfiguration = RiskExceptionConfiguration)
    output <- set_risk_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the UI customization information for a user pool\'s built-in app UI
#'
#' Sets the UI customization information for a user pool\'s built-in app UI.
#' 
#' You can specify app UI customization settings for a single client (with a specific `clientId`) or for all clients (by setting the `clientId` to `ALL`). If you specify `ALL`, the default configuration will be used for every client that has no UI customization set previously. If you specify UI customization settings for a particular client, it will no longer fall back to the `ALL` configuration.
#' 
#' To use this API, your user pool must have a domain associated with it. Otherwise, there is no place to host the app\'s pages, and the service will throw an error.
#'
#' @param UserPoolId The user pool ID for the user pool.
#' @param ClientId The client ID for the client app.
#' @param CSS The CSS values in the UI customization.
#' @param ImageFile The uploaded logo image for the UI customization.
#'
#' @examples
#'
#' @export
set_ui_customization <- function (UserPoolId, ClientId = NULL, 
    CSS = NULL, ImageFile = NULL) 
{
    op <- Operation(name = "SetUICustomization", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- set_ui_customization_input(UserPoolId = UserPoolId, 
        ClientId = ClientId, CSS = CSS, ImageFile = ImageFile)
    output <- set_ui_customization_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Set the user\'s multi-factor authentication (MFA) method preference
#'
#' Set the user\'s multi-factor authentication (MFA) method preference.
#'
#' @param AccessToken The access token.
#' @param SMSMfaSettings The SMS text message multi-factor authentication (MFA) settings.
#' @param SoftwareTokenMfaSettings The time-based one-time password software token MFA settings.
#'
#' @examples
#'
#' @export
set_user_mfa_preference <- function (AccessToken, SMSMfaSettings = NULL, 
    SoftwareTokenMfaSettings = NULL) 
{
    op <- Operation(name = "SetUserMFAPreference", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- set_user_mfa_preference_input(AccessToken = AccessToken, 
        SMSMfaSettings = SMSMfaSettings, SoftwareTokenMfaSettings = SoftwareTokenMfaSettings)
    output <- set_user_mfa_preference_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Set the user pool MFA configuration
#'
#' Set the user pool MFA configuration.
#'
#' @param UserPoolId The user pool ID.
#' @param SmsMfaConfiguration The SMS text message MFA configuration.
#' @param SoftwareTokenMfaConfiguration The software token MFA configuration.
#' @param MfaConfiguration The MFA configuration.
#'
#' @examples
#'
#' @export
set_user_pool_mfa_config <- function (UserPoolId, SmsMfaConfiguration = NULL, 
    SoftwareTokenMfaConfiguration = NULL, MfaConfiguration = NULL) 
{
    op <- Operation(name = "SetUserPoolMfaConfig", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- set_user_pool_mfa_config_input(UserPoolId = UserPoolId, 
        SmsMfaConfiguration = SmsMfaConfiguration, SoftwareTokenMfaConfiguration = SoftwareTokenMfaConfiguration, 
        MfaConfiguration = MfaConfiguration)
    output <- set_user_pool_mfa_config_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the user settings like multi-factor authentication (MFA)
#'
#' Sets the user settings like multi-factor authentication (MFA). If MFA is to be removed for a particular attribute pass the attribute with code delivery as null. If null list is passed, all MFA options are removed.
#'
#' @param AccessToken The access token for the set user settings request.
#' @param MFAOptions Specifies the options for MFA (e.g., email or phone number).
#'
#' @examples
#'
#' @export
set_user_settings <- function (AccessToken, MFAOptions) 
{
    op <- Operation(name = "SetUserSettings", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- set_user_settings_input(AccessToken = AccessToken, 
        MFAOptions = MFAOptions)
    output <- set_user_settings_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Registers the user in the specified user pool and creates a user name, password, and user attributes
#'
#' Registers the user in the specified user pool and creates a user name, password, and user attributes.
#'
#' @param ClientId The ID of the client associated with the user pool.
#' @param Username The user name of the user you wish to register.
#' @param Password The password of the user you wish to register.
#' @param SecretHash A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.
#' @param UserAttributes An array of name-value pairs representing user attributes.
#' 
#' For custom attributes, you must prepend the `custom:` prefix to the attribute name.
#' @param ValidationData The validation data in the request to register a user.
#' @param AnalyticsMetadata The Amazon Pinpoint analytics metadata for collecting metrics for `SignUp` calls.
#' @param UserContextData Contextual data such as the user\'s device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
#'
#' @examples
#'
#' @export
sign_up <- function (ClientId, Username, Password, SecretHash = NULL, 
    UserAttributes = NULL, ValidationData = NULL, AnalyticsMetadata = NULL, 
    UserContextData = NULL) 
{
    op <- Operation(name = "SignUp", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- sign_up_input(ClientId = ClientId, Username = Username, 
        Password = Password, SecretHash = SecretHash, UserAttributes = UserAttributes, 
        ValidationData = ValidationData, AnalyticsMetadata = AnalyticsMetadata, 
        UserContextData = UserContextData)
    output <- sign_up_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts the user import
#'
#' Starts the user import.
#'
#' @param UserPoolId The user pool ID for the user pool that the users are being imported into.
#' @param JobId The job ID for the user import job.
#'
#' @examples
#'
#' @export
start_user_import_job <- function (UserPoolId, JobId) 
{
    op <- Operation(name = "StartUserImportJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_user_import_job_input(UserPoolId = UserPoolId, 
        JobId = JobId)
    output <- start_user_import_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops the user import job
#'
#' Stops the user import job.
#'
#' @param UserPoolId The user pool ID for the user pool that the users are being imported into.
#' @param JobId The job ID for the user import job.
#'
#' @examples
#'
#' @export
stop_user_import_job <- function (UserPoolId, JobId) 
{
    op <- Operation(name = "StopUserImportJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_user_import_job_input(UserPoolId = UserPoolId, 
        JobId = JobId)
    output <- stop_user_import_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides the feedback for an authentication event whether it was from a valid user or not
#'
#' Provides the feedback for an authentication event whether it was from a valid user or not. This feedback is used for improving the risk evaluation decision for the user pool as part of Amazon Cognito advanced security.
#'
#' @param UserPoolId The user pool ID.
#' @param Username The user pool username.
#' @param EventId The event ID.
#' @param FeedbackToken The feedback token.
#' @param FeedbackValue The authentication event feedback value.
#'
#' @examples
#'
#' @export
update_auth_event_feedback <- function (UserPoolId, Username, 
    EventId, FeedbackToken, FeedbackValue) 
{
    op <- Operation(name = "UpdateAuthEventFeedback", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_auth_event_feedback_input(UserPoolId = UserPoolId, 
        Username = Username, EventId = EventId, FeedbackToken = FeedbackToken, 
        FeedbackValue = FeedbackValue)
    output <- update_auth_event_feedback_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the device status
#'
#' Updates the device status.
#'
#' @param AccessToken The access token.
#' @param DeviceKey The device key.
#' @param DeviceRememberedStatus The status of whether a device is remembered.
#'
#' @examples
#'
#' @export
update_device_status <- function (AccessToken, DeviceKey, DeviceRememberedStatus = NULL) 
{
    op <- Operation(name = "UpdateDeviceStatus", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_device_status_input(AccessToken = AccessToken, 
        DeviceKey = DeviceKey, DeviceRememberedStatus = DeviceRememberedStatus)
    output <- update_device_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the specified group with the specified attributes
#'
#' Updates the specified group with the specified attributes.
#' 
#' Requires developer credentials.
#'
#' @param GroupName The name of the group.
#' @param UserPoolId The user pool ID for the user pool.
#' @param Description A string containing the new description of the group.
#' @param RoleArn The new role ARN for the group. This is used for setting the `cognito:roles` and `cognito:preferred_role` claims in the token.
#' @param Precedence The new precedence value for the group. For more information about this parameter, see .
#'
#' @examples
#'
#' @export
update_group <- function (GroupName, UserPoolId, Description = NULL, 
    RoleArn = NULL, Precedence = NULL) 
{
    op <- Operation(name = "UpdateGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_group_input(GroupName = GroupName, UserPoolId = UserPoolId, 
        Description = Description, RoleArn = RoleArn, Precedence = Precedence)
    output <- update_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates identity provider information for a user pool
#'
#' Updates identity provider information for a user pool.
#'
#' @param UserPoolId The user pool ID.
#' @param ProviderName The identity provider name.
#' @param ProviderDetails The identity provider details to be updated, such as `MetadataURL` and `MetadataFile`.
#' @param AttributeMapping The identity provider attribute mapping to be changed.
#' @param IdpIdentifiers A list of identity provider identifiers.
#'
#' @examples
#'
#' @export
update_identity_provider <- function (UserPoolId, ProviderName, 
    ProviderDetails = NULL, AttributeMapping = NULL, IdpIdentifiers = NULL) 
{
    op <- Operation(name = "UpdateIdentityProvider", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_identity_provider_input(UserPoolId = UserPoolId, 
        ProviderName = ProviderName, ProviderDetails = ProviderDetails, 
        AttributeMapping = AttributeMapping, IdpIdentifiers = IdpIdentifiers)
    output <- update_identity_provider_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the name and scopes of resource server
#'
#' Updates the name and scopes of resource server. All other fields are read-only.
#'
#' @param UserPoolId The user pool ID for the user pool.
#' @param Identifier The identifier for the resource server.
#' @param Name The name of the resource server.
#' @param Scopes The scope values to be set for the resource server.
#'
#' @examples
#'
#' @export
update_resource_server <- function (UserPoolId, Identifier, Name, 
    Scopes = NULL) 
{
    op <- Operation(name = "UpdateResourceServer", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_resource_server_input(UserPoolId = UserPoolId, 
        Identifier = Identifier, Name = Name, Scopes = Scopes)
    output <- update_resource_server_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Allows a user to update a specific attribute (one at a time)
#'
#' Allows a user to update a specific attribute (one at a time).
#'
#' @param UserAttributes An array of name-value pairs representing user attributes.
#' 
#' For custom attributes, you must prepend the `custom:` prefix to the attribute name.
#' @param AccessToken The access token for the request to update user attributes.
#'
#' @examples
#'
#' @export
update_user_attributes <- function (UserAttributes, AccessToken) 
{
    op <- Operation(name = "UpdateUserAttributes", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_user_attributes_input(UserAttributes = UserAttributes, 
        AccessToken = AccessToken)
    output <- update_user_attributes_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the specified user pool with the specified attributes
#'
#' Updates the specified user pool with the specified attributes. If you don\'t provide a value for an attribute, it will be set to the default value. You can get a list of the current user pool settings with .
#'
#' @param UserPoolId The user pool ID for the user pool you want to update.
#' @param Policies A container with the policies you wish to update in a user pool.
#' @param LambdaConfig The AWS Lambda configuration information from the request to update the user pool.
#' @param AutoVerifiedAttributes The attributes that are automatically verified when the Amazon Cognito service makes a request to update user pools.
#' @param SmsVerificationMessage A container with information about the SMS verification message.
#' @param EmailVerificationMessage The contents of the email verification message.
#' @param EmailVerificationSubject The subject of the email verification message.
#' @param VerificationMessageTemplate The template for verification messages.
#' @param SmsAuthenticationMessage The contents of the SMS authentication message.
#' @param MfaConfiguration Can be one of the following values:
#' 
#' -   `OFF` - MFA tokens are not required and cannot be specified during user registration.
#' 
#' -   `ON` - MFA tokens are required for all user registrations. You can only specify required when you are initially creating a user pool.
#' 
#' -   `OPTIONAL` - Users have the option when registering to create an MFA token.
#' @param DeviceConfiguration Device configuration.
#' @param EmailConfiguration Email configuration.
#' @param SmsConfiguration SMS configuration.
#' @param UserPoolTags The cost allocation tags for the user pool. For more information, see [Adding Cost Allocation Tags to Your User Pool](http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html)
#' @param AdminCreateUserConfig The configuration for `AdminCreateUser` requests.
#' @param UserPoolAddOns Used to enable advanced security risk detection. Set the key `AdvancedSecurityMode` to the value \"AUDIT\".
#'
#' @examples
#'
#' @export
update_user_pool <- function (UserPoolId, Policies = NULL, LambdaConfig = NULL, 
    AutoVerifiedAttributes = NULL, SmsVerificationMessage = NULL, 
    EmailVerificationMessage = NULL, EmailVerificationSubject = NULL, 
    VerificationMessageTemplate = NULL, SmsAuthenticationMessage = NULL, 
    MfaConfiguration = NULL, DeviceConfiguration = NULL, EmailConfiguration = NULL, 
    SmsConfiguration = NULL, UserPoolTags = NULL, AdminCreateUserConfig = NULL, 
    UserPoolAddOns = NULL) 
{
    op <- Operation(name = "UpdateUserPool", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_user_pool_input(UserPoolId = UserPoolId, 
        Policies = Policies, LambdaConfig = LambdaConfig, AutoVerifiedAttributes = AutoVerifiedAttributes, 
        SmsVerificationMessage = SmsVerificationMessage, EmailVerificationMessage = EmailVerificationMessage, 
        EmailVerificationSubject = EmailVerificationSubject, 
        VerificationMessageTemplate = VerificationMessageTemplate, 
        SmsAuthenticationMessage = SmsAuthenticationMessage, 
        MfaConfiguration = MfaConfiguration, DeviceConfiguration = DeviceConfiguration, 
        EmailConfiguration = EmailConfiguration, SmsConfiguration = SmsConfiguration, 
        UserPoolTags = UserPoolTags, AdminCreateUserConfig = AdminCreateUserConfig, 
        UserPoolAddOns = UserPoolAddOns)
    output <- update_user_pool_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the specified user pool app client with the specified attributes
#'
#' Updates the specified user pool app client with the specified attributes. If you don\'t provide a value for an attribute, it will be set to the default value. You can get a list of the current user pool app client settings with .
#'
#' @param UserPoolId The user pool ID for the user pool where you want to update the user pool client.
#' @param ClientId The ID of the client associated with the user pool.
#' @param ClientName The client name from the update user pool client request.
#' @param RefreshTokenValidity The time limit, in days, after which the refresh token is no longer valid and cannot be used.
#' @param ReadAttributes The read-only attributes of the user pool.
#' @param WriteAttributes The writeable attributes of the user pool.
#' @param ExplicitAuthFlows Explicit authentication flows.
#' @param SupportedIdentityProviders A list of provider names for the identity providers that are supported on this client.
#' @param CallbackURLs A list of allowed redirect (callback) URLs for the identity providers.
#' 
#' A redirect URI must:
#' 
#' -   Be an absolute URI.
#' 
#' -   Be registered with the authorization server.
#' 
#' -   Not include a fragment component.
#' 
#' See [OAuth 2.0 - Redirection Endpoint](https://tools.ietf.org/html/rfc6749#section-3.1.2).
#' 
#' Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only.
#' 
#' App callback URLs such as myapp://example are also supported.
#' @param LogoutURLs A list of allowed logout URLs for the identity providers.
#' @param DefaultRedirectURI The default redirect URI. Must be in the `CallbackURLs` list.
#' 
#' A redirect URI must:
#' 
#' -   Be an absolute URI.
#' 
#' -   Be registered with the authorization server.
#' 
#' -   Not include a fragment component.
#' 
#' See [OAuth 2.0 - Redirection Endpoint](https://tools.ietf.org/html/rfc6749#section-3.1.2).
#' 
#' Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only.
#' 
#' App callback URLs such as myapp://example are also supported.
#' @param AllowedOAuthFlows Set to `code` to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint.
#' 
#' Set to `token` to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly.
#' @param AllowedOAuthScopes A list of allowed `OAuth` scopes. Currently supported values are `"phone"`, `"email"`, `"openid"`, and `"Cognito"`.
#' @param AllowedOAuthFlowsUserPoolClient Set to TRUE if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.
#' @param AnalyticsConfiguration The Amazon Pinpoint analytics configuration for collecting metrics for this user pool.
#'
#' @examples
#'
#' @export
update_user_pool_client <- function (UserPoolId, ClientId, ClientName = NULL, 
    RefreshTokenValidity = NULL, ReadAttributes = NULL, WriteAttributes = NULL, 
    ExplicitAuthFlows = NULL, SupportedIdentityProviders = NULL, 
    CallbackURLs = NULL, LogoutURLs = NULL, DefaultRedirectURI = NULL, 
    AllowedOAuthFlows = NULL, AllowedOAuthScopes = NULL, AllowedOAuthFlowsUserPoolClient = NULL, 
    AnalyticsConfiguration = NULL) 
{
    op <- Operation(name = "UpdateUserPoolClient", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_user_pool_client_input(UserPoolId = UserPoolId, 
        ClientId = ClientId, ClientName = ClientName, RefreshTokenValidity = RefreshTokenValidity, 
        ReadAttributes = ReadAttributes, WriteAttributes = WriteAttributes, 
        ExplicitAuthFlows = ExplicitAuthFlows, SupportedIdentityProviders = SupportedIdentityProviders, 
        CallbackURLs = CallbackURLs, LogoutURLs = LogoutURLs, 
        DefaultRedirectURI = DefaultRedirectURI, AllowedOAuthFlows = AllowedOAuthFlows, 
        AllowedOAuthScopes = AllowedOAuthScopes, AllowedOAuthFlowsUserPoolClient = AllowedOAuthFlowsUserPoolClient, 
        AnalyticsConfiguration = AnalyticsConfiguration)
    output <- update_user_pool_client_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Use this API to register a user\'s entered TOTP code and mark the user\'s software token MFA status as \"verified\" if successful
#'
#' Use this API to register a user\'s entered TOTP code and mark the user\'s software token MFA status as \"verified\" if successful. The request takes an access token or a session string, but not both.
#'
#' @param UserCode The one time password computed using the secret code returned by
#' @param AccessToken The access token.
#' @param Session The session which should be passed both ways in challenge-response calls to the service.
#' @param FriendlyDeviceName The friendly device name.
#'
#' @examples
#'
#' @export
verify_software_token <- function (UserCode, AccessToken = NULL, 
    Session = NULL, FriendlyDeviceName = NULL) 
{
    op <- Operation(name = "VerifySoftwareToken", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- verify_software_token_input(UserCode = UserCode, 
        AccessToken = AccessToken, Session = Session, FriendlyDeviceName = FriendlyDeviceName)
    output <- verify_software_token_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Verifies the specified user attributes in the user pool
#'
#' Verifies the specified user attributes in the user pool.
#'
#' @param AccessToken Represents the access token of the request to verify user attributes.
#' @param AttributeName The attribute name in the request to verify user attributes.
#' @param Code The verification code in the request to verify user attributes.
#'
#' @examples
#'
#' @export
verify_user_attribute <- function (AccessToken, AttributeName, 
    Code) 
{
    op <- Operation(name = "VerifyUserAttribute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- verify_user_attribute_input(AccessToken = AccessToken, 
        AttributeName = AttributeName, Code = Code)
    output <- verify_user_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
