#' Associates a contact with a given address book
#'
#' Associates a contact with a given address book.
#'
#' @param ContactArn The ARN of the contact to associate with an address book.
#' @param AddressBookArn The ARN of the address book with which to associate the contact.
#'
#' @examples
#'
#' @export
associate_contact_with_address_book <- function (ContactArn, 
    AddressBookArn) 
{
    op <- Operation(name = "AssociateContactWithAddressBook", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- associate_contact_with_address_book_input(ContactArn = ContactArn, 
        AddressBookArn = AddressBookArn)
    output <- associate_contact_with_address_book_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates a device with a given room
#'
#' Associates a device with a given room. This applies all the settings from the room profile to the device, and all the skills in any skill groups added to that room. This operation requires the device to be online, or else a manual sync is required.
#'
#' @param DeviceArn The ARN of the device to associate to a room. Required.
#' @param RoomArn The ARN of the room with which to associate the device. Required.
#'
#' @examples
#'
#' @export
associate_device_with_room <- function (DeviceArn = NULL, RoomArn = NULL) 
{
    op <- Operation(name = "AssociateDeviceWithRoom", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- associate_device_with_room_input(DeviceArn = DeviceArn, 
        RoomArn = RoomArn)
    output <- associate_device_with_room_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates a skill group with a given room
#'
#' Associates a skill group with a given room. This enables all skills in the associated skill group on all devices in the room.
#'
#' @param SkillGroupArn The ARN of the skill group to associate with a room. Required.
#' @param RoomArn The ARN of the room with which to associate the skill group. Required.
#'
#' @examples
#'
#' @export
associate_skill_group_with_room <- function (SkillGroupArn = NULL, 
    RoomArn = NULL) 
{
    op <- Operation(name = "AssociateSkillGroupWithRoom", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- associate_skill_group_with_room_input(SkillGroupArn = SkillGroupArn, 
        RoomArn = RoomArn)
    output <- associate_skill_group_with_room_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an address book with the specified details
#'
#' Creates an address book with the specified details.
#'
#' @param Name The name of the address book.
#' @param Description The description of the address book.
#' @param ClientRequestToken A unique, user-specified identifier for the request that ensures idempotency.
#'
#' @examples
#'
#' @export
create_address_book <- function (Name, Description = NULL, ClientRequestToken = NULL) 
{
    op <- Operation(name = "CreateAddressBook", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_address_book_input(Name = Name, Description = Description, 
        ClientRequestToken = ClientRequestToken)
    output <- create_address_book_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a contact with the specified details
#'
#' Creates a contact with the specified details.
#'
#' @param FirstName The first name of the contact that is used to call the contact on the device.
#' @param PhoneNumber The phone number of the contact in E.164 format.
#' @param DisplayName The name of the contact to display on the console.
#' @param LastName The last name of the contact that is used to call the contact on the device.
#' @param ClientRequestToken A unique, user-specified identifier for this request that ensures idempotency.
#'
#' @examples
#'
#' @export
create_contact <- function (FirstName, PhoneNumber, DisplayName = NULL, 
    LastName = NULL, ClientRequestToken = NULL) 
{
    op <- Operation(name = "CreateContact", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_contact_input(FirstName = FirstName, PhoneNumber = PhoneNumber, 
        DisplayName = DisplayName, LastName = LastName, ClientRequestToken = ClientRequestToken)
    output <- create_contact_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new room profile with the specified details
#'
#' Creates a new room profile with the specified details.
#'
#' @param ProfileName The name of a room profile.
#' @param Timezone The time zone used by a room profile.
#' @param Address The valid address for the room.
#' @param DistanceUnit The distance unit to be used by devices in the profile.
#' @param TemperatureUnit The temperature unit to be used by devices in the profile.
#' @param WakeWord A wake word for Alexa, Echo, Amazon, or a computer.
#' @param ClientRequestToken The user-specified token that is used during the creation of a profile.
#' @param SetupModeDisabled Whether room profile setup is enabled.
#' @param MaxVolumeLimit The maximum volume limit for a room profile.
#' @param PSTNEnabled Whether PSTN calling is enabled.
#'
#' @examples
#'
#' @export
create_profile <- function (ProfileName, Timezone, Address, DistanceUnit, 
    TemperatureUnit, WakeWord, ClientRequestToken = NULL, SetupModeDisabled = NULL, 
    MaxVolumeLimit = NULL, PSTNEnabled = NULL) 
{
    op <- Operation(name = "CreateProfile", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_profile_input(ProfileName = ProfileName, 
        Timezone = Timezone, Address = Address, DistanceUnit = DistanceUnit, 
        TemperatureUnit = TemperatureUnit, WakeWord = WakeWord, 
        ClientRequestToken = ClientRequestToken, SetupModeDisabled = SetupModeDisabled, 
        MaxVolumeLimit = MaxVolumeLimit, PSTNEnabled = PSTNEnabled)
    output <- create_profile_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a room with the specified details
#'
#' Creates a room with the specified details.
#'
#' @param RoomName The name for the room.
#' @param Description The description for the room.
#' @param ProfileArn The profile ARN for the room.
#' @param ProviderCalendarId The calendar ARN for the room.
#' @param ClientRequestToken A unique, user-specified identifier for this request that ensures idempotency.
#' @param Tags The tags for the room.
#'
#' @examples
#'
#' @export
create_room <- function (RoomName, Description = NULL, ProfileArn = NULL, 
    ProviderCalendarId = NULL, ClientRequestToken = NULL, Tags = NULL) 
{
    op <- Operation(name = "CreateRoom", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_room_input(RoomName = RoomName, Description = Description, 
        ProfileArn = ProfileArn, ProviderCalendarId = ProviderCalendarId, 
        ClientRequestToken = ClientRequestToken, Tags = Tags)
    output <- create_room_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a skill group with a specified name and description
#'
#' Creates a skill group with a specified name and description.
#'
#' @param SkillGroupName The name for the skill group.
#' @param Description The description for the skill group.
#' @param ClientRequestToken A unique, user-specified identifier for this request that ensures idempotency.
#'
#' @examples
#'
#' @export
create_skill_group <- function (SkillGroupName, Description = NULL, 
    ClientRequestToken = NULL) 
{
    op <- Operation(name = "CreateSkillGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_skill_group_input(SkillGroupName = SkillGroupName, 
        Description = Description, ClientRequestToken = ClientRequestToken)
    output <- create_skill_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a user
#'
#' Creates a user.
#'
#' @param UserId The ARN for the user.
#' @param FirstName The first name for the user.
#' @param LastName The last name for the user.
#' @param Email The email address for the user.
#' @param ClientRequestToken A unique, user-specified identifier for this request that ensures idempotency.
#' @param Tags The tags for the user.
#'
#' @examples
#'
#' @export
create_user <- function (UserId, FirstName = NULL, LastName = NULL, 
    Email = NULL, ClientRequestToken = NULL, Tags = NULL) 
{
    op <- Operation(name = "CreateUser", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_user_input(UserId = UserId, FirstName = FirstName, 
        LastName = LastName, Email = Email, ClientRequestToken = ClientRequestToken, 
        Tags = Tags)
    output <- create_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an address book by the address book ARN
#'
#' Deletes an address book by the address book ARN.
#'
#' @param AddressBookArn The ARN of the address book to delete.
#'
#' @examples
#'
#' @export
delete_address_book <- function (AddressBookArn) 
{
    op <- Operation(name = "DeleteAddressBook", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_address_book_input(AddressBookArn = AddressBookArn)
    output <- delete_address_book_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a contact by the contact ARN
#'
#' Deletes a contact by the contact ARN.
#'
#' @param ContactArn The ARN of the contact to delete.
#'
#' @examples
#'
#' @export
delete_contact <- function (ContactArn) 
{
    op <- Operation(name = "DeleteContact", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_contact_input(ContactArn = ContactArn)
    output <- delete_contact_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a room profile by the profile ARN
#'
#' Deletes a room profile by the profile ARN.
#'
#' @param ProfileArn The ARN of the room profile to delete. Required.
#'
#' @examples
#'
#' @export
delete_profile <- function (ProfileArn = NULL) 
{
    op <- Operation(name = "DeleteProfile", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_profile_input(ProfileArn = ProfileArn)
    output <- delete_profile_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a room by the room ARN
#'
#' Deletes a room by the room ARN.
#'
#' @param RoomArn The ARN of the room to delete. Required.
#'
#' @examples
#'
#' @export
delete_room <- function (RoomArn = NULL) 
{
    op <- Operation(name = "DeleteRoom", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_room_input(RoomArn = RoomArn)
    output <- delete_room_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes room skill parameter details by room, skill, and parameter key ID
#'
#' Deletes room skill parameter details by room, skill, and parameter key ID.
#'
#' @param SkillId The ID of the skill from which to remove the room skill parameter details.
#' @param ParameterKey The room skill parameter key for which to remove details.
#' @param RoomArn The ARN of the room from which to remove the room skill parameter details.
#'
#' @examples
#'
#' @export
delete_room_skill_parameter <- function (SkillId, ParameterKey, 
    RoomArn = NULL) 
{
    op <- Operation(name = "DeleteRoomSkillParameter", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_room_skill_parameter_input(SkillId = SkillId, 
        ParameterKey = ParameterKey, RoomArn = RoomArn)
    output <- delete_room_skill_parameter_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a skill group by skill group ARN
#'
#' Deletes a skill group by skill group ARN.
#'
#' @param SkillGroupArn The ARN of the skill group to delete. Required.
#'
#' @examples
#'
#' @export
delete_skill_group <- function (SkillGroupArn = NULL) 
{
    op <- Operation(name = "DeleteSkillGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_skill_group_input(SkillGroupArn = SkillGroupArn)
    output <- delete_skill_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specified user by user ARN and enrollment ARN
#'
#' Deletes a specified user by user ARN and enrollment ARN.
#'
#' @param EnrollmentId The ARN of the user\'s enrollment in the organization. Required.
#' @param UserArn The ARN of the user to delete in the organization. Required.
#'
#' @examples
#'
#' @export
delete_user <- function (EnrollmentId, UserArn = NULL) 
{
    op <- Operation(name = "DeleteUser", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_user_input(EnrollmentId = EnrollmentId, UserArn = UserArn)
    output <- delete_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates a contact from a given address book
#'
#' Disassociates a contact from a given address book.
#'
#' @param ContactArn The ARN of the contact to disassociate from an address book.
#' @param AddressBookArn The ARN of the address from which to disassociate the contact.
#'
#' @examples
#'
#' @export
disassociate_contact_from_address_book <- function (ContactArn, 
    AddressBookArn) 
{
    op <- Operation(name = "DisassociateContactFromAddressBook", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- disassociate_contact_from_address_book_input(ContactArn = ContactArn, 
        AddressBookArn = AddressBookArn)
    output <- disassociate_contact_from_address_book_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates a device from its current room
#'
#' Disassociates a device from its current room. The device continues to be connected to the Wi-Fi network and is still registered to the account. The device settings and skills are removed from the room.
#'
#' @param DeviceArn The ARN of the device to disassociate from a room. Required.
#'
#' @examples
#'
#' @export
disassociate_device_from_room <- function (DeviceArn = NULL) 
{
    op <- Operation(name = "DisassociateDeviceFromRoom", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disassociate_device_from_room_input(DeviceArn = DeviceArn)
    output <- disassociate_device_from_room_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates a skill group from a specified room
#'
#' Disassociates a skill group from a specified room. This disables all skills in the skill group on all devices in the room.
#'
#' @param SkillGroupArn The ARN of the skill group to disassociate from a room. Required.
#' @param RoomArn The ARN of the room from which the skill group is to be disassociated. Required.
#'
#' @examples
#'
#' @export
disassociate_skill_group_from_room <- function (SkillGroupArn = NULL, 
    RoomArn = NULL) 
{
    op <- Operation(name = "DisassociateSkillGroupFromRoom", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- disassociate_skill_group_from_room_input(SkillGroupArn = SkillGroupArn, 
        RoomArn = RoomArn)
    output <- disassociate_skill_group_from_room_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets address the book details by the address book ARN
#'
#' Gets address the book details by the address book ARN.
#'
#' @param AddressBookArn The ARN of the address book for which to request details.
#'
#' @examples
#'
#' @export
get_address_book <- function (AddressBookArn) 
{
    op <- Operation(name = "GetAddressBook", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_address_book_input(AddressBookArn = AddressBookArn)
    output <- get_address_book_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the contact details by the contact ARN
#'
#' Gets the contact details by the contact ARN.
#'
#' @param ContactArn The ARN of the contact for which to request details.
#'
#' @examples
#'
#' @export
get_contact <- function (ContactArn) 
{
    op <- Operation(name = "GetContact", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_contact_input(ContactArn = ContactArn)
    output <- get_contact_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the details of a device by device ARN
#'
#' Gets the details of a device by device ARN.
#'
#' @param DeviceArn The ARN of the device for which to request details. Required.
#'
#' @examples
#'
#' @export
get_device <- function (DeviceArn = NULL) 
{
    op <- Operation(name = "GetDevice", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_device_input(DeviceArn = DeviceArn)
    output <- get_device_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the details of a room profile by profile ARN
#'
#' Gets the details of a room profile by profile ARN.
#'
#' @param ProfileArn The ARN of the room profile for which to request details. Required.
#'
#' @examples
#'
#' @export
get_profile <- function (ProfileArn = NULL) 
{
    op <- Operation(name = "GetProfile", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_profile_input(ProfileArn = ProfileArn)
    output <- get_profile_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets room details by room ARN
#'
#' Gets room details by room ARN.
#'
#' @param RoomArn The ARN of the room for which to request details. Required.
#'
#' @examples
#'
#' @export
get_room <- function (RoomArn = NULL) 
{
    op <- Operation(name = "GetRoom", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- get_room_input(RoomArn = RoomArn)
    output <- get_room_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets room skill parameter details by room, skill, and parameter key ARN
#'
#' Gets room skill parameter details by room, skill, and parameter key ARN.
#'
#' @param SkillId The ARN of the skill from which to get the room skill parameter details. Required.
#' @param ParameterKey The room skill parameter key for which to get details. Required.
#' @param RoomArn The ARN of the room from which to get the room skill parameter details.
#'
#' @examples
#'
#' @export
get_room_skill_parameter <- function (SkillId, ParameterKey, 
    RoomArn = NULL) 
{
    op <- Operation(name = "GetRoomSkillParameter", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_room_skill_parameter_input(SkillId = SkillId, 
        ParameterKey = ParameterKey, RoomArn = RoomArn)
    output <- get_room_skill_parameter_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets skill group details by skill group ARN
#'
#' Gets skill group details by skill group ARN.
#'
#' @param SkillGroupArn The ARN of the skill group for which to get details. Required.
#'
#' @examples
#'
#' @export
get_skill_group <- function (SkillGroupArn = NULL) 
{
    op <- Operation(name = "GetSkillGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_skill_group_input(SkillGroupArn = SkillGroupArn)
    output <- get_skill_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the device event history, including device connection status, for up to 30 days
#'
#' Lists the device event history, including device connection status, for up to 30 days.
#'
#' @param DeviceArn The ARN of a device.
#' @param EventType The event type to filter device events. If EventType isn\'t specified, this returns a list of all device events in reverse chronological order. If EventType is specified, this returns a list of device events for that EventType in reverse chronological order.
#' @param NextToken An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults. When the end of results is reached, the response has a value of null.
#' @param MaxResults The maximum number of results to include in the response. The default value is 50. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
#'
#' @examples
#'
#' @export
list_device_events <- function (DeviceArn, EventType = NULL, 
    NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "ListDeviceEvents", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_device_events_input(DeviceArn = DeviceArn, 
        EventType = EventType, NextToken = NextToken, MaxResults = MaxResults)
    output <- list_device_events_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all enabled skills in a specific skill group
#'
#' Lists all enabled skills in a specific skill group.
#'
#' @param SkillGroupArn The ARN of the skill group for which to list enabled skills. Required.
#' @param NextToken An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`. Required.
#' @param MaxResults The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved. Required.
#'
#' @examples
#'
#' @export
list_skills <- function (SkillGroupArn = NULL, NextToken = NULL, 
    MaxResults = NULL) 
{
    op <- Operation(name = "ListSkills", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_skills_input(SkillGroupArn = SkillGroupArn, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- list_skills_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all tags for the specified resource
#'
#' Lists all tags for the specified resource.
#'
#' @param Arn The ARN of the specified resource for which to list tags.
#' @param NextToken An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.
#' @param MaxResults The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.
#'
#' @examples
#'
#' @export
list_tags <- function (Arn, NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "ListTags", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_tags_input(Arn = Arn, NextToken = NextToken, 
        MaxResults = MaxResults)
    output <- list_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates room skill parameter details by room, skill, and parameter key ID
#'
#' Updates room skill parameter details by room, skill, and parameter key ID. Not all skills have a room skill parameter.
#'
#' @param SkillId The ARN of the skill associated with the room skill parameter. Required.
#' @param RoomSkillParameter The updated room skill parameter. Required.
#' @param RoomArn The ARN of the room associated with the room skill parameter. Required.
#'
#' @examples
#'
#' @export
put_room_skill_parameter <- function (SkillId, RoomSkillParameter, 
    RoomArn = NULL) 
{
    op <- Operation(name = "PutRoomSkillParameter", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_room_skill_parameter_input(SkillId = SkillId, 
        RoomSkillParameter = RoomSkillParameter, RoomArn = RoomArn)
    output <- put_room_skill_parameter_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Determines the details for the room from which a skill request was invoked
#'
#' Determines the details for the room from which a skill request was invoked. This operation is used by skill developers.
#'
#' @param UserId The ARN of the user. Required.
#' @param SkillId The ARN of the skill that was requested. Required.
#'
#' @examples
#'
#' @export
resolve_room <- function (UserId, SkillId) 
{
    op <- Operation(name = "ResolveRoom", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- resolve_room_input(UserId = UserId, SkillId = SkillId)
    output <- resolve_room_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Revokes an invitation and invalidates the enrollment URL
#'
#' Revokes an invitation and invalidates the enrollment URL.
#'
#' @param UserArn The ARN of the user for whom to revoke an enrollment invitation. Required.
#' @param EnrollmentId The ARN of the enrollment invitation to revoke. Required.
#'
#' @examples
#'
#' @export
revoke_invitation <- function (UserArn = NULL, EnrollmentId = NULL) 
{
    op <- Operation(name = "RevokeInvitation", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- revoke_invitation_input(UserArn = UserArn, EnrollmentId = EnrollmentId)
    output <- revoke_invitation_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Searches address books and lists the ones that meet a set of filter and sort criteria
#'
#' Searches address books and lists the ones that meet a set of filter and sort criteria.
#'
#' @param Filters The filters to use to list a specified set of address books. The supported filter key is AddressBookName.
#' @param SortCriteria The sort order to use in listing the specified set of address books. The supported sort key is AddressBookName.
#' @param NextToken An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults.
#' @param MaxResults The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
#'
#' @examples
#'
#' @export
search_address_books <- function (Filters = NULL, SortCriteria = NULL, 
    NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "SearchAddressBooks", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- search_address_books_input(Filters = Filters, SortCriteria = SortCriteria, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- search_address_books_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Searches contacts and lists the ones that meet a set of filter and sort criteria
#'
#' Searches contacts and lists the ones that meet a set of filter and sort criteria.
#'
#' @param Filters The filters to use to list a specified set of address books. The supported filter keys are DisplayName, FirstName, LastName, and AddressBookArns.
#' @param SortCriteria The sort order to use in listing the specified set of contacts. The supported sort keys are DisplayName, FirstName, and LastName.
#' @param NextToken An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults.
#' @param MaxResults The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
#'
#' @examples
#'
#' @export
search_contacts <- function (Filters = NULL, SortCriteria = NULL, 
    NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "SearchContacts", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- search_contacts_input(Filters = Filters, SortCriteria = SortCriteria, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- search_contacts_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Searches devices and lists the ones that meet a set of filter criteria
#'
#' Searches devices and lists the ones that meet a set of filter criteria.
#'
#' @param NextToken An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.
#' @param MaxResults The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.
#' @param Filters The filters to use to list a specified set of devices. Supported filter keys are DeviceName, DeviceStatus, DeviceStatusDetailCode, RoomName, DeviceType, DeviceSerialNumber, UnassociatedOnly, and ConnectionStatus (ONLINE and OFFLINE).
#' @param SortCriteria The sort order to use in listing the specified set of devices. Supported sort keys are DeviceName, DeviceStatus, RoomName, DeviceType, DeviceSerialNumber, and ConnectionStatus.
#'
#' @examples
#'
#' @export
search_devices <- function (NextToken = NULL, MaxResults = NULL, 
    Filters = NULL, SortCriteria = NULL) 
{
    op <- Operation(name = "SearchDevices", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- search_devices_input(NextToken = NextToken, MaxResults = MaxResults, 
        Filters = Filters, SortCriteria = SortCriteria)
    output <- search_devices_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Searches room profiles and lists the ones that meet a set of filter criteria
#'
#' Searches room profiles and lists the ones that meet a set of filter criteria.
#'
#' @param NextToken An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.
#' @param MaxResults The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.
#' @param Filters The filters to use to list a specified set of room profiles. Supported filter keys are ProfileName and Address. Required.
#' @param SortCriteria The sort order to use in listing the specified set of room profiles. Supported sort keys are ProfileName and Address.
#'
#' @examples
#'
#' @export
search_profiles <- function (NextToken = NULL, MaxResults = NULL, 
    Filters = NULL, SortCriteria = NULL) 
{
    op <- Operation(name = "SearchProfiles", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- search_profiles_input(NextToken = NextToken, MaxResults = MaxResults, 
        Filters = Filters, SortCriteria = SortCriteria)
    output <- search_profiles_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Searches rooms and lists the ones that meet a set of filter and sort criteria
#'
#' Searches rooms and lists the ones that meet a set of filter and sort criteria.
#'
#' @param NextToken An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.
#' @param MaxResults The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.
#' @param Filters The filters to use to list a specified set of rooms. The supported filter keys are RoomName and ProfileName.
#' @param SortCriteria The sort order to use in listing the specified set of rooms. The supported sort keys are RoomName and ProfileName.
#'
#' @examples
#'
#' @export
search_rooms <- function (NextToken = NULL, MaxResults = NULL, 
    Filters = NULL, SortCriteria = NULL) 
{
    op <- Operation(name = "SearchRooms", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- search_rooms_input(NextToken = NextToken, MaxResults = MaxResults, 
        Filters = Filters, SortCriteria = SortCriteria)
    output <- search_rooms_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Searches skill groups and lists the ones that meet a set of filter and sort criteria
#'
#' Searches skill groups and lists the ones that meet a set of filter and sort criteria.
#'
#' @param NextToken An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`. Required.
#' @param MaxResults The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.
#' @param Filters The filters to use to list a specified set of skill groups. The supported filter key is SkillGroupName.
#' @param SortCriteria The sort order to use in listing the specified set of skill groups. The supported sort key is SkillGroupName.
#'
#' @examples
#'
#' @export
search_skill_groups <- function (NextToken = NULL, MaxResults = NULL, 
    Filters = NULL, SortCriteria = NULL) 
{
    op <- Operation(name = "SearchSkillGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- search_skill_groups_input(NextToken = NextToken, 
        MaxResults = MaxResults, Filters = Filters, SortCriteria = SortCriteria)
    output <- search_skill_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Searches users and lists the ones that meet a set of filter and sort criteria
#'
#' Searches users and lists the ones that meet a set of filter and sort criteria.
#'
#' @param NextToken An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`. Required.
#' @param MaxResults The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved. Required.
#' @param Filters The filters to use for listing a specific set of users. Required. Supported filter keys are UserId, FirstName, LastName, Email, and EnrollmentStatus.
#' @param SortCriteria The sort order to use in listing the filtered set of users. Required. Supported sort keys are UserId, FirstName, LastName, Email, and EnrollmentStatus.
#'
#' @examples
#'
#' @export
search_users <- function (NextToken = NULL, MaxResults = NULL, 
    Filters = NULL, SortCriteria = NULL) 
{
    op <- Operation(name = "SearchUsers", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- search_users_input(NextToken = NextToken, MaxResults = MaxResults, 
        Filters = Filters, SortCriteria = SortCriteria)
    output <- search_users_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sends an enrollment invitation email with a URL to a user
#'
#' Sends an enrollment invitation email with a URL to a user. The URL is valid for 72 hours or until you call this operation again, whichever comes first.
#'
#' @param UserArn The ARN of the user to whom to send an invitation. Required.
#'
#' @examples
#'
#' @export
send_invitation <- function (UserArn = NULL) 
{
    op <- Operation(name = "SendInvitation", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- send_invitation_input(UserArn = UserArn)
    output <- send_invitation_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Resets a device and its account to the known default settings, by clearing all information and settings set by previous users
#'
#' Resets a device and its account to the known default settings, by clearing all information and settings set by previous users.
#'
#' @param Features Request structure to start the device sync. Required.
#' @param RoomArn The ARN of the room with which the device to sync is associated. Required.
#' @param DeviceArn The ARN of the device to sync. Required.
#'
#' @examples
#'
#' @export
start_device_sync <- function (Features, RoomArn = NULL, DeviceArn = NULL) 
{
    op <- Operation(name = "StartDeviceSync", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_device_sync_input(Features = Features, RoomArn = RoomArn, 
        DeviceArn = DeviceArn)
    output <- start_device_sync_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds metadata tags to a specified resource
#'
#' Adds metadata tags to a specified resource.
#'
#' @param Arn The ARN of the resource to which to add metadata tags. Required.
#' @param Tags The tags to be added to the specified resource. Do not provide system tags. Required.
#'
#' @examples
#'
#' @export
tag_resource <- function (Arn, Tags) 
{
    op <- Operation(name = "TagResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- tag_resource_input(Arn = Arn, Tags = Tags)
    output <- tag_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes metadata tags from a specified resource
#'
#' Removes metadata tags from a specified resource.
#'
#' @param Arn The ARN of the resource from which to remove metadata tags. Required.
#' @param TagKeys The tags to be removed from the specified resource. Do not provide system tags. Required.
#'
#' @examples
#'
#' @export
untag_resource <- function (Arn, TagKeys) 
{
    op <- Operation(name = "UntagResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- untag_resource_input(Arn = Arn, TagKeys = TagKeys)
    output <- untag_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates address book details by the address book ARN
#'
#' Updates address book details by the address book ARN.
#'
#' @param AddressBookArn The ARN of the room to update.
#' @param Name The updated name of the room.
#' @param Description The updated description of the room.
#'
#' @examples
#'
#' @export
update_address_book <- function (AddressBookArn, Name = NULL, 
    Description = NULL) 
{
    op <- Operation(name = "UpdateAddressBook", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_address_book_input(AddressBookArn = AddressBookArn, 
        Name = Name, Description = Description)
    output <- update_address_book_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the contact details by the contact ARN
#'
#' Updates the contact details by the contact ARN.
#'
#' @param ContactArn The ARN of the contact to update.
#' @param DisplayName The updated display name of the contact.
#' @param FirstName The updated first name of the contact.
#' @param LastName The updated last name of the contact.
#' @param PhoneNumber The updated phone number of the contact.
#'
#' @examples
#'
#' @export
update_contact <- function (ContactArn, DisplayName = NULL, FirstName = NULL, 
    LastName = NULL, PhoneNumber = NULL) 
{
    op <- Operation(name = "UpdateContact", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_contact_input(ContactArn = ContactArn, DisplayName = DisplayName, 
        FirstName = FirstName, LastName = LastName, PhoneNumber = PhoneNumber)
    output <- update_contact_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the device name by device ARN
#'
#' Updates the device name by device ARN.
#'
#' @param DeviceArn The ARN of the device to update. Required.
#' @param DeviceName The updated device name. Required.
#'
#' @examples
#'
#' @export
update_device <- function (DeviceArn = NULL, DeviceName = NULL) 
{
    op <- Operation(name = "UpdateDevice", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_device_input(DeviceArn = DeviceArn, DeviceName = DeviceName)
    output <- update_device_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates an existing room profile by room profile ARN
#'
#' Updates an existing room profile by room profile ARN.
#'
#' @param ProfileArn The ARN of the room profile to update. Required.
#' @param ProfileName The updated name for the room profile.
#' @param Timezone The updated timezone for the room profile.
#' @param Address The updated address for the room profile.
#' @param DistanceUnit The updated distance unit for the room profile.
#' @param TemperatureUnit The updated temperature unit for the room profile.
#' @param WakeWord The updated wake word for the room profile.
#' @param SetupModeDisabled Whether the setup mode of the profile is enabled.
#' @param MaxVolumeLimit The updated maximum volume limit for the room profile.
#' @param PSTNEnabled Whether the PSTN setting of the room profile is enabled.
#'
#' @examples
#'
#' @export
update_profile <- function (ProfileArn = NULL, ProfileName = NULL, 
    Timezone = NULL, Address = NULL, DistanceUnit = NULL, TemperatureUnit = NULL, 
    WakeWord = NULL, SetupModeDisabled = NULL, MaxVolumeLimit = NULL, 
    PSTNEnabled = NULL) 
{
    op <- Operation(name = "UpdateProfile", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_profile_input(ProfileArn = ProfileArn, ProfileName = ProfileName, 
        Timezone = Timezone, Address = Address, DistanceUnit = DistanceUnit, 
        TemperatureUnit = TemperatureUnit, WakeWord = WakeWord, 
        SetupModeDisabled = SetupModeDisabled, MaxVolumeLimit = MaxVolumeLimit, 
        PSTNEnabled = PSTNEnabled)
    output <- update_profile_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates room details by room ARN
#'
#' Updates room details by room ARN.
#'
#' @param RoomArn The ARN of the room to update.
#' @param RoomName The updated name for the room.
#' @param Description The updated description for the room.
#' @param ProviderCalendarId The updated provider calendar ARN for the room.
#' @param ProfileArn The updated profile ARN for the room.
#'
#' @examples
#'
#' @export
update_room <- function (RoomArn = NULL, RoomName = NULL, Description = NULL, 
    ProviderCalendarId = NULL, ProfileArn = NULL) 
{
    op <- Operation(name = "UpdateRoom", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_room_input(RoomArn = RoomArn, RoomName = RoomName, 
        Description = Description, ProviderCalendarId = ProviderCalendarId, 
        ProfileArn = ProfileArn)
    output <- update_room_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates skill group details by skill group ARN
#'
#' Updates skill group details by skill group ARN.
#'
#' @param SkillGroupArn The ARN of the skill group to update.
#' @param SkillGroupName The updated name for the skill group.
#' @param Description The updated description for the skill group.
#'
#' @examples
#'
#' @export
update_skill_group <- function (SkillGroupArn = NULL, SkillGroupName = NULL, 
    Description = NULL) 
{
    op <- Operation(name = "UpdateSkillGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_skill_group_input(SkillGroupArn = SkillGroupArn, 
        SkillGroupName = SkillGroupName, Description = Description)
    output <- update_skill_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
