add_custom_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), CustomAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "CustomAttributeNameType", type = "string", max = 20L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        AttributeDataType = structure(logical(0), shape = "AttributeDataType", 
            type = "string"), DeveloperOnlyAttribute = structure(logical(0), 
            shape = "BooleanType", box = TRUE, type = "boolean"), 
        Mutable = structure(logical(0), shape = "BooleanType", 
            box = TRUE, type = "boolean"), Required = structure(logical(0), 
            shape = "BooleanType", box = TRUE, type = "boolean"), 
        NumberAttributeConstraints = structure(list(MinValue = structure(logical(0), 
            shape = "StringType", type = "string"), MaxValue = structure(logical(0), 
            shape = "StringType", type = "string")), shape = "NumberAttributeConstraintsType", 
            type = "structure"), StringAttributeConstraints = structure(list(MinLength = structure(logical(0), 
            shape = "StringType", type = "string"), MaxLength = structure(logical(0), 
            shape = "StringType", type = "string")), shape = "StringAttributeConstraintsType", 
            type = "structure")), shape = "SchemaAttributeType", 
        type = "structure")), shape = "CustomAttributesListType", 
        type = "list", max = 25L, min = 1L)), shape = "AddCustomAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

add_custom_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AddCustomAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

admin_add_user_to_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), GroupName = structure(logical(0), 
        shape = "GroupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "AdminAddUserToGroupRequest", type = "structure")
    return(populate(args, shape))
}

admin_add_user_to_group_output <- function () 
{
    return(list())
}

admin_confirm_sign_up_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE)), shape = "AdminConfirmSignUpRequest", 
        type = "structure")
    return(populate(args, shape))
}

admin_confirm_sign_up_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AdminConfirmSignUpResponse", 
        type = "structure")
    return(populate(args, shape))
}

admin_create_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), UserAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        Value = structure(logical(0), shape = "AttributeValueType", 
            type = "string", max = 2048L, sensitive = TRUE)), 
        shape = "AttributeType", type = "structure")), shape = "AttributeListType", 
        type = "list"), ValidationData = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        Value = structure(logical(0), shape = "AttributeValueType", 
            type = "string", max = 2048L, sensitive = TRUE)), 
        shape = "AttributeType", type = "structure")), shape = "AttributeListType", 
        type = "list"), TemporaryPassword = structure(logical(0), 
        shape = "PasswordType", type = "string", max = 256L, 
        min = 6L, pattern = "[\\S]+", sensitive = TRUE), ForceAliasCreation = structure(logical(0), 
        shape = "ForceAliasCreation", type = "boolean"), MessageAction = structure(logical(0), 
        shape = "MessageActionType", type = "string"), DesiredDeliveryMediums = structure(list(structure(logical(0), 
        shape = "DeliveryMediumType", type = "string")), shape = "DeliveryMediumListType", 
        type = "list")), shape = "AdminCreateUserRequest", type = "structure")
    return(populate(args, shape))
}

admin_create_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(User = structure(list(Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), Attributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        Value = structure(logical(0), shape = "AttributeValueType", 
            type = "string", max = 2048L, sensitive = TRUE)), 
        shape = "AttributeType", type = "structure")), shape = "AttributeListType", 
        type = "list"), UserCreateDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), UserLastModifiedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), Enabled = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), UserStatus = structure(logical(0), 
        shape = "UserStatusType", type = "string"), MFAOptions = structure(list(structure(list(DeliveryMedium = structure(logical(0), 
        shape = "DeliveryMediumType", type = "string"), AttributeName = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "MFAOptionType", type = "structure")), shape = "MFAOptionListType", 
        type = "list")), shape = "UserType", type = "structure")), 
        shape = "AdminCreateUserResponse", type = "structure")
    return(populate(args, shape))
}

admin_delete_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE)), shape = "AdminDeleteUserRequest", 
        type = "structure")
    return(populate(args, shape))
}

admin_delete_user_output <- function () 
{
    return(list())
}

admin_delete_user_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), UserAttributeNames = structure(list(structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "AttributeNameListType", type = "list")), shape = "AdminDeleteUserAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

admin_delete_user_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AdminDeleteUserAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

admin_disable_provider_for_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "StringType", type = "string"), User = structure(list(ProviderName = structure(logical(0), 
        shape = "ProviderNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        ProviderAttributeName = structure(logical(0), shape = "StringType", 
            type = "string"), ProviderAttributeValue = structure(logical(0), 
            shape = "StringType", type = "string")), shape = "ProviderUserIdentifierType", 
        type = "structure")), shape = "AdminDisableProviderForUserRequest", 
        type = "structure")
    return(populate(args, shape))
}

admin_disable_provider_for_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AdminDisableProviderForUserResponse", 
        type = "structure")
    return(populate(args, shape))
}

admin_disable_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE)), shape = "AdminDisableUserRequest", 
        type = "structure")
    return(populate(args, shape))
}

admin_disable_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AdminDisableUserResponse", 
        type = "structure")
    return(populate(args, shape))
}

admin_enable_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE)), shape = "AdminEnableUserRequest", 
        type = "structure")
    return(populate(args, shape))
}

admin_enable_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AdminEnableUserResponse", 
        type = "structure")
    return(populate(args, shape))
}

admin_forget_device_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), DeviceKey = structure(logical(0), 
        shape = "DeviceKeyType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-f-]+")), shape = "AdminForgetDeviceRequest", 
        type = "structure")
    return(populate(args, shape))
}

admin_forget_device_output <- function () 
{
    return(list())
}

admin_get_device_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceKey = structure(logical(0), 
        shape = "DeviceKeyType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-f-]+"), UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE)), shape = "AdminGetDeviceRequest", 
        type = "structure")
    return(populate(args, shape))
}

admin_get_device_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Device = structure(list(DeviceKey = structure(logical(0), 
        shape = "DeviceKeyType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-f-]+"), DeviceAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        Value = structure(logical(0), shape = "AttributeValueType", 
            type = "string", max = 2048L, sensitive = TRUE)), 
        shape = "AttributeType", type = "structure")), shape = "AttributeListType", 
        type = "list"), DeviceCreateDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), DeviceLastModifiedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), DeviceLastAuthenticatedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp")), shape = "DeviceType", 
        type = "structure")), shape = "AdminGetDeviceResponse", 
        type = "structure")
    return(populate(args, shape))
}

admin_get_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE)), shape = "AdminGetUserRequest", type = "structure")
    return(populate(args, shape))
}

admin_get_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), UserAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        Value = structure(logical(0), shape = "AttributeValueType", 
            type = "string", max = 2048L, sensitive = TRUE)), 
        shape = "AttributeType", type = "structure")), shape = "AttributeListType", 
        type = "list"), UserCreateDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), UserLastModifiedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), Enabled = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), UserStatus = structure(logical(0), 
        shape = "UserStatusType", type = "string"), MFAOptions = structure(list(structure(list(DeliveryMedium = structure(logical(0), 
        shape = "DeliveryMediumType", type = "string"), AttributeName = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "MFAOptionType", type = "structure")), shape = "MFAOptionListType", 
        type = "list"), PreferredMfaSetting = structure(logical(0), 
        shape = "StringType", type = "string"), UserMFASettingList = structure(list(structure(logical(0), 
        shape = "StringType", type = "string")), shape = "UserMFASettingListType", 
        type = "list")), shape = "AdminGetUserResponse", type = "structure")
    return(populate(args, shape))
}

admin_initiate_auth_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), AuthFlow = structure(logical(0), 
        shape = "AuthFlowType", type = "string"), AuthParameters = structure(list(structure(logical(0), 
        shape = "StringType", type = "string")), shape = "AuthParametersType", 
        type = "map"), ClientMetadata = structure(list(structure(logical(0), 
        shape = "StringType", type = "string")), shape = "ClientMetadataType", 
        type = "map"), AnalyticsMetadata = structure(list(AnalyticsEndpointId = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "AnalyticsMetadataType", 
        type = "structure"), ContextData = structure(list(IpAddress = structure(logical(0), 
        shape = "StringType", type = "string"), ServerName = structure(logical(0), 
        shape = "StringType", type = "string"), ServerPath = structure(logical(0), 
        shape = "StringType", type = "string"), HttpHeaders = structure(list(structure(list(HeaderName = structure(logical(0), 
        shape = "StringType", type = "string", locationName = "headerName"), 
        HeaderValue = structure(logical(0), shape = "StringType", 
            type = "string", locationName = "headerValue")), 
        shape = "HttpHeader", type = "structure")), shape = "HttpHeaderList", 
        type = "list"), EncodedData = structure(logical(0), shape = "StringType", 
        type = "string")), shape = "ContextDataType", type = "structure")), 
        shape = "AdminInitiateAuthRequest", type = "structure")
    return(populate(args, shape))
}

admin_initiate_auth_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChallengeName = structure(logical(0), 
        shape = "ChallengeNameType", type = "string"), Session = structure(logical(0), 
        shape = "SessionType", type = "string", max = 2048L, 
        min = 20L), ChallengeParameters = structure(list(structure(logical(0), 
        shape = "StringType", type = "string")), shape = "ChallengeParametersType", 
        type = "map"), AuthenticationResult = structure(list(AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE), ExpiresIn = structure(logical(0), 
        shape = "IntegerType", type = "integer"), TokenType = structure(logical(0), 
        shape = "StringType", type = "string"), RefreshToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE), IdToken = structure(logical(0), shape = "TokenModelType", 
        type = "string", pattern = "[A-Za-z0-9-_=.]+", sensitive = TRUE), 
        NewDeviceMetadata = structure(list(DeviceKey = structure(logical(0), 
            shape = "DeviceKeyType", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+_[0-9a-f-]+"), DeviceGroupKey = structure(logical(0), 
            shape = "StringType", type = "string")), shape = "NewDeviceMetadataType", 
            type = "structure")), shape = "AuthenticationResultType", 
        type = "structure")), shape = "AdminInitiateAuthResponse", 
        type = "structure")
    return(populate(args, shape))
}

admin_link_provider_for_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "StringType", type = "string"), DestinationUser = structure(list(ProviderName = structure(logical(0), 
        shape = "ProviderNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        ProviderAttributeName = structure(logical(0), shape = "StringType", 
            type = "string"), ProviderAttributeValue = structure(logical(0), 
            shape = "StringType", type = "string")), shape = "ProviderUserIdentifierType", 
        type = "structure"), SourceUser = structure(list(ProviderName = structure(logical(0), 
        shape = "ProviderNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        ProviderAttributeName = structure(logical(0), shape = "StringType", 
            type = "string"), ProviderAttributeValue = structure(logical(0), 
            shape = "StringType", type = "string")), shape = "ProviderUserIdentifierType", 
        type = "structure")), shape = "AdminLinkProviderForUserRequest", 
        type = "structure")
    return(populate(args, shape))
}

admin_link_provider_for_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AdminLinkProviderForUserResponse", 
        type = "structure")
    return(populate(args, shape))
}

admin_list_devices_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), Limit = structure(logical(0), shape = "QueryLimitType", 
        type = "integer", max = 60L, min = 0L), PaginationToken = structure(logical(0), 
        shape = "SearchPaginationTokenType", type = "string", 
        min = 1L, pattern = "[\\S]+")), shape = "AdminListDevicesRequest", 
        type = "structure")
    return(populate(args, shape))
}

admin_list_devices_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Devices = structure(list(structure(list(DeviceKey = structure(logical(0), 
        shape = "DeviceKeyType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-f-]+"), DeviceAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        Value = structure(logical(0), shape = "AttributeValueType", 
            type = "string", max = 2048L, sensitive = TRUE)), 
        shape = "AttributeType", type = "structure")), shape = "AttributeListType", 
        type = "list"), DeviceCreateDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), DeviceLastModifiedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), DeviceLastAuthenticatedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp")), shape = "DeviceType", 
        type = "structure")), shape = "DeviceListType", type = "list"), 
        PaginationToken = structure(logical(0), shape = "SearchPaginationTokenType", 
            type = "string", min = 1L, pattern = "[\\S]+")), 
        shape = "AdminListDevicesResponse", type = "structure")
    return(populate(args, shape))
}

admin_list_groups_for_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Limit = structure(logical(0), 
        shape = "QueryLimitType", type = "integer", max = 60L, 
        min = 0L), NextToken = structure(logical(0), shape = "PaginationKey", 
        type = "string", min = 1L, pattern = "[\\S]+")), shape = "AdminListGroupsForUserRequest", 
        type = "structure")
    return(populate(args, shape))
}

admin_list_groups_for_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Groups = structure(list(structure(list(GroupName = structure(logical(0), 
        shape = "GroupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        UserPoolId = structure(logical(0), shape = "UserPoolIdType", 
            type = "string", max = 55L, min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), 
        Description = structure(logical(0), shape = "DescriptionType", 
            type = "string", max = 2048L), RoleArn = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        Precedence = structure(logical(0), shape = "PrecedenceType", 
            type = "integer", min = 0L), LastModifiedDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp")), shape = "GroupType", 
        type = "structure")), shape = "GroupListType", type = "list"), 
        NextToken = structure(logical(0), shape = "PaginationKey", 
            type = "string", min = 1L, pattern = "[\\S]+")), 
        shape = "AdminListGroupsForUserResponse", type = "structure")
    return(populate(args, shape))
}

admin_list_user_auth_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), MaxResults = structure(logical(0), 
        shape = "QueryLimitType", type = "integer", max = 60L, 
        min = 0L), NextToken = structure(logical(0), shape = "PaginationKey", 
        type = "string", min = 1L, pattern = "[\\S]+")), shape = "AdminListUserAuthEventsRequest", 
        type = "structure")
    return(populate(args, shape))
}

admin_list_user_auth_events_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthEvents = structure(list(structure(list(EventId = structure(logical(0), 
        shape = "StringType", type = "string"), EventType = structure(logical(0), 
        shape = "EventType", type = "string"), CreationDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), EventResponse = structure(logical(0), 
        shape = "EventResponseType", type = "string"), EventRisk = structure(list(RiskDecision = structure(logical(0), 
        shape = "RiskDecisionType", type = "string"), RiskLevel = structure(logical(0), 
        shape = "RiskLevelType", type = "string")), shape = "EventRiskType", 
        type = "structure"), ChallengeResponses = structure(list(structure(list(ChallengeName = structure(logical(0), 
        shape = "ChallengeName", type = "string"), ChallengeResponse = structure(logical(0), 
        shape = "ChallengeResponse", type = "string")), shape = "ChallengeResponseType", 
        type = "structure")), shape = "ChallengeResponseListType", 
        type = "list"), EventContextData = structure(list(IpAddress = structure(logical(0), 
        shape = "StringType", type = "string"), DeviceName = structure(logical(0), 
        shape = "StringType", type = "string"), Timezone = structure(logical(0), 
        shape = "StringType", type = "string"), City = structure(logical(0), 
        shape = "StringType", type = "string"), Country = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "EventContextDataType", 
        type = "structure"), EventFeedback = structure(list(FeedbackValue = structure(logical(0), 
        shape = "FeedbackValueType", type = "string"), Provider = structure(logical(0), 
        shape = "StringType", type = "string"), FeedbackDate = structure(logical(0), 
        shape = "DateType", type = "timestamp")), shape = "EventFeedbackType", 
        type = "structure")), shape = "AuthEventType", type = "structure")), 
        shape = "AuthEventsType", type = "list"), NextToken = structure(logical(0), 
        shape = "PaginationKey", type = "string", min = 1L, pattern = "[\\S]+")), 
        shape = "AdminListUserAuthEventsResponse", type = "structure")
    return(populate(args, shape))
}

admin_remove_user_from_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), GroupName = structure(logical(0), 
        shape = "GroupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "AdminRemoveUserFromGroupRequest", type = "structure")
    return(populate(args, shape))
}

admin_remove_user_from_group_output <- function () 
{
    return(list())
}

admin_reset_user_password_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE)), shape = "AdminResetUserPasswordRequest", 
        type = "structure")
    return(populate(args, shape))
}

admin_reset_user_password_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AdminResetUserPasswordResponse", 
        type = "structure")
    return(populate(args, shape))
}

