# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config
NULL

#' Amazon QLDB
#'
#' @description
#' The control plane for Amazon QLDB
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#'
#' @section Service syntax:
#' ```
#' svc <- qldb(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string"
#'     ),
#'     endpoint = "string",
#'     region = "string"
#'   )
#' )
#' ```
#'
#' @examples
#' \donttest{svc <- qldb()
#' svc$create_ledger(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=qldb_create_ledger]{create_ledger} \tab Creates a new ledger in your AWS account \cr
#'  \link[=qldb_delete_ledger]{delete_ledger} \tab Deletes a ledger and all of its contents \cr
#'  \link[=qldb_describe_journal_s3_export]{describe_journal_s3_export} \tab Returns information about a journal export job, including the ledger name, export ID, when it was created, current status, and its start and end time export parameters\cr
#'  \link[=qldb_describe_ledger]{describe_ledger} \tab Returns information about a ledger, including its state and when it was created \cr
#'  \link[=qldb_export_journal_to_s3]{export_journal_to_s3} \tab Exports journal contents within a date and time range from a ledger into a specified Amazon Simple Storage Service (Amazon S3) bucket \cr
#'  \link[=qldb_get_block]{get_block} \tab Returns a journal block object at a specified address in a ledger \cr
#'  \link[=qldb_get_digest]{get_digest} \tab Returns the digest of a ledger at the latest committed block in the journal \cr
#'  \link[=qldb_get_revision]{get_revision} \tab Returns a revision data object for a specified document ID and block address \cr
#'  \link[=qldb_list_journal_s3_exports]{list_journal_s3_exports} \tab Returns an array of journal export job descriptions for all ledgers that are associated with the current AWS account and Region \cr
#'  \link[=qldb_list_journal_s3_exports_for_ledger]{list_journal_s3_exports_for_ledger} \tab Returns an array of journal export job descriptions for a specified ledger \cr
#'  \link[=qldb_list_ledgers]{list_ledgers} \tab Returns an array of ledger summaries that are associated with the current AWS account and Region \cr
#'  \link[=qldb_list_tags_for_resource]{list_tags_for_resource} \tab Returns all tags for a specified Amazon QLDB resource \cr
#'  \link[=qldb_tag_resource]{tag_resource} \tab Adds one or more tags to a specified Amazon QLDB resource \cr
#'  \link[=qldb_untag_resource]{untag_resource} \tab Removes one or more tags from a specified Amazon QLDB resource \cr
#'  \link[=qldb_update_ledger]{update_ledger} \tab Updates properties on a ledger 
#' }
#'
#' @rdname qldb
#' @export
qldb <- function(config = list()) {
  svc <- .qldb$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.qldb <- list()

.qldb$operations <- list()

.qldb$metadata <- list(
  service_name = "qldb",
  endpoints = list("*" = list(endpoint = "qldb.{region}.amazonaws.com", global = FALSE), "cn-*" = list(endpoint = "qldb.{region}.amazonaws.com.cn", global = FALSE)),
  service_id = "QLDB",
  api_version = "2019-01-02",
  signing_name = "qldb",
  json_version = "1.0",
  target_prefix = ""
)

.qldb$handlers <- new_handlers("restjson", "v4")

.qldb$service <- function(config = list()) {
  new_service(.qldb$metadata, .qldb$handlers, config)
}