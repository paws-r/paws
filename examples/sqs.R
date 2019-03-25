# Simple Queue Service examples

sqs <- paws::sqs()

# Create a queue.
sqs <- sqs$create_queue(
  QueueName = "ExampleQueue"
)

# Add a message to the queue.
sqs$send_message(
  QueueUrl = sqs$QueueUrl,
  MessageBody = "foo"
)

# Get the queue's attributes.
sqs$get_queue_attributes(
  QueueUrl = sqs$QueueUrl,
  AttributeNames = "All"
)

# Get the next message from the queue.
msg <- sqs$receive_message(
  QueueUrl = sqs$QueueUrl
)

# Delete the message.
sqs$delete_message(
  QueueUrl = sqs$QueueUrl,
  ReceiptHandle = msg$Messages[[1]]$ReceiptHandle
)

# Delete the queue.
sqs$delete_queue(
  QueueUrl = sqs$QueueUrl
)
