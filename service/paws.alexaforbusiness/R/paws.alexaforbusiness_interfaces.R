associate_contact_with_address_book_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContactArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        AddressBookArn = structure(logical(0), shape = "Arn", 
            type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "AssociateContactWithAddressBookRequest", type = "structure")
    return(populate(args, shape))
}

associate_contact_with_address_book_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AssociateContactWithAddressBookResponse", 
        type = "structure")
    return(populate(args, shape))
}

associate_device_with_room_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        RoomArn = structure(logical(0), shape = "Arn", type = "string", 
            pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "AssociateDeviceWithRoomRequest", type = "structure")
    return(populate(args, shape))
}

associate_device_with_room_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AssociateDeviceWithRoomResponse", 
        type = "structure")
    return(populate(args, shape))
}

associate_skill_group_with_room_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SkillGroupArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        RoomArn = structure(logical(0), shape = "Arn", type = "string", 
            pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "AssociateSkillGroupWithRoomRequest", type = "structure")
    return(populate(args, shape))
}

associate_skill_group_with_room_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AssociateSkillGroupWithRoomResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_address_book_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "AddressBookName", 
        type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        Description = structure(logical(0), shape = "AddressBookDescription", 
            type = "string", max = 200L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            idempotencyToken = TRUE, type = "string", max = 150L, 
            min = 10L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*")), 
        shape = "CreateAddressBookRequest", type = "structure")
    return(populate(args, shape))
}

create_address_book_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AddressBookArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "CreateAddressBookResponse", type = "structure")
    return(populate(args, shape))
}

create_contact_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DisplayName = structure(logical(0), 
        shape = "ContactName", type = "string", max = 100L, min = 1L, 
        pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        FirstName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        LastName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        PhoneNumber = structure(logical(0), shape = "E164PhoneNumber", 
            type = "string", pattern = "^\\+\\d{8,}$"), ClientRequestToken = structure(logical(0), 
            shape = "ClientRequestToken", idempotencyToken = TRUE, 
            type = "string", max = 150L, min = 10L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*")), 
        shape = "CreateContactRequest", type = "structure")
    return(populate(args, shape))
}

create_contact_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContactArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "CreateContactResponse", type = "structure")
    return(populate(args, shape))
}

create_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProfileName = structure(logical(0), 
        shape = "ProfileName", type = "string", max = 100L, min = 1L, 
        pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        Timezone = structure(logical(0), shape = "Timezone", 
            type = "string", max = 100L, min = 1L), Address = structure(logical(0), 
            shape = "Address", type = "string", max = 500L, min = 1L), 
        DistanceUnit = structure(logical(0), shape = "DistanceUnit", 
            type = "string"), TemperatureUnit = structure(logical(0), 
            shape = "TemperatureUnit", type = "string"), WakeWord = structure(logical(0), 
            shape = "WakeWord", type = "string"), ClientRequestToken = structure(logical(0), 
            shape = "ClientRequestToken", idempotencyToken = TRUE, 
            type = "string", max = 150L, min = 10L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*"), 
        SetupModeDisabled = structure(logical(0), shape = "Boolean", 
            type = "boolean"), MaxVolumeLimit = structure(logical(0), 
            shape = "MaxVolumeLimit", type = "integer"), PSTNEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "CreateProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProfileArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "CreateProfileResponse", type = "structure")
    return(populate(args, shape))
}

create_room_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoomName = structure(logical(0), 
        shape = "RoomName", type = "string", max = 100L, min = 1L, 
        pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        Description = structure(logical(0), shape = "RoomDescription", 
            type = "string", max = 200L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        ProfileArn = structure(logical(0), shape = "Arn", type = "string", 
            pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        ProviderCalendarId = structure(logical(0), shape = "ProviderCalendarId", 
            type = "string", max = 100L, min = 0L), ClientRequestToken = structure(logical(0), 
            shape = "ClientRequestToken", idempotencyToken = TRUE, 
            type = "string", max = 150L, min = 10L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list")), shape = "CreateRoomRequest", type = "structure")
    return(populate(args, shape))
}

create_room_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoomArn = structure(logical(0), shape = "Arn", 
        type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "CreateRoomResponse", type = "structure")
    return(populate(args, shape))
}

create_skill_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SkillGroupName = structure(logical(0), 
        shape = "SkillGroupName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        Description = structure(logical(0), shape = "SkillGroupDescription", 
            type = "string", max = 200L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            idempotencyToken = TRUE, type = "string", max = 150L, 
            min = 10L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*")), 
        shape = "CreateSkillGroupRequest", type = "structure")
    return(populate(args, shape))
}

create_skill_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SkillGroupArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "CreateSkillGroupResponse", type = "structure")
    return(populate(args, shape))
}