admin_respond_to_auth_challenge_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), ChallengeName = structure(logical(0), 
        shape = "ChallengeNameType", type = "string"), ChallengeResponses = structure(list(structure(logical(0), 
        shape = "StringType", type = "string")), shape = "ChallengeResponsesType", 
        type = "map"), Session = structure(logical(0), shape = "SessionType", 
        type = "string", max = 2048L, min = 20L), AnalyticsMetadata = structure(list(AnalyticsEndpointId = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "AnalyticsMetadataType", 
        type = "structure"), ContextData = structure(list(IpAddress = structure(logical(0), 
        shape = "StringType", type = "string"), ServerName = structure(logical(0), 
        shape = "StringType", type = "string"), ServerPath = structure(logical(0), 
        shape = "StringType", type = "string"), HttpHeaders = structure(list(structure(list(HeaderName = structure(logical(0), 
        shape = "StringType", type = "string", locationName = "headerName"), 
        HeaderValue = structure(logical(0), shape = "StringType", 
            type = "string", locationName = "headerValue")), 
        shape = "HttpHeader", type = "structure")), shape = "HttpHeaderList", 
        type = "list"), EncodedData = structure(logical(0), shape = "StringType", 
        type = "string")), shape = "ContextDataType", type = "structure")), 
        shape = "AdminRespondToAuthChallengeRequest", type = "structure")
    return(populate(args, shape))
}

admin_respond_to_auth_challenge_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChallengeName = structure(logical(0), 
        shape = "ChallengeNameType", type = "string"), Session = structure(logical(0), 
        shape = "SessionType", type = "string", max = 2048L, 
        min = 20L), ChallengeParameters = structure(list(structure(logical(0), 
        shape = "StringType", type = "string")), shape = "ChallengeParametersType", 
        type = "map"), AuthenticationResult = structure(list(AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE), ExpiresIn = structure(logical(0), 
        shape = "IntegerType", type = "integer"), TokenType = structure(logical(0), 
        shape = "StringType", type = "string"), RefreshToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE), IdToken = structure(logical(0), shape = "TokenModelType", 
        type = "string", pattern = "[A-Za-z0-9-_=.]+", sensitive = TRUE), 
        NewDeviceMetadata = structure(list(DeviceKey = structure(logical(0), 
            shape = "DeviceKeyType", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+_[0-9a-f-]+"), DeviceGroupKey = structure(logical(0), 
            shape = "StringType", type = "string")), shape = "NewDeviceMetadataType", 
            type = "structure")), shape = "AuthenticationResultType", 
        type = "structure")), shape = "AdminRespondToAuthChallengeResponse", 
        type = "structure")
    return(populate(args, shape))
}

admin_set_user_mfa_preference_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SMSMfaSettings = structure(list(Enabled = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), PreferredMfa = structure(logical(0), 
        shape = "BooleanType", type = "boolean")), shape = "SMSMfaSettingsType", 
        type = "structure"), SoftwareTokenMfaSettings = structure(list(Enabled = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), PreferredMfa = structure(logical(0), 
        shape = "BooleanType", type = "boolean")), shape = "SoftwareTokenMfaSettingsType", 
        type = "structure"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+")), shape = "AdminSetUserMFAPreferenceRequest", 
        type = "structure")
    return(populate(args, shape))
}

admin_set_user_mfa_preference_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AdminSetUserMFAPreferenceResponse", 
        type = "structure")
    return(populate(args, shape))
}

admin_set_user_settings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), MFAOptions = structure(list(structure(list(DeliveryMedium = structure(logical(0), 
        shape = "DeliveryMediumType", type = "string"), AttributeName = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "MFAOptionType", type = "structure")), shape = "MFAOptionListType", 
        type = "list")), shape = "AdminSetUserSettingsRequest", 
        type = "structure")
    return(populate(args, shape))
}

admin_set_user_settings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AdminSetUserSettingsResponse", 
        type = "structure")
    return(populate(args, shape))
}

admin_update_auth_event_feedback_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), EventId = structure(logical(0), shape = "EventIdType", 
        type = "string", max = 50L, min = 1L, pattern = "[\\w+-]+"), 
        FeedbackValue = structure(logical(0), shape = "FeedbackValueType", 
            type = "string")), shape = "AdminUpdateAuthEventFeedbackRequest", 
        type = "structure")
    return(populate(args, shape))
}

admin_update_auth_event_feedback_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AdminUpdateAuthEventFeedbackResponse", 
        type = "structure")
    return(populate(args, shape))
}

admin_update_device_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), DeviceKey = structure(logical(0), 
        shape = "DeviceKeyType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-f-]+"), DeviceRememberedStatus = structure(logical(0), 
        shape = "DeviceRememberedStatusType", type = "string")), 
        shape = "AdminUpdateDeviceStatusRequest", type = "structure")
    return(populate(args, shape))
}

admin_update_device_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AdminUpdateDeviceStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

admin_update_user_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), UserAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        Value = structure(logical(0), shape = "AttributeValueType", 
            type = "string", max = 2048L, sensitive = TRUE)), 
        shape = "AttributeType", type = "structure")), shape = "AttributeListType", 
        type = "list")), shape = "AdminUpdateUserAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

admin_update_user_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AdminUpdateUserAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

admin_user_global_sign_out_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE)), shape = "AdminUserGlobalSignOutRequest", 
        type = "structure")
    return(populate(args, shape))
}

admin_user_global_sign_out_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AdminUserGlobalSignOutResponse", 
        type = "structure")
    return(populate(args, shape))
}

associate_software_token_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE), Session = structure(logical(0), shape = "SessionType", 
        type = "string", max = 2048L, min = 20L)), shape = "AssociateSoftwareTokenRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_software_token_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecretCode = structure(logical(0), 
        shape = "SecretCodeType", type = "string", min = 16L, 
        pattern = "[A-Za-z0-9]+", sensitive = TRUE), Session = structure(logical(0), 
        shape = "SessionType", type = "string", max = 2048L, 
        min = 20L)), shape = "AssociateSoftwareTokenResponse", 
        type = "structure")
    return(populate(args, shape))
}

change_password_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PreviousPassword = structure(logical(0), 
        shape = "PasswordType", type = "string", max = 256L, 
        min = 6L, pattern = "[\\S]+", sensitive = TRUE), ProposedPassword = structure(logical(0), 
        shape = "PasswordType", type = "string", max = 256L, 
        min = 6L, pattern = "[\\S]+", sensitive = TRUE), AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE)), shape = "ChangePasswordRequest", 
        type = "structure")
    return(populate(args, shape))
}

change_password_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ChangePasswordResponse", 
        type = "structure")
    return(populate(args, shape))
}

confirm_device_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE), DeviceKey = structure(logical(0), 
        shape = "DeviceKeyType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-f-]+"), DeviceSecretVerifierConfig = structure(list(PasswordVerifier = structure(logical(0), 
        shape = "StringType", type = "string"), Salt = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "DeviceSecretVerifierConfigType", 
        type = "structure"), DeviceName = structure(logical(0), 
        shape = "DeviceNameType", type = "string", max = 1024L, 
        min = 1L)), shape = "ConfirmDeviceRequest", type = "structure")
    return(populate(args, shape))
}

confirm_device_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserConfirmationNecessary = structure(logical(0), 
        shape = "BooleanType", type = "boolean")), shape = "ConfirmDeviceResponse", 
        type = "structure")
    return(populate(args, shape))
}

confirm_forgot_password_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), SecretHash = structure(logical(0), 
        shape = "SecretHashType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=/]+", sensitive = TRUE), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), ConfirmationCode = structure(logical(0), 
        shape = "ConfirmationCodeType", type = "string", max = 2048L, 
        min = 1L, pattern = "[\\S]+"), Password = structure(logical(0), 
        shape = "PasswordType", type = "string", max = 256L, 
        min = 6L, pattern = "[\\S]+", sensitive = TRUE), AnalyticsMetadata = structure(list(AnalyticsEndpointId = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "AnalyticsMetadataType", 
        type = "structure"), UserContextData = structure(list(EncodedData = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "UserContextDataType", 
        type = "structure")), shape = "ConfirmForgotPasswordRequest", 
        type = "structure")
    return(populate(args, shape))
}

confirm_forgot_password_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ConfirmForgotPasswordResponse", 
        type = "structure")
    return(populate(args, shape))
}

confirm_sign_up_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), SecretHash = structure(logical(0), 
        shape = "SecretHashType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=/]+", sensitive = TRUE), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), ConfirmationCode = structure(logical(0), 
        shape = "ConfirmationCodeType", type = "string", max = 2048L, 
        min = 1L, pattern = "[\\S]+"), ForceAliasCreation = structure(logical(0), 
        shape = "ForceAliasCreation", type = "boolean"), AnalyticsMetadata = structure(list(AnalyticsEndpointId = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "AnalyticsMetadataType", 
        type = "structure"), UserContextData = structure(list(EncodedData = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "UserContextDataType", 
        type = "structure")), shape = "ConfirmSignUpRequest", 
        type = "structure")
    return(populate(args, shape))
}

confirm_sign_up_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ConfirmSignUpResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "GroupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        UserPoolId = structure(logical(0), shape = "UserPoolIdType", 
            type = "string", max = 55L, min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), 
        Description = structure(logical(0), shape = "DescriptionType", 
            type = "string", max = 2048L), RoleArn = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        Precedence = structure(logical(0), shape = "PrecedenceType", 
            type = "integer", min = 0L)), shape = "CreateGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Group = structure(list(GroupName = structure(logical(0), 
        shape = "GroupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        UserPoolId = structure(logical(0), shape = "UserPoolIdType", 
            type = "string", max = 55L, min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), 
        Description = structure(logical(0), shape = "DescriptionType", 
            type = "string", max = 2048L), RoleArn = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        Precedence = structure(logical(0), shape = "PrecedenceType", 
            type = "integer", min = 0L), LastModifiedDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp")), shape = "GroupType", 
        type = "structure")), shape = "CreateGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_identity_provider_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ProviderName = structure(logical(0), 
        shape = "ProviderNameTypeV1", type = "string", max = 32L, 
        min = 1L, pattern = "[^_][\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}][^_]+"), 
        ProviderType = structure(logical(0), shape = "IdentityProviderTypeType", 
            type = "string"), ProviderDetails = structure(list(structure(logical(0), 
            shape = "StringType", type = "string")), shape = "ProviderDetailsType", 
            type = "map"), AttributeMapping = structure(list(structure(logical(0), 
            shape = "StringType", type = "string")), shape = "AttributeMappingType", 
            type = "map"), IdpIdentifiers = structure(list(structure(logical(0), 
            shape = "IdpIdentifierType", type = "string", max = 40L, 
            min = 1L, pattern = "[\\w\\s+=.@-]+")), shape = "IdpIdentifiersListType", 
            type = "list", max = 50L, min = 0L)), shape = "CreateIdentityProviderRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_identity_provider_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityProvider = structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ProviderName = structure(logical(0), 
        shape = "ProviderNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        ProviderType = structure(logical(0), shape = "IdentityProviderTypeType", 
            type = "string"), ProviderDetails = structure(list(structure(logical(0), 
            shape = "StringType", type = "string")), shape = "ProviderDetailsType", 
            type = "map"), AttributeMapping = structure(list(structure(logical(0), 
            shape = "StringType", type = "string")), shape = "AttributeMappingType", 
            type = "map"), IdpIdentifiers = structure(list(structure(logical(0), 
            shape = "IdpIdentifierType", type = "string", max = 40L, 
            min = 1L, pattern = "[\\w\\s+=.@-]+")), shape = "IdpIdentifiersListType", 
            type = "list", max = 50L, min = 0L), LastModifiedDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp")), shape = "IdentityProviderType", 
        type = "structure")), shape = "CreateIdentityProviderResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_resource_server_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Identifier = structure(logical(0), 
        shape = "ResourceServerIdentifierType", type = "string", 
        max = 256L, min = 1L, pattern = "[\\x21\\x23-\\x5B\\x5D-\\x7E]+"), 
        Name = structure(logical(0), shape = "ResourceServerNameType", 
            type = "string", max = 256L, min = 1L, pattern = "[\\w\\s+=,.@-]+"), 
        Scopes = structure(list(structure(list(ScopeName = structure(logical(0), 
            shape = "ResourceServerScopeNameType", type = "string", 
            max = 256L, min = 1L, pattern = "[\\x21\\x23-\\x2E\\x30-\\x5B\\x5D-\\x7E]+"), 
            ScopeDescription = structure(logical(0), shape = "ResourceServerScopeDescriptionType", 
                type = "string", max = 256L, min = 1L)), shape = "ResourceServerScopeType", 
            type = "structure")), shape = "ResourceServerScopeListType", 
            type = "list", max = 25L)), shape = "CreateResourceServerRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_resource_server_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceServer = structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Identifier = structure(logical(0), 
        shape = "ResourceServerIdentifierType", type = "string", 
        max = 256L, min = 1L, pattern = "[\\x21\\x23-\\x5B\\x5D-\\x7E]+"), 
        Name = structure(logical(0), shape = "ResourceServerNameType", 
            type = "string", max = 256L, min = 1L, pattern = "[\\w\\s+=,.@-]+"), 
        Scopes = structure(list(structure(list(ScopeName = structure(logical(0), 
            shape = "ResourceServerScopeNameType", type = "string", 
            max = 256L, min = 1L, pattern = "[\\x21\\x23-\\x2E\\x30-\\x5B\\x5D-\\x7E]+"), 
            ScopeDescription = structure(logical(0), shape = "ResourceServerScopeDescriptionType", 
                type = "string", max = 256L, min = 1L)), shape = "ResourceServerScopeType", 
            type = "structure")), shape = "ResourceServerScopeListType", 
            type = "list", max = 25L)), shape = "ResourceServerType", 
        type = "structure")), shape = "CreateResourceServerResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_user_import_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobName = structure(logical(0), shape = "UserImportJobNameType", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w\\s+=,.@-]+"), 
        UserPoolId = structure(logical(0), shape = "UserPoolIdType", 
            type = "string", max = 55L, min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), 
        CloudWatchLogsRoleArn = structure(logical(0), shape = "ArnType", 
            type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?")), 
        shape = "CreateUserImportJobRequest", type = "structure")
    return(populate(args, shape))
}

