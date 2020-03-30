# Using R with Amazon Web Services for document analysis
# https://aws.amazon.com/blogs/opensource/using-r-with-amazon-web-services-for-document-analysis/

# This R program shows how you can use AWS with R to create a data pipeline for
# extracting data from PDFs for future processing, using Textract, S3,
# Relational Database Service (RDS).

# The PDF document is from the Greenbook projections, a set of economic 
# projections made by the Federal Reserve from 1966 to the present.  They are
# available as a collection of PDFs from the Philadelphia Federal Reserve at:
# https://www.philadelphiafed.org/research-and-data/real-time-center/greenbook-data/pdf-data-set

# This R program expects that you have:
#   - An S3 bucket with PDFs
#   - An RDS PostgreSQL database with IAM authentication
#   - A user, instance, or container with IAM permissions to access Textract
#     and your RDS database
#   - R, and the packages paws, DBI, and RPostgres

#-------------------------------------------------------------------------------

# The location of the first Greenbook Projections PDF document in S3.
bucket <- "my-bucket"
file <- "GS-1966-01-11.pdf"

textract <- paws::textract()

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

# Get a PDF document's tables using Amazon Textract.
# --------------------------------------------------

analyze_document <- function(bucket, file) {
  
  # Start analyzing the PDF.
  resp <- textract$start_document_analysis(
    DocumentLocation = list(
      S3Object = list(Bucket = bucket, Name = file)
    ),
    FeatureTypes = "TABLES"
  )
  
  # Check that the analysis is done and get the result.
  count <- 0
  while (count < 30 && (!exists("result") || result$JobStatus == "IN_PROGRESS")) {
    Sys.sleep(1)
    result <- textract$get_document_analysis(
      JobId = resp$JobId
    )
    # If the result has multiple parts, get the remaining parts.
    next_token <- result$NextToken
    while (length(next_token) > 0) {
      next_result <- textract$get_document_analysis(
        JobId = resp$JobId,
        NextToken = next_token
      )
      result$Blocks <- c(result$Blocks, next_result$Blocks)
      next_token <- next_result$NextToken
    }
    count <- count + 1
  }
  
  return(result)
}

analysis <- analyze_document(bucket, file)

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

# Turn the Textract analysis result into matrices.
# ------------------------------------------------

# Get all children for a given block.
get_children <- function(block, data) {
  if (length(block$Relationships) == 0) {
    return(list())
  }
  idx <- which(sapply(block$Relationships, function(x) x$Type) == "CHILD")
  if (!idx) {
    return(list())
  }
  child_ids <- block$Relationships[[idx]]$Ids
  result <- data[child_ids]
  return(result)
}

# Get all tables for a given document analysis returned by `analyze_document`.
get_tables <- function(analysis) {
  blocks <- analysis$Blocks
  names(blocks) <- sapply(blocks, function(x) x$Id)
  tables <- list()
  for (block in blocks) {
    
    if (block$BlockType == "TABLE") {
      cells <- get_children(block, blocks)
      rows <- max(sapply(cells, function(x) x$RowIndex))
      cols <- max(sapply(cells, function(x) x$ColumnIndex))
      table <- matrix(nrow = rows, ncol = cols)
      
      # 1. Go through a table's cells one-by-one
      for (cell in cells) {
        
        # 2. Get the cell's contents
        words <- get_children(cell, blocks)
        text <- paste(sapply(words, function(x) x$Text), collapse = " ")
        
        # 3. Insert the cell contents into the matrix
        row <- cell$RowIndex
        col <- cell$ColumnIndex
        table[row, col] <- text
      }
      tables <- c(tables, list(table))
    }
  }
  return(tables)
}

tables <- get_tables(analysis)

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

# Upload our results to our database.
# -----------------------------------

# Connect to the database using an IAM authentication token.
rds <- paws::rds()
token <- rds$build_auth_token("myhost:5432", "us-east-1", "david")
con <- DBI::dbConnect(
  RPostgres::Postgres(),
  host = "myhost", port = 5432, dbname = "mydb",
  user = "david", password = token
)

# Create rows for each table to insert into the database.
database_rows <- data.frame(
  document = "GS-1966-01-11.pdf", 
  table_num = 1:length(tables),
  data = sapply(tables, jsonlite::toJSON)
)

# Store the tables in the database.
DBI::dbAppendTable(con, name = "tables", value = database_rows)
