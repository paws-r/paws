# Return the name of the R package to be generated.
package_name <- function(api) {
  name <- sprintf("paws.%s", tolower(struct_name(api)))
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

  if (length(name) == 0) return(character(0))

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
  m <- matrix(c(
    "migrationhub",                "mgh",
    "acmpca",                      "acm-pca",
    "acm",                         "acm",
    "alexaforbusiness",            "a4b",
    "apigateway",                  "apigateway",
    "applicationautoscaling",      "autoscaling",
    "appstream",                   "appstream2",
    "appsync",                     "appsync",
    "athena",                      "athena",
    "autoscalingplans",            "autoscaling",
    "autoscaling",                 "autoscaling",
    "batch",                       "batch",
    "budgets",                     "budgets",
    "costexplorer",                "ce",
    "cloud9",                      "cloud9",
    "clouddirectory",              "clouddirectory",
    "cloudformation",              "cloudformation",
    "cloudfront",                  "cloudfront",
    "cloudhsm",                    "cloudhsm",
    "cloudhsmv2",                  "cloudhsmv2",
    "cloudsearch",                 "cloudsearch",
    "cloudsearchdomain",           "cloudsearchdomain",
    "cloudtrail",                  "cloudtrail",
    "codebuild",                   "codebuild",
    "codecommit",                  "codecommit",
    "codedeploy",                  "codedeploy",
    "codepipeline",                "codepipeline",
    "codestar",                    "codestar",
    "cognitoidentity",             "cognito-identity",
    "cognitoidentityprovider",     "cognito-idp",
    "cognitosync",                 "cognito-sync",
    "comprehend",                  "comprehend",
    "configservice",               "config",
    "connect",                     "connect",
    "costandusagereportservice",   "cur",
    "datapipeline",                "datapipeline",
    "dax",                         "dax",
    "devicefarm",                  "devicefarm",
    "directconnect",               "directconnect",
    "applicationdiscoveryservice", "discovery",
    "databasemigrationservice",    "dms",
    "directoryservice",            "ds",
    "dynamodb",                    "dynamodb",
    "ec2",                         "ec2",
    "ecr",                         "ecr",
    "ecs",                         "ecs",
    "eks",                         "eks",
    "elasticache",                 "elasticache",
    "elasticbeanstalk",            "elasticbeanstalk",
    "efs",                         "elasticfilesystem",
    "elb",                         "elasticloadbalancing",
    "elbv2",                       "elasticloadbalancing",
    "emr",                         "elasticmapreduce",
    "elastictranscoder",           "elastictranscoder",
    "ses",                         "email",
    "marketplaceentitlementservice", "entitlement.marketplace",
    "elasticsearchservice",          "es",
    "cloudwatchevents",              "events",
    "firehose",                      "firehose",
    "fms",                           "fms",
    "gamelift",                      "gamelift",
    "glacier",                       "glacier",
    "glue",                          "glue",
    "greengrass",                    "greengrass",
    "guardduty",                     "guardduty",
    "health",                        "health",
    "iam",                           "iam",
    "inspector",                     "inspector",
    "iotdataplane",                  "data.iot",
    "iotjobsdataplane",              "data.jobs.iot",
    "iot",                           "iot",
    "iot1clickdevicesservice",         "devices.iot1click",
    "iot1clickprojects",               "projects.iot1click",
    "iotanalytics",                    "iotanalytics",
    "kinesisvideoarchivedmedia",       "kinesisvideo",
    "kinesisvideomedia",               "kinesisvideo",
    "kinesis",                         "kinesis",
    "kinesisanalytics",                "kinesisanalytics",
    "kinesisvideo",                    "kinesisvideo",
    "kms",                             "kms",
    "lambda",                          "lambda",
    "lexmodelbuildingservice",         "models.lex",
    "lightsail",                       "lightsail",
    "cloudwatchlogs",                  "logs",
    "machinelearning",                 "machinelearning",
    "marketplacecommerceanalytics",    "marketplacecommerceanalytics",
    "mediaconvert",                    "mediaconvert",
    "medialive",                       "medialive",
    "mediapackage",                    "mediapackage",
    "mediastoredata",                  "data.mediastore",
    "mediastore",                      "mediastore",
    "mediatailor",                     "api.mediatailor",
    "marketplacemetering",             "metering.marketplace",
    "mobile",                          "mobile",
    "mobileanalytics",                 "mobileanalytics",
    "cloudwatch",                      "monitoring",
    "mq",                              "mq",
    "mturk",                           "mturk-requester",
    "neptune",                         "rds",
    "opsworks",                        "opsworks",
    "opsworkscm",                      "opsworks-cm",
    "organizations",                   "organizations",
    "pi",                              "pi",
    "pinpoint",                        "pinpoint",
    "polly",                           "polly",
    "pricing",                         "api.pricing",
    "rds",                             "rds",
    "redshift",                        "redshift",
    "rekognition",                     "rekognition",
    "resourcegroups",                  "resource-groups",
    "resourcegroupstaggingapi",        "tagging",
    "route53",                         "route53",
    "route53domains",                  "route53domains",
    "lexruntimeservice",               "runtime.lex",
    "sagemakerruntime",                "runtime.sagemaker",
    "s3",                              "s3",
    "sagemaker",                       "sagemaker",
    "simpledb",                        "sdb",
    "secretsmanager",                  "secretsmanager",
    "serverlessapplicationrepository", "serverlessrepo",
    "servicecatalog",                  "servicecatalog",
    "servicediscovery",                "servicediscovery",
    "shield",                          "shield",
    "sms",                             "sms",
    "snowball",                        "snowball",
    "sns",                             "sns",
    "sqs",                             "sqs",
    "ssm",                             "ssm",
    "sfn",                             "states",
    "storagegateway",                  "storagegateway",
    "dynamodbstreams",                 "streams.dynamodb",
    "sts",                             "sts",
    "support",                         "support",
    "swf",                             "swf",
    "transcribeservice",               "transcribe",
    "translate",                       "translate",
    "wafregional",                     "waf-regional",
    "waf",                             "waf",
    "workdocs",                        "workdocs",
    "workmail",                        "workmail",
    "workspaces",                      "workspaces",
    "xray",                            "xray"
  ), ncol = 2, byrow = TRUE)
  old_service_names <- setNames(m[, 2], m[, 1])
  if (name %in% names(old_service_names)) {
    return(old_service_names[[name]])
  }
  return(name)
}

service_alias <- function(name) {
  m <- matrix(c(
    "costandusagereportservice", "CostandUsageReportService",
    "elasticloadbalancing",      "ELB",
    "elasticloadbalancingv2",    "ELBV2",
    "config",                    "ConfigService"
  ), ncol = 2, byrow = TRUE)
  aliases <- setNames(m[, 2], m[, 1])
  if (name %in% names(aliases)) {
    return(aliases[[name]])
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
