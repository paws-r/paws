library(make.paws)

# Set the working directory to the source file directory.
setwd(dirname(rstudioapi::getSourceEditorContext()$path))

# Extra fields for the package DESCRIPTION file.
fields <- list(
  dependencies = c("digest", "httr", "jsonlite", "xml2", "ini")
)

api_path <- "aws-sdk-js/apis"
out_path <- "service"

#-------------------------------------------------------------------------------

# Build an SDK for one API.
region_config <- make.paws::read_region_config(file.path(api_path, "../lib/region_config_data.json"))
api <- read_api("iam", "2010-05-08", api_path)
package <- make.paws::make_package(api, region_config, out_path, overwrite = TRUE, fields)
devtools::document(file.path(out_path, package))
tests <- make.paws::run_tests(file.path(out_path, package))
devtools::install(file.path(out_path, package), quiet = FALSE)

#-------------------------------------------------------------------------------

apis <- list_apis(api_path)
region_config <- make.paws::read_region_config(file.path(api_path, "../lib/region_config_data.json"))
for (i in 1:nrow(apis)) {
  api_info <- apis[i, ]
  print(api_info$name)
  api <- read_api(api_info$name, api_info$version, api_path)
  package <- make_package(api, region_config, out_path, fields, overwrite = TRUE)
  devtools::document(file.path(out_path, package))
  devtools::install(file.path(out_path, package))
}

# Test all SDKs.
packages <- list.files(out_path)
tests <- lapply(packages, function(p) {
  make.paws::run_tests(file.path(out_path, p))
})
tests_df <- dplyr::bind_rows(tests)
