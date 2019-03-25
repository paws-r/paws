# Simple Notification Service examples

sns <- paws::sns()

# Create a topic to which we can send notifications.
topic <- sns$create_topic("ExampleTopic")

# List our topics.
sns$list_topics()

# Subscribe an email address to the topic.
# You'll have to confirm the subscription to receive emails.
sns$subscribe(
  TopicArn = topic$TopicArn,
  Protocol = "email",
  Endpoint = "user@example.com"
)

# Publish a message to the topic.
sns$publish(
  Message = "Hello world!",
  TopicArn = topic$TopicArn
)

# Delete the example topic.
sns$delete_topic(topic$TopicArn)