create_user_import_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserImportJob = structure(list(JobName = structure(logical(0), 
        shape = "UserImportJobNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w\\s+=,.@-]+"), JobId = structure(logical(0), 
        shape = "UserImportJobIdType", type = "string", max = 55L, 
        min = 1L, pattern = "import-[0-9a-zA-Z-]+"), UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), PreSignedUrl = structure(logical(0), 
        shape = "PreSignedUrlType", type = "string", max = 2048L, 
        min = 0L), CreationDate = structure(logical(0), shape = "DateType", 
        type = "timestamp"), StartDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), CompletionDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), Status = structure(logical(0), 
        shape = "UserImportJobStatusType", type = "string"), 
        CloudWatchLogsRoleArn = structure(logical(0), shape = "ArnType", 
            type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        ImportedUsers = structure(logical(0), shape = "LongType", 
            type = "long"), SkippedUsers = structure(logical(0), 
            shape = "LongType", type = "long"), FailedUsers = structure(logical(0), 
            shape = "LongType", type = "long"), CompletionMessage = structure(logical(0), 
            shape = "CompletionMessageType", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w]+")), shape = "UserImportJobType", 
        type = "structure")), shape = "CreateUserImportJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_user_pool_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PoolName = structure(logical(0), 
        shape = "UserPoolNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w\\s+=,.@-]+"), Policies = structure(list(PasswordPolicy = structure(list(MinimumLength = structure(logical(0), 
        shape = "PasswordPolicyMinLengthType", type = "integer", 
        max = 99L, min = 6L), RequireUppercase = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), RequireLowercase = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), RequireNumbers = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), RequireSymbols = structure(logical(0), 
        shape = "BooleanType", type = "boolean")), shape = "PasswordPolicyType", 
        type = "structure")), shape = "UserPoolPolicyType", type = "structure"), 
        LambdaConfig = structure(list(PreSignUp = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            CustomMessage = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            PostConfirmation = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            PreAuthentication = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            PostAuthentication = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            DefineAuthChallenge = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            CreateAuthChallenge = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            VerifyAuthChallengeResponse = structure(logical(0), 
                shape = "ArnType", type = "string", max = 2048L, 
                min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            PreTokenGeneration = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            UserMigration = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?")), 
            shape = "LambdaConfigType", type = "structure"), 
        AutoVerifiedAttributes = structure(list(structure(logical(0), 
            shape = "VerifiedAttributeType", type = "string")), 
            shape = "VerifiedAttributesListType", type = "list"), 
        AliasAttributes = structure(list(structure(logical(0), 
            shape = "AliasAttributeType", type = "string")), 
            shape = "AliasAttributesListType", type = "list"), 
        UsernameAttributes = structure(list(structure(logical(0), 
            shape = "UsernameAttributeType", type = "string")), 
            shape = "UsernameAttributesListType", type = "list"), 
        SmsVerificationMessage = structure(logical(0), shape = "SmsVerificationMessageType", 
            type = "string", max = 140L, min = 6L, pattern = ".*\\{####\\}.*"), 
        EmailVerificationMessage = structure(logical(0), shape = "EmailVerificationMessageType", 
            type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{####\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*"), 
        EmailVerificationSubject = structure(logical(0), shape = "EmailVerificationSubjectType", 
            type = "string", max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
        VerificationMessageTemplate = structure(list(SmsMessage = structure(logical(0), 
            shape = "SmsVerificationMessageType", type = "string", 
            max = 140L, min = 6L, pattern = ".*\\{####\\}.*"), 
            EmailMessage = structure(logical(0), shape = "EmailVerificationMessageType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{####\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*"), 
            EmailSubject = structure(logical(0), shape = "EmailVerificationSubjectType", 
                type = "string", max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
            EmailMessageByLink = structure(logical(0), shape = "EmailVerificationMessageByLinkType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{##[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*##\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*"), 
            EmailSubjectByLink = structure(logical(0), shape = "EmailVerificationSubjectByLinkType", 
                type = "string", max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
            DefaultEmailOption = structure(logical(0), shape = "DefaultEmailOptionType", 
                type = "string")), shape = "VerificationMessageTemplateType", 
            type = "structure"), SmsAuthenticationMessage = structure(logical(0), 
            shape = "SmsVerificationMessageType", type = "string", 
            max = 140L, min = 6L, pattern = ".*\\{####\\}.*"), 
        MfaConfiguration = structure(logical(0), shape = "UserPoolMfaType", 
            type = "string"), DeviceConfiguration = structure(list(ChallengeRequiredOnNewDevice = structure(logical(0), 
            shape = "BooleanType", type = "boolean"), DeviceOnlyRememberedOnUserPrompt = structure(logical(0), 
            shape = "BooleanType", type = "boolean")), shape = "DeviceConfigurationType", 
            type = "structure"), EmailConfiguration = structure(list(SourceArn = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            ReplyToEmailAddress = structure(logical(0), shape = "EmailAddressType", 
                type = "string", pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+@[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
            shape = "EmailConfigurationType", type = "structure"), 
        SmsConfiguration = structure(list(SnsCallerArn = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            ExternalId = structure(logical(0), shape = "StringType", 
                type = "string")), shape = "SmsConfigurationType", 
            type = "structure"), UserPoolTags = structure(list(structure(logical(0), 
            shape = "StringType", type = "string")), shape = "UserPoolTagsType", 
            type = "map"), AdminCreateUserConfig = structure(list(AllowAdminCreateUserOnly = structure(logical(0), 
            shape = "BooleanType", type = "boolean"), UnusedAccountValidityDays = structure(logical(0), 
            shape = "AdminCreateUserUnusedAccountValidityDaysType", 
            type = "integer", max = 365L, min = 0L), InviteMessageTemplate = structure(list(SMSMessage = structure(logical(0), 
            shape = "SmsVerificationMessageType", type = "string", 
            max = 140L, min = 6L, pattern = ".*\\{####\\}.*"), 
            EmailMessage = structure(logical(0), shape = "EmailVerificationMessageType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{####\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*"), 
            EmailSubject = structure(logical(0), shape = "EmailVerificationSubjectType", 
                type = "string", max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+")), 
            shape = "MessageTemplateType", type = "structure")), 
            shape = "AdminCreateUserConfigType", type = "structure"), 
        Schema = structure(list(structure(list(Name = structure(logical(0), 
            shape = "CustomAttributeNameType", type = "string", 
            max = 20L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
            AttributeDataType = structure(logical(0), shape = "AttributeDataType", 
                type = "string"), DeveloperOnlyAttribute = structure(logical(0), 
                shape = "BooleanType", box = TRUE, type = "boolean"), 
            Mutable = structure(logical(0), shape = "BooleanType", 
                box = TRUE, type = "boolean"), Required = structure(logical(0), 
                shape = "BooleanType", box = TRUE, type = "boolean"), 
            NumberAttributeConstraints = structure(list(MinValue = structure(logical(0), 
                shape = "StringType", type = "string"), MaxValue = structure(logical(0), 
                shape = "StringType", type = "string")), shape = "NumberAttributeConstraintsType", 
                type = "structure"), StringAttributeConstraints = structure(list(MinLength = structure(logical(0), 
                shape = "StringType", type = "string"), MaxLength = structure(logical(0), 
                shape = "StringType", type = "string")), shape = "StringAttributeConstraintsType", 
                type = "structure")), shape = "SchemaAttributeType", 
            type = "structure")), shape = "SchemaAttributesListType", 
            type = "list", max = 50L, min = 1L), UserPoolAddOns = structure(list(AdvancedSecurityMode = structure(logical(0), 
            shape = "AdvancedSecurityModeType", type = "string")), 
            shape = "UserPoolAddOnsType", type = "structure")), 
        shape = "CreateUserPoolRequest", type = "structure")
    return(populate(args, shape))
}

create_user_pool_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPool = structure(list(Id = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Name = structure(logical(0), 
        shape = "UserPoolNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w\\s+=,.@-]+"), Policies = structure(list(PasswordPolicy = structure(list(MinimumLength = structure(logical(0), 
        shape = "PasswordPolicyMinLengthType", type = "integer", 
        max = 99L, min = 6L), RequireUppercase = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), RequireLowercase = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), RequireNumbers = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), RequireSymbols = structure(logical(0), 
        shape = "BooleanType", type = "boolean")), shape = "PasswordPolicyType", 
        type = "structure")), shape = "UserPoolPolicyType", type = "structure"), 
        LambdaConfig = structure(list(PreSignUp = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            CustomMessage = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            PostConfirmation = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            PreAuthentication = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            PostAuthentication = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            DefineAuthChallenge = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            CreateAuthChallenge = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            VerifyAuthChallengeResponse = structure(logical(0), 
                shape = "ArnType", type = "string", max = 2048L, 
                min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            PreTokenGeneration = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            UserMigration = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?")), 
            shape = "LambdaConfigType", type = "structure"), 
        Status = structure(logical(0), shape = "StatusType", 
            type = "string"), LastModifiedDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), SchemaAttributes = structure(list(structure(list(Name = structure(logical(0), 
            shape = "CustomAttributeNameType", type = "string", 
            max = 20L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
            AttributeDataType = structure(logical(0), shape = "AttributeDataType", 
                type = "string"), DeveloperOnlyAttribute = structure(logical(0), 
                shape = "BooleanType", box = TRUE, type = "boolean"), 
            Mutable = structure(logical(0), shape = "BooleanType", 
                box = TRUE, type = "boolean"), Required = structure(logical(0), 
                shape = "BooleanType", box = TRUE, type = "boolean"), 
            NumberAttributeConstraints = structure(list(MinValue = structure(logical(0), 
                shape = "StringType", type = "string"), MaxValue = structure(logical(0), 
                shape = "StringType", type = "string")), shape = "NumberAttributeConstraintsType", 
                type = "structure"), StringAttributeConstraints = structure(list(MinLength = structure(logical(0), 
                shape = "StringType", type = "string"), MaxLength = structure(logical(0), 
                shape = "StringType", type = "string")), shape = "StringAttributeConstraintsType", 
                type = "structure")), shape = "SchemaAttributeType", 
            type = "structure")), shape = "SchemaAttributesListType", 
            type = "list", max = 50L, min = 1L), AutoVerifiedAttributes = structure(list(structure(logical(0), 
            shape = "VerifiedAttributeType", type = "string")), 
            shape = "VerifiedAttributesListType", type = "list"), 
        AliasAttributes = structure(list(structure(logical(0), 
            shape = "AliasAttributeType", type = "string")), 
            shape = "AliasAttributesListType", type = "list"), 
        UsernameAttributes = structure(list(structure(logical(0), 
            shape = "UsernameAttributeType", type = "string")), 
            shape = "UsernameAttributesListType", type = "list"), 
        SmsVerificationMessage = structure(logical(0), shape = "SmsVerificationMessageType", 
            type = "string", max = 140L, min = 6L, pattern = ".*\\{####\\}.*"), 
        EmailVerificationMessage = structure(logical(0), shape = "EmailVerificationMessageType", 
            type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{####\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*"), 
        EmailVerificationSubject = structure(logical(0), shape = "EmailVerificationSubjectType", 
            type = "string", max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
        VerificationMessageTemplate = structure(list(SmsMessage = structure(logical(0), 
            shape = "SmsVerificationMessageType", type = "string", 
            max = 140L, min = 6L, pattern = ".*\\{####\\}.*"), 
            EmailMessage = structure(logical(0), shape = "EmailVerificationMessageType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{####\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*"), 
            EmailSubject = structure(logical(0), shape = "EmailVerificationSubjectType", 
                type = "string", max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
            EmailMessageByLink = structure(logical(0), shape = "EmailVerificationMessageByLinkType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{##[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*##\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*"), 
            EmailSubjectByLink = structure(logical(0), shape = "EmailVerificationSubjectByLinkType", 
                type = "string", max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
            DefaultEmailOption = structure(logical(0), shape = "DefaultEmailOptionType", 
                type = "string")), shape = "VerificationMessageTemplateType", 
            type = "structure"), SmsAuthenticationMessage = structure(logical(0), 
            shape = "SmsVerificationMessageType", type = "string", 
            max = 140L, min = 6L, pattern = ".*\\{####\\}.*"), 
        MfaConfiguration = structure(logical(0), shape = "UserPoolMfaType", 
            type = "string"), DeviceConfiguration = structure(list(ChallengeRequiredOnNewDevice = structure(logical(0), 
            shape = "BooleanType", type = "boolean"), DeviceOnlyRememberedOnUserPrompt = structure(logical(0), 
            shape = "BooleanType", type = "boolean")), shape = "DeviceConfigurationType", 
            type = "structure"), EstimatedNumberOfUsers = structure(logical(0), 
            shape = "IntegerType", type = "integer"), EmailConfiguration = structure(list(SourceArn = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            ReplyToEmailAddress = structure(logical(0), shape = "EmailAddressType", 
                type = "string", pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+@[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
            shape = "EmailConfigurationType", type = "structure"), 
        SmsConfiguration = structure(list(SnsCallerArn = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            ExternalId = structure(logical(0), shape = "StringType", 
                type = "string")), shape = "SmsConfigurationType", 
            type = "structure"), UserPoolTags = structure(list(structure(logical(0), 
            shape = "StringType", type = "string")), shape = "UserPoolTagsType", 
            type = "map"), SmsConfigurationFailure = structure(logical(0), 
            shape = "StringType", type = "string"), EmailConfigurationFailure = structure(logical(0), 
            shape = "StringType", type = "string"), Domain = structure(logical(0), 
            shape = "DomainType", type = "string", max = 63L, 
            min = 1L, pattern = "^[a-z0-9](?:[a-z0-9\\-]{0,61}[a-z0-9])?$"), 
        CustomDomain = structure(logical(0), shape = "DomainType", 
            type = "string", max = 63L, min = 1L, pattern = "^[a-z0-9](?:[a-z0-9\\-]{0,61}[a-z0-9])?$"), 
        AdminCreateUserConfig = structure(list(AllowAdminCreateUserOnly = structure(logical(0), 
            shape = "BooleanType", type = "boolean"), UnusedAccountValidityDays = structure(logical(0), 
            shape = "AdminCreateUserUnusedAccountValidityDaysType", 
            type = "integer", max = 365L, min = 0L), InviteMessageTemplate = structure(list(SMSMessage = structure(logical(0), 
            shape = "SmsVerificationMessageType", type = "string", 
            max = 140L, min = 6L, pattern = ".*\\{####\\}.*"), 
            EmailMessage = structure(logical(0), shape = "EmailVerificationMessageType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{####\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*"), 
            EmailSubject = structure(logical(0), shape = "EmailVerificationSubjectType", 
                type = "string", max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+")), 
            shape = "MessageTemplateType", type = "structure")), 
            shape = "AdminCreateUserConfigType", type = "structure"), 
        UserPoolAddOns = structure(list(AdvancedSecurityMode = structure(logical(0), 
            shape = "AdvancedSecurityModeType", type = "string")), 
            shape = "UserPoolAddOnsType", type = "structure"), 
        Arn = structure(logical(0), shape = "ArnType", type = "string", 
            max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?")), 
        shape = "UserPoolType", type = "structure")), shape = "CreateUserPoolResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_user_pool_client_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ClientName = structure(logical(0), 
        shape = "ClientNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w\\s+=,.@-]+"), GenerateSecret = structure(logical(0), 
        shape = "GenerateSecret", type = "boolean"), RefreshTokenValidity = structure(logical(0), 
        shape = "RefreshTokenValidityType", type = "integer", 
        max = 3650L, min = 0L), ReadAttributes = structure(list(structure(logical(0), 
        shape = "ClientPermissionType", type = "string", max = 2048L, 
        min = 1L)), shape = "ClientPermissionListType", type = "list"), 
        WriteAttributes = structure(list(structure(logical(0), 
            shape = "ClientPermissionType", type = "string", 
            max = 2048L, min = 1L)), shape = "ClientPermissionListType", 
            type = "list"), ExplicitAuthFlows = structure(list(structure(logical(0), 
            shape = "ExplicitAuthFlowsType", type = "string")), 
            shape = "ExplicitAuthFlowsListType", type = "list"), 
        SupportedIdentityProviders = structure(list(structure(logical(0), 
            shape = "ProviderNameType", type = "string", max = 32L, 
            min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
            shape = "SupportedIdentityProvidersListType", type = "list"), 
        CallbackURLs = structure(list(structure(logical(0), shape = "RedirectUrlType", 
            type = "string", max = 1024L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
            shape = "CallbackURLsListType", type = "list", max = 100L, 
            min = 0L), LogoutURLs = structure(list(structure(logical(0), 
            shape = "RedirectUrlType", type = "string", max = 1024L, 
            min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
            shape = "LogoutURLsListType", type = "list", max = 100L, 
            min = 0L), DefaultRedirectURI = structure(logical(0), 
            shape = "RedirectUrlType", type = "string", max = 1024L, 
            min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        AllowedOAuthFlows = structure(list(structure(logical(0), 
            shape = "OAuthFlowType", type = "string")), shape = "OAuthFlowsType", 
            type = "list", max = 3L, min = 0L), AllowedOAuthScopes = structure(list(structure(logical(0), 
            shape = "ScopeType", type = "string", max = 256L, 
            min = 1L, pattern = "[\\x21\\x23-\\x5B\\x5D-\\x7E]+")), 
            shape = "ScopeListType", type = "list", max = 25L), 
        AllowedOAuthFlowsUserPoolClient = structure(logical(0), 
            shape = "BooleanType", type = "boolean"), AnalyticsConfiguration = structure(list(ApplicationId = structure(logical(0), 
            shape = "HexStringType", type = "string", pattern = "^[0-9a-fA-F]+$"), 
            RoleArn = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            ExternalId = structure(logical(0), shape = "StringType", 
                type = "string"), UserDataShared = structure(logical(0), 
                shape = "BooleanType", type = "boolean")), shape = "AnalyticsConfigurationType", 
            type = "structure")), shape = "CreateUserPoolClientRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_user_pool_client_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolClient = structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ClientName = structure(logical(0), 
        shape = "ClientNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w\\s+=,.@-]+"), ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), ClientSecret = structure(logical(0), 
        shape = "ClientSecretType", type = "string", max = 64L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), LastModifiedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), CreationDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), RefreshTokenValidity = structure(logical(0), 
        shape = "RefreshTokenValidityType", type = "integer", 
        max = 3650L, min = 0L), ReadAttributes = structure(list(structure(logical(0), 
        shape = "ClientPermissionType", type = "string", max = 2048L, 
        min = 1L)), shape = "ClientPermissionListType", type = "list"), 
        WriteAttributes = structure(list(structure(logical(0), 
            shape = "ClientPermissionType", type = "string", 
            max = 2048L, min = 1L)), shape = "ClientPermissionListType", 
            type = "list"), ExplicitAuthFlows = structure(list(structure(logical(0), 
            shape = "ExplicitAuthFlowsType", type = "string")), 
            shape = "ExplicitAuthFlowsListType", type = "list"), 
        SupportedIdentityProviders = structure(list(structure(logical(0), 
            shape = "ProviderNameType", type = "string", max = 32L, 
            min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
            shape = "SupportedIdentityProvidersListType", type = "list"), 
        CallbackURLs = structure(list(structure(logical(0), shape = "RedirectUrlType", 
            type = "string", max = 1024L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
            shape = "CallbackURLsListType", type = "list", max = 100L, 
            min = 0L), LogoutURLs = structure(list(structure(logical(0), 
            shape = "RedirectUrlType", type = "string", max = 1024L, 
            min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
            shape = "LogoutURLsListType", type = "list", max = 100L, 
            min = 0L), DefaultRedirectURI = structure(logical(0), 
            shape = "RedirectUrlType", type = "string", max = 1024L, 
            min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        AllowedOAuthFlows = structure(list(structure(logical(0), 
            shape = "OAuthFlowType", type = "string")), shape = "OAuthFlowsType", 
            type = "list", max = 3L, min = 0L), AllowedOAuthScopes = structure(list(structure(logical(0), 
            shape = "ScopeType", type = "string", max = 256L, 
            min = 1L, pattern = "[\\x21\\x23-\\x5B\\x5D-\\x7E]+")), 
            shape = "ScopeListType", type = "list", max = 25L), 
        AllowedOAuthFlowsUserPoolClient = structure(logical(0), 
            shape = "BooleanType", box = TRUE, type = "boolean"), 
        AnalyticsConfiguration = structure(list(ApplicationId = structure(logical(0), 
            shape = "HexStringType", type = "string", pattern = "^[0-9a-fA-F]+$"), 
            RoleArn = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            ExternalId = structure(logical(0), shape = "StringType", 
                type = "string"), UserDataShared = structure(logical(0), 
                shape = "BooleanType", type = "boolean")), shape = "AnalyticsConfigurationType", 
            type = "structure")), shape = "UserPoolClientType", 
        type = "structure")), shape = "CreateUserPoolClientResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_user_pool_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Domain = structure(logical(0), shape = "DomainType", 
        type = "string", max = 63L, min = 1L, pattern = "^[a-z0-9](?:[a-z0-9\\-]{0,61}[a-z0-9])?$"), 
        UserPoolId = structure(logical(0), shape = "UserPoolIdType", 
            type = "string", max = 55L, min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), 
        CustomDomainConfig = structure(list(CertificateArn = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?")), 
            shape = "CustomDomainConfigType", type = "structure")), 
        shape = "CreateUserPoolDomainRequest", type = "structure")
    return(populate(args, shape))
}

create_user_pool_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CloudFrontDomain = structure(logical(0), 
        shape = "DomainType", type = "string", max = 63L, min = 1L, 
        pattern = "^[a-z0-9](?:[a-z0-9\\-]{0,61}[a-z0-9])?$")), 
        shape = "CreateUserPoolDomainResponse", type = "structure")
    return(populate(args, shape))
}

delete_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "GroupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        UserPoolId = structure(logical(0), shape = "UserPoolIdType", 
            type = "string", max = 55L, min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+")), 
        shape = "DeleteGroupRequest", type = "structure")
    return(populate(args, shape))
}

delete_group_output <- function () 
{
    return(list())
}

delete_identity_provider_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ProviderName = structure(logical(0), 
        shape = "ProviderNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "DeleteIdentityProviderRequest", type = "structure")
    return(populate(args, shape))
}

delete_identity_provider_output <- function () 
{
    return(list())
}

delete_resource_server_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Identifier = structure(logical(0), 
        shape = "ResourceServerIdentifierType", type = "string", 
        max = 256L, min = 1L, pattern = "[\\x21\\x23-\\x5B\\x5D-\\x7E]+")), 
        shape = "DeleteResourceServerRequest", type = "structure")
    return(populate(args, shape))
}

delete_resource_server_output <- function () 
{
    return(list())
}

delete_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE)), shape = "DeleteUserRequest", type = "structure")
    return(populate(args, shape))
}

delete_user_output <- function () 
{
    return(list())
}

delete_user_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserAttributeNames = structure(list(structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "AttributeNameListType", type = "list"), AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE)), shape = "DeleteUserAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_user_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteUserAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_user_pool_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+")), shape = "DeleteUserPoolRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_user_pool_output <- function () 
{
    return(list())
}

delete_user_pool_client_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE)), shape = "DeleteUserPoolClientRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_user_pool_client_output <- function () 
{
    return(list())
}

delete_user_pool_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Domain = structure(logical(0), shape = "DomainType", 
        type = "string", max = 63L, min = 1L, pattern = "^[a-z0-9](?:[a-z0-9\\-]{0,61}[a-z0-9])?$"), 
        UserPoolId = structure(logical(0), shape = "UserPoolIdType", 
            type = "string", max = 55L, min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+")), 
        shape = "DeleteUserPoolDomainRequest", type = "structure")
    return(populate(args, shape))
}

delete_user_pool_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteUserPoolDomainResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_identity_provider_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ProviderName = structure(logical(0), 
        shape = "ProviderNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "DescribeIdentityProviderRequest", type = "structure")
    return(populate(args, shape))
}

describe_identity_provider_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityProvider = structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ProviderName = structure(logical(0), 
        shape = "ProviderNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        ProviderType = structure(logical(0), shape = "IdentityProviderTypeType", 
            type = "string"), ProviderDetails = structure(list(structure(logical(0), 
            shape = "StringType", type = "string")), shape = "ProviderDetailsType", 
            type = "map"), AttributeMapping = structure(list(structure(logical(0), 
            shape = "StringType", type = "string")), shape = "AttributeMappingType", 
            type = "map"), IdpIdentifiers = structure(list(structure(logical(0), 
            shape = "IdpIdentifierType", type = "string", max = 40L, 
            min = 1L, pattern = "[\\w\\s+=.@-]+")), shape = "IdpIdentifiersListType", 
            type = "list", max = 50L, min = 0L), LastModifiedDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp")), shape = "IdentityProviderType", 
        type = "structure")), shape = "DescribeIdentityProviderResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_resource_server_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Identifier = structure(logical(0), 
        shape = "ResourceServerIdentifierType", type = "string", 
        max = 256L, min = 1L, pattern = "[\\x21\\x23-\\x5B\\x5D-\\x7E]+")), 
        shape = "DescribeResourceServerRequest", type = "structure")
    return(populate(args, shape))
}

