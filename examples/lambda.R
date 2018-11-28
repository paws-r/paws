# Lambda examples

path <- tempdir()

# Write a file containing a JavaScript function.
code <- 'exports.handler = async (event, context) => { return "Hello!"; };'
js_file <- file.path(path, "lambda.js")
writeLines(code, js_file)

# Write the zip file to upload.
zip_file <- file.path(path, "lambda.zip")
utils::zip(zip_file, js_file, flags = "-j")

zip_contents <- readBin(zip_file, "raw", n = 1e5)

#-------------------------------------------------------------------------------

# Set up an IAM role for the Lambda function.

#-------------------------------------------------------------------------------

# Create the Lambda function.
paws.lambda::create_function(
  Code = list(ZipFile = zip_contents),
  FunctionName = "MyFunction",
  Handler = "lambda.handler",
  Role = "arn:aws:iam::185682296754:role/service-role/myLambdaRole",
  Runtime = "nodejs8.10"
)

# Run the function.
paws.lambda::invoke("MyFunction")

# Delete the function.
paws.lambda::delete_function("MyFunction")
