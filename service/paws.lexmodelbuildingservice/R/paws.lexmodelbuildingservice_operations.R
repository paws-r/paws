#' Creates a new version of the bot based on the `$LATEST` version
#'
#' Creates a new version of the bot based on the `$LATEST` version. If the `$LATEST` version of this resource hasn\'t changed since you created the last version, Amazon Lex doesn\'t create a new version. It returns the last created version.
#' 
#' You can update only the `$LATEST` version of the bot. You can\'t update the numbered versions that you create with the `CreateBotVersion` operation.
#' 
#' When you create the first version of a bot, Amazon Lex sets the version to 1. Subsequent versions increment by 1. For more information, see versioning-intro.
#' 
#' This operation requires permission for the `lex:CreateBotVersion` action.
#'
#' @param name The name of the bot that you want to create a new version of. The name is case sensitive.
#' @param checksum Identifies a specific revision of the `$LATEST` version of the bot. If you specify a checksum and the `$LATEST` version of the bot has a different checksum, a `PreconditionFailedException` exception is returned and Amazon Lex doesn\'t publish a new version. If you don\'t specify a checksum, Amazon Lex publishes the `$LATEST` version.
#'
#' @examples
#'
#' @export
create_bot_version <- function (name, checksum = NULL) 
{
    op <- Operation(name = "CreateBotVersion", http_method = "POST", 
        http_path = "/bots/{name}/versions", paginator = list())
    input <- create_bot_version_input(name = name, checksum = checksum)
    output <- create_bot_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new version of an intent based on the `$LATEST` version of the intent
#'
#' Creates a new version of an intent based on the `$LATEST` version of the intent. If the `$LATEST` version of this intent hasn\'t changed since you last updated it, Amazon Lex doesn\'t create a new version. It returns the last version you created.
#' 
#' You can update only the `$LATEST` version of the intent. You can\'t update the numbered versions that you create with the `CreateIntentVersion` operation.
#' 
#' When you create a version of an intent, Amazon Lex sets the version to 1. Subsequent versions increment by 1. For more information, see versioning-intro.
#' 
#' This operation requires permissions to perform the `lex:CreateIntentVersion` action.
#'
#' @param name The name of the intent that you want to create a new version of. The name is case sensitive.
#' @param checksum Checksum of the `$LATEST` version of the intent that should be used to create the new version. If you specify a checksum and the `$LATEST` version of the intent has a different checksum, Amazon Lex returns a `PreconditionFailedException` exception and doesn\'t publish a new version. If you don\'t specify a checksum, Amazon Lex publishes the `$LATEST` version.
#'
#' @examples
#'
#' @export
create_intent_version <- function (name, checksum = NULL) 
{
    op <- Operation(name = "CreateIntentVersion", http_method = "POST", 
        http_path = "/intents/{name}/versions", paginator = list())
    input <- create_intent_version_input(name = name, checksum = checksum)
    output <- create_intent_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new version of a slot type based on the `$LATEST` version of the specified slot type
#'
#' Creates a new version of a slot type based on the `$LATEST` version of the specified slot type. If the `$LATEST` version of this resource has not changed since the last version that you created, Amazon Lex doesn\'t create a new version. It returns the last version that you created.
#' 
#' You can update only the `$LATEST` version of a slot type. You can\'t update the numbered versions that you create with the `CreateSlotTypeVersion` operation.
#' 
#' When you create a version of a slot type, Amazon Lex sets the version to 1. Subsequent versions increment by 1. For more information, see versioning-intro.
#' 
#' This operation requires permissions for the `lex:CreateSlotTypeVersion` action.
#'
#' @param name The name of the slot type that you want to create a new version for. The name is case sensitive.
#' @param checksum Checksum for the `$LATEST` version of the slot type that you want to publish. If you specify a checksum and the `$LATEST` version of the slot type has a different checksum, Amazon Lex returns a `PreconditionFailedException` exception and doesn\'t publish the new version. If you don\'t specify a checksum, Amazon Lex publishes the `$LATEST` version.
#'
#' @examples
#'
#' @export
create_slot_type_version <- function (name, checksum = NULL) 
{
    op <- Operation(name = "CreateSlotTypeVersion", http_method = "POST", 
        http_path = "/slottypes/{name}/versions", paginator = list())
    input <- create_slot_type_version_input(name = name, checksum = checksum)
    output <- create_slot_type_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes all versions of the bot, including the `$LATEST` version
#'
#' Deletes all versions of the bot, including the `$LATEST` version. To delete a specific version of the bot, use the DeleteBotVersion operation.
#' 
#' If a bot has an alias, you can\'t delete it. Instead, the `DeleteBot` operation returns a `ResourceInUseException` exception that includes a reference to the alias that refers to the bot. To remove the reference to the bot, delete the alias. If you get the same exception again, delete the referring alias until the `DeleteBot` operation is successful.
#' 
#' This operation requires permissions for the `lex:DeleteBot` action.
#'
#' @param name The name of the bot. The name is case sensitive.
#'
#' @examples
#'
#' @export
delete_bot <- function (name) 
{
    op <- Operation(name = "DeleteBot", http_method = "DELETE", 
        http_path = "/bots/{name}", paginator = list())
    input <- delete_bot_input(name = name)
    output <- delete_bot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an alias for the specified bot
#'
#' Deletes an alias for the specified bot.
#' 
#' You can\'t delete an alias that is used in the association between a bot and a messaging channel. If an alias is used in a channel association, the `DeleteBot` operation returns a `ResourceInUseException` exception that includes a reference to the channel association that refers to the bot. You can remove the reference to the alias by deleting the channel association. If you get the same exception again, delete the referring association until the `DeleteBotAlias` operation is successful.
#'
#' @param name The name of the alias to delete. The name is case sensitive.
#' @param botName The name of the bot that the alias points to.
#'
#' @examples
#'
#' @export
delete_bot_alias <- function (name, botName) 
{
    op <- Operation(name = "DeleteBotAlias", http_method = "DELETE", 
        http_path = "/bots/{botName}/aliases/{name}", paginator = list())
    input <- delete_bot_alias_input(name = name, botName = botName)
    output <- delete_bot_alias_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the association between an Amazon Lex bot and a messaging platform
#'
#' Deletes the association between an Amazon Lex bot and a messaging platform.
#' 
#' This operation requires permission for the `lex:DeleteBotChannelAssociation` action.
#'
#' @param name The name of the association. The name is case sensitive.
#' @param botName The name of the Amazon Lex bot.
#' @param botAlias An alias that points to the specific version of the Amazon Lex bot to which this association is being made.
#'
#' @examples
#'
#' @export
delete_bot_channel_association <- function (name, botName, botAlias) 
{
    op <- Operation(name = "DeleteBotChannelAssociation", http_method = "DELETE", 
        http_path = "/bots/{botName}/aliases/{aliasName}/channels/{name}", 
        paginator = list())
    input <- delete_bot_channel_association_input(name = name, 
        botName = botName, botAlias = botAlias)
    output <- delete_bot_channel_association_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specific version of a bot
#'
#' Deletes a specific version of a bot. To delete all versions of a bot, use the DeleteBot operation.
#' 
#' This operation requires permissions for the `lex:DeleteBotVersion` action.
#'
#' @param name The name of the bot.
#' @param version The version of the bot to delete. You cannot delete the `$LATEST` version of the bot. To delete the `$LATEST` version, use the DeleteBot operation.
#'
#' @examples
#'
#' @export
delete_bot_version <- function (name, version) 
{
    op <- Operation(name = "DeleteBotVersion", http_method = "DELETE", 
        http_path = "/bots/{name}/versions/{version}", paginator = list())
    input <- delete_bot_version_input(name = name, version = version)
    output <- delete_bot_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes all versions of the intent, including the `$LATEST` version
#'
#' Deletes all versions of the intent, including the `$LATEST` version. To delete a specific version of the intent, use the DeleteIntentVersion operation.
#' 
#' You can delete a version of an intent only if it is not referenced. To delete an intent that is referred to in one or more bots (see how-it-works), you must remove those references first.
#' 
#' If you get the `ResourceInUseException` exception, it provides an example reference that shows where the intent is referenced. To remove the reference to the intent, either update the bot or delete it. If you get the same exception when you attempt to delete the intent again, repeat until the intent has no references and the call to `DeleteIntent` is successful.
#' 
#' This operation requires permission for the `lex:DeleteIntent` action.
#'
#' @param name The name of the intent. The name is case sensitive.
#'
#' @examples
#'
#' @export
delete_intent <- function (name) 
{
    op <- Operation(name = "DeleteIntent", http_method = "DELETE", 
        http_path = "/intents/{name}", paginator = list())
    input <- delete_intent_input(name = name)
    output <- delete_intent_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specific version of an intent
#'
#' Deletes a specific version of an intent. To delete all versions of a intent, use the DeleteIntent operation.
#' 
#' This operation requires permissions for the `lex:DeleteIntentVersion` action.
#'
#' @param name The name of the intent.
#' @param version The version of the intent to delete. You cannot delete the `$LATEST` version of the intent. To delete the `$LATEST` version, use the DeleteIntent operation.
#'
#' @examples
#'
#' @export
delete_intent_version <- function (name, version) 
{
    op <- Operation(name = "DeleteIntentVersion", http_method = "DELETE", 
        http_path = "/intents/{name}/versions/{version}", paginator = list())
    input <- delete_intent_version_input(name = name, version = version)
    output <- delete_intent_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes all versions of the slot type, including the `$LATEST` version
#'
#' Deletes all versions of the slot type, including the `$LATEST` version. To delete a specific version of the slot type, use the DeleteSlotTypeVersion operation.
#' 
#' You can delete a version of a slot type only if it is not referenced. To delete a slot type that is referred to in one or more intents, you must remove those references first.
#' 
#' If you get the `ResourceInUseException` exception, the exception provides an example reference that shows the intent where the slot type is referenced. To remove the reference to the slot type, either update the intent or delete it. If you get the same exception when you attempt to delete the slot type again, repeat until the slot type has no references and the `DeleteSlotType` call is successful.
#' 
#' This operation requires permission for the `lex:DeleteSlotType` action.
#'
#' @param name The name of the slot type. The name is case sensitive.
#'
#' @examples
#'
#' @export
delete_slot_type <- function (name) 
{
    op <- Operation(name = "DeleteSlotType", http_method = "DELETE", 
        http_path = "/slottypes/{name}", paginator = list())
    input <- delete_slot_type_input(name = name)
    output <- delete_slot_type_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specific version of a slot type
#'
#' Deletes a specific version of a slot type. To delete all versions of a slot type, use the DeleteSlotType operation.
#' 
#' This operation requires permissions for the `lex:DeleteSlotTypeVersion` action.
#'
#' @param name The name of the slot type.
#' @param version The version of the slot type to delete. You cannot delete the `$LATEST` version of the slot type. To delete the `$LATEST` version, use the DeleteSlotType operation.
#'
#' @examples
#'
#' @export
delete_slot_type_version <- function (name, version) 
{
    op <- Operation(name = "DeleteSlotTypeVersion", http_method = "DELETE", 
        http_path = "/slottypes/{name}/version/{version}", paginator = list())
    input <- delete_slot_type_version_input(name = name, version = version)
    output <- delete_slot_type_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes stored utterances
#'
#' Deletes stored utterances.
#' 
#' Amazon Lex stores the utterances that users send to your bot. Utterances are stored for 15 days for use with the GetUtterancesView operation, and then stored indefinitely for use in improving the ability of your bot to respond to user input.
#' 
#' Use the `DeleteStoredUtterances` operation to manually delete stored utterances for a specific user.
#' 
#' This operation requires permissions for the `lex:DeleteUtterances` action.
#'
#' @param botName The name of the bot that stored the utterances.
#' @param userId The unique identifier for the user that made the utterances. This is the user ID that was sent in the [PostContent](http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html) or [PostText](http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html) operation request that contained the utterance.
#'
#' @examples
#'
#' @export
delete_utterances <- function (botName, userId) 
{
    op <- Operation(name = "DeleteUtterances", http_method = "DELETE", 
        http_path = "/bots/{botName}/utterances/{userId}", paginator = list())
    input <- delete_utterances_input(botName = botName, userId = userId)
    output <- delete_utterances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns metadata information for a specific bot
#'
#' Returns metadata information for a specific bot. You must provide the bot name and the bot version or alias.
#' 
#' This operation requires permissions for the `lex:GetBot` action.
#'
#' @param name The name of the bot. The name is case sensitive.
#' @param versionOrAlias The version or alias of the bot.
#'
#' @examples
#' # This example shows how to get configuration information for a bot.
#' get_bot(
#'   name = "DocOrderPizza",
#'   versionOrAlias = "$LATEST"
#' )
#'
#' @export
get_bot <- function (name, versionOrAlias) 
{
    op <- Operation(name = "GetBot", http_method = "GET", http_path = "/bots/{name}/versions/{versionoralias}", 
        paginator = list())
    input <- get_bot_input(name = name, versionOrAlias = versionOrAlias)
    output <- get_bot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about an Amazon Lex bot alias
#'
#' Returns information about an Amazon Lex bot alias. For more information about aliases, see versioning-aliases.
#' 
#' This operation requires permissions for the `lex:GetBotAlias` action.
#'
#' @param name The name of the bot alias. The name is case sensitive.
#' @param botName The name of the bot.
#'
#' @examples
#'
#' @export
get_bot_alias <- function (name, botName) 
{
    op <- Operation(name = "GetBotAlias", http_method = "GET", 
        http_path = "/bots/{botName}/aliases/{name}", paginator = list())
    input <- get_bot_alias_input(name = name, botName = botName)
    output <- get_bot_alias_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of aliases for a specified Amazon Lex bot
#'
#' Returns a list of aliases for a specified Amazon Lex bot.
#' 
#' This operation requires permissions for the `lex:GetBotAliases` action.
#'
#' @param botName The name of the bot.
#' @param nextToken A pagination token for fetching the next page of aliases. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of aliases, specify the pagination token in the next request.
#' @param maxResults The maximum number of aliases to return in the response. The default is 50. .
#' @param nameContains Substring to match in bot alias names. An alias will be returned if any part of its name matches the substring. For example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\"
#'
#' @examples
#'
#' @export
get_bot_aliases <- function (botName, nextToken = NULL, maxResults = NULL, 
    nameContains = NULL) 
{
    op <- Operation(name = "GetBotAliases", http_method = "GET", 
        http_path = "/bots/{botName}/aliases/", paginator = list())
    input <- get_bot_aliases_input(botName = botName, nextToken = nextToken, 
        maxResults = maxResults, nameContains = nameContains)
    output <- get_bot_aliases_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about the association between an Amazon Lex bot and a messaging platform
#'
#' Returns information about the association between an Amazon Lex bot and a messaging platform.
#' 
#' This operation requires permissions for the `lex:GetBotChannelAssociation` action.
#'
#' @param name The name of the association between the bot and the channel. The name is case sensitive.
#' @param botName The name of the Amazon Lex bot.
#' @param botAlias An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.
#'
#' @examples
#'
#' @export
get_bot_channel_association <- function (name, botName, botAlias) 
{
    op <- Operation(name = "GetBotChannelAssociation", http_method = "GET", 
        http_path = "/bots/{botName}/aliases/{aliasName}/channels/{name}", 
        paginator = list())
    input <- get_bot_channel_association_input(name = name, botName = botName, 
        botAlias = botAlias)
    output <- get_bot_channel_association_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of all of the channels associated with the specified bot
#'
#' Returns a list of all of the channels associated with the specified bot.
#' 
#' The `GetBotChannelAssociations` operation requires permissions for the `lex:GetBotChannelAssociations` action.
#'
#' @param botName The name of the Amazon Lex bot in the association.
#' @param botAlias An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.
#' @param nextToken A pagination token for fetching the next page of associations. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of associations, specify the pagination token in the next request.
#' @param maxResults The maximum number of associations to return in the response. The default is 50.
#' @param nameContains Substring to match in channel association names. An association will be returned if any part of its name matches the substring. For example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\" To return all bot channel associations, use a hyphen (\"-\") as the `nameContains` parameter.
#'
#' @examples
#'
#' @export
get_bot_channel_associations <- function (botName, botAlias, 
    nextToken = NULL, maxResults = NULL, nameContains = NULL) 
{
    op <- Operation(name = "GetBotChannelAssociations", http_method = "GET", 
        http_path = "/bots/{botName}/aliases/{aliasName}/channels/", 
        paginator = list())
    input <- get_bot_channel_associations_input(botName = botName, 
        botAlias = botAlias, nextToken = nextToken, maxResults = maxResults, 
        nameContains = nameContains)
    output <- get_bot_channel_associations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about all of the versions of a bot
#'
#' Gets information about all of the versions of a bot.
#' 
#' The `GetBotVersions` operation returns a `BotMetadata` object for each version of a bot. For example, if a bot has three numbered versions, the `GetBotVersions` operation returns four `BotMetadata` objects in the response, one for each numbered version and one for the `$LATEST` version.
#' 
#' The `GetBotVersions` operation always returns at least one version, the `$LATEST` version.
#' 
#' This operation requires permissions for the `lex:GetBotVersions` action.
#'
#' @param name The name of the bot for which versions should be returned.
#' @param nextToken A pagination token for fetching the next page of bot versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request.
#' @param maxResults The maximum number of bot versions to return in the response. The default is 10.
#'
#' @examples
#'
#' @export
get_bot_versions <- function (name, nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "GetBotVersions", http_method = "GET", 
        http_path = "/bots/{name}/versions/", paginator = list())
    input <- get_bot_versions_input(name = name, nextToken = nextToken, 
        maxResults = maxResults)
    output <- get_bot_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns bot information as follows:
#'
#' Returns bot information as follows:
#' 
#' -   If you provide the `nameContains` field, the response includes information for the `$LATEST` version of all bots whose name contains the specified string.
#' 
#' -   If you don\'t specify the `nameContains` field, the operation returns information about the `$LATEST` version of all of your bots.
#' 
#' This operation requires permission for the `lex:GetBots` action.
#'
#' @param nextToken A pagination token that fetches the next page of bots. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of bots, specify the pagination token in the next request.
#' @param maxResults The maximum number of bots to return in the response that the request will return. The default is 10.
#' @param nameContains Substring to match in bot names. A bot will be returned if any part of its name matches the substring. For example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\"
#'
#' @examples
#' # This example shows how to get a list of all of the bots in your account.
#' get_bots(
#'   maxResults = 5L,
#'   nextToken = ""
#' )
#'
#' @export
get_bots <- function (nextToken = NULL, maxResults = NULL, nameContains = NULL) 
{
    op <- Operation(name = "GetBots", http_method = "GET", http_path = "/bots/", 
        paginator = list())
    input <- get_bots_input(nextToken = nextToken, maxResults = maxResults, 
        nameContains = nameContains)
    output <- get_bots_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a built-in intent
#'
#' Returns information about a built-in intent.
#' 
#' This operation requires permission for the `lex:GetBuiltinIntent` action.
#'
#' @param signature The unique identifier for a built-in intent. To find the signature for an intent, see [Standard Built-in Intents](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents) in the *Alexa Skills Kit*.
#'
#' @examples
#'
#' @export
get_builtin_intent <- function (signature) 
{
    op <- Operation(name = "GetBuiltinIntent", http_method = "GET", 
        http_path = "/builtins/intents/{signature}", paginator = list())
    input <- get_builtin_intent_input(signature = signature)
    output <- get_builtin_intent_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a list of built-in intents that meet the specified criteria
#'
#' Gets a list of built-in intents that meet the specified criteria.
#' 
#' This operation requires permission for the `lex:GetBuiltinIntents` action.
#'
#' @param locale A list of locales that the intent supports.
#' @param signatureContains Substring to match in built-in intent signatures. An intent will be returned if any part of its signature matches the substring. For example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\" To find the signature for an intent, see [Standard Built-in Intents](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents) in the *Alexa Skills Kit*.
#' @param nextToken A pagination token that fetches the next page of intents. If this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, use the pagination token in the next request.
#' @param maxResults The maximum number of intents to return in the response. The default is 10.
#'
#' @examples
#'
#' @export
get_builtin_intents <- function (locale = NULL, signatureContains = NULL, 
    nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "GetBuiltinIntents", http_method = "GET", 
        http_path = "/builtins/intents/", paginator = list())
    input <- get_builtin_intents_input(locale = locale, signatureContains = signatureContains, 
        nextToken = nextToken, maxResults = maxResults)
    output <- get_builtin_intents_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a list of built-in slot types that meet the specified criteria
#'
#' Gets a list of built-in slot types that meet the specified criteria.
#' 
#' For a list of built-in slot types, see [Slot Type Reference](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference) in the *Alexa Skills Kit*.
#' 
#' This operation requires permission for the `lex:GetBuiltInSlotTypes` action.
#'
#' @param locale A list of locales that the slot type supports.
#' @param signatureContains Substring to match in built-in slot type signatures. A slot type will be returned if any part of its signature matches the substring. For example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\"
#' @param nextToken A pagination token that fetches the next page of slot types. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of slot types, specify the pagination token in the next request.
#' @param maxResults The maximum number of slot types to return in the response. The default is 10.
#'
#' @examples
#'
#' @export
get_builtin_slot_types <- function (locale = NULL, signatureContains = NULL, 
    nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "GetBuiltinSlotTypes", http_method = "GET", 
        http_path = "/builtins/slottypes/", paginator = list())
    input <- get_builtin_slot_types_input(locale = locale, signatureContains = signatureContains, 
        nextToken = nextToken, maxResults = maxResults)
    output <- get_builtin_slot_types_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Exports the contents of a Amazon Lex resource in a specified format
#'
#' Exports the contents of a Amazon Lex resource in a specified format.
#'
#' @param name The name of the bot to export.
#' @param version The version of the bot to export.
#' @param resourceType The type of resource to export.
#' @param exportType The format of the exported data.
#'
#' @examples
#'
#' @export
get_export <- function (name, version, resourceType, exportType) 
{
    op <- Operation(name = "GetExport", http_method = "GET", 
        http_path = "/exports/", paginator = list())
    input <- get_export_input(name = name, version = version, 
        resourceType = resourceType, exportType = exportType)
    output <- get_export_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about an import job started with the `StartImport` operation
#'
#' Gets information about an import job started with the `StartImport` operation.
#'
#' @param importId The identifier of the import job information to return.
#'
#' @examples
#'
#' @export
get_import <- function (importId) 
{
    op <- Operation(name = "GetImport", http_method = "GET", 
        http_path = "/imports/{importId}", paginator = list())
    input <- get_import_input(importId = importId)
    output <- get_import_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about an intent
#'
#' Returns information about an intent. In addition to the intent name, you must specify the intent version.
#' 
#' This operation requires permissions to perform the `lex:GetIntent` action.
#'
#' @param name The name of the intent. The name is case sensitive.
#' @param version The version of the intent.
#'
#' @examples
#' # This example shows how to get information about an intent.
#' get_intent(
#'   version = "$LATEST",
#'   name = "DocOrderPizza"
#' )
#'
#' @export
get_intent <- function (name, version) 
{
    op <- Operation(name = "GetIntent", http_method = "GET", 
        http_path = "/intents/{name}/versions/{version}", paginator = list())
    input <- get_intent_input(name = name, version = version)
    output <- get_intent_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about all of the versions of an intent
#'
#' Gets information about all of the versions of an intent.
#' 
#' The `GetIntentVersions` operation returns an `IntentMetadata` object for each version of an intent. For example, if an intent has three numbered versions, the `GetIntentVersions` operation returns four `IntentMetadata` objects in the response, one for each numbered version and one for the `$LATEST` version.
#' 
#' The `GetIntentVersions` operation always returns at least one version, the `$LATEST` version.
#' 
#' This operation requires permissions for the `lex:GetIntentVersions` action.
#'
#' @param name The name of the intent for which versions should be returned.
#' @param nextToken A pagination token for fetching the next page of intent versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request.
#' @param maxResults The maximum number of intent versions to return in the response. The default is 10.
#'
#' @examples
#'
#' @export
get_intent_versions <- function (name, nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "GetIntentVersions", http_method = "GET", 
        http_path = "/intents/{name}/versions/", paginator = list())
    input <- get_intent_versions_input(name = name, nextToken = nextToken, 
        maxResults = maxResults)
    output <- get_intent_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns intent information as follows:
#'
#' Returns intent information as follows:
#' 
#' -   If you specify the `nameContains` field, returns the `$LATEST` version of all intents that contain the specified string.
#' 
#' -   If you don\'t specify the `nameContains` field, returns information about the `$LATEST` version of all intents.
#' 
#' The operation requires permission for the `lex:GetIntents` action.
#'
#' @param nextToken A pagination token that fetches the next page of intents. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, specify the pagination token in the next request.
#' @param maxResults The maximum number of intents to return in the response. The default is 10.
#' @param nameContains Substring to match in intent names. An intent will be returned if any part of its name matches the substring. For example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\"
#'
#' @examples
#' # This example shows how to get a list of all of the intents in your
#' # account.
#' get_intents(
#'   maxResults = 10L,
#'   nextToken = ""
#' )
#'
#' @export
get_intents <- function (nextToken = NULL, maxResults = NULL, 
    nameContains = NULL) 
{
    op <- Operation(name = "GetIntents", http_method = "GET", 
        http_path = "/intents/", paginator = list())
    input <- get_intents_input(nextToken = nextToken, maxResults = maxResults, 
        nameContains = nameContains)
    output <- get_intents_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a specific version of a slot type
#'
#' Returns information about a specific version of a slot type. In addition to specifying the slot type name, you must specify the slot type version.
#' 
#' This operation requires permissions for the `lex:GetSlotType` action.
#'
#' @param name The name of the slot type. The name is case sensitive.
#' @param version The version of the slot type.
#'
#' @examples
#' # This example shows how to get information about a slot type.
#' get_slot_type(
#'   version = "$LATEST",
#'   name = "DocPizzaCrustType"
#' )
#'
#' @export
get_slot_type <- function (name, version) 
{
    op <- Operation(name = "GetSlotType", http_method = "GET", 
        http_path = "/slottypes/{name}/versions/{version}", paginator = list())
    input <- get_slot_type_input(name = name, version = version)
    output <- get_slot_type_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about all versions of a slot type
#'
#' Gets information about all versions of a slot type.
#' 
#' The `GetSlotTypeVersions` operation returns a `SlotTypeMetadata` object for each version of a slot type. For example, if a slot type has three numbered versions, the `GetSlotTypeVersions` operation returns four `SlotTypeMetadata` objects in the response, one for each numbered version and one for the `$LATEST` version.
#' 
#' The `GetSlotTypeVersions` operation always returns at least one version, the `$LATEST` version.
#' 
#' This operation requires permissions for the `lex:GetSlotTypeVersions` action.
#'
#' @param name The name of the slot type for which versions should be returned.
#' @param nextToken A pagination token for fetching the next page of slot type versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request.
#' @param maxResults The maximum number of slot type versions to return in the response. The default is 10.
#'
#' @examples
#'
#' @export
get_slot_type_versions <- function (name, nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "GetSlotTypeVersions", http_method = "GET", 
        http_path = "/slottypes/{name}/versions/", paginator = list())
    input <- get_slot_type_versions_input(name = name, nextToken = nextToken, 
        maxResults = maxResults)
    output <- get_slot_type_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns slot type information as follows:
#'
#' Returns slot type information as follows:
#' 
#' -   If you specify the `nameContains` field, returns the `$LATEST` version of all slot types that contain the specified string.
#' 
#' -   If you don\'t specify the `nameContains` field, returns information about the `$LATEST` version of all slot types.
#' 
#' The operation requires permission for the `lex:GetSlotTypes` action.
#'
#' @param nextToken A pagination token that fetches the next page of slot types. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch next page of slot types, specify the pagination token in the next request.
#' @param maxResults The maximum number of slot types to return in the response. The default is 10.
#' @param nameContains Substring to match in slot type names. A slot type will be returned if any part of its name matches the substring. For example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\"
#'
#' @examples
#' # This example shows how to get a list of all of the slot types in your
#' # account.
#' get_slot_types(
#'   maxResults = 10L,
#'   nextToken = ""
#' )
#'
#' @export
get_slot_types <- function (nextToken = NULL, maxResults = NULL, 
    nameContains = NULL) 
{
    op <- Operation(name = "GetSlotTypes", http_method = "GET", 
        http_path = "/slottypes/", paginator = list())
    input <- get_slot_types_input(nextToken = nextToken, maxResults = maxResults, 
        nameContains = nameContains)
    output <- get_slot_types_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Use the `GetUtterancesView` operation to get information about the utterances that your users have made to your bot
#'
#' Use the `GetUtterancesView` operation to get information about the utterances that your users have made to your bot. You can use this list to tune the utterances that your bot responds to.
#' 
#' For example, say that you have created a bot to order flowers. After your users have used your bot for a while, use the `GetUtterancesView` operation to see the requests that they have made and whether they have been successful. You might find that the utterance \"I want flowers\" is not being recognized. You could add this utterance to the `OrderFlowers` intent so that your bot recognizes that utterance.
#' 
#' After you publish a new version of a bot, you can get information about the old version and the new so that you can compare the performance across the two versions.
#' 
#' Utterance statistics are generated once a day. Data is available for the last 15 days. You can request information for up to 5 versions in each request. The response contains information about a maximum of 100 utterances for each version.
#' 
#' This operation requires permissions for the `lex:GetUtterancesView` action.
#'
#' @param botName The name of the bot for which utterance information should be returned.
#' @param botVersions An array of bot versions for which utterance information should be returned. The limit is 5 versions per request.
#' @param statusType To return utterances that were recognized and handled, use`Detected`. To return utterances that were not recognized, use `Missed`.
#'
#' @examples
#'
#' @export
get_utterances_view <- function (botName, botVersions, statusType) 
{
    op <- Operation(name = "GetUtterancesView", http_method = "GET", 
        http_path = "/bots/{botname}/utterances?view=aggregation", 
        paginator = list())
    input <- get_utterances_view_input(botName = botName, botVersions = botVersions, 
        statusType = statusType)
    output <- get_utterances_view_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an Amazon Lex conversational bot or replaces an existing bot
#'
#' Creates an Amazon Lex conversational bot or replaces an existing bot. When you create or update a bot you are only required to specify a name, a locale, and whether the bot is directed toward children under age 13. You can use this to add intents later, or to remove intents from an existing bot. When you create a bot with the minimum information, the bot is created or updated but Amazon Lex returns the `` response `FAILED`. You can build the bot after you add one or more intents. For more information about Amazon Lex bots, see how-it-works.
#' 
#' If you specify the name of an existing bot, the fields in the request replace the existing values in the `$LATEST` version of the bot. Amazon Lex removes any fields that you don\'t provide values for in the request, except for the `idleTTLInSeconds` and `privacySettings` fields, which are set to their default values. If you don\'t specify values for required fields, Amazon Lex throws an exception.
#' 
#' This operation requires permissions for the `lex:PutBot` action. For more information, see auth-and-access-control.
#'
#' @param name The name of the bot. The name is *not* case sensitive.
#' @param locale Specifies the target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot.
#' 
#' The default is `en-US`.
#' @param childDirected For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children\'s Online Privacy Protection Act (COPPA) by specifying `true` or `false` in the `childDirected` field. By specifying `true` in the `childDirected` field, you confirm that your use of Amazon Lex **is** related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. By specifying `false` in the `childDirected` field, you confirm that your use of Amazon Lex **is not** related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. You may not specify a default value for the `childDirected` field that does not accurately reflect whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA.
#' 
#' If your use of Amazon Lex relates to a website, program, or other application that is directed in whole or in part, to children under age 13, you must obtain any required verifiable parental consent under COPPA. For information regarding the use of Amazon Lex in connection with websites, programs, or other applications that are directed or targeted, in whole or in part, to children under age 13, see the [Amazon Lex FAQ.](https://aws.amazon.com/lex/faqs#data-security)
#' @param description A description of the bot.
#' @param intents An array of `Intent` objects. Each intent represents a command that a user can express. For example, a pizza ordering bot might support an OrderPizza intent. For more information, see how-it-works.
#' @param clarificationPrompt When Amazon Lex doesn\'t understand the user\'s intent, it uses this message to get clarification. To specify how many times Amazon Lex should repeate the clarification prompt, use the `maxAttempts` field. If Amazon Lex still doesn\'t understand, it sends the message in the `abortStatement` field.
#' 
#' When you create a clarification prompt, make sure that it suggests the correct response from the user. for example, for a bot that orders pizza and drinks, you might create this clarification prompt: \"What would you like to do? You can say \'Order a pizza\' or \'Order a drink.\'\"
#' @param abortStatement When Amazon Lex can\'t understand the user\'s input in context, it tries to elicit the information a few times. After that, Amazon Lex sends the message defined in `abortStatement` to the user, and then aborts the conversation. To set the number of retries, use the `valueElicitationPrompt` field for the slot type.
#' 
#' For example, in a pizza ordering bot, Amazon Lex might ask a user \"What type of crust would you like?\" If the user\'s response is not one of the expected responses (for example, \"thin crust, \"deep dish,\" etc.), Amazon Lex tries to elicit a correct response a few more times.
#' 
#' For example, in a pizza ordering application, `OrderPizza` might be one of the intents. This intent might require the `CrustType` slot. You specify the `valueElicitationPrompt` field when you create the `CrustType` slot.
#' @param idleSessionTTLInSeconds The maximum time in seconds that Amazon Lex retains the data gathered in a conversation.
#' 
#' A user interaction session remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Lex deletes any data provided before the timeout.
#' 
#' For example, suppose that a user chooses the OrderPizza intent, but gets sidetracked halfway through placing an order. If the user doesn\'t complete the order within the specified time, Amazon Lex discards the slot information that it gathered, and the user must start over.
#' 
#' If you don\'t include the `idleSessionTTLInSeconds` element in a `PutBot` operation request, Amazon Lex uses the default value. This is also true if the request replaces an existing bot.
#' 
#' The default is 300 seconds (5 minutes).
#' @param voiceId The Amazon Polly voice ID that you want Amazon Lex to use for voice interactions with the user. The locale configured for the voice must match the locale of the bot. For more information, see [Available Voices](http://docs.aws.amazon.com/polly/latest/dg/voicelist.html) in the *Amazon Polly Developer Guide*.
#' @param checksum Identifies a specific revision of the `$LATEST` version.
#' 
#' When you create a new bot, leave the `checksum` field blank. If you specify a checksum you get a `BadRequestException` exception.
#' 
#' When you want to update a bot, set the `checksum` field to the checksum of the most recent revision of the `$LATEST` version. If you don\'t specify the ` checksum` field, or if the checksum does not match the `$LATEST` version, you get a `PreconditionFailedException` exception.
#' @param processBehavior If you set the `processBehavior` element to `BUILD`, Amazon Lex builds the bot so that it can be run. If you set the element to `SAVE` Amazon Lex saves the bot, but doesn\'t build it.
#' 
#' If you don\'t specify this value, the default value is `BUILD`.
#' @param createVersion 
#'
#' @examples
#' # This example shows how to create a bot for ordering pizzas.
#' put_bot(
#'   name = "DocOrderPizzaBot",
#'   abortStatement = list(
#'     messages = list(
#'       list(
#'         content = "I don't understand. Can you try again?",
#'         contentType = "PlainText"
#'       ),
#'       list(
#'         content = "I'm sorry, I don't understand.",
#'         contentType = "PlainText"
#'       )
#'     )
#'   ),
#'   childDirected = TRUE,
#'   clarificationPrompt = list(
#'     maxAttempts = 1L,
#'     messages = list(
#'       list(
#'         content = "I'm sorry, I didn't hear that. Can you repeate what you just said?",
#'         contentType = "PlainText"
#'       ),
#'       list(
#'         content = "Can you say that again?",
#'         contentType = "PlainText"
#'       )
#'     )
#'   ),
#'   description = "Orders a pizza from a local pizzeria.",
#'   idleSessionTTLInSeconds = 300L,
#'   intents = list(
#'     list(
#'       intentName = "DocOrderPizza",
#'       intentVersion = "$LATEST"
#'     )
#'   ),
#'   locale = "en-US",
#'   processBehavior = "SAVE"
#' )
#'
#' @export
put_bot <- function (name, locale, childDirected, description = NULL, 
    intents = NULL, clarificationPrompt = NULL, abortStatement = NULL, 
    idleSessionTTLInSeconds = NULL, voiceId = NULL, checksum = NULL, 
    processBehavior = NULL, createVersion = NULL) 
{
    op <- Operation(name = "PutBot", http_method = "PUT", http_path = "/bots/{name}/versions/$LATEST", 
        paginator = list())
    input <- put_bot_input(name = name, locale = locale, childDirected = childDirected, 
        description = description, intents = intents, clarificationPrompt = clarificationPrompt, 
        abortStatement = abortStatement, idleSessionTTLInSeconds = idleSessionTTLInSeconds, 
        voiceId = voiceId, checksum = checksum, processBehavior = processBehavior, 
        createVersion = createVersion)
    output <- put_bot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an alias for the specified version of the bot or replaces an alias for the specified bot
#'
#' Creates an alias for the specified version of the bot or replaces an alias for the specified bot. To change the version of the bot that the alias points to, replace the alias. For more information about aliases, see versioning-aliases.
#' 
#' This operation requires permissions for the `lex:PutBotAlias` action.
#'
#' @param name The name of the alias. The name is *not* case sensitive.
#' @param botVersion The version of the bot.
#' @param botName The name of the bot.
#' @param description A description of the alias.
#' @param checksum Identifies a specific revision of the `$LATEST` version.
#' 
#' When you create a new bot alias, leave the `checksum` field blank. If you specify a checksum you get a `BadRequestException` exception.
#' 
#' When you want to update a bot alias, set the `checksum` field to the checksum of the most recent revision of the `$LATEST` version. If you don\'t specify the ` checksum` field, or if the checksum does not match the `$LATEST` version, you get a `PreconditionFailedException` exception.
#'
#' @examples
#'
#' @export
put_bot_alias <- function (name, botVersion, botName, description = NULL, 
    checksum = NULL) 
{
    op <- Operation(name = "PutBotAlias", http_method = "PUT", 
        http_path = "/bots/{botName}/aliases/{name}", paginator = list())
    input <- put_bot_alias_input(name = name, botVersion = botVersion, 
        botName = botName, description = description, checksum = checksum)
    output <- put_bot_alias_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an intent or replaces an existing intent
#'
#' Creates an intent or replaces an existing intent.
#' 
#' To define the interaction between the user and your bot, you use one or more intents. For a pizza ordering bot, for example, you would create an `OrderPizza` intent.
#' 
#' To create an intent or replace an existing intent, you must provide the following:
#' 
#' -   Intent name. For example, `OrderPizza`.
#' 
#' -   Sample utterances. For example, \"Can I order a pizza, please.\" and \"I want to order a pizza.\"
#' 
#' -   Information to be gathered. You specify slot types for the information that your bot will request from the user. You can specify standard slot types, such as a date or a time, or custom slot types such as the size and crust of a pizza.
#' 
#' -   How the intent will be fulfilled. You can provide a Lambda function or configure the intent to return the intent information to the client application. If you use a Lambda function, when all of the intent information is available, Amazon Lex invokes your Lambda function. If you configure your intent to return the intent information to the client application.
#' 
#' You can specify other optional information in the request, such as:
#' 
#' -   A confirmation prompt to ask the user to confirm an intent. For example, \"Shall I order your pizza?\"
#' 
#' -   A conclusion statement to send to the user after the intent has been fulfilled. For example, \"I placed your pizza order.\"
#' 
#' -   A follow-up prompt that asks the user for additional activity. For example, asking \"Do you want to order a drink with your pizza?\"
#' 
#' If you specify an existing intent name to update the intent, Amazon Lex replaces the values in the `$LATEST` version of the intent with the values in the request. Amazon Lex removes fields that you don\'t provide in the request. If you don\'t specify the required fields, Amazon Lex throws an exception. When you update the `$LATEST` version of an intent, the `status` field of any bot that uses the `$LATEST` version of the intent is set to `NOT_BUILT`.
#' 
#' For more information, see how-it-works.
#' 
#' This operation requires permissions for the `lex:PutIntent` action.
#'
#' @param name The name of the intent. The name is *not* case sensitive.
#' 
#' The name can\'t match a built-in intent name, or a built-in intent name with \"AMAZON.\" removed. For example, because there is a built-in intent called `AMAZON.HelpIntent`, you can\'t create a custom intent called `HelpIntent`.
#' 
#' For a list of built-in intents, see [Standard Built-in Intents](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents) in the *Alexa Skills Kit*.
#' @param description A description of the intent.
#' @param slots An array of intent slots. At runtime, Amazon Lex elicits required slot values from the user using prompts defined in the slots. For more information, see how-it-works.
#' @param sampleUtterances An array of utterances (strings) that a user might say to signal the intent. For example, \"I want {PizzaSize} pizza\", \"Order {Quantity} {PizzaSize} pizzas\".
#' 
#' In each utterance, a slot name is enclosed in curly braces.
#' @param confirmationPrompt Prompts the user to confirm the intent. This question should have a yes or no answer.
#' 
#' Amazon Lex uses this prompt to ensure that the user acknowledges that the intent is ready for fulfillment. For example, with the `OrderPizza` intent, you might want to confirm that the order is correct before placing it. For other intents, such as intents that simply respond to user questions, you might not need to ask the user for confirmation before providing the information.
#' 
#' You you must provide both the `rejectionStatement` and the `confirmationPrompt`, or neither.
#' @param rejectionStatement When the user answers \"no\" to the question defined in `confirmationPrompt`, Amazon Lex responds with this statement to acknowledge that the intent was canceled.
#' 
#' You must provide both the `rejectionStatement` and the `confirmationPrompt`, or neither.
#' @param followUpPrompt Amazon Lex uses this prompt to solicit additional activity after fulfilling an intent. For example, after the `OrderPizza` intent is fulfilled, you might prompt the user to order a drink.
#' 
#' The action that Amazon Lex takes depends on the user\'s response, as follows:
#' 
#' -   If the user says \"Yes\" it responds with the clarification prompt that is configured for the bot.
#' 
#' -   if the user says \"Yes\" and continues with an utterance that triggers an intent it starts a conversation for the intent.
#' 
#' -   If the user says \"No\" it responds with the rejection statement configured for the the follow-up prompt.
#' 
#' -   If it doesn\'t recognize the utterance it repeats the follow-up prompt again.
#' 
#' The `followUpPrompt` field and the `conclusionStatement` field are mutually exclusive. You can specify only one.
#' @param conclusionStatement The statement that you want Amazon Lex to convey to the user after the intent is successfully fulfilled by the Lambda function.
#' 
#' This element is relevant only if you provide a Lambda function in the `fulfillmentActivity`. If you return the intent to the client application, you can\'t specify this element.
#' 
#' The `followUpPrompt` and `conclusionStatement` are mutually exclusive. You can specify only one.
#' @param dialogCodeHook Specifies a Lambda function to invoke for each user input. You can invoke this Lambda function to personalize user interaction.
#' 
#' For example, suppose your bot determines that the user is John. Your Lambda function might retrieve John\'s information from a backend database and prepopulate some of the values. For example, if you find that John is gluten intolerant, you might set the corresponding intent slot, `GlutenIntolerant`, to true. You might find John\'s phone number and set the corresponding session attribute.
#' @param fulfillmentActivity Required. Describes how the intent is fulfilled. For example, after a user provides all of the information for a pizza order, `fulfillmentActivity` defines how the bot places an order with a local pizza store.
#' 
#' You might configure Amazon Lex to return all of the intent information to the client application, or direct it to invoke a Lambda function that can process the intent (for example, place an order with a pizzeria).
#' @param parentIntentSignature A unique identifier for the built-in intent to base this intent on. To find the signature for an intent, see [Standard Built-in Intents](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents) in the *Alexa Skills Kit*.
#' @param checksum Identifies a specific revision of the `$LATEST` version.
#' 
#' When you create a new intent, leave the `checksum` field blank. If you specify a checksum you get a `BadRequestException` exception.
#' 
#' When you want to update a intent, set the `checksum` field to the checksum of the most recent revision of the `$LATEST` version. If you don\'t specify the ` checksum` field, or if the checksum does not match the `$LATEST` version, you get a `PreconditionFailedException` exception.
#' @param createVersion 
#'
#' @examples
#' # This example shows how to create an intent for ordering pizzas.
#' put_intent(
#'   name = "DocOrderPizza",
#'   conclusionStatement = list(
#'     messages = list(
#'       list(
#'         content = "All right, I ordered  you a {Crust} crust {Type} pizza with {Sauce} sauce.",
#'         contentType = "PlainText"
#'       ),
#'       list(
#'         content = "OK, your {Crust} crust {Type} pizza with {Sauce} sauce is on the way.",
#'         contentType = "PlainText"
#'       )
#'     ),
#'     responseCard = "foo"
#'   ),
#'   confirmationPrompt = list(
#'     maxAttempts = 1L,
#'     messages = list(
#'       list(
#'         content = "Should I order  your {Crust} crust {Type} pizza with {Sauce} sauce?",
#'         contentType = "PlainText"
#'       )
#'     )
#'   ),
#'   description = "Order a pizza from a local pizzeria.",
#'   fulfillmentActivity = list(
#'     type = "ReturnIntent"
#'   ),
#'   rejectionStatement = list(
#'     messages = list(
#'       list(
#'         content = "Ok, I'll cancel your order.",
#'         contentType = "PlainText"
#'       ),
#'       list(
#'         content = "I cancelled your order.",
#'         contentType = "PlainText"
#'       )
#'     )
#'   ),
#'   sampleUtterances = list(
#'     "Order me a pizza.",
#'     "Order me a {Type} pizza.",
#'     "I want a {Crust} crust {Type} pizza",
#'     "I want a {Crust} crust {Type} pizza with {Sauce} sauce."
#'   ),
#'   slots = list(
#'     list(
#'       name = "Type",
#'       description = "The type of pizza to order.",
#'       priority = 1L,
#'       sampleUtterances = list(
#'         "Get me a {Type} pizza.",
#'         "A {Type} pizza please.",
#'         "I'd like a {Type} pizza."
#'       ),
#'       slotConstraint = "Required",
#'       slotType = "DocPizzaType",
#'       slotTypeVersion = "$LATEST",
#'       valueElicitationPrompt = list(
#'         maxAttempts = 1L,
#'         messages = list(
#'           list(
#'             content = "What type of pizza would you like?",
#'             contentType = "PlainText"
#'           ),
#'           list(
#'             content = "Vegie or cheese pizza?",
#'             contentType = "PlainText"
#'           ),
#'           list(
#'             content = "I can get you a vegie or a cheese pizza.",
#'             contentType = "PlainText"
#'           )
#'         )
#'       )
#'     ),
#'     list(
#'       name = "Crust",
#'       description = "The type of pizza crust to order.",
#'       priority = 2L,
#'       sampleUtterances = list(
#'         "Make it a {Crust} crust.",
#'         "I'd like a {Crust} crust."
#'       ),
#'       slotConstraint = "Required",
#'       slotType = "DocPizzaCrustType",
#'       slotTypeVersion = "$LATEST",
#'       valueElicitationPrompt = list(
#'         maxAttempts = 1L,
#'         messages = list(
#'           list(
#'             content = "What type of crust would you like?",
#'             contentType = "PlainText"
#'           ),
#'           list(
#'             content = "Thick or thin crust?",
#'             contentType = "PlainText"
#'           )
#'         )
#'       )
#'     ),
#'     list(
#'       name = "Sauce",
#'       description = "The type of sauce to use on the pizza.",
#'       priority = 3L,
#'       sampleUtterances = list(
#'         "Make it {Sauce} sauce.",
#'         "I'd like {Sauce} sauce."
#'       ),
#'       slotConstraint = "Required",
#'       slotType = "DocPizzaSauceType",
#'       slotTypeVersion = "$LATEST",
#'       valueElicitationPrompt = list(
#'         maxAttempts = 1L,
#'         messages = list(
#'           list(
#'             content = "White or red sauce?",
#'             contentType = "PlainText"
#'           ),
#'           list(
#'             content = "Garlic or tomato sauce?",
#'             contentType = "PlainText"
#'           )
#'         )
#'       )
#'     )
#'   )
#' )
#'
#' @export
put_intent <- function (name, description = NULL, slots = NULL, 
    sampleUtterances = NULL, confirmationPrompt = NULL, rejectionStatement = NULL, 
    followUpPrompt = NULL, conclusionStatement = NULL, dialogCodeHook = NULL, 
    fulfillmentActivity = NULL, parentIntentSignature = NULL, 
    checksum = NULL, createVersion = NULL) 
{
    op <- Operation(name = "PutIntent", http_method = "PUT", 
        http_path = "/intents/{name}/versions/$LATEST", paginator = list())
    input <- put_intent_input(name = name, description = description, 
        slots = slots, sampleUtterances = sampleUtterances, confirmationPrompt = confirmationPrompt, 
        rejectionStatement = rejectionStatement, followUpPrompt = followUpPrompt, 
        conclusionStatement = conclusionStatement, dialogCodeHook = dialogCodeHook, 
        fulfillmentActivity = fulfillmentActivity, parentIntentSignature = parentIntentSignature, 
        checksum = checksum, createVersion = createVersion)
    output <- put_intent_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a custom slot type or replaces an existing custom slot type
#'
#' Creates a custom slot type or replaces an existing custom slot type.
#' 
#' To create a custom slot type, specify a name for the slot type and a set of enumeration values, which are the values that a slot of this type can assume. For more information, see how-it-works.
#' 
#' If you specify the name of an existing slot type, the fields in the request replace the existing values in the `$LATEST` version of the slot type. Amazon Lex removes the fields that you don\'t provide in the request. If you don\'t specify required fields, Amazon Lex throws an exception. When you update the `$LATEST` version of a slot type, if a bot uses the `$LATEST` version of an intent that contains the slot type, the bot\'s `status` field is set to `NOT_BUILT`.
#' 
#' This operation requires permissions for the `lex:PutSlotType` action.
#'
#' @param name The name of the slot type. The name is *not* case sensitive.
#' 
#' The name can\'t match a built-in slot type name, or a built-in slot type name with \"AMAZON.\" removed. For example, because there is a built-in slot type called `AMAZON.DATE`, you can\'t create a custom slot type called `DATE`.
#' 
#' For a list of built-in slot types, see [Slot Type Reference](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference) in the *Alexa Skills Kit*.
#' @param description A description of the slot type.
#' @param enumerationValues A list of `EnumerationValue` objects that defines the values that the slot type can take. Each value can have a list of `synonyms`, which are additional values that help train the machine learning model about the values that it resolves for a slot.
#' 
#' When Amazon Lex resolves a slot value, it generates a resolution list that contains up to five possible values for the slot. If you are using a Lambda function, this resolution list is passed to the function. If you are not using a Lambda function you can choose to return the value that the user entered or the first value in the resolution list as the slot value. The `valueSelectionStrategy` field indicates the option to use.
#' @param checksum Identifies a specific revision of the `$LATEST` version.
#' 
#' When you create a new slot type, leave the `checksum` field blank. If you specify a checksum you get a `BadRequestException` exception.
#' 
#' When you want to update a slot type, set the `checksum` field to the checksum of the most recent revision of the `$LATEST` version. If you don\'t specify the ` checksum` field, or if the checksum does not match the `$LATEST` version, you get a `PreconditionFailedException` exception.
#' @param valueSelectionStrategy Determines the slot resolution strategy that Amazon Lex uses to return slot type values. The field can be set to one of the following values:
#' 
#' -   `ORIGINAL_VALUE` - Returns the value entered by the user, if the user value is similar to the slot value.
#' 
#' -   `TOP_RESOLUTION` - If there is a resolution list for the slot, return the first value in the resolution list as the slot type value. If there is no resolution list, null is returned.
#' 
#' If you don\'t specify the `valueSelectionStrategy`, the default is `ORIGINAL_VALUE`.
#' @param createVersion 
#'
#' @examples
#' # This example shows how to create a slot type that describes pizza
#' # sauces.
#' put_slot_type(
#'   name = "PizzaSauceType",
#'   description = "Available pizza sauces",
#'   enumerationValues = list(
#'     list(
#'       value = "red"
#'     ),
#'     list(
#'       value = "white"
#'     )
#'   )
#' )
#'
#' @export
put_slot_type <- function (name, description = NULL, enumerationValues = NULL, 
    checksum = NULL, valueSelectionStrategy = NULL, createVersion = NULL) 
{
    op <- Operation(name = "PutSlotType", http_method = "PUT", 
        http_path = "/slottypes/{name}/versions/$LATEST", paginator = list())
    input <- put_slot_type_input(name = name, description = description, 
        enumerationValues = enumerationValues, checksum = checksum, 
        valueSelectionStrategy = valueSelectionStrategy, createVersion = createVersion)
    output <- put_slot_type_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts a job to import a resource to Amazon Lex
#'
#' Starts a job to import a resource to Amazon Lex.
#'
#' @param payload A zip archive in binary format. The archive should contain one file, a JSON file containing the resource to import. The resource should match the type specified in the `resourceType` field.
#' @param resourceType Specifies the type of resource to export. Each resource also exports any resources that it depends on.
#' 
#' -   A bot exports dependent intents.
#' 
#' -   An intent exports dependent slot types.
#' @param mergeStrategy Specifies the action that the `StartImport` operation should take when there is an existing resource with the same name.
#' 
#' -   FAIL\_ON\_CONFLICT - The import operation is stopped on the first conflict between a resource in the import file and an existing resource. The name of the resource causing the conflict is in the `failureReason` field of the response to the `GetImport` operation.
#' 
#'     OVERWRITE\_LATEST - The import operation proceeds even if there is a conflict with an existing resource. The \$LASTEST version of the existing resource is overwritten with the data from the import file.
#'
#' @examples
#'
#' @export
start_import <- function (payload, resourceType, mergeStrategy) 
{
    op <- Operation(name = "StartImport", http_method = "POST", 
        http_path = "/imports/", paginator = list())
    input <- start_import_input(payload = payload, resourceType = resourceType, 
        mergeStrategy = mergeStrategy)
    output <- start_import_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