describe_resource_server_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceServer = structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Identifier = structure(logical(0), 
        shape = "ResourceServerIdentifierType", type = "string", 
        max = 256L, min = 1L, pattern = "[\\x21\\x23-\\x5B\\x5D-\\x7E]+"), 
        Name = structure(logical(0), shape = "ResourceServerNameType", 
            type = "string", max = 256L, min = 1L, pattern = "[\\w\\s+=,.@-]+"), 
        Scopes = structure(list(structure(list(ScopeName = structure(logical(0), 
            shape = "ResourceServerScopeNameType", type = "string", 
            max = 256L, min = 1L, pattern = "[\\x21\\x23-\\x2E\\x30-\\x5B\\x5D-\\x7E]+"), 
            ScopeDescription = structure(logical(0), shape = "ResourceServerScopeDescriptionType", 
                type = "string", max = 256L, min = 1L)), shape = "ResourceServerScopeType", 
            type = "structure")), shape = "ResourceServerScopeListType", 
            type = "list", max = 25L)), shape = "ResourceServerType", 
        type = "structure")), shape = "DescribeResourceServerResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_risk_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE)), shape = "DescribeRiskConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_risk_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RiskConfiguration = structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), CompromisedCredentialsRiskConfiguration = structure(list(EventFilter = structure(list(structure(logical(0), 
        shape = "EventFilterType", type = "string")), shape = "EventFiltersType", 
        type = "list"), Actions = structure(list(EventAction = structure(logical(0), 
        shape = "CompromisedCredentialsEventActionType", type = "string")), 
        shape = "CompromisedCredentialsActionsType", type = "structure")), 
        shape = "CompromisedCredentialsRiskConfigurationType", 
        type = "structure"), AccountTakeoverRiskConfiguration = structure(list(NotifyConfiguration = structure(list(From = structure(logical(0), 
        shape = "StringType", type = "string"), ReplyTo = structure(logical(0), 
        shape = "StringType", type = "string"), SourceArn = structure(logical(0), 
        shape = "ArnType", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        BlockEmail = structure(list(Subject = structure(logical(0), 
            shape = "EmailNotificationSubjectType", type = "string", 
            max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
            HtmlBody = structure(logical(0), shape = "EmailNotificationBodyType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+"), 
            TextBody = structure(logical(0), shape = "EmailNotificationBodyType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+")), 
            shape = "NotifyEmailType", type = "structure"), NoActionEmail = structure(list(Subject = structure(logical(0), 
            shape = "EmailNotificationSubjectType", type = "string", 
            max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
            HtmlBody = structure(logical(0), shape = "EmailNotificationBodyType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+"), 
            TextBody = structure(logical(0), shape = "EmailNotificationBodyType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+")), 
            shape = "NotifyEmailType", type = "structure"), MfaEmail = structure(list(Subject = structure(logical(0), 
            shape = "EmailNotificationSubjectType", type = "string", 
            max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
            HtmlBody = structure(logical(0), shape = "EmailNotificationBodyType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+"), 
            TextBody = structure(logical(0), shape = "EmailNotificationBodyType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+")), 
            shape = "NotifyEmailType", type = "structure")), 
        shape = "NotifyConfigurationType", type = "structure"), 
        Actions = structure(list(LowAction = structure(list(Notify = structure(logical(0), 
            shape = "AccountTakeoverActionNotifyType", type = "boolean"), 
            EventAction = structure(logical(0), shape = "AccountTakeoverEventActionType", 
                type = "string")), shape = "AccountTakeoverActionType", 
            type = "structure"), MediumAction = structure(list(Notify = structure(logical(0), 
            shape = "AccountTakeoverActionNotifyType", type = "boolean"), 
            EventAction = structure(logical(0), shape = "AccountTakeoverEventActionType", 
                type = "string")), shape = "AccountTakeoverActionType", 
            type = "structure"), HighAction = structure(list(Notify = structure(logical(0), 
            shape = "AccountTakeoverActionNotifyType", type = "boolean"), 
            EventAction = structure(logical(0), shape = "AccountTakeoverEventActionType", 
                type = "string")), shape = "AccountTakeoverActionType", 
            type = "structure")), shape = "AccountTakeoverActionsType", 
            type = "structure")), shape = "AccountTakeoverRiskConfigurationType", 
        type = "structure"), RiskExceptionConfiguration = structure(list(BlockedIPRangeList = structure(list(structure(logical(0), 
        shape = "StringType", type = "string")), shape = "BlockedIPRangeListType", 
        type = "list", max = 20L), SkippedIPRangeList = structure(list(structure(logical(0), 
        shape = "StringType", type = "string")), shape = "SkippedIPRangeListType", 
        type = "list", max = 20L)), shape = "RiskExceptionConfigurationType", 
        type = "structure"), LastModifiedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp")), shape = "RiskConfigurationType", 
        type = "structure")), shape = "DescribeRiskConfigurationResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_user_import_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), JobId = structure(logical(0), 
        shape = "UserImportJobIdType", type = "string", max = 55L, 
        min = 1L, pattern = "import-[0-9a-zA-Z-]+")), shape = "DescribeUserImportJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_user_import_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserImportJob = structure(list(JobName = structure(logical(0), 
        shape = "UserImportJobNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w\\s+=,.@-]+"), JobId = structure(logical(0), 
        shape = "UserImportJobIdType", type = "string", max = 55L, 
        min = 1L, pattern = "import-[0-9a-zA-Z-]+"), UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), PreSignedUrl = structure(logical(0), 
        shape = "PreSignedUrlType", type = "string", max = 2048L, 
        min = 0L), CreationDate = structure(logical(0), shape = "DateType", 
        type = "timestamp"), StartDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), CompletionDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), Status = structure(logical(0), 
        shape = "UserImportJobStatusType", type = "string"), 
        CloudWatchLogsRoleArn = structure(logical(0), shape = "ArnType", 
            type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        ImportedUsers = structure(logical(0), shape = "LongType", 
            type = "long"), SkippedUsers = structure(logical(0), 
            shape = "LongType", type = "long"), FailedUsers = structure(logical(0), 
            shape = "LongType", type = "long"), CompletionMessage = structure(logical(0), 
            shape = "CompletionMessageType", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w]+")), shape = "UserImportJobType", 
        type = "structure")), shape = "DescribeUserImportJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_user_pool_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+")), shape = "DescribeUserPoolRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_user_pool_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPool = structure(list(Id = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Name = structure(logical(0), 
        shape = "UserPoolNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w\\s+=,.@-]+"), Policies = structure(list(PasswordPolicy = structure(list(MinimumLength = structure(logical(0), 
        shape = "PasswordPolicyMinLengthType", type = "integer", 
        max = 99L, min = 6L), RequireUppercase = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), RequireLowercase = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), RequireNumbers = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), RequireSymbols = structure(logical(0), 
        shape = "BooleanType", type = "boolean")), shape = "PasswordPolicyType", 
        type = "structure")), shape = "UserPoolPolicyType", type = "structure"), 
        LambdaConfig = structure(list(PreSignUp = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            CustomMessage = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            PostConfirmation = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            PreAuthentication = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            PostAuthentication = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            DefineAuthChallenge = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            CreateAuthChallenge = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            VerifyAuthChallengeResponse = structure(logical(0), 
                shape = "ArnType", type = "string", max = 2048L, 
                min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            PreTokenGeneration = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            UserMigration = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?")), 
            shape = "LambdaConfigType", type = "structure"), 
        Status = structure(logical(0), shape = "StatusType", 
            type = "string"), LastModifiedDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), SchemaAttributes = structure(list(structure(list(Name = structure(logical(0), 
            shape = "CustomAttributeNameType", type = "string", 
            max = 20L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
            AttributeDataType = structure(logical(0), shape = "AttributeDataType", 
                type = "string"), DeveloperOnlyAttribute = structure(logical(0), 
                shape = "BooleanType", box = TRUE, type = "boolean"), 
            Mutable = structure(logical(0), shape = "BooleanType", 
                box = TRUE, type = "boolean"), Required = structure(logical(0), 
                shape = "BooleanType", box = TRUE, type = "boolean"), 
            NumberAttributeConstraints = structure(list(MinValue = structure(logical(0), 
                shape = "StringType", type = "string"), MaxValue = structure(logical(0), 
                shape = "StringType", type = "string")), shape = "NumberAttributeConstraintsType", 
                type = "structure"), StringAttributeConstraints = structure(list(MinLength = structure(logical(0), 
                shape = "StringType", type = "string"), MaxLength = structure(logical(0), 
                shape = "StringType", type = "string")), shape = "StringAttributeConstraintsType", 
                type = "structure")), shape = "SchemaAttributeType", 
            type = "structure")), shape = "SchemaAttributesListType", 
            type = "list", max = 50L, min = 1L), AutoVerifiedAttributes = structure(list(structure(logical(0), 
            shape = "VerifiedAttributeType", type = "string")), 
            shape = "VerifiedAttributesListType", type = "list"), 
        AliasAttributes = structure(list(structure(logical(0), 
            shape = "AliasAttributeType", type = "string")), 
            shape = "AliasAttributesListType", type = "list"), 
        UsernameAttributes = structure(list(structure(logical(0), 
            shape = "UsernameAttributeType", type = "string")), 
            shape = "UsernameAttributesListType", type = "list"), 
        SmsVerificationMessage = structure(logical(0), shape = "SmsVerificationMessageType", 
            type = "string", max = 140L, min = 6L, pattern = ".*\\{####\\}.*"), 
        EmailVerificationMessage = structure(logical(0), shape = "EmailVerificationMessageType", 
            type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{####\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*"), 
        EmailVerificationSubject = structure(logical(0), shape = "EmailVerificationSubjectType", 
            type = "string", max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
        VerificationMessageTemplate = structure(list(SmsMessage = structure(logical(0), 
            shape = "SmsVerificationMessageType", type = "string", 
            max = 140L, min = 6L, pattern = ".*\\{####\\}.*"), 
            EmailMessage = structure(logical(0), shape = "EmailVerificationMessageType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{####\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*"), 
            EmailSubject = structure(logical(0), shape = "EmailVerificationSubjectType", 
                type = "string", max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
            EmailMessageByLink = structure(logical(0), shape = "EmailVerificationMessageByLinkType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{##[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*##\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*"), 
            EmailSubjectByLink = structure(logical(0), shape = "EmailVerificationSubjectByLinkType", 
                type = "string", max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
            DefaultEmailOption = structure(logical(0), shape = "DefaultEmailOptionType", 
                type = "string")), shape = "VerificationMessageTemplateType", 
            type = "structure"), SmsAuthenticationMessage = structure(logical(0), 
            shape = "SmsVerificationMessageType", type = "string", 
            max = 140L, min = 6L, pattern = ".*\\{####\\}.*"), 
        MfaConfiguration = structure(logical(0), shape = "UserPoolMfaType", 
            type = "string"), DeviceConfiguration = structure(list(ChallengeRequiredOnNewDevice = structure(logical(0), 
            shape = "BooleanType", type = "boolean"), DeviceOnlyRememberedOnUserPrompt = structure(logical(0), 
            shape = "BooleanType", type = "boolean")), shape = "DeviceConfigurationType", 
            type = "structure"), EstimatedNumberOfUsers = structure(logical(0), 
            shape = "IntegerType", type = "integer"), EmailConfiguration = structure(list(SourceArn = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            ReplyToEmailAddress = structure(logical(0), shape = "EmailAddressType", 
                type = "string", pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+@[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
            shape = "EmailConfigurationType", type = "structure"), 
        SmsConfiguration = structure(list(SnsCallerArn = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            ExternalId = structure(logical(0), shape = "StringType", 
                type = "string")), shape = "SmsConfigurationType", 
            type = "structure"), UserPoolTags = structure(list(structure(logical(0), 
            shape = "StringType", type = "string")), shape = "UserPoolTagsType", 
            type = "map"), SmsConfigurationFailure = structure(logical(0), 
            shape = "StringType", type = "string"), EmailConfigurationFailure = structure(logical(0), 
            shape = "StringType", type = "string"), Domain = structure(logical(0), 
            shape = "DomainType", type = "string", max = 63L, 
            min = 1L, pattern = "^[a-z0-9](?:[a-z0-9\\-]{0,61}[a-z0-9])?$"), 
        CustomDomain = structure(logical(0), shape = "DomainType", 
            type = "string", max = 63L, min = 1L, pattern = "^[a-z0-9](?:[a-z0-9\\-]{0,61}[a-z0-9])?$"), 
        AdminCreateUserConfig = structure(list(AllowAdminCreateUserOnly = structure(logical(0), 
            shape = "BooleanType", type = "boolean"), UnusedAccountValidityDays = structure(logical(0), 
            shape = "AdminCreateUserUnusedAccountValidityDaysType", 
            type = "integer", max = 365L, min = 0L), InviteMessageTemplate = structure(list(SMSMessage = structure(logical(0), 
            shape = "SmsVerificationMessageType", type = "string", 
            max = 140L, min = 6L, pattern = ".*\\{####\\}.*"), 
            EmailMessage = structure(logical(0), shape = "EmailVerificationMessageType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{####\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*"), 
            EmailSubject = structure(logical(0), shape = "EmailVerificationSubjectType", 
                type = "string", max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+")), 
            shape = "MessageTemplateType", type = "structure")), 
            shape = "AdminCreateUserConfigType", type = "structure"), 
        UserPoolAddOns = structure(list(AdvancedSecurityMode = structure(logical(0), 
            shape = "AdvancedSecurityModeType", type = "string")), 
            shape = "UserPoolAddOnsType", type = "structure"), 
        Arn = structure(logical(0), shape = "ArnType", type = "string", 
            max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?")), 
        shape = "UserPoolType", type = "structure")), shape = "DescribeUserPoolResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_user_pool_client_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE)), shape = "DescribeUserPoolClientRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_user_pool_client_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolClient = structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ClientName = structure(logical(0), 
        shape = "ClientNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w\\s+=,.@-]+"), ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), ClientSecret = structure(logical(0), 
        shape = "ClientSecretType", type = "string", max = 64L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), LastModifiedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), CreationDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), RefreshTokenValidity = structure(logical(0), 
        shape = "RefreshTokenValidityType", type = "integer", 
        max = 3650L, min = 0L), ReadAttributes = structure(list(structure(logical(0), 
        shape = "ClientPermissionType", type = "string", max = 2048L, 
        min = 1L)), shape = "ClientPermissionListType", type = "list"), 
        WriteAttributes = structure(list(structure(logical(0), 
            shape = "ClientPermissionType", type = "string", 
            max = 2048L, min = 1L)), shape = "ClientPermissionListType", 
            type = "list"), ExplicitAuthFlows = structure(list(structure(logical(0), 
            shape = "ExplicitAuthFlowsType", type = "string")), 
            shape = "ExplicitAuthFlowsListType", type = "list"), 
        SupportedIdentityProviders = structure(list(structure(logical(0), 
            shape = "ProviderNameType", type = "string", max = 32L, 
            min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
            shape = "SupportedIdentityProvidersListType", type = "list"), 
        CallbackURLs = structure(list(structure(logical(0), shape = "RedirectUrlType", 
            type = "string", max = 1024L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
            shape = "CallbackURLsListType", type = "list", max = 100L, 
            min = 0L), LogoutURLs = structure(list(structure(logical(0), 
            shape = "RedirectUrlType", type = "string", max = 1024L, 
            min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
            shape = "LogoutURLsListType", type = "list", max = 100L, 
            min = 0L), DefaultRedirectURI = structure(logical(0), 
            shape = "RedirectUrlType", type = "string", max = 1024L, 
            min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        AllowedOAuthFlows = structure(list(structure(logical(0), 
            shape = "OAuthFlowType", type = "string")), shape = "OAuthFlowsType", 
            type = "list", max = 3L, min = 0L), AllowedOAuthScopes = structure(list(structure(logical(0), 
            shape = "ScopeType", type = "string", max = 256L, 
            min = 1L, pattern = "[\\x21\\x23-\\x5B\\x5D-\\x7E]+")), 
            shape = "ScopeListType", type = "list", max = 25L), 
        AllowedOAuthFlowsUserPoolClient = structure(logical(0), 
            shape = "BooleanType", box = TRUE, type = "boolean"), 
        AnalyticsConfiguration = structure(list(ApplicationId = structure(logical(0), 
            shape = "HexStringType", type = "string", pattern = "^[0-9a-fA-F]+$"), 
            RoleArn = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            ExternalId = structure(logical(0), shape = "StringType", 
                type = "string"), UserDataShared = structure(logical(0), 
                shape = "BooleanType", type = "boolean")), shape = "AnalyticsConfigurationType", 
            type = "structure")), shape = "UserPoolClientType", 
        type = "structure")), shape = "DescribeUserPoolClientResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_user_pool_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Domain = structure(logical(0), shape = "DomainType", 
        type = "string", max = 63L, min = 1L, pattern = "^[a-z0-9](?:[a-z0-9\\-]{0,61}[a-z0-9])?$")), 
        shape = "DescribeUserPoolDomainRequest", type = "structure")
    return(populate(args, shape))
}

describe_user_pool_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainDescription = structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), AWSAccountId = structure(logical(0), 
        shape = "AWSAccountIdType", type = "string"), Domain = structure(logical(0), 
        shape = "DomainType", type = "string", max = 63L, min = 1L, 
        pattern = "^[a-z0-9](?:[a-z0-9\\-]{0,61}[a-z0-9])?$"), 
        S3Bucket = structure(logical(0), shape = "S3BucketType", 
            type = "string", max = 1024L, min = 3L, pattern = "^[0-9A-Za-z\\.\\-_]*(?<!\\.)$"), 
        CloudFrontDistribution = structure(logical(0), shape = "StringType", 
            type = "string"), Version = structure(logical(0), 
            shape = "DomainVersionType", type = "string", max = 20L, 
            min = 1L), Status = structure(logical(0), shape = "DomainStatusType", 
            type = "string"), CustomDomainConfig = structure(list(CertificateArn = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?")), 
            shape = "CustomDomainConfigType", type = "structure")), 
        shape = "DomainDescriptionType", type = "structure")), 
        shape = "DescribeUserPoolDomainResponse", type = "structure")
    return(populate(args, shape))
}

forget_device_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE), DeviceKey = structure(logical(0), 
        shape = "DeviceKeyType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-f-]+")), shape = "ForgetDeviceRequest", 
        type = "structure")
    return(populate(args, shape))
}

