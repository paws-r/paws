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
file_name1 <- "s3_example.rds"
saveRDS(example_df, file = file_name1)

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

# Load the file as a raw binary
read_file <- file(file_name1, "rb")
s3_example <- readBin(read_file, "raw", n = file.size(file_name1))
close(read_file)

# Upload file to s3
s3$put_object(
  Body = s3_example,
  Bucket = bucket_name,
  Key = file_name1
)

################################################################################
# For paws.common versions >= 0.3.7 we can pass a file path directly to the    #
# Body parameter of put_object. This is the recommended way for users using    #
# newer versions of paws.common.                                               #
################################################################################

# Upload file to s3
s3$put_object(
  Body = file_name1,
  Bucket = bucket_name,
  Key = file_name1
)

################################################################################

# List objects in the bucket
s3$list_objects(Bucket = bucket_name)

# Download the file and store the output in a variable
s3_download <- s3$get_object(
  Bucket = bucket_name,
  Key = file_name1
)

# Write output to file
file_name2 <- "s3_download.rds"
writeBin(s3_download$Body, con = file_name2)

# Test the new data.frame to ensure it works
readRDS(file_name2)

# Alternatively, read the data frame directly, without writing to disk.
require(magrittr)
s3_download$Body %>% rawConnection() %>% gzcon %>% readRDS

################################################################################
# Read a CSV from S3.
################################################################################

# Upload a CSV file.
file_name3 <- "s3_example.csv"
write.csv(example_df, file_name3)

# Upload the CSV file to S3.
s3$put_object(
  Body = file_name3,
  Bucket = bucket_name,
  Key = file_name3
)

# Get the CSV file from S3.
s3_download <- s3$get_object(
  Bucket = bucket_name,
  Key = file_name3
)

# Read the CSV in from disk.
file_name4 <- "s3_download.csv"
writeBin(s3_download$Body, con = file_name4)
read.csv(file_name4)

# Alternatively, read in the CSV directly from S3.
require(magrittr)
s3_download$Body %>% rawToChar %>% read.csv(text = .)

# Cleanup
s3$delete_object(Bucket = bucket_name, Key = file_name1)
s3$delete_object(Bucket = bucket_name, Key = file_name3)
s3$delete_bucket(Bucket = bucket_name)
file.remove(file_name1)
file.remove(file_name2)
file.remove(file_name3)
file.remove(file_name4)