create_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserId = structure(logical(0), shape = "user_UserId", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9@_+.-]*"), 
        FirstName = structure(logical(0), shape = "user_FirstName", 
            type = "string", max = 30L, min = 0L, pattern = "([A-Za-z\\-' 0-9._]|\\p{IsLetter})*"), 
        LastName = structure(logical(0), shape = "user_LastName", 
            type = "string", max = 30L, min = 0L, pattern = "([A-Za-z\\-' 0-9._]|\\p{IsLetter})*"), 
        Email = structure(logical(0), shape = "Email", type = "string", 
            max = 128L, min = 1L, pattern = "([0-9a-zA-Z]([+-.\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{2,9})"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            idempotencyToken = TRUE, type = "string", max = 150L, 
            min = 10L, pattern = "[a-zA-Z0-9][a-zA-Z0-9_-]*"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list")), shape = "CreateUserRequest", type = "structure")
    return(populate(args, shape))
}

create_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserArn = structure(logical(0), shape = "Arn", 
        type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "CreateUserResponse", type = "structure")
    return(populate(args, shape))
}

delete_address_book_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AddressBookArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "DeleteAddressBookRequest", type = "structure")
    return(populate(args, shape))
}

delete_address_book_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteAddressBookResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_contact_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContactArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "DeleteContactRequest", type = "structure")
    return(populate(args, shape))
}

delete_contact_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteContactResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProfileArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "DeleteProfileRequest", type = "structure")
    return(populate(args, shape))
}

delete_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteProfileResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_room_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoomArn = structure(logical(0), shape = "Arn", 
        type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "DeleteRoomRequest", type = "structure")
    return(populate(args, shape))
}

delete_room_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteRoomResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_room_skill_parameter_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoomArn = structure(logical(0), shape = "Arn", 
        type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        SkillId = structure(logical(0), shape = "SkillId", type = "string", 
            pattern = "(^amzn1\\.ask\\.skill\\.[0-9a-f\\-]{1,200})|(^amzn1\\.echo-sdk-ams\\.app\\.[0-9a-f\\-]{1,200})"), 
        ParameterKey = structure(logical(0), shape = "RoomSkillParameterKey", 
            type = "string", max = 256L, min = 1L)), shape = "DeleteRoomSkillParameterRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_room_skill_parameter_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteRoomSkillParameterResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_skill_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SkillGroupArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "DeleteSkillGroupRequest", type = "structure")
    return(populate(args, shape))
}

delete_skill_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteSkillGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserArn = structure(logical(0), shape = "Arn", 
        type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        EnrollmentId = structure(logical(0), shape = "EnrollmentId", 
            type = "string", max = 128L, min = 0L)), shape = "DeleteUserRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteUserResponse", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_contact_from_address_book_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContactArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        AddressBookArn = structure(logical(0), shape = "Arn", 
            type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "DisassociateContactFromAddressBookRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_contact_from_address_book_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateContactFromAddressBookResponse", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_device_from_room_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "DisassociateDeviceFromRoomRequest", type = "structure")
    return(populate(args, shape))
}

disassociate_device_from_room_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateDeviceFromRoomResponse", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_skill_group_from_room_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SkillGroupArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        RoomArn = structure(logical(0), shape = "Arn", type = "string", 
            pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "DisassociateSkillGroupFromRoomRequest", type = "structure")
    return(populate(args, shape))
}

disassociate_skill_group_from_room_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateSkillGroupFromRoomResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_address_book_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AddressBookArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "GetAddressBookRequest", type = "structure")
    return(populate(args, shape))
}