forget_device_output <- function () 
{
    return(list())
}

forgot_password_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), SecretHash = structure(logical(0), 
        shape = "SecretHashType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=/]+", sensitive = TRUE), UserContextData = structure(list(EncodedData = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "UserContextDataType", 
        type = "structure"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), AnalyticsMetadata = structure(list(AnalyticsEndpointId = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "AnalyticsMetadataType", 
        type = "structure")), shape = "ForgotPasswordRequest", 
        type = "structure")
    return(populate(args, shape))
}

forgot_password_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CodeDeliveryDetails = structure(list(Destination = structure(logical(0), 
        shape = "StringType", type = "string"), DeliveryMedium = structure(logical(0), 
        shape = "DeliveryMediumType", type = "string"), AttributeName = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "CodeDeliveryDetailsType", type = "structure")), 
        shape = "ForgotPasswordResponse", type = "structure")
    return(populate(args, shape))
}

get_csv_header_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+")), shape = "GetCSVHeaderRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_csv_header_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), CSVHeader = structure(list(structure(logical(0), 
        shape = "StringType", type = "string")), shape = "ListOfStringTypes", 
        type = "list")), shape = "GetCSVHeaderResponse", type = "structure")
    return(populate(args, shape))
}

get_device_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceKey = structure(logical(0), 
        shape = "DeviceKeyType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-f-]+"), AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE)), shape = "GetDeviceRequest", type = "structure")
    return(populate(args, shape))
}

get_device_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Device = structure(list(DeviceKey = structure(logical(0), 
        shape = "DeviceKeyType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-f-]+"), DeviceAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        Value = structure(logical(0), shape = "AttributeValueType", 
            type = "string", max = 2048L, sensitive = TRUE)), 
        shape = "AttributeType", type = "structure")), shape = "AttributeListType", 
        type = "list"), DeviceCreateDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), DeviceLastModifiedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), DeviceLastAuthenticatedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp")), shape = "DeviceType", 
        type = "structure")), shape = "GetDeviceResponse", type = "structure")
    return(populate(args, shape))
}

get_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "GroupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        UserPoolId = structure(logical(0), shape = "UserPoolIdType", 
            type = "string", max = 55L, min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+")), 
        shape = "GetGroupRequest", type = "structure")
    return(populate(args, shape))
}

get_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Group = structure(list(GroupName = structure(logical(0), 
        shape = "GroupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        UserPoolId = structure(logical(0), shape = "UserPoolIdType", 
            type = "string", max = 55L, min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), 
        Description = structure(logical(0), shape = "DescriptionType", 
            type = "string", max = 2048L), RoleArn = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        Precedence = structure(logical(0), shape = "PrecedenceType", 
            type = "integer", min = 0L), LastModifiedDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp")), shape = "GroupType", 
        type = "structure")), shape = "GetGroupResponse", type = "structure")
    return(populate(args, shape))
}

get_identity_provider_by_identifier_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), IdpIdentifier = structure(logical(0), 
        shape = "IdpIdentifierType", type = "string", max = 40L, 
        min = 1L, pattern = "[\\w\\s+=.@-]+")), shape = "GetIdentityProviderByIdentifierRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_identity_provider_by_identifier_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityProvider = structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ProviderName = structure(logical(0), 
        shape = "ProviderNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        ProviderType = structure(logical(0), shape = "IdentityProviderTypeType", 
            type = "string"), ProviderDetails = structure(list(structure(logical(0), 
            shape = "StringType", type = "string")), shape = "ProviderDetailsType", 
            type = "map"), AttributeMapping = structure(list(structure(logical(0), 
            shape = "StringType", type = "string")), shape = "AttributeMappingType", 
            type = "map"), IdpIdentifiers = structure(list(structure(logical(0), 
            shape = "IdpIdentifierType", type = "string", max = 40L, 
            min = 1L, pattern = "[\\w\\s+=.@-]+")), shape = "IdpIdentifiersListType", 
            type = "list", max = 50L, min = 0L), LastModifiedDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp")), shape = "IdentityProviderType", 
        type = "structure")), shape = "GetIdentityProviderByIdentifierResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_signing_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+")), shape = "GetSigningCertificateRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_signing_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Certificate = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "GetSigningCertificateResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_ui_customization_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE)), shape = "GetUICustomizationRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_ui_customization_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UICustomization = structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), ImageUrl = structure(logical(0), 
        shape = "ImageUrlType", type = "string"), CSS = structure(logical(0), 
        shape = "CSSType", type = "string"), CSSVersion = structure(logical(0), 
        shape = "CSSVersionType", type = "string"), LastModifiedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), CreationDate = structure(logical(0), 
        shape = "DateType", type = "timestamp")), shape = "UICustomizationType", 
        type = "structure")), shape = "GetUICustomizationResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE)), shape = "GetUserRequest", type = "structure")
    return(populate(args, shape))
}

get_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), UserAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        Value = structure(logical(0), shape = "AttributeValueType", 
            type = "string", max = 2048L, sensitive = TRUE)), 
        shape = "AttributeType", type = "structure")), shape = "AttributeListType", 
        type = "list"), MFAOptions = structure(list(structure(list(DeliveryMedium = structure(logical(0), 
        shape = "DeliveryMediumType", type = "string"), AttributeName = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "MFAOptionType", type = "structure")), shape = "MFAOptionListType", 
        type = "list"), PreferredMfaSetting = structure(logical(0), 
        shape = "StringType", type = "string"), UserMFASettingList = structure(list(structure(logical(0), 
        shape = "StringType", type = "string")), shape = "UserMFASettingListType", 
        type = "list")), shape = "GetUserResponse", type = "structure")
    return(populate(args, shape))
}

get_user_attribute_verification_code_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE), AttributeName = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "GetUserAttributeVerificationCodeRequest", type = "structure")
    return(populate(args, shape))
}

get_user_attribute_verification_code_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CodeDeliveryDetails = structure(list(Destination = structure(logical(0), 
        shape = "StringType", type = "string"), DeliveryMedium = structure(logical(0), 
        shape = "DeliveryMediumType", type = "string"), AttributeName = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "CodeDeliveryDetailsType", type = "structure")), 
        shape = "GetUserAttributeVerificationCodeResponse", type = "structure")
    return(populate(args, shape))
}

get_user_pool_mfa_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+")), shape = "GetUserPoolMfaConfigRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_user_pool_mfa_config_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SmsMfaConfiguration = structure(list(SmsAuthenticationMessage = structure(logical(0), 
        shape = "SmsVerificationMessageType", type = "string", 
        max = 140L, min = 6L, pattern = ".*\\{####\\}.*"), SmsConfiguration = structure(list(SnsCallerArn = structure(logical(0), 
        shape = "ArnType", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        ExternalId = structure(logical(0), shape = "StringType", 
            type = "string")), shape = "SmsConfigurationType", 
        type = "structure")), shape = "SmsMfaConfigType", type = "structure"), 
        SoftwareTokenMfaConfiguration = structure(list(Enabled = structure(logical(0), 
            shape = "BooleanType", type = "boolean")), shape = "SoftwareTokenMfaConfigType", 
            type = "structure"), MfaConfiguration = structure(logical(0), 
            shape = "UserPoolMfaType", type = "string")), shape = "GetUserPoolMfaConfigResponse", 
        type = "structure")
    return(populate(args, shape))
}

global_sign_out_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE)), shape = "GlobalSignOutRequest", type = "structure")
    return(populate(args, shape))
}

global_sign_out_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GlobalSignOutResponse", 
        type = "structure")
    return(populate(args, shape))
}

initiate_auth_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthFlow = structure(logical(0), 
        shape = "AuthFlowType", type = "string"), AuthParameters = structure(list(structure(logical(0), 
        shape = "StringType", type = "string")), shape = "AuthParametersType", 
        type = "map"), ClientMetadata = structure(list(structure(logical(0), 
        shape = "StringType", type = "string")), shape = "ClientMetadataType", 
        type = "map"), ClientId = structure(logical(0), shape = "ClientIdType", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+]+", 
        sensitive = TRUE), AnalyticsMetadata = structure(list(AnalyticsEndpointId = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "AnalyticsMetadataType", 
        type = "structure"), UserContextData = structure(list(EncodedData = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "UserContextDataType", 
        type = "structure")), shape = "InitiateAuthRequest", 
        type = "structure")
    return(populate(args, shape))
}

