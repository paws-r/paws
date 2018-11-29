# Lambda examples

#-------------------------------------------------------------------------------

# Create a Lambda function package to upload.

code <- 'exports.handler = async (event, context) => { return "Hello!"; };'
path <- tempdir()
js_file <- file.path(path, "lambda.js")
writeLines(code, js_file)

zip_file <- file.path(path, "lambda.zip")
utils::zip(zip_file, js_file, flags = "-j")
zip_contents <- readBin(zip_file, "raw", n = 1e5)

#-------------------------------------------------------------------------------

# Set up an IAM role for the Lambda function.

role_policy <- list(
  Version = "2012-10-17",
  Statement = list(
    list(
      Effect = "Allow",
      Principal = list(
        Service = "lambda.amazonaws.com"
      ),
      Action = "sts:AssumeRole"
    )
  )
)

iam <- paws.iam::create_role(
  RoleName = "MyTestRole",
  AssumeRolePolicyDocument = jsonlite::toJSON(role_policy, auto_unbox = TRUE),
  PermissionsBoundary = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
)

#-------------------------------------------------------------------------------

# Create the Lambda function.
paws.lambda::create_function(
  Code = list(ZipFile = zip_contents),
  FunctionName = "MyFunction",
  Handler = "lambda.handler",
  Role = iam$Role$Arn,
  Runtime = "nodejs8.10"
)

# Run the function.
paws.lambda::invoke("MyFunction")

# List available functions.
paws.lambda::list_functions()

# Delete the function.
paws.lambda::delete_function("MyFunction")