get_address_book_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AddressBook = structure(list(AddressBookArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        Name = structure(logical(0), shape = "AddressBookName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        Description = structure(logical(0), shape = "AddressBookDescription", 
            type = "string", max = 200L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*")), 
        shape = "AddressBook", type = "structure")), shape = "GetAddressBookResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_contact_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContactArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "GetContactRequest", type = "structure")
    return(populate(args, shape))
}

get_contact_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Contact = structure(list(ContactArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        DisplayName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        FirstName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        LastName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        PhoneNumber = structure(logical(0), shape = "E164PhoneNumber", 
            type = "string", pattern = "^\\+\\d{8,}$")), shape = "Contact", 
        type = "structure")), shape = "GetContactResponse", type = "structure")
    return(populate(args, shape))
}

get_device_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "GetDeviceRequest", type = "structure")
    return(populate(args, shape))
}

get_device_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Device = structure(list(DeviceArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        DeviceSerialNumber = structure(logical(0), shape = "DeviceSerialNumber", 
            type = "string", pattern = "[a-zA-Z0-9]{1,200}"), 
        DeviceType = structure(logical(0), shape = "DeviceType", 
            type = "string", pattern = "[a-zA-Z0-9]{1,200}"), 
        DeviceName = structure(logical(0), shape = "DeviceName", 
            type = "string", max = 100L, min = 2L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        SoftwareVersion = structure(logical(0), shape = "SoftwareVersion", 
            type = "string"), MacAddress = structure(logical(0), 
            shape = "MacAddress", type = "string"), RoomArn = structure(logical(0), 
            shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        DeviceStatus = structure(logical(0), shape = "DeviceStatus", 
            type = "string"), DeviceStatusInfo = structure(list(DeviceStatusDetails = structure(list(structure(list(Code = structure(logical(0), 
            shape = "DeviceStatusDetailCode", type = "string")), 
            shape = "DeviceStatusDetail", type = "structure")), 
            shape = "DeviceStatusDetails", type = "list"), ConnectionStatus = structure(logical(0), 
            shape = "ConnectionStatus", type = "string")), shape = "DeviceStatusInfo", 
            type = "structure")), shape = "Device", type = "structure")), 
        shape = "GetDeviceResponse", type = "structure")
    return(populate(args, shape))
}

get_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProfileArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "GetProfileRequest", type = "structure")
    return(populate(args, shape))
}

get_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Profile = structure(list(ProfileArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        ProfileName = structure(logical(0), shape = "ProfileName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        Address = structure(logical(0), shape = "Address", type = "string", 
            max = 500L, min = 1L), Timezone = structure(logical(0), 
            shape = "Timezone", type = "string", max = 100L, 
            min = 1L), DistanceUnit = structure(logical(0), shape = "DistanceUnit", 
            type = "string"), TemperatureUnit = structure(logical(0), 
            shape = "TemperatureUnit", type = "string"), WakeWord = structure(logical(0), 
            shape = "WakeWord", type = "string"), SetupModeDisabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), MaxVolumeLimit = structure(logical(0), 
            shape = "MaxVolumeLimit", type = "integer"), PSTNEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "Profile", 
        type = "structure")), shape = "GetProfileResponse", type = "structure")
    return(populate(args, shape))
}

get_room_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoomArn = structure(logical(0), shape = "Arn", 
        type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "GetRoomRequest", type = "structure")
    return(populate(args, shape))
}

get_room_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Room = structure(list(RoomArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        RoomName = structure(logical(0), shape = "RoomName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        Description = structure(logical(0), shape = "RoomDescription", 
            type = "string", max = 200L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        ProviderCalendarId = structure(logical(0), shape = "ProviderCalendarId", 
            type = "string", max = 100L, min = 0L), ProfileArn = structure(logical(0), 
            shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "Room", type = "structure")), shape = "GetRoomResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_room_skill_parameter_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoomArn = structure(logical(0), shape = "Arn", 
        type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        SkillId = structure(logical(0), shape = "SkillId", type = "string", 
            pattern = "(^amzn1\\.ask\\.skill\\.[0-9a-f\\-]{1,200})|(^amzn1\\.echo-sdk-ams\\.app\\.[0-9a-f\\-]{1,200})"), 
        ParameterKey = structure(logical(0), shape = "RoomSkillParameterKey", 
            type = "string", max = 256L, min = 1L)), shape = "GetRoomSkillParameterRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_room_skill_parameter_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoomSkillParameter = structure(list(ParameterKey = structure(logical(0), 
        shape = "RoomSkillParameterKey", type = "string", max = 256L, 
        min = 1L), ParameterValue = structure(logical(0), shape = "RoomSkillParameterValue", 
        type = "string", max = 512L, min = 1L)), shape = "RoomSkillParameter", 
        type = "structure")), shape = "GetRoomSkillParameterResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_skill_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SkillGroupArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "GetSkillGroupRequest", type = "structure")
    return(populate(args, shape))
}