initiate_auth_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChallengeName = structure(logical(0), 
        shape = "ChallengeNameType", type = "string"), Session = structure(logical(0), 
        shape = "SessionType", type = "string", max = 2048L, 
        min = 20L), ChallengeParameters = structure(list(structure(logical(0), 
        shape = "StringType", type = "string")), shape = "ChallengeParametersType", 
        type = "map"), AuthenticationResult = structure(list(AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE), ExpiresIn = structure(logical(0), 
        shape = "IntegerType", type = "integer"), TokenType = structure(logical(0), 
        shape = "StringType", type = "string"), RefreshToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE), IdToken = structure(logical(0), shape = "TokenModelType", 
        type = "string", pattern = "[A-Za-z0-9-_=.]+", sensitive = TRUE), 
        NewDeviceMetadata = structure(list(DeviceKey = structure(logical(0), 
            shape = "DeviceKeyType", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+_[0-9a-f-]+"), DeviceGroupKey = structure(logical(0), 
            shape = "StringType", type = "string")), shape = "NewDeviceMetadataType", 
            type = "structure")), shape = "AuthenticationResultType", 
        type = "structure")), shape = "InitiateAuthResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_devices_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE), Limit = structure(logical(0), shape = "QueryLimitType", 
        type = "integer", max = 60L, min = 0L), PaginationToken = structure(logical(0), 
        shape = "SearchPaginationTokenType", type = "string", 
        min = 1L, pattern = "[\\S]+")), shape = "ListDevicesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_devices_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Devices = structure(list(structure(list(DeviceKey = structure(logical(0), 
        shape = "DeviceKeyType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-f-]+"), DeviceAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        Value = structure(logical(0), shape = "AttributeValueType", 
            type = "string", max = 2048L, sensitive = TRUE)), 
        shape = "AttributeType", type = "structure")), shape = "AttributeListType", 
        type = "list"), DeviceCreateDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), DeviceLastModifiedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), DeviceLastAuthenticatedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp")), shape = "DeviceType", 
        type = "structure")), shape = "DeviceListType", type = "list"), 
        PaginationToken = structure(logical(0), shape = "SearchPaginationTokenType", 
            type = "string", min = 1L, pattern = "[\\S]+")), 
        shape = "ListDevicesResponse", type = "structure")
    return(populate(args, shape))
}

list_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Limit = structure(logical(0), 
        shape = "QueryLimitType", type = "integer", max = 60L, 
        min = 0L), NextToken = structure(logical(0), shape = "PaginationKey", 
        type = "string", min = 1L, pattern = "[\\S]+")), shape = "ListGroupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Groups = structure(list(structure(list(GroupName = structure(logical(0), 
        shape = "GroupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        UserPoolId = structure(logical(0), shape = "UserPoolIdType", 
            type = "string", max = 55L, min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), 
        Description = structure(logical(0), shape = "DescriptionType", 
            type = "string", max = 2048L), RoleArn = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        Precedence = structure(logical(0), shape = "PrecedenceType", 
            type = "integer", min = 0L), LastModifiedDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp")), shape = "GroupType", 
        type = "structure")), shape = "GroupListType", type = "list"), 
        NextToken = structure(logical(0), shape = "PaginationKey", 
            type = "string", min = 1L, pattern = "[\\S]+")), 
        shape = "ListGroupsResponse", type = "structure")
    return(populate(args, shape))
}

list_identity_providers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), MaxResults = structure(logical(0), 
        shape = "ListProvidersLimitType", type = "integer", max = 60L, 
        min = 1L), NextToken = structure(logical(0), shape = "PaginationKeyType", 
        type = "string", min = 1L, pattern = "[\\S]+")), shape = "ListIdentityProvidersRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_identity_providers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Providers = structure(list(structure(list(ProviderName = structure(logical(0), 
        shape = "ProviderNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        ProviderType = structure(logical(0), shape = "IdentityProviderTypeType", 
            type = "string"), LastModifiedDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp")), shape = "ProviderDescription", 
        type = "structure")), shape = "ProvidersListType", type = "list", 
        max = 50L, min = 0L), NextToken = structure(logical(0), 
        shape = "PaginationKeyType", type = "string", min = 1L, 
        pattern = "[\\S]+")), shape = "ListIdentityProvidersResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_resource_servers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), MaxResults = structure(logical(0), 
        shape = "ListResourceServersLimitType", type = "integer", 
        max = 50L, min = 1L), NextToken = structure(logical(0), 
        shape = "PaginationKeyType", type = "string", min = 1L, 
        pattern = "[\\S]+")), shape = "ListResourceServersRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_resource_servers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceServers = structure(list(structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Identifier = structure(logical(0), 
        shape = "ResourceServerIdentifierType", type = "string", 
        max = 256L, min = 1L, pattern = "[\\x21\\x23-\\x5B\\x5D-\\x7E]+"), 
        Name = structure(logical(0), shape = "ResourceServerNameType", 
            type = "string", max = 256L, min = 1L, pattern = "[\\w\\s+=,.@-]+"), 
        Scopes = structure(list(structure(list(ScopeName = structure(logical(0), 
            shape = "ResourceServerScopeNameType", type = "string", 
            max = 256L, min = 1L, pattern = "[\\x21\\x23-\\x2E\\x30-\\x5B\\x5D-\\x7E]+"), 
            ScopeDescription = structure(logical(0), shape = "ResourceServerScopeDescriptionType", 
                type = "string", max = 256L, min = 1L)), shape = "ResourceServerScopeType", 
            type = "structure")), shape = "ResourceServerScopeListType", 
            type = "list", max = 25L)), shape = "ResourceServerType", 
        type = "structure")), shape = "ResourceServersListType", 
        type = "list"), NextToken = structure(logical(0), shape = "PaginationKeyType", 
        type = "string", min = 1L, pattern = "[\\S]+")), shape = "ListResourceServersResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_user_import_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), MaxResults = structure(logical(0), 
        shape = "PoolQueryLimitType", type = "integer", max = 60L, 
        min = 1L), PaginationToken = structure(logical(0), shape = "PaginationKeyType", 
        type = "string", min = 1L, pattern = "[\\S]+")), shape = "ListUserImportJobsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_user_import_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserImportJobs = structure(list(structure(list(JobName = structure(logical(0), 
        shape = "UserImportJobNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w\\s+=,.@-]+"), JobId = structure(logical(0), 
        shape = "UserImportJobIdType", type = "string", max = 55L, 
        min = 1L, pattern = "import-[0-9a-zA-Z-]+"), UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), PreSignedUrl = structure(logical(0), 
        shape = "PreSignedUrlType", type = "string", max = 2048L, 
        min = 0L), CreationDate = structure(logical(0), shape = "DateType", 
        type = "timestamp"), StartDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), CompletionDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), Status = structure(logical(0), 
        shape = "UserImportJobStatusType", type = "string"), 
        CloudWatchLogsRoleArn = structure(logical(0), shape = "ArnType", 
            type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        ImportedUsers = structure(logical(0), shape = "LongType", 
            type = "long"), SkippedUsers = structure(logical(0), 
            shape = "LongType", type = "long"), FailedUsers = structure(logical(0), 
            shape = "LongType", type = "long"), CompletionMessage = structure(logical(0), 
            shape = "CompletionMessageType", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w]+")), shape = "UserImportJobType", 
        type = "structure")), shape = "UserImportJobsListType", 
        type = "list", max = 50L, min = 1L), PaginationToken = structure(logical(0), 
        shape = "PaginationKeyType", type = "string", min = 1L, 
        pattern = "[\\S]+")), shape = "ListUserImportJobsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_user_pool_clients_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), MaxResults = structure(logical(0), 
        shape = "QueryLimit", type = "integer", max = 60L, min = 1L), 
        NextToken = structure(logical(0), shape = "PaginationKey", 
            type = "string", min = 1L, pattern = "[\\S]+")), 
        shape = "ListUserPoolClientsRequest", type = "structure")
    return(populate(args, shape))
}

list_user_pool_clients_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolClients = structure(list(structure(list(ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ClientName = structure(logical(0), 
        shape = "ClientNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w\\s+=,.@-]+")), shape = "UserPoolClientDescription", 
        type = "structure")), shape = "UserPoolClientListType", 
        type = "list"), NextToken = structure(logical(0), shape = "PaginationKey", 
        type = "string", min = 1L, pattern = "[\\S]+")), shape = "ListUserPoolClientsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_user_pools_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationKeyType", type = "string", min = 1L, 
        pattern = "[\\S]+"), MaxResults = structure(logical(0), 
        shape = "PoolQueryLimitType", type = "integer", max = 60L, 
        min = 1L)), shape = "ListUserPoolsRequest", type = "structure")
    return(populate(args, shape))
}

list_user_pools_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPools = structure(list(structure(list(Id = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Name = structure(logical(0), 
        shape = "UserPoolNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w\\s+=,.@-]+"), LambdaConfig = structure(list(PreSignUp = structure(logical(0), 
        shape = "ArnType", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        CustomMessage = structure(logical(0), shape = "ArnType", 
            type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        PostConfirmation = structure(logical(0), shape = "ArnType", 
            type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        PreAuthentication = structure(logical(0), shape = "ArnType", 
            type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        PostAuthentication = structure(logical(0), shape = "ArnType", 
            type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        DefineAuthChallenge = structure(logical(0), shape = "ArnType", 
            type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        CreateAuthChallenge = structure(logical(0), shape = "ArnType", 
            type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        VerifyAuthChallengeResponse = structure(logical(0), shape = "ArnType", 
            type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        PreTokenGeneration = structure(logical(0), shape = "ArnType", 
            type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        UserMigration = structure(logical(0), shape = "ArnType", 
            type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?")), 
        shape = "LambdaConfigType", type = "structure"), Status = structure(logical(0), 
        shape = "StatusType", type = "string"), LastModifiedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), CreationDate = structure(logical(0), 
        shape = "DateType", type = "timestamp")), shape = "UserPoolDescriptionType", 
        type = "structure")), shape = "UserPoolListType", type = "list"), 
        NextToken = structure(logical(0), shape = "PaginationKeyType", 
            type = "string", min = 1L, pattern = "[\\S]+")), 
        shape = "ListUserPoolsResponse", type = "structure")
    return(populate(args, shape))
}

list_users_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), AttributesToGet = structure(list(structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "SearchedAttributeNamesListType", type = "list"), 
        Limit = structure(logical(0), shape = "QueryLimitType", 
            type = "integer", max = 60L, min = 0L), PaginationToken = structure(logical(0), 
            shape = "SearchPaginationTokenType", type = "string", 
            min = 1L, pattern = "[\\S]+"), Filter = structure(logical(0), 
            shape = "UserFilterType", type = "string", max = 256L)), 
        shape = "ListUsersRequest", type = "structure")
    return(populate(args, shape))
}

list_users_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Users = structure(list(structure(list(Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), Attributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        Value = structure(logical(0), shape = "AttributeValueType", 
            type = "string", max = 2048L, sensitive = TRUE)), 
        shape = "AttributeType", type = "structure")), shape = "AttributeListType", 
        type = "list"), UserCreateDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), UserLastModifiedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), Enabled = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), UserStatus = structure(logical(0), 
        shape = "UserStatusType", type = "string"), MFAOptions = structure(list(structure(list(DeliveryMedium = structure(logical(0), 
        shape = "DeliveryMediumType", type = "string"), AttributeName = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "MFAOptionType", type = "structure")), shape = "MFAOptionListType", 
        type = "list")), shape = "UserType", type = "structure")), 
        shape = "UsersListType", type = "list"), PaginationToken = structure(logical(0), 
        shape = "SearchPaginationTokenType", type = "string", 
        min = 1L, pattern = "[\\S]+")), shape = "ListUsersResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_users_in_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), GroupName = structure(logical(0), 
        shape = "GroupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        Limit = structure(logical(0), shape = "QueryLimitType", 
            type = "integer", max = 60L, min = 0L), NextToken = structure(logical(0), 
            shape = "PaginationKey", type = "string", min = 1L, 
            pattern = "[\\S]+")), shape = "ListUsersInGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_users_in_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Users = structure(list(structure(list(Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), Attributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        Value = structure(logical(0), shape = "AttributeValueType", 
            type = "string", max = 2048L, sensitive = TRUE)), 
        shape = "AttributeType", type = "structure")), shape = "AttributeListType", 
        type = "list"), UserCreateDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), UserLastModifiedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), Enabled = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), UserStatus = structure(logical(0), 
        shape = "UserStatusType", type = "string"), MFAOptions = structure(list(structure(list(DeliveryMedium = structure(logical(0), 
        shape = "DeliveryMediumType", type = "string"), AttributeName = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "MFAOptionType", type = "structure")), shape = "MFAOptionListType", 
        type = "list")), shape = "UserType", type = "structure")), 
        shape = "UsersListType", type = "list"), NextToken = structure(logical(0), 
        shape = "PaginationKey", type = "string", min = 1L, pattern = "[\\S]+")), 
        shape = "ListUsersInGroupResponse", type = "structure")
    return(populate(args, shape))
}

resend_confirmation_code_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), SecretHash = structure(logical(0), 
        shape = "SecretHashType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=/]+", sensitive = TRUE), UserContextData = structure(list(EncodedData = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "UserContextDataType", 
        type = "structure"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), AnalyticsMetadata = structure(list(AnalyticsEndpointId = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "AnalyticsMetadataType", 
        type = "structure")), shape = "ResendConfirmationCodeRequest", 
        type = "structure")
    return(populate(args, shape))
}

resend_confirmation_code_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CodeDeliveryDetails = structure(list(Destination = structure(logical(0), 
        shape = "StringType", type = "string"), DeliveryMedium = structure(logical(0), 
        shape = "DeliveryMediumType", type = "string"), AttributeName = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "CodeDeliveryDetailsType", type = "structure")), 
        shape = "ResendConfirmationCodeResponse", type = "structure")
    return(populate(args, shape))
}

respond_to_auth_challenge_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), ChallengeName = structure(logical(0), 
        shape = "ChallengeNameType", type = "string"), Session = structure(logical(0), 
        shape = "SessionType", type = "string", max = 2048L, 
        min = 20L), ChallengeResponses = structure(list(structure(logical(0), 
        shape = "StringType", type = "string")), shape = "ChallengeResponsesType", 
        type = "map"), AnalyticsMetadata = structure(list(AnalyticsEndpointId = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "AnalyticsMetadataType", 
        type = "structure"), UserContextData = structure(list(EncodedData = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "UserContextDataType", 
        type = "structure")), shape = "RespondToAuthChallengeRequest", 
        type = "structure")
    return(populate(args, shape))
}

respond_to_auth_challenge_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChallengeName = structure(logical(0), 
        shape = "ChallengeNameType", type = "string"), Session = structure(logical(0), 
        shape = "SessionType", type = "string", max = 2048L, 
        min = 20L), ChallengeParameters = structure(list(structure(logical(0), 
        shape = "StringType", type = "string")), shape = "ChallengeParametersType", 
        type = "map"), AuthenticationResult = structure(list(AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE), ExpiresIn = structure(logical(0), 
        shape = "IntegerType", type = "integer"), TokenType = structure(logical(0), 
        shape = "StringType", type = "string"), RefreshToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE), IdToken = structure(logical(0), shape = "TokenModelType", 
        type = "string", pattern = "[A-Za-z0-9-_=.]+", sensitive = TRUE), 
        NewDeviceMetadata = structure(list(DeviceKey = structure(logical(0), 
            shape = "DeviceKeyType", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+_[0-9a-f-]+"), DeviceGroupKey = structure(logical(0), 
            shape = "StringType", type = "string")), shape = "NewDeviceMetadataType", 
            type = "structure")), shape = "AuthenticationResultType", 
        type = "structure")), shape = "RespondToAuthChallengeResponse", 
        type = "structure")
    return(populate(args, shape))
}

