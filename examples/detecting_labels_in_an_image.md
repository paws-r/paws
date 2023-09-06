# Detecting labels in an image

This example has been adapted from https://docs.aws.amazon.com/rekognition/latest/dg/labels-detect-labels-image.html.

## To detect labels in an image:

- If you haven't already:
  - Create or update a user with AmazonRekognitionFullAccess
  - (Optional) AmazonS3ReadOnlyAccess permissions For more information please see [Step 1: Set up an AWS account and create a User.](https://docs.aws.amazon.com/rekognition/latest/dg/setting-up.html#setting-up-iam).

This example will go over 3 ways to play with AWS Rekognition. For this guide we will use some images from https://www.kaggle.com/datasets/pavansanagapati/images-dataset. Firstly lets create the function to interact and format the response from AWS Rekognition.

```r
detect_labels <- function(path=NULL, url=NULL, s3_uri=NULL) {
  if (!is.null(path)) {
    image <- list(Bytes = readBin(path, "raw", file.size(path)))
  } else if (!is.null(url)) {
    image <- list(Bytes = httr::GET(url)$content)
  } else if (!is.null(s3_uri)) {
    s3_uri_parts <- httr::parse_url(s3_uri)
    image <- list('S3Object'=list('Bucket'=s3_uri_parts$hostname,'Name'=s3_uri_parts$path))
  }
  client = paws::rekognition()
  resp = client$detect_labels(Image=image)
  format_resp <- lapply(resp[['Labels']], \(label) {
    list(
      Label = label$Name,
      Confidence = label$Confidence,
      Instance = lapply(label$Instances, \(instance) {
        list("Bounding box" = list(
            Top = instance$BoundingBox$Top,
            Left = instance$BoundingBox$Left,
            Width = instance$BoundingBox$Width,
            Height = instance$BoundingBox$Height,
            Confidence = instance$Confidence
          )
        )
      }),
      Parents = lapply(label$Parents, \(parent) parent$Name),
      Aliases = lapply(label$Aliases, \(alias) alias$Name),
      Categories = lapply(label$Categories, \(category) category$Name)
    )
  })
  return(format_resp)
}

# Will use yaml to format response
format_resp <- function(x, ...) {cat(yaml::as.yaml(x))}
```

### 1. Upload Image from local computer:

``` r
detect_labels(path = "dog.1.jpg") |> format_resp()

#> - Label: Animal
#>   Confidence: 97.6568451
#>   Instance: []
#>   Parents: []
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
#> - Label: Canine
#>   Confidence: 97.6568451
#>   Instance: []
#>   Parents:
#>     - Animal
#>     - Mammal
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
#> - Label: Dog
#>   Confidence: 97.6568451
#>   Instance:
#>     - Bounding box:
#>         Top: 0.1099598
#>         Left: 0.0845843
#>         Width: 0.8773929
#>         Height: 0.8484337
#>         Confidence: 97.6568451
#>   Parents:
#>     - Animal
#>     - Canine
#>     - Mammal
#>     - Pet
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
#> - Label: Mammal
#>   Confidence: 97.6568451
#>   Instance: []
#>   Parents:
#>     - Animal
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
#> - Label: Pet
#>   Confidence: 97.6568451
#>   Instance: []
#>   Parents:
#>     - Animal
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
#> - Label: Labrador Retriever
#>   Confidence: 95.0724869
#>   Instance: []
#>   Parents:
#>     - Animal
#>     - Canine
#>     - Dog
#>     - Mammal
#>     - Pet
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
#> - Label: Dog House
#>   Confidence: 68.8589554
#>   Instance: []
#>   Parents: []
#>   Aliases: []
#>   Categories:
#>     - Home and Indoors
#> - Label: Hound
#>   Confidence: 55.1159096
#>   Instance: []
#>   Parents:
#>     - Animal
#>     - Canine
#>     - Dog
#>     - Mammal
#>     - Pet
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
```

<sup>Created on 2023-09-06 with [reprex v2.0.2](https://reprex.tidyverse.org)</sup>

### 2. Upload Image from kaggle url:

``` r
# Note this url has been shortened, please go to https://www.kaggle.com/datasets/pavansanagapati/images-dataset
# to get full url
url <- "https://storage.googleapis.com/kagglesdsdata/datasets/32677/42529/data/dogs/dog.1.jpg?<...>"
detect_labels(url = url) |> format_resp()

#> - Label: Animal
#>   Confidence: 97.6568451
#>   Instance: []
#>   Parents: []
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
#> - Label: Canine
#>   Confidence: 97.6568451
#>   Instance: []
#>   Parents:
#>     - Animal
#>     - Mammal
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
#> - Label: Dog
#>   Confidence: 97.6568451
#>   Instance:
#>     - Bounding box:
#>         Top: 0.1099598
#>         Left: 0.0845843
#>         Width: 0.8773929
#>         Height: 0.8484337
#>         Confidence: 97.6568451
#>   Parents:
#>     - Animal
#>     - Canine
#>     - Mammal
#>     - Pet
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
#> - Label: Mammal
#>   Confidence: 97.6568451
#>   Instance: []
#>   Parents:
#>     - Animal
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
#> - Label: Pet
#>   Confidence: 97.6568451
#>   Instance: []
#>   Parents:
#>     - Animal
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
#> - Label: Labrador Retriever
#>   Confidence: 95.0724869
#>   Instance: []
#>   Parents:
#>     - Animal
#>     - Canine
#>     - Dog
#>     - Mammal
#>     - Pet
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
#> - Label: Dog House
#>   Confidence: 68.8589554
#>   Instance: []
#>   Parents: []
#>   Aliases: []
#>   Categories:
#>     - Home and Indoors
#> - Label: Hound
#>   Confidence: 55.1159096
#>   Instance: []
#>   Parents:
#>     - Animal
#>     - Canine
#>     - Dog
#>     - Mammal
#>     - Pet
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
```

<sup>Created on 2023-09-06 with [reprex v2.0.2](https://reprex.tidyverse.org)</sup>

### 3. Upload Image from AWS S3 Bucket:

This step requires you to have AWS S3 access. Please refer to [Step 1: Set up an AWS account and create a User.](https://docs.aws.amazon.com/rekognition/latest/dg/setting-up.html#setting-up-iam) for more information in how to setup IAM roles.

``` r
# Note: Upload your image to your S3 bucket.
s3_uri <- "s3://my-bucket/path/to/dog.1.jpg"
detect_labels(url = url) |> format_resp()

#> - Label: Animal
#>   Confidence: 97.6568451
#>   Instance: []
#>   Parents: []
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
#> - Label: Canine
#>   Confidence: 97.6568451
#>   Instance: []
#>   Parents:
#>     - Animal
#>     - Mammal
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
#> - Label: Dog
#>   Confidence: 97.6568451
#>   Instance:
#>     - Bounding box:
#>         Top: 0.1099598
#>         Left: 0.0845843
#>         Width: 0.8773929
#>         Height: 0.8484337
#>         Confidence: 97.6568451
#>   Parents:
#>     - Animal
#>     - Canine
#>     - Mammal
#>     - Pet
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
#> - Label: Mammal
#>   Confidence: 97.6568451
#>   Instance: []
#>   Parents:
#>     - Animal
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
#> - Label: Pet
#>   Confidence: 97.6568451
#>   Instance: []
#>   Parents:
#>     - Animal
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
#> - Label: Labrador Retriever
#>   Confidence: 95.0724869
#>   Instance: []
#>   Parents:
#>     - Animal
#>     - Canine
#>     - Dog
#>     - Mammal
#>     - Pet
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
#> - Label: Dog House
#>   Confidence: 68.8589554
#>   Instance: []
#>   Parents: []
#>   Aliases: []
#>   Categories:
#>     - Home and Indoors
#> - Label: Hound
#>   Confidence: 55.1159096
#>   Instance: []
#>   Parents:
#>     - Animal
#>     - Canine
#>     - Dog
#>     - Mammal
#>     - Pet
#>   Aliases: []
#>   Categories:
#>     - Animals and Pets
```

<sup>Created on 2023-09-06 with [reprex v2.0.2](https://reprex.tidyverse.org)</sup>
