build_suggesters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+")), shape = "BuildSuggestersRequest", 
        type = "structure")
    return(populate(args, shape))
}

build_suggesters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FieldNames = structure(list(structure(logical(0), 
        shape = "FieldName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*")), shape = "FieldNameList", 
        type = "list")), shape = "BuildSuggestersResponse", type = "structure")
    return(populate(args, shape))
}

create_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+")), shape = "CreateDomainRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainStatus = structure(list(DomainId = structure(logical(0), 
        shape = "DomainId", type = "string", min = 1L, max = 64L), 
        DomainName = structure(logical(0), shape = "DomainName", 
            type = "string", min = 3L, max = 28L, pattern = "[a-z][a-z0-9\\-]+"), 
        ARN = structure(logical(0), shape = "ARN", type = "string"), 
        Created = structure(logical(0), shape = "Boolean", type = "boolean"), 
        Deleted = structure(logical(0), shape = "Boolean", type = "boolean"), 
        DocService = structure(list(Endpoint = structure(logical(0), 
            shape = "ServiceUrl", type = "string")), shape = "ServiceEndpoint", 
            type = "structure"), SearchService = structure(list(Endpoint = structure(logical(0), 
            shape = "ServiceUrl", type = "string")), shape = "ServiceEndpoint", 
            type = "structure"), RequiresIndexDocuments = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Processing = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchInstanceType = structure(logical(0), 
            shape = "SearchInstanceType", type = "string"), SearchPartitionCount = structure(logical(0), 
            shape = "PartitionCount", type = "integer", min = 1L), 
        SearchInstanceCount = structure(logical(0), shape = "InstanceCount", 
            type = "integer", min = 1L), Limits = structure(list(MaximumReplicationCount = structure(logical(0), 
            shape = "MaximumReplicationCount", type = "integer", 
            min = 1L), MaximumPartitionCount = structure(logical(0), 
            shape = "MaximumPartitionCount", type = "integer", 
            min = 1L)), shape = "Limits", type = "structure")), 
        shape = "DomainStatus", type = "structure")), shape = "CreateDomainResponse", 
        type = "structure")
    return(populate(args, shape))
}

define_analysis_scheme_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+"), AnalysisScheme = structure(list(AnalysisSchemeName = structure(logical(0), 
        shape = "StandardName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*"), AnalysisSchemeLanguage = structure(logical(0), 
        shape = "AnalysisSchemeLanguage", type = "string"), AnalysisOptions = structure(list(Synonyms = structure(logical(0), 
        shape = "String", type = "string"), Stopwords = structure(logical(0), 
        shape = "String", type = "string"), StemmingDictionary = structure(logical(0), 
        shape = "String", type = "string"), JapaneseTokenizationDictionary = structure(logical(0), 
        shape = "String", type = "string"), AlgorithmicStemming = structure(logical(0), 
        shape = "AlgorithmicStemming", type = "string")), shape = "AnalysisOptions", 
        type = "structure")), shape = "AnalysisScheme", type = "structure")), 
        shape = "DefineAnalysisSchemeRequest", type = "structure")
    return(populate(args, shape))
}

define_analysis_scheme_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AnalysisScheme = structure(list(Options = structure(list(AnalysisSchemeName = structure(logical(0), 
        shape = "StandardName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*"), AnalysisSchemeLanguage = structure(logical(0), 
        shape = "AnalysisSchemeLanguage", type = "string"), AnalysisOptions = structure(list(Synonyms = structure(logical(0), 
        shape = "String", type = "string"), Stopwords = structure(logical(0), 
        shape = "String", type = "string"), StemmingDictionary = structure(logical(0), 
        shape = "String", type = "string"), JapaneseTokenizationDictionary = structure(logical(0), 
        shape = "String", type = "string"), AlgorithmicStemming = structure(logical(0), 
        shape = "AlgorithmicStemming", type = "string")), shape = "AnalysisOptions", 
        type = "structure")), shape = "AnalysisScheme", type = "structure"), 
        Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "AnalysisSchemeStatus", 
        type = "structure")), shape = "DefineAnalysisSchemeResponse", 
        type = "structure")
    return(populate(args, shape))
}