set_risk_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), CompromisedCredentialsRiskConfiguration = structure(list(EventFilter = structure(list(structure(logical(0), 
        shape = "EventFilterType", type = "string")), shape = "EventFiltersType", 
        type = "list"), Actions = structure(list(EventAction = structure(logical(0), 
        shape = "CompromisedCredentialsEventActionType", type = "string")), 
        shape = "CompromisedCredentialsActionsType", type = "structure")), 
        shape = "CompromisedCredentialsRiskConfigurationType", 
        type = "structure"), AccountTakeoverRiskConfiguration = structure(list(NotifyConfiguration = structure(list(From = structure(logical(0), 
        shape = "StringType", type = "string"), ReplyTo = structure(logical(0), 
        shape = "StringType", type = "string"), SourceArn = structure(logical(0), 
        shape = "ArnType", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        BlockEmail = structure(list(Subject = structure(logical(0), 
            shape = "EmailNotificationSubjectType", type = "string", 
            max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
            HtmlBody = structure(logical(0), shape = "EmailNotificationBodyType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+"), 
            TextBody = structure(logical(0), shape = "EmailNotificationBodyType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+")), 
            shape = "NotifyEmailType", type = "structure"), NoActionEmail = structure(list(Subject = structure(logical(0), 
            shape = "EmailNotificationSubjectType", type = "string", 
            max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
            HtmlBody = structure(logical(0), shape = "EmailNotificationBodyType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+"), 
            TextBody = structure(logical(0), shape = "EmailNotificationBodyType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+")), 
            shape = "NotifyEmailType", type = "structure"), MfaEmail = structure(list(Subject = structure(logical(0), 
            shape = "EmailNotificationSubjectType", type = "string", 
            max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
            HtmlBody = structure(logical(0), shape = "EmailNotificationBodyType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+"), 
            TextBody = structure(logical(0), shape = "EmailNotificationBodyType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+")), 
            shape = "NotifyEmailType", type = "structure")), 
        shape = "NotifyConfigurationType", type = "structure"), 
        Actions = structure(list(LowAction = structure(list(Notify = structure(logical(0), 
            shape = "AccountTakeoverActionNotifyType", type = "boolean"), 
            EventAction = structure(logical(0), shape = "AccountTakeoverEventActionType", 
                type = "string")), shape = "AccountTakeoverActionType", 
            type = "structure"), MediumAction = structure(list(Notify = structure(logical(0), 
            shape = "AccountTakeoverActionNotifyType", type = "boolean"), 
            EventAction = structure(logical(0), shape = "AccountTakeoverEventActionType", 
                type = "string")), shape = "AccountTakeoverActionType", 
            type = "structure"), HighAction = structure(list(Notify = structure(logical(0), 
            shape = "AccountTakeoverActionNotifyType", type = "boolean"), 
            EventAction = structure(logical(0), shape = "AccountTakeoverEventActionType", 
                type = "string")), shape = "AccountTakeoverActionType", 
            type = "structure")), shape = "AccountTakeoverActionsType", 
            type = "structure")), shape = "AccountTakeoverRiskConfigurationType", 
        type = "structure"), RiskExceptionConfiguration = structure(list(BlockedIPRangeList = structure(list(structure(logical(0), 
        shape = "StringType", type = "string")), shape = "BlockedIPRangeListType", 
        type = "list", max = 20L), SkippedIPRangeList = structure(list(structure(logical(0), 
        shape = "StringType", type = "string")), shape = "SkippedIPRangeListType", 
        type = "list", max = 20L)), shape = "RiskExceptionConfigurationType", 
        type = "structure")), shape = "SetRiskConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

set_risk_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RiskConfiguration = structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), CompromisedCredentialsRiskConfiguration = structure(list(EventFilter = structure(list(structure(logical(0), 
        shape = "EventFilterType", type = "string")), shape = "EventFiltersType", 
        type = "list"), Actions = structure(list(EventAction = structure(logical(0), 
        shape = "CompromisedCredentialsEventActionType", type = "string")), 
        shape = "CompromisedCredentialsActionsType", type = "structure")), 
        shape = "CompromisedCredentialsRiskConfigurationType", 
        type = "structure"), AccountTakeoverRiskConfiguration = structure(list(NotifyConfiguration = structure(list(From = structure(logical(0), 
        shape = "StringType", type = "string"), ReplyTo = structure(logical(0), 
        shape = "StringType", type = "string"), SourceArn = structure(logical(0), 
        shape = "ArnType", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        BlockEmail = structure(list(Subject = structure(logical(0), 
            shape = "EmailNotificationSubjectType", type = "string", 
            max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
            HtmlBody = structure(logical(0), shape = "EmailNotificationBodyType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+"), 
            TextBody = structure(logical(0), shape = "EmailNotificationBodyType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+")), 
            shape = "NotifyEmailType", type = "structure"), NoActionEmail = structure(list(Subject = structure(logical(0), 
            shape = "EmailNotificationSubjectType", type = "string", 
            max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
            HtmlBody = structure(logical(0), shape = "EmailNotificationBodyType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+"), 
            TextBody = structure(logical(0), shape = "EmailNotificationBodyType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+")), 
            shape = "NotifyEmailType", type = "structure"), MfaEmail = structure(list(Subject = structure(logical(0), 
            shape = "EmailNotificationSubjectType", type = "string", 
            max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
            HtmlBody = structure(logical(0), shape = "EmailNotificationBodyType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+"), 
            TextBody = structure(logical(0), shape = "EmailNotificationBodyType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+")), 
            shape = "NotifyEmailType", type = "structure")), 
        shape = "NotifyConfigurationType", type = "structure"), 
        Actions = structure(list(LowAction = structure(list(Notify = structure(logical(0), 
            shape = "AccountTakeoverActionNotifyType", type = "boolean"), 
            EventAction = structure(logical(0), shape = "AccountTakeoverEventActionType", 
                type = "string")), shape = "AccountTakeoverActionType", 
            type = "structure"), MediumAction = structure(list(Notify = structure(logical(0), 
            shape = "AccountTakeoverActionNotifyType", type = "boolean"), 
            EventAction = structure(logical(0), shape = "AccountTakeoverEventActionType", 
                type = "string")), shape = "AccountTakeoverActionType", 
            type = "structure"), HighAction = structure(list(Notify = structure(logical(0), 
            shape = "AccountTakeoverActionNotifyType", type = "boolean"), 
            EventAction = structure(logical(0), shape = "AccountTakeoverEventActionType", 
                type = "string")), shape = "AccountTakeoverActionType", 
            type = "structure")), shape = "AccountTakeoverActionsType", 
            type = "structure")), shape = "AccountTakeoverRiskConfigurationType", 
        type = "structure"), RiskExceptionConfiguration = structure(list(BlockedIPRangeList = structure(list(structure(logical(0), 
        shape = "StringType", type = "string")), shape = "BlockedIPRangeListType", 
        type = "list", max = 20L), SkippedIPRangeList = structure(list(structure(logical(0), 
        shape = "StringType", type = "string")), shape = "SkippedIPRangeListType", 
        type = "list", max = 20L)), shape = "RiskExceptionConfigurationType", 
        type = "structure"), LastModifiedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp")), shape = "RiskConfigurationType", 
        type = "structure")), shape = "SetRiskConfigurationResponse", 
        type = "structure")
    return(populate(args, shape))
}

set_ui_customization_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), CSS = structure(logical(0), 
        shape = "CSSType", type = "string"), ImageFile = structure(logical(0), 
        shape = "ImageFileType", type = "blob")), shape = "SetUICustomizationRequest", 
        type = "structure")
    return(populate(args, shape))
}

set_ui_customization_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UICustomization = structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), ImageUrl = structure(logical(0), 
        shape = "ImageUrlType", type = "string"), CSS = structure(logical(0), 
        shape = "CSSType", type = "string"), CSSVersion = structure(logical(0), 
        shape = "CSSVersionType", type = "string"), LastModifiedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), CreationDate = structure(logical(0), 
        shape = "DateType", type = "timestamp")), shape = "UICustomizationType", 
        type = "structure")), shape = "SetUICustomizationResponse", 
        type = "structure")
    return(populate(args, shape))
}

set_user_mfa_preference_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SMSMfaSettings = structure(list(Enabled = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), PreferredMfa = structure(logical(0), 
        shape = "BooleanType", type = "boolean")), shape = "SMSMfaSettingsType", 
        type = "structure"), SoftwareTokenMfaSettings = structure(list(Enabled = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), PreferredMfa = structure(logical(0), 
        shape = "BooleanType", type = "boolean")), shape = "SoftwareTokenMfaSettingsType", 
        type = "structure"), AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE)), shape = "SetUserMFAPreferenceRequest", 
        type = "structure")
    return(populate(args, shape))
}

set_user_mfa_preference_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SetUserMFAPreferenceResponse", 
        type = "structure")
    return(populate(args, shape))
}

set_user_pool_mfa_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), SmsMfaConfiguration = structure(list(SmsAuthenticationMessage = structure(logical(0), 
        shape = "SmsVerificationMessageType", type = "string", 
        max = 140L, min = 6L, pattern = ".*\\{####\\}.*"), SmsConfiguration = structure(list(SnsCallerArn = structure(logical(0), 
        shape = "ArnType", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        ExternalId = structure(logical(0), shape = "StringType", 
            type = "string")), shape = "SmsConfigurationType", 
        type = "structure")), shape = "SmsMfaConfigType", type = "structure"), 
        SoftwareTokenMfaConfiguration = structure(list(Enabled = structure(logical(0), 
            shape = "BooleanType", type = "boolean")), shape = "SoftwareTokenMfaConfigType", 
            type = "structure"), MfaConfiguration = structure(logical(0), 
            shape = "UserPoolMfaType", type = "string")), shape = "SetUserPoolMfaConfigRequest", 
        type = "structure")
    return(populate(args, shape))
}

set_user_pool_mfa_config_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SmsMfaConfiguration = structure(list(SmsAuthenticationMessage = structure(logical(0), 
        shape = "SmsVerificationMessageType", type = "string", 
        max = 140L, min = 6L, pattern = ".*\\{####\\}.*"), SmsConfiguration = structure(list(SnsCallerArn = structure(logical(0), 
        shape = "ArnType", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        ExternalId = structure(logical(0), shape = "StringType", 
            type = "string")), shape = "SmsConfigurationType", 
        type = "structure")), shape = "SmsMfaConfigType", type = "structure"), 
        SoftwareTokenMfaConfiguration = structure(list(Enabled = structure(logical(0), 
            shape = "BooleanType", type = "boolean")), shape = "SoftwareTokenMfaConfigType", 
            type = "structure"), MfaConfiguration = structure(logical(0), 
            shape = "UserPoolMfaType", type = "string")), shape = "SetUserPoolMfaConfigResponse", 
        type = "structure")
    return(populate(args, shape))
}

set_user_settings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE), MFAOptions = structure(list(structure(list(DeliveryMedium = structure(logical(0), 
        shape = "DeliveryMediumType", type = "string"), AttributeName = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "MFAOptionType", type = "structure")), shape = "MFAOptionListType", 
        type = "list")), shape = "SetUserSettingsRequest", type = "structure")
    return(populate(args, shape))
}

set_user_settings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SetUserSettingsResponse", 
        type = "structure")
    return(populate(args, shape))
}

sign_up_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), SecretHash = structure(logical(0), 
        shape = "SecretHashType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+=/]+", sensitive = TRUE), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), Password = structure(logical(0), shape = "PasswordType", 
        type = "string", max = 256L, min = 6L, pattern = "[\\S]+", 
        sensitive = TRUE), UserAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        Value = structure(logical(0), shape = "AttributeValueType", 
            type = "string", max = 2048L, sensitive = TRUE)), 
        shape = "AttributeType", type = "structure")), shape = "AttributeListType", 
        type = "list"), ValidationData = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        Value = structure(logical(0), shape = "AttributeValueType", 
            type = "string", max = 2048L, sensitive = TRUE)), 
        shape = "AttributeType", type = "structure")), shape = "AttributeListType", 
        type = "list"), AnalyticsMetadata = structure(list(AnalyticsEndpointId = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "AnalyticsMetadataType", 
        type = "structure"), UserContextData = structure(list(EncodedData = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "UserContextDataType", 
        type = "structure")), shape = "SignUpRequest", type = "structure")
    return(populate(args, shape))
}

sign_up_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserConfirmed = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), CodeDeliveryDetails = structure(list(Destination = structure(logical(0), 
        shape = "StringType", type = "string"), DeliveryMedium = structure(logical(0), 
        shape = "DeliveryMediumType", type = "string"), AttributeName = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "CodeDeliveryDetailsType", type = "structure"), 
        UserSub = structure(logical(0), shape = "StringType", 
            type = "string")), shape = "SignUpResponse", type = "structure")
    return(populate(args, shape))
}

start_user_import_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), JobId = structure(logical(0), 
        shape = "UserImportJobIdType", type = "string", max = 55L, 
        min = 1L, pattern = "import-[0-9a-zA-Z-]+")), shape = "StartUserImportJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_user_import_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserImportJob = structure(list(JobName = structure(logical(0), 
        shape = "UserImportJobNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w\\s+=,.@-]+"), JobId = structure(logical(0), 
        shape = "UserImportJobIdType", type = "string", max = 55L, 
        min = 1L, pattern = "import-[0-9a-zA-Z-]+"), UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), PreSignedUrl = structure(logical(0), 
        shape = "PreSignedUrlType", type = "string", max = 2048L, 
        min = 0L), CreationDate = structure(logical(0), shape = "DateType", 
        type = "timestamp"), StartDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), CompletionDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), Status = structure(logical(0), 
        shape = "UserImportJobStatusType", type = "string"), 
        CloudWatchLogsRoleArn = structure(logical(0), shape = "ArnType", 
            type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        ImportedUsers = structure(logical(0), shape = "LongType", 
            type = "long"), SkippedUsers = structure(logical(0), 
            shape = "LongType", type = "long"), FailedUsers = structure(logical(0), 
            shape = "LongType", type = "long"), CompletionMessage = structure(logical(0), 
            shape = "CompletionMessageType", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w]+")), shape = "UserImportJobType", 
        type = "structure")), shape = "StartUserImportJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

stop_user_import_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), JobId = structure(logical(0), 
        shape = "UserImportJobIdType", type = "string", max = 55L, 
        min = 1L, pattern = "import-[0-9a-zA-Z-]+")), shape = "StopUserImportJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

stop_user_import_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserImportJob = structure(list(JobName = structure(logical(0), 
        shape = "UserImportJobNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w\\s+=,.@-]+"), JobId = structure(logical(0), 
        shape = "UserImportJobIdType", type = "string", max = 55L, 
        min = 1L, pattern = "import-[0-9a-zA-Z-]+"), UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), PreSignedUrl = structure(logical(0), 
        shape = "PreSignedUrlType", type = "string", max = 2048L, 
        min = 0L), CreationDate = structure(logical(0), shape = "DateType", 
        type = "timestamp"), StartDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), CompletionDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), Status = structure(logical(0), 
        shape = "UserImportJobStatusType", type = "string"), 
        CloudWatchLogsRoleArn = structure(logical(0), shape = "ArnType", 
            type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        ImportedUsers = structure(logical(0), shape = "LongType", 
            type = "long"), SkippedUsers = structure(logical(0), 
            shape = "LongType", type = "long"), FailedUsers = structure(logical(0), 
            shape = "LongType", type = "long"), CompletionMessage = structure(logical(0), 
            shape = "CompletionMessageType", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w]+")), shape = "UserImportJobType", 
        type = "structure")), shape = "StopUserImportJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_auth_event_feedback_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", 
        sensitive = TRUE), EventId = structure(logical(0), shape = "EventIdType", 
        type = "string", max = 50L, min = 1L, pattern = "[\\w+-]+"), 
        FeedbackToken = structure(logical(0), shape = "TokenModelType", 
            type = "string", pattern = "[A-Za-z0-9-_=.]+", sensitive = TRUE), 
        FeedbackValue = structure(logical(0), shape = "FeedbackValueType", 
            type = "string")), shape = "UpdateAuthEventFeedbackRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_auth_event_feedback_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateAuthEventFeedbackResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_device_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE), DeviceKey = structure(logical(0), 
        shape = "DeviceKeyType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-f-]+"), DeviceRememberedStatus = structure(logical(0), 
        shape = "DeviceRememberedStatusType", type = "string")), 
        shape = "UpdateDeviceStatusRequest", type = "structure")
    return(populate(args, shape))
}