get_skill_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SkillGroup = structure(list(SkillGroupArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        SkillGroupName = structure(logical(0), shape = "SkillGroupName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        Description = structure(logical(0), shape = "SkillGroupDescription", 
            type = "string", max = 200L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*")), 
        shape = "SkillGroup", type = "structure")), shape = "GetSkillGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_device_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        EventType = structure(logical(0), shape = "DeviceEventType", 
            type = "string"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", max = 1000L, 
            min = 1L), MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 50L, min = 1L)), shape = "ListDeviceEventsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_device_events_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceEvents = structure(list(structure(list(Type = structure(logical(0), 
        shape = "DeviceEventType", type = "string"), Value = structure(logical(0), 
        shape = "DeviceEventValue", type = "string"), Timestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "DeviceEvent", 
        type = "structure")), shape = "DeviceEventList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1000L, min = 1L)), shape = "ListDeviceEventsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_skills_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SkillGroupArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1000L, min = 1L), MaxResults = structure(logical(0), 
            shape = "SkillListMaxResults", type = "integer", 
            max = 10L, min = 1L)), shape = "ListSkillsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_skills_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SkillSummaries = structure(list(structure(list(SkillId = structure(logical(0), 
        shape = "SkillId", type = "string", pattern = "(^amzn1\\.ask\\.skill\\.[0-9a-f\\-]{1,200})|(^amzn1\\.echo-sdk-ams\\.app\\.[0-9a-f\\-]{1,200})"), 
        SkillName = structure(logical(0), shape = "SkillName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        SupportsLinking = structure(logical(0), shape = "boolean", 
            type = "boolean")), shape = "SkillSummary", type = "structure")), 
        shape = "SkillSummaryList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1000L, min = 1L)), 
        shape = "ListSkillsResponse", type = "structure")
    return(populate(args, shape))
}

list_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "Arn", 
        type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1000L, min = 1L), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", max = 50L, 
            min = 1L)), shape = "ListTagsRequest", type = "structure")
    return(populate(args, shape))
}

list_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), Value = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 0L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "Tag", 
        type = "structure")), shape = "TagList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1000L, min = 1L)), shape = "ListTagsResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_room_skill_parameter_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoomArn = structure(logical(0), shape = "Arn", 
        type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        SkillId = structure(logical(0), shape = "SkillId", type = "string", 
            pattern = "(^amzn1\\.ask\\.skill\\.[0-9a-f\\-]{1,200})|(^amzn1\\.echo-sdk-ams\\.app\\.[0-9a-f\\-]{1,200})"), 
        RoomSkillParameter = structure(list(ParameterKey = structure(logical(0), 
            shape = "RoomSkillParameterKey", type = "string", 
            max = 256L, min = 1L), ParameterValue = structure(logical(0), 
            shape = "RoomSkillParameterValue", type = "string", 
            max = 512L, min = 1L)), shape = "RoomSkillParameter", 
            type = "structure")), shape = "PutRoomSkillParameterRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_room_skill_parameter_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "PutRoomSkillParameterResponse", 
        type = "structure")
    return(populate(args, shape))
}

resolve_room_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserId = structure(logical(0), shape = "UserId", 
        type = "string", pattern = "amzn1\\.[A-Za-z0-9+-\\/=.]{1,300}"), 
        SkillId = structure(logical(0), shape = "SkillId", type = "string", 
            pattern = "(^amzn1\\.ask\\.skill\\.[0-9a-f\\-]{1,200})|(^amzn1\\.echo-sdk-ams\\.app\\.[0-9a-f\\-]{1,200})")), 
        shape = "ResolveRoomRequest", type = "structure")
    return(populate(args, shape))
}

