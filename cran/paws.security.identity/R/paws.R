#' Amazon CloudDirectory
#'
#' @description
#' Amazon Cloud Directory
#' 
#' Amazon Cloud Directory is a component of the AWS Directory Service that
#' simplifies the development and management of cloud-scale web, mobile,
#' and IoT applications. This guide describes the Cloud Directory
#' operations that you can call programmatically and includes detailed
#' information on data types and errors. For information about Cloud
#' Directory features, see [AWS Directory
#' Service](https://aws.amazon.com/directoryservice/) and the [Amazon Cloud
#' Directory Developer
#' Guide](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/what_is_cloud_directory.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- clouddirectory(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- clouddirectory()
#' svc$add_facet_to_object(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p1:clouddirectory_add_facet_to_object]{add_facet_to_object} \tab Adds a new Facet to an object\cr
#'  \link[paws.security.identity.p1:clouddirectory_apply_schema]{apply_schema} \tab Copies the input published schema, at the specified version, into the Directory with the same name and version as that of the published schema\cr
#'  \link[paws.security.identity.p1:clouddirectory_attach_object]{attach_object} \tab Attaches an existing object to another object\cr
#'  \link[paws.security.identity.p1:clouddirectory_attach_policy]{attach_policy} \tab Attaches a policy object to a regular object\cr
#'  \link[paws.security.identity.p1:clouddirectory_attach_to_index]{attach_to_index} \tab Attaches the specified object to the specified index\cr
#'  \link[paws.security.identity.p1:clouddirectory_attach_typed_link]{attach_typed_link} \tab Attaches a typed link to a specified source and target object\cr
#'  \link[paws.security.identity.p1:clouddirectory_batch_read]{batch_read} \tab Performs all the read operations in a batch\cr
#'  \link[paws.security.identity.p1:clouddirectory_batch_write]{batch_write} \tab Performs all the write operations in a batch\cr
#'  \link[paws.security.identity.p1:clouddirectory_create_directory]{create_directory} \tab Creates a Directory by copying the published schema into the directory\cr
#'  \link[paws.security.identity.p1:clouddirectory_create_facet]{create_facet} \tab Creates a new Facet in a schema\cr
#'  \link[paws.security.identity.p1:clouddirectory_create_index]{create_index} \tab Creates an index object\cr
#'  \link[paws.security.identity.p1:clouddirectory_create_object]{create_object} \tab Creates an object in a Directory\cr
#'  \link[paws.security.identity.p1:clouddirectory_create_schema]{create_schema} \tab Creates a new schema in a development state\cr
#'  \link[paws.security.identity.p1:clouddirectory_create_typed_link_facet]{create_typed_link_facet} \tab Creates a TypedLinkFacet\cr
#'  \link[paws.security.identity.p1:clouddirectory_delete_directory]{delete_directory} \tab Deletes a directory\cr
#'  \link[paws.security.identity.p1:clouddirectory_delete_facet]{delete_facet} \tab Deletes a given Facet\cr
#'  \link[paws.security.identity.p1:clouddirectory_delete_object]{delete_object} \tab Deletes an object and its associated attributes\cr
#'  \link[paws.security.identity.p1:clouddirectory_delete_schema]{delete_schema} \tab Deletes a given schema\cr
#'  \link[paws.security.identity.p1:clouddirectory_delete_typed_link_facet]{delete_typed_link_facet} \tab Deletes a TypedLinkFacet\cr
#'  \link[paws.security.identity.p1:clouddirectory_detach_from_index]{detach_from_index} \tab Detaches the specified object from the specified index\cr
#'  \link[paws.security.identity.p1:clouddirectory_detach_object]{detach_object} \tab Detaches a given object from the parent object\cr
#'  \link[paws.security.identity.p1:clouddirectory_detach_policy]{detach_policy} \tab Detaches a policy from an object\cr
#'  \link[paws.security.identity.p1:clouddirectory_detach_typed_link]{detach_typed_link} \tab Detaches a typed link from a specified source and target object\cr
#'  \link[paws.security.identity.p1:clouddirectory_disable_directory]{disable_directory} \tab Disables the specified directory\cr
#'  \link[paws.security.identity.p1:clouddirectory_enable_directory]{enable_directory} \tab Enables the specified directory\cr
#'  \link[paws.security.identity.p1:clouddirectory_get_applied_schema_version]{get_applied_schema_version} \tab Returns current applied schema version ARN, including the minor version in use\cr
#'  \link[paws.security.identity.p1:clouddirectory_get_directory]{get_directory} \tab Retrieves metadata about a directory\cr
#'  \link[paws.security.identity.p1:clouddirectory_get_facet]{get_facet} \tab Gets details of the Facet, such as facet name, attributes, Rules, or ObjectType\cr
#'  \link[paws.security.identity.p1:clouddirectory_get_link_attributes]{get_link_attributes} \tab Retrieves attributes that are associated with a typed link\cr
#'  \link[paws.security.identity.p1:clouddirectory_get_object_attributes]{get_object_attributes} \tab Retrieves attributes within a facet that are associated with an object\cr
#'  \link[paws.security.identity.p1:clouddirectory_get_object_information]{get_object_information} \tab Retrieves metadata about an object\cr
#'  \link[paws.security.identity.p1:clouddirectory_get_schema_as_json]{get_schema_as_json} \tab Retrieves a JSON representation of the schema\cr
#'  \link[paws.security.identity.p1:clouddirectory_get_typed_link_facet_information]{get_typed_link_facet_information} \tab Returns the identity attribute order for a specific TypedLinkFacet\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_applied_schema_arns]{list_applied_schema_arns} \tab Lists schema major versions applied to a directory\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_attached_indices]{list_attached_indices} \tab Lists indices attached to the specified object\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_development_schema_arns]{list_development_schema_arns} \tab Retrieves each Amazon Resource Name (ARN) of schemas in the development state\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_directories]{list_directories} \tab Lists directories created within an account\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_facet_attributes]{list_facet_attributes} \tab Retrieves attributes attached to the facet\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_facet_names]{list_facet_names} \tab Retrieves the names of facets that exist in a schema\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_incoming_typed_links]{list_incoming_typed_links} \tab Returns a paginated list of all the incoming TypedLinkSpecifier information for an object\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_index]{list_index} \tab Lists objects attached to the specified index\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_managed_schema_arns]{list_managed_schema_arns} \tab Lists the major version families of each managed schema\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_object_attributes]{list_object_attributes} \tab Lists all attributes that are associated with an object\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_object_children]{list_object_children} \tab Returns a paginated list of child objects that are associated with a given object\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_object_parent_paths]{list_object_parent_paths} \tab Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_object_parents]{list_object_parents} \tab Lists parent objects that are associated with a given object in pagination fashion\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_object_policies]{list_object_policies} \tab Returns policies attached to an object in pagination fashion\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_outgoing_typed_links]{list_outgoing_typed_links} \tab Returns a paginated list of all the outgoing TypedLinkSpecifier information for an object\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_policy_attachments]{list_policy_attachments} \tab Returns all of the ObjectIdentifiers to which a given policy is attached\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_published_schema_arns]{list_published_schema_arns} \tab Lists the major version families of each published schema\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_tags_for_resource]{list_tags_for_resource} \tab Returns tags for a resource\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_typed_link_facet_attributes]{list_typed_link_facet_attributes} \tab Returns a paginated list of all attribute definitions for a particular TypedLinkFacet\cr
#'  \link[paws.security.identity.p1:clouddirectory_list_typed_link_facet_names]{list_typed_link_facet_names} \tab Returns a paginated list of TypedLink facet names for a particular schema\cr
#'  \link[paws.security.identity.p1:clouddirectory_lookup_policy]{lookup_policy} \tab Lists all policies from the root of the Directory to the object specified\cr
#'  \link[paws.security.identity.p1:clouddirectory_publish_schema]{publish_schema} \tab Publishes a development schema with a major version and a recommended minor version\cr
#'  \link[paws.security.identity.p1:clouddirectory_put_schema_from_json]{put_schema_from_json} \tab Allows a schema to be updated using JSON upload\cr
#'  \link[paws.security.identity.p1:clouddirectory_remove_facet_from_object]{remove_facet_from_object} \tab Removes the specified facet from the specified object\cr
#'  \link[paws.security.identity.p1:clouddirectory_tag_resource]{tag_resource} \tab An API operation for adding tags to a resource\cr
#'  \link[paws.security.identity.p1:clouddirectory_untag_resource]{untag_resource} \tab An API operation for removing tags from a resource\cr
#'  \link[paws.security.identity.p1:clouddirectory_update_facet]{update_facet} \tab Does the following:\cr
#'  \link[paws.security.identity.p1:clouddirectory_update_link_attributes]{update_link_attributes} \tab Updates a given typed link’s attributes\cr
#'  \link[paws.security.identity.p1:clouddirectory_update_object_attributes]{update_object_attributes} \tab Updates a given object's attributes\cr
#'  \link[paws.security.identity.p1:clouddirectory_update_schema]{update_schema} \tab Updates the schema name with a new name\cr
#'  \link[paws.security.identity.p1:clouddirectory_update_typed_link_facet]{update_typed_link_facet} \tab Updates a TypedLinkFacet\cr
#'  \link[paws.security.identity.p1:clouddirectory_upgrade_applied_schema]{upgrade_applied_schema} \tab Upgrades a single directory in-place using the PublishedSchemaArn with schema updates found in MinorVersion\cr
#'  \link[paws.security.identity.p1:clouddirectory_upgrade_published_schema]{upgrade_published_schema} \tab Upgrades a published schema under a new minor version revision using the current contents of DevelopmentSchemaArn
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname clouddirectory
#' @export
clouddirectory <- function(config = list()) {
  paws.security.identity.p1::clouddirectory(config)
}

#' Amazon Cognito Identity Provider
#'
#' @description
#' Using the Amazon Cognito user pools API, you can create a user pool to
#' manage directories and users. You can authenticate a user to obtain
#' tokens related to user identity and access policies.
#' 
#' This API reference provides information about user pools in Amazon
#' Cognito user pools.
#' 
#' For more information, see the [Amazon Cognito
#' Documentation](https://docs.aws.amazon.com/cognito/latest/developerguide/what-is-amazon-cognito.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- cognitoidentityprovider(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- cognitoidentityprovider()
#' svc$add_custom_attributes(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p1:cognitoidentityprovider_add_custom_attributes]{add_custom_attributes} \tab Adds additional user attributes to the user pool schema\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_add_user_to_group]{admin_add_user_to_group} \tab Adds the specified user to the specified group\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_confirm_sign_up]{admin_confirm_sign_up} \tab Confirms user registration as an admin without using a confirmation code\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_create_user]{admin_create_user} \tab Creates a new user in the specified user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_delete_user]{admin_delete_user} \tab Deletes a user as an administrator\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_delete_user_attributes]{admin_delete_user_attributes} \tab Deletes the user attributes in a user pool as an administrator\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_disable_provider_for_user]{admin_disable_provider_for_user} \tab Prevents the user from signing in with the specified external (SAML or social) identity provider (IdP)\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_disable_user]{admin_disable_user} \tab Disables the specified user\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_enable_user]{admin_enable_user} \tab Enables the specified user as an administrator\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_forget_device]{admin_forget_device} \tab Forgets the device, as an administrator\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_get_device]{admin_get_device} \tab Gets the device, as an administrator\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_get_user]{admin_get_user} \tab Gets the specified user by user name in a user pool as an administrator\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_initiate_auth]{admin_initiate_auth} \tab Initiates the authentication flow, as an administrator\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_link_provider_for_user]{admin_link_provider_for_user} \tab Links an existing user account in a user pool (DestinationUser) to an identity from an external IdP (SourceUser) based on a specified attribute name and value from the external IdP\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_list_devices]{admin_list_devices} \tab Lists devices, as an administrator\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_list_groups_for_user]{admin_list_groups_for_user} \tab Lists the groups that the user belongs to\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_list_user_auth_events]{admin_list_user_auth_events} \tab A history of user activity and any risks detected as part of Amazon Cognito advanced security\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_remove_user_from_group]{admin_remove_user_from_group} \tab Removes the specified user from the specified group\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_reset_user_password]{admin_reset_user_password} \tab Resets the specified user's password in a user pool as an administrator\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_respond_to_auth_challenge]{admin_respond_to_auth_challenge} \tab Responds to an authentication challenge, as an administrator\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_set_user_mfa_preference]{admin_set_user_mfa_preference} \tab The user's multi-factor authentication (MFA) preference, including which MFA options are activated, and if any are preferred\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_set_user_password]{admin_set_user_password} \tab Sets the specified user's password in a user pool as an administrator\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_set_user_settings]{admin_set_user_settings} \tab This action is no longer supported\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_update_auth_event_feedback]{admin_update_auth_event_feedback} \tab Provides feedback for an authentication event indicating if it was from a valid user\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_update_device_status]{admin_update_device_status} \tab Updates the device status as an administrator\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_update_user_attributes]{admin_update_user_attributes} \tab Updates the specified user's attributes, including developer attributes, as an administrator\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_admin_user_global_sign_out]{admin_user_global_sign_out} \tab Signs out a user from all devices\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_associate_software_token]{associate_software_token} \tab Begins setup of time-based one-time password (TOTP) multi-factor authentication (MFA) for a user, with a unique private key that Amazon Cognito generates and returns in the API response\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_change_password]{change_password} \tab Changes the password for a specified user in a user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_confirm_device]{confirm_device} \tab Confirms tracking of the device\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_confirm_forgot_password]{confirm_forgot_password} \tab Allows a user to enter a confirmation code to reset a forgotten password\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_confirm_sign_up]{confirm_sign_up} \tab Confirms registration of a new user\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_create_group]{create_group} \tab Creates a new group in the specified user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_create_identity_provider]{create_identity_provider} \tab Creates an IdP for a user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_create_resource_server]{create_resource_server} \tab Creates a new OAuth2\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_create_user_import_job]{create_user_import_job} \tab Creates the user import job\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_create_user_pool]{create_user_pool} \tab Creates a new Amazon Cognito user pool and sets the password policy for the pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_create_user_pool_client]{create_user_pool_client} \tab Creates the user pool client\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_create_user_pool_domain]{create_user_pool_domain} \tab Creates a new domain for a user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_delete_group]{delete_group} \tab Deletes a group\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_delete_identity_provider]{delete_identity_provider} \tab Deletes an IdP for a user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_delete_resource_server]{delete_resource_server} \tab Deletes a resource server\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_delete_user]{delete_user} \tab Allows a user to delete himself or herself\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_delete_user_attributes]{delete_user_attributes} \tab Deletes the attributes for a user\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_delete_user_pool]{delete_user_pool} \tab Deletes the specified Amazon Cognito user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_delete_user_pool_client]{delete_user_pool_client} \tab Allows the developer to delete the user pool client\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_delete_user_pool_domain]{delete_user_pool_domain} \tab Deletes a domain for a user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_describe_identity_provider]{describe_identity_provider} \tab Gets information about a specific IdP\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_describe_resource_server]{describe_resource_server} \tab Describes a resource server\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_describe_risk_configuration]{describe_risk_configuration} \tab Describes the risk configuration\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_describe_user_import_job]{describe_user_import_job} \tab Describes the user import job\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_describe_user_pool]{describe_user_pool} \tab Returns the configuration information and metadata of the specified user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_describe_user_pool_client]{describe_user_pool_client} \tab Client method for returning the configuration information and metadata of the specified user pool app client\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_describe_user_pool_domain]{describe_user_pool_domain} \tab Gets information about a domain\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_forget_device]{forget_device} \tab Forgets the specified device\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_forgot_password]{forgot_password} \tab Calling this API causes a message to be sent to the end user with a confirmation code that is required to change the user's password\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_get_csv_header]{get_csv_header} \tab Gets the header information for the comma-separated value (CSV) file to be used as input for the user import job\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_get_device]{get_device} \tab Gets the device\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_get_group]{get_group} \tab Gets a group\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_get_identity_provider_by_identifier]{get_identity_provider_by_identifier} \tab Gets the specified IdP\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_get_signing_certificate]{get_signing_certificate} \tab This method takes a user pool ID, and returns the signing certificate\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_get_ui_customization]{get_ui_customization} \tab Gets the user interface (UI) Customization information for a particular app client's app UI, if any such information exists for the client\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_get_user]{get_user} \tab Gets the user attributes and metadata for a user\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_get_user_attribute_verification_code]{get_user_attribute_verification_code} \tab Generates a user attribute verification code for the specified attribute name\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_get_user_pool_mfa_config]{get_user_pool_mfa_config} \tab Gets the user pool multi-factor authentication (MFA) configuration\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_global_sign_out]{global_sign_out} \tab Signs out users from all devices\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_initiate_auth]{initiate_auth} \tab Initiates sign-in for a user in the Amazon Cognito user directory\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_list_devices]{list_devices} \tab Lists the sign-in devices that Amazon Cognito has registered to the current user\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_list_groups]{list_groups} \tab Lists the groups associated with a user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_list_identity_providers]{list_identity_providers} \tab Lists information about all IdPs for a user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_list_resource_servers]{list_resource_servers} \tab Lists the resource servers for a user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags that are assigned to an Amazon Cognito user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_list_user_import_jobs]{list_user_import_jobs} \tab Lists the user import jobs\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_list_user_pool_clients]{list_user_pool_clients} \tab Lists the clients that have been created for the specified user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_list_user_pools]{list_user_pools} \tab Lists the user pools associated with an Amazon Web Services account\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_list_users]{list_users} \tab Lists the users in the Amazon Cognito user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_list_users_in_group]{list_users_in_group} \tab Lists the users in the specified group\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_resend_confirmation_code]{resend_confirmation_code} \tab Resends the confirmation (for confirmation of registration) to a specific user in the user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_respond_to_auth_challenge]{respond_to_auth_challenge} \tab Responds to the authentication challenge\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_revoke_token]{revoke_token} \tab Revokes all of the access tokens generated by the specified refresh token\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_set_risk_configuration]{set_risk_configuration} \tab Configures actions on detected risks\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_set_ui_customization]{set_ui_customization} \tab Sets the user interface (UI) customization information for a user pool's built-in app UI\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_set_user_mfa_preference]{set_user_mfa_preference} \tab Set the user's multi-factor authentication (MFA) method preference, including which MFA factors are activated and if any are preferred\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_set_user_pool_mfa_config]{set_user_pool_mfa_config} \tab Sets the user pool multi-factor authentication (MFA) configuration\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_set_user_settings]{set_user_settings} \tab This action is no longer supported\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_sign_up]{sign_up} \tab Registers the user in the specified user pool and creates a user name, password, and user attributes\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_start_user_import_job]{start_user_import_job} \tab Starts the user import\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_stop_user_import_job]{stop_user_import_job} \tab Stops the user import job\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_tag_resource]{tag_resource} \tab Assigns a set of tags to an Amazon Cognito user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_untag_resource]{untag_resource} \tab Removes the specified tags from an Amazon Cognito user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_update_auth_event_feedback]{update_auth_event_feedback} \tab Provides the feedback for an authentication event, whether it was from a valid user or not\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_update_device_status]{update_device_status} \tab Updates the device status\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_update_group]{update_group} \tab Updates the specified group with the specified attributes\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_update_identity_provider]{update_identity_provider} \tab Updates IdP information for a user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_update_resource_server]{update_resource_server} \tab Updates the name and scopes of resource server\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_update_user_attributes]{update_user_attributes} \tab Allows a user to update a specific attribute (one at a time)\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_update_user_pool]{update_user_pool} \tab Updates the specified user pool with the specified attributes\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_update_user_pool_client]{update_user_pool_client} \tab Updates the specified user pool app client with the specified attributes\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_update_user_pool_domain]{update_user_pool_domain} \tab Updates the Secure Sockets Layer (SSL) certificate for the custom domain for your user pool\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_verify_software_token]{verify_software_token} \tab Use this API to register a user's entered time-based one-time password (TOTP) code and mark the user's software token MFA status as "verified" if successful\cr
#'  \link[paws.security.identity.p1:cognitoidentityprovider_verify_user_attribute]{verify_user_attribute} \tab Verifies the specified user attributes in the user pool
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname cognitoidentityprovider
#' @export
cognitoidentityprovider <- function(config = list()) {
  paws.security.identity.p1::cognitoidentityprovider(config)
}

#' AWS Directory Service
#'
#' @description
#' Directory Service
#' 
#' Directory Service is a web service that makes it easy for you to setup
#' and run directories in the Amazon Web Services cloud, or connect your
#' Amazon Web Services resources with an existing self-managed Microsoft
#' Active Directory. This guide provides detailed information about
#' Directory Service operations, data types, parameters, and errors. For
#' information about Directory Services features, see [Directory
#' Service](https://aws.amazon.com/directoryservice/) and the [Directory
#' Service Administration
#' Guide](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html).
#' 
#' Amazon Web Services provides SDKs that consist of libraries and sample
#' code for various programming languages and platforms (Java, Ruby, .Net,
#' iOS, Android, etc.). The SDKs provide a convenient way to create
#' programmatic access to Directory Service and other Amazon Web Services
#' services. For more information about the Amazon Web Services SDKs,
#' including how to download and install them, see [Tools for Amazon Web
#' Services](https://aws.amazon.com/developer/tools/).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- directoryservice(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- directoryservice()
#' svc$accept_shared_directory(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p1:directoryservice_accept_shared_directory]{accept_shared_directory} \tab Accepts a directory sharing request that was sent from the directory owner account\cr
#'  \link[paws.security.identity.p1:directoryservice_add_ip_routes]{add_ip_routes} \tab If the DNS server for your self-managed domain uses a publicly addressable IP address, you must add a CIDR address block to correctly route traffic to and from your Microsoft AD on Amazon Web Services\cr
#'  \link[paws.security.identity.p1:directoryservice_add_region]{add_region} \tab Adds two domain controllers in the specified Region for the specified directory\cr
#'  \link[paws.security.identity.p1:directoryservice_add_tags_to_resource]{add_tags_to_resource} \tab Adds or overwrites one or more tags for the specified directory\cr
#'  \link[paws.security.identity.p1:directoryservice_cancel_schema_extension]{cancel_schema_extension} \tab Cancels an in-progress schema extension to a Microsoft AD directory\cr
#'  \link[paws.security.identity.p1:directoryservice_connect_directory]{connect_directory} \tab Creates an AD Connector to connect to a self-managed directory\cr
#'  \link[paws.security.identity.p1:directoryservice_create_alias]{create_alias} \tab Creates an alias for a directory and assigns the alias to the directory\cr
#'  \link[paws.security.identity.p1:directoryservice_create_computer]{create_computer} \tab Creates an Active Directory computer object in the specified directory\cr
#'  \link[paws.security.identity.p1:directoryservice_create_conditional_forwarder]{create_conditional_forwarder} \tab Creates a conditional forwarder associated with your Amazon Web Services directory\cr
#'  \link[paws.security.identity.p1:directoryservice_create_directory]{create_directory} \tab Creates a Simple AD directory\cr
#'  \link[paws.security.identity.p1:directoryservice_create_log_subscription]{create_log_subscription} \tab Creates a subscription to forward real-time Directory Service domain controller security logs to the specified Amazon CloudWatch log group in your Amazon Web Services account\cr
#'  \link[paws.security.identity.p1:directoryservice_create_microsoft_ad]{create_microsoft_ad} \tab Creates a Microsoft AD directory in the Amazon Web Services Cloud\cr
#'  \link[paws.security.identity.p1:directoryservice_create_snapshot]{create_snapshot} \tab Creates a snapshot of a Simple AD or Microsoft AD directory in the Amazon Web Services cloud\cr
#'  \link[paws.security.identity.p1:directoryservice_create_trust]{create_trust} \tab Directory Service for Microsoft Active Directory allows you to configure trust relationships\cr
#'  \link[paws.security.identity.p1:directoryservice_delete_conditional_forwarder]{delete_conditional_forwarder} \tab Deletes a conditional forwarder that has been set up for your Amazon Web Services directory\cr
#'  \link[paws.security.identity.p1:directoryservice_delete_directory]{delete_directory} \tab Deletes an Directory Service directory\cr
#'  \link[paws.security.identity.p1:directoryservice_delete_log_subscription]{delete_log_subscription} \tab Deletes the specified log subscription\cr
#'  \link[paws.security.identity.p1:directoryservice_delete_snapshot]{delete_snapshot} \tab Deletes a directory snapshot\cr
#'  \link[paws.security.identity.p1:directoryservice_delete_trust]{delete_trust} \tab Deletes an existing trust relationship between your Managed Microsoft AD directory and an external domain\cr
#'  \link[paws.security.identity.p1:directoryservice_deregister_certificate]{deregister_certificate} \tab Deletes from the system the certificate that was registered for secure LDAP or client certificate authentication\cr
#'  \link[paws.security.identity.p1:directoryservice_deregister_event_topic]{deregister_event_topic} \tab Removes the specified directory as a publisher to the specified Amazon SNS topic\cr
#'  \link[paws.security.identity.p1:directoryservice_describe_certificate]{describe_certificate} \tab Displays information about the certificate registered for secure LDAP or client certificate authentication\cr
#'  \link[paws.security.identity.p1:directoryservice_describe_client_authentication_settings]{describe_client_authentication_settings} \tab Retrieves information about the type of client authentication for the specified directory, if the type is specified\cr
#'  \link[paws.security.identity.p1:directoryservice_describe_conditional_forwarders]{describe_conditional_forwarders} \tab Obtains information about the conditional forwarders for this account\cr
#'  \link[paws.security.identity.p1:directoryservice_describe_directories]{describe_directories} \tab Obtains information about the directories that belong to this account\cr
#'  \link[paws.security.identity.p1:directoryservice_describe_domain_controllers]{describe_domain_controllers} \tab Provides information about any domain controllers in your directory\cr
#'  \link[paws.security.identity.p1:directoryservice_describe_event_topics]{describe_event_topics} \tab Obtains information about which Amazon SNS topics receive status messages from the specified directory\cr
#'  \link[paws.security.identity.p1:directoryservice_describe_ldaps_settings]{describe_ldaps_settings} \tab Describes the status of LDAP security for the specified directory\cr
#'  \link[paws.security.identity.p1:directoryservice_describe_regions]{describe_regions} \tab Provides information about the Regions that are configured for multi-Region replication\cr
#'  \link[paws.security.identity.p1:directoryservice_describe_settings]{describe_settings} \tab Retrieves information about the configurable settings for the specified directory\cr
#'  \link[paws.security.identity.p1:directoryservice_describe_shared_directories]{describe_shared_directories} \tab Returns the shared directories in your account\cr
#'  \link[paws.security.identity.p1:directoryservice_describe_snapshots]{describe_snapshots} \tab Obtains information about the directory snapshots that belong to this account\cr
#'  \link[paws.security.identity.p1:directoryservice_describe_trusts]{describe_trusts} \tab Obtains information about the trust relationships for this account\cr
#'  \link[paws.security.identity.p1:directoryservice_disable_client_authentication]{disable_client_authentication} \tab Disables alternative client authentication methods for the specified directory\cr
#'  \link[paws.security.identity.p1:directoryservice_disable_ldaps]{disable_ldaps} \tab Deactivates LDAP secure calls for the specified directory\cr
#'  \link[paws.security.identity.p1:directoryservice_disable_radius]{disable_radius} \tab Disables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory\cr
#'  \link[paws.security.identity.p1:directoryservice_disable_sso]{disable_sso} \tab Disables single-sign on for a directory\cr
#'  \link[paws.security.identity.p1:directoryservice_enable_client_authentication]{enable_client_authentication} \tab Enables alternative client authentication methods for the specified directory\cr
#'  \link[paws.security.identity.p1:directoryservice_enable_ldaps]{enable_ldaps} \tab Activates the switch for the specific directory to always use LDAP secure calls\cr
#'  \link[paws.security.identity.p1:directoryservice_enable_radius]{enable_radius} \tab Enables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory\cr
#'  \link[paws.security.identity.p1:directoryservice_enable_sso]{enable_sso} \tab Enables single sign-on for a directory\cr
#'  \link[paws.security.identity.p1:directoryservice_get_directory_limits]{get_directory_limits} \tab Obtains directory limit information for the current Region\cr
#'  \link[paws.security.identity.p1:directoryservice_get_snapshot_limits]{get_snapshot_limits} \tab Obtains the manual snapshot limits for a directory\cr
#'  \link[paws.security.identity.p1:directoryservice_list_certificates]{list_certificates} \tab For the specified directory, lists all the certificates registered for a secure LDAP or client certificate authentication\cr
#'  \link[paws.security.identity.p1:directoryservice_list_ip_routes]{list_ip_routes} \tab Lists the address blocks that you have added to a directory\cr
#'  \link[paws.security.identity.p1:directoryservice_list_log_subscriptions]{list_log_subscriptions} \tab Lists the active log subscriptions for the Amazon Web Services account\cr
#'  \link[paws.security.identity.p1:directoryservice_list_schema_extensions]{list_schema_extensions} \tab Lists all schema extensions applied to a Microsoft AD Directory\cr
#'  \link[paws.security.identity.p1:directoryservice_list_tags_for_resource]{list_tags_for_resource} \tab Lists all tags on a directory\cr
#'  \link[paws.security.identity.p1:directoryservice_register_certificate]{register_certificate} \tab Registers a certificate for a secure LDAP or client certificate authentication\cr
#'  \link[paws.security.identity.p1:directoryservice_register_event_topic]{register_event_topic} \tab Associates a directory with an Amazon SNS topic\cr
#'  \link[paws.security.identity.p1:directoryservice_reject_shared_directory]{reject_shared_directory} \tab Rejects a directory sharing request that was sent from the directory owner account\cr
#'  \link[paws.security.identity.p1:directoryservice_remove_ip_routes]{remove_ip_routes} \tab Removes IP address blocks from a directory\cr
#'  \link[paws.security.identity.p1:directoryservice_remove_region]{remove_region} \tab Stops all replication and removes the domain controllers from the specified Region\cr
#'  \link[paws.security.identity.p1:directoryservice_remove_tags_from_resource]{remove_tags_from_resource} \tab Removes tags from a directory\cr
#'  \link[paws.security.identity.p1:directoryservice_reset_user_password]{reset_user_password} \tab Resets the password for any user in your Managed Microsoft AD or Simple AD directory\cr
#'  \link[paws.security.identity.p1:directoryservice_restore_from_snapshot]{restore_from_snapshot} \tab Restores a directory using an existing directory snapshot\cr
#'  \link[paws.security.identity.p1:directoryservice_share_directory]{share_directory} \tab Shares a specified directory (DirectoryId) in your Amazon Web Services account (directory owner) with another Amazon Web Services account (directory consumer)\cr
#'  \link[paws.security.identity.p1:directoryservice_start_schema_extension]{start_schema_extension} \tab Applies a schema extension to a Microsoft AD directory\cr
#'  \link[paws.security.identity.p1:directoryservice_unshare_directory]{unshare_directory} \tab Stops the directory sharing between the directory owner and consumer accounts\cr
#'  \link[paws.security.identity.p1:directoryservice_update_conditional_forwarder]{update_conditional_forwarder} \tab Updates a conditional forwarder that has been set up for your Amazon Web Services directory\cr
#'  \link[paws.security.identity.p1:directoryservice_update_number_of_domain_controllers]{update_number_of_domain_controllers} \tab Adds or removes domain controllers to or from the directory\cr
#'  \link[paws.security.identity.p1:directoryservice_update_radius]{update_radius} \tab Updates the Remote Authentication Dial In User Service (RADIUS) server information for an AD Connector or Microsoft AD directory\cr
#'  \link[paws.security.identity.p1:directoryservice_update_settings]{update_settings} \tab Updates the configurable settings for the specified directory\cr
#'  \link[paws.security.identity.p1:directoryservice_update_trust]{update_trust} \tab Updates the trust that has been set up between your Managed Microsoft AD directory and an self-managed Active Directory\cr
#'  \link[paws.security.identity.p1:directoryservice_verify_trust]{verify_trust} \tab Directory Service for Microsoft Active Directory allows you to configure and verify trust relationships
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname directoryservice
#' @export
directoryservice <- function(config = list()) {
  paws.security.identity.p1::directoryservice(config)
}

