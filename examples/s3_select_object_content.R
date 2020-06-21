# This example shows how to get data from S3 using a SQL query and the
# select_object_content operation. For more information, see
# https://docs.aws.amazon.com/AmazonS3/latest/API/API_SelectObjectContent.html.

s3 <- paws::s3()

bucket <- "my-bucket"
file <- "my-file.csv"
query <- "select * from s3object where x = '1'"

# Run a SQL query on data in a CSV in S3, and get the query's result set.
result <- s3$select_object_content(
  Bucket = bucket,
  Key = file,
  Expression = query,
  ExpressionType = "SQL",
  InputSerialization = list(
    'CSV' = list(
      FileHeaderInfo = "USE"
    )
  ),
  OutputSerialization = list(
    'CSV'= list(
      QuoteFields = "ASNEEDED"
    )
  )
)

# Convert the resulting CSV data into an R data frame.
data <- read.csv(text = result$Payload$Records$Payload, header = FALSE, col.names = "x")
