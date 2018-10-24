search_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cursor = structure(logical(0), shape = "Cursor", 
        location = "querystring", locationName = "cursor", type = "string"), 
        Expr = structure(logical(0), shape = "Expr", location = "querystring", 
            locationName = "expr", type = "string"), Facet = structure(logical(0), 
            shape = "Facet", location = "querystring", locationName = "facet", 
            type = "string"), FilterQuery = structure(logical(0), 
            shape = "FilterQuery", location = "querystring", 
            locationName = "filterQuery", type = "string"), Highlight = structure(logical(0), 
            shape = "Highlight", location = "querystring", locationName = "highlight", 
            type = "string"), Partial = structure(logical(0), 
            shape = "Partial", location = "querystring", locationName = "partial", 
            type = "boolean"), Query = structure(logical(0), 
            shape = "Query", location = "querystring", locationName = "query", 
            type = "string"), QueryOptions = structure(logical(0), 
            shape = "QueryOptions", location = "querystring", 
            locationName = "queryOptions", type = "string"), 
        QueryParser = structure(logical(0), shape = "QueryParser", 
            location = "querystring", locationName = "queryParser", 
            type = "string"), Return = structure(logical(0), 
            shape = "Return", location = "querystring", locationName = "return", 
            type = "string"), Size = structure(logical(0), shape = "Size", 
            location = "querystring", locationName = "size", 
            type = "long"), Sort = structure(logical(0), shape = "Sort", 
            location = "querystring", locationName = "sort", 
            type = "string"), Start = structure(logical(0), shape = "Start", 
            location = "querystring", locationName = "start", 
            type = "long"), Stats = structure(logical(0), shape = "Stat", 
            location = "querystring", locationName = "stats", 
            type = "string")), shape = "SearchRequest", type = "structure")
    return(populate(args, shape))
}

search_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(list(Timems = structure(logical(0), 
        shape = "Long", type = "long", locationName = "timems"), 
        Rid = structure(logical(0), shape = "String", type = "string", 
            locationName = "rid")), shape = "SearchStatus", type = "structure", 
        locationName = "status"), Hits = structure(list(Found = structure(logical(0), 
        shape = "Long", type = "long", locationName = "found"), 
        Start = structure(logical(0), shape = "Long", type = "long", 
            locationName = "start"), Cursor = structure(logical(0), 
            shape = "String", type = "string", locationName = "cursor"), 
        Hit = structure(list(structure(list(Id = structure(logical(0), 
            shape = "String", type = "string", locationName = "id"), 
            Fields = structure(list(structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "FieldValue", 
                type = "list")), shape = "Fields", type = "map", 
                locationName = "fields"), Exprs = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "Exprs", 
                type = "map", locationName = "exprs"), Highlights = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "Highlights", 
                type = "map", locationName = "highlights")), 
            shape = "Hit", type = "structure")), shape = "HitList", 
            type = "list", locationName = "hit")), shape = "Hits", 
        type = "structure", locationName = "hits"), Facets = structure(list(structure(list(Buckets = structure(list(structure(list(Value = structure(logical(0), 
        shape = "String", type = "string", locationName = "value"), 
        Count = structure(logical(0), shape = "Long", type = "long", 
            locationName = "count")), shape = "Bucket", type = "structure")), 
        shape = "BucketList", type = "list", locationName = "buckets")), 
        shape = "BucketInfo", type = "structure")), shape = "Facets", 
        type = "map", locationName = "facets"), Stats = structure(list(structure(list(Min = structure(logical(0), 
        shape = "String", type = "string", locationName = "min"), 
        Max = structure(logical(0), shape = "String", type = "string", 
            locationName = "max"), Count = structure(logical(0), 
            shape = "Long", type = "long", locationName = "count"), 
        Missing = structure(logical(0), shape = "Long", type = "long", 
            locationName = "missing"), Sum = structure(logical(0), 
            shape = "Double", type = "double", locationName = "sum"), 
        SumOfSquares = structure(logical(0), shape = "Double", 
            type = "double", locationName = "sumOfSquares"), 
        Mean = structure(logical(0), shape = "String", type = "string", 
            locationName = "mean"), Stddev = structure(logical(0), 
            shape = "Double", type = "double", locationName = "stddev")), 
        shape = "FieldStats", type = "structure")), shape = "Stats", 
        type = "map", locationName = "stats")), shape = "SearchResponse", 
        type = "structure")
    return(populate(args, shape))
}

suggest_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Query = structure(logical(0), shape = "Query", 
        location = "querystring", locationName = "query", type = "string"), 
        Suggester = structure(logical(0), shape = "Suggester", 
            location = "querystring", locationName = "suggester", 
            type = "string"), Size = structure(logical(0), shape = "SuggestionsSize", 
            location = "querystring", locationName = "size", 
            type = "long")), shape = "SuggestRequest", type = "structure")
    return(populate(args, shape))
}

suggest_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(list(Timems = structure(logical(0), 
        shape = "Long", type = "long", locationName = "timems"), 
        Rid = structure(logical(0), shape = "String", type = "string", 
            locationName = "rid")), shape = "SuggestStatus", 
        type = "structure", locationName = "status"), Suggest = structure(list(Query = structure(logical(0), 
        shape = "String", type = "string", locationName = "query"), 
        Found = structure(logical(0), shape = "Long", type = "long", 
            locationName = "found"), Suggestions = structure(list(structure(list(Suggestion = structure(logical(0), 
            shape = "String", type = "string", locationName = "suggestion"), 
            Score = structure(logical(0), shape = "Long", type = "long", 
                locationName = "score"), Id = structure(logical(0), 
                shape = "String", type = "string", locationName = "id")), 
            shape = "SuggestionMatch", type = "structure")), 
            shape = "Suggestions", type = "list", locationName = "suggestions")), 
        shape = "SuggestModel", type = "structure", locationName = "suggest")), 
        shape = "SuggestResponse", type = "structure")
    return(populate(args, shape))
}

upload_documents_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Documents = structure(logical(0), 
        shape = "Blob", type = "blob", streaming = TRUE, locationName = "documents"), 
        ContentType = structure(logical(0), shape = "ContentType", 
            location = "header", locationName = "contentType", 
            type = "string")), shape = "UploadDocumentsRequest", 
        type = "structure", payload = "documents")
    return(populate(args, shape))
}

upload_documents_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "String", 
        type = "string", locationName = "status"), Adds = structure(logical(0), 
        shape = "Adds", type = "long", locationName = "adds"), 
        Deletes = structure(logical(0), shape = "Deletes", type = "long", 
            locationName = "deletes"), Warnings = structure(list(structure(list(Message = structure(logical(0), 
            shape = "String", type = "string", locationName = "message")), 
            shape = "DocumentServiceWarning", type = "structure")), 
            shape = "DocumentServiceWarnings", type = "list", 
            locationName = "warnings")), shape = "UploadDocumentsResponse", 
        type = "structure")
    return(populate(args, shape))
}