define_expression_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+"), Expression = structure(list(ExpressionName = structure(logical(0), 
        shape = "StandardName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*"), ExpressionValue = structure(logical(0), 
        shape = "ExpressionValue", type = "string", min = 1L, 
        max = 10240L)), shape = "Expression", type = "structure")), 
        shape = "DefineExpressionRequest", type = "structure")
    return(populate(args, shape))
}

define_expression_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Expression = structure(list(Options = structure(list(ExpressionName = structure(logical(0), 
        shape = "StandardName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*"), ExpressionValue = structure(logical(0), 
        shape = "ExpressionValue", type = "string", min = 1L, 
        max = 10240L)), shape = "Expression", type = "structure"), 
        Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "ExpressionStatus", 
        type = "structure")), shape = "DefineExpressionResponse", 
        type = "structure")
    return(populate(args, shape))
}

define_index_field_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+"), IndexField = structure(list(IndexFieldName = structure(logical(0), 
        shape = "DynamicFieldName", type = "string", min = 1L, 
        max = 64L, pattern = "([a-z][a-z0-9_]*\\*?|\\*[a-z0-9_]*)"), 
        IndexFieldType = structure(logical(0), shape = "IndexFieldType", 
            type = "string"), IntOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "Long", type = "long"), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "IntOptions", 
            type = "structure"), DoubleOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "Double", type = "double"), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DoubleOptions", 
            type = "structure"), LiteralOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "LiteralOptions", 
            type = "structure"), TextOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), HighlightEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AnalysisScheme = structure(logical(0), 
            shape = "Word", type = "string", pattern = "[\\S]+")), 
            shape = "TextOptions", type = "structure"), DateOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DateOptions", 
            type = "structure"), LatLonOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "LatLonOptions", 
            type = "structure"), IntArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "Long", type = "long"), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            FacetEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), SearchEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "IntArrayOptions", 
            type = "structure"), DoubleArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "Double", type = "double"), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            FacetEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), SearchEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "DoubleArrayOptions", 
            type = "structure"), LiteralArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            FacetEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), SearchEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "LiteralArrayOptions", 
            type = "structure"), TextArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            ReturnEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), HighlightEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), AnalysisScheme = structure(logical(0), 
                shape = "Word", type = "string", pattern = "[\\S]+")), 
            shape = "TextArrayOptions", type = "structure"), 
        DateArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            FacetEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), SearchEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "DateArrayOptions", 
            type = "structure")), shape = "IndexField", type = "structure")), 
        shape = "DefineIndexFieldRequest", type = "structure")
    return(populate(args, shape))
}

define_index_field_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IndexField = structure(list(Options = structure(list(IndexFieldName = structure(logical(0), 
        shape = "DynamicFieldName", type = "string", min = 1L, 
        max = 64L, pattern = "([a-z][a-z0-9_]*\\*?|\\*[a-z0-9_]*)"), 
        IndexFieldType = structure(logical(0), shape = "IndexFieldType", 
            type = "string"), IntOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "Long", type = "long"), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "IntOptions", 
            type = "structure"), DoubleOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "Double", type = "double"), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DoubleOptions", 
            type = "structure"), LiteralOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "LiteralOptions", 
            type = "structure"), TextOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), HighlightEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AnalysisScheme = structure(logical(0), 
            shape = "Word", type = "string", pattern = "[\\S]+")), 
            shape = "TextOptions", type = "structure"), DateOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DateOptions", 
            type = "structure"), LatLonOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "LatLonOptions", 
            type = "structure"), IntArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "Long", type = "long"), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            FacetEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), SearchEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "IntArrayOptions", 
            type = "structure"), DoubleArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "Double", type = "double"), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            FacetEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), SearchEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "DoubleArrayOptions", 
            type = "structure"), LiteralArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            FacetEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), SearchEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "LiteralArrayOptions", 
            type = "structure"), TextArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            ReturnEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), HighlightEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), AnalysisScheme = structure(logical(0), 
                shape = "Word", type = "string", pattern = "[\\S]+")), 
            shape = "TextArrayOptions", type = "structure"), 
        DateArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            FacetEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), SearchEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "DateArrayOptions", 
            type = "structure")), shape = "IndexField", type = "structure"), 
        Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "IndexFieldStatus", 
        type = "structure")), shape = "DefineIndexFieldResponse", 
        type = "structure")
    return(populate(args, shape))
}