update_device_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateDeviceStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "GroupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        UserPoolId = structure(logical(0), shape = "UserPoolIdType", 
            type = "string", max = 55L, min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), 
        Description = structure(logical(0), shape = "DescriptionType", 
            type = "string", max = 2048L), RoleArn = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        Precedence = structure(logical(0), shape = "PrecedenceType", 
            type = "integer", min = 0L)), shape = "UpdateGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Group = structure(list(GroupName = structure(logical(0), 
        shape = "GroupNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        UserPoolId = structure(logical(0), shape = "UserPoolIdType", 
            type = "string", max = 55L, min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), 
        Description = structure(logical(0), shape = "DescriptionType", 
            type = "string", max = 2048L), RoleArn = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
        Precedence = structure(logical(0), shape = "PrecedenceType", 
            type = "integer", min = 0L), LastModifiedDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp")), shape = "GroupType", 
        type = "structure")), shape = "UpdateGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_identity_provider_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ProviderName = structure(logical(0), 
        shape = "ProviderNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        ProviderDetails = structure(list(structure(logical(0), 
            shape = "StringType", type = "string")), shape = "ProviderDetailsType", 
            type = "map"), AttributeMapping = structure(list(structure(logical(0), 
            shape = "StringType", type = "string")), shape = "AttributeMappingType", 
            type = "map"), IdpIdentifiers = structure(list(structure(logical(0), 
            shape = "IdpIdentifierType", type = "string", max = 40L, 
            min = 1L, pattern = "[\\w\\s+=.@-]+")), shape = "IdpIdentifiersListType", 
            type = "list", max = 50L, min = 0L)), shape = "UpdateIdentityProviderRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_identity_provider_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityProvider = structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ProviderName = structure(logical(0), 
        shape = "ProviderNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        ProviderType = structure(logical(0), shape = "IdentityProviderTypeType", 
            type = "string"), ProviderDetails = structure(list(structure(logical(0), 
            shape = "StringType", type = "string")), shape = "ProviderDetailsType", 
            type = "map"), AttributeMapping = structure(list(structure(logical(0), 
            shape = "StringType", type = "string")), shape = "AttributeMappingType", 
            type = "map"), IdpIdentifiers = structure(list(structure(logical(0), 
            shape = "IdpIdentifierType", type = "string", max = 40L, 
            min = 1L, pattern = "[\\w\\s+=.@-]+")), shape = "IdpIdentifiersListType", 
            type = "list", max = 50L, min = 0L), LastModifiedDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp")), shape = "IdentityProviderType", 
        type = "structure")), shape = "UpdateIdentityProviderResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_resource_server_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Identifier = structure(logical(0), 
        shape = "ResourceServerIdentifierType", type = "string", 
        max = 256L, min = 1L, pattern = "[\\x21\\x23-\\x5B\\x5D-\\x7E]+"), 
        Name = structure(logical(0), shape = "ResourceServerNameType", 
            type = "string", max = 256L, min = 1L, pattern = "[\\w\\s+=,.@-]+"), 
        Scopes = structure(list(structure(list(ScopeName = structure(logical(0), 
            shape = "ResourceServerScopeNameType", type = "string", 
            max = 256L, min = 1L, pattern = "[\\x21\\x23-\\x2E\\x30-\\x5B\\x5D-\\x7E]+"), 
            ScopeDescription = structure(logical(0), shape = "ResourceServerScopeDescriptionType", 
                type = "string", max = 256L, min = 1L)), shape = "ResourceServerScopeType", 
            type = "structure")), shape = "ResourceServerScopeListType", 
            type = "list", max = 25L)), shape = "UpdateResourceServerRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_resource_server_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceServer = structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Identifier = structure(logical(0), 
        shape = "ResourceServerIdentifierType", type = "string", 
        max = 256L, min = 1L, pattern = "[\\x21\\x23-\\x5B\\x5D-\\x7E]+"), 
        Name = structure(logical(0), shape = "ResourceServerNameType", 
            type = "string", max = 256L, min = 1L, pattern = "[\\w\\s+=,.@-]+"), 
        Scopes = structure(list(structure(list(ScopeName = structure(logical(0), 
            shape = "ResourceServerScopeNameType", type = "string", 
            max = 256L, min = 1L, pattern = "[\\x21\\x23-\\x2E\\x30-\\x5B\\x5D-\\x7E]+"), 
            ScopeDescription = structure(logical(0), shape = "ResourceServerScopeDescriptionType", 
                type = "string", max = 256L, min = 1L)), shape = "ResourceServerScopeType", 
            type = "structure")), shape = "ResourceServerScopeListType", 
            type = "list", max = 25L)), shape = "ResourceServerType", 
        type = "structure")), shape = "UpdateResourceServerResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_user_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        Value = structure(logical(0), shape = "AttributeValueType", 
            type = "string", max = 2048L, sensitive = TRUE)), 
        shape = "AttributeType", type = "structure")), shape = "AttributeListType", 
        type = "list"), AccessToken = structure(logical(0), shape = "TokenModelType", 
        type = "string", pattern = "[A-Za-z0-9-_=.]+", sensitive = TRUE)), 
        shape = "UpdateUserAttributesRequest", type = "structure")
    return(populate(args, shape))
}

update_user_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CodeDeliveryDetailsList = structure(list(structure(list(Destination = structure(logical(0), 
        shape = "StringType", type = "string"), DeliveryMedium = structure(logical(0), 
        shape = "DeliveryMediumType", type = "string"), AttributeName = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
        shape = "CodeDeliveryDetailsType", type = "structure")), 
        shape = "CodeDeliveryDetailsListType", type = "list")), 
        shape = "UpdateUserAttributesResponse", type = "structure")
    return(populate(args, shape))
}

update_user_pool_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), Policies = structure(list(PasswordPolicy = structure(list(MinimumLength = structure(logical(0), 
        shape = "PasswordPolicyMinLengthType", type = "integer", 
        max = 99L, min = 6L), RequireUppercase = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), RequireLowercase = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), RequireNumbers = structure(logical(0), 
        shape = "BooleanType", type = "boolean"), RequireSymbols = structure(logical(0), 
        shape = "BooleanType", type = "boolean")), shape = "PasswordPolicyType", 
        type = "structure")), shape = "UserPoolPolicyType", type = "structure"), 
        LambdaConfig = structure(list(PreSignUp = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            CustomMessage = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            PostConfirmation = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            PreAuthentication = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            PostAuthentication = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            DefineAuthChallenge = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            CreateAuthChallenge = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            VerifyAuthChallengeResponse = structure(logical(0), 
                shape = "ArnType", type = "string", max = 2048L, 
                min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            PreTokenGeneration = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            UserMigration = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?")), 
            shape = "LambdaConfigType", type = "structure"), 
        AutoVerifiedAttributes = structure(list(structure(logical(0), 
            shape = "VerifiedAttributeType", type = "string")), 
            shape = "VerifiedAttributesListType", type = "list"), 
        SmsVerificationMessage = structure(logical(0), shape = "SmsVerificationMessageType", 
            type = "string", max = 140L, min = 6L, pattern = ".*\\{####\\}.*"), 
        EmailVerificationMessage = structure(logical(0), shape = "EmailVerificationMessageType", 
            type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{####\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*"), 
        EmailVerificationSubject = structure(logical(0), shape = "EmailVerificationSubjectType", 
            type = "string", max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
        VerificationMessageTemplate = structure(list(SmsMessage = structure(logical(0), 
            shape = "SmsVerificationMessageType", type = "string", 
            max = 140L, min = 6L, pattern = ".*\\{####\\}.*"), 
            EmailMessage = structure(logical(0), shape = "EmailVerificationMessageType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{####\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*"), 
            EmailSubject = structure(logical(0), shape = "EmailVerificationSubjectType", 
                type = "string", max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
            EmailMessageByLink = structure(logical(0), shape = "EmailVerificationMessageByLinkType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{##[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*##\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*"), 
            EmailSubjectByLink = structure(logical(0), shape = "EmailVerificationSubjectByLinkType", 
                type = "string", max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"), 
            DefaultEmailOption = structure(logical(0), shape = "DefaultEmailOptionType", 
                type = "string")), shape = "VerificationMessageTemplateType", 
            type = "structure"), SmsAuthenticationMessage = structure(logical(0), 
            shape = "SmsVerificationMessageType", type = "string", 
            max = 140L, min = 6L, pattern = ".*\\{####\\}.*"), 
        MfaConfiguration = structure(logical(0), shape = "UserPoolMfaType", 
            type = "string"), DeviceConfiguration = structure(list(ChallengeRequiredOnNewDevice = structure(logical(0), 
            shape = "BooleanType", type = "boolean"), DeviceOnlyRememberedOnUserPrompt = structure(logical(0), 
            shape = "BooleanType", type = "boolean")), shape = "DeviceConfigurationType", 
            type = "structure"), EmailConfiguration = structure(list(SourceArn = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            ReplyToEmailAddress = structure(logical(0), shape = "EmailAddressType", 
                type = "string", pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+@[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
            shape = "EmailConfigurationType", type = "structure"), 
        SmsConfiguration = structure(list(SnsCallerArn = structure(logical(0), 
            shape = "ArnType", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            ExternalId = structure(logical(0), shape = "StringType", 
                type = "string")), shape = "SmsConfigurationType", 
            type = "structure"), UserPoolTags = structure(list(structure(logical(0), 
            shape = "StringType", type = "string")), shape = "UserPoolTagsType", 
            type = "map"), AdminCreateUserConfig = structure(list(AllowAdminCreateUserOnly = structure(logical(0), 
            shape = "BooleanType", type = "boolean"), UnusedAccountValidityDays = structure(logical(0), 
            shape = "AdminCreateUserUnusedAccountValidityDaysType", 
            type = "integer", max = 365L, min = 0L), InviteMessageTemplate = structure(list(SMSMessage = structure(logical(0), 
            shape = "SmsVerificationMessageType", type = "string", 
            max = 140L, min = 6L, pattern = ".*\\{####\\}.*"), 
            EmailMessage = structure(logical(0), shape = "EmailVerificationMessageType", 
                type = "string", max = 20000L, min = 6L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{####\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*"), 
            EmailSubject = structure(logical(0), shape = "EmailVerificationSubjectType", 
                type = "string", max = 140L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+")), 
            shape = "MessageTemplateType", type = "structure")), 
            shape = "AdminCreateUserConfigType", type = "structure"), 
        UserPoolAddOns = structure(list(AdvancedSecurityMode = structure(logical(0), 
            shape = "AdvancedSecurityModeType", type = "string")), 
            shape = "UserPoolAddOnsType", type = "structure")), 
        shape = "UpdateUserPoolRequest", type = "structure")
    return(populate(args, shape))
}

update_user_pool_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateUserPoolResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_user_pool_client_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), ClientName = structure(logical(0), 
        shape = "ClientNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w\\s+=,.@-]+"), RefreshTokenValidity = structure(logical(0), 
        shape = "RefreshTokenValidityType", type = "integer", 
        max = 3650L, min = 0L), ReadAttributes = structure(list(structure(logical(0), 
        shape = "ClientPermissionType", type = "string", max = 2048L, 
        min = 1L)), shape = "ClientPermissionListType", type = "list"), 
        WriteAttributes = structure(list(structure(logical(0), 
            shape = "ClientPermissionType", type = "string", 
            max = 2048L, min = 1L)), shape = "ClientPermissionListType", 
            type = "list"), ExplicitAuthFlows = structure(list(structure(logical(0), 
            shape = "ExplicitAuthFlowsType", type = "string")), 
            shape = "ExplicitAuthFlowsListType", type = "list"), 
        SupportedIdentityProviders = structure(list(structure(logical(0), 
            shape = "ProviderNameType", type = "string", max = 32L, 
            min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
            shape = "SupportedIdentityProvidersListType", type = "list"), 
        CallbackURLs = structure(list(structure(logical(0), shape = "RedirectUrlType", 
            type = "string", max = 1024L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
            shape = "CallbackURLsListType", type = "list", max = 100L, 
            min = 0L), LogoutURLs = structure(list(structure(logical(0), 
            shape = "RedirectUrlType", type = "string", max = 1024L, 
            min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
            shape = "LogoutURLsListType", type = "list", max = 100L, 
            min = 0L), DefaultRedirectURI = structure(logical(0), 
            shape = "RedirectUrlType", type = "string", max = 1024L, 
            min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        AllowedOAuthFlows = structure(list(structure(logical(0), 
            shape = "OAuthFlowType", type = "string")), shape = "OAuthFlowsType", 
            type = "list", max = 3L, min = 0L), AllowedOAuthScopes = structure(list(structure(logical(0), 
            shape = "ScopeType", type = "string", max = 256L, 
            min = 1L, pattern = "[\\x21\\x23-\\x5B\\x5D-\\x7E]+")), 
            shape = "ScopeListType", type = "list", max = 25L), 
        AllowedOAuthFlowsUserPoolClient = structure(logical(0), 
            shape = "BooleanType", type = "boolean"), AnalyticsConfiguration = structure(list(ApplicationId = structure(logical(0), 
            shape = "HexStringType", type = "string", pattern = "^[0-9a-fA-F]+$"), 
            RoleArn = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            ExternalId = structure(logical(0), shape = "StringType", 
                type = "string"), UserDataShared = structure(logical(0), 
                shape = "BooleanType", type = "boolean")), shape = "AnalyticsConfigurationType", 
            type = "structure")), shape = "UpdateUserPoolClientRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_user_pool_client_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserPoolClient = structure(list(UserPoolId = structure(logical(0), 
        shape = "UserPoolIdType", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), ClientName = structure(logical(0), 
        shape = "ClientNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w\\s+=,.@-]+"), ClientId = structure(logical(0), 
        shape = "ClientIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), ClientSecret = structure(logical(0), 
        shape = "ClientSecretType", type = "string", max = 64L, 
        min = 1L, pattern = "[\\w+]+", sensitive = TRUE), LastModifiedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), CreationDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), RefreshTokenValidity = structure(logical(0), 
        shape = "RefreshTokenValidityType", type = "integer", 
        max = 3650L, min = 0L), ReadAttributes = structure(list(structure(logical(0), 
        shape = "ClientPermissionType", type = "string", max = 2048L, 
        min = 1L)), shape = "ClientPermissionListType", type = "list"), 
        WriteAttributes = structure(list(structure(logical(0), 
            shape = "ClientPermissionType", type = "string", 
            max = 2048L, min = 1L)), shape = "ClientPermissionListType", 
            type = "list"), ExplicitAuthFlows = structure(list(structure(logical(0), 
            shape = "ExplicitAuthFlowsType", type = "string")), 
            shape = "ExplicitAuthFlowsListType", type = "list"), 
        SupportedIdentityProviders = structure(list(structure(logical(0), 
            shape = "ProviderNameType", type = "string", max = 32L, 
            min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
            shape = "SupportedIdentityProvidersListType", type = "list"), 
        CallbackURLs = structure(list(structure(logical(0), shape = "RedirectUrlType", 
            type = "string", max = 1024L, min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
            shape = "CallbackURLsListType", type = "list", max = 100L, 
            min = 0L), LogoutURLs = structure(list(structure(logical(0), 
            shape = "RedirectUrlType", type = "string", max = 1024L, 
            min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")), 
            shape = "LogoutURLsListType", type = "list", max = 100L, 
            min = 0L), DefaultRedirectURI = structure(logical(0), 
            shape = "RedirectUrlType", type = "string", max = 1024L, 
            min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        AllowedOAuthFlows = structure(list(structure(logical(0), 
            shape = "OAuthFlowType", type = "string")), shape = "OAuthFlowsType", 
            type = "list", max = 3L, min = 0L), AllowedOAuthScopes = structure(list(structure(logical(0), 
            shape = "ScopeType", type = "string", max = 256L, 
            min = 1L, pattern = "[\\x21\\x23-\\x5B\\x5D-\\x7E]+")), 
            shape = "ScopeListType", type = "list", max = 25L), 
        AllowedOAuthFlowsUserPoolClient = structure(logical(0), 
            shape = "BooleanType", box = TRUE, type = "boolean"), 
        AnalyticsConfiguration = structure(list(ApplicationId = structure(logical(0), 
            shape = "HexStringType", type = "string", pattern = "^[0-9a-fA-F]+$"), 
            RoleArn = structure(logical(0), shape = "ArnType", 
                type = "string", max = 2048L, min = 20L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"), 
            ExternalId = structure(logical(0), shape = "StringType", 
                type = "string"), UserDataShared = structure(logical(0), 
                shape = "BooleanType", type = "boolean")), shape = "AnalyticsConfigurationType", 
            type = "structure")), shape = "UserPoolClientType", 
        type = "structure")), shape = "UpdateUserPoolClientResponse", 
        type = "structure")
    return(populate(args, shape))
}

verify_software_token_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE), Session = structure(logical(0), shape = "SessionType", 
        type = "string", max = 2048L, min = 20L), UserCode = structure(logical(0), 
        shape = "SoftwareTokenMFAUserCodeType", type = "string", 
        max = 6L, min = 6L, pattern = "[0-9]+"), FriendlyDeviceName = structure(logical(0), 
        shape = "StringType", type = "string")), shape = "VerifySoftwareTokenRequest", 
        type = "structure")
    return(populate(args, shape))
}

verify_software_token_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "VerifySoftwareTokenResponseType", 
        type = "string"), Session = structure(logical(0), shape = "SessionType", 
        type = "string", max = 2048L, min = 20L)), shape = "VerifySoftwareTokenResponse", 
        type = "structure")
    return(populate(args, shape))
}

verify_user_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccessToken = structure(logical(0), 
        shape = "TokenModelType", type = "string", pattern = "[A-Za-z0-9-_=.]+", 
        sensitive = TRUE), AttributeName = structure(logical(0), 
        shape = "AttributeNameType", type = "string", max = 32L, 
        min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
        Code = structure(logical(0), shape = "ConfirmationCodeType", 
            type = "string", max = 2048L, min = 1L, pattern = "[\\S]+")), 
        shape = "VerifyUserAttributeRequest", type = "structure")
    return(populate(args, shape))
}

verify_user_attribute_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "VerifyUserAttributeResponse", 
        type = "structure")
    return(populate(args, shape))
}