#' Amazon GuardDuty
#'
#' @description
#' Amazon GuardDuty is a continuous security monitoring service that
#' analyzes and processes the following data sources: VPC Flow Logs, AWS
#' CloudTrail management event logs, CloudTrail S3 data event logs, EKS
#' audit logs, and DNS logs. It uses threat intelligence feeds (such as
#' lists of malicious IPs and domains) and machine learning to identify
#' unexpected, potentially unauthorized, and malicious activity within your
#' Amazon Web Services environment. This can include issues like
#' escalations of privileges, uses of exposed credentials, or communication
#' with malicious IPs, URLs, or domains. For example, GuardDuty can detect
#' compromised EC2 instances that serve malware or mine bitcoin.
#' 
#' GuardDuty also monitors Amazon Web Services account access behavior for
#' signs of compromise. Some examples of this are unauthorized
#' infrastructure deployments such as EC2 instances deployed in a Region
#' that has never been used, or unusual API calls like a password policy
#' change to reduce password strength.
#' 
#' GuardDuty informs you of the status of your Amazon Web Services
#' environment by producing security findings that you can view in the
#' GuardDuty console or through Amazon CloudWatch events. For more
#' information, see the *<span
#' href="https://docs.aws.amazon.com/guardduty/latest/ug/what-is-guardduty.html">Amazon
#' GuardDuty User Guide</span>* .
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- guardduty(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- guardduty()
#' svc$accept_administrator_invitation(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p1:guardduty_accept_administrator_invitation]{accept_administrator_invitation} \tab Accepts the invitation to be a member account and get monitored by a GuardDuty administrator account that sent the invitation\cr
#'  \link[paws.security.identity.p1:guardduty_accept_invitation]{accept_invitation} \tab Accepts the invitation to be monitored by a GuardDuty administrator account\cr
#'  \link[paws.security.identity.p1:guardduty_archive_findings]{archive_findings} \tab Archives GuardDuty findings that are specified by the list of finding IDs\cr
#'  \link[paws.security.identity.p1:guardduty_create_detector]{create_detector} \tab Creates a single Amazon GuardDuty detector\cr
#'  \link[paws.security.identity.p1:guardduty_create_filter]{create_filter} \tab Creates a filter using the specified finding criteria\cr
#'  \link[paws.security.identity.p1:guardduty_create_ip_set]{create_ip_set} \tab Creates a new IPSet, which is called a trusted IP list in the console user interface\cr
#'  \link[paws.security.identity.p1:guardduty_create_members]{create_members} \tab Creates member accounts of the current Amazon Web Services account by specifying a list of Amazon Web Services account IDs\cr
#'  \link[paws.security.identity.p1:guardduty_create_publishing_destination]{create_publishing_destination} \tab Creates a publishing destination to export findings to\cr
#'  \link[paws.security.identity.p1:guardduty_create_sample_findings]{create_sample_findings} \tab Generates example findings of types specified by the list of finding types\cr
#'  \link[paws.security.identity.p1:guardduty_create_threat_intel_set]{create_threat_intel_set} \tab Creates a new ThreatIntelSet\cr
#'  \link[paws.security.identity.p1:guardduty_decline_invitations]{decline_invitations} \tab Declines invitations sent to the current member account by Amazon Web Services accounts specified by their account IDs\cr
#'  \link[paws.security.identity.p1:guardduty_delete_detector]{delete_detector} \tab Deletes an Amazon GuardDuty detector that is specified by the detector ID\cr
#'  \link[paws.security.identity.p1:guardduty_delete_filter]{delete_filter} \tab Deletes the filter specified by the filter name\cr
#'  \link[paws.security.identity.p1:guardduty_delete_invitations]{delete_invitations} \tab Deletes invitations sent to the current member account by Amazon Web Services accounts specified by their account IDs\cr
#'  \link[paws.security.identity.p1:guardduty_delete_ip_set]{delete_ip_set} \tab Deletes the IPSet specified by the ipSetId\cr
#'  \link[paws.security.identity.p1:guardduty_delete_members]{delete_members} \tab Deletes GuardDuty member accounts (to the current GuardDuty administrator account) specified by the account IDs\cr
#'  \link[paws.security.identity.p1:guardduty_delete_publishing_destination]{delete_publishing_destination} \tab Deletes the publishing definition with the specified destinationId\cr
#'  \link[paws.security.identity.p1:guardduty_delete_threat_intel_set]{delete_threat_intel_set} \tab Deletes the ThreatIntelSet specified by the ThreatIntelSet ID\cr
#'  \link[paws.security.identity.p1:guardduty_describe_malware_scans]{describe_malware_scans} \tab Returns a list of malware scans\cr
#'  \link[paws.security.identity.p1:guardduty_describe_organization_configuration]{describe_organization_configuration} \tab Returns information about the account selected as the delegated administrator for GuardDuty\cr
#'  \link[paws.security.identity.p1:guardduty_describe_publishing_destination]{describe_publishing_destination} \tab Returns information about the publishing destination specified by the provided destinationId\cr
#'  \link[paws.security.identity.p1:guardduty_disable_organization_admin_account]{disable_organization_admin_account} \tab Disables an Amazon Web Services account within the Organization as the GuardDuty delegated administrator\cr
#'  \link[paws.security.identity.p1:guardduty_disassociate_from_administrator_account]{disassociate_from_administrator_account} \tab Disassociates the current GuardDuty member account from its administrator account\cr
#'  \link[paws.security.identity.p1:guardduty_disassociate_from_master_account]{disassociate_from_master_account} \tab Disassociates the current GuardDuty member account from its administrator account\cr
#'  \link[paws.security.identity.p1:guardduty_disassociate_members]{disassociate_members} \tab Disassociates GuardDuty member accounts (to the current GuardDuty administrator account) specified by the account IDs\cr
#'  \link[paws.security.identity.p1:guardduty_enable_organization_admin_account]{enable_organization_admin_account} \tab Enables an Amazon Web Services account within the organization as the GuardDuty delegated administrator\cr
#'  \link[paws.security.identity.p1:guardduty_get_administrator_account]{get_administrator_account} \tab Provides the details for the GuardDuty administrator account associated with the current GuardDuty member account\cr
#'  \link[paws.security.identity.p1:guardduty_get_detector]{get_detector} \tab Retrieves an Amazon GuardDuty detector specified by the detectorId\cr
#'  \link[paws.security.identity.p1:guardduty_get_filter]{get_filter} \tab Returns the details of the filter specified by the filter name\cr
#'  \link[paws.security.identity.p1:guardduty_get_findings]{get_findings} \tab Describes Amazon GuardDuty findings specified by finding IDs\cr
#'  \link[paws.security.identity.p1:guardduty_get_findings_statistics]{get_findings_statistics} \tab Lists Amazon GuardDuty findings statistics for the specified detector ID\cr
#'  \link[paws.security.identity.p1:guardduty_get_invitations_count]{get_invitations_count} \tab Returns the count of all GuardDuty membership invitations that were sent to the current member account except the currently accepted invitation\cr
#'  \link[paws.security.identity.p1:guardduty_get_ip_set]{get_ip_set} \tab Retrieves the IPSet specified by the ipSetId\cr
#'  \link[paws.security.identity.p1:guardduty_get_malware_scan_settings]{get_malware_scan_settings} \tab Returns the details of the malware scan settings\cr
#'  \link[paws.security.identity.p1:guardduty_get_master_account]{get_master_account} \tab Provides the details for the GuardDuty administrator account associated with the current GuardDuty member account\cr
#'  \link[paws.security.identity.p1:guardduty_get_member_detectors]{get_member_detectors} \tab Describes which data sources are enabled for the member account's detector\cr
#'  \link[paws.security.identity.p1:guardduty_get_members]{get_members} \tab Retrieves GuardDuty member accounts (of the current GuardDuty administrator account) specified by the account IDs\cr
#'  \link[paws.security.identity.p1:guardduty_get_remaining_free_trial_days]{get_remaining_free_trial_days} \tab Provides the number of days left for each data source used in the free trial period\cr
#'  \link[paws.security.identity.p1:guardduty_get_threat_intel_set]{get_threat_intel_set} \tab Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID\cr
#'  \link[paws.security.identity.p1:guardduty_get_usage_statistics]{get_usage_statistics} \tab Lists Amazon GuardDuty usage statistics over the last 30 days for the specified detector ID\cr
#'  \link[paws.security.identity.p1:guardduty_invite_members]{invite_members} \tab Invites other Amazon Web Services accounts (created as members of the current Amazon Web Services account by CreateMembers) to enable GuardDuty, and allow the current Amazon Web Services account to view and manage these accounts' findings on their behalf as the GuardDuty administrator account\cr
#'  \link[paws.security.identity.p1:guardduty_list_detectors]{list_detectors} \tab Lists detectorIds of all the existing Amazon GuardDuty detector resources\cr
#'  \link[paws.security.identity.p1:guardduty_list_filters]{list_filters} \tab Returns a paginated list of the current filters\cr
#'  \link[paws.security.identity.p1:guardduty_list_findings]{list_findings} \tab Lists Amazon GuardDuty findings for the specified detector ID\cr
#'  \link[paws.security.identity.p1:guardduty_list_invitations]{list_invitations} \tab Lists all GuardDuty membership invitations that were sent to the current Amazon Web Services account\cr
#'  \link[paws.security.identity.p1:guardduty_list_ip_sets]{list_ip_sets} \tab Lists the IPSets of the GuardDuty service specified by the detector ID\cr
#'  \link[paws.security.identity.p1:guardduty_list_members]{list_members} \tab Lists details about all member accounts for the current GuardDuty administrator account\cr
#'  \link[paws.security.identity.p1:guardduty_list_organization_admin_accounts]{list_organization_admin_accounts} \tab Lists the accounts configured as GuardDuty delegated administrators\cr
#'  \link[paws.security.identity.p1:guardduty_list_publishing_destinations]{list_publishing_destinations} \tab Returns a list of publishing destinations associated with the specified detectorId\cr
#'  \link[paws.security.identity.p1:guardduty_list_tags_for_resource]{list_tags_for_resource} \tab Lists tags for a resource\cr
#'  \link[paws.security.identity.p1:guardduty_list_threat_intel_sets]{list_threat_intel_sets} \tab Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID\cr
#'  \link[paws.security.identity.p1:guardduty_start_monitoring_members]{start_monitoring_members} \tab Turns on GuardDuty monitoring of the specified member accounts\cr
#'  \link[paws.security.identity.p1:guardduty_stop_monitoring_members]{stop_monitoring_members} \tab Stops GuardDuty monitoring for the specified member accounts\cr
#'  \link[paws.security.identity.p1:guardduty_tag_resource]{tag_resource} \tab Adds tags to a resource\cr
#'  \link[paws.security.identity.p1:guardduty_unarchive_findings]{unarchive_findings} \tab Unarchives GuardDuty findings specified by the findingIds\cr
#'  \link[paws.security.identity.p1:guardduty_untag_resource]{untag_resource} \tab Removes tags from a resource\cr
#'  \link[paws.security.identity.p1:guardduty_update_detector]{update_detector} \tab Updates the Amazon GuardDuty detector specified by the detectorId\cr
#'  \link[paws.security.identity.p1:guardduty_update_filter]{update_filter} \tab Updates the filter specified by the filter name\cr
#'  \link[paws.security.identity.p1:guardduty_update_findings_feedback]{update_findings_feedback} \tab Marks the specified GuardDuty findings as useful or not useful\cr
#'  \link[paws.security.identity.p1:guardduty_update_ip_set]{update_ip_set} \tab Updates the IPSet specified by the IPSet ID\cr
#'  \link[paws.security.identity.p1:guardduty_update_malware_scan_settings]{update_malware_scan_settings} \tab Updates the malware scan settings\cr
#'  \link[paws.security.identity.p1:guardduty_update_member_detectors]{update_member_detectors} \tab Contains information on member accounts to be updated\cr
#'  \link[paws.security.identity.p1:guardduty_update_organization_configuration]{update_organization_configuration} \tab Updates the delegated administrator account with the values provided\cr
#'  \link[paws.security.identity.p1:guardduty_update_publishing_destination]{update_publishing_destination} \tab Updates information about the publishing destination specified by the destinationId\cr
#'  \link[paws.security.identity.p1:guardduty_update_threat_intel_set]{update_threat_intel_set} \tab Updates the ThreatIntelSet specified by the ThreatIntelSet ID
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname guardduty
#' @export
guardduty <- function(config = list()) {
  paws.security.identity.p1::guardduty(config)
}

#' AWS Identity and Access Management
#'
#' @description
#' Identity and Access Management
#' 
#' Identity and Access Management (IAM) is a web service for securely
#' controlling access to Amazon Web Services services. With IAM, you can
#' centrally manage users, security credentials such as access keys, and
#' permissions that control which Amazon Web Services resources users and
#' applications can access. For more information about IAM, see [Identity
#' and Access Management (IAM)](https://aws.amazon.com/iam/) and the
#' [Identity and Access Management User
#' Guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- iam(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- iam()
#' # The following add-client-id-to-open-id-connect-provider command adds the
#' # client ID my-application-ID to the OIDC provider named
#' # server.example.com:
#' svc$add_client_id_to_open_id_connect_provider(
#'   ClientID = "my-application-ID",
#'   OpenIDConnectProviderArn = "arn:aws:iam::123456789012:oidc-provider/server.example.com"
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p1:iam_add_client_id_to_open_id_connect_provider]{add_client_id_to_open_id_connect_provider} \tab Adds a new client ID (also known as audience) to the list of client IDs already registered for the specified IAM OpenID Connect (OIDC) provider resource\cr
#'  \link[paws.security.identity.p1:iam_add_role_to_instance_profile]{add_role_to_instance_profile} \tab Adds the specified IAM role to the specified instance profile\cr
#'  \link[paws.security.identity.p1:iam_add_user_to_group]{add_user_to_group} \tab Adds the specified user to the specified group\cr
#'  \link[paws.security.identity.p1:iam_attach_group_policy]{attach_group_policy} \tab Attaches the specified managed policy to the specified IAM group\cr
#'  \link[paws.security.identity.p1:iam_attach_role_policy]{attach_role_policy} \tab Attaches the specified managed policy to the specified IAM role\cr
#'  \link[paws.security.identity.p1:iam_attach_user_policy]{attach_user_policy} \tab Attaches the specified managed policy to the specified user\cr
#'  \link[paws.security.identity.p1:iam_change_password]{change_password} \tab Changes the password of the IAM user who is calling this operation\cr
#'  \link[paws.security.identity.p1:iam_create_access_key]{create_access_key} \tab Creates a new Amazon Web Services secret access key and corresponding Amazon Web Services access key ID for the specified user\cr
#'  \link[paws.security.identity.p1:iam_create_account_alias]{create_account_alias} \tab Creates an alias for your Amazon Web Services account\cr
#'  \link[paws.security.identity.p1:iam_create_group]{create_group} \tab Creates a new group\cr
#'  \link[paws.security.identity.p1:iam_create_instance_profile]{create_instance_profile} \tab Creates a new instance profile\cr
#'  \link[paws.security.identity.p1:iam_create_login_profile]{create_login_profile} \tab Creates a password for the specified IAM user\cr
#'  \link[paws.security.identity.p1:iam_create_open_id_connect_provider]{create_open_id_connect_provider} \tab Creates an IAM entity to describe an identity provider (IdP) that supports OpenID Connect (OIDC)\cr
#'  \link[paws.security.identity.p1:iam_create_policy]{create_policy} \tab Creates a new managed policy for your Amazon Web Services account\cr
#'  \link[paws.security.identity.p1:iam_create_policy_version]{create_policy_version} \tab Creates a new version of the specified managed policy\cr
#'  \link[paws.security.identity.p1:iam_create_role]{create_role} \tab Creates a new role for your Amazon Web Services account\cr
#'  \link[paws.security.identity.p1:iam_create_saml_provider]{create_saml_provider} \tab Creates an IAM resource that describes an identity provider (IdP) that supports SAML 2\cr
#'  \link[paws.security.identity.p1:iam_create_service_linked_role]{create_service_linked_role} \tab Creates an IAM role that is linked to a specific Amazon Web Services service\cr
#'  \link[paws.security.identity.p1:iam_create_service_specific_credential]{create_service_specific_credential} \tab Generates a set of credentials consisting of a user name and password that can be used to access the service specified in the request\cr
#'  \link[paws.security.identity.p1:iam_create_user]{create_user} \tab Creates a new IAM user for your Amazon Web Services account\cr
#'  \link[paws.security.identity.p1:iam_create_virtual_mfa_device]{create_virtual_mfa_device} \tab Creates a new virtual MFA device for the Amazon Web Services account\cr
#'  \link[paws.security.identity.p1:iam_deactivate_mfa_device]{deactivate_mfa_device} \tab Deactivates the specified MFA device and removes it from association with the user name for which it was originally enabled\cr
#'  \link[paws.security.identity.p1:iam_delete_access_key]{delete_access_key} \tab Deletes the access key pair associated with the specified IAM user\cr
#'  \link[paws.security.identity.p1:iam_delete_account_alias]{delete_account_alias} \tab Deletes the specified Amazon Web Services account alias\cr
#'  \link[paws.security.identity.p1:iam_delete_account_password_policy]{delete_account_password_policy} \tab Deletes the password policy for the Amazon Web Services account\cr
#'  \link[paws.security.identity.p1:iam_delete_group]{delete_group} \tab Deletes the specified IAM group\cr
#'  \link[paws.security.identity.p1:iam_delete_group_policy]{delete_group_policy} \tab Deletes the specified inline policy that is embedded in the specified IAM group\cr
#'  \link[paws.security.identity.p1:iam_delete_instance_profile]{delete_instance_profile} \tab Deletes the specified instance profile\cr
#'  \link[paws.security.identity.p1:iam_delete_login_profile]{delete_login_profile} \tab Deletes the password for the specified IAM user, which terminates the user's ability to access Amazon Web Services services through the Amazon Web Services Management Console\cr
#'  \link[paws.security.identity.p1:iam_delete_open_id_connect_provider]{delete_open_id_connect_provider} \tab Deletes an OpenID Connect identity provider (IdP) resource object in IAM\cr
#'  \link[paws.security.identity.p1:iam_delete_policy]{delete_policy} \tab Deletes the specified managed policy\cr
#'  \link[paws.security.identity.p1:iam_delete_policy_version]{delete_policy_version} \tab Deletes the specified version from the specified managed policy\cr
#'  \link[paws.security.identity.p1:iam_delete_role]{delete_role} \tab Deletes the specified role\cr
#'  \link[paws.security.identity.p1:iam_delete_role_permissions_boundary]{delete_role_permissions_boundary} \tab Deletes the permissions boundary for the specified IAM role\cr
#'  \link[paws.security.identity.p1:iam_delete_role_policy]{delete_role_policy} \tab Deletes the specified inline policy that is embedded in the specified IAM role\cr
#'  \link[paws.security.identity.p1:iam_delete_saml_provider]{delete_saml_provider} \tab Deletes a SAML provider resource in IAM\cr
#'  \link[paws.security.identity.p1:iam_delete_server_certificate]{delete_server_certificate} \tab Deletes the specified server certificate\cr
#'  \link[paws.security.identity.p1:iam_delete_service_linked_role]{delete_service_linked_role} \tab Submits a service-linked role deletion request and returns a DeletionTaskId, which you can use to check the status of the deletion\cr
#'  \link[paws.security.identity.p1:iam_delete_service_specific_credential]{delete_service_specific_credential} \tab Deletes the specified service-specific credential\cr
#'  \link[paws.security.identity.p1:iam_delete_signing_certificate]{delete_signing_certificate} \tab Deletes a signing certificate associated with the specified IAM user\cr
#'  \link[paws.security.identity.p1:iam_delete_ssh_public_key]{delete_ssh_public_key} \tab Deletes the specified SSH public key\cr
#'  \link[paws.security.identity.p1:iam_delete_user]{delete_user} \tab Deletes the specified IAM user\cr
#'  \link[paws.security.identity.p1:iam_delete_user_permissions_boundary]{delete_user_permissions_boundary} \tab Deletes the permissions boundary for the specified IAM user\cr
#'  \link[paws.security.identity.p1:iam_delete_user_policy]{delete_user_policy} \tab Deletes the specified inline policy that is embedded in the specified IAM user\cr
#'  \link[paws.security.identity.p1:iam_delete_virtual_mfa_device]{delete_virtual_mfa_device} \tab Deletes a virtual MFA device\cr
#'  \link[paws.security.identity.p1:iam_detach_group_policy]{detach_group_policy} \tab Removes the specified managed policy from the specified IAM group\cr
#'  \link[paws.security.identity.p1:iam_detach_role_policy]{detach_role_policy} \tab Removes the specified managed policy from the specified role\cr
#'  \link[paws.security.identity.p1:iam_detach_user_policy]{detach_user_policy} \tab Removes the specified managed policy from the specified user\cr
#'  \link[paws.security.identity.p1:iam_enable_mfa_device]{enable_mfa_device} \tab Enables the specified MFA device and associates it with the specified IAM user\cr
#'  \link[paws.security.identity.p1:iam_generate_credential_report]{generate_credential_report} \tab Generates a credential report for the Amazon Web Services account\cr
#'  \link[paws.security.identity.p1:iam_generate_organizations_access_report]{generate_organizations_access_report} \tab Generates a report for service last accessed data for Organizations\cr
#'  \link[paws.security.identity.p1:iam_generate_service_last_accessed_details]{generate_service_last_accessed_details} \tab Generates a report that includes details about when an IAM resource (user, group, role, or policy) was last used in an attempt to access Amazon Web Services services\cr
#'  \link[paws.security.identity.p1:iam_get_access_key_last_used]{get_access_key_last_used} \tab Retrieves information about when the specified access key was last used\cr
#'  \link[paws.security.identity.p1:iam_get_account_authorization_details]{get_account_authorization_details} \tab Retrieves information about all IAM users, groups, roles, and policies in your Amazon Web Services account, including their relationships to one another\cr
#'  \link[paws.security.identity.p1:iam_get_account_password_policy]{get_account_password_policy} \tab Retrieves the password policy for the Amazon Web Services account\cr
#'  \link[paws.security.identity.p1:iam_get_account_summary]{get_account_summary} \tab Retrieves information about IAM entity usage and IAM quotas in the Amazon Web Services account\cr
#'  \link[paws.security.identity.p1:iam_get_context_keys_for_custom_policy]{get_context_keys_for_custom_policy} \tab Gets a list of all of the context keys referenced in the input policies\cr
#'  \link[paws.security.identity.p1:iam_get_context_keys_for_principal_policy]{get_context_keys_for_principal_policy} \tab Gets a list of all of the context keys referenced in all the IAM policies that are attached to the specified IAM entity\cr
#'  \link[paws.security.identity.p1:iam_get_credential_report]{get_credential_report} \tab Retrieves a credential report for the Amazon Web Services account\cr
#'  \link[paws.security.identity.p1:iam_get_group]{get_group} \tab Returns a list of IAM users that are in the specified IAM group\cr
#'  \link[paws.security.identity.p1:iam_get_group_policy]{get_group_policy} \tab Retrieves the specified inline policy document that is embedded in the specified IAM group\cr
#'  \link[paws.security.identity.p1:iam_get_instance_profile]{get_instance_profile} \tab Retrieves information about the specified instance profile, including the instance profile's path, GUID, ARN, and role\cr
#'  \link[paws.security.identity.p1:iam_get_login_profile]{get_login_profile} \tab Retrieves the user name for the specified IAM user\cr
#'  \link[paws.security.identity.p1:iam_get_open_id_connect_provider]{get_open_id_connect_provider} \tab Returns information about the specified OpenID Connect (OIDC) provider resource object in IAM\cr
#'  \link[paws.security.identity.p1:iam_get_organizations_access_report]{get_organizations_access_report} \tab Retrieves the service last accessed data report for Organizations that was previously generated using the GenerateOrganizationsAccessReport operation\cr
#'  \link[paws.security.identity.p1:iam_get_policy]{get_policy} \tab Retrieves information about the specified managed policy, including the policy's default version and the total number of IAM users, groups, and roles to which the policy is attached\cr
#'  \link[paws.security.identity.p1:iam_get_policy_version]{get_policy_version} \tab Retrieves information about the specified version of the specified managed policy, including the policy document\cr
#'  \link[paws.security.identity.p1:iam_get_role]{get_role} \tab Retrieves information about the specified role, including the role's path, GUID, ARN, and the role's trust policy that grants permission to assume the role\cr
#'  \link[paws.security.identity.p1:iam_get_role_policy]{get_role_policy} \tab Retrieves the specified inline policy document that is embedded with the specified IAM role\cr
#'  \link[paws.security.identity.p1:iam_get_saml_provider]{get_saml_provider} \tab Returns the SAML provider metadocument that was uploaded when the IAM SAML provider resource object was created or updated\cr
#'  \link[paws.security.identity.p1:iam_get_server_certificate]{get_server_certificate} \tab Retrieves information about the specified server certificate stored in IAM\cr
#'  \link[paws.security.identity.p1:iam_get_service_last_accessed_details]{get_service_last_accessed_details} \tab Retrieves a service last accessed report that was created using the GenerateServiceLastAccessedDetails operation\cr
#'  \link[paws.security.identity.p1:iam_get_service_last_accessed_details_with_entities]{get_service_last_accessed_details_with_entities} \tab After you generate a group or policy report using the GenerateServiceLastAccessedDetails operation, you can use the JobId parameter in GetServiceLastAccessedDetailsWithEntities\cr
#'  \link[paws.security.identity.p1:iam_get_service_linked_role_deletion_status]{get_service_linked_role_deletion_status} \tab Retrieves the status of your service-linked role deletion\cr
#'  \link[paws.security.identity.p1:iam_get_ssh_public_key]{get_ssh_public_key} \tab Retrieves the specified SSH public key, including metadata about the key\cr
#'  \link[paws.security.identity.p1:iam_get_user]{get_user} \tab Retrieves information about the specified IAM user, including the user's creation date, path, unique ID, and ARN\cr
#'  \link[paws.security.identity.p1:iam_get_user_policy]{get_user_policy} \tab Retrieves the specified inline policy document that is embedded in the specified IAM user\cr
#'  \link[paws.security.identity.p1:iam_list_access_keys]{list_access_keys} \tab Returns information about the access key IDs associated with the specified IAM user\cr
#'  \link[paws.security.identity.p1:iam_list_account_aliases]{list_account_aliases} \tab Lists the account alias associated with the Amazon Web Services account (Note: you can have only one)\cr
#'  \link[paws.security.identity.p1:iam_list_attached_group_policies]{list_attached_group_policies} \tab Lists all managed policies that are attached to the specified IAM group\cr
#'  \link[paws.security.identity.p1:iam_list_attached_role_policies]{list_attached_role_policies} \tab Lists all managed policies that are attached to the specified IAM role\cr
#'  \link[paws.security.identity.p1:iam_list_attached_user_policies]{list_attached_user_policies} \tab Lists all managed policies that are attached to the specified IAM user\cr
#'  \link[paws.security.identity.p1:iam_list_entities_for_policy]{list_entities_for_policy} \tab Lists all IAM users, groups, and roles that the specified managed policy is attached to\cr
#'  \link[paws.security.identity.p1:iam_list_group_policies]{list_group_policies} \tab Lists the names of the inline policies that are embedded in the specified IAM group\cr
#'  \link[paws.security.identity.p1:iam_list_groups]{list_groups} \tab Lists the IAM groups that have the specified path prefix\cr
#'  \link[paws.security.identity.p1:iam_list_groups_for_user]{list_groups_for_user} \tab Lists the IAM groups that the specified IAM user belongs to\cr
#'  \link[paws.security.identity.p1:iam_list_instance_profiles]{list_instance_profiles} \tab Lists the instance profiles that have the specified path prefix\cr
#'  \link[paws.security.identity.p1:iam_list_instance_profiles_for_role]{list_instance_profiles_for_role} \tab Lists the instance profiles that have the specified associated IAM role\cr
#'  \link[paws.security.identity.p1:iam_list_instance_profile_tags]{list_instance_profile_tags} \tab Lists the tags that are attached to the specified IAM instance profile\cr
#'  \link[paws.security.identity.p1:iam_list_mfa_devices]{list_mfa_devices} \tab Lists the MFA devices for an IAM user\cr
#'  \link[paws.security.identity.p1:iam_list_mfa_device_tags]{list_mfa_device_tags} \tab Lists the tags that are attached to the specified IAM virtual multi-factor authentication (MFA) device\cr
#'  \link[paws.security.identity.p1:iam_list_open_id_connect_providers]{list_open_id_connect_providers} \tab Lists information about the IAM OpenID Connect (OIDC) provider resource objects defined in the Amazon Web Services account\cr
#'  \link[paws.security.identity.p1:iam_list_open_id_connect_provider_tags]{list_open_id_connect_provider_tags} \tab Lists the tags that are attached to the specified OpenID Connect (OIDC)-compatible identity provider\cr
#'  \link[paws.security.identity.p1:iam_list_policies]{list_policies} \tab Lists all the managed policies that are available in your Amazon Web Services account, including your own customer-defined managed policies and all Amazon Web Services managed policies\cr
#'  \link[paws.security.identity.p1:iam_list_policies_granting_service_access]{list_policies_granting_service_access} \tab Retrieves a list of policies that the IAM identity (user, group, or role) can use to access each specified service\cr
#'  \link[paws.security.identity.p1:iam_list_policy_tags]{list_policy_tags} \tab Lists the tags that are attached to the specified IAM customer managed policy\cr
#'  \link[paws.security.identity.p1:iam_list_policy_versions]{list_policy_versions} \tab Lists information about the versions of the specified managed policy, including the version that is currently set as the policy's default version\cr
#'  \link[paws.security.identity.p1:iam_list_role_policies]{list_role_policies} \tab Lists the names of the inline policies that are embedded in the specified IAM role\cr
#'  \link[paws.security.identity.p1:iam_list_roles]{list_roles} \tab Lists the IAM roles that have the specified path prefix\cr
#'  \link[paws.security.identity.p1:iam_list_role_tags]{list_role_tags} \tab Lists the tags that are attached to the specified role\cr
#'  \link[paws.security.identity.p1:iam_list_saml_providers]{list_saml_providers} \tab Lists the SAML provider resource objects defined in IAM in the account\cr
#'  \link[paws.security.identity.p1:iam_list_saml_provider_tags]{list_saml_provider_tags} \tab Lists the tags that are attached to the specified Security Assertion Markup Language (SAML) identity provider\cr
#'  \link[paws.security.identity.p1:iam_list_server_certificates]{list_server_certificates} \tab Lists the server certificates stored in IAM that have the specified path prefix\cr
#'  \link[paws.security.identity.p1:iam_list_server_certificate_tags]{list_server_certificate_tags} \tab Lists the tags that are attached to the specified IAM server certificate\cr
#'  \link[paws.security.identity.p1:iam_list_service_specific_credentials]{list_service_specific_credentials} \tab Returns information about the service-specific credentials associated with the specified IAM user\cr
#'  \link[paws.security.identity.p1:iam_list_signing_certificates]{list_signing_certificates} \tab Returns information about the signing certificates associated with the specified IAM user\cr
#'  \link[paws.security.identity.p1:iam_list_ssh_public_keys]{list_ssh_public_keys} \tab Returns information about the SSH public keys associated with the specified IAM user\cr
#'  \link[paws.security.identity.p1:iam_list_user_policies]{list_user_policies} \tab Lists the names of the inline policies embedded in the specified IAM user\cr
#'  \link[paws.security.identity.p1:iam_list_users]{list_users} \tab Lists the IAM users that have the specified path prefix\cr
#'  \link[paws.security.identity.p1:iam_list_user_tags]{list_user_tags} \tab Lists the tags that are attached to the specified IAM user\cr
#'  \link[paws.security.identity.p1:iam_list_virtual_mfa_devices]{list_virtual_mfa_devices} \tab Lists the virtual MFA devices defined in the Amazon Web Services account by assignment status\cr
#'  \link[paws.security.identity.p1:iam_put_group_policy]{put_group_policy} \tab Adds or updates an inline policy document that is embedded in the specified IAM group\cr
#'  \link[paws.security.identity.p1:iam_put_role_permissions_boundary]{put_role_permissions_boundary} \tab Adds or updates the policy that is specified as the IAM role's permissions boundary\cr
#'  \link[paws.security.identity.p1:iam_put_role_policy]{put_role_policy} \tab Adds or updates an inline policy document that is embedded in the specified IAM role\cr
#'  \link[paws.security.identity.p1:iam_put_user_permissions_boundary]{put_user_permissions_boundary} \tab Adds or updates the policy that is specified as the IAM user's permissions boundary\cr
#'  \link[paws.security.identity.p1:iam_put_user_policy]{put_user_policy} \tab Adds or updates an inline policy document that is embedded in the specified IAM user\cr
#'  \link[paws.security.identity.p1:iam_remove_client_id_from_open_id_connect_provider]{remove_client_id_from_open_id_connect_provider} \tab Removes the specified client ID (also known as audience) from the list of client IDs registered for the specified IAM OpenID Connect (OIDC) provider resource object\cr
#'  \link[paws.security.identity.p1:iam_remove_role_from_instance_profile]{remove_role_from_instance_profile} \tab Removes the specified IAM role from the specified EC2 instance profile\cr
#'  \link[paws.security.identity.p1:iam_remove_user_from_group]{remove_user_from_group} \tab Removes the specified user from the specified group\cr
#'  \link[paws.security.identity.p1:iam_reset_service_specific_credential]{reset_service_specific_credential} \tab Resets the password for a service-specific credential\cr
#'  \link[paws.security.identity.p1:iam_resync_mfa_device]{resync_mfa_device} \tab Synchronizes the specified MFA device with its IAM resource object on the Amazon Web Services servers\cr
#'  \link[paws.security.identity.p1:iam_set_default_policy_version]{set_default_policy_version} \tab Sets the specified version of the specified policy as the policy's default (operative) version\cr
#'  \link[paws.security.identity.p1:iam_set_security_token_service_preferences]{set_security_token_service_preferences} \tab Sets the specified version of the global endpoint token as the token version used for the Amazon Web Services account\cr
#'  \link[paws.security.identity.p1:iam_simulate_custom_policy]{simulate_custom_policy} \tab Simulate how a set of IAM policies and optionally a resource-based policy works with a list of API operations and Amazon Web Services resources to determine the policies' effective permissions\cr
#'  \link[paws.security.identity.p1:iam_simulate_principal_policy]{simulate_principal_policy} \tab Simulate how a set of IAM policies attached to an IAM entity works with a list of API operations and Amazon Web Services resources to determine the policies' effective permissions\cr
#'  \link[paws.security.identity.p1:iam_tag_instance_profile]{tag_instance_profile} \tab Adds one or more tags to an IAM instance profile\cr
#'  \link[paws.security.identity.p1:iam_tag_mfa_device]{tag_mfa_device} \tab Adds one or more tags to an IAM virtual multi-factor authentication (MFA) device\cr
#'  \link[paws.security.identity.p1:iam_tag_open_id_connect_provider]{tag_open_id_connect_provider} \tab Adds one or more tags to an OpenID Connect (OIDC)-compatible identity provider\cr
#'  \link[paws.security.identity.p1:iam_tag_policy]{tag_policy} \tab Adds one or more tags to an IAM customer managed policy\cr
#'  \link[paws.security.identity.p1:iam_tag_role]{tag_role} \tab Adds one or more tags to an IAM role\cr
#'  \link[paws.security.identity.p1:iam_tag_saml_provider]{tag_saml_provider} \tab Adds one or more tags to a Security Assertion Markup Language (SAML) identity provider\cr
#'  \link[paws.security.identity.p1:iam_tag_server_certificate]{tag_server_certificate} \tab Adds one or more tags to an IAM server certificate\cr
#'  \link[paws.security.identity.p1:iam_tag_user]{tag_user} \tab Adds one or more tags to an IAM user\cr
#'  \link[paws.security.identity.p1:iam_untag_instance_profile]{untag_instance_profile} \tab Removes the specified tags from the IAM instance profile\cr
#'  \link[paws.security.identity.p1:iam_untag_mfa_device]{untag_mfa_device} \tab Removes the specified tags from the IAM virtual multi-factor authentication (MFA) device\cr
#'  \link[paws.security.identity.p1:iam_untag_open_id_connect_provider]{untag_open_id_connect_provider} \tab Removes the specified tags from the specified OpenID Connect (OIDC)-compatible identity provider in IAM\cr
#'  \link[paws.security.identity.p1:iam_untag_policy]{untag_policy} \tab Removes the specified tags from the customer managed policy\cr
#'  \link[paws.security.identity.p1:iam_untag_role]{untag_role} \tab Removes the specified tags from the role\cr
#'  \link[paws.security.identity.p1:iam_untag_saml_provider]{untag_saml_provider} \tab Removes the specified tags from the specified Security Assertion Markup Language (SAML) identity provider in IAM\cr
#'  \link[paws.security.identity.p1:iam_untag_server_certificate]{untag_server_certificate} \tab Removes the specified tags from the IAM server certificate\cr
#'  \link[paws.security.identity.p1:iam_untag_user]{untag_user} \tab Removes the specified tags from the user\cr
#'  \link[paws.security.identity.p1:iam_update_access_key]{update_access_key} \tab Changes the status of the specified access key from Active to Inactive, or vice versa\cr
#'  \link[paws.security.identity.p1:iam_update_account_password_policy]{update_account_password_policy} \tab Updates the password policy settings for the Amazon Web Services account\cr
#'  \link[paws.security.identity.p1:iam_update_assume_role_policy]{update_assume_role_policy} \tab Updates the policy that grants an IAM entity permission to assume a role\cr
#'  \link[paws.security.identity.p1:iam_update_group]{update_group} \tab Updates the name and/or the path of the specified IAM group\cr
#'  \link[paws.security.identity.p1:iam_update_login_profile]{update_login_profile} \tab Changes the password for the specified IAM user\cr
#'  \link[paws.security.identity.p1:iam_update_open_id_connect_provider_thumbprint]{update_open_id_connect_provider_thumbprint} \tab Replaces the existing list of server certificate thumbprints associated with an OpenID Connect (OIDC) provider resource object with a new list of thumbprints\cr
#'  \link[paws.security.identity.p1:iam_update_role]{update_role} \tab Updates the description or maximum session duration setting of a role\cr
#'  \link[paws.security.identity.p1:iam_update_role_description]{update_role_description} \tab Use UpdateRole instead\cr
#'  \link[paws.security.identity.p1:iam_update_saml_provider]{update_saml_provider} \tab Updates the metadata document for an existing SAML provider resource object\cr
#'  \link[paws.security.identity.p1:iam_update_server_certificate]{update_server_certificate} \tab Updates the name and/or the path of the specified server certificate stored in IAM\cr
#'  \link[paws.security.identity.p1:iam_update_service_specific_credential]{update_service_specific_credential} \tab Sets the status of a service-specific credential to Active or Inactive\cr
#'  \link[paws.security.identity.p1:iam_update_signing_certificate]{update_signing_certificate} \tab Changes the status of the specified user signing certificate from active to disabled, or vice versa\cr
#'  \link[paws.security.identity.p1:iam_update_ssh_public_key]{update_ssh_public_key} \tab Sets the status of an IAM user's SSH public key to active or inactive\cr
#'  \link[paws.security.identity.p1:iam_update_user]{update_user} \tab Updates the name and/or the path of the specified IAM user\cr
#'  \link[paws.security.identity.p1:iam_upload_server_certificate]{upload_server_certificate} \tab Uploads a server certificate entity for the Amazon Web Services account\cr
#'  \link[paws.security.identity.p1:iam_upload_signing_certificate]{upload_signing_certificate} \tab Uploads an X\cr
#'  \link[paws.security.identity.p1:iam_upload_ssh_public_key]{upload_ssh_public_key} \tab Uploads an SSH public key and associates it with the specified IAM user
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname iam
#' @export
iam <- function(config = list()) {
  paws.security.identity.p1::iam(config)
}

