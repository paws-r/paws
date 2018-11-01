library(paws.s3)

# (a <- list_objects(Bucket = "adam-bucket-for-learning",
#                    MaxKeys = 2))

(b <- get_bucket_location(Bucket = "adam-bucket-for-learning"))

# library(paws.ec2)
# (a <- describe_instances(MaxResults = 5))

# library(paws.batch)
# (a <- describe_compute_environments(maxResults = 3))

# library(paws.iam)
# 
# list_groups(MaxItems = 4)