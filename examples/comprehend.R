# Comprehend natural language processing examples

comprehend <- paws::comprehend()

# Determine the dominant language(s) in a document.
comprehend$detect_dominant_language(
  Text = "Hello world!"
)

# Determine the prevailing sentiment in a batch of documents.
comprehend$batch_detect_sentiment(
  TextList = list(
    "Awesome!",
    "OK",
    "Meh",
    "Terrible!"
  ),
  LanguageCode = "en"
)

text <-
  "Gatsby believed in the green light, the orgiastic future that year by
   year recedes before us. It eluded us then, but that's no matter--
   tomorrow we will run faster, stretch out our arms farther.... And one
   fine morning-- So we beat on, boats against the current, borne back
   ceaselessly into the past."

# Find named entities in a document.
comprehend$detect_entities(
  Text = text,
  LanguageCode = "en"
)
