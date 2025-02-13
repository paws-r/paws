#' @include make_sdk.R read_api.R names.R cran_category.R
NULL

#' @import data.table

#' @title Helper function to list all aws services and operations from aws botocore
#'
#' @param in_dir Directory containing aws botocore.
#'
#' @export
list_aws_services <- function(in_dir = "../vendor/botocore") {
  apis <- list_apis(fs::path(in_dir, "botocore", "data"))
  aws_service_ops <- lapply(apis, function(x) {
    api <- read_api(x, in_dir)
    data.frame(
      services = package_name(api),
      operations = vapply(
        api$operations,
        function(x) {
          get_operation_name(x)
        },
        FUN.VALUE = "",
        USE.NAMES = F
      )
    )
  })
  return(do.call(rbind, aws_service_ops))
}

#' @title Helper function to count all operations by service and category
#'
#' @param in_dir Directory containing aws botocore.
#'
#' @export
category_service_ops_count <- function(in_dir = "../vendor/botocore") {
  aws_service_ops <- list_aws_services(in_dir)
  paws_cat <- lapply(get_categories(), function(x) {
    data.frame(name = rep(x$name, length(x$services)), services = x$services)
  })
  paws_cat <- rbindlist(paws_cat, fill = T)
  paws_cat_service_ops <- merge(
    paws_cat,
    aws_service_ops,
    by = "services",
    all.y = T
  )
  setcolorder(paws_cat_service_ops, "name")
  names(paws_cat_service_ops) <- c("category", "services", "operations")
  paws_cat_service_ops_count <- paws_cat_service_ops[,
    list(total_operations = .N),
    by = c("category", "services")
  ][,
    list(
      services = get("services"),
      total_services = uniqueN(get("services")),
      total_operations = get("total_operations"),
      sum_operations = sum(get("total_operations"))
    ),
    by = "category"
  ]
  paws_cat_service_ops_count <- paws_cat_service_ops_count[
    order(get("category"), -get("total_services"), -get("total_operations"))
  ]
  return(paws_cat_service_ops_count)
}