#' AWS Key Management Service
#'
#' @description
#' Key Management Service
#' 
#' Key Management Service (KMS) is an encryption and key management web
#' service. This guide describes the KMS operations that you can call
#' programmatically. For general information about KMS, see the [*Key
#' Management Service Developer
#' Guide*](https://docs.aws.amazon.com/kms/latest/developerguide/) .
#' 
#' KMS is replacing the term *customer master key (CMK)* with *KMS key* and
#' *KMS key*. The concept has not changed. To prevent breaking changes, KMS
#' is keeping some variations of this term.
#' 
#' Amazon Web Services provides SDKs that consist of libraries and sample
#' code for various programming languages and platforms (Java, Ruby, .Net,
#' macOS, Android, etc.). The SDKs provide a convenient way to create
#' programmatic access to KMS and other Amazon Web Services services. For
#' example, the SDKs take care of tasks such as signing requests (see
#' below), managing errors, and retrying requests automatically. For more
#' information about the Amazon Web Services SDKs, including how to
#' download and install them, see [Tools for Amazon Web
#' Services](https://aws.amazon.com/developer/tools/).
#' 
#' We recommend that you use the Amazon Web Services SDKs to make
#' programmatic API calls to KMS.
#' 
#' If you need to use FIPS 140-2 validated cryptographic modules when
#' communicating with Amazon Web Services, use the FIPS endpoint in your
#' preferred Amazon Web Services Region. For more information about the
#' available FIPS endpoints, see [Service
#' endpoints](https://docs.aws.amazon.com/general/latest/gr/kms.html#kms_region)
#' in the Key Management Service topic of the *Amazon Web Services General
#' Reference*.
#' 
#' All KMS API calls must be signed and be transmitted using Transport
#' Layer Security (TLS). KMS recommends you always use the latest supported
#' TLS version. Clients must also support cipher suites with Perfect
#' Forward Secrecy (PFS) such as Ephemeral Diffie-Hellman (DHE) or Elliptic
#' Curve Ephemeral Diffie-Hellman (ECDHE). Most modern systems such as Java
#' 7 and later support these modes.
#' 
#' **Signing Requests**
#' 
#' Requests must be signed by using an access key ID and a secret access
#' key. We strongly recommend that you *do not* use your Amazon Web
#' Services account (root) access key ID and secret key for everyday work
#' with KMS. Instead, use the access key ID and secret access key for an
#' IAM user. You can also use the Amazon Web Services Security Token
#' Service to generate temporary security credentials that you can use to
#' sign requests.
#' 
#' All KMS operations require [Signature Version
#' 4](https://docs.aws.amazon.com/general/latest/gr/signing-aws-api-requests.html).
#' 
#' **Logging API Requests**
#' 
#' KMS supports CloudTrail, a service that logs Amazon Web Services API
#' calls and related events for your Amazon Web Services account and
#' delivers them to an Amazon S3 bucket that you specify. By using the
#' information collected by CloudTrail, you can determine what requests
#' were made to KMS, who made the request, when it was made, and so on. To
#' learn more about CloudTrail, including how to turn it on and find your
#' log files, see the [CloudTrail User
#' Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/).
#' 
#' **Additional Resources**
#' 
#' For more information about credentials and request signing, see the
#' following:
#' 
#' -   [Amazon Web Services Security
#'     Credentials](https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html) -
#'     This topic provides general information about the types of
#'     credentials used to access Amazon Web Services.
#' 
#' -   [Temporary Security
#'     Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html) -
#'     This section of the *IAM User Guide* describes how to create and use
#'     temporary security credentials.
#' 
#' -   [Signature Version 4 Signing
#'     Process](https://docs.aws.amazon.com/general/latest/gr/signing-aws-api-requests.html) -
#'     This set of topics walks you through the process of signing a
#'     request using an access key ID and a secret access key.
#' 
#' **Commonly Used API Operations**
#' 
#' Of the API operations discussed in this guide, the following will prove
#' the most useful for most applications. You will likely perform
#' operations other than these, such as creating keys and assigning
#' policies, by using the console.
#' 
#' -   `encrypt`
#' 
#' -   `decrypt`
#' 
#' -   `generate_data_key`
#' 
#' -   `generate_data_key_without_plaintext`
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- kms(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- kms()
#' # The following example cancels deletion of the specified KMS key.
#' svc$cancel_key_deletion(
#'   KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab"
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p1:kms_cancel_key_deletion]{cancel_key_deletion} \tab Cancels the deletion of a KMS key\cr
#'  \link[paws.security.identity.p1:kms_connect_custom_key_store]{connect_custom_key_store} \tab Connects or reconnects a custom key store to its associated CloudHSM cluster\cr
#'  \link[paws.security.identity.p1:kms_create_alias]{create_alias} \tab Creates a friendly name for a KMS key\cr
#'  \link[paws.security.identity.p1:kms_create_custom_key_store]{create_custom_key_store} \tab Creates a custom key store that is associated with an CloudHSM cluster that you own and manage\cr
#'  \link[paws.security.identity.p1:kms_create_grant]{create_grant} \tab Adds a grant to a KMS key\cr
#'  \link[paws.security.identity.p1:kms_create_key]{create_key} \tab Creates a unique customer managed KMS key in your Amazon Web Services account and Region\cr
#'  \link[paws.security.identity.p1:kms_decrypt]{decrypt} \tab Decrypts ciphertext that was encrypted by a KMS key using any of the following operations:\cr
#'  \link[paws.security.identity.p1:kms_delete_alias]{delete_alias} \tab Deletes the specified alias\cr
#'  \link[paws.security.identity.p1:kms_delete_custom_key_store]{delete_custom_key_store} \tab Deletes a custom key store\cr
#'  \link[paws.security.identity.p1:kms_delete_imported_key_material]{delete_imported_key_material} \tab Deletes key material that you previously imported\cr
#'  \link[paws.security.identity.p1:kms_describe_custom_key_stores]{describe_custom_key_stores} \tab Gets information about custom key stores in the account and Region\cr
#'  \link[paws.security.identity.p1:kms_describe_key]{describe_key} \tab Provides detailed information about a KMS key\cr
#'  \link[paws.security.identity.p1:kms_disable_key]{disable_key} \tab Sets the state of a KMS key to disabled\cr
#'  \link[paws.security.identity.p1:kms_disable_key_rotation]{disable_key_rotation} \tab Disables automatic rotation of the key material of the specified symmetric encryption KMS key\cr
#'  \link[paws.security.identity.p1:kms_disconnect_custom_key_store]{disconnect_custom_key_store} \tab Disconnects the custom key store from its associated CloudHSM cluster\cr
#'  \link[paws.security.identity.p1:kms_enable_key]{enable_key} \tab Sets the key state of a KMS key to enabled\cr
#'  \link[paws.security.identity.p1:kms_enable_key_rotation]{enable_key_rotation} \tab Enables automatic rotation of the key material of the specified symmetric encryption KMS key\cr
#'  \link[paws.security.identity.p1:kms_encrypt]{encrypt} \tab Encrypts plaintext of up to 4,096 bytes using a KMS key\cr
#'  \link[paws.security.identity.p1:kms_generate_data_key]{generate_data_key} \tab Returns a unique symmetric data key for use outside of KMS\cr
#'  \link[paws.security.identity.p1:kms_generate_data_key_pair]{generate_data_key_pair} \tab Returns a unique asymmetric data key pair for use outside of KMS\cr
#'  \link[paws.security.identity.p1:kms_generate_data_key_pair_without_plaintext]{generate_data_key_pair_without_plaintext} \tab Returns a unique asymmetric data key pair for use outside of KMS\cr
#'  \link[paws.security.identity.p1:kms_generate_data_key_without_plaintext]{generate_data_key_without_plaintext} \tab Returns a unique symmetric data key for use outside of KMS\cr
#'  \link[paws.security.identity.p1:kms_generate_mac]{generate_mac} \tab Generates a hash-based message authentication code (HMAC) for a message using an HMAC KMS key and a MAC algorithm that the key supports\cr
#'  \link[paws.security.identity.p1:kms_generate_random]{generate_random} \tab Returns a random byte string that is cryptographically secure\cr
#'  \link[paws.security.identity.p1:kms_get_key_policy]{get_key_policy} \tab Gets a key policy attached to the specified KMS key\cr
#'  \link[paws.security.identity.p1:kms_get_key_rotation_status]{get_key_rotation_status} \tab Gets a Boolean value that indicates whether automatic rotation of the key material is enabled for the specified KMS key\cr
#'  \link[paws.security.identity.p1:kms_get_parameters_for_import]{get_parameters_for_import} \tab Returns the items you need to import key material into a symmetric encryption KMS key\cr
#'  \link[paws.security.identity.p1:kms_get_public_key]{get_public_key} \tab Returns the public key of an asymmetric KMS key\cr
#'  \link[paws.security.identity.p1:kms_import_key_material]{import_key_material} \tab Imports key material into an existing symmetric encryption KMS key that was created without key material\cr
#'  \link[paws.security.identity.p1:kms_list_aliases]{list_aliases} \tab Gets a list of aliases in the caller's Amazon Web Services account and region\cr
#'  \link[paws.security.identity.p1:kms_list_grants]{list_grants} \tab Gets a list of all grants for the specified KMS key\cr
#'  \link[paws.security.identity.p1:kms_list_key_policies]{list_key_policies} \tab Gets the names of the key policies that are attached to a KMS key\cr
#'  \link[paws.security.identity.p1:kms_list_keys]{list_keys} \tab Gets a list of all KMS keys in the caller's Amazon Web Services account and Region\cr
#'  \link[paws.security.identity.p1:kms_list_resource_tags]{list_resource_tags} \tab Returns all tags on the specified KMS key\cr
#'  \link[paws.security.identity.p1:kms_list_retirable_grants]{list_retirable_grants} \tab Returns information about all grants in the Amazon Web Services account and Region that have the specified retiring principal\cr
#'  \link[paws.security.identity.p1:kms_put_key_policy]{put_key_policy} \tab Attaches a key policy to the specified KMS key\cr
#'  \link[paws.security.identity.p1:kms_re_encrypt]{re_encrypt} \tab Decrypts ciphertext and then reencrypts it entirely within KMS\cr
#'  \link[paws.security.identity.p1:kms_replicate_key]{replicate_key} \tab Replicates a multi-Region key into the specified Region\cr
#'  \link[paws.security.identity.p1:kms_retire_grant]{retire_grant} \tab Deletes a grant\cr
#'  \link[paws.security.identity.p1:kms_revoke_grant]{revoke_grant} \tab Deletes the specified grant\cr
#'  \link[paws.security.identity.p1:kms_schedule_key_deletion]{schedule_key_deletion} \tab Schedules the deletion of a KMS key\cr
#'  \link[paws.security.identity.p1:kms_sign]{sign} \tab Creates a digital signature for a message or message digest by using the private key in an asymmetric signing KMS key\cr
#'  \link[paws.security.identity.p1:kms_tag_resource]{tag_resource} \tab Adds or edits tags on a customer managed key\cr
#'  \link[paws.security.identity.p1:kms_untag_resource]{untag_resource} \tab Deletes tags from a customer managed key\cr
#'  \link[paws.security.identity.p1:kms_update_alias]{update_alias} \tab Associates an existing KMS alias with a different KMS key\cr
#'  \link[paws.security.identity.p1:kms_update_custom_key_store]{update_custom_key_store} \tab Changes the properties of a custom key store\cr
#'  \link[paws.security.identity.p1:kms_update_key_description]{update_key_description} \tab Updates the description of a KMS key\cr
#'  \link[paws.security.identity.p1:kms_update_primary_region]{update_primary_region} \tab Changes the primary key of a multi-Region key\cr
#'  \link[paws.security.identity.p1:kms_verify]{verify} \tab Verifies a digital signature that was generated by the Sign operation\cr
#'  \link[paws.security.identity.p1:kms_verify_mac]{verify_mac} \tab Verifies the hash-based message authentication code (HMAC) for a specified message, HMAC KMS key, and MAC algorithm
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname kms
#' @export
kms <- function(config = list()) {
  paws.security.identity.p1::kms(config)
}

#' AWS SecurityHub
#'
#' @description
#' Security Hub provides you with a comprehensive view of the security
#' state of your Amazon Web Services environment and resources. It also
#' provides you with the readiness status of your environment based on
#' controls from supported security standards. Security Hub collects
#' security data from Amazon Web Services accounts, services, and
#' integrated third-party products and helps you analyze security trends in
#' your environment to identify the highest priority security issues. For
#' more information about Security Hub, see the [*Security HubUser
#' Guide*](https://docs.aws.amazon.com/securityhub/latest/userguide/what-is-securityhub.html)
#' .
#' 
#' When you use operations in the Security Hub API, the requests are
#' executed only in the Amazon Web Services Region that is currently active
#' or in the specific Amazon Web Services Region that you specify in your
#' request. Any configuration or settings change that results from the
#' operation is applied only to that Region. To make the same change in
#' other Regions, execute the same command for each Region to apply the
#' change to.
#' 
#' For example, if your Region is set to `us-west-2`, when you use
#' `create_members` to add a member account
#' to Security Hub, the association of the member account with the
#' administrator account is created only in the `us-west-2` Region.
#' Security Hub must be enabled for the member account in the same Region
#' that the invitation was sent from.
#' 
#' The following throttling limits apply to using Security Hub API
#' operations.
#' 
#' -   `batch_enable_standards` -
#'     `RateLimit` of 1 request per second, `BurstLimit` of 1 request per
#'     second.
#' 
#' -   `get_findings` - `RateLimit` of 3
#'     requests per second. `BurstLimit` of 6 requests per second.
#' 
#' -   `batch_import_findings` -
#'     `RateLimit` of 10 requests per second. `BurstLimit` of 30 requests
#'     per second.
#' 
#' -   `batch_update_findings` -
#'     `RateLimit` of 10 requests per second. `BurstLimit` of 30 requests
#'     per second.
#' 
#' -   `update_standards_control` -
#'     `RateLimit` of 1 request per second, `BurstLimit` of 5 requests per
#'     second.
#' 
#' -   All other operations - `RateLimit` of 10 requests per second.
#'     `BurstLimit` of 30 requests per second.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- securityhub(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- securityhub()
#' svc$accept_administrator_invitation(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p1:securityhub_accept_administrator_invitation]{accept_administrator_invitation} \tab Accepts the invitation to be a member account and be monitored by the Security Hub administrator account that the invitation was sent from\cr
#'  \link[paws.security.identity.p1:securityhub_accept_invitation]{accept_invitation} \tab This method is deprecated\cr
#'  \link[paws.security.identity.p1:securityhub_batch_disable_standards]{batch_disable_standards} \tab Disables the standards specified by the provided StandardsSubscriptionArns\cr
#'  \link[paws.security.identity.p1:securityhub_batch_enable_standards]{batch_enable_standards} \tab Enables the standards specified by the provided StandardsArn\cr
#'  \link[paws.security.identity.p1:securityhub_batch_import_findings]{batch_import_findings} \tab Imports security findings generated by a finding provider into Security Hub\cr
#'  \link[paws.security.identity.p1:securityhub_batch_update_findings]{batch_update_findings} \tab Used by Security Hub customers to update information about their investigation into a finding\cr
#'  \link[paws.security.identity.p1:securityhub_create_action_target]{create_action_target} \tab Creates a custom action target in Security Hub\cr
#'  \link[paws.security.identity.p1:securityhub_create_finding_aggregator]{create_finding_aggregator} \tab Used to enable finding aggregation\cr
#'  \link[paws.security.identity.p1:securityhub_create_insight]{create_insight} \tab Creates a custom insight in Security Hub\cr
#'  \link[paws.security.identity.p1:securityhub_create_members]{create_members} \tab Creates a member association in Security Hub between the specified accounts and the account used to make the request, which is the administrator account\cr
#'  \link[paws.security.identity.p1:securityhub_decline_invitations]{decline_invitations} \tab Declines invitations to become a member account\cr
#'  \link[paws.security.identity.p1:securityhub_delete_action_target]{delete_action_target} \tab Deletes a custom action target from Security Hub\cr
#'  \link[paws.security.identity.p1:securityhub_delete_finding_aggregator]{delete_finding_aggregator} \tab Deletes a finding aggregator\cr
#'  \link[paws.security.identity.p1:securityhub_delete_insight]{delete_insight} \tab Deletes the insight specified by the InsightArn\cr
#'  \link[paws.security.identity.p1:securityhub_delete_invitations]{delete_invitations} \tab Deletes invitations received by the Amazon Web Services account to become a member account\cr
#'  \link[paws.security.identity.p1:securityhub_delete_members]{delete_members} \tab Deletes the specified member accounts from Security Hub\cr
#'  \link[paws.security.identity.p1:securityhub_describe_action_targets]{describe_action_targets} \tab Returns a list of the custom action targets in Security Hub in your account\cr
#'  \link[paws.security.identity.p1:securityhub_describe_hub]{describe_hub} \tab Returns details about the Hub resource in your account, including the HubArn and the time when you enabled Security Hub\cr
#'  \link[paws.security.identity.p1:securityhub_describe_organization_configuration]{describe_organization_configuration} \tab Returns information about the Organizations configuration for Security Hub\cr
#'  \link[paws.security.identity.p1:securityhub_describe_products]{describe_products} \tab Returns information about product integrations in Security Hub\cr
#'  \link[paws.security.identity.p1:securityhub_describe_standards]{describe_standards} \tab Returns a list of the available standards in Security Hub\cr
#'  \link[paws.security.identity.p1:securityhub_describe_standards_controls]{describe_standards_controls} \tab Returns a list of security standards controls\cr
#'  \link[paws.security.identity.p1:securityhub_disable_import_findings_for_product]{disable_import_findings_for_product} \tab Disables the integration of the specified product with Security Hub\cr
#'  \link[paws.security.identity.p1:securityhub_disable_organization_admin_account]{disable_organization_admin_account} \tab Disables a Security Hub administrator account\cr
#'  \link[paws.security.identity.p1:securityhub_disable_security_hub]{disable_security_hub} \tab Disables Security Hub in your account only in the current Region\cr
#'  \link[paws.security.identity.p1:securityhub_disassociate_from_administrator_account]{disassociate_from_administrator_account} \tab Disassociates the current Security Hub member account from the associated administrator account\cr
#'  \link[paws.security.identity.p1:securityhub_disassociate_from_master_account]{disassociate_from_master_account} \tab This method is deprecated\cr
#'  \link[paws.security.identity.p1:securityhub_disassociate_members]{disassociate_members} \tab Disassociates the specified member accounts from the associated administrator account\cr
#'  \link[paws.security.identity.p1:securityhub_enable_import_findings_for_product]{enable_import_findings_for_product} \tab Enables the integration of a partner product with Security Hub\cr
#'  \link[paws.security.identity.p1:securityhub_enable_organization_admin_account]{enable_organization_admin_account} \tab Designates the Security Hub administrator account for an organization\cr
#'  \link[paws.security.identity.p1:securityhub_enable_security_hub]{enable_security_hub} \tab Enables Security Hub for your account in the current Region or the Region you specify in the request\cr
#'  \link[paws.security.identity.p1:securityhub_get_administrator_account]{get_administrator_account} \tab Provides the details for the Security Hub administrator account for the current member account\cr
#'  \link[paws.security.identity.p1:securityhub_get_enabled_standards]{get_enabled_standards} \tab Returns a list of the standards that are currently enabled\cr
#'  \link[paws.security.identity.p1:securityhub_get_finding_aggregator]{get_finding_aggregator} \tab Returns the current finding aggregation configuration\cr
#'  \link[paws.security.identity.p1:securityhub_get_findings]{get_findings} \tab Returns a list of findings that match the specified criteria\cr
#'  \link[paws.security.identity.p1:securityhub_get_insight_results]{get_insight_results} \tab Lists the results of the Security Hub insight specified by the insight ARN\cr
#'  \link[paws.security.identity.p1:securityhub_get_insights]{get_insights} \tab Lists and describes insights for the specified insight ARNs\cr
#'  \link[paws.security.identity.p1:securityhub_get_invitations_count]{get_invitations_count} \tab Returns the count of all Security Hub membership invitations that were sent to the current member account, not including the currently accepted invitation\cr
#'  \link[paws.security.identity.p1:securityhub_get_master_account]{get_master_account} \tab This method is deprecated\cr
#'  \link[paws.security.identity.p1:securityhub_get_members]{get_members} \tab Returns the details for the Security Hub member accounts for the specified account IDs\cr
#'  \link[paws.security.identity.p1:securityhub_invite_members]{invite_members} \tab Invites other Amazon Web Services accounts to become member accounts for the Security Hub administrator account that the invitation is sent from\cr
#'  \link[paws.security.identity.p1:securityhub_list_enabled_products_for_import]{list_enabled_products_for_import} \tab Lists all findings-generating solutions (products) that you are subscribed to receive findings from in Security Hub\cr
#'  \link[paws.security.identity.p1:securityhub_list_finding_aggregators]{list_finding_aggregators} \tab If finding aggregation is enabled, then ListFindingAggregators returns the ARN of the finding aggregator\cr
#'  \link[paws.security.identity.p1:securityhub_list_invitations]{list_invitations} \tab Lists all Security Hub membership invitations that were sent to the current Amazon Web Services account\cr
#'  \link[paws.security.identity.p1:securityhub_list_members]{list_members} \tab Lists details about all member accounts for the current Security Hub administrator account\cr
#'  \link[paws.security.identity.p1:securityhub_list_organization_admin_accounts]{list_organization_admin_accounts} \tab Lists the Security Hub administrator accounts\cr
#'  \link[paws.security.identity.p1:securityhub_list_tags_for_resource]{list_tags_for_resource} \tab Returns a list of tags associated with a resource\cr
#'  \link[paws.security.identity.p1:securityhub_tag_resource]{tag_resource} \tab Adds one or more tags to a resource\cr
#'  \link[paws.security.identity.p1:securityhub_untag_resource]{untag_resource} \tab Removes one or more tags from a resource\cr
#'  \link[paws.security.identity.p1:securityhub_update_action_target]{update_action_target} \tab Updates the name and description of a custom action target in Security Hub\cr
#'  \link[paws.security.identity.p1:securityhub_update_finding_aggregator]{update_finding_aggregator} \tab Updates the finding aggregation configuration\cr
#'  \link[paws.security.identity.p1:securityhub_update_findings]{update_findings} \tab UpdateFindings is deprecated\cr
#'  \link[paws.security.identity.p1:securityhub_update_insight]{update_insight} \tab Updates the Security Hub insight identified by the specified insight ARN\cr
#'  \link[paws.security.identity.p1:securityhub_update_organization_configuration]{update_organization_configuration} \tab Used to update the configuration related to Organizations\cr
#'  \link[paws.security.identity.p1:securityhub_update_security_hub_configuration]{update_security_hub_configuration} \tab Updates configuration options for Security Hub\cr
#'  \link[paws.security.identity.p1:securityhub_update_standards_control]{update_standards_control} \tab Used to control whether an individual security standard control is enabled or disabled
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname securityhub
#' @export
securityhub <- function(config = list()) {
  paws.security.identity.p1::securityhub(config)
}

#' AWS WAF
#'
#' @description
#' This is **AWS WAF Classic** documentation. For more information, see
#' [AWS WAF
#' Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
#' in the developer guide.
#' 
#' **For the latest version of AWS WAF**, use the AWS WAFV2 API and see the
#' [AWS WAF Developer
#' Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
#' With the latest version, AWS WAF has a single set of endpoints for
#' regional and global use.
#' 
#' This is the *AWS WAF Classic API Reference* for using AWS WAF Classic
#' with Amazon CloudFront. The AWS WAF Classic actions and data types
#' listed in the reference are available for protecting Amazon CloudFront
#' distributions. You can use these actions and data types via the endpoint
#' *waf.amazonaws.com*. This guide is for developers who need detailed
#' information about the AWS WAF Classic API actions, data types, and
#' errors. For detailed information about AWS WAF Classic features and an
#' overview of how to use the AWS WAF Classic API, see the [AWS WAF
#' Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
#' in the developer guide.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- waf(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- waf()
#' # The following example creates an IP match set named MyIPSetFriendlyName.
#' svc$create_ip_set(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   Name = "MyIPSetFriendlyName"
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p1:waf_create_byte_match_set]{create_byte_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_create_geo_match_set]{create_geo_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_create_ip_set]{create_ip_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_create_rate_based_rule]{create_rate_based_rule} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_create_regex_match_set]{create_regex_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_create_regex_pattern_set]{create_regex_pattern_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_create_rule]{create_rule} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_create_rule_group]{create_rule_group} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_create_size_constraint_set]{create_size_constraint_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_create_sql_injection_match_set]{create_sql_injection_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_create_web_acl]{create_web_acl} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_create_web_acl_migration_stack]{create_web_acl_migration_stack} \tab Creates an AWS CloudFormation WAFV2 template for the specified web ACL in the specified Amazon S3 bucket\cr
#'  \link[paws.security.identity.p1:waf_create_xss_match_set]{create_xss_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_delete_byte_match_set]{delete_byte_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_delete_geo_match_set]{delete_geo_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_delete_ip_set]{delete_ip_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_delete_logging_configuration]{delete_logging_configuration} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_delete_permission_policy]{delete_permission_policy} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_delete_rate_based_rule]{delete_rate_based_rule} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_delete_regex_match_set]{delete_regex_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_delete_regex_pattern_set]{delete_regex_pattern_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_delete_rule]{delete_rule} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_delete_rule_group]{delete_rule_group} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_delete_size_constraint_set]{delete_size_constraint_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_delete_sql_injection_match_set]{delete_sql_injection_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_delete_web_acl]{delete_web_acl} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_delete_xss_match_set]{delete_xss_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_get_byte_match_set]{get_byte_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_get_change_token]{get_change_token} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_get_change_token_status]{get_change_token_status} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_get_geo_match_set]{get_geo_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_get_ip_set]{get_ip_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_get_logging_configuration]{get_logging_configuration} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_get_permission_policy]{get_permission_policy} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_get_rate_based_rule]{get_rate_based_rule} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_get_rate_based_rule_managed_keys]{get_rate_based_rule_managed_keys} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_get_regex_match_set]{get_regex_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_get_regex_pattern_set]{get_regex_pattern_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_get_rule]{get_rule} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_get_rule_group]{get_rule_group} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_get_sampled_requests]{get_sampled_requests} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_get_size_constraint_set]{get_size_constraint_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_get_sql_injection_match_set]{get_sql_injection_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_get_web_acl]{get_web_acl} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_get_xss_match_set]{get_xss_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_list_activated_rules_in_rule_group]{list_activated_rules_in_rule_group} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_list_byte_match_sets]{list_byte_match_sets} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_list_geo_match_sets]{list_geo_match_sets} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_list_ip_sets]{list_ip_sets} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_list_logging_configurations]{list_logging_configurations} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_list_rate_based_rules]{list_rate_based_rules} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_list_regex_match_sets]{list_regex_match_sets} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_list_regex_pattern_sets]{list_regex_pattern_sets} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_list_rule_groups]{list_rule_groups} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_list_rules]{list_rules} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_list_size_constraint_sets]{list_size_constraint_sets} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_list_sql_injection_match_sets]{list_sql_injection_match_sets} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_list_subscribed_rule_groups]{list_subscribed_rule_groups} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_list_tags_for_resource]{list_tags_for_resource} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_list_web_ac_ls]{list_web_ac_ls} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_list_xss_match_sets]{list_xss_match_sets} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_put_logging_configuration]{put_logging_configuration} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_put_permission_policy]{put_permission_policy} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_tag_resource]{tag_resource} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_untag_resource]{untag_resource} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_update_byte_match_set]{update_byte_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_update_geo_match_set]{update_geo_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_update_ip_set]{update_ip_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_update_rate_based_rule]{update_rate_based_rule} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_update_regex_match_set]{update_regex_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_update_regex_pattern_set]{update_regex_pattern_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_update_rule]{update_rule} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_update_rule_group]{update_rule_group} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_update_size_constraint_set]{update_size_constraint_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_update_sql_injection_match_set]{update_sql_injection_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_update_web_acl]{update_web_acl} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:waf_update_xss_match_set]{update_xss_match_set} \tab This is AWS WAF Classic documentation
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname waf
#' @export
waf <- function(config = list()) {
  paws.security.identity.p1::waf(config)
}

#' AWS WAF Regional
#'
#' @description
#' This is **AWS WAF Classic Regional** documentation. For more
#' information, see [AWS WAF
#' Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
#' in the developer guide.
#' 
#' **For the latest version of AWS WAF**, use the AWS WAFV2 API and see the
#' [AWS WAF Developer
#' Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
#' With the latest version, AWS WAF has a single set of endpoints for
#' regional and global use.
#' 
#' This is the *AWS WAF Regional Classic API Reference* for using AWS WAF
#' Classic with the AWS resources, Elastic Load Balancing (ELB) Application
#' Load Balancers and API Gateway APIs. The AWS WAF Classic actions and
#' data types listed in the reference are available for protecting Elastic
#' Load Balancing (ELB) Application Load Balancers and API Gateway APIs.
#' You can use these actions and data types by means of the endpoints
#' listed in [AWS Regions and
#' Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#waf_region).
#' This guide is for developers who need detailed information about the AWS
#' WAF Classic API actions, data types, and errors. For detailed
#' information about AWS WAF Classic features and an overview of how to use
#' the AWS WAF Classic API, see the [AWS WAF
#' Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
#' in the developer guide.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- wafregional(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- wafregional()
#' # The following example creates an IP match set named MyIPSetFriendlyName.
#' svc$create_ip_set(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   Name = "MyIPSetFriendlyName"
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p1:wafregional_associate_web_acl]{associate_web_acl} \tab This is AWS WAF Classic Regional documentation\cr
#'  \link[paws.security.identity.p1:wafregional_create_byte_match_set]{create_byte_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_create_geo_match_set]{create_geo_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_create_ip_set]{create_ip_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_create_rate_based_rule]{create_rate_based_rule} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_create_regex_match_set]{create_regex_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_create_regex_pattern_set]{create_regex_pattern_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_create_rule]{create_rule} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_create_rule_group]{create_rule_group} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_create_size_constraint_set]{create_size_constraint_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_create_sql_injection_match_set]{create_sql_injection_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_create_web_acl]{create_web_acl} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_create_web_acl_migration_stack]{create_web_acl_migration_stack} \tab Creates an AWS CloudFormation WAFV2 template for the specified web ACL in the specified Amazon S3 bucket\cr
#'  \link[paws.security.identity.p1:wafregional_create_xss_match_set]{create_xss_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_delete_byte_match_set]{delete_byte_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_delete_geo_match_set]{delete_geo_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_delete_ip_set]{delete_ip_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_delete_logging_configuration]{delete_logging_configuration} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_delete_permission_policy]{delete_permission_policy} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_delete_rate_based_rule]{delete_rate_based_rule} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_delete_regex_match_set]{delete_regex_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_delete_regex_pattern_set]{delete_regex_pattern_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_delete_rule]{delete_rule} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_delete_rule_group]{delete_rule_group} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_delete_size_constraint_set]{delete_size_constraint_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_delete_sql_injection_match_set]{delete_sql_injection_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_delete_web_acl]{delete_web_acl} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_delete_xss_match_set]{delete_xss_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_disassociate_web_acl]{disassociate_web_acl} \tab This is AWS WAF Classic Regional documentation\cr
#'  \link[paws.security.identity.p1:wafregional_get_byte_match_set]{get_byte_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_get_change_token]{get_change_token} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_get_change_token_status]{get_change_token_status} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_get_geo_match_set]{get_geo_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_get_ip_set]{get_ip_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_get_logging_configuration]{get_logging_configuration} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_get_permission_policy]{get_permission_policy} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_get_rate_based_rule]{get_rate_based_rule} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_get_rate_based_rule_managed_keys]{get_rate_based_rule_managed_keys} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_get_regex_match_set]{get_regex_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_get_regex_pattern_set]{get_regex_pattern_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_get_rule]{get_rule} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_get_rule_group]{get_rule_group} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_get_sampled_requests]{get_sampled_requests} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_get_size_constraint_set]{get_size_constraint_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_get_sql_injection_match_set]{get_sql_injection_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_get_web_acl]{get_web_acl} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_get_web_acl_for_resource]{get_web_acl_for_resource} \tab This is AWS WAF Classic Regional documentation\cr
#'  \link[paws.security.identity.p1:wafregional_get_xss_match_set]{get_xss_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_list_activated_rules_in_rule_group]{list_activated_rules_in_rule_group} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_list_byte_match_sets]{list_byte_match_sets} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_list_geo_match_sets]{list_geo_match_sets} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_list_ip_sets]{list_ip_sets} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_list_logging_configurations]{list_logging_configurations} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_list_rate_based_rules]{list_rate_based_rules} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_list_regex_match_sets]{list_regex_match_sets} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_list_regex_pattern_sets]{list_regex_pattern_sets} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_list_resources_for_web_acl]{list_resources_for_web_acl} \tab This is AWS WAF Classic Regional documentation\cr
#'  \link[paws.security.identity.p1:wafregional_list_rule_groups]{list_rule_groups} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_list_rules]{list_rules} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_list_size_constraint_sets]{list_size_constraint_sets} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_list_sql_injection_match_sets]{list_sql_injection_match_sets} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_list_subscribed_rule_groups]{list_subscribed_rule_groups} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_list_tags_for_resource]{list_tags_for_resource} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_list_web_ac_ls]{list_web_ac_ls} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_list_xss_match_sets]{list_xss_match_sets} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_put_logging_configuration]{put_logging_configuration} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_put_permission_policy]{put_permission_policy} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_tag_resource]{tag_resource} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_untag_resource]{untag_resource} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_update_byte_match_set]{update_byte_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_update_geo_match_set]{update_geo_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_update_ip_set]{update_ip_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_update_rate_based_rule]{update_rate_based_rule} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_update_regex_match_set]{update_regex_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_update_regex_pattern_set]{update_regex_pattern_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_update_rule]{update_rule} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_update_rule_group]{update_rule_group} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_update_size_constraint_set]{update_size_constraint_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_update_sql_injection_match_set]{update_sql_injection_match_set} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_update_web_acl]{update_web_acl} \tab This is AWS WAF Classic documentation\cr
#'  \link[paws.security.identity.p1:wafregional_update_xss_match_set]{update_xss_match_set} \tab This is AWS WAF Classic documentation
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname wafregional
#' @export
wafregional <- function(config = list()) {
  paws.security.identity.p1::wafregional(config)
}

#' Access Analyzer
#'
#' @description
#' Identity and Access Management Access Analyzer helps identify potential
#' resource-access risks by enabling you to identify any policies that
#' grant access to an external principal. It does this by using logic-based
#' reasoning to analyze resource-based policies in your Amazon Web Services
#' environment. An external principal can be another Amazon Web Services
#' account, a root user, an IAM user or role, a federated user, an Amazon
#' Web Services service, or an anonymous user. You can also use IAM Access
#' Analyzer to preview and validate public and cross-account access to your
#' resources before deploying permissions changes. This guide describes the
#' Identity and Access Management Access Analyzer operations that you can
#' call programmatically. For general information about IAM Access
#' Analyzer, see [Identity and Access Management Access
#' Analyzer](https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html)
#' in the **IAM User Guide**.
#' 
#' To start using IAM Access Analyzer, you first need to create an
#' analyzer.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- accessanalyzer(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- accessanalyzer()
#' svc$apply_archive_rule(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:accessanalyzer_apply_archive_rule]{apply_archive_rule} \tab Retroactively applies the archive rule to existing findings that meet the archive rule criteria\cr
#'  \link[paws.security.identity.p2:accessanalyzer_cancel_policy_generation]{cancel_policy_generation} \tab Cancels the requested policy generation\cr
#'  \link[paws.security.identity.p2:accessanalyzer_create_access_preview]{create_access_preview} \tab Creates an access preview that allows you to preview IAM Access Analyzer findings for your resource before deploying resource permissions\cr
#'  \link[paws.security.identity.p2:accessanalyzer_create_analyzer]{create_analyzer} \tab Creates an analyzer for your account\cr
#'  \link[paws.security.identity.p2:accessanalyzer_create_archive_rule]{create_archive_rule} \tab Creates an archive rule for the specified analyzer\cr
#'  \link[paws.security.identity.p2:accessanalyzer_delete_analyzer]{delete_analyzer} \tab Deletes the specified analyzer\cr
#'  \link[paws.security.identity.p2:accessanalyzer_delete_archive_rule]{delete_archive_rule} \tab Deletes the specified archive rule\cr
#'  \link[paws.security.identity.p2:accessanalyzer_get_access_preview]{get_access_preview} \tab Retrieves information about an access preview for the specified analyzer\cr
#'  \link[paws.security.identity.p2:accessanalyzer_get_analyzed_resource]{get_analyzed_resource} \tab Retrieves information about a resource that was analyzed\cr
#'  \link[paws.security.identity.p2:accessanalyzer_get_analyzer]{get_analyzer} \tab Retrieves information about the specified analyzer\cr
#'  \link[paws.security.identity.p2:accessanalyzer_get_archive_rule]{get_archive_rule} \tab Retrieves information about an archive rule\cr
#'  \link[paws.security.identity.p2:accessanalyzer_get_finding]{get_finding} \tab Retrieves information about the specified finding\cr
#'  \link[paws.security.identity.p2:accessanalyzer_get_generated_policy]{get_generated_policy} \tab Retrieves the policy that was generated using StartPolicyGeneration\cr
#'  \link[paws.security.identity.p2:accessanalyzer_list_access_preview_findings]{list_access_preview_findings} \tab Retrieves a list of access preview findings generated by the specified access preview\cr
#'  \link[paws.security.identity.p2:accessanalyzer_list_access_previews]{list_access_previews} \tab Retrieves a list of access previews for the specified analyzer\cr
#'  \link[paws.security.identity.p2:accessanalyzer_list_analyzed_resources]{list_analyzed_resources} \tab Retrieves a list of resources of the specified type that have been analyzed by the specified analyzer\cr
#'  \link[paws.security.identity.p2:accessanalyzer_list_analyzers]{list_analyzers} \tab Retrieves a list of analyzers\cr
#'  \link[paws.security.identity.p2:accessanalyzer_list_archive_rules]{list_archive_rules} \tab Retrieves a list of archive rules created for the specified analyzer\cr
#'  \link[paws.security.identity.p2:accessanalyzer_list_findings]{list_findings} \tab Retrieves a list of findings generated by the specified analyzer\cr
#'  \link[paws.security.identity.p2:accessanalyzer_list_policy_generations]{list_policy_generations} \tab Lists all of the policy generations requested in the last seven days\cr
#'  \link[paws.security.identity.p2:accessanalyzer_list_tags_for_resource]{list_tags_for_resource} \tab Retrieves a list of tags applied to the specified resource\cr
#'  \link[paws.security.identity.p2:accessanalyzer_start_policy_generation]{start_policy_generation} \tab Starts the policy generation request\cr
#'  \link[paws.security.identity.p2:accessanalyzer_start_resource_scan]{start_resource_scan} \tab Immediately starts a scan of the policies applied to the specified resource\cr
#'  \link[paws.security.identity.p2:accessanalyzer_tag_resource]{tag_resource} \tab Adds a tag to the specified resource\cr
#'  \link[paws.security.identity.p2:accessanalyzer_untag_resource]{untag_resource} \tab Removes a tag from the specified resource\cr
#'  \link[paws.security.identity.p2:accessanalyzer_update_archive_rule]{update_archive_rule} \tab Updates the criteria and values for the specified archive rule\cr
#'  \link[paws.security.identity.p2:accessanalyzer_update_findings]{update_findings} \tab Updates the status for the specified findings\cr
#'  \link[paws.security.identity.p2:accessanalyzer_validate_policy]{validate_policy} \tab Requests the validation of a policy and returns a list of findings
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname accessanalyzer
#' @export
accessanalyzer <- function(config = list()) {
  paws.security.identity.p2::accessanalyzer(config)
}