resolve_room_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoomArn = structure(logical(0), shape = "Arn", 
        type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        RoomName = structure(logical(0), shape = "RoomName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        RoomSkillParameters = structure(list(structure(list(ParameterKey = structure(logical(0), 
            shape = "RoomSkillParameterKey", type = "string", 
            max = 256L, min = 1L), ParameterValue = structure(logical(0), 
            shape = "RoomSkillParameterValue", type = "string", 
            max = 512L, min = 1L)), shape = "RoomSkillParameter", 
            type = "structure")), shape = "RoomSkillParameters", 
            type = "list")), shape = "ResolveRoomResponse", type = "structure")
    return(populate(args, shape))
}

revoke_invitation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserArn = structure(logical(0), shape = "Arn", 
        type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        EnrollmentId = structure(logical(0), shape = "EnrollmentId", 
            type = "string", max = 128L, min = 0L)), shape = "RevokeInvitationRequest", 
        type = "structure")
    return(populate(args, shape))
}

revoke_invitation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RevokeInvitationResponse", 
        type = "structure")
    return(populate(args, shape))
}

search_address_books_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "FilterKey", type = "string", max = 500L, min = 1L), 
        Values = structure(list(structure(logical(0), shape = "FilterValue", 
            type = "string", max = 500L, min = 1L)), shape = "FilterValueList", 
            type = "list", max = 5L)), shape = "Filter", type = "structure")), 
        shape = "FilterList", type = "list", max = 25L), SortCriteria = structure(list(structure(list(Key = structure(logical(0), 
        shape = "SortKey", type = "string", max = 500L, min = 1L), 
        Value = structure(logical(0), shape = "SortValue", type = "string")), 
        shape = "Sort", type = "structure")), shape = "SortList", 
        type = "list", max = 25L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1000L, min = 1L), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 50L, min = 1L)), shape = "SearchAddressBooksRequest", 
        type = "structure")
    return(populate(args, shape))
}

search_address_books_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AddressBooks = structure(list(structure(list(AddressBookArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        Name = structure(logical(0), shape = "AddressBookName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        Description = structure(logical(0), shape = "AddressBookDescription", 
            type = "string", max = 200L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*")), 
        shape = "AddressBookData", type = "structure")), shape = "AddressBookDataList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string", max = 1000L, min = 1L), TotalCount = structure(logical(0), 
        shape = "TotalCount", type = "integer")), shape = "SearchAddressBooksResponse", 
        type = "structure")
    return(populate(args, shape))
}

search_contacts_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "FilterKey", type = "string", max = 500L, min = 1L), 
        Values = structure(list(structure(logical(0), shape = "FilterValue", 
            type = "string", max = 500L, min = 1L)), shape = "FilterValueList", 
            type = "list", max = 5L)), shape = "Filter", type = "structure")), 
        shape = "FilterList", type = "list", max = 25L), SortCriteria = structure(list(structure(list(Key = structure(logical(0), 
        shape = "SortKey", type = "string", max = 500L, min = 1L), 
        Value = structure(logical(0), shape = "SortValue", type = "string")), 
        shape = "Sort", type = "structure")), shape = "SortList", 
        type = "list", max = 25L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1000L, min = 1L), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 50L, min = 1L)), shape = "SearchContactsRequest", 
        type = "structure")
    return(populate(args, shape))
}

search_contacts_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Contacts = structure(list(structure(list(ContactArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        DisplayName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        FirstName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        LastName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        PhoneNumber = structure(logical(0), shape = "E164PhoneNumber", 
            type = "string", pattern = "^\\+\\d{8,}$")), shape = "ContactData", 
        type = "structure")), shape = "ContactDataList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1000L, min = 1L), TotalCount = structure(logical(0), 
            shape = "TotalCount", type = "integer")), shape = "SearchContactsResponse", 
        type = "structure")
    return(populate(args, shape))
}

