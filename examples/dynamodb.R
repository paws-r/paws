# DynamoDB examples

dynamodb <- paws::dynamodb()

# Create a DynamoDB table.
resp <- dynamodb$create_table(
  AttributeDefinitions = list(
    list(
      "AttributeName" = "Artist",
      "AttributeType" = "S"
    ),
    list(
      "AttributeName" = "SongTitle",
      "AttributeType" = "S"
    )
  ),
  KeySchema = list(
    list(
      "AttributeName" = "Artist",
      "KeyType" = "HASH"
    ),
    list(
      "AttributeName" = "SongTitle",
      "KeyType" = "RANGE"
    )
  ),
  ProvisionedThroughput = list(
    "ReadCapacityUnits" = 5,
    "WriteCapacityUnits" = 5
  ),
  TableName = "Music"
)

# List our DynamoDB tables.
tables <- dynamodb$list_tables()

# Delete the table just created.
dynamodb$delete_table("Music")
