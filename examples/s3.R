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

file_name <- "s3_example.rds"
saveRDS(example_df, file = file_name)

################################################################################
# The following section is only recommended if using paws.common               #
# versions <= 0.3.6.                                                           #
# For paws.common versions <= 0.3.6 put_object requires the Body parameter to  #
# be a vector of raw bytes. Therefore if you are using an older version of     #
# paws.common you must take the following steps to upload a file to s3. The    #
# following code works for versions of paws.common >= 0.3.7 as well, but the   #
# same task can be completed more easily as shown in the section further below #
# for versions greater or equal to 0.3.7.                                      #
################################################################################

# Save it as an RDS file
# Load the file as a raw binary
read_file <- file(file_name, "rb")
s3_example <- readBin(read_file, "raw", n = file.size(file_name))
close(read_file)

# Upload file to s3
s3$put_object(
  Body = s3_example,
  Bucket = bucket_name,
  Key = file_name
)

################################################################################
# For paws.common versions >= 0.3.7 we can pass a file path directly to the    #
# Body parameter of put_object. This is the recommended way for users using    #
# newer versions of paws.common.                                               #
################################################################################

# Upload file to s3
s3$put_object(
  Body = file_name,
  Bucket = bucket_name,
  Key = file_name
)

################################################################################

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
file.remove(file_name)
file.remove(file_name2)