search_devices_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1000L, min = 1L), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 50L, min = 1L), Filters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "FilterKey", type = "string", max = 500L, 
            min = 1L), Values = structure(list(structure(logical(0), 
            shape = "FilterValue", type = "string", max = 500L, 
            min = 1L)), shape = "FilterValueList", type = "list", 
            max = 5L)), shape = "Filter", type = "structure")), 
            shape = "FilterList", type = "list", max = 25L), 
        SortCriteria = structure(list(structure(list(Key = structure(logical(0), 
            shape = "SortKey", type = "string", max = 500L, min = 1L), 
            Value = structure(logical(0), shape = "SortValue", 
                type = "string")), shape = "Sort", type = "structure")), 
            shape = "SortList", type = "list", max = 25L)), shape = "SearchDevicesRequest", 
        type = "structure")
    return(populate(args, shape))
}

search_devices_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Devices = structure(list(structure(list(DeviceArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        DeviceSerialNumber = structure(logical(0), shape = "DeviceSerialNumber", 
            type = "string", pattern = "[a-zA-Z0-9]{1,200}"), 
        DeviceType = structure(logical(0), shape = "DeviceType", 
            type = "string", pattern = "[a-zA-Z0-9]{1,200}"), 
        DeviceName = structure(logical(0), shape = "DeviceName", 
            type = "string", max = 100L, min = 2L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        SoftwareVersion = structure(logical(0), shape = "SoftwareVersion", 
            type = "string"), MacAddress = structure(logical(0), 
            shape = "MacAddress", type = "string"), DeviceStatus = structure(logical(0), 
            shape = "DeviceStatus", type = "string"), RoomArn = structure(logical(0), 
            shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        RoomName = structure(logical(0), shape = "RoomName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        DeviceStatusInfo = structure(list(DeviceStatusDetails = structure(list(structure(list(Code = structure(logical(0), 
            shape = "DeviceStatusDetailCode", type = "string")), 
            shape = "DeviceStatusDetail", type = "structure")), 
            shape = "DeviceStatusDetails", type = "list"), ConnectionStatus = structure(logical(0), 
            shape = "ConnectionStatus", type = "string")), shape = "DeviceStatusInfo", 
            type = "structure")), shape = "DeviceData", type = "structure")), 
        shape = "DeviceDataList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1000L, min = 1L), 
        TotalCount = structure(logical(0), shape = "TotalCount", 
            type = "integer")), shape = "SearchDevicesResponse", 
        type = "structure")
    return(populate(args, shape))
}

search_profiles_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1000L, min = 1L), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 50L, min = 1L), Filters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "FilterKey", type = "string", max = 500L, 
            min = 1L), Values = structure(list(structure(logical(0), 
            shape = "FilterValue", type = "string", max = 500L, 
            min = 1L)), shape = "FilterValueList", type = "list", 
            max = 5L)), shape = "Filter", type = "structure")), 
            shape = "FilterList", type = "list", max = 25L), 
        SortCriteria = structure(list(structure(list(Key = structure(logical(0), 
            shape = "SortKey", type = "string", max = 500L, min = 1L), 
            Value = structure(logical(0), shape = "SortValue", 
                type = "string")), shape = "Sort", type = "structure")), 
            shape = "SortList", type = "list", max = 25L)), shape = "SearchProfilesRequest", 
        type = "structure")
    return(populate(args, shape))
}

search_profiles_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Profiles = structure(list(structure(list(ProfileArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        ProfileName = structure(logical(0), shape = "ProfileName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        Address = structure(logical(0), shape = "Address", type = "string", 
            max = 500L, min = 1L), Timezone = structure(logical(0), 
            shape = "Timezone", type = "string", max = 100L, 
            min = 1L), DistanceUnit = structure(logical(0), shape = "DistanceUnit", 
            type = "string"), TemperatureUnit = structure(logical(0), 
            shape = "TemperatureUnit", type = "string"), WakeWord = structure(logical(0), 
            shape = "WakeWord", type = "string")), shape = "ProfileData", 
        type = "structure")), shape = "ProfileDataList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1000L, min = 1L), TotalCount = structure(logical(0), 
            shape = "TotalCount", type = "integer")), shape = "SearchProfilesResponse", 
        type = "structure")
    return(populate(args, shape))
}

