# Simple Storage Service (S3) examples

s3 <- paws::s3()

# Set the name of a new bucket
# We're just using the uuid package to ensure a unique bucket name. You do not
# have to use it and can input any unique bucket name you would like instead
bucket_name <- paste0("paws-example-", uuid::UUIDgenerate())

# Create a bucket in us-east-1
s3$create_bucket(
  Bucket = bucket_name
)

# List your buckets
s3$list_buckets()

# Create a data.frame that we will upload to S3
example_df <- data.frame(foo = c("hello", "world"), bar = c(1, 2))

# Save it as an RDS file
file_name <- "s3_example.rds"
saveRDS(example_df, file = file_name)

# Load the file as a raw binary
read_file <- file(file_name, "rb")
s3_example <- readBin(read_file, "raw", n = file.size(file_name))

# Upload file to s3
s3$put_object(
  Body = s3_example,
  Bucket = bucket_name,
  Key = file_name
)

# List objects in the bucket
s3$list_objects(Bucket = bucket_name)

# Download the file and store the output in a variable
s3_download <- s3$get_object(
  Bucket = bucket_name,
  Key = file_name
)
s3_download_body <- s3_download$Body

# Write output to file
file_name2 <- "s3_download.rds"
writeBin(s3_download_body, con = file_name2)

# Test the new data.frame to ensure it works
readRDS(file_name2)

# Cleanup
s3$delete_object(Bucket = bucket_name, Key = file_name)
s3$delete_bucket(Bucket = bucket_name)
close(read_file)
file.remove(file_name)
file.remove(file_name2)