define_suggester_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+"), Suggester = structure(list(SuggesterName = structure(logical(0), 
        shape = "StandardName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*"), DocumentSuggesterOptions = structure(list(SourceField = structure(logical(0), 
        shape = "FieldName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*"), FuzzyMatching = structure(logical(0), 
        shape = "SuggesterFuzzyMatching", type = "string"), SortExpression = structure(logical(0), 
        shape = "String", type = "string")), shape = "DocumentSuggesterOptions", 
        type = "structure")), shape = "Suggester", type = "structure")), 
        shape = "DefineSuggesterRequest", type = "structure")
    return(populate(args, shape))
}

define_suggester_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Suggester = structure(list(Options = structure(list(SuggesterName = structure(logical(0), 
        shape = "StandardName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*"), DocumentSuggesterOptions = structure(list(SourceField = structure(logical(0), 
        shape = "FieldName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*"), FuzzyMatching = structure(logical(0), 
        shape = "SuggesterFuzzyMatching", type = "string"), SortExpression = structure(logical(0), 
        shape = "String", type = "string")), shape = "DocumentSuggesterOptions", 
        type = "structure")), shape = "Suggester", type = "structure"), 
        Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "SuggesterStatus", 
        type = "structure")), shape = "DefineSuggesterResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_analysis_scheme_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+"), AnalysisSchemeName = structure(logical(0), 
        shape = "StandardName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*")), shape = "DeleteAnalysisSchemeRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_analysis_scheme_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AnalysisScheme = structure(list(Options = structure(list(AnalysisSchemeName = structure(logical(0), 
        shape = "StandardName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*"), AnalysisSchemeLanguage = structure(logical(0), 
        shape = "AnalysisSchemeLanguage", type = "string"), AnalysisOptions = structure(list(Synonyms = structure(logical(0), 
        shape = "String", type = "string"), Stopwords = structure(logical(0), 
        shape = "String", type = "string"), StemmingDictionary = structure(logical(0), 
        shape = "String", type = "string"), JapaneseTokenizationDictionary = structure(logical(0), 
        shape = "String", type = "string"), AlgorithmicStemming = structure(logical(0), 
        shape = "AlgorithmicStemming", type = "string")), shape = "AnalysisOptions", 
        type = "structure")), shape = "AnalysisScheme", type = "structure"), 
        Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "AnalysisSchemeStatus", 
        type = "structure")), shape = "DeleteAnalysisSchemeResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+")), shape = "DeleteDomainRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainStatus = structure(list(DomainId = structure(logical(0), 
        shape = "DomainId", type = "string", min = 1L, max = 64L), 
        DomainName = structure(logical(0), shape = "DomainName", 
            type = "string", min = 3L, max = 28L, pattern = "[a-z][a-z0-9\\-]+"), 
        ARN = structure(logical(0), shape = "ARN", type = "string"), 
        Created = structure(logical(0), shape = "Boolean", type = "boolean"), 
        Deleted = structure(logical(0), shape = "Boolean", type = "boolean"), 
        DocService = structure(list(Endpoint = structure(logical(0), 
            shape = "ServiceUrl", type = "string")), shape = "ServiceEndpoint", 
            type = "structure"), SearchService = structure(list(Endpoint = structure(logical(0), 
            shape = "ServiceUrl", type = "string")), shape = "ServiceEndpoint", 
            type = "structure"), RequiresIndexDocuments = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Processing = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchInstanceType = structure(logical(0), 
            shape = "SearchInstanceType", type = "string"), SearchPartitionCount = structure(logical(0), 
            shape = "PartitionCount", type = "integer", min = 1L), 
        SearchInstanceCount = structure(logical(0), shape = "InstanceCount", 
            type = "integer", min = 1L), Limits = structure(list(MaximumReplicationCount = structure(logical(0), 
            shape = "MaximumReplicationCount", type = "integer", 
            min = 1L), MaximumPartitionCount = structure(logical(0), 
            shape = "MaximumPartitionCount", type = "integer", 
            min = 1L)), shape = "Limits", type = "structure")), 
        shape = "DomainStatus", type = "structure")), shape = "DeleteDomainResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_expression_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+"), ExpressionName = structure(logical(0), 
        shape = "StandardName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*")), shape = "DeleteExpressionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_expression_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Expression = structure(list(Options = structure(list(ExpressionName = structure(logical(0), 
        shape = "StandardName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*"), ExpressionValue = structure(logical(0), 
        shape = "ExpressionValue", type = "string", min = 1L, 
        max = 10240L)), shape = "Expression", type = "structure"), 
        Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "ExpressionStatus", 
        type = "structure")), shape = "DeleteExpressionResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_index_field_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+"), IndexFieldName = structure(logical(0), 
        shape = "DynamicFieldName", type = "string", min = 1L, 
        max = 64L, pattern = "([a-z][a-z0-9_]*\\*?|\\*[a-z0-9_]*)")), 
        shape = "DeleteIndexFieldRequest", type = "structure")
    return(populate(args, shape))
}