search_rooms_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1000L, min = 1L), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 50L, min = 1L), Filters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "FilterKey", type = "string", max = 500L, 
            min = 1L), Values = structure(list(structure(logical(0), 
            shape = "FilterValue", type = "string", max = 500L, 
            min = 1L)), shape = "FilterValueList", type = "list", 
            max = 5L)), shape = "Filter", type = "structure")), 
            shape = "FilterList", type = "list", max = 25L), 
        SortCriteria = structure(list(structure(list(Key = structure(logical(0), 
            shape = "SortKey", type = "string", max = 500L, min = 1L), 
            Value = structure(logical(0), shape = "SortValue", 
                type = "string")), shape = "Sort", type = "structure")), 
            shape = "SortList", type = "list", max = 25L)), shape = "SearchRoomsRequest", 
        type = "structure")
    return(populate(args, shape))
}

search_rooms_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Rooms = structure(list(structure(list(RoomArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        RoomName = structure(logical(0), shape = "RoomName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        Description = structure(logical(0), shape = "RoomDescription", 
            type = "string", max = 200L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        ProviderCalendarId = structure(logical(0), shape = "ProviderCalendarId", 
            type = "string", max = 100L, min = 0L), ProfileArn = structure(logical(0), 
            shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        ProfileName = structure(logical(0), shape = "ProfileName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*")), 
        shape = "RoomData", type = "structure")), shape = "RoomDataList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string", max = 1000L, min = 1L), TotalCount = structure(logical(0), 
        shape = "TotalCount", type = "integer")), shape = "SearchRoomsResponse", 
        type = "structure")
    return(populate(args, shape))
}

search_skill_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1000L, min = 1L), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 50L, min = 1L), Filters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "FilterKey", type = "string", max = 500L, 
            min = 1L), Values = structure(list(structure(logical(0), 
            shape = "FilterValue", type = "string", max = 500L, 
            min = 1L)), shape = "FilterValueList", type = "list", 
            max = 5L)), shape = "Filter", type = "structure")), 
            shape = "FilterList", type = "list", max = 25L), 
        SortCriteria = structure(list(structure(list(Key = structure(logical(0), 
            shape = "SortKey", type = "string", max = 500L, min = 1L), 
            Value = structure(logical(0), shape = "SortValue", 
                type = "string")), shape = "Sort", type = "structure")), 
            shape = "SortList", type = "list", max = 25L)), shape = "SearchSkillGroupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

search_skill_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SkillGroups = structure(list(structure(list(SkillGroupArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        SkillGroupName = structure(logical(0), shape = "SkillGroupName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        Description = structure(logical(0), shape = "SkillGroupDescription", 
            type = "string", max = 200L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*")), 
        shape = "SkillGroupData", type = "structure")), shape = "SkillGroupDataList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string", max = 1000L, min = 1L), TotalCount = structure(logical(0), 
        shape = "TotalCount", type = "integer")), shape = "SearchSkillGroupsResponse", 
        type = "structure")
    return(populate(args, shape))
}

search_users_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1000L, min = 1L), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 50L, min = 1L), Filters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "FilterKey", type = "string", max = 500L, 
            min = 1L), Values = structure(list(structure(logical(0), 
            shape = "FilterValue", type = "string", max = 500L, 
            min = 1L)), shape = "FilterValueList", type = "list", 
            max = 5L)), shape = "Filter", type = "structure")), 
            shape = "FilterList", type = "list", max = 25L), 
        SortCriteria = structure(list(structure(list(Key = structure(logical(0), 
            shape = "SortKey", type = "string", max = 500L, min = 1L), 
            Value = structure(logical(0), shape = "SortValue", 
                type = "string")), shape = "Sort", type = "structure")), 
            shape = "SortList", type = "list", max = 25L)), shape = "SearchUsersRequest", 
        type = "structure")
    return(populate(args, shape))
}

search_users_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Users = structure(list(structure(list(UserArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        FirstName = structure(logical(0), shape = "user_FirstName", 
            type = "string", max = 30L, min = 0L, pattern = "([A-Za-z\\-' 0-9._]|\\p{IsLetter})*"), 
        LastName = structure(logical(0), shape = "user_LastName", 
            type = "string", max = 30L, min = 0L, pattern = "([A-Za-z\\-' 0-9._]|\\p{IsLetter})*"), 
        Email = structure(logical(0), shape = "Email", type = "string", 
            max = 128L, min = 1L, pattern = "([0-9a-zA-Z]([+-.\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{2,9})"), 
        EnrollmentStatus = structure(logical(0), shape = "EnrollmentStatus", 
            type = "string"), EnrollmentId = structure(logical(0), 
            shape = "EnrollmentId", type = "string", max = 128L, 
            min = 0L)), shape = "UserData", type = "structure")), 
        shape = "UserDataList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1000L, min = 1L), 
        TotalCount = structure(logical(0), shape = "TotalCount", 
            type = "integer")), shape = "SearchUsersResponse", 
        type = "structure")
    return(populate(args, shape))
}

