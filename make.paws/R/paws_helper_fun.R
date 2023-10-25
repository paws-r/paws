.param_not_used <- c(
  "force_refresh",
  "endpoint_resolver",
  "enforce_should_retry_check",
  "disable_ssl",
  "retryer",
  "disable_param_validation",
  "disable_compute_checksums",
  "s3_disable_100_continue",
  "s3_use_accelerate",
  "s3_disable_content_md5_validation",
  "ec2_metadata_disable_timeout_override",
  "use_dual_stack",
  "sleep_delay",
  "disable_rest_protocol_uri_cleaning",
  "provider",
  "provider_name"
)

firstup <- function(x) {
  substr(x, 1, 1) <- toupper(substr(x, 1, 1))
  return(x)
}

get_service_parameter <- function(param) {
  fn <- get(param, envir = getNamespace("paws.common"))
  elements <- as.list(formals(fn))
  elements <- elements[!(names(elements) %in% .param_not_used)]

  for (nms in names(elements)) {
    if (is.list(elements[[nms]])) {
      elements[[nms]] <- get_service_parameter(firstup(nms))
    }
  }
  return(elements)
}

build_service_parameter <- function(param) {
  return(do.call(
    paws.common:::struct,
    get_service_parameter(param)
  ))
}

#' @title Create paws serice helper functions
#' @param dir directory of paws.common
#' @export
paws_service_param_fn <- function(dir = "../paws.common") {
  file <- system.file(
    file.path("templates", "service_parameter_helper.R"),
    package = "make.paws"
  )
  r_file <- readLines(file)

  for (param in c("config", "credentials", "creds")) {
    line <- grep(sprintf("\\{\\{%s\\}\\}", param), r_file)
    fn_body <- deparse(build_service_parameter(firstup(param)))
    fn_body[[1]] <- sprintf("%s <- %s", param, fn_body[[1]])
    r_file[[line]] <- paste(fn_body, collapse = "\n")
  }
  writeLines(r_file, file.path(dir, "R", "service_parameter_helper.R"))
  roxygen2::roxygenise(dir)
}

#' @title lists new services from AWS
#' @param in_dir Directory containing AWS API input files.
#' @export
paws_new_services <- function(in_dir = "../vendor/aws-sdk-js") {
  existing_apis <- yaml::read_yaml(system.file("extdata/packages.yml", package = "make.paws"))
  existing_apis <- unlist(lapply(existing_apis, \(x) x$services))
  
  new_apis <- list_apis(file.path(in_dir, "apis"))
  return(setdiff(new_apis, existing_apis))
}