#' AWS Account
#'
#' @description
#' Operations for Amazon Web Services Account Management
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- account(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- account()
#' svc$delete_alternate_contact(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:account_delete_alternate_contact]{delete_alternate_contact} \tab Deletes the specified alternate contact from an Amazon Web Services account\cr
#'  \link[paws.security.identity.p2:account_get_alternate_contact]{get_alternate_contact} \tab Retrieves the specified alternate contact attached to an Amazon Web Services account\cr
#'  \link[paws.security.identity.p2:account_get_contact_information]{get_contact_information} \tab Retrieves the primary contact information of an Amazon Web Services account\cr
#'  \link[paws.security.identity.p2:account_put_alternate_contact]{put_alternate_contact} \tab Modifies the specified alternate contact attached to an Amazon Web Services account\cr
#'  \link[paws.security.identity.p2:account_put_contact_information]{put_contact_information} \tab Updates the primary contact information of an Amazon Web Services account
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname account
#' @export
account <- function(config = list()) {
  paws.security.identity.p2::account(config)
}

#' AWS Certificate Manager
#'
#' @description
#' Amazon Web Services Certificate Manager
#' 
#' You can use Amazon Web Services Certificate Manager (ACM) to manage
#' SSL/TLS certificates for your Amazon Web Services-based websites and
#' applications. For more information about using ACM, see the [Amazon Web
#' Services Certificate Manager User
#' Guide](https://docs.aws.amazon.com/acm/latest/userguide/).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- acm(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- acm()
#' svc$add_tags_to_certificate(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:acm_add_tags_to_certificate]{add_tags_to_certificate} \tab Adds one or more tags to an ACM certificate\cr
#'  \link[paws.security.identity.p2:acm_delete_certificate]{delete_certificate} \tab Deletes a certificate and its associated private key\cr
#'  \link[paws.security.identity.p2:acm_describe_certificate]{describe_certificate} \tab Returns detailed metadata about the specified ACM certificate\cr
#'  \link[paws.security.identity.p2:acm_export_certificate]{export_certificate} \tab Exports a private certificate issued by a private certificate authority (CA) for use anywhere\cr
#'  \link[paws.security.identity.p2:acm_get_account_configuration]{get_account_configuration} \tab Returns the account configuration options associated with an Amazon Web Services account\cr
#'  \link[paws.security.identity.p2:acm_get_certificate]{get_certificate} \tab Retrieves an Amazon-issued certificate and its certificate chain\cr
#'  \link[paws.security.identity.p2:acm_import_certificate]{import_certificate} \tab Imports a certificate into Amazon Web Services Certificate Manager (ACM) to use with services that are integrated with ACM\cr
#'  \link[paws.security.identity.p2:acm_list_certificates]{list_certificates} \tab Retrieves a list of certificate ARNs and domain names\cr
#'  \link[paws.security.identity.p2:acm_list_tags_for_certificate]{list_tags_for_certificate} \tab Lists the tags that have been applied to the ACM certificate\cr
#'  \link[paws.security.identity.p2:acm_put_account_configuration]{put_account_configuration} \tab Adds or modifies account-level configurations in ACM\cr
#'  \link[paws.security.identity.p2:acm_remove_tags_from_certificate]{remove_tags_from_certificate} \tab Remove one or more tags from an ACM certificate\cr
#'  \link[paws.security.identity.p2:acm_renew_certificate]{renew_certificate} \tab Renews an eligible ACM certificate\cr
#'  \link[paws.security.identity.p2:acm_request_certificate]{request_certificate} \tab Requests an ACM certificate for use with other Amazon Web Services services\cr
#'  \link[paws.security.identity.p2:acm_resend_validation_email]{resend_validation_email} \tab Resends the email that requests domain ownership validation\cr
#'  \link[paws.security.identity.p2:acm_update_certificate_options]{update_certificate_options} \tab Updates a certificate
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname acm
#' @export
acm <- function(config = list()) {
  paws.security.identity.p2::acm(config)
}

#' AWS Certificate Manager Private Certificate Authority
#'
#' @description
#' This is the *Certificate Manager Private Certificate Authority (PCA) API
#' Reference*. It provides descriptions, syntax, and usage examples for
#' each of the actions and data types involved in creating and managing a
#' private certificate authority (CA) for your organization.
#' 
#' The documentation for each action shows the API request parameters and
#' the JSON response. Alternatively, you can use one of the Amazon Web
#' Services SDKs to access an API that is tailored to the programming
#' language or platform that you prefer. For more information, see [Amazon
#' Web Services SDKs](https://aws.amazon.com/developer/tools/#SDKs).
#' 
#' Each ACM Private CA API operation has a quota that determines the number
#' of times the operation can be called per second. ACM Private CA
#' throttles API requests at different rates depending on the operation.
#' Throttling means that ACM Private CA rejects an otherwise valid request
#' because the request exceeds the operation's quota for the number of
#' requests per second. When a request is throttled, ACM Private CA returns
#' a ThrottlingException error. ACM Private CA does not guarantee a minimum
#' request rate for APIs.
#' 
#' To see an up-to-date list of your ACM Private CA quotas, or to request a
#' quota increase, log into your Amazon Web Services account and visit the
#' Service Quotas console.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- acmpca(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- acmpca()
#' svc$create_certificate_authority(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:acmpca_create_certificate_authority]{create_certificate_authority} \tab Creates a root or subordinate private certificate authority (CA)\cr
#'  \link[paws.security.identity.p2:acmpca_create_certificate_authority_audit_report]{create_certificate_authority_audit_report} \tab Creates an audit report that lists every time that your CA private key is used\cr
#'  \link[paws.security.identity.p2:acmpca_create_permission]{create_permission} \tab Grants one or more permissions on a private CA to the Certificate Manager (ACM) service principal (acm\cr
#'  \link[paws.security.identity.p2:acmpca_delete_certificate_authority]{delete_certificate_authority} \tab Deletes a private certificate authority (CA)\cr
#'  \link[paws.security.identity.p2:acmpca_delete_permission]{delete_permission} \tab Revokes permissions on a private CA granted to the Certificate Manager (ACM) service principal (acm\cr
#'  \link[paws.security.identity.p2:acmpca_delete_policy]{delete_policy} \tab Deletes the resource-based policy attached to a private CA\cr
#'  \link[paws.security.identity.p2:acmpca_describe_certificate_authority]{describe_certificate_authority} \tab Lists information about your private certificate authority (CA) or one that has been shared with you\cr
#'  \link[paws.security.identity.p2:acmpca_describe_certificate_authority_audit_report]{describe_certificate_authority_audit_report} \tab Lists information about a specific audit report created by calling the CreateCertificateAuthorityAuditReport action\cr
#'  \link[paws.security.identity.p2:acmpca_get_certificate]{get_certificate} \tab Retrieves a certificate from your private CA or one that has been shared with you\cr
#'  \link[paws.security.identity.p2:acmpca_get_certificate_authority_certificate]{get_certificate_authority_certificate} \tab Retrieves the certificate and certificate chain for your private certificate authority (CA) or one that has been shared with you\cr
#'  \link[paws.security.identity.p2:acmpca_get_certificate_authority_csr]{get_certificate_authority_csr} \tab Retrieves the certificate signing request (CSR) for your private certificate authority (CA)\cr
#'  \link[paws.security.identity.p2:acmpca_get_policy]{get_policy} \tab Retrieves the resource-based policy attached to a private CA\cr
#'  \link[paws.security.identity.p2:acmpca_import_certificate_authority_certificate]{import_certificate_authority_certificate} \tab Imports a signed private CA certificate into ACM Private CA\cr
#'  \link[paws.security.identity.p2:acmpca_issue_certificate]{issue_certificate} \tab Uses your private certificate authority (CA), or one that has been shared with you, to issue a client certificate\cr
#'  \link[paws.security.identity.p2:acmpca_list_certificate_authorities]{list_certificate_authorities} \tab Lists the private certificate authorities that you created by using the CreateCertificateAuthority action\cr
#'  \link[paws.security.identity.p2:acmpca_list_permissions]{list_permissions} \tab List all permissions on a private CA, if any, granted to the Certificate Manager (ACM) service principal (acm\cr
#'  \link[paws.security.identity.p2:acmpca_list_tags]{list_tags} \tab Lists the tags, if any, that are associated with your private CA or one that has been shared with you\cr
#'  \link[paws.security.identity.p2:acmpca_put_policy]{put_policy} \tab Attaches a resource-based policy to a private CA\cr
#'  \link[paws.security.identity.p2:acmpca_restore_certificate_authority]{restore_certificate_authority} \tab Restores a certificate authority (CA) that is in the DELETED state\cr
#'  \link[paws.security.identity.p2:acmpca_revoke_certificate]{revoke_certificate} \tab Revokes a certificate that was issued inside ACM Private CA\cr
#'  \link[paws.security.identity.p2:acmpca_tag_certificate_authority]{tag_certificate_authority} \tab Adds one or more tags to your private CA\cr
#'  \link[paws.security.identity.p2:acmpca_untag_certificate_authority]{untag_certificate_authority} \tab Remove one or more tags from your private CA\cr
#'  \link[paws.security.identity.p2:acmpca_update_certificate_authority]{update_certificate_authority} \tab Updates the status or configuration of a private certificate authority (CA)
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname acmpca
#' @export
acmpca <- function(config = list()) {
  paws.security.identity.p2::acmpca(config)
}

#' Amazon CloudHSM
#'
#' @description
#' AWS CloudHSM Service
#' 
#' This is documentation for **AWS CloudHSM Classic**. For more
#' information, see [AWS CloudHSM Classic
#' FAQs](https://aws.amazon.com/cloudhsm/faqs/), the [AWS CloudHSM Classic
#' User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/),
#' and the [AWS CloudHSM Classic API
#' Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).
#' 
#' **For information about the current version of AWS CloudHSM**, see [AWS
#' CloudHSM](https://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
#' Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the
#' [AWS CloudHSM API
#' Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- cloudhsm(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- cloudhsm()
#' svc$add_tags_to_resource(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:cloudhsm_add_tags_to_resource]{add_tags_to_resource} \tab This is documentation for AWS CloudHSM Classic\cr
#'  \link[paws.security.identity.p2:cloudhsm_create_hapg]{create_hapg} \tab This is documentation for AWS CloudHSM Classic\cr
#'  \link[paws.security.identity.p2:cloudhsm_create_hsm]{create_hsm} \tab This is documentation for AWS CloudHSM Classic\cr
#'  \link[paws.security.identity.p2:cloudhsm_create_luna_client]{create_luna_client} \tab This is documentation for AWS CloudHSM Classic\cr
#'  \link[paws.security.identity.p2:cloudhsm_delete_hapg]{delete_hapg} \tab This is documentation for AWS CloudHSM Classic\cr
#'  \link[paws.security.identity.p2:cloudhsm_delete_hsm]{delete_hsm} \tab This is documentation for AWS CloudHSM Classic\cr
#'  \link[paws.security.identity.p2:cloudhsm_delete_luna_client]{delete_luna_client} \tab This is documentation for AWS CloudHSM Classic\cr
#'  \link[paws.security.identity.p2:cloudhsm_describe_hapg]{describe_hapg} \tab This is documentation for AWS CloudHSM Classic\cr
#'  \link[paws.security.identity.p2:cloudhsm_describe_hsm]{describe_hsm} \tab This is documentation for AWS CloudHSM Classic\cr
#'  \link[paws.security.identity.p2:cloudhsm_describe_luna_client]{describe_luna_client} \tab This is documentation for AWS CloudHSM Classic\cr
#'  \link[paws.security.identity.p2:cloudhsm_get_config]{get_config} \tab This is documentation for AWS CloudHSM Classic\cr
#'  \link[paws.security.identity.p2:cloudhsm_list_available_zones]{list_available_zones} \tab This is documentation for AWS CloudHSM Classic\cr
#'  \link[paws.security.identity.p2:cloudhsm_list_hapgs]{list_hapgs} \tab This is documentation for AWS CloudHSM Classic\cr
#'  \link[paws.security.identity.p2:cloudhsm_list_hsms]{list_hsms} \tab This is documentation for AWS CloudHSM Classic\cr
#'  \link[paws.security.identity.p2:cloudhsm_list_luna_clients]{list_luna_clients} \tab This is documentation for AWS CloudHSM Classic\cr
#'  \link[paws.security.identity.p2:cloudhsm_list_tags_for_resource]{list_tags_for_resource} \tab This is documentation for AWS CloudHSM Classic\cr
#'  \link[paws.security.identity.p2:cloudhsm_modify_hapg]{modify_hapg} \tab This is documentation for AWS CloudHSM Classic\cr
#'  \link[paws.security.identity.p2:cloudhsm_modify_hsm]{modify_hsm} \tab This is documentation for AWS CloudHSM Classic\cr
#'  \link[paws.security.identity.p2:cloudhsm_modify_luna_client]{modify_luna_client} \tab This is documentation for AWS CloudHSM Classic\cr
#'  \link[paws.security.identity.p2:cloudhsm_remove_tags_from_resource]{remove_tags_from_resource} \tab This is documentation for AWS CloudHSM Classic
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname cloudhsm
#' @export
cloudhsm <- function(config = list()) {
  paws.security.identity.p2::cloudhsm(config)
}

#' AWS CloudHSM V2
#'
#' @description
#' For more information about AWS CloudHSM, see [AWS
#' CloudHSM](https://aws.amazon.com/cloudhsm/) and the [AWS CloudHSM User
#' Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- cloudhsmv2(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- cloudhsmv2()
#' svc$copy_backup_to_region(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:cloudhsmv2_copy_backup_to_region]{copy_backup_to_region} \tab Copy an AWS CloudHSM cluster backup to a different region\cr
#'  \link[paws.security.identity.p2:cloudhsmv2_create_cluster]{create_cluster} \tab Creates a new AWS CloudHSM cluster\cr
#'  \link[paws.security.identity.p2:cloudhsmv2_create_hsm]{create_hsm} \tab Creates a new hardware security module (HSM) in the specified AWS CloudHSM cluster\cr
#'  \link[paws.security.identity.p2:cloudhsmv2_delete_backup]{delete_backup} \tab Deletes a specified AWS CloudHSM backup\cr
#'  \link[paws.security.identity.p2:cloudhsmv2_delete_cluster]{delete_cluster} \tab Deletes the specified AWS CloudHSM cluster\cr
#'  \link[paws.security.identity.p2:cloudhsmv2_delete_hsm]{delete_hsm} \tab Deletes the specified HSM\cr
#'  \link[paws.security.identity.p2:cloudhsmv2_describe_backups]{describe_backups} \tab Gets information about backups of AWS CloudHSM clusters\cr
#'  \link[paws.security.identity.p2:cloudhsmv2_describe_clusters]{describe_clusters} \tab Gets information about AWS CloudHSM clusters\cr
#'  \link[paws.security.identity.p2:cloudhsmv2_initialize_cluster]{initialize_cluster} \tab Claims an AWS CloudHSM cluster by submitting the cluster certificate issued by your issuing certificate authority (CA) and the CA's root certificate\cr
#'  \link[paws.security.identity.p2:cloudhsmv2_list_tags]{list_tags} \tab Gets a list of tags for the specified AWS CloudHSM cluster\cr
#'  \link[paws.security.identity.p2:cloudhsmv2_modify_backup_attributes]{modify_backup_attributes} \tab Modifies attributes for AWS CloudHSM backup\cr
#'  \link[paws.security.identity.p2:cloudhsmv2_modify_cluster]{modify_cluster} \tab Modifies AWS CloudHSM cluster\cr
#'  \link[paws.security.identity.p2:cloudhsmv2_restore_backup]{restore_backup} \tab Restores a specified AWS CloudHSM backup that is in the PENDING_DELETION state\cr
#'  \link[paws.security.identity.p2:cloudhsmv2_tag_resource]{tag_resource} \tab Adds or overwrites one or more tags for the specified AWS CloudHSM cluster\cr
#'  \link[paws.security.identity.p2:cloudhsmv2_untag_resource]{untag_resource} \tab Removes the specified tag or tags from the specified AWS CloudHSM cluster
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname cloudhsmv2
#' @export
cloudhsmv2 <- function(config = list()) {
  paws.security.identity.p2::cloudhsmv2(config)
}

#' Amazon Cognito Identity
#'
#' @description
#' Amazon Cognito Federated Identities
#' 
#' Amazon Cognito Federated Identities is a web service that delivers
#' scoped temporary credentials to mobile devices and other untrusted
#' environments. It uniquely identifies a device and supplies the user with
#' a consistent identity over the lifetime of an application.
#' 
#' Using Amazon Cognito Federated Identities, you can enable authentication
#' with one or more third-party identity providers (Facebook, Google, or
#' Login with Amazon) or an Amazon Cognito user pool, and you can also
#' choose to support unauthenticated access from your app. Cognito delivers
#' a unique identifier for each user and acts as an OpenID token provider
#' trusted by AWS Security Token Service (STS) to access temporary,
#' limited-privilege AWS credentials.
#' 
#' For a description of the authentication flow from the Amazon Cognito
#' Developer Guide see [Authentication
#' Flow](https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html).
#' 
#' For more information see [Amazon Cognito Federated
#' Identities](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- cognitoidentity(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- cognitoidentity()
#' svc$create_identity_pool(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:cognitoidentity_create_identity_pool]{create_identity_pool} \tab Creates a new identity pool\cr
#'  \link[paws.security.identity.p2:cognitoidentity_delete_identities]{delete_identities} \tab Deletes identities from an identity pool\cr
#'  \link[paws.security.identity.p2:cognitoidentity_delete_identity_pool]{delete_identity_pool} \tab Deletes an identity pool\cr
#'  \link[paws.security.identity.p2:cognitoidentity_describe_identity]{describe_identity} \tab Returns metadata related to the given identity, including when the identity was created and any associated linked logins\cr
#'  \link[paws.security.identity.p2:cognitoidentity_describe_identity_pool]{describe_identity_pool} \tab Gets details about a particular identity pool, including the pool name, ID description, creation date, and current number of users\cr
#'  \link[paws.security.identity.p2:cognitoidentity_get_credentials_for_identity]{get_credentials_for_identity} \tab Returns credentials for the provided identity ID\cr
#'  \link[paws.security.identity.p2:cognitoidentity_get_id]{get_id} \tab Generates (or retrieves) a Cognito ID\cr
#'  \link[paws.security.identity.p2:cognitoidentity_get_identity_pool_roles]{get_identity_pool_roles} \tab Gets the roles for an identity pool\cr
#'  \link[paws.security.identity.p2:cognitoidentity_get_open_id_token]{get_open_id_token} \tab Gets an OpenID token, using a known Cognito ID\cr
#'  \link[paws.security.identity.p2:cognitoidentity_get_open_id_token_for_developer_identity]{get_open_id_token_for_developer_identity} \tab Registers (or retrieves) a Cognito IdentityId and an OpenID Connect token for a user authenticated by your backend authentication process\cr
#'  \link[paws.security.identity.p2:cognitoidentity_get_principal_tag_attribute_map]{get_principal_tag_attribute_map} \tab Use GetPrincipalTagAttributeMap to list all mappings between PrincipalTags and user attributes\cr
#'  \link[paws.security.identity.p2:cognitoidentity_list_identities]{list_identities} \tab Lists the identities in an identity pool\cr
#'  \link[paws.security.identity.p2:cognitoidentity_list_identity_pools]{list_identity_pools} \tab Lists all of the Cognito identity pools registered for your account\cr
#'  \link[paws.security.identity.p2:cognitoidentity_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags that are assigned to an Amazon Cognito identity pool\cr
#'  \link[paws.security.identity.p2:cognitoidentity_lookup_developer_identity]{lookup_developer_identity} \tab Retrieves the IdentityID associated with a DeveloperUserIdentifier or the list of DeveloperUserIdentifier values associated with an IdentityId for an existing identity\cr
#'  \link[paws.security.identity.p2:cognitoidentity_merge_developer_identities]{merge_developer_identities} \tab Merges two users having different IdentityIds, existing in the same identity pool, and identified by the same developer provider\cr
#'  \link[paws.security.identity.p2:cognitoidentity_set_identity_pool_roles]{set_identity_pool_roles} \tab Sets the roles for an identity pool\cr
#'  \link[paws.security.identity.p2:cognitoidentity_set_principal_tag_attribute_map]{set_principal_tag_attribute_map} \tab You can use this operation to use default (username and clientID) attribute or custom attribute mappings\cr
#'  \link[paws.security.identity.p2:cognitoidentity_tag_resource]{tag_resource} \tab Assigns a set of tags to the specified Amazon Cognito identity pool\cr
#'  \link[paws.security.identity.p2:cognitoidentity_unlink_developer_identity]{unlink_developer_identity} \tab Unlinks a DeveloperUserIdentifier from an existing identity\cr
#'  \link[paws.security.identity.p2:cognitoidentity_unlink_identity]{unlink_identity} \tab Unlinks a federated identity from an existing account\cr
#'  \link[paws.security.identity.p2:cognitoidentity_untag_resource]{untag_resource} \tab Removes the specified tags from the specified Amazon Cognito identity pool\cr
#'  \link[paws.security.identity.p2:cognitoidentity_update_identity_pool]{update_identity_pool} \tab Updates an identity pool
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname cognitoidentity
#' @export
cognitoidentity <- function(config = list()) {
  paws.security.identity.p2::cognitoidentity(config)
}

#' Amazon Cognito Sync
#'
#' @description
#' Amazon Cognito Sync provides an AWS service and client library that
#' enable cross-device syncing of application-related user data. High-level
#' client libraries are available for both iOS and Android. You can use
#' these libraries to persist data locally so that it's available even if
#' the device is offline. Developer credentials don't need to be stored on
#' the mobile device to access the service. You can use Amazon Cognito to
#' obtain a normalized user ID and credentials. User data is persisted in a
#' dataset that can store up to 1 MB of key-value pairs, and you can have
#' up to 20 datasets per user identity.
#' 
#' With Amazon Cognito Sync, the data stored for each identity is
#' accessible only to credentials assigned to that identity. In order to
#' use the Cognito Sync service, you need to make API calls using
#' credentials retrieved with [Amazon Cognito Identity
#' service](https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html).
#' 
#' If you want to use Cognito Sync in an Android or iOS application, you
#' will probably want to make API calls via the AWS Mobile SDK. To learn
#' more, see the [Developer Guide for
#' Android](https://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/)
#' and the Developer Guide for iOS.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- cognitosync(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- cognitosync()
#' svc$bulk_publish(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:cognitosync_bulk_publish]{bulk_publish} \tab Initiates a bulk publish of all existing datasets for an Identity Pool to the configured stream\cr
#'  \link[paws.security.identity.p2:cognitosync_delete_dataset]{delete_dataset} \tab Deletes the specific dataset\cr
#'  \link[paws.security.identity.p2:cognitosync_describe_dataset]{describe_dataset} \tab Gets meta data about a dataset by identity and dataset name\cr
#'  \link[paws.security.identity.p2:cognitosync_describe_identity_pool_usage]{describe_identity_pool_usage} \tab Gets usage details (for example, data storage) about a particular identity pool\cr
#'  \link[paws.security.identity.p2:cognitosync_describe_identity_usage]{describe_identity_usage} \tab Gets usage information for an identity, including number of datasets and data usage\cr
#'  \link[paws.security.identity.p2:cognitosync_get_bulk_publish_details]{get_bulk_publish_details} \tab Get the status of the last BulkPublish operation for an identity pool\cr
#'  \link[paws.security.identity.p2:cognitosync_get_cognito_events]{get_cognito_events} \tab Gets the events and the corresponding Lambda functions associated with an identity pool\cr
#'  \link[paws.security.identity.p2:cognitosync_get_identity_pool_configuration]{get_identity_pool_configuration} \tab Gets the configuration settings of an identity pool\cr
#'  \link[paws.security.identity.p2:cognitosync_list_datasets]{list_datasets} \tab Lists datasets for an identity\cr
#'  \link[paws.security.identity.p2:cognitosync_list_identity_pool_usage]{list_identity_pool_usage} \tab Gets a list of identity pools registered with Cognito\cr
#'  \link[paws.security.identity.p2:cognitosync_list_records]{list_records} \tab Gets paginated records, optionally changed after a particular sync count for a dataset and identity\cr
#'  \link[paws.security.identity.p2:cognitosync_register_device]{register_device} \tab Registers a device to receive push sync notifications\cr
#'  \link[paws.security.identity.p2:cognitosync_set_cognito_events]{set_cognito_events} \tab Sets the AWS Lambda function for a given event type for an identity pool\cr
#'  \link[paws.security.identity.p2:cognitosync_set_identity_pool_configuration]{set_identity_pool_configuration} \tab Sets the necessary configuration for push sync\cr
#'  \link[paws.security.identity.p2:cognitosync_subscribe_to_dataset]{subscribe_to_dataset} \tab Subscribes to receive notifications when a dataset is modified by another device\cr
#'  \link[paws.security.identity.p2:cognitosync_unsubscribe_from_dataset]{unsubscribe_from_dataset} \tab Unsubscribes from receiving notifications when a dataset is modified by another device\cr
#'  \link[paws.security.identity.p2:cognitosync_update_records]{update_records} \tab Posts updates to records and adds and deletes records for a dataset and user
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname cognitosync
#' @export
cognitosync <- function(config = list()) {
  paws.security.identity.p2::cognitosync(config)
}

#' Amazon Detective
#'
#' @description
#' Detective uses machine learning and purpose-built visualizations to help
#' you to analyze and investigate security issues across your Amazon Web
#' Services (Amazon Web Services) workloads. Detective automatically
#' extracts time-based events such as login attempts, API calls, and
#' network traffic from CloudTrail and Amazon Virtual Private Cloud (Amazon
#' VPC) flow logs. It also extracts findings detected by Amazon GuardDuty.
#' 
#' The Detective API primarily supports the creation and management of
#' behavior graphs. A behavior graph contains the extracted data from a set
#' of member accounts, and is created and managed by an administrator
#' account.
#' 
#' To add a member account to the behavior graph, the administrator account
#' sends an invitation to the account. When the account accepts the
#' invitation, it becomes a member account in the behavior graph.
#' 
#' Detective is also integrated with Organizations. The organization
#' management account designates the Detective administrator account for
#' the organization. That account becomes the administrator account for the
#' organization behavior graph. The Detective administrator account is also
#' the delegated administrator account for Detective in Organizations.
#' 
#' The Detective administrator account can enable any organization account
#' as a member account in the organization behavior graph. The organization
#' accounts do not receive invitations. The Detective administrator account
#' can also invite other accounts to the organization behavior graph.
#' 
#' Every behavior graph is specific to a Region. You can only use the API
#' to manage behavior graphs that belong to the Region that is associated
#' with the currently selected endpoint.
#' 
#' The administrator account for a behavior graph can use the Detective API
#' to do the following:
#' 
#' -   Enable and disable Detective. Enabling Detective creates a new
#'     behavior graph.
#' 
#' -   View the list of member accounts in a behavior graph.
#' 
#' -   Add member accounts to a behavior graph.
#' 
#' -   Remove member accounts from a behavior graph.
#' 
#' -   Apply tags to a behavior graph.
#' 
#' The organization management account can use the Detective API to select
#' the delegated administrator for Detective.
#' 
#' The Detective administrator account for an organization can use the
#' Detective API to do the following:
#' 
#' -   Perform all of the functions of an administrator account.
#' 
#' -   Determine whether to automatically enable new organization accounts
#'     as member accounts in the organization behavior graph.
#' 
#' An invited member account can use the Detective API to do the following:
#' 
#' -   View the list of behavior graphs that they are invited to.
#' 
#' -   Accept an invitation to contribute to a behavior graph.
#' 
#' -   Decline an invitation to contribute to a behavior graph.
#' 
#' -   Remove their account from a behavior graph.
#' 
#' All API actions are logged as CloudTrail events. See [Logging Detective
#' API Calls with
#' CloudTrail](https://docs.aws.amazon.com/detective/latest/adminguide/logging-using-cloudtrail.html).
#' 
#' We replaced the term "master account" with the term "administrator
#' account." An administrator account is used to centrally manage multiple
#' accounts. In the case of Detective, the administrator account manages
#' the accounts in their behavior graph.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- detective(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- detective()
#' svc$accept_invitation(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:detective_accept_invitation]{accept_invitation} \tab Accepts an invitation for the member account to contribute data to a behavior graph\cr
#'  \link[paws.security.identity.p2:detective_batch_get_graph_member_datasources]{batch_get_graph_member_datasources} \tab Gets data source package information for the behavior graph\cr
#'  \link[paws.security.identity.p2:detective_batch_get_membership_datasources]{batch_get_membership_datasources} \tab Gets information on the data source package history for an account\cr
#'  \link[paws.security.identity.p2:detective_create_graph]{create_graph} \tab Creates a new behavior graph for the calling account, and sets that account as the administrator account\cr
#'  \link[paws.security.identity.p2:detective_create_members]{create_members} \tab CreateMembers is used to send invitations to accounts\cr
#'  \link[paws.security.identity.p2:detective_delete_graph]{delete_graph} \tab Disables the specified behavior graph and queues it to be deleted\cr
#'  \link[paws.security.identity.p2:detective_delete_members]{delete_members} \tab Removes the specified member accounts from the behavior graph\cr
#'  \link[paws.security.identity.p2:detective_describe_organization_configuration]{describe_organization_configuration} \tab Returns information about the configuration for the organization behavior graph\cr
#'  \link[paws.security.identity.p2:detective_disable_organization_admin_account]{disable_organization_admin_account} \tab Removes the Detective administrator account in the current Region\cr
#'  \link[paws.security.identity.p2:detective_disassociate_membership]{disassociate_membership} \tab Removes the member account from the specified behavior graph\cr
#'  \link[paws.security.identity.p2:detective_enable_organization_admin_account]{enable_organization_admin_account} \tab Designates the Detective administrator account for the organization in the current Region\cr
#'  \link[paws.security.identity.p2:detective_get_members]{get_members} \tab Returns the membership details for specified member accounts for a behavior graph\cr
#'  \link[paws.security.identity.p2:detective_list_datasource_packages]{list_datasource_packages} \tab Lists data source packages in the behavior graph\cr
#'  \link[paws.security.identity.p2:detective_list_graphs]{list_graphs} \tab Returns the list of behavior graphs that the calling account is an administrator account of\cr
#'  \link[paws.security.identity.p2:detective_list_invitations]{list_invitations} \tab Retrieves the list of open and accepted behavior graph invitations for the member account\cr
#'  \link[paws.security.identity.p2:detective_list_members]{list_members} \tab Retrieves the list of member accounts for a behavior graph\cr
#'  \link[paws.security.identity.p2:detective_list_organization_admin_accounts]{list_organization_admin_accounts} \tab Returns information about the Detective administrator account for an organization\cr
#'  \link[paws.security.identity.p2:detective_list_tags_for_resource]{list_tags_for_resource} \tab Returns the tag values that are assigned to a behavior graph\cr
#'  \link[paws.security.identity.p2:detective_reject_invitation]{reject_invitation} \tab Rejects an invitation to contribute the account data to a behavior graph\cr
#'  \link[paws.security.identity.p2:detective_start_monitoring_member]{start_monitoring_member} \tab Sends a request to enable data ingest for a member account that has a status of ACCEPTED_BUT_DISABLED\cr
#'  \link[paws.security.identity.p2:detective_tag_resource]{tag_resource} \tab Applies tag values to a behavior graph\cr
#'  \link[paws.security.identity.p2:detective_untag_resource]{untag_resource} \tab Removes tags from a behavior graph\cr
#'  \link[paws.security.identity.p2:detective_update_datasource_packages]{update_datasource_packages} \tab Starts a data source packages for the behavior graph\cr
#'  \link[paws.security.identity.p2:detective_update_organization_configuration]{update_organization_configuration} \tab Updates the configuration for the Organizations integration in the current Region
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname detective
#' @export
detective <- function(config = list()) {
  paws.security.identity.p2::detective(config)
}

#' Firewall Management Service
#'
#' @description
#' This is the *Firewall Manager API Reference*. This guide is for
#' developers who need detailed information about the Firewall Manager API
#' actions, data types, and errors. For detailed information about Firewall
#' Manager features, see the [Firewall Manager Developer
#' Guide](https://docs.aws.amazon.com/waf/latest/developerguide/fms-chapter.html).
#' 
#' Some API actions require explicit resource permissions. For information,
#' see the developer guide topic [Firewall Manager required permissions for
#' API
#' actions](https://docs.aws.amazon.com/waf/latest/developerguide/fms-api-permissions-ref.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- fms(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- fms()
#' svc$associate_admin_account(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:fms_associate_admin_account]{associate_admin_account} \tab Sets the Firewall Manager administrator account\cr
#'  \link[paws.security.identity.p2:fms_associate_third_party_firewall]{associate_third_party_firewall} \tab Sets the Firewall Manager policy administrator as a tenant administrator of a third-party firewall service\cr
#'  \link[paws.security.identity.p2:fms_delete_apps_list]{delete_apps_list} \tab Permanently deletes an Firewall Manager applications list\cr
#'  \link[paws.security.identity.p2:fms_delete_notification_channel]{delete_notification_channel} \tab Deletes an Firewall Manager association with the IAM role and the Amazon Simple Notification Service (SNS) topic that is used to record Firewall Manager SNS logs\cr
#'  \link[paws.security.identity.p2:fms_delete_policy]{delete_policy} \tab Permanently deletes an Firewall Manager policy\cr
#'  \link[paws.security.identity.p2:fms_delete_protocols_list]{delete_protocols_list} \tab Permanently deletes an Firewall Manager protocols list\cr
#'  \link[paws.security.identity.p2:fms_disassociate_admin_account]{disassociate_admin_account} \tab Disassociates the account that has been set as the Firewall Manager administrator account\cr
#'  \link[paws.security.identity.p2:fms_disassociate_third_party_firewall]{disassociate_third_party_firewall} \tab Disassociates a Firewall Manager policy administrator from a third-party firewall tenant\cr
#'  \link[paws.security.identity.p2:fms_get_admin_account]{get_admin_account} \tab Returns the Organizations account that is associated with Firewall Manager as the Firewall Manager administrator\cr
#'  \link[paws.security.identity.p2:fms_get_apps_list]{get_apps_list} \tab Returns information about the specified Firewall Manager applications list\cr
#'  \link[paws.security.identity.p2:fms_get_compliance_detail]{get_compliance_detail} \tab Returns detailed compliance information about the specified member account\cr
#'  \link[paws.security.identity.p2:fms_get_notification_channel]{get_notification_channel} \tab Information about the Amazon Simple Notification Service (SNS) topic that is used to record Firewall Manager SNS logs\cr
#'  \link[paws.security.identity.p2:fms_get_policy]{get_policy} \tab Returns information about the specified Firewall Manager policy\cr
#'  \link[paws.security.identity.p2:fms_get_protection_status]{get_protection_status} \tab If you created a Shield Advanced policy, returns policy-level attack summary information in the event of a potential DDoS attack\cr
#'  \link[paws.security.identity.p2:fms_get_protocols_list]{get_protocols_list} \tab Returns information about the specified Firewall Manager protocols list\cr
#'  \link[paws.security.identity.p2:fms_get_third_party_firewall_association_status]{get_third_party_firewall_association_status} \tab The onboarding status of a Firewall Manager admin account to third-party firewall vendor tenant\cr
#'  \link[paws.security.identity.p2:fms_get_violation_details]{get_violation_details} \tab Retrieves violations for a resource based on the specified Firewall Manager policy and Amazon Web Services account\cr
#'  \link[paws.security.identity.p2:fms_list_apps_lists]{list_apps_lists} \tab Returns an array of AppsListDataSummary objects\cr
#'  \link[paws.security.identity.p2:fms_list_compliance_status]{list_compliance_status} \tab Returns an array of PolicyComplianceStatus objects\cr
#'  \link[paws.security.identity.p2:fms_list_member_accounts]{list_member_accounts} \tab Returns a MemberAccounts object that lists the member accounts in the administrator's Amazon Web Services organization\cr
#'  \link[paws.security.identity.p2:fms_list_policies]{list_policies} \tab Returns an array of PolicySummary objects\cr
#'  \link[paws.security.identity.p2:fms_list_protocols_lists]{list_protocols_lists} \tab Returns an array of ProtocolsListDataSummary objects\cr
#'  \link[paws.security.identity.p2:fms_list_tags_for_resource]{list_tags_for_resource} \tab Retrieves the list of tags for the specified Amazon Web Services resource\cr
#'  \link[paws.security.identity.p2:fms_list_third_party_firewall_firewall_policies]{list_third_party_firewall_firewall_policies} \tab Retrieves a list of all of the third-party firewall policies that are associated with the third-party firewall administrator's account\cr
#'  \link[paws.security.identity.p2:fms_put_apps_list]{put_apps_list} \tab Creates an Firewall Manager applications list\cr
#'  \link[paws.security.identity.p2:fms_put_notification_channel]{put_notification_channel} \tab Designates the IAM role and Amazon Simple Notification Service (SNS) topic that Firewall Manager uses to record SNS logs\cr
#'  \link[paws.security.identity.p2:fms_put_policy]{put_policy} \tab Creates an Firewall Manager policy\cr
#'  \link[paws.security.identity.p2:fms_put_protocols_list]{put_protocols_list} \tab Creates an Firewall Manager protocols list\cr
#'  \link[paws.security.identity.p2:fms_tag_resource]{tag_resource} \tab Adds one or more tags to an Amazon Web Services resource\cr
#'  \link[paws.security.identity.p2:fms_untag_resource]{untag_resource} \tab Removes one or more tags from an Amazon Web Services resource
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname fms
#' @export
fms <- function(config = list()) {
  paws.security.identity.p2::fms(config)
}

#' IAM Roles Anywhere
#'
#' @description
#' AWS Identity and Access Management Roles Anywhere provides a secure way
#' for your workloads such as servers, containers, and applications running
#' outside of AWS to obtain Temporary AWS credentials. Your workloads can
#' use the same IAM policies and roles that you have configured with native
#' AWS applications to access AWS resources. Using IAM Roles Anywhere will
#' eliminate the need to manage long term credentials for workloads running
#' outside of AWS.
#' 
#' To use IAM Roles Anywhere customer workloads will need to use X.509
#' certificates issued by their Certificate Authority (CA) . The
#' Certificate Authority (CA) needs to be registered with IAM Roles
#' Anywhere as a trust anchor to establish trust between customer PKI and
#' IAM Roles Anywhere. Customers who do not manage their own PKI system can
#' use AWS Certificate Manager Private Certificate Authority (ACM PCA) to
#' create a Certificate Authority and use that to establish trust with IAM
#' Roles Anywhere
#' 
#' This guide describes the IAM rolesanywhere operations that you can call
#' programmatically. For general information about IAM Roles Anywhere see
#' <https://docs.aws.amazon.com/>
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- iamrolesanywhere(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- iamrolesanywhere()
#' svc$create_profile(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:iamrolesanywhere_create_profile]{create_profile} \tab Creates a profile\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_create_trust_anchor]{create_trust_anchor} \tab Creates a trust anchor\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_delete_crl]{delete_crl} \tab Deletes a certificate revocation list (CRL)\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_delete_profile]{delete_profile} \tab Deletes a profile\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_delete_trust_anchor]{delete_trust_anchor} \tab Deletes a trust anchor\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_disable_crl]{disable_crl} \tab Disables a certificate revocation list (CRL)\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_disable_profile]{disable_profile} \tab Disables a profile\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_disable_trust_anchor]{disable_trust_anchor} \tab Disables a trust anchor\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_enable_crl]{enable_crl} \tab Enables a certificate revocation list (CRL)\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_enable_profile]{enable_profile} \tab Enables the roles in a profile to receive session credentials in CreateSession\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_enable_trust_anchor]{enable_trust_anchor} \tab Enables a trust anchor\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_get_crl]{get_crl} \tab Gets a certificate revocation list (CRL)\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_get_profile]{get_profile} \tab Gets a profile\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_get_subject]{get_subject} \tab Gets a Subject\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_get_trust_anchor]{get_trust_anchor} \tab Gets a trust anchor\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_import_crl]{import_crl} \tab Imports the certificate revocation list (CRL)\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_list_crls]{list_crls} \tab Lists all Crls in the authenticated account and Amazon Web Services Region\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_list_profiles]{list_profiles} \tab Lists all profiles in the authenticated account and Amazon Web Services Region\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_list_subjects]{list_subjects} \tab Lists the subjects in the authenticated account and Amazon Web Services Region\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags attached to the resource\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_list_trust_anchors]{list_trust_anchors} \tab Lists the trust anchors in the authenticated account and Amazon Web Services Region\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_tag_resource]{tag_resource} \tab Attaches tags to a resource\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_untag_resource]{untag_resource} \tab Removes tags from the resource\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_update_crl]{update_crl} \tab Updates the certificate revocation list (CRL)\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_update_profile]{update_profile} \tab Updates the profile\cr
#'  \link[paws.security.identity.p2:iamrolesanywhere_update_trust_anchor]{update_trust_anchor} \tab Updates the trust anchor
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname iamrolesanywhere
#' @export
iamrolesanywhere <- function(config = list()) {
  paws.security.identity.p2::iamrolesanywhere(config)
}

#' AWS SSO Identity Store
#'
#' @description
#' The identity store service used by Amazon Web Services Single Sign On
#' provides a single place to retrieve all of your identities (users and
#' groups). For more information, see the [Amazon Web Services SSO User
#' Guide](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- identitystore(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- identitystore()
#' svc$describe_group(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:identitystore_describe_group]{describe_group} \tab Retrieves the group metadata and attributes from GroupId in an identity store\cr
#'  \link[paws.security.identity.p2:identitystore_describe_user]{describe_user} \tab Retrieves the user metadata and attributes from UserId in an identity store\cr
#'  \link[paws.security.identity.p2:identitystore_list_groups]{list_groups} \tab Lists the attribute name and value of the group that you specified in the search\cr
#'  \link[paws.security.identity.p2:identitystore_list_users]{list_users} \tab Lists the attribute name and value of the user that you specified in the search
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname identitystore
#' @export
identitystore <- function(config = list()) {
  paws.security.identity.p2::identitystore(config)
}

#' Amazon Inspector
#'
#' @description
#' Amazon Inspector enables you to analyze the behavior of your AWS
#' resources and to identify potential security issues. For more
#' information, see [Amazon Inspector User
#' Guide](https://docs.aws.amazon.com/inspector/v1/userguide/inspector_introduction.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- inspector(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- inspector()
#' # Assigns attributes (key and value pairs) to the findings that are
#' # specified by the ARNs of the findings.
#' svc$add_attributes_to_findings(
#'   attributes = list(
#'     list(
#'       key = "Example",
#'       value = "example"
#'     )
#'   ),
#'   findingArns = list(
#'     "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-..."
#'   )
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:inspector_add_attributes_to_findings]{add_attributes_to_findings} \tab Assigns attributes (key and value pairs) to the findings that are specified by the ARNs of the findings\cr
#'  \link[paws.security.identity.p2:inspector_create_assessment_target]{create_assessment_target} \tab Creates a new assessment target using the ARN of the resource group that is generated by CreateResourceGroup\cr
#'  \link[paws.security.identity.p2:inspector_create_assessment_template]{create_assessment_template} \tab Creates an assessment template for the assessment target that is specified by the ARN of the assessment target\cr
#'  \link[paws.security.identity.p2:inspector_create_exclusions_preview]{create_exclusions_preview} \tab Starts the generation of an exclusions preview for the specified assessment template\cr
#'  \link[paws.security.identity.p2:inspector_create_resource_group]{create_resource_group} \tab Creates a resource group using the specified set of tags (key and value pairs) that are used to select the EC2 instances to be included in an Amazon Inspector assessment target\cr
#'  \link[paws.security.identity.p2:inspector_delete_assessment_run]{delete_assessment_run} \tab Deletes the assessment run that is specified by the ARN of the assessment run\cr
#'  \link[paws.security.identity.p2:inspector_delete_assessment_target]{delete_assessment_target} \tab Deletes the assessment target that is specified by the ARN of the assessment target\cr
#'  \link[paws.security.identity.p2:inspector_delete_assessment_template]{delete_assessment_template} \tab Deletes the assessment template that is specified by the ARN of the assessment template\cr
#'  \link[paws.security.identity.p2:inspector_describe_assessment_runs]{describe_assessment_runs} \tab Describes the assessment runs that are specified by the ARNs of the assessment runs\cr
#'  \link[paws.security.identity.p2:inspector_describe_assessment_targets]{describe_assessment_targets} \tab Describes the assessment targets that are specified by the ARNs of the assessment targets\cr
#'  \link[paws.security.identity.p2:inspector_describe_assessment_templates]{describe_assessment_templates} \tab Describes the assessment templates that are specified by the ARNs of the assessment templates\cr
#'  \link[paws.security.identity.p2:inspector_describe_cross_account_access_role]{describe_cross_account_access_role} \tab Describes the IAM role that enables Amazon Inspector to access your AWS account\cr
#'  \link[paws.security.identity.p2:inspector_describe_exclusions]{describe_exclusions} \tab Describes the exclusions that are specified by the exclusions' ARNs\cr
#'  \link[paws.security.identity.p2:inspector_describe_findings]{describe_findings} \tab Describes the findings that are specified by the ARNs of the findings\cr
#'  \link[paws.security.identity.p2:inspector_describe_resource_groups]{describe_resource_groups} \tab Describes the resource groups that are specified by the ARNs of the resource groups\cr
#'  \link[paws.security.identity.p2:inspector_describe_rules_packages]{describe_rules_packages} \tab Describes the rules packages that are specified by the ARNs of the rules packages\cr
#'  \link[paws.security.identity.p2:inspector_get_assessment_report]{get_assessment_report} \tab Produces an assessment report that includes detailed and comprehensive results of a specified assessment run\cr
#'  \link[paws.security.identity.p2:inspector_get_exclusions_preview]{get_exclusions_preview} \tab Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by the preview token\cr
#'  \link[paws.security.identity.p2:inspector_get_telemetry_metadata]{get_telemetry_metadata} \tab Information about the data that is collected for the specified assessment run\cr
#'  \link[paws.security.identity.p2:inspector_list_assessment_run_agents]{list_assessment_run_agents} \tab Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs\cr
#'  \link[paws.security.identity.p2:inspector_list_assessment_runs]{list_assessment_runs} \tab Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates\cr
#'  \link[paws.security.identity.p2:inspector_list_assessment_targets]{list_assessment_targets} \tab Lists the ARNs of the assessment targets within this AWS account\cr
#'  \link[paws.security.identity.p2:inspector_list_assessment_templates]{list_assessment_templates} \tab Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets\cr
#'  \link[paws.security.identity.p2:inspector_list_event_subscriptions]{list_event_subscriptions} \tab Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template\cr
#'  \link[paws.security.identity.p2:inspector_list_exclusions]{list_exclusions} \tab List exclusions that are generated by the assessment run\cr
#'  \link[paws.security.identity.p2:inspector_list_findings]{list_findings} \tab Lists findings that are generated by the assessment runs that are specified by the ARNs of the assessment runs\cr
#'  \link[paws.security.identity.p2:inspector_list_rules_packages]{list_rules_packages} \tab Lists all available Amazon Inspector rules packages\cr
#'  \link[paws.security.identity.p2:inspector_list_tags_for_resource]{list_tags_for_resource} \tab Lists all tags associated with an assessment template\cr
#'  \link[paws.security.identity.p2:inspector_preview_agents]{preview_agents} \tab Previews the agents installed on the EC2 instances that are part of the specified assessment target\cr
#'  \link[paws.security.identity.p2:inspector_register_cross_account_access_role]{register_cross_account_access_role} \tab Registers the IAM role that grants Amazon Inspector access to AWS Services needed to perform security assessments\cr
#'  \link[paws.security.identity.p2:inspector_remove_attributes_from_findings]{remove_attributes_from_findings} \tab Removes entire attributes (key and value pairs) from the findings that are specified by the ARNs of the findings where an attribute with the specified key exists\cr
#'  \link[paws.security.identity.p2:inspector_set_tags_for_resource]{set_tags_for_resource} \tab Sets tags (key and value pairs) to the assessment template that is specified by the ARN of the assessment template\cr
#'  \link[paws.security.identity.p2:inspector_start_assessment_run]{start_assessment_run} \tab Starts the assessment run specified by the ARN of the assessment template\cr
#'  \link[paws.security.identity.p2:inspector_stop_assessment_run]{stop_assessment_run} \tab Stops the assessment run that is specified by the ARN of the assessment run\cr
#'  \link[paws.security.identity.p2:inspector_subscribe_to_event]{subscribe_to_event} \tab Enables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic\cr
#'  \link[paws.security.identity.p2:inspector_unsubscribe_from_event]{unsubscribe_from_event} \tab Disables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic\cr
#'  \link[paws.security.identity.p2:inspector_update_assessment_target]{update_assessment_target} \tab Updates the assessment target that is specified by the ARN of the assessment target
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname inspector
#' @export
inspector <- function(config = list()) {
  paws.security.identity.p2::inspector(config)
}

#' Inspector2
#'
#' @description
#' Amazon Inspector is a vulnerability discovery service that automates
#' continuous scanning for security vulnerabilities within your Amazon EC2
#' and Amazon ECR environments.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- inspector2(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- inspector2()
#' svc$associate_member(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:inspector2_associate_member]{associate_member} \tab Associates an Amazon Web Services account with an Amazon Inspector delegated administrator\cr
#'  \link[paws.security.identity.p2:inspector2_batch_get_account_status]{batch_get_account_status} \tab Retrieves the Amazon Inspector status of multiple Amazon Web Services accounts within your environment\cr
#'  \link[paws.security.identity.p2:inspector2_batch_get_free_trial_info]{batch_get_free_trial_info} \tab Gets free trial status for multiple Amazon Web Services accounts\cr
#'  \link[paws.security.identity.p2:inspector2_cancel_findings_report]{cancel_findings_report} \tab Cancels the given findings report\cr
#'  \link[paws.security.identity.p2:inspector2_create_filter]{create_filter} \tab Creates a filter resource using specified filter criteria\cr
#'  \link[paws.security.identity.p2:inspector2_create_findings_report]{create_findings_report} \tab Creates a finding report\cr
#'  \link[paws.security.identity.p2:inspector2_delete_filter]{delete_filter} \tab Deletes a filter resource\cr
#'  \link[paws.security.identity.p2:inspector2_describe_organization_configuration]{describe_organization_configuration} \tab Describe Amazon Inspector configuration settings for an Amazon Web Services organization\cr
#'  \link[paws.security.identity.p2:inspector2_disable]{disable} \tab Disables Amazon Inspector scans for one or more Amazon Web Services accounts\cr
#'  \link[paws.security.identity.p2:inspector2_disable_delegated_admin_account]{disable_delegated_admin_account} \tab Disables the Amazon Inspector delegated administrator for your organization\cr
#'  \link[paws.security.identity.p2:inspector2_disassociate_member]{disassociate_member} \tab Disassociates a member account from an Amazon Inspector delegated administrator\cr
#'  \link[paws.security.identity.p2:inspector2_enable]{enable} \tab Enables Amazon Inspector scans for one or more Amazon Web Services accounts\cr
#'  \link[paws.security.identity.p2:inspector2_enable_delegated_admin_account]{enable_delegated_admin_account} \tab Enables the Amazon Inspector delegated administrator for your Organizations organization\cr
#'  \link[paws.security.identity.p2:inspector2_get_configuration]{get_configuration} \tab Retrieves setting configurations for Inspector scans\cr
#'  \link[paws.security.identity.p2:inspector2_get_delegated_admin_account]{get_delegated_admin_account} \tab Retrieves information about the Amazon Inspector delegated administrator for your organization\cr
#'  \link[paws.security.identity.p2:inspector2_get_findings_report_status]{get_findings_report_status} \tab Gets the status of a findings report\cr
#'  \link[paws.security.identity.p2:inspector2_get_member]{get_member} \tab Gets member information for your organization\cr
#'  \link[paws.security.identity.p2:inspector2_list_account_permissions]{list_account_permissions} \tab Lists the permissions an account has to configure Amazon Inspector\cr
#'  \link[paws.security.identity.p2:inspector2_list_coverage]{list_coverage} \tab Lists coverage details for you environment\cr
#'  \link[paws.security.identity.p2:inspector2_list_coverage_statistics]{list_coverage_statistics} \tab Lists Amazon Inspector coverage statistics for your environment\cr
#'  \link[paws.security.identity.p2:inspector2_list_delegated_admin_accounts]{list_delegated_admin_accounts} \tab Lists information about the Amazon Inspector delegated administrator of your organization\cr
#'  \link[paws.security.identity.p2:inspector2_list_filters]{list_filters} \tab Lists the filters associated with your account\cr
#'  \link[paws.security.identity.p2:inspector2_list_finding_aggregations]{list_finding_aggregations} \tab Lists aggregated finding data for your environment based on specific criteria\cr
#'  \link[paws.security.identity.p2:inspector2_list_findings]{list_findings} \tab Lists findings for your environment\cr
#'  \link[paws.security.identity.p2:inspector2_list_members]{list_members} \tab List members associated with the Amazon Inspector delegated administrator for your organization\cr
#'  \link[paws.security.identity.p2:inspector2_list_tags_for_resource]{list_tags_for_resource} \tab Lists all tags attached to a given resource\cr
#'  \link[paws.security.identity.p2:inspector2_list_usage_totals]{list_usage_totals} \tab Lists the Amazon Inspector usage totals over the last 30 days\cr
#'  \link[paws.security.identity.p2:inspector2_tag_resource]{tag_resource} \tab Adds tags to a resource\cr
#'  \link[paws.security.identity.p2:inspector2_untag_resource]{untag_resource} \tab Removes tags from a resource\cr
#'  \link[paws.security.identity.p2:inspector2_update_configuration]{update_configuration} \tab Updates setting configurations for your Amazon Inspector account\cr
#'  \link[paws.security.identity.p2:inspector2_update_filter]{update_filter} \tab Specifies the action that is to be applied to the findings that match the filter\cr
#'  \link[paws.security.identity.p2:inspector2_update_organization_configuration]{update_organization_configuration} \tab Updates the configurations for your Amazon Inspector organization
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname inspector2
#' @export
inspector2 <- function(config = list()) {
  paws.security.identity.p2::inspector2(config)
}

#' Amazon Macie
#'
#' @description
#' Amazon Macie Classic
#' 
#' Amazon Macie Classic has been discontinued and is no longer available.
#' 
#' A new Amazon Macie is now available with significant design improvements
#' and additional features, at a lower price and in most Amazon Web
#' Services Regions. We encourage you to take advantage of the new and
#' improved features, and benefit from the reduced cost. To learn about
#' features and pricing for the new Macie, see [Amazon
#' Macie](https://aws.amazon.com/macie/). To learn how to use the new
#' Macie, see the [Amazon Macie User
#' Guide](https://docs.aws.amazon.com/macie/latest/user/what-is-macie.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- macie(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- macie()
#' svc$associate_member_account(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:macie_associate_member_account]{associate_member_account} \tab (Discontinued) Associates a specified Amazon Web Services account with Amazon Macie Classic as a member account\cr
#'  \link[paws.security.identity.p2:macie_associate_s3_resources]{associate_s3_resources} \tab (Discontinued) Associates specified S3 resources with Amazon Macie Classic for monitoring and data classification\cr
#'  \link[paws.security.identity.p2:macie_disassociate_member_account]{disassociate_member_account} \tab (Discontinued) Removes the specified member account from Amazon Macie Classic\cr
#'  \link[paws.security.identity.p2:macie_disassociate_s3_resources]{disassociate_s3_resources} \tab (Discontinued) Removes specified S3 resources from being monitored by Amazon Macie Classic\cr
#'  \link[paws.security.identity.p2:macie_list_member_accounts]{list_member_accounts} \tab (Discontinued) Lists all Amazon Macie Classic member accounts for the current Macie Classic administrator account\cr
#'  \link[paws.security.identity.p2:macie_list_s3_resources]{list_s3_resources} \tab (Discontinued) Lists all the S3 resources associated with Amazon Macie Classic\cr
#'  \link[paws.security.identity.p2:macie_update_s3_resources]{update_s3_resources} \tab (Discontinued) Updates the classification types for the specified S3 resources
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname macie
#' @export
macie <- function(config = list()) {
  paws.security.identity.p2::macie(config)
}

#' Amazon Macie 2
#'
#' @description
#' Amazon Macie is a fully managed data security and data privacy service
#' that uses machine learning and pattern matching to discover and protect
#' your sensitive data in AWS. Macie automates the discovery of sensitive
#' data, such as PII and intellectual property, to provide you with insight
#' into the data that your organization stores in AWS. Macie also provides
#' an inventory of your Amazon S3 buckets, which it continually monitors
#' for you. If Macie detects sensitive data or potential data access
#' issues, it generates detailed findings for you to review and act upon as
#' necessary.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- macie2(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- macie2()
#' svc$accept_invitation(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:macie2_accept_invitation]{accept_invitation} \tab Accepts an Amazon Macie membership invitation that was received from a specific account\cr
#'  \link[paws.security.identity.p2:macie2_batch_get_custom_data_identifiers]{batch_get_custom_data_identifiers} \tab Retrieves information about one or more custom data identifiers\cr
#'  \link[paws.security.identity.p2:macie2_create_classification_job]{create_classification_job} \tab Creates and defines the settings for a classification job\cr
#'  \link[paws.security.identity.p2:macie2_create_custom_data_identifier]{create_custom_data_identifier} \tab Creates and defines the criteria and other settings for a custom data identifier\cr
#'  \link[paws.security.identity.p2:macie2_create_findings_filter]{create_findings_filter} \tab Creates and defines the criteria and other settings for a findings filter\cr
#'  \link[paws.security.identity.p2:macie2_create_invitations]{create_invitations} \tab Sends an Amazon Macie membership invitation to one or more accounts\cr
#'  \link[paws.security.identity.p2:macie2_create_member]{create_member} \tab Associates an account with an Amazon Macie administrator account\cr
#'  \link[paws.security.identity.p2:macie2_create_sample_findings]{create_sample_findings} \tab Creates sample findings\cr
#'  \link[paws.security.identity.p2:macie2_decline_invitations]{decline_invitations} \tab Declines Amazon Macie membership invitations that were received from specific accounts\cr
#'  \link[paws.security.identity.p2:macie2_delete_custom_data_identifier]{delete_custom_data_identifier} \tab Soft deletes a custom data identifier\cr
#'  \link[paws.security.identity.p2:macie2_delete_findings_filter]{delete_findings_filter} \tab Deletes a findings filter\cr
#'  \link[paws.security.identity.p2:macie2_delete_invitations]{delete_invitations} \tab Deletes Amazon Macie membership invitations that were received from specific accounts\cr
#'  \link[paws.security.identity.p2:macie2_delete_member]{delete_member} \tab Deletes the association between an Amazon Macie administrator account and an account\cr
#'  \link[paws.security.identity.p2:macie2_describe_buckets]{describe_buckets} \tab Retrieves (queries) statistical data and other information about one or more S3 buckets that Amazon Macie monitors and analyzes\cr
#'  \link[paws.security.identity.p2:macie2_describe_classification_job]{describe_classification_job} \tab Retrieves the status and settings for a classification job\cr
#'  \link[paws.security.identity.p2:macie2_describe_organization_configuration]{describe_organization_configuration} \tab Retrieves the Amazon Macie configuration settings for an organization in Organizations\cr
#'  \link[paws.security.identity.p2:macie2_disable_macie]{disable_macie} \tab Disables Amazon Macie and deletes all settings and resources for a Macie account\cr
#'  \link[paws.security.identity.p2:macie2_disable_organization_admin_account]{disable_organization_admin_account} \tab Disables an account as the delegated Amazon Macie administrator account for an organization in Organizations\cr
#'  \link[paws.security.identity.p2:macie2_disassociate_from_administrator_account]{disassociate_from_administrator_account} \tab Disassociates a member account from its Amazon Macie administrator account\cr
#'  \link[paws.security.identity.p2:macie2_disassociate_from_master_account]{disassociate_from_master_account} \tab (Deprecated) Disassociates a member account from its Amazon Macie administrator account\cr
#'  \link[paws.security.identity.p2:macie2_disassociate_member]{disassociate_member} \tab Disassociates an Amazon Macie administrator account from a member account\cr
#'  \link[paws.security.identity.p2:macie2_enable_macie]{enable_macie} \tab Enables Amazon Macie and specifies the configuration settings for a Macie account\cr
#'  \link[paws.security.identity.p2:macie2_enable_organization_admin_account]{enable_organization_admin_account} \tab Designates an account as the delegated Amazon Macie administrator account for an organization in Organizations\cr
#'  \link[paws.security.identity.p2:macie2_get_administrator_account]{get_administrator_account} \tab Retrieves information about the Amazon Macie administrator account for an account\cr
#'  \link[paws.security.identity.p2:macie2_get_bucket_statistics]{get_bucket_statistics} \tab Retrieves (queries) aggregated statistical data about S3 buckets that Amazon Macie monitors and analyzes\cr
#'  \link[paws.security.identity.p2:macie2_get_classification_export_configuration]{get_classification_export_configuration} \tab Retrieves the configuration settings for storing data classification results\cr
#'  \link[paws.security.identity.p2:macie2_get_custom_data_identifier]{get_custom_data_identifier} \tab Retrieves the criteria and other settings for a custom data identifier\cr
#'  \link[paws.security.identity.p2:macie2_get_findings]{get_findings} \tab Retrieves the details of one or more findings\cr
#'  \link[paws.security.identity.p2:macie2_get_findings_filter]{get_findings_filter} \tab Retrieves the criteria and other settings for a findings filter\cr
#'  \link[paws.security.identity.p2:macie2_get_findings_publication_configuration]{get_findings_publication_configuration} \tab Retrieves the configuration settings for publishing findings to Security Hub\cr
#'  \link[paws.security.identity.p2:macie2_get_finding_statistics]{get_finding_statistics} \tab Retrieves (queries) aggregated statistical data about findings\cr
#'  \link[paws.security.identity.p2:macie2_get_invitations_count]{get_invitations_count} \tab Retrieves the count of Amazon Macie membership invitations that were received by an account\cr
#'  \link[paws.security.identity.p2:macie2_get_macie_session]{get_macie_session} \tab Retrieves the current status and configuration settings for an Amazon Macie account\cr
#'  \link[paws.security.identity.p2:macie2_get_master_account]{get_master_account} \tab (Deprecated) Retrieves information about the Amazon Macie administrator account for an account\cr
#'  \link[paws.security.identity.p2:macie2_get_member]{get_member} \tab Retrieves information about an account that's associated with an Amazon Macie administrator account\cr
#'  \link[paws.security.identity.p2:macie2_get_reveal_configuration]{get_reveal_configuration} \tab Retrieves the status and configuration settings for retrieving (revealing) occurrences of sensitive data reported by findings\cr
#'  \link[paws.security.identity.p2:macie2_get_sensitive_data_occurrences]{get_sensitive_data_occurrences} \tab Retrieves (reveals) occurrences of sensitive data reported by a finding\cr
#'  \link[paws.security.identity.p2:macie2_get_sensitive_data_occurrences_availability]{get_sensitive_data_occurrences_availability} \tab Checks whether occurrences of sensitive data can be retrieved (revealed) for a finding\cr
#'  \link[paws.security.identity.p2:macie2_get_usage_statistics]{get_usage_statistics} \tab Retrieves (queries) quotas and aggregated usage data for one or more accounts\cr
#'  \link[paws.security.identity.p2:macie2_get_usage_totals]{get_usage_totals} \tab Retrieves (queries) aggregated usage data for an account\cr
#'  \link[paws.security.identity.p2:macie2_list_classification_jobs]{list_classification_jobs} \tab Retrieves a subset of information about one or more classification jobs\cr
#'  \link[paws.security.identity.p2:macie2_list_custom_data_identifiers]{list_custom_data_identifiers} \tab Retrieves a subset of information about all the custom data identifiers for an account\cr
#'  \link[paws.security.identity.p2:macie2_list_findings]{list_findings} \tab Retrieves a subset of information about one or more findings\cr
#'  \link[paws.security.identity.p2:macie2_list_findings_filters]{list_findings_filters} \tab Retrieves a subset of information about all the findings filters for an account\cr
#'  \link[paws.security.identity.p2:macie2_list_invitations]{list_invitations} \tab Retrieves information about the Amazon Macie membership invitations that were received by an account\cr
#'  \link[paws.security.identity.p2:macie2_list_managed_data_identifiers]{list_managed_data_identifiers} \tab Retrieves information about all the managed data identifiers that Amazon Macie currently provides\cr
#'  \link[paws.security.identity.p2:macie2_list_members]{list_members} \tab Retrieves information about the accounts that are associated with an Amazon Macie administrator account\cr
#'  \link[paws.security.identity.p2:macie2_list_organization_admin_accounts]{list_organization_admin_accounts} \tab Retrieves information about the delegated Amazon Macie administrator account for an organization in Organizations\cr
#'  \link[paws.security.identity.p2:macie2_list_tags_for_resource]{list_tags_for_resource} \tab Retrieves the tags (keys and values) that are associated with a classification job, custom data identifier, findings filter, or member account\cr
#'  \link[paws.security.identity.p2:macie2_put_classification_export_configuration]{put_classification_export_configuration} \tab Creates or updates the configuration settings for storing data classification results\cr
#'  \link[paws.security.identity.p2:macie2_put_findings_publication_configuration]{put_findings_publication_configuration} \tab Updates the configuration settings for publishing findings to Security Hub\cr
#'  \link[paws.security.identity.p2:macie2_search_resources]{search_resources} \tab Retrieves (queries) statistical data and other information about Amazon Web Services resources that Amazon Macie monitors and analyzes\cr
#'  \link[paws.security.identity.p2:macie2_tag_resource]{tag_resource} \tab Adds or updates one or more tags (keys and values) that are associated with a classification job, custom data identifier, findings filter, or member account\cr
#'  \link[paws.security.identity.p2:macie2_test_custom_data_identifier]{test_custom_data_identifier} \tab Tests a custom data identifier\cr
#'  \link[paws.security.identity.p2:macie2_untag_resource]{untag_resource} \tab Removes one or more tags (keys and values) from a classification job, custom data identifier, findings filter, or member account\cr
#'  \link[paws.security.identity.p2:macie2_update_classification_job]{update_classification_job} \tab Changes the status of a classification job\cr
#'  \link[paws.security.identity.p2:macie2_update_findings_filter]{update_findings_filter} \tab Updates the criteria and other settings for a findings filter\cr
#'  \link[paws.security.identity.p2:macie2_update_macie_session]{update_macie_session} \tab Suspends or re-enables Amazon Macie, or updates the configuration settings for a Macie account\cr
#'  \link[paws.security.identity.p2:macie2_update_member_session]{update_member_session} \tab Enables an Amazon Macie administrator to suspend or re-enable Macie for a member account\cr
#'  \link[paws.security.identity.p2:macie2_update_organization_configuration]{update_organization_configuration} \tab Updates the Amazon Macie configuration settings for an organization in Organizations\cr
#'  \link[paws.security.identity.p2:macie2_update_reveal_configuration]{update_reveal_configuration} \tab Updates the status and configuration settings for retrieving (revealing) occurrences of sensitive data reported by findings
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname macie2
#' @export
macie2 <- function(config = list()) {
  paws.security.identity.p2::macie2(config)
}

#' AWS Resource Access Manager
#'
#' @description
#' This is the *Resource Access Manager API Reference*. This documentation
#' provides descriptions and syntax for each of the actions and data types
#' in RAM. RAM is a service that helps you securely share your Amazon Web
#' Services resources across Amazon Web Services accounts. If you have
#' multiple Amazon Web Services accounts, you can use RAM to share those
#' resources with other accounts. If you use Organizations to manage your
#' accounts, then you share your resources with your organization or
#' organizational units (OUs). For supported resource types, you can also
#' share resources with individual Identity and Access Management (IAM)
#' roles an users.
#' 
#' To learn more about RAM, see the following resources:
#' 
#' -   [Resource Access Manager product page](https://aws.amazon.com/ram/)
#' 
#' -   [Resource Access Manager User
#'     Guide](https://docs.aws.amazon.com/ram/latest/userguide/)
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- ram(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- ram()
#' svc$accept_resource_share_invitation(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:ram_accept_resource_share_invitation]{accept_resource_share_invitation} \tab Accepts an invitation to a resource share from another Amazon Web Services account\cr
#'  \link[paws.security.identity.p2:ram_associate_resource_share]{associate_resource_share} \tab Adds the specified list of principals and list of resources to a resource share\cr
#'  \link[paws.security.identity.p2:ram_associate_resource_share_permission]{associate_resource_share_permission} \tab Adds or replaces the RAM permission for a resource type included in a resource share\cr
#'  \link[paws.security.identity.p2:ram_create_resource_share]{create_resource_share} \tab Creates a resource share\cr
#'  \link[paws.security.identity.p2:ram_delete_resource_share]{delete_resource_share} \tab Deletes the specified resource share\cr
#'  \link[paws.security.identity.p2:ram_disassociate_resource_share]{disassociate_resource_share} \tab Disassociates the specified principals or resources from the specified resource share\cr
#'  \link[paws.security.identity.p2:ram_disassociate_resource_share_permission]{disassociate_resource_share_permission} \tab Disassociates an RAM permission from a resource share\cr
#'  \link[paws.security.identity.p2:ram_enable_sharing_with_aws_organization]{enable_sharing_with_aws_organization} \tab Enables resource sharing within your organization in Organizations\cr
#'  \link[paws.security.identity.p2:ram_get_permission]{get_permission} \tab Gets the contents of an RAM permission in JSON format\cr
#'  \link[paws.security.identity.p2:ram_get_resource_policies]{get_resource_policies} \tab Retrieves the resource policies for the specified resources that you own and have shared\cr
#'  \link[paws.security.identity.p2:ram_get_resource_share_associations]{get_resource_share_associations} \tab Retrieves the resource and principal associations for resource shares that you own\cr
#'  \link[paws.security.identity.p2:ram_get_resource_share_invitations]{get_resource_share_invitations} \tab Retrieves details about invitations that you have received for resource shares\cr
#'  \link[paws.security.identity.p2:ram_get_resource_shares]{get_resource_shares} \tab Retrieves details about the resource shares that you own or that are shared with you\cr
#'  \link[paws.security.identity.p2:ram_list_pending_invitation_resources]{list_pending_invitation_resources} \tab Lists the resources in a resource share that is shared with you but for which the invitation is still PENDING\cr
#'  \link[paws.security.identity.p2:ram_list_permissions]{list_permissions} \tab Retrieves a list of available RAM permissions that you can use for the supported resource types\cr
#'  \link[paws.security.identity.p2:ram_list_permission_versions]{list_permission_versions} \tab Lists the available versions of the specified RAM permission\cr
#'  \link[paws.security.identity.p2:ram_list_principals]{list_principals} \tab Lists the principals that you are sharing resources with or that are sharing resources with you\cr
#'  \link[paws.security.identity.p2:ram_list_resources]{list_resources} \tab Lists the resources that you added to a resource share or the resources that are shared with you\cr
#'  \link[paws.security.identity.p2:ram_list_resource_share_permissions]{list_resource_share_permissions} \tab Lists the RAM permissions that are associated with a resource share\cr
#'  \link[paws.security.identity.p2:ram_list_resource_types]{list_resource_types} \tab Lists the resource types that can be shared by RAM\cr
#'  \link[paws.security.identity.p2:ram_promote_resource_share_created_from_policy]{promote_resource_share_created_from_policy} \tab When you attach a resource-based permission policy to a resource, it automatically creates a resource share\cr
#'  \link[paws.security.identity.p2:ram_reject_resource_share_invitation]{reject_resource_share_invitation} \tab Rejects an invitation to a resource share from another Amazon Web Services account\cr
#'  \link[paws.security.identity.p2:ram_tag_resource]{tag_resource} \tab Adds the specified tag keys and values to the specified resource share\cr
#'  \link[paws.security.identity.p2:ram_untag_resource]{untag_resource} \tab Removes the specified tag key and value pairs from the specified resource share\cr
#'  \link[paws.security.identity.p2:ram_update_resource_share]{update_resource_share} \tab Modifies some of the properties of the specified resource share
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname ram
#' @export
ram <- function(config = list()) {
  paws.security.identity.p2::ram(config)
}

#' AWS Secrets Manager
#'
#' @description
#' Amazon Web Services Secrets Manager
#' 
#' Amazon Web Services Secrets Manager provides a service to enable you to
#' store, manage, and retrieve, secrets.
#' 
#' This guide provides descriptions of the Secrets Manager API. For more
#' information about using this service, see the [Amazon Web Services
#' Secrets Manager User
#' Guide](https://docs.aws.amazon.com/secretsmanager/latest/userguide/).
#' 
#' **API Version**
#' 
#' This version of the Secrets Manager API Reference documents the Secrets
#' Manager API version 2017-10-17.
#' 
#' **Support and Feedback for Amazon Web Services Secrets Manager**
#' 
#' We welcome your feedback. Send your comments to
#' <awssecretsmanager-feedback@@amazon.com>, or post your feedback and
#' questions in the [Amazon Web Services Secrets Manager Discussion
#' Forum](https://repost.aws/tags/TAJAqKRtZ5RY6XCoNAUTcVzQ?forumID=296).
#' For more information about the Amazon Web Services Discussion Forums,
#' see [Forums Help](https://repost.aws/forums?origin=help.jspa).
#' 
#' **Logging API Requests**
#' 
#' Amazon Web Services Secrets Manager supports Amazon Web Services
#' CloudTrail, a service that records Amazon Web Services API calls for
#' your Amazon Web Services account and delivers log files to an Amazon S3
#' bucket. By using information that's collected by Amazon Web Services
#' CloudTrail, you can determine the requests successfully made to Secrets
#' Manager, who made the request, when it was made, and so on. For more
#' about Amazon Web Services Secrets Manager and support for Amazon Web
#' Services CloudTrail, see [Logging Amazon Web Services Secrets Manager
#' Events with Amazon Web Services
#' CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring.html#monitoring_cloudtrail)
#' in the *Amazon Web Services Secrets Manager User Guide*. To learn more
#' about CloudTrail, including enabling it and find your log files, see the
#' [Amazon Web Services CloudTrail User
#' Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- secretsmanager(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- secretsmanager()
#' # The following example shows how to cancel rotation for a secret. The
#' # operation sets the RotationEnabled field to false and cancels all
#' # scheduled rotations. To resume scheduled rotations, you must re-enable
#' # rotation by calling the rotate-secret operation.
#' svc$cancel_rotate_secret(
#'   SecretId = "MyTestDatabaseSecret"
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:secretsmanager_cancel_rotate_secret]{cancel_rotate_secret} \tab Turns off automatic rotation, and if a rotation is currently in progress, cancels the rotation\cr
#'  \link[paws.security.identity.p2:secretsmanager_create_secret]{create_secret} \tab Creates a new secret\cr
#'  \link[paws.security.identity.p2:secretsmanager_delete_resource_policy]{delete_resource_policy} \tab Deletes the resource-based permission policy attached to the secret\cr
#'  \link[paws.security.identity.p2:secretsmanager_delete_secret]{delete_secret} \tab Deletes a secret and all of its versions\cr
#'  \link[paws.security.identity.p2:secretsmanager_describe_secret]{describe_secret} \tab Retrieves the details of a secret\cr
#'  \link[paws.security.identity.p2:secretsmanager_get_random_password]{get_random_password} \tab Generates a random password\cr
#'  \link[paws.security.identity.p2:secretsmanager_get_resource_policy]{get_resource_policy} \tab Retrieves the JSON text of the resource-based policy document attached to the secret\cr
#'  \link[paws.security.identity.p2:secretsmanager_get_secret_value]{get_secret_value} \tab Retrieves the contents of the encrypted fields SecretString or SecretBinary from the specified version of a secret, whichever contains content\cr
#'  \link[paws.security.identity.p2:secretsmanager_list_secrets]{list_secrets} \tab Lists the secrets that are stored by Secrets Manager in the Amazon Web Services account, not including secrets that are marked for deletion\cr
#'  \link[paws.security.identity.p2:secretsmanager_list_secret_version_ids]{list_secret_version_ids} \tab Lists the versions of a secret\cr
#'  \link[paws.security.identity.p2:secretsmanager_put_resource_policy]{put_resource_policy} \tab Attaches a resource-based permission policy to a secret\cr
#'  \link[paws.security.identity.p2:secretsmanager_put_secret_value]{put_secret_value} \tab Creates a new version with a new encrypted secret value and attaches it to the secret\cr
#'  \link[paws.security.identity.p2:secretsmanager_remove_regions_from_replication]{remove_regions_from_replication} \tab For a secret that is replicated to other Regions, deletes the secret replicas from the Regions you specify\cr
#'  \link[paws.security.identity.p2:secretsmanager_replicate_secret_to_regions]{replicate_secret_to_regions} \tab Replicates the secret to a new Regions\cr
#'  \link[paws.security.identity.p2:secretsmanager_restore_secret]{restore_secret} \tab Cancels the scheduled deletion of a secret by removing the DeletedDate time stamp\cr
#'  \link[paws.security.identity.p2:secretsmanager_rotate_secret]{rotate_secret} \tab Configures and starts the asynchronous process of rotating the secret\cr
#'  \link[paws.security.identity.p2:secretsmanager_stop_replication_to_replica]{stop_replication_to_replica} \tab Removes the link between the replica secret and the primary secret and promotes the replica to a primary secret in the replica Region\cr
#'  \link[paws.security.identity.p2:secretsmanager_tag_resource]{tag_resource} \tab Attaches tags to a secret\cr
#'  \link[paws.security.identity.p2:secretsmanager_untag_resource]{untag_resource} \tab Removes specific tags from a secret\cr
#'  \link[paws.security.identity.p2:secretsmanager_update_secret]{update_secret} \tab Modifies the details of a secret, including metadata and the secret value\cr
#'  \link[paws.security.identity.p2:secretsmanager_update_secret_version_stage]{update_secret_version_stage} \tab Modifies the staging labels attached to a version of a secret\cr
#'  \link[paws.security.identity.p2:secretsmanager_validate_resource_policy]{validate_resource_policy} \tab Validates that a resource policy does not grant a wide range of principals access to your secret
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname secretsmanager
#' @export
secretsmanager <- function(config = list()) {
  paws.security.identity.p2::secretsmanager(config)
}

#' AWS Shield
#'
#' @description
#' Shield Advanced
#' 
#' This is the *Shield Advanced API Reference*. This guide is for
#' developers who need detailed information about the Shield Advanced API
#' actions, data types, and errors. For detailed information about WAF and
#' Shield Advanced features and an overview of how to use the WAF and
#' Shield Advanced APIs, see the [WAF and Shield Developer
#' Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- shield(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- shield()
#' svc$associate_drt_log_bucket(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:shield_associate_drt_log_bucket]{associate_drt_log_bucket} \tab Authorizes the Shield Response Team (SRT) to access the specified Amazon S3 bucket containing log data such as Application Load Balancer access logs, CloudFront logs, or logs from third party sources\cr
#'  \link[paws.security.identity.p2:shield_associate_drt_role]{associate_drt_role} \tab Authorizes the Shield Response Team (SRT) using the specified role, to access your Amazon Web Services account to assist with DDoS attack mitigation during potential attacks\cr
#'  \link[paws.security.identity.p2:shield_associate_health_check]{associate_health_check} \tab Adds health-based detection to the Shield Advanced protection for a resource\cr
#'  \link[paws.security.identity.p2:shield_associate_proactive_engagement_details]{associate_proactive_engagement_details} \tab Initializes proactive engagement and sets the list of contacts for the Shield Response Team (SRT) to use\cr
#'  \link[paws.security.identity.p2:shield_create_protection]{create_protection} \tab Enables Shield Advanced for a specific Amazon Web Services resource\cr
#'  \link[paws.security.identity.p2:shield_create_protection_group]{create_protection_group} \tab Creates a grouping of protected resources so they can be handled as a collective\cr
#'  \link[paws.security.identity.p2:shield_create_subscription]{create_subscription} \tab Activates Shield Advanced for an account\cr
#'  \link[paws.security.identity.p2:shield_delete_protection]{delete_protection} \tab Deletes an Shield Advanced Protection\cr
#'  \link[paws.security.identity.p2:shield_delete_protection_group]{delete_protection_group} \tab Removes the specified protection group\cr
#'  \link[paws.security.identity.p2:shield_delete_subscription]{delete_subscription} \tab Removes Shield Advanced from an account\cr
#'  \link[paws.security.identity.p2:shield_describe_attack]{describe_attack} \tab Describes the details of a DDoS attack\cr
#'  \link[paws.security.identity.p2:shield_describe_attack_statistics]{describe_attack_statistics} \tab Provides information about the number and type of attacks Shield has detected in the last year for all resources that belong to your account, regardless of whether you've defined Shield protections for them\cr
#'  \link[paws.security.identity.p2:shield_describe_drt_access]{describe_drt_access} \tab Returns the current role and list of Amazon S3 log buckets used by the Shield Response Team (SRT) to access your Amazon Web Services account while assisting with attack mitigation\cr
#'  \link[paws.security.identity.p2:shield_describe_emergency_contact_settings]{describe_emergency_contact_settings} \tab A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support\cr
#'  \link[paws.security.identity.p2:shield_describe_protection]{describe_protection} \tab Lists the details of a Protection object\cr
#'  \link[paws.security.identity.p2:shield_describe_protection_group]{describe_protection_group} \tab Returns the specification for the specified protection group\cr
#'  \link[paws.security.identity.p2:shield_describe_subscription]{describe_subscription} \tab Provides details about the Shield Advanced subscription for an account\cr
#'  \link[paws.security.identity.p2:shield_disable_application_layer_automatic_response]{disable_application_layer_automatic_response} \tab Disable the Shield Advanced automatic application layer DDoS mitigation feature for the protected resource\cr
#'  \link[paws.security.identity.p2:shield_disable_proactive_engagement]{disable_proactive_engagement} \tab Removes authorization from the Shield Response Team (SRT) to notify contacts about escalations to the SRT and to initiate proactive customer support\cr
#'  \link[paws.security.identity.p2:shield_disassociate_drt_log_bucket]{disassociate_drt_log_bucket} \tab Removes the Shield Response Team's (SRT) access to the specified Amazon S3 bucket containing the logs that you shared previously\cr
#'  \link[paws.security.identity.p2:shield_disassociate_drt_role]{disassociate_drt_role} \tab Removes the Shield Response Team's (SRT) access to your Amazon Web Services account\cr
#'  \link[paws.security.identity.p2:shield_disassociate_health_check]{disassociate_health_check} \tab Removes health-based detection from the Shield Advanced protection for a resource\cr
#'  \link[paws.security.identity.p2:shield_enable_application_layer_automatic_response]{enable_application_layer_automatic_response} \tab Enable the Shield Advanced automatic application layer DDoS mitigation for the protected resource\cr
#'  \link[paws.security.identity.p2:shield_enable_proactive_engagement]{enable_proactive_engagement} \tab Authorizes the Shield Response Team (SRT) to use email and phone to notify contacts about escalations to the SRT and to initiate proactive customer support\cr
#'  \link[paws.security.identity.p2:shield_get_subscription_state]{get_subscription_state} \tab Returns the SubscriptionState, either Active or Inactive\cr
#'  \link[paws.security.identity.p2:shield_list_attacks]{list_attacks} \tab Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period\cr
#'  \link[paws.security.identity.p2:shield_list_protection_groups]{list_protection_groups} \tab Retrieves ProtectionGroup objects for the account\cr
#'  \link[paws.security.identity.p2:shield_list_protections]{list_protections} \tab Retrieves Protection objects for the account\cr
#'  \link[paws.security.identity.p2:shield_list_resources_in_protection_group]{list_resources_in_protection_group} \tab Retrieves the resources that are included in the protection group\cr
#'  \link[paws.security.identity.p2:shield_list_tags_for_resource]{list_tags_for_resource} \tab Gets information about Amazon Web Services tags for a specified Amazon Resource Name (ARN) in Shield\cr
#'  \link[paws.security.identity.p2:shield_tag_resource]{tag_resource} \tab Adds or updates tags for a resource in Shield\cr
#'  \link[paws.security.identity.p2:shield_untag_resource]{untag_resource} \tab Removes tags from a resource in Shield\cr
#'  \link[paws.security.identity.p2:shield_update_application_layer_automatic_response]{update_application_layer_automatic_response} \tab Updates an existing Shield Advanced automatic application layer DDoS mitigation configuration for the specified resource\cr
#'  \link[paws.security.identity.p2:shield_update_emergency_contact_settings]{update_emergency_contact_settings} \tab Updates the details of the list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support\cr
#'  \link[paws.security.identity.p2:shield_update_protection_group]{update_protection_group} \tab Updates an existing protection group\cr
#'  \link[paws.security.identity.p2:shield_update_subscription]{update_subscription} \tab Updates the details of an existing subscription
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname shield
#' @export
shield <- function(config = list()) {
  paws.security.identity.p2::shield(config)
}

#' AWS Single Sign-On
#'
#' @description
#' Amazon Web Services Single Sign On Portal is a web service that makes it
#' easy for you to assign user access to Amazon Web Services SSO resources
#' such as the AWS access portal. Users can get Amazon Web Services account
#' applications and roles assigned to them and get federated into the
#' application.
#' 
#' Although Amazon Web Services Single Sign-On was renamed, the `sso` and
#' `identitystore` API namespaces will continue to retain their original
#' name for backward compatibility purposes. For more information, see
#' [Amazon Web Services SSO
#' rename](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html#renamed).
#' 
#' This API reference guide describes the Amazon Web Services SSO Portal
#' operations that you can call programatically and includes detailed
#' information on data types and errors.
#' 
#' Amazon Web Services provides SDKs that consist of libraries and sample
#' code for various programming languages and platforms, such as Java,
#' Ruby, .Net, iOS, or Android. The SDKs provide a convenient way to create
#' programmatic access to Amazon Web Services SSO and other Amazon Web
#' Services services. For more information about the Amazon Web Services
#' SDKs, including how to download and install them, see [Tools for Amazon
#' Web Services](https://aws.amazon.com/developer/tools/).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- sso(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- sso()
#' svc$get_role_credentials(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:sso_get_role_credentials]{get_role_credentials} \tab Returns the STS short-term credentials for a given role name that is assigned to the user\cr
#'  \link[paws.security.identity.p2:sso_list_account_roles]{list_account_roles} \tab Lists all roles that are assigned to the user for a given Amazon Web Services account\cr
#'  \link[paws.security.identity.p2:sso_list_accounts]{list_accounts} \tab Lists all Amazon Web Services accounts assigned to the user\cr
#'  \link[paws.security.identity.p2:sso_logout]{logout} \tab Removes the locally stored SSO tokens from the client-side cache and sends an API call to the Amazon Web Services SSO service to invalidate the corresponding server-side Amazon Web Services SSO sign in session
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname sso
#' @export
sso <- function(config = list()) {
  paws.security.identity.p2::sso(config)
}

#' AWS Single Sign-On Admin
#'
#' 
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- ssoadmin(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- ssoadmin()
#' svc$attach_customer_managed_policy_reference_to_permission_set(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:ssoadmin_attach_customer_managed_policy_reference_to_permission_set]{attach_customer_managed_policy_reference_to_permission_set} \tab Attaches the specified customer managed policy to the specified PermissionSet\cr
#'  \link[paws.security.identity.p2:ssoadmin_attach_managed_policy_to_permission_set]{attach_managed_policy_to_permission_set} \tab Attaches an Amazon Web Services managed policy ARN to a permission set\cr
#'  \link[paws.security.identity.p2:ssoadmin_create_account_assignment]{create_account_assignment} \tab Assigns access to a principal for a specified Amazon Web Services account using a specified permission set\cr
#'  \link[paws.security.identity.p2:ssoadmin_create_instance_access_control_attribute_configuration]{create_instance_access_control_attribute_configuration} \tab Enables the attributes-based access control (ABAC) feature for the specified Amazon Web Services SSO instance\cr
#'  \link[paws.security.identity.p2:ssoadmin_create_permission_set]{create_permission_set} \tab Creates a permission set within a specified Amazon Web Services SSO instance\cr
#'  \link[paws.security.identity.p2:ssoadmin_delete_account_assignment]{delete_account_assignment} \tab Deletes a principal's access from a specified Amazon Web Services account using a specified permission set\cr
#'  \link[paws.security.identity.p2:ssoadmin_delete_inline_policy_from_permission_set]{delete_inline_policy_from_permission_set} \tab Deletes the inline policy from a specified permission set\cr
#'  \link[paws.security.identity.p2:ssoadmin_delete_instance_access_control_attribute_configuration]{delete_instance_access_control_attribute_configuration} \tab Disables the attributes-based access control (ABAC) feature for the specified Amazon Web Services SSO instance and deletes all of the attribute mappings that have been configured\cr
#'  \link[paws.security.identity.p2:ssoadmin_delete_permissions_boundary_from_permission_set]{delete_permissions_boundary_from_permission_set} \tab Deletes the permissions boundary from a specified PermissionSet\cr
#'  \link[paws.security.identity.p2:ssoadmin_delete_permission_set]{delete_permission_set} \tab Deletes the specified permission set\cr
#'  \link[paws.security.identity.p2:ssoadmin_describe_account_assignment_creation_status]{describe_account_assignment_creation_status} \tab Describes the status of the assignment creation request\cr
#'  \link[paws.security.identity.p2:ssoadmin_describe_account_assignment_deletion_status]{describe_account_assignment_deletion_status} \tab Describes the status of the assignment deletion request\cr
#'  \link[paws.security.identity.p2:ssoadmin_describe_instance_access_control_attribute_configuration]{describe_instance_access_control_attribute_configuration} \tab Returns the list of Amazon Web Services SSO identity store attributes that have been configured to work with attributes-based access control (ABAC) for the specified Amazon Web Services SSO instance\cr
#'  \link[paws.security.identity.p2:ssoadmin_describe_permission_set]{describe_permission_set} \tab Gets the details of the permission set\cr
#'  \link[paws.security.identity.p2:ssoadmin_describe_permission_set_provisioning_status]{describe_permission_set_provisioning_status} \tab Describes the status for the given permission set provisioning request\cr
#'  \link[paws.security.identity.p2:ssoadmin_detach_customer_managed_policy_reference_from_permission_set]{detach_customer_managed_policy_reference_from_permission_set} \tab Detaches the specified customer managed policy from the specified PermissionSet\cr
#'  \link[paws.security.identity.p2:ssoadmin_detach_managed_policy_from_permission_set]{detach_managed_policy_from_permission_set} \tab Detaches the attached Amazon Web Services managed policy ARN from the specified permission set\cr
#'  \link[paws.security.identity.p2:ssoadmin_get_inline_policy_for_permission_set]{get_inline_policy_for_permission_set} \tab Obtains the inline policy assigned to the permission set\cr
#'  \link[paws.security.identity.p2:ssoadmin_get_permissions_boundary_for_permission_set]{get_permissions_boundary_for_permission_set} \tab Obtains the permissions boundary for a specified PermissionSet\cr
#'  \link[paws.security.identity.p2:ssoadmin_list_account_assignment_creation_status]{list_account_assignment_creation_status} \tab Lists the status of the Amazon Web Services account assignment creation requests for a specified Amazon Web Services SSO instance\cr
#'  \link[paws.security.identity.p2:ssoadmin_list_account_assignment_deletion_status]{list_account_assignment_deletion_status} \tab Lists the status of the Amazon Web Services account assignment deletion requests for a specified Amazon Web Services SSO instance\cr
#'  \link[paws.security.identity.p2:ssoadmin_list_account_assignments]{list_account_assignments} \tab Lists the assignee of the specified Amazon Web Services account with the specified permission set\cr
#'  \link[paws.security.identity.p2:ssoadmin_list_accounts_for_provisioned_permission_set]{list_accounts_for_provisioned_permission_set} \tab Lists all the Amazon Web Services accounts where the specified permission set is provisioned\cr
#'  \link[paws.security.identity.p2:ssoadmin_list_customer_managed_policy_references_in_permission_set]{list_customer_managed_policy_references_in_permission_set} \tab Lists all customer managed policies attached to a specified PermissionSet\cr
#'  \link[paws.security.identity.p2:ssoadmin_list_instances]{list_instances} \tab Lists the Amazon Web Services SSO instances that the caller has access to\cr
#'  \link[paws.security.identity.p2:ssoadmin_list_managed_policies_in_permission_set]{list_managed_policies_in_permission_set} \tab Lists the Amazon Web Services managed policy that is attached to a specified permission set\cr
#'  \link[paws.security.identity.p2:ssoadmin_list_permission_set_provisioning_status]{list_permission_set_provisioning_status} \tab Lists the status of the permission set provisioning requests for a specified Amazon Web Services SSO instance\cr
#'  \link[paws.security.identity.p2:ssoadmin_list_permission_sets]{list_permission_sets} \tab Lists the PermissionSets in an Amazon Web Services SSO instance\cr
#'  \link[paws.security.identity.p2:ssoadmin_list_permission_sets_provisioned_to_account]{list_permission_sets_provisioned_to_account} \tab Lists all the permission sets that are provisioned to a specified Amazon Web Services account\cr
#'  \link[paws.security.identity.p2:ssoadmin_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags that are attached to a specified resource\cr
#'  \link[paws.security.identity.p2:ssoadmin_provision_permission_set]{provision_permission_set} \tab The process by which a specified permission set is provisioned to the specified target\cr
#'  \link[paws.security.identity.p2:ssoadmin_put_inline_policy_to_permission_set]{put_inline_policy_to_permission_set} \tab Attaches an inline policy to a permission set\cr
#'  \link[paws.security.identity.p2:ssoadmin_put_permissions_boundary_to_permission_set]{put_permissions_boundary_to_permission_set} \tab Attaches an Amazon Web Services managed or customer managed policy to the specified PermissionSet as a permissions boundary\cr
#'  \link[paws.security.identity.p2:ssoadmin_tag_resource]{tag_resource} \tab Associates a set of tags with a specified resource\cr
#'  \link[paws.security.identity.p2:ssoadmin_untag_resource]{untag_resource} \tab Disassociates a set of tags from a specified resource\cr
#'  \link[paws.security.identity.p2:ssoadmin_update_instance_access_control_attribute_configuration]{update_instance_access_control_attribute_configuration} \tab Updates the Amazon Web Services SSO identity store attributes that you can use with the Amazon Web Services SSO instance for attributes-based access control (ABAC)\cr
#'  \link[paws.security.identity.p2:ssoadmin_update_permission_set]{update_permission_set} \tab Updates an existing permission set
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname ssoadmin
#' @export
ssoadmin <- function(config = list()) {
  paws.security.identity.p2::ssoadmin(config)
}

#' AWS SSO OIDC
#'
#' @description
#' Amazon Web Services Single Sign On OpenID Connect (OIDC) is a web
#' service that enables a client (such as Amazon Web Services CLI or a
#' native application) to register with Amazon Web Services SSO. The
#' service also enables the client to fetch the user’s access token upon
#' successful authentication and authorization with Amazon Web Services
#' SSO.
#' 
#' Although Amazon Web Services Single Sign-On was renamed, the `sso` and
#' `identitystore` API namespaces will continue to retain their original
#' name for backward compatibility purposes. For more information, see
#' [Amazon Web Services SSO
#' rename](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html#renamed).
#' 
#' **Considerations for Using This Guide**
#' 
#' Before you begin using this guide, we recommend that you first review
#' the following important information about how the Amazon Web Services
#' SSO OIDC service works.
#' 
#' -   The Amazon Web Services SSO OIDC service currently implements only
#'     the portions of the OAuth 2.0 Device Authorization Grant standard
#'     ([https://tools.ietf.org/html/rfc8628](https://www.rfc-editor.org/rfc/rfc8628))
#'     that are necessary to enable single sign-on authentication with the
#'     AWS CLI. Support for other OIDC flows frequently needed for native
#'     applications, such as Authorization Code Flow (+ PKCE), will be
#'     addressed in future releases.
#' 
#' -   The service emits only OIDC access tokens, such that obtaining a new
#'     token (For example, token refresh) requires explicit user
#'     re-authentication.
#' 
#' -   The access tokens provided by this service grant access to all AWS
#'     account entitlements assigned to an Amazon Web Services SSO user,
#'     not just a particular application.
#' 
#' -   The documentation in this guide does not describe the mechanism to
#'     convert the access token into AWS Auth (“sigv4”) credentials for use
#'     with IAM-protected AWS service endpoints. For more information, see
#'     [GetRoleCredentials](https://docs.aws.amazon.com/singlesignon/latest/PortalAPIReference/API_GetRoleCredentials.html)
#'     in the *Amazon Web Services SSO Portal API Reference Guide*.
#' 
#' For general information about Amazon Web Services SSO, see [What is
#' Amazon Web Services
#' SSO?](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html)
#' in the *Amazon Web Services SSO User Guide*.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- ssooidc(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- ssooidc()
#' svc$create_token(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:ssooidc_create_token]{create_token} \tab Creates and returns an access token for the authorized client\cr
#'  \link[paws.security.identity.p2:ssooidc_register_client]{register_client} \tab Registers a client with Amazon Web Services SSO\cr
#'  \link[paws.security.identity.p2:ssooidc_start_device_authorization]{start_device_authorization} \tab Initiates device authorization by requesting a pair of verification codes from the authorization service
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname ssooidc
#' @export
ssooidc <- function(config = list()) {
  paws.security.identity.p2::ssooidc(config)
}

#' AWS Security Token Service
#'
#' @description
#' Security Token Service
#' 
#' Security Token Service (STS) enables you to request temporary,
#' limited-privilege credentials for Identity and Access Management (IAM)
#' users or for users that you authenticate (federated users). This guide
#' provides descriptions of the STS API. For more information about using
#' this service, see [Temporary Security
#' Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- sts(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- sts()
#' # 
#' svc$assume_role(
#'   ExternalId = "123ABC",
#'   Policy = "\{\"Version\":\"2012-10-17\",\"Statement\":[\{\"Sid\":\"Stmt1\",\"Effect\":\"A...",
#'   RoleArn = "arn:aws:iam::123456789012:role/demo",
#'   RoleSessionName = "testAssumeRoleSession",
#'   Tags = list(
#'     list(
#'       Key = "Project",
#'       Value = "Unicorn"
#'     ),
#'     list(
#'       Key = "Team",
#'       Value = "Automation"
#'     ),
#'     list(
#'       Key = "Cost-Center",
#'       Value = "12345"
#'     )
#'   ),
#'   TransitiveTagKeys = list(
#'     "Project",
#'     "Cost-Center"
#'   )
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:sts_assume_role]{assume_role} \tab Returns a set of temporary security credentials that you can use to access Amazon Web Services resources that you might not normally have access to\cr
#'  \link[paws.security.identity.p2:sts_assume_role_with_saml]{assume_role_with_saml} \tab Returns a set of temporary security credentials for users who have been authenticated via a SAML authentication response\cr
#'  \link[paws.security.identity.p2:sts_assume_role_with_web_identity]{assume_role_with_web_identity} \tab Returns a set of temporary security credentials for users who have been authenticated in a mobile or web application with a web identity provider\cr
#'  \link[paws.security.identity.p2:sts_decode_authorization_message]{decode_authorization_message} \tab Decodes additional information about the authorization status of a request from an encoded message returned in response to an Amazon Web Services request\cr
#'  \link[paws.security.identity.p2:sts_get_access_key_info]{get_access_key_info} \tab Returns the account identifier for the specified access key ID\cr
#'  \link[paws.security.identity.p2:sts_get_caller_identity]{get_caller_identity} \tab Returns details about the IAM user or role whose credentials are used to call the operation\cr
#'  \link[paws.security.identity.p2:sts_get_federation_token]{get_federation_token} \tab Returns a set of temporary security credentials (consisting of an access key ID, a secret access key, and a security token) for a federated user\cr
#'  \link[paws.security.identity.p2:sts_get_session_token]{get_session_token} \tab Returns a set of temporary credentials for an Amazon Web Services account or IAM user
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname sts
#' @export
sts <- function(config = list()) {
  paws.security.identity.p2::sts(config)
}

#' AWS WAFV2
#'
#' @description
#' WAF
#' 
#' This is the latest version of the **WAF** API, released in November,
#' 2019. The names of the entities that you use to access this API, like
#' endpoints and namespaces, all have the versioning information added,
#' like "V2" or "v2", to distinguish from the prior version. We recommend
#' migrating your resources to this version, because it has a number of
#' significant improvements.
#' 
#' If you used WAF prior to this release, you can't use this WAFV2 API to
#' access any WAF resources that you created before. You can access your
#' old rules, web ACLs, and other WAF resources only through the WAF
#' Classic APIs. The WAF Classic APIs have retained the prior names,
#' endpoints, and namespaces.
#' 
#' For information, including how to migrate your WAF resources to this
#' version, see the [WAF Developer
#' Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
#' 
#' WAF is a web application firewall that lets you monitor the HTTP and
#' HTTPS requests that are forwarded to Amazon CloudFront, an Amazon API
#' Gateway REST API, an Application Load Balancer, an AppSync GraphQL API,
#' or an Amazon Cognito user pool. WAF also lets you control access to your
#' content. Based on conditions that you specify, such as the IP addresses
#' that requests originate from or the values of query strings, the Amazon
#' API Gateway REST API, CloudFront distribution, the Application Load
#' Balancer, the AppSync GraphQL API, or the Amazon Cognito user pool
#' responds to requests either with the requested content or with an HTTP
#' 403 status code (Forbidden). You also can configure CloudFront to return
#' a custom error page when a request is blocked.
#' 
#' This API guide is for developers who need detailed information about WAF
#' API actions, data types, and errors. For detailed information about WAF
#' features and an overview of how to use WAF, see the [WAF Developer
#' Guide](https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html).
#' 
#' You can make calls using the endpoints listed in [WAF endpoints and
#' quotas](https://docs.aws.amazon.com/general/latest/gr/waf.html).
#' 
#' -   For regional applications, you can use any of the endpoints in the
#'     list. A regional application can be an Application Load Balancer
#'     (ALB), an Amazon API Gateway REST API, an AppSync GraphQL API, or an
#'     Amazon Cognito user pool.
#' 
#' -   For Amazon CloudFront applications, you must use the API endpoint
#'     listed for US East (N. Virginia): us-east-1.
#' 
#' Alternatively, you can use one of the Amazon Web Services SDKs to access
#' an API that's tailored to the programming language or platform that
#' you're using. For more information, see [Amazon Web Services
#' SDKs](https://aws.amazon.com/developer/tools/#SDKs).
#' 
#' We currently provide two versions of the WAF API: this API and the prior
#' versions, the classic WAF APIs. This new API provides the same
#' functionality as the older versions, with the following major
#' improvements:
#' 
#' -   You use one API for both global and regional applications. Where you
#'     need to distinguish the scope, you specify a `Scope` parameter and
#'     set it to `CLOUDFRONT` or `REGIONAL`.
#' 
#' -   You can define a web ACL or rule group with a single call, and
#'     update it with a single call. You define all rule specifications in
#'     JSON format, and pass them to your rule group or web ACL calls.
#' 
#' -   The limits WAF places on the use of rules more closely reflects the
#'     cost of running each type of rule. Rule groups include capacity
#'     settings, so you know the maximum cost of a rule group when you use
#'     it.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- wafv2(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- wafv2()
#' svc$associate_web_acl(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[paws.security.identity.p2:wafv2_associate_web_acl]{associate_web_acl} \tab Associates a web ACL with a regional application resource, to protect the resource\cr
#'  \link[paws.security.identity.p2:wafv2_check_capacity]{check_capacity} \tab Returns the web ACL capacity unit (WCU) requirements for a specified scope and set of rules\cr
#'  \link[paws.security.identity.p2:wafv2_create_ip_set]{create_ip_set} \tab Creates an IPSet, which you use to identify web requests that originate from specific IP addresses or ranges of IP addresses\cr
#'  \link[paws.security.identity.p2:wafv2_create_regex_pattern_set]{create_regex_pattern_set} \tab Creates a RegexPatternSet, which you reference in a RegexPatternSetReferenceStatement, to have WAF inspect a web request component for the specified patterns\cr
#'  \link[paws.security.identity.p2:wafv2_create_rule_group]{create_rule_group} \tab Creates a RuleGroup per the specifications provided\cr
#'  \link[paws.security.identity.p2:wafv2_create_web_acl]{create_web_acl} \tab Creates a WebACL per the specifications provided\cr
#'  \link[paws.security.identity.p2:wafv2_delete_firewall_manager_rule_groups]{delete_firewall_manager_rule_groups} \tab Deletes all rule groups that are managed by Firewall Manager for the specified web ACL\cr
#'  \link[paws.security.identity.p2:wafv2_delete_ip_set]{delete_ip_set} \tab Deletes the specified IPSet\cr
#'  \link[paws.security.identity.p2:wafv2_delete_logging_configuration]{delete_logging_configuration} \tab Deletes the LoggingConfiguration from the specified web ACL\cr
#'  \link[paws.security.identity.p2:wafv2_delete_permission_policy]{delete_permission_policy} \tab Permanently deletes an IAM policy from the specified rule group\cr
#'  \link[paws.security.identity.p2:wafv2_delete_regex_pattern_set]{delete_regex_pattern_set} \tab Deletes the specified RegexPatternSet\cr
#'  \link[paws.security.identity.p2:wafv2_delete_rule_group]{delete_rule_group} \tab Deletes the specified RuleGroup\cr
#'  \link[paws.security.identity.p2:wafv2_delete_web_acl]{delete_web_acl} \tab Deletes the specified WebACL\cr
#'  \link[paws.security.identity.p2:wafv2_describe_managed_rule_group]{describe_managed_rule_group} \tab Provides high-level information for a managed rule group, including descriptions of the rules\cr
#'  \link[paws.security.identity.p2:wafv2_disassociate_web_acl]{disassociate_web_acl} \tab Disassociates the specified regional application resource from any existing web ACL association\cr
#'  \link[paws.security.identity.p2:wafv2_generate_mobile_sdk_release_url]{generate_mobile_sdk_release_url} \tab Generates a presigned download URL for the specified release of the mobile SDK\cr
#'  \link[paws.security.identity.p2:wafv2_get_ip_set]{get_ip_set} \tab Retrieves the specified IPSet\cr
#'  \link[paws.security.identity.p2:wafv2_get_logging_configuration]{get_logging_configuration} \tab Returns the LoggingConfiguration for the specified web ACL\cr
#'  \link[paws.security.identity.p2:wafv2_get_managed_rule_set]{get_managed_rule_set} \tab Retrieves the specified managed rule set\cr
#'  \link[paws.security.identity.p2:wafv2_get_mobile_sdk_release]{get_mobile_sdk_release} \tab Retrieves information for the specified mobile SDK release, including release notes and tags\cr
#'  \link[paws.security.identity.p2:wafv2_get_permission_policy]{get_permission_policy} \tab Returns the IAM policy that is attached to the specified rule group\cr
#'  \link[paws.security.identity.p2:wafv2_get_rate_based_statement_managed_keys]{get_rate_based_statement_managed_keys} \tab Retrieves the keys that are currently blocked by a rate-based rule instance\cr
#'  \link[paws.security.identity.p2:wafv2_get_regex_pattern_set]{get_regex_pattern_set} \tab Retrieves the specified RegexPatternSet\cr
#'  \link[paws.security.identity.p2:wafv2_get_rule_group]{get_rule_group} \tab Retrieves the specified RuleGroup\cr
#'  \link[paws.security.identity.p2:wafv2_get_sampled_requests]{get_sampled_requests} \tab Gets detailed information about a specified number of requests--a sample--that WAF randomly selects from among the first 5,000 requests that your Amazon Web Services resource received during a time range that you choose\cr
#'  \link[paws.security.identity.p2:wafv2_get_web_acl]{get_web_acl} \tab Retrieves the specified WebACL\cr
#'  \link[paws.security.identity.p2:wafv2_get_web_acl_for_resource]{get_web_acl_for_resource} \tab Retrieves the WebACL for the specified resource\cr
#'  \link[paws.security.identity.p2:wafv2_list_available_managed_rule_groups]{list_available_managed_rule_groups} \tab Retrieves an array of managed rule groups that are available for you to use\cr
#'  \link[paws.security.identity.p2:wafv2_list_available_managed_rule_group_versions]{list_available_managed_rule_group_versions} \tab Returns a list of the available versions for the specified managed rule group\cr
#'  \link[paws.security.identity.p2:wafv2_list_ip_sets]{list_ip_sets} \tab Retrieves an array of IPSetSummary objects for the IP sets that you manage\cr
#'  \link[paws.security.identity.p2:wafv2_list_logging_configurations]{list_logging_configurations} \tab Retrieves an array of your LoggingConfiguration objects\cr
#'  \link[paws.security.identity.p2:wafv2_list_managed_rule_sets]{list_managed_rule_sets} \tab Retrieves the managed rule sets that you own\cr
#'  \link[paws.security.identity.p2:wafv2_list_mobile_sdk_releases]{list_mobile_sdk_releases} \tab Retrieves a list of the available releases for the mobile SDK and the specified device platform\cr
#'  \link[paws.security.identity.p2:wafv2_list_regex_pattern_sets]{list_regex_pattern_sets} \tab Retrieves an array of RegexPatternSetSummary objects for the regex pattern sets that you manage\cr
#'  \link[paws.security.identity.p2:wafv2_list_resources_for_web_acl]{list_resources_for_web_acl} \tab Retrieves an array of the Amazon Resource Names (ARNs) for the regional resources that are associated with the specified web ACL\cr
#'  \link[paws.security.identity.p2:wafv2_list_rule_groups]{list_rule_groups} \tab Retrieves an array of RuleGroupSummary objects for the rule groups that you manage\cr
#'  \link[paws.security.identity.p2:wafv2_list_tags_for_resource]{list_tags_for_resource} \tab Retrieves the TagInfoForResource for the specified resource\cr
#'  \link[paws.security.identity.p2:wafv2_list_web_ac_ls]{list_web_ac_ls} \tab Retrieves an array of WebACLSummary objects for the web ACLs that you manage\cr
#'  \link[paws.security.identity.p2:wafv2_put_logging_configuration]{put_logging_configuration} \tab Enables the specified LoggingConfiguration, to start logging from a web ACL, according to the configuration provided\cr
#'  \link[paws.security.identity.p2:wafv2_put_managed_rule_set_versions]{put_managed_rule_set_versions} \tab Defines the versions of your managed rule set that you are offering to the customers\cr
#'  \link[paws.security.identity.p2:wafv2_put_permission_policy]{put_permission_policy} \tab Attaches an IAM policy to the specified resource\cr
#'  \link[paws.security.identity.p2:wafv2_tag_resource]{tag_resource} \tab Associates tags with the specified Amazon Web Services resource\cr
#'  \link[paws.security.identity.p2:wafv2_untag_resource]{untag_resource} \tab Disassociates tags from an Amazon Web Services resource\cr
#'  \link[paws.security.identity.p2:wafv2_update_ip_set]{update_ip_set} \tab Updates the specified IPSet\cr
#'  \link[paws.security.identity.p2:wafv2_update_managed_rule_set_version_expiry_date]{update_managed_rule_set_version_expiry_date} \tab Updates the expiration information for your managed rule set\cr
#'  \link[paws.security.identity.p2:wafv2_update_regex_pattern_set]{update_regex_pattern_set} \tab Updates the specified RegexPatternSet\cr
#'  \link[paws.security.identity.p2:wafv2_update_rule_group]{update_rule_group} \tab Updates the specified RuleGroup\cr
#'  \link[paws.security.identity.p2:wafv2_update_web_acl]{update_web_acl} \tab Updates the specified WebACL
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname wafv2
#' @export
wafv2 <- function(config = list()) {
  paws.security.identity.p2::wafv2(config)
}