send_invitation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserArn = structure(logical(0), shape = "Arn", 
        type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "SendInvitationRequest", type = "structure")
    return(populate(args, shape))
}

send_invitation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SendInvitationResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_device_sync_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoomArn = structure(logical(0), shape = "Arn", 
        type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        DeviceArn = structure(logical(0), shape = "Arn", type = "string", 
            pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        Features = structure(list(structure(logical(0), shape = "Feature", 
            type = "string")), shape = "Features", type = "list")), 
        shape = "StartDeviceSyncRequest", type = "structure")
    return(populate(args, shape))
}

start_device_sync_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StartDeviceSyncResponse", 
        type = "structure")
    return(populate(args, shape))
}

tag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "Arn", 
        type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list")), shape = "TagResourceRequest", type = "structure")
    return(populate(args, shape))
}

tag_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "TagResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

untag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "Arn", 
        type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        TagKeys = structure(list(structure(logical(0), shape = "TagKey", 
            type = "string", max = 128L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "TagKeyList", type = "list")), shape = "UntagResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

untag_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UntagResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_address_book_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AddressBookArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        Name = structure(logical(0), shape = "AddressBookName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        Description = structure(logical(0), shape = "AddressBookDescription", 
            type = "string", max = 200L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*")), 
        shape = "UpdateAddressBookRequest", type = "structure")
    return(populate(args, shape))
}

update_address_book_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateAddressBookResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_contact_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContactArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        DisplayName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        FirstName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        LastName = structure(logical(0), shape = "ContactName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        PhoneNumber = structure(logical(0), shape = "E164PhoneNumber", 
            type = "string", pattern = "^\\+\\d{8,}$")), shape = "UpdateContactRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_contact_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateContactResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_device_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        DeviceName = structure(logical(0), shape = "DeviceName", 
            type = "string", max = 100L, min = 2L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*")), 
        shape = "UpdateDeviceRequest", type = "structure")
    return(populate(args, shape))
}

update_device_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateDeviceResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProfileArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        ProfileName = structure(logical(0), shape = "ProfileName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        Timezone = structure(logical(0), shape = "Timezone", 
            type = "string", max = 100L, min = 1L), Address = structure(logical(0), 
            shape = "Address", type = "string", max = 500L, min = 1L), 
        DistanceUnit = structure(logical(0), shape = "DistanceUnit", 
            type = "string"), TemperatureUnit = structure(logical(0), 
            shape = "TemperatureUnit", type = "string"), WakeWord = structure(logical(0), 
            shape = "WakeWord", type = "string"), SetupModeDisabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), MaxVolumeLimit = structure(logical(0), 
            shape = "MaxVolumeLimit", type = "integer"), PSTNEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "UpdateProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateProfileResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_room_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoomArn = structure(logical(0), shape = "Arn", 
        type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        RoomName = structure(logical(0), shape = "RoomName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        Description = structure(logical(0), shape = "RoomDescription", 
            type = "string", max = 200L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        ProviderCalendarId = structure(logical(0), shape = "ProviderCalendarId", 
            type = "string", max = 100L, min = 0L), ProfileArn = structure(logical(0), 
            shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}")), 
        shape = "UpdateRoomRequest", type = "structure")
    return(populate(args, shape))
}

update_room_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateRoomResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_skill_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SkillGroupArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"), 
        SkillGroupName = structure(logical(0), shape = "SkillGroupName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"), 
        Description = structure(logical(0), shape = "SkillGroupDescription", 
            type = "string", max = 200L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*")), 
        shape = "UpdateSkillGroupRequest", type = "structure")
    return(populate(args, shape))
}

update_skill_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateSkillGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}