delete_index_field_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IndexField = structure(list(Options = structure(list(IndexFieldName = structure(logical(0), 
        shape = "DynamicFieldName", type = "string", min = 1L, 
        max = 64L, pattern = "([a-z][a-z0-9_]*\\*?|\\*[a-z0-9_]*)"), 
        IndexFieldType = structure(logical(0), shape = "IndexFieldType", 
            type = "string"), IntOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "Long", type = "long"), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "IntOptions", 
            type = "structure"), DoubleOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "Double", type = "double"), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DoubleOptions", 
            type = "structure"), LiteralOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "LiteralOptions", 
            type = "structure"), TextOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), HighlightEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AnalysisScheme = structure(logical(0), 
            shape = "Word", type = "string", pattern = "[\\S]+")), 
            shape = "TextOptions", type = "structure"), DateOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DateOptions", 
            type = "structure"), LatLonOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "LatLonOptions", 
            type = "structure"), IntArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "Long", type = "long"), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            FacetEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), SearchEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "IntArrayOptions", 
            type = "structure"), DoubleArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "Double", type = "double"), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            FacetEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), SearchEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "DoubleArrayOptions", 
            type = "structure"), LiteralArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            FacetEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), SearchEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "LiteralArrayOptions", 
            type = "structure"), TextArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            ReturnEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), HighlightEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), AnalysisScheme = structure(logical(0), 
                shape = "Word", type = "string", pattern = "[\\S]+")), 
            shape = "TextArrayOptions", type = "structure"), 
        DateArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            FacetEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), SearchEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "DateArrayOptions", 
            type = "structure")), shape = "IndexField", type = "structure"), 
        Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "IndexFieldStatus", 
        type = "structure")), shape = "DeleteIndexFieldResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_suggester_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+"), SuggesterName = structure(logical(0), 
        shape = "StandardName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*")), shape = "DeleteSuggesterRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_suggester_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Suggester = structure(list(Options = structure(list(SuggesterName = structure(logical(0), 
        shape = "StandardName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*"), DocumentSuggesterOptions = structure(list(SourceField = structure(logical(0), 
        shape = "FieldName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*"), FuzzyMatching = structure(logical(0), 
        shape = "SuggesterFuzzyMatching", type = "string"), SortExpression = structure(logical(0), 
        shape = "String", type = "string")), shape = "DocumentSuggesterOptions", 
        type = "structure")), shape = "Suggester", type = "structure"), 
        Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "SuggesterStatus", 
        type = "structure")), shape = "DeleteSuggesterResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_analysis_schemes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+"), AnalysisSchemeNames = structure(list(structure(logical(0), 
        shape = "StandardName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*")), shape = "StandardNameList", 
        type = "list"), Deployed = structure(logical(0), shape = "Boolean", 
        type = "boolean")), shape = "DescribeAnalysisSchemesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_analysis_schemes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AnalysisSchemes = structure(list(structure(list(Options = structure(list(AnalysisSchemeName = structure(logical(0), 
        shape = "StandardName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*"), AnalysisSchemeLanguage = structure(logical(0), 
        shape = "AnalysisSchemeLanguage", type = "string"), AnalysisOptions = structure(list(Synonyms = structure(logical(0), 
        shape = "String", type = "string"), Stopwords = structure(logical(0), 
        shape = "String", type = "string"), StemmingDictionary = structure(logical(0), 
        shape = "String", type = "string"), JapaneseTokenizationDictionary = structure(logical(0), 
        shape = "String", type = "string"), AlgorithmicStemming = structure(logical(0), 
        shape = "AlgorithmicStemming", type = "string")), shape = "AnalysisOptions", 
        type = "structure")), shape = "AnalysisScheme", type = "structure"), 
        Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "AnalysisSchemeStatus", 
        type = "structure")), shape = "AnalysisSchemeStatusList", 
        type = "list")), shape = "DescribeAnalysisSchemesResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_availability_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+"), Deployed = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "DescribeAvailabilityOptionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_availability_options_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AvailabilityOptions = structure(list(Options = structure(logical(0), 
        shape = "MultiAZ", type = "boolean"), Status = structure(list(CreationDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
        shape = "UIntValue", type = "integer", min = 0L), State = structure(logical(0), 
        shape = "OptionState", type = "string"), PendingDeletion = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
        type = "structure")), shape = "AvailabilityOptionsStatus", 
        type = "structure")), shape = "DescribeAvailabilityOptionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_domains_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainNames = structure(list(structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+")), shape = "DomainNameList", 
        type = "list")), shape = "DescribeDomainsRequest", type = "structure")
    return(populate(args, shape))
}

