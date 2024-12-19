# Return the name of the R package to be generated.
package_name <- function(api) {
  name <- tolower(struct_name(api))
  return(name)
}

service_name <- function(api) {
  name <- old_service_name(tolower(struct_name(api)))
  if (!is.null(name)) {
    return(name)
  }
  return(service_id(api))
}

struct_name <- function(api) {
  if (length(api$name) != 0) {
    return(api$name)
  }

  name <- api$metadata$serviceAbbreviation
  if (length(name) == 0 || nchar(name) == 0) {
    name <- api$metadata$serviceFullName
  }

  if (length(name) == 0) {
    return(character(0))
  }

  name <- trimws(name)

  prefixes <- c("Amazon", "AWS")
  for (prefix in prefixes) {
    if (startsWith(name, prefix)) {
      name <- substring(name, nchar(prefix) + 1)
      break
    }
  }

  name <- gsub("[^a-zA-Z0-9 ]", " ", name)
  name <- tools::toTitleCase(name)
  name <- gsub(" ", "", name)

  alias <- service_alias(tolower(name))
  if (length(alias) > 0 && nchar(alias) > 0) {
    name <- alias
  }

  return(name)
}

old_service_name <- function(name) {
  path <- system_file("extdata/old_service_names.csv", package = methods::getPackageName())
  data <- utils::read.csv(path, header = FALSE, strip.white = TRUE, stringsAsFactors = FALSE)
  old_service_names <- stats::setNames(data[, 2], data[, 1])
  if (name %in% names(old_service_names)) {
    return(old_service_names[[name]])
  }
  return(name)
}

service_alias <- function(name) {
  if (name %in% names(.service_alias)) {
    return(.service_alias[[name]])
  }
  return("")
}

# Returns the service ID for an API.
service_id <- function(api) {
  if (length(api$metadata$serviceId) > 0 && nchar(api$metadata$serviceId) > 0) {
    return(api$metadata$serviceId)
  }

  name <- api$metadata$serviceAbbreviation
  if (length(name) == 0 || nchar(name) == 0) {
    name <- api$metadata$serviceFullName
  }

  name <- gsub("Amazon", "", name)
  name <- gsub("AWS", "", name)
  name <- gsub("[^a-zA-Z0-9 ]", "", name)
  name <- gsub("^[0-9]+", "", name)
  name <- trimws(name)

  return(name)
}

# Convert camel case names to snake case, e.g. "camelCase" -> "camel_case".
snake_case <- function(x) {
  y <- gsub("([A-Z][a-z]+)", "_\\1_", x, perl = TRUE)
  y <- gsub("_+", "_", y)
  y <- gsub("^_(.+)$", "\\1", y)
  y <- gsub("^(.+)_$", "\\1", y)
  y <- tolower(y)
  y
}

# Returns the R name for an operation.
get_operation_name <- function(operation) {
  return(snake_case(operation$name))
}

.service_alias <- c(
  "costandusagereportservice" = "CostandUsageReportService",
  "elasticloadbalancing" = "ELB",
  "elasticloadbalancingv2" = "ELBV2",
  "config" = "ConfigService",
  "agentsforamazonbedrockruntime" = "bedrockagentruntime",
  "agentsforamazonbedrock" = "bedrockagent",
  "dataautomationforamazonbedrock" = "bedrockdataautomation",
  "runtimeforamazonbedrockdataautomation" = "bedrockdataautomationruntime"
)
