library(paws.s3)

# Set the name of your existing bucket
bucket_name <- "NAME-OF-BUCKET"

# Example text that we want to upload to S3
example_text <- "Hello, world!"

# Encode text so it can be uploaded
raw_text <- jsonlite::base64_enc(charToRaw(example_text))

# Upload text to s3 as example.txt
put_object(
  Body = raw_text,
  Bucket = bucket_name,
  Key = "example.txt"
)

# Download the file
example_download <- get_object(
  Bucket = bucket_name,
  Key = "example.txt"
)

# Write output to text file
write(example_download, file = "example.txt")