describe_domains_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainStatusList = structure(list(structure(list(DomainId = structure(logical(0), 
        shape = "DomainId", type = "string", min = 1L, max = 64L), 
        DomainName = structure(logical(0), shape = "DomainName", 
            type = "string", min = 3L, max = 28L, pattern = "[a-z][a-z0-9\\-]+"), 
        ARN = structure(logical(0), shape = "ARN", type = "string"), 
        Created = structure(logical(0), shape = "Boolean", type = "boolean"), 
        Deleted = structure(logical(0), shape = "Boolean", type = "boolean"), 
        DocService = structure(list(Endpoint = structure(logical(0), 
            shape = "ServiceUrl", type = "string")), shape = "ServiceEndpoint", 
            type = "structure"), SearchService = structure(list(Endpoint = structure(logical(0), 
            shape = "ServiceUrl", type = "string")), shape = "ServiceEndpoint", 
            type = "structure"), RequiresIndexDocuments = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Processing = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchInstanceType = structure(logical(0), 
            shape = "SearchInstanceType", type = "string"), SearchPartitionCount = structure(logical(0), 
            shape = "PartitionCount", type = "integer", min = 1L), 
        SearchInstanceCount = structure(logical(0), shape = "InstanceCount", 
            type = "integer", min = 1L), Limits = structure(list(MaximumReplicationCount = structure(logical(0), 
            shape = "MaximumReplicationCount", type = "integer", 
            min = 1L), MaximumPartitionCount = structure(logical(0), 
            shape = "MaximumPartitionCount", type = "integer", 
            min = 1L)), shape = "Limits", type = "structure")), 
        shape = "DomainStatus", type = "structure")), shape = "DomainStatusList", 
        type = "list")), shape = "DescribeDomainsResponse", type = "structure")
    return(populate(args, shape))
}

describe_expressions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+"), ExpressionNames = structure(list(structure(logical(0), 
        shape = "StandardName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*")), shape = "StandardNameList", 
        type = "list"), Deployed = structure(logical(0), shape = "Boolean", 
        type = "boolean")), shape = "DescribeExpressionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_expressions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Expressions = structure(list(structure(list(Options = structure(list(ExpressionName = structure(logical(0), 
        shape = "StandardName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*"), ExpressionValue = structure(logical(0), 
        shape = "ExpressionValue", type = "string", min = 1L, 
        max = 10240L)), shape = "Expression", type = "structure"), 
        Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "ExpressionStatus", 
        type = "structure")), shape = "ExpressionStatusList", 
        type = "list")), shape = "DescribeExpressionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_index_fields_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+"), FieldNames = structure(list(structure(logical(0), 
        shape = "DynamicFieldName", type = "string", min = 1L, 
        max = 64L, pattern = "([a-z][a-z0-9_]*\\*?|\\*[a-z0-9_]*)")), 
        shape = "DynamicFieldNameList", type = "list"), Deployed = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "DescribeIndexFieldsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_index_fields_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IndexFields = structure(list(structure(list(Options = structure(list(IndexFieldName = structure(logical(0), 
        shape = "DynamicFieldName", type = "string", min = 1L, 
        max = 64L, pattern = "([a-z][a-z0-9_]*\\*?|\\*[a-z0-9_]*)"), 
        IndexFieldType = structure(logical(0), shape = "IndexFieldType", 
            type = "string"), IntOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "Long", type = "long"), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "IntOptions", 
            type = "structure"), DoubleOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "Double", type = "double"), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DoubleOptions", 
            type = "structure"), LiteralOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "LiteralOptions", 
            type = "structure"), TextOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), HighlightEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AnalysisScheme = structure(logical(0), 
            shape = "Word", type = "string", pattern = "[\\S]+")), 
            shape = "TextOptions", type = "structure"), DateOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DateOptions", 
            type = "structure"), LatLonOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceField = structure(logical(0), 
            shape = "FieldName", type = "string", min = 1L, max = 64L, 
            pattern = "[a-z][a-z0-9_]*"), FacetEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SearchEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SortEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "LatLonOptions", 
            type = "structure"), IntArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "Long", type = "long"), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            FacetEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), SearchEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "IntArrayOptions", 
            type = "structure"), DoubleArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "Double", type = "double"), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            FacetEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), SearchEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "DoubleArrayOptions", 
            type = "structure"), LiteralArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            FacetEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), SearchEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "LiteralArrayOptions", 
            type = "structure"), TextArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            ReturnEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), HighlightEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), AnalysisScheme = structure(logical(0), 
                shape = "Word", type = "string", pattern = "[\\S]+")), 
            shape = "TextArrayOptions", type = "structure"), 
        DateArrayOptions = structure(list(DefaultValue = structure(logical(0), 
            shape = "FieldValue", type = "string", min = 0L, 
            max = 1024L), SourceFields = structure(logical(0), 
            shape = "FieldNameCommaList", type = "string", pattern = "\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*"), 
            FacetEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean"), SearchEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ReturnEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "DateArrayOptions", 
            type = "structure")), shape = "IndexField", type = "structure"), 
        Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "IndexFieldStatus", 
        type = "structure")), shape = "IndexFieldStatusList", 
        type = "list")), shape = "DescribeIndexFieldsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_scaling_parameters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+")), shape = "DescribeScalingParametersRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_scaling_parameters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScalingParameters = structure(list(Options = structure(list(DesiredInstanceType = structure(logical(0), 
        shape = "PartitionInstanceType", type = "string"), DesiredReplicationCount = structure(logical(0), 
        shape = "UIntValue", type = "integer", min = 0L), DesiredPartitionCount = structure(logical(0), 
        shape = "UIntValue", type = "integer", min = 0L)), shape = "ScalingParameters", 
        type = "structure"), Status = structure(list(CreationDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
        shape = "UIntValue", type = "integer", min = 0L), State = structure(logical(0), 
        shape = "OptionState", type = "string"), PendingDeletion = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
        type = "structure")), shape = "ScalingParametersStatus", 
        type = "structure")), shape = "DescribeScalingParametersResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_service_access_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+"), Deployed = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "DescribeServiceAccessPoliciesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_service_access_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccessPolicies = structure(list(Options = structure(logical(0), 
        shape = "PolicyDocument", type = "string"), Status = structure(list(CreationDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
        shape = "UIntValue", type = "integer", min = 0L), State = structure(logical(0), 
        shape = "OptionState", type = "string"), PendingDeletion = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
        type = "structure")), shape = "AccessPoliciesStatus", 
        type = "structure")), shape = "DescribeServiceAccessPoliciesResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_suggesters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+"), SuggesterNames = structure(list(structure(logical(0), 
        shape = "StandardName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*")), shape = "StandardNameList", 
        type = "list"), Deployed = structure(logical(0), shape = "Boolean", 
        type = "boolean")), shape = "DescribeSuggestersRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_suggesters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Suggesters = structure(list(structure(list(Options = structure(list(SuggesterName = structure(logical(0), 
        shape = "StandardName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*"), DocumentSuggesterOptions = structure(list(SourceField = structure(logical(0), 
        shape = "FieldName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*"), FuzzyMatching = structure(logical(0), 
        shape = "SuggesterFuzzyMatching", type = "string"), SortExpression = structure(logical(0), 
        shape = "String", type = "string")), shape = "DocumentSuggesterOptions", 
        type = "structure")), shape = "Suggester", type = "structure"), 
        Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "SuggesterStatus", 
        type = "structure")), shape = "SuggesterStatusList", 
        type = "list")), shape = "DescribeSuggestersResponse", 
        type = "structure")
    return(populate(args, shape))
}

index_documents_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+")), shape = "IndexDocumentsRequest", 
        type = "structure")
    return(populate(args, shape))
}

index_documents_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FieldNames = structure(list(structure(logical(0), 
        shape = "FieldName", type = "string", min = 1L, max = 64L, 
        pattern = "[a-z][a-z0-9_]*")), shape = "FieldNameList", 
        type = "list")), shape = "IndexDocumentsResponse", type = "structure")
    return(populate(args, shape))
}

list_domain_names_input <- function () 
{
    return(list())
}

list_domain_names_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainNames = structure(list(structure(logical(0), 
        shape = "APIVersion", type = "string")), shape = "DomainNameMap", 
        type = "map")), shape = "ListDomainNamesResponse", type = "structure")
    return(populate(args, shape))
}

update_availability_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+"), MultiAZ = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "UpdateAvailabilityOptionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_availability_options_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AvailabilityOptions = structure(list(Options = structure(logical(0), 
        shape = "MultiAZ", type = "boolean"), Status = structure(list(CreationDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
        shape = "UIntValue", type = "integer", min = 0L), State = structure(logical(0), 
        shape = "OptionState", type = "string"), PendingDeletion = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
        type = "structure")), shape = "AvailabilityOptionsStatus", 
        type = "structure")), shape = "UpdateAvailabilityOptionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_scaling_parameters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+"), ScalingParameters = structure(list(DesiredInstanceType = structure(logical(0), 
        shape = "PartitionInstanceType", type = "string"), DesiredReplicationCount = structure(logical(0), 
        shape = "UIntValue", type = "integer", min = 0L), DesiredPartitionCount = structure(logical(0), 
        shape = "UIntValue", type = "integer", min = 0L)), shape = "ScalingParameters", 
        type = "structure")), shape = "UpdateScalingParametersRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_scaling_parameters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScalingParameters = structure(list(Options = structure(list(DesiredInstanceType = structure(logical(0), 
        shape = "PartitionInstanceType", type = "string"), DesiredReplicationCount = structure(logical(0), 
        shape = "UIntValue", type = "integer", min = 0L), DesiredPartitionCount = structure(logical(0), 
        shape = "UIntValue", type = "integer", min = 0L)), shape = "ScalingParameters", 
        type = "structure"), Status = structure(list(CreationDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
        shape = "UIntValue", type = "integer", min = 0L), State = structure(logical(0), 
        shape = "OptionState", type = "string"), PendingDeletion = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
        type = "structure")), shape = "ScalingParametersStatus", 
        type = "structure")), shape = "UpdateScalingParametersResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_service_access_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", min = 3L, max = 28L, 
        pattern = "[a-z][a-z0-9\\-]+"), AccessPolicies = structure(logical(0), 
        shape = "PolicyDocument", type = "string")), shape = "UpdateServiceAccessPoliciesRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_service_access_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccessPolicies = structure(list(Options = structure(logical(0), 
        shape = "PolicyDocument", type = "string"), Status = structure(list(CreationDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
        shape = "UIntValue", type = "integer", min = 0L), State = structure(logical(0), 
        shape = "OptionState", type = "string"), PendingDeletion = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
        type = "structure")), shape = "AccessPoliciesStatus", 
        type = "structure")), shape = "UpdateServiceAccessPoliciesResponse", 
        type = "structure")
    return(populate(args, shape))
}
