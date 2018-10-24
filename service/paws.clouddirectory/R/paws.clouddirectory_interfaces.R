add_facet_to_object_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), SchemaFacet = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), FacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$")), shape = "SchemaFacet", 
        type = "structure"), ObjectAttributeList = structure(list(structure(list(Key = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), FacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
        type = "structure"), Value = structure(list(StringValue = structure(logical(0), 
        shape = "StringAttributeValue", type = "string"), BinaryValue = structure(logical(0), 
        shape = "BinaryAttributeValue", type = "blob"), BooleanValue = structure(logical(0), 
        shape = "BooleanAttributeValue", type = "boolean"), NumberValue = structure(logical(0), 
        shape = "NumberAttributeValue", type = "string"), DatetimeValue = structure(logical(0), 
        shape = "DatetimeAttributeValue", type = "timestamp")), 
        shape = "TypedAttributeValue", type = "structure")), 
        shape = "AttributeKeyAndValue", type = "structure")), 
        shape = "AttributeKeyAndValueList", type = "list"), ObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure")), shape = "AddFacetToObjectRequest", 
        type = "structure")
    return(populate(args, shape))
}

add_facet_to_object_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AddFacetToObjectResponse", 
        type = "structure")
    return(populate(args, shape))
}

apply_schema_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PublishedSchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string")), shape = "ApplySchemaRequest", type = "structure")
    return(populate(args, shape))
}

apply_schema_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AppliedSchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), DirectoryArn = structure(logical(0), 
        shape = "Arn", type = "string")), shape = "ApplySchemaResponse", 
        type = "structure")
    return(populate(args, shape))
}

attach_object_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), ParentReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), ChildReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), LinkName = structure(logical(0), 
        shape = "LinkName", type = "string", max = 64L, min = 1L, 
        pattern = "[^\\/\\[\\]\\(\\):\\{\\}#@!?\\s\\\\;]+")), 
        shape = "AttachObjectRequest", type = "structure")
    return(populate(args, shape))
}

attach_object_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AttachedObjectIdentifier = structure(logical(0), 
        shape = "ObjectIdentifier", type = "string")), shape = "AttachObjectResponse", 
        type = "structure")
    return(populate(args, shape))
}

attach_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), PolicyReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), ObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure")), shape = "AttachPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

attach_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AttachPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

attach_to_index_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), IndexReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), TargetReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure")), shape = "AttachToIndexRequest", 
        type = "structure")
    return(populate(args, shape))
}

attach_to_index_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AttachedObjectIdentifier = structure(logical(0), 
        shape = "ObjectIdentifier", type = "string")), shape = "AttachToIndexResponse", 
        type = "structure")
    return(populate(args, shape))
}

attach_typed_link_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), SourceObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), TargetObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), TypedLinkFacet = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), TypedLinkName = structure(logical(0), 
        shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$")), 
        shape = "TypedLinkSchemaAndFacetName", type = "structure"), 
        Attributes = structure(list(structure(list(AttributeName = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Value = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure")), 
            shape = "AttributeNameAndValue", type = "structure")), 
            shape = "AttributeNameAndValueList", type = "list")), 
        shape = "AttachTypedLinkRequest", type = "structure")
    return(populate(args, shape))
}

attach_typed_link_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TypedLinkSpecifier = structure(list(TypedLinkFacet = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), TypedLinkName = structure(logical(0), 
        shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$")), 
        shape = "TypedLinkSchemaAndFacetName", type = "structure"), 
        SourceObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), TargetObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), IdentityAttributeValues = structure(list(structure(list(AttributeName = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Value = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure")), 
            shape = "AttributeNameAndValue", type = "structure")), 
            shape = "AttributeNameAndValueList", type = "list")), 
        shape = "TypedLinkSpecifier", type = "structure")), shape = "AttachTypedLinkResponse", 
        type = "structure")
    return(populate(args, shape))
}

batch_read_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), Operations = structure(list(structure(list(ListObjectAttributes = structure(list(ObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "NumberResults", type = "integer", min = 1L), 
        FacetFilter = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), FacetName = structure(logical(0), 
            shape = "FacetName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "SchemaFacet", 
            type = "structure")), shape = "BatchListObjectAttributes", 
        type = "structure"), ListObjectChildren = structure(list(ObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "NumberResults", type = "integer", min = 1L)), 
        shape = "BatchListObjectChildren", type = "structure"), 
        ListAttachedIndices = structure(list(TargetReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
            shape = "NumberResults", type = "integer", min = 1L)), 
            shape = "BatchListAttachedIndices", type = "structure"), 
        ListObjectParentPaths = structure(list(ObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
            shape = "NumberResults", type = "integer", min = 1L)), 
            shape = "BatchListObjectParentPaths", type = "structure"), 
        GetObjectInformation = structure(list(ObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure")), 
            shape = "BatchGetObjectInformation", type = "structure"), 
        GetObjectAttributes = structure(list(ObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), SchemaFacet = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), FacetName = structure(logical(0), 
            shape = "FacetName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "SchemaFacet", 
            type = "structure"), AttributeNames = structure(list(structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeNameList", 
            type = "list")), shape = "BatchGetObjectAttributes", 
            type = "structure"), ListObjectPolicies = structure(list(ObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
            shape = "NumberResults", type = "integer", min = 1L)), 
            shape = "BatchListObjectPolicies", type = "structure"), 
        ListPolicyAttachments = structure(list(PolicyReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
            shape = "NumberResults", type = "integer", min = 1L)), 
            shape = "BatchListPolicyAttachments", type = "structure"), 
        LookupPolicy = structure(list(ObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
            shape = "NumberResults", type = "integer", min = 1L)), 
            shape = "BatchLookupPolicy", type = "structure"), 
        ListIndex = structure(list(RangesOnIndexedValues = structure(list(structure(list(AttributeKey = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), FacetName = structure(logical(0), 
            shape = "FacetName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
            type = "structure"), Range = structure(list(StartMode = structure(logical(0), 
            shape = "RangeMode", type = "string"), StartValue = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure"), 
            EndMode = structure(logical(0), shape = "RangeMode", 
                type = "string"), EndValue = structure(list(StringValue = structure(logical(0), 
                shape = "StringAttributeValue", type = "string"), 
                BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                  type = "blob"), BooleanValue = structure(logical(0), 
                  shape = "BooleanAttributeValue", type = "boolean"), 
                NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                  type = "string"), DatetimeValue = structure(logical(0), 
                  shape = "DatetimeAttributeValue", type = "timestamp")), 
                shape = "TypedAttributeValue", type = "structure")), 
            shape = "TypedAttributeValueRange", type = "structure")), 
            shape = "ObjectAttributeRange", type = "structure")), 
            shape = "ObjectAttributeRangeList", type = "list"), 
            IndexReference = structure(list(Selector = structure(logical(0), 
                shape = "SelectorObjectReference", type = "string")), 
                shape = "ObjectReference", type = "structure"), 
            MaxResults = structure(logical(0), shape = "NumberResults", 
                type = "integer", min = 1L), NextToken = structure(logical(0), 
                shape = "NextToken", type = "string")), shape = "BatchListIndex", 
            type = "structure"), ListOutgoingTypedLinks = structure(list(ObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), FilterAttributeRanges = structure(list(structure(list(AttributeName = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Range = structure(list(StartMode = structure(logical(0), 
            shape = "RangeMode", type = "string"), StartValue = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure"), 
            EndMode = structure(logical(0), shape = "RangeMode", 
                type = "string"), EndValue = structure(list(StringValue = structure(logical(0), 
                shape = "StringAttributeValue", type = "string"), 
                BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                  type = "blob"), BooleanValue = structure(logical(0), 
                  shape = "BooleanAttributeValue", type = "boolean"), 
                NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                  type = "string"), DatetimeValue = structure(logical(0), 
                  shape = "DatetimeAttributeValue", type = "timestamp")), 
                shape = "TypedAttributeValue", type = "structure")), 
            shape = "TypedAttributeValueRange", type = "structure")), 
            shape = "TypedLinkAttributeRange", type = "structure")), 
            shape = "TypedLinkAttributeRangeList", type = "list"), 
            FilterTypedLink = structure(list(SchemaArn = structure(logical(0), 
                shape = "Arn", type = "string"), TypedLinkName = structure(logical(0), 
                shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$")), 
                shape = "TypedLinkSchemaAndFacetName", type = "structure"), 
            NextToken = structure(logical(0), shape = "NextToken", 
                type = "string"), MaxResults = structure(logical(0), 
                shape = "NumberResults", type = "integer", min = 1L)), 
            shape = "BatchListOutgoingTypedLinks", type = "structure"), 
        ListIncomingTypedLinks = structure(list(ObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), FilterAttributeRanges = structure(list(structure(list(AttributeName = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Range = structure(list(StartMode = structure(logical(0), 
            shape = "RangeMode", type = "string"), StartValue = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure"), 
            EndMode = structure(logical(0), shape = "RangeMode", 
                type = "string"), EndValue = structure(list(StringValue = structure(logical(0), 
                shape = "StringAttributeValue", type = "string"), 
                BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                  type = "blob"), BooleanValue = structure(logical(0), 
                  shape = "BooleanAttributeValue", type = "boolean"), 
                NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                  type = "string"), DatetimeValue = structure(logical(0), 
                  shape = "DatetimeAttributeValue", type = "timestamp")), 
                shape = "TypedAttributeValue", type = "structure")), 
            shape = "TypedAttributeValueRange", type = "structure")), 
            shape = "TypedLinkAttributeRange", type = "structure")), 
            shape = "TypedLinkAttributeRangeList", type = "list"), 
            FilterTypedLink = structure(list(SchemaArn = structure(logical(0), 
                shape = "Arn", type = "string"), TypedLinkName = structure(logical(0), 
                shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$")), 
                shape = "TypedLinkSchemaAndFacetName", type = "structure"), 
            NextToken = structure(logical(0), shape = "NextToken", 
                type = "string"), MaxResults = structure(logical(0), 
                shape = "NumberResults", type = "integer", min = 1L)), 
            shape = "BatchListIncomingTypedLinks", type = "structure"), 
        GetLinkAttributes = structure(list(TypedLinkSpecifier = structure(list(TypedLinkFacet = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), TypedLinkName = structure(logical(0), 
            shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$")), 
            shape = "TypedLinkSchemaAndFacetName", type = "structure"), 
            SourceObjectReference = structure(list(Selector = structure(logical(0), 
                shape = "SelectorObjectReference", type = "string")), 
                shape = "ObjectReference", type = "structure"), 
            TargetObjectReference = structure(list(Selector = structure(logical(0), 
                shape = "SelectorObjectReference", type = "string")), 
                shape = "ObjectReference", type = "structure"), 
            IdentityAttributeValues = structure(list(structure(list(AttributeName = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 64L, 
                min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Value = structure(list(StringValue = structure(logical(0), 
                shape = "StringAttributeValue", type = "string"), 
                BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                  type = "blob"), BooleanValue = structure(logical(0), 
                  shape = "BooleanAttributeValue", type = "boolean"), 
                NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                  type = "string"), DatetimeValue = structure(logical(0), 
                  shape = "DatetimeAttributeValue", type = "timestamp")), 
                shape = "TypedAttributeValue", type = "structure")), 
                shape = "AttributeNameAndValue", type = "structure")), 
                shape = "AttributeNameAndValueList", type = "list")), 
            shape = "TypedLinkSpecifier", type = "structure"), 
            AttributeNames = structure(list(structure(logical(0), 
                shape = "AttributeName", type = "string", max = 64L, 
                min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeNameList", 
                type = "list")), shape = "BatchGetLinkAttributes", 
            type = "structure")), shape = "BatchReadOperation", 
        type = "structure")), shape = "BatchReadOperationList", 
        type = "list"), ConsistencyLevel = structure(logical(0), 
        shape = "ConsistencyLevel", location = "header", locationName = "x-amz-consistency-level", 
        type = "string")), shape = "BatchReadRequest", type = "structure")
    return(populate(args, shape))
}

batch_read_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Responses = structure(list(structure(list(SuccessfulResponse = structure(list(ListObjectAttributes = structure(list(Attributes = structure(list(structure(list(Key = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), FacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
        type = "structure"), Value = structure(list(StringValue = structure(logical(0), 
        shape = "StringAttributeValue", type = "string"), BinaryValue = structure(logical(0), 
        shape = "BinaryAttributeValue", type = "blob"), BooleanValue = structure(logical(0), 
        shape = "BooleanAttributeValue", type = "boolean"), NumberValue = structure(logical(0), 
        shape = "NumberAttributeValue", type = "string"), DatetimeValue = structure(logical(0), 
        shape = "DatetimeAttributeValue", type = "timestamp")), 
        shape = "TypedAttributeValue", type = "structure")), 
        shape = "AttributeKeyAndValue", type = "structure")), 
        shape = "AttributeKeyAndValueList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "BatchListObjectAttributesResponse", 
        type = "structure"), ListObjectChildren = structure(list(Children = structure(list(structure(logical(0), 
        shape = "ObjectIdentifier", type = "string")), shape = "LinkNameToObjectIdentifierMap", 
        type = "map"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "BatchListObjectChildrenResponse", 
        type = "structure"), GetObjectInformation = structure(list(SchemaFacets = structure(list(structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), FacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$")), shape = "SchemaFacet", 
        type = "structure")), shape = "SchemaFacetList", type = "list"), 
        ObjectIdentifier = structure(logical(0), shape = "ObjectIdentifier", 
            type = "string")), shape = "BatchGetObjectInformationResponse", 
        type = "structure"), GetObjectAttributes = structure(list(Attributes = structure(list(structure(list(Key = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), FacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
        type = "structure"), Value = structure(list(StringValue = structure(logical(0), 
        shape = "StringAttributeValue", type = "string"), BinaryValue = structure(logical(0), 
        shape = "BinaryAttributeValue", type = "blob"), BooleanValue = structure(logical(0), 
        shape = "BooleanAttributeValue", type = "boolean"), NumberValue = structure(logical(0), 
        shape = "NumberAttributeValue", type = "string"), DatetimeValue = structure(logical(0), 
        shape = "DatetimeAttributeValue", type = "timestamp")), 
        shape = "TypedAttributeValue", type = "structure")), 
        shape = "AttributeKeyAndValue", type = "structure")), 
        shape = "AttributeKeyAndValueList", type = "list")), 
        shape = "BatchGetObjectAttributesResponse", type = "structure"), 
        ListAttachedIndices = structure(list(IndexAttachments = structure(list(structure(list(IndexedAttributes = structure(list(structure(list(Key = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), FacetName = structure(logical(0), 
            shape = "FacetName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
            type = "structure"), Value = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure")), 
            shape = "AttributeKeyAndValue", type = "structure")), 
            shape = "AttributeKeyAndValueList", type = "list"), 
            ObjectIdentifier = structure(logical(0), shape = "ObjectIdentifier", 
                type = "string")), shape = "IndexAttachment", 
            type = "structure")), shape = "IndexAttachmentList", 
            type = "list"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string")), shape = "BatchListAttachedIndicesResponse", 
            type = "structure"), ListObjectParentPaths = structure(list(PathToObjectIdentifiersList = structure(list(structure(list(Path = structure(logical(0), 
            shape = "PathString", type = "string"), ObjectIdentifiers = structure(list(structure(logical(0), 
            shape = "ObjectIdentifier", type = "string")), shape = "ObjectIdentifierList", 
            type = "list")), shape = "PathToObjectIdentifiers", 
            type = "structure")), shape = "PathToObjectIdentifiersList", 
            type = "list"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string")), shape = "BatchListObjectParentPathsResponse", 
            type = "structure"), ListObjectPolicies = structure(list(AttachedPolicyIds = structure(list(structure(logical(0), 
            shape = "ObjectIdentifier", type = "string")), shape = "ObjectIdentifierList", 
            type = "list"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string")), shape = "BatchListObjectPoliciesResponse", 
            type = "structure"), ListPolicyAttachments = structure(list(ObjectIdentifiers = structure(list(structure(logical(0), 
            shape = "ObjectIdentifier", type = "string")), shape = "ObjectIdentifierList", 
            type = "list"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string")), shape = "BatchListPolicyAttachmentsResponse", 
            type = "structure"), LookupPolicy = structure(list(PolicyToPathList = structure(list(structure(list(Path = structure(logical(0), 
            shape = "PathString", type = "string"), Policies = structure(list(structure(list(PolicyId = structure(logical(0), 
            shape = "ObjectIdentifier", type = "string"), ObjectIdentifier = structure(logical(0), 
            shape = "ObjectIdentifier", type = "string"), PolicyType = structure(logical(0), 
            shape = "PolicyType", type = "string")), shape = "PolicyAttachment", 
            type = "structure")), shape = "PolicyAttachmentList", 
            type = "list")), shape = "PolicyToPath", type = "structure")), 
            shape = "PolicyToPathList", type = "list"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string")), shape = "BatchLookupPolicyResponse", 
            type = "structure"), ListIndex = structure(list(IndexAttachments = structure(list(structure(list(IndexedAttributes = structure(list(structure(list(Key = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), FacetName = structure(logical(0), 
            shape = "FacetName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
            type = "structure"), Value = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure")), 
            shape = "AttributeKeyAndValue", type = "structure")), 
            shape = "AttributeKeyAndValueList", type = "list"), 
            ObjectIdentifier = structure(logical(0), shape = "ObjectIdentifier", 
                type = "string")), shape = "IndexAttachment", 
            type = "structure")), shape = "IndexAttachmentList", 
            type = "list"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string")), shape = "BatchListIndexResponse", 
            type = "structure"), ListOutgoingTypedLinks = structure(list(TypedLinkSpecifiers = structure(list(structure(list(TypedLinkFacet = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), TypedLinkName = structure(logical(0), 
            shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$")), 
            shape = "TypedLinkSchemaAndFacetName", type = "structure"), 
            SourceObjectReference = structure(list(Selector = structure(logical(0), 
                shape = "SelectorObjectReference", type = "string")), 
                shape = "ObjectReference", type = "structure"), 
            TargetObjectReference = structure(list(Selector = structure(logical(0), 
                shape = "SelectorObjectReference", type = "string")), 
                shape = "ObjectReference", type = "structure"), 
            IdentityAttributeValues = structure(list(structure(list(AttributeName = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 64L, 
                min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Value = structure(list(StringValue = structure(logical(0), 
                shape = "StringAttributeValue", type = "string"), 
                BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                  type = "blob"), BooleanValue = structure(logical(0), 
                  shape = "BooleanAttributeValue", type = "boolean"), 
                NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                  type = "string"), DatetimeValue = structure(logical(0), 
                  shape = "DatetimeAttributeValue", type = "timestamp")), 
                shape = "TypedAttributeValue", type = "structure")), 
                shape = "AttributeNameAndValue", type = "structure")), 
                shape = "AttributeNameAndValueList", type = "list")), 
            shape = "TypedLinkSpecifier", type = "structure")), 
            shape = "TypedLinkSpecifierList", type = "list"), 
            NextToken = structure(logical(0), shape = "NextToken", 
                type = "string")), shape = "BatchListOutgoingTypedLinksResponse", 
            type = "structure"), ListIncomingTypedLinks = structure(list(LinkSpecifiers = structure(list(structure(list(TypedLinkFacet = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), TypedLinkName = structure(logical(0), 
            shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$")), 
            shape = "TypedLinkSchemaAndFacetName", type = "structure"), 
            SourceObjectReference = structure(list(Selector = structure(logical(0), 
                shape = "SelectorObjectReference", type = "string")), 
                shape = "ObjectReference", type = "structure"), 
            TargetObjectReference = structure(list(Selector = structure(logical(0), 
                shape = "SelectorObjectReference", type = "string")), 
                shape = "ObjectReference", type = "structure"), 
            IdentityAttributeValues = structure(list(structure(list(AttributeName = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 64L, 
                min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Value = structure(list(StringValue = structure(logical(0), 
                shape = "StringAttributeValue", type = "string"), 
                BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                  type = "blob"), BooleanValue = structure(logical(0), 
                  shape = "BooleanAttributeValue", type = "boolean"), 
                NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                  type = "string"), DatetimeValue = structure(logical(0), 
                  shape = "DatetimeAttributeValue", type = "timestamp")), 
                shape = "TypedAttributeValue", type = "structure")), 
                shape = "AttributeNameAndValue", type = "structure")), 
                shape = "AttributeNameAndValueList", type = "list")), 
            shape = "TypedLinkSpecifier", type = "structure")), 
            shape = "TypedLinkSpecifierList", type = "list"), 
            NextToken = structure(logical(0), shape = "NextToken", 
                type = "string")), shape = "BatchListIncomingTypedLinksResponse", 
            type = "structure"), GetLinkAttributes = structure(list(Attributes = structure(list(structure(list(Key = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), FacetName = structure(logical(0), 
            shape = "FacetName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
            type = "structure"), Value = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure")), 
            shape = "AttributeKeyAndValue", type = "structure")), 
            shape = "AttributeKeyAndValueList", type = "list")), 
            shape = "BatchGetLinkAttributesResponse", type = "structure")), 
        shape = "BatchReadSuccessfulResponse", type = "structure"), 
        ExceptionResponse = structure(list(Type = structure(logical(0), 
            shape = "BatchReadExceptionType", type = "string"), 
            Message = structure(logical(0), shape = "ExceptionMessage", 
                type = "string")), shape = "BatchReadException", 
            type = "structure")), shape = "BatchReadOperationResponse", 
        type = "structure")), shape = "BatchReadOperationResponseList", 
        type = "list")), shape = "BatchReadResponse", type = "structure")
    return(populate(args, shape))
}

batch_write_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), Operations = structure(list(structure(list(CreateObject = structure(list(SchemaFacet = structure(list(structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), FacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$")), shape = "SchemaFacet", 
        type = "structure")), shape = "SchemaFacetList", type = "list"), 
        ObjectAttributeList = structure(list(structure(list(Key = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), FacetName = structure(logical(0), 
            shape = "FacetName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
            type = "structure"), Value = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure")), 
            shape = "AttributeKeyAndValue", type = "structure")), 
            shape = "AttributeKeyAndValueList", type = "list"), 
        ParentReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), LinkName = structure(logical(0), 
            shape = "LinkName", type = "string", max = 64L, min = 1L, 
            pattern = "[^\\/\\[\\]\\(\\):\\{\\}#@!?\\s\\\\;]+"), 
        BatchReferenceName = structure(logical(0), shape = "BatchReferenceName", 
            type = "string")), shape = "BatchCreateObject", type = "structure"), 
        AttachObject = structure(list(ParentReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), ChildReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), LinkName = structure(logical(0), 
            shape = "LinkName", type = "string", max = 64L, min = 1L, 
            pattern = "[^\\/\\[\\]\\(\\):\\{\\}#@!?\\s\\\\;]+")), 
            shape = "BatchAttachObject", type = "structure"), 
        DetachObject = structure(list(ParentReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), LinkName = structure(logical(0), 
            shape = "LinkName", type = "string", max = 64L, min = 1L, 
            pattern = "[^\\/\\[\\]\\(\\):\\{\\}#@!?\\s\\\\;]+"), 
            BatchReferenceName = structure(logical(0), shape = "BatchReferenceName", 
                type = "string")), shape = "BatchDetachObject", 
            type = "structure"), UpdateObjectAttributes = structure(list(ObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), AttributeUpdates = structure(list(structure(list(ObjectAttributeKey = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), FacetName = structure(logical(0), 
            shape = "FacetName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
            type = "structure"), ObjectAttributeAction = structure(list(ObjectAttributeActionType = structure(logical(0), 
            shape = "UpdateActionType", type = "string"), ObjectAttributeUpdateValue = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure")), 
            shape = "ObjectAttributeAction", type = "structure")), 
            shape = "ObjectAttributeUpdate", type = "structure")), 
            shape = "ObjectAttributeUpdateList", type = "list")), 
            shape = "BatchUpdateObjectAttributes", type = "structure"), 
        DeleteObject = structure(list(ObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure")), 
            shape = "BatchDeleteObject", type = "structure"), 
        AddFacetToObject = structure(list(SchemaFacet = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), FacetName = structure(logical(0), 
            shape = "FacetName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "SchemaFacet", 
            type = "structure"), ObjectAttributeList = structure(list(structure(list(Key = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), FacetName = structure(logical(0), 
            shape = "FacetName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
            type = "structure"), Value = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure")), 
            shape = "AttributeKeyAndValue", type = "structure")), 
            shape = "AttributeKeyAndValueList", type = "list"), 
            ObjectReference = structure(list(Selector = structure(logical(0), 
                shape = "SelectorObjectReference", type = "string")), 
                shape = "ObjectReference", type = "structure")), 
            shape = "BatchAddFacetToObject", type = "structure"), 
        RemoveFacetFromObject = structure(list(SchemaFacet = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), FacetName = structure(logical(0), 
            shape = "FacetName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "SchemaFacet", 
            type = "structure"), ObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure")), 
            shape = "BatchRemoveFacetFromObject", type = "structure"), 
        AttachPolicy = structure(list(PolicyReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), ObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure")), 
            shape = "BatchAttachPolicy", type = "structure"), 
        DetachPolicy = structure(list(PolicyReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), ObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure")), 
            shape = "BatchDetachPolicy", type = "structure"), 
        CreateIndex = structure(list(OrderedIndexedAttributeList = structure(list(structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), FacetName = structure(logical(0), 
            shape = "FacetName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
            type = "structure")), shape = "AttributeKeyList", 
            type = "list"), IsUnique = structure(logical(0), 
            shape = "Bool", type = "boolean"), ParentReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), LinkName = structure(logical(0), 
            shape = "LinkName", type = "string", max = 64L, min = 1L, 
            pattern = "[^\\/\\[\\]\\(\\):\\{\\}#@!?\\s\\\\;]+"), 
            BatchReferenceName = structure(logical(0), shape = "BatchReferenceName", 
                type = "string")), shape = "BatchCreateIndex", 
            type = "structure"), AttachToIndex = structure(list(IndexReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), TargetReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure")), 
            shape = "BatchAttachToIndex", type = "structure"), 
        DetachFromIndex = structure(list(IndexReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), TargetReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure")), 
            shape = "BatchDetachFromIndex", type = "structure"), 
        AttachTypedLink = structure(list(SourceObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), TargetObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), TypedLinkFacet = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), TypedLinkName = structure(logical(0), 
            shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$")), 
            shape = "TypedLinkSchemaAndFacetName", type = "structure"), 
            Attributes = structure(list(structure(list(AttributeName = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 64L, 
                min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Value = structure(list(StringValue = structure(logical(0), 
                shape = "StringAttributeValue", type = "string"), 
                BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                  type = "blob"), BooleanValue = structure(logical(0), 
                  shape = "BooleanAttributeValue", type = "boolean"), 
                NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                  type = "string"), DatetimeValue = structure(logical(0), 
                  shape = "DatetimeAttributeValue", type = "timestamp")), 
                shape = "TypedAttributeValue", type = "structure")), 
                shape = "AttributeNameAndValue", type = "structure")), 
                shape = "AttributeNameAndValueList", type = "list")), 
            shape = "BatchAttachTypedLink", type = "structure"), 
        DetachTypedLink = structure(list(TypedLinkSpecifier = structure(list(TypedLinkFacet = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), TypedLinkName = structure(logical(0), 
            shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$")), 
            shape = "TypedLinkSchemaAndFacetName", type = "structure"), 
            SourceObjectReference = structure(list(Selector = structure(logical(0), 
                shape = "SelectorObjectReference", type = "string")), 
                shape = "ObjectReference", type = "structure"), 
            TargetObjectReference = structure(list(Selector = structure(logical(0), 
                shape = "SelectorObjectReference", type = "string")), 
                shape = "ObjectReference", type = "structure"), 
            IdentityAttributeValues = structure(list(structure(list(AttributeName = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 64L, 
                min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Value = structure(list(StringValue = structure(logical(0), 
                shape = "StringAttributeValue", type = "string"), 
                BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                  type = "blob"), BooleanValue = structure(logical(0), 
                  shape = "BooleanAttributeValue", type = "boolean"), 
                NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                  type = "string"), DatetimeValue = structure(logical(0), 
                  shape = "DatetimeAttributeValue", type = "timestamp")), 
                shape = "TypedAttributeValue", type = "structure")), 
                shape = "AttributeNameAndValue", type = "structure")), 
                shape = "AttributeNameAndValueList", type = "list")), 
            shape = "TypedLinkSpecifier", type = "structure")), 
            shape = "BatchDetachTypedLink", type = "structure"), 
        UpdateLinkAttributes = structure(list(TypedLinkSpecifier = structure(list(TypedLinkFacet = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), TypedLinkName = structure(logical(0), 
            shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$")), 
            shape = "TypedLinkSchemaAndFacetName", type = "structure"), 
            SourceObjectReference = structure(list(Selector = structure(logical(0), 
                shape = "SelectorObjectReference", type = "string")), 
                shape = "ObjectReference", type = "structure"), 
            TargetObjectReference = structure(list(Selector = structure(logical(0), 
                shape = "SelectorObjectReference", type = "string")), 
                shape = "ObjectReference", type = "structure"), 
            IdentityAttributeValues = structure(list(structure(list(AttributeName = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 64L, 
                min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Value = structure(list(StringValue = structure(logical(0), 
                shape = "StringAttributeValue", type = "string"), 
                BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                  type = "blob"), BooleanValue = structure(logical(0), 
                  shape = "BooleanAttributeValue", type = "boolean"), 
                NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                  type = "string"), DatetimeValue = structure(logical(0), 
                  shape = "DatetimeAttributeValue", type = "timestamp")), 
                shape = "TypedAttributeValue", type = "structure")), 
                shape = "AttributeNameAndValue", type = "structure")), 
                shape = "AttributeNameAndValueList", type = "list")), 
            shape = "TypedLinkSpecifier", type = "structure"), 
            AttributeUpdates = structure(list(structure(list(AttributeKey = structure(list(SchemaArn = structure(logical(0), 
                shape = "Arn", type = "string"), FacetName = structure(logical(0), 
                shape = "FacetName", type = "string", max = 64L, 
                min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 64L, 
                min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
                type = "structure"), AttributeAction = structure(list(AttributeActionType = structure(logical(0), 
                shape = "UpdateActionType", type = "string"), 
                AttributeUpdateValue = structure(list(StringValue = structure(logical(0), 
                  shape = "StringAttributeValue", type = "string"), 
                  BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                    type = "blob"), BooleanValue = structure(logical(0), 
                    shape = "BooleanAttributeValue", type = "boolean"), 
                  NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                    type = "string"), DatetimeValue = structure(logical(0), 
                    shape = "DatetimeAttributeValue", type = "timestamp")), 
                  shape = "TypedAttributeValue", type = "structure")), 
                shape = "LinkAttributeAction", type = "structure")), 
                shape = "LinkAttributeUpdate", type = "structure")), 
                shape = "LinkAttributeUpdateList", type = "list")), 
            shape = "BatchUpdateLinkAttributes", type = "structure")), 
        shape = "BatchWriteOperation", type = "structure")), 
        shape = "BatchWriteOperationList", type = "list")), shape = "BatchWriteRequest", 
        type = "structure")
    return(populate(args, shape))
}

batch_write_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Responses = structure(list(structure(list(CreateObject = structure(list(ObjectIdentifier = structure(logical(0), 
        shape = "ObjectIdentifier", type = "string")), shape = "BatchCreateObjectResponse", 
        type = "structure"), AttachObject = structure(list(AttachedObjectIdentifier = structure(logical(0), 
        shape = "ObjectIdentifier", type = "string", locationName = "attachedObjectIdentifier")), 
        shape = "BatchAttachObjectResponse", type = "structure"), 
        DetachObject = structure(list(DetachedObjectIdentifier = structure(logical(0), 
            shape = "ObjectIdentifier", type = "string", locationName = "detachedObjectIdentifier")), 
            shape = "BatchDetachObjectResponse", type = "structure"), 
        UpdateObjectAttributes = structure(list(ObjectIdentifier = structure(logical(0), 
            shape = "ObjectIdentifier", type = "string")), shape = "BatchUpdateObjectAttributesResponse", 
            type = "structure"), DeleteObject = structure(list(), 
            shape = "BatchDeleteObjectResponse", type = "structure"), 
        AddFacetToObject = structure(list(), shape = "BatchAddFacetToObjectResponse", 
            type = "structure"), RemoveFacetFromObject = structure(list(), 
            shape = "BatchRemoveFacetFromObjectResponse", type = "structure"), 
        AttachPolicy = structure(list(), shape = "BatchAttachPolicyResponse", 
            type = "structure"), DetachPolicy = structure(list(), 
            shape = "BatchDetachPolicyResponse", type = "structure"), 
        CreateIndex = structure(list(ObjectIdentifier = structure(logical(0), 
            shape = "ObjectIdentifier", type = "string")), shape = "BatchCreateIndexResponse", 
            type = "structure"), AttachToIndex = structure(list(AttachedObjectIdentifier = structure(logical(0), 
            shape = "ObjectIdentifier", type = "string")), shape = "BatchAttachToIndexResponse", 
            type = "structure"), DetachFromIndex = structure(list(DetachedObjectIdentifier = structure(logical(0), 
            shape = "ObjectIdentifier", type = "string")), shape = "BatchDetachFromIndexResponse", 
            type = "structure"), AttachTypedLink = structure(list(TypedLinkSpecifier = structure(list(TypedLinkFacet = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), TypedLinkName = structure(logical(0), 
            shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$")), 
            shape = "TypedLinkSchemaAndFacetName", type = "structure"), 
            SourceObjectReference = structure(list(Selector = structure(logical(0), 
                shape = "SelectorObjectReference", type = "string")), 
                shape = "ObjectReference", type = "structure"), 
            TargetObjectReference = structure(list(Selector = structure(logical(0), 
                shape = "SelectorObjectReference", type = "string")), 
                shape = "ObjectReference", type = "structure"), 
            IdentityAttributeValues = structure(list(structure(list(AttributeName = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 64L, 
                min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Value = structure(list(StringValue = structure(logical(0), 
                shape = "StringAttributeValue", type = "string"), 
                BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                  type = "blob"), BooleanValue = structure(logical(0), 
                  shape = "BooleanAttributeValue", type = "boolean"), 
                NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                  type = "string"), DatetimeValue = structure(logical(0), 
                  shape = "DatetimeAttributeValue", type = "timestamp")), 
                shape = "TypedAttributeValue", type = "structure")), 
                shape = "AttributeNameAndValue", type = "structure")), 
                shape = "AttributeNameAndValueList", type = "list")), 
            shape = "TypedLinkSpecifier", type = "structure")), 
            shape = "BatchAttachTypedLinkResponse", type = "structure"), 
        DetachTypedLink = structure(list(), shape = "BatchDetachTypedLinkResponse", 
            type = "structure"), UpdateLinkAttributes = structure(list(), 
            shape = "BatchUpdateLinkAttributesResponse", type = "structure")), 
        shape = "BatchWriteOperationResponse", type = "structure")), 
        shape = "BatchWriteOperationResponseList", type = "list")), 
        shape = "BatchWriteResponse", type = "structure")
    return(populate(args, shape))
}

create_directory_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "DirectoryName", 
        type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), 
        SchemaArn = structure(logical(0), shape = "Arn", location = "header", 
            locationName = "x-amz-data-partition", type = "string")), 
        shape = "CreateDirectoryRequest", type = "structure")
    return(populate(args, shape))
}

create_directory_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "DirectoryArn", type = "string"), Name = structure(logical(0), 
        shape = "DirectoryName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), ObjectIdentifier = structure(logical(0), 
        shape = "ObjectIdentifier", type = "string"), AppliedSchemaArn = structure(logical(0), 
        shape = "Arn", type = "string")), shape = "CreateDirectoryResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_facet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), Name = structure(logical(0), shape = "FacetName", 
        type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), 
        Attributes = structure(list(structure(list(Name = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), AttributeDefinition = structure(list(Type = structure(logical(0), 
            shape = "FacetAttributeType", type = "string"), DefaultValue = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure"), 
            IsImmutable = structure(logical(0), shape = "Bool", 
                type = "boolean"), Rules = structure(list(structure(list(Type = structure(logical(0), 
                shape = "RuleType", type = "string"), Parameters = structure(list(structure(logical(0), 
                shape = "RuleParameterValue", type = "string")), 
                shape = "RuleParameterMap", type = "map")), shape = "Rule", 
                type = "structure")), shape = "RuleMap", type = "map")), 
            shape = "FacetAttributeDefinition", type = "structure"), 
            AttributeReference = structure(list(TargetFacetName = structure(logical(0), 
                shape = "FacetName", type = "string", max = 64L, 
                min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), TargetAttributeName = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 64L, 
                min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "FacetAttributeReference", 
                type = "structure"), RequiredBehavior = structure(logical(0), 
                shape = "RequiredAttributeBehavior", type = "string")), 
            shape = "FacetAttribute", type = "structure")), shape = "FacetAttributeList", 
            type = "list"), ObjectType = structure(logical(0), 
            shape = "ObjectType", type = "string"), FacetStyle = structure(logical(0), 
            shape = "FacetStyle", type = "string")), shape = "CreateFacetRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_facet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateFacetResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_index_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), OrderedIndexedAttributeList = structure(list(structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), FacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
        type = "structure")), shape = "AttributeKeyList", type = "list"), 
        IsUnique = structure(logical(0), shape = "Bool", type = "boolean"), 
        ParentReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), LinkName = structure(logical(0), 
            shape = "LinkName", type = "string", max = 64L, min = 1L, 
            pattern = "[^\\/\\[\\]\\(\\):\\{\\}#@!?\\s\\\\;]+")), 
        shape = "CreateIndexRequest", type = "structure")
    return(populate(args, shape))
}

create_index_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ObjectIdentifier = structure(logical(0), 
        shape = "ObjectIdentifier", type = "string")), shape = "CreateIndexResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_object_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), SchemaFacets = structure(list(structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), FacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$")), shape = "SchemaFacet", 
        type = "structure")), shape = "SchemaFacetList", type = "list"), 
        ObjectAttributeList = structure(list(structure(list(Key = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), FacetName = structure(logical(0), 
            shape = "FacetName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
            type = "structure"), Value = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure")), 
            shape = "AttributeKeyAndValue", type = "structure")), 
            shape = "AttributeKeyAndValueList", type = "list"), 
        ParentReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), LinkName = structure(logical(0), 
            shape = "LinkName", type = "string", max = 64L, min = 1L, 
            pattern = "[^\\/\\[\\]\\(\\):\\{\\}#@!?\\s\\\\;]+")), 
        shape = "CreateObjectRequest", type = "structure")
    return(populate(args, shape))
}

create_object_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ObjectIdentifier = structure(logical(0), 
        shape = "ObjectIdentifier", type = "string")), shape = "CreateObjectResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_schema_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "SchemaName", 
        type = "string", max = 32L, min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), 
        shape = "CreateSchemaRequest", type = "structure")
    return(populate(args, shape))
}

create_schema_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string")), shape = "CreateSchemaResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_typed_link_facet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), Facet = structure(list(Name = structure(logical(0), 
        shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$"), 
        Attributes = structure(list(structure(list(Name = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Type = structure(logical(0), 
            shape = "FacetAttributeType", type = "string"), DefaultValue = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure"), 
            IsImmutable = structure(logical(0), shape = "Bool", 
                type = "boolean"), Rules = structure(list(structure(list(Type = structure(logical(0), 
                shape = "RuleType", type = "string"), Parameters = structure(list(structure(logical(0), 
                shape = "RuleParameterValue", type = "string")), 
                shape = "RuleParameterMap", type = "map")), shape = "Rule", 
                type = "structure")), shape = "RuleMap", type = "map"), 
            RequiredBehavior = structure(logical(0), shape = "RequiredAttributeBehavior", 
                type = "string")), shape = "TypedLinkAttributeDefinition", 
            type = "structure")), shape = "TypedLinkAttributeDefinitionList", 
            type = "list"), IdentityAttributeOrder = structure(list(structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeNameList", 
            type = "list")), shape = "TypedLinkFacet", type = "structure")), 
        shape = "CreateTypedLinkFacetRequest", type = "structure")
    return(populate(args, shape))
}

create_typed_link_facet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateTypedLinkFacetResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_directory_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string")), shape = "DeleteDirectoryRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_directory_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", type = "string")), shape = "DeleteDirectoryResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_facet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), Name = structure(logical(0), shape = "FacetName", 
        type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), 
        shape = "DeleteFacetRequest", type = "structure")
    return(populate(args, shape))
}

delete_facet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteFacetResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_object_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), ObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure")), shape = "DeleteObjectRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_object_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteObjectResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_schema_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string")), shape = "DeleteSchemaRequest", type = "structure")
    return(populate(args, shape))
}

delete_schema_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string")), shape = "DeleteSchemaResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_typed_link_facet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), Name = structure(logical(0), shape = "TypedLinkName", 
        type = "string", pattern = "^[a-zA-Z0-9._-]*$")), shape = "DeleteTypedLinkFacetRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_typed_link_facet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteTypedLinkFacetResponse", 
        type = "structure")
    return(populate(args, shape))
}

detach_from_index_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), IndexReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), TargetReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure")), shape = "DetachFromIndexRequest", 
        type = "structure")
    return(populate(args, shape))
}

detach_from_index_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetachedObjectIdentifier = structure(logical(0), 
        shape = "ObjectIdentifier", type = "string")), shape = "DetachFromIndexResponse", 
        type = "structure")
    return(populate(args, shape))
}

detach_object_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), ParentReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), LinkName = structure(logical(0), 
        shape = "LinkName", type = "string", max = 64L, min = 1L, 
        pattern = "[^\\/\\[\\]\\(\\):\\{\\}#@!?\\s\\\\;]+")), 
        shape = "DetachObjectRequest", type = "structure")
    return(populate(args, shape))
}

detach_object_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DetachedObjectIdentifier = structure(logical(0), 
        shape = "ObjectIdentifier", type = "string")), shape = "DetachObjectResponse", 
        type = "structure")
    return(populate(args, shape))
}

detach_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), PolicyReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), ObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure")), shape = "DetachPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

detach_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DetachPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

detach_typed_link_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), TypedLinkSpecifier = structure(list(TypedLinkFacet = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), TypedLinkName = structure(logical(0), 
        shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$")), 
        shape = "TypedLinkSchemaAndFacetName", type = "structure"), 
        SourceObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), TargetObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), IdentityAttributeValues = structure(list(structure(list(AttributeName = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Value = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure")), 
            shape = "AttributeNameAndValue", type = "structure")), 
            shape = "AttributeNameAndValueList", type = "list")), 
        shape = "TypedLinkSpecifier", type = "structure")), shape = "DetachTypedLinkRequest", 
        type = "structure")
    return(populate(args, shape))
}

detach_typed_link_output <- function () 
{
    return(list())
}

disable_directory_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string")), shape = "DisableDirectoryRequest", 
        type = "structure")
    return(populate(args, shape))
}

disable_directory_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", type = "string")), shape = "DisableDirectoryResponse", 
        type = "structure")
    return(populate(args, shape))
}

enable_directory_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string")), shape = "EnableDirectoryRequest", 
        type = "structure")
    return(populate(args, shape))
}

enable_directory_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", type = "string")), shape = "EnableDirectoryResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_applied_schema_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string")), shape = "GetAppliedSchemaVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_applied_schema_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AppliedSchemaArn = structure(logical(0), 
        shape = "Arn", type = "string")), shape = "GetAppliedSchemaVersionResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_directory_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "DirectoryArn", location = "header", locationName = "x-amz-data-partition", 
        type = "string")), shape = "GetDirectoryRequest", type = "structure")
    return(populate(args, shape))
}

get_directory_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Directory = structure(list(Name = structure(logical(0), 
        shape = "DirectoryName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), DirectoryArn = structure(logical(0), 
        shape = "DirectoryArn", type = "string"), State = structure(logical(0), 
        shape = "DirectoryState", type = "string"), CreationDateTime = structure(logical(0), 
        shape = "Date", type = "timestamp")), shape = "Directory", 
        type = "structure")), shape = "GetDirectoryResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_facet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), Name = structure(logical(0), shape = "FacetName", 
        type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), 
        shape = "GetFacetRequest", type = "structure")
    return(populate(args, shape))
}

get_facet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Facet = structure(list(Name = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$"), ObjectType = structure(logical(0), 
        shape = "ObjectType", type = "string"), FacetStyle = structure(logical(0), 
        shape = "FacetStyle", type = "string")), shape = "Facet", 
        type = "structure")), shape = "GetFacetResponse", type = "structure")
    return(populate(args, shape))
}

get_link_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), TypedLinkSpecifier = structure(list(TypedLinkFacet = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), TypedLinkName = structure(logical(0), 
        shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$")), 
        shape = "TypedLinkSchemaAndFacetName", type = "structure"), 
        SourceObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), TargetObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), IdentityAttributeValues = structure(list(structure(list(AttributeName = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Value = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure")), 
            shape = "AttributeNameAndValue", type = "structure")), 
            shape = "AttributeNameAndValueList", type = "list")), 
        shape = "TypedLinkSpecifier", type = "structure"), AttributeNames = structure(list(structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeNameList", 
        type = "list"), ConsistencyLevel = structure(logical(0), 
        shape = "ConsistencyLevel", type = "string")), shape = "GetLinkAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_link_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attributes = structure(list(structure(list(Key = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), FacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
        type = "structure"), Value = structure(list(StringValue = structure(logical(0), 
        shape = "StringAttributeValue", type = "string"), BinaryValue = structure(logical(0), 
        shape = "BinaryAttributeValue", type = "blob"), BooleanValue = structure(logical(0), 
        shape = "BooleanAttributeValue", type = "boolean"), NumberValue = structure(logical(0), 
        shape = "NumberAttributeValue", type = "string"), DatetimeValue = structure(logical(0), 
        shape = "DatetimeAttributeValue", type = "timestamp")), 
        shape = "TypedAttributeValue", type = "structure")), 
        shape = "AttributeKeyAndValue", type = "structure")), 
        shape = "AttributeKeyAndValueList", type = "list")), 
        shape = "GetLinkAttributesResponse", type = "structure")
    return(populate(args, shape))
}

get_object_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), ObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), ConsistencyLevel = structure(logical(0), 
        shape = "ConsistencyLevel", location = "header", locationName = "x-amz-consistency-level", 
        type = "string"), SchemaFacet = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), FacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$")), shape = "SchemaFacet", 
        type = "structure"), AttributeNames = structure(list(structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeNameList", 
        type = "list")), shape = "GetObjectAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_object_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attributes = structure(list(structure(list(Key = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), FacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
        type = "structure"), Value = structure(list(StringValue = structure(logical(0), 
        shape = "StringAttributeValue", type = "string"), BinaryValue = structure(logical(0), 
        shape = "BinaryAttributeValue", type = "blob"), BooleanValue = structure(logical(0), 
        shape = "BooleanAttributeValue", type = "boolean"), NumberValue = structure(logical(0), 
        shape = "NumberAttributeValue", type = "string"), DatetimeValue = structure(logical(0), 
        shape = "DatetimeAttributeValue", type = "timestamp")), 
        shape = "TypedAttributeValue", type = "structure")), 
        shape = "AttributeKeyAndValue", type = "structure")), 
        shape = "AttributeKeyAndValueList", type = "list")), 
        shape = "GetObjectAttributesResponse", type = "structure")
    return(populate(args, shape))
}

get_object_information_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), ObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), ConsistencyLevel = structure(logical(0), 
        shape = "ConsistencyLevel", location = "header", locationName = "x-amz-consistency-level", 
        type = "string")), shape = "GetObjectInformationRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_object_information_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaFacets = structure(list(structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), FacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$")), shape = "SchemaFacet", 
        type = "structure")), shape = "SchemaFacetList", type = "list"), 
        ObjectIdentifier = structure(logical(0), shape = "ObjectIdentifier", 
            type = "string")), shape = "GetObjectInformationResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_schema_as_json_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string")), shape = "GetSchemaAsJsonRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_schema_as_json_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "SchemaName", 
        type = "string", max = 32L, min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), 
        Document = structure(logical(0), shape = "SchemaJsonDocument", 
            type = "string")), shape = "GetSchemaAsJsonResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_typed_link_facet_information_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), Name = structure(logical(0), shape = "TypedLinkName", 
        type = "string", pattern = "^[a-zA-Z0-9._-]*$")), shape = "GetTypedLinkFacetInformationRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_typed_link_facet_information_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityAttributeOrder = structure(list(structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeNameList", 
        type = "list")), shape = "GetTypedLinkFacetInformationResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_applied_schema_arns_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", type = "string"), SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "NumberResults", type = "integer", min = 1L)), 
        shape = "ListAppliedSchemaArnsRequest", type = "structure")
    return(populate(args, shape))
}

list_applied_schema_arns_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string")), shape = "Arns", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "ListAppliedSchemaArnsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_attached_indices_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), TargetReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "NumberResults", type = "integer", min = 1L), 
        ConsistencyLevel = structure(logical(0), shape = "ConsistencyLevel", 
            location = "header", locationName = "x-amz-consistency-level", 
            type = "string")), shape = "ListAttachedIndicesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_attached_indices_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IndexAttachments = structure(list(structure(list(IndexedAttributes = structure(list(structure(list(Key = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), FacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
        type = "structure"), Value = structure(list(StringValue = structure(logical(0), 
        shape = "StringAttributeValue", type = "string"), BinaryValue = structure(logical(0), 
        shape = "BinaryAttributeValue", type = "blob"), BooleanValue = structure(logical(0), 
        shape = "BooleanAttributeValue", type = "boolean"), NumberValue = structure(logical(0), 
        shape = "NumberAttributeValue", type = "string"), DatetimeValue = structure(logical(0), 
        shape = "DatetimeAttributeValue", type = "timestamp")), 
        shape = "TypedAttributeValue", type = "structure")), 
        shape = "AttributeKeyAndValue", type = "structure")), 
        shape = "AttributeKeyAndValueList", type = "list"), ObjectIdentifier = structure(logical(0), 
        shape = "ObjectIdentifier", type = "string")), shape = "IndexAttachment", 
        type = "structure")), shape = "IndexAttachmentList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListAttachedIndicesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_development_schema_arns_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "NumberResults", type = "integer", min = 1L)), 
        shape = "ListDevelopmentSchemaArnsRequest", type = "structure")
    return(populate(args, shape))
}

list_development_schema_arns_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string")), shape = "Arns", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "ListDevelopmentSchemaArnsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_directories_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "NumberResults", type = "integer", min = 1L), 
        State = structure(logical(0), shape = "DirectoryState", 
            type = "string", locationName = "state")), shape = "ListDirectoriesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_directories_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Directories = structure(list(structure(list(Name = structure(logical(0), 
        shape = "DirectoryName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), DirectoryArn = structure(logical(0), 
        shape = "DirectoryArn", type = "string"), State = structure(logical(0), 
        shape = "DirectoryState", type = "string"), CreationDateTime = structure(logical(0), 
        shape = "Date", type = "timestamp")), shape = "Directory", 
        type = "structure")), shape = "DirectoryList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "ListDirectoriesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_facet_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), Name = structure(logical(0), shape = "FacetName", 
        type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "NumberResults", type = "integer", min = 1L)), 
        shape = "ListFacetAttributesRequest", type = "structure")
    return(populate(args, shape))
}

list_facet_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), AttributeDefinition = structure(list(Type = structure(logical(0), 
        shape = "FacetAttributeType", type = "string"), DefaultValue = structure(list(StringValue = structure(logical(0), 
        shape = "StringAttributeValue", type = "string"), BinaryValue = structure(logical(0), 
        shape = "BinaryAttributeValue", type = "blob"), BooleanValue = structure(logical(0), 
        shape = "BooleanAttributeValue", type = "boolean"), NumberValue = structure(logical(0), 
        shape = "NumberAttributeValue", type = "string"), DatetimeValue = structure(logical(0), 
        shape = "DatetimeAttributeValue", type = "timestamp")), 
        shape = "TypedAttributeValue", type = "structure"), IsImmutable = structure(logical(0), 
        shape = "Bool", type = "boolean"), Rules = structure(list(structure(list(Type = structure(logical(0), 
        shape = "RuleType", type = "string"), Parameters = structure(list(structure(logical(0), 
        shape = "RuleParameterValue", type = "string")), shape = "RuleParameterMap", 
        type = "map")), shape = "Rule", type = "structure")), 
        shape = "RuleMap", type = "map")), shape = "FacetAttributeDefinition", 
        type = "structure"), AttributeReference = structure(list(TargetFacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$"), TargetAttributeName = structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "FacetAttributeReference", 
        type = "structure"), RequiredBehavior = structure(logical(0), 
        shape = "RequiredAttributeBehavior", type = "string")), 
        shape = "FacetAttribute", type = "structure")), shape = "FacetAttributeList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListFacetAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_facet_names_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "NumberResults", type = "integer", min = 1L)), 
        shape = "ListFacetNamesRequest", type = "structure")
    return(populate(args, shape))
}

list_facet_names_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FacetNames = structure(list(structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$")), shape = "FacetNameList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListFacetNamesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_incoming_typed_links_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), ObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), FilterAttributeRanges = structure(list(structure(list(AttributeName = structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Range = structure(list(StartMode = structure(logical(0), 
        shape = "RangeMode", type = "string"), StartValue = structure(list(StringValue = structure(logical(0), 
        shape = "StringAttributeValue", type = "string"), BinaryValue = structure(logical(0), 
        shape = "BinaryAttributeValue", type = "blob"), BooleanValue = structure(logical(0), 
        shape = "BooleanAttributeValue", type = "boolean"), NumberValue = structure(logical(0), 
        shape = "NumberAttributeValue", type = "string"), DatetimeValue = structure(logical(0), 
        shape = "DatetimeAttributeValue", type = "timestamp")), 
        shape = "TypedAttributeValue", type = "structure"), EndMode = structure(logical(0), 
        shape = "RangeMode", type = "string"), EndValue = structure(list(StringValue = structure(logical(0), 
        shape = "StringAttributeValue", type = "string"), BinaryValue = structure(logical(0), 
        shape = "BinaryAttributeValue", type = "blob"), BooleanValue = structure(logical(0), 
        shape = "BooleanAttributeValue", type = "boolean"), NumberValue = structure(logical(0), 
        shape = "NumberAttributeValue", type = "string"), DatetimeValue = structure(logical(0), 
        shape = "DatetimeAttributeValue", type = "timestamp")), 
        shape = "TypedAttributeValue", type = "structure")), 
        shape = "TypedAttributeValueRange", type = "structure")), 
        shape = "TypedLinkAttributeRange", type = "structure")), 
        shape = "TypedLinkAttributeRangeList", type = "list"), 
        FilterTypedLink = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), TypedLinkName = structure(logical(0), 
            shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$")), 
            shape = "TypedLinkSchemaAndFacetName", type = "structure"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "NumberResults", type = "integer", min = 1L), 
        ConsistencyLevel = structure(logical(0), shape = "ConsistencyLevel", 
            type = "string")), shape = "ListIncomingTypedLinksRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_incoming_typed_links_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LinkSpecifiers = structure(list(structure(list(TypedLinkFacet = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), TypedLinkName = structure(logical(0), 
        shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$")), 
        shape = "TypedLinkSchemaAndFacetName", type = "structure"), 
        SourceObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), TargetObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), IdentityAttributeValues = structure(list(structure(list(AttributeName = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Value = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure")), 
            shape = "AttributeNameAndValue", type = "structure")), 
            shape = "AttributeNameAndValueList", type = "list")), 
        shape = "TypedLinkSpecifier", type = "structure")), shape = "TypedLinkSpecifierList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListIncomingTypedLinksResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_index_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), RangesOnIndexedValues = structure(list(structure(list(AttributeKey = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), FacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
        type = "structure"), Range = structure(list(StartMode = structure(logical(0), 
        shape = "RangeMode", type = "string"), StartValue = structure(list(StringValue = structure(logical(0), 
        shape = "StringAttributeValue", type = "string"), BinaryValue = structure(logical(0), 
        shape = "BinaryAttributeValue", type = "blob"), BooleanValue = structure(logical(0), 
        shape = "BooleanAttributeValue", type = "boolean"), NumberValue = structure(logical(0), 
        shape = "NumberAttributeValue", type = "string"), DatetimeValue = structure(logical(0), 
        shape = "DatetimeAttributeValue", type = "timestamp")), 
        shape = "TypedAttributeValue", type = "structure"), EndMode = structure(logical(0), 
        shape = "RangeMode", type = "string"), EndValue = structure(list(StringValue = structure(logical(0), 
        shape = "StringAttributeValue", type = "string"), BinaryValue = structure(logical(0), 
        shape = "BinaryAttributeValue", type = "blob"), BooleanValue = structure(logical(0), 
        shape = "BooleanAttributeValue", type = "boolean"), NumberValue = structure(logical(0), 
        shape = "NumberAttributeValue", type = "string"), DatetimeValue = structure(logical(0), 
        shape = "DatetimeAttributeValue", type = "timestamp")), 
        shape = "TypedAttributeValue", type = "structure")), 
        shape = "TypedAttributeValueRange", type = "structure")), 
        shape = "ObjectAttributeRange", type = "structure")), 
        shape = "ObjectAttributeRangeList", type = "list"), IndexReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), MaxResults = structure(logical(0), 
        shape = "NumberResults", type = "integer", min = 1L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string"), ConsistencyLevel = structure(logical(0), 
            shape = "ConsistencyLevel", location = "header", 
            locationName = "x-amz-consistency-level", type = "string")), 
        shape = "ListIndexRequest", type = "structure")
    return(populate(args, shape))
}

list_index_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IndexAttachments = structure(list(structure(list(IndexedAttributes = structure(list(structure(list(Key = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), FacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
        type = "structure"), Value = structure(list(StringValue = structure(logical(0), 
        shape = "StringAttributeValue", type = "string"), BinaryValue = structure(logical(0), 
        shape = "BinaryAttributeValue", type = "blob"), BooleanValue = structure(logical(0), 
        shape = "BooleanAttributeValue", type = "boolean"), NumberValue = structure(logical(0), 
        shape = "NumberAttributeValue", type = "string"), DatetimeValue = structure(logical(0), 
        shape = "DatetimeAttributeValue", type = "timestamp")), 
        shape = "TypedAttributeValue", type = "structure")), 
        shape = "AttributeKeyAndValue", type = "structure")), 
        shape = "AttributeKeyAndValueList", type = "list"), ObjectIdentifier = structure(logical(0), 
        shape = "ObjectIdentifier", type = "string")), shape = "IndexAttachment", 
        type = "structure")), shape = "IndexAttachmentList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListIndexResponse", type = "structure")
    return(populate(args, shape))
}

list_managed_schema_arns_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "NumberResults", type = "integer", min = 1L)), 
        shape = "ListManagedSchemaArnsRequest", type = "structure")
    return(populate(args, shape))
}

list_managed_schema_arns_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string")), shape = "Arns", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "ListManagedSchemaArnsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_object_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), ObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "NumberResults", type = "integer", min = 1L), 
        ConsistencyLevel = structure(logical(0), shape = "ConsistencyLevel", 
            location = "header", locationName = "x-amz-consistency-level", 
            type = "string"), FacetFilter = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), FacetName = structure(logical(0), 
            shape = "FacetName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "SchemaFacet", 
            type = "structure")), shape = "ListObjectAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_object_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attributes = structure(list(structure(list(Key = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), FacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
        type = "structure"), Value = structure(list(StringValue = structure(logical(0), 
        shape = "StringAttributeValue", type = "string"), BinaryValue = structure(logical(0), 
        shape = "BinaryAttributeValue", type = "blob"), BooleanValue = structure(logical(0), 
        shape = "BooleanAttributeValue", type = "boolean"), NumberValue = structure(logical(0), 
        shape = "NumberAttributeValue", type = "string"), DatetimeValue = structure(logical(0), 
        shape = "DatetimeAttributeValue", type = "timestamp")), 
        shape = "TypedAttributeValue", type = "structure")), 
        shape = "AttributeKeyAndValue", type = "structure")), 
        shape = "AttributeKeyAndValueList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "ListObjectAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_object_children_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), ObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "NumberResults", type = "integer", min = 1L), 
        ConsistencyLevel = structure(logical(0), shape = "ConsistencyLevel", 
            location = "header", locationName = "x-amz-consistency-level", 
            type = "string")), shape = "ListObjectChildrenRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_object_children_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Children = structure(list(structure(logical(0), 
        shape = "ObjectIdentifier", type = "string")), shape = "LinkNameToObjectIdentifierMap", 
        type = "map"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListObjectChildrenResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_object_parent_paths_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), ObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "NumberResults", type = "integer", min = 1L)), 
        shape = "ListObjectParentPathsRequest", type = "structure")
    return(populate(args, shape))
}

list_object_parent_paths_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PathToObjectIdentifiersList = structure(list(structure(list(Path = structure(logical(0), 
        shape = "PathString", type = "string"), ObjectIdentifiers = structure(list(structure(logical(0), 
        shape = "ObjectIdentifier", type = "string")), shape = "ObjectIdentifierList", 
        type = "list")), shape = "PathToObjectIdentifiers", type = "structure")), 
        shape = "PathToObjectIdentifiersList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "ListObjectParentPathsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_object_parents_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), ObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "NumberResults", type = "integer", min = 1L), 
        ConsistencyLevel = structure(logical(0), shape = "ConsistencyLevel", 
            location = "header", locationName = "x-amz-consistency-level", 
            type = "string")), shape = "ListObjectParentsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_object_parents_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Parents = structure(list(structure(logical(0), 
        shape = "LinkName", type = "string", max = 64L, min = 1L, 
        pattern = "[^\\/\\[\\]\\(\\):\\{\\}#@!?\\s\\\\;]+")), 
        shape = "ObjectIdentifierToLinkNameMap", type = "map"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "ListObjectParentsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_object_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), ObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "NumberResults", type = "integer", min = 1L), 
        ConsistencyLevel = structure(logical(0), shape = "ConsistencyLevel", 
            location = "header", locationName = "x-amz-consistency-level", 
            type = "string")), shape = "ListObjectPoliciesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_object_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AttachedPolicyIds = structure(list(structure(logical(0), 
        shape = "ObjectIdentifier", type = "string")), shape = "ObjectIdentifierList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListObjectPoliciesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_outgoing_typed_links_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), ObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), FilterAttributeRanges = structure(list(structure(list(AttributeName = structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Range = structure(list(StartMode = structure(logical(0), 
        shape = "RangeMode", type = "string"), StartValue = structure(list(StringValue = structure(logical(0), 
        shape = "StringAttributeValue", type = "string"), BinaryValue = structure(logical(0), 
        shape = "BinaryAttributeValue", type = "blob"), BooleanValue = structure(logical(0), 
        shape = "BooleanAttributeValue", type = "boolean"), NumberValue = structure(logical(0), 
        shape = "NumberAttributeValue", type = "string"), DatetimeValue = structure(logical(0), 
        shape = "DatetimeAttributeValue", type = "timestamp")), 
        shape = "TypedAttributeValue", type = "structure"), EndMode = structure(logical(0), 
        shape = "RangeMode", type = "string"), EndValue = structure(list(StringValue = structure(logical(0), 
        shape = "StringAttributeValue", type = "string"), BinaryValue = structure(logical(0), 
        shape = "BinaryAttributeValue", type = "blob"), BooleanValue = structure(logical(0), 
        shape = "BooleanAttributeValue", type = "boolean"), NumberValue = structure(logical(0), 
        shape = "NumberAttributeValue", type = "string"), DatetimeValue = structure(logical(0), 
        shape = "DatetimeAttributeValue", type = "timestamp")), 
        shape = "TypedAttributeValue", type = "structure")), 
        shape = "TypedAttributeValueRange", type = "structure")), 
        shape = "TypedLinkAttributeRange", type = "structure")), 
        shape = "TypedLinkAttributeRangeList", type = "list"), 
        FilterTypedLink = structure(list(SchemaArn = structure(logical(0), 
            shape = "Arn", type = "string"), TypedLinkName = structure(logical(0), 
            shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$")), 
            shape = "TypedLinkSchemaAndFacetName", type = "structure"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "NumberResults", type = "integer", min = 1L), 
        ConsistencyLevel = structure(logical(0), shape = "ConsistencyLevel", 
            type = "string")), shape = "ListOutgoingTypedLinksRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_outgoing_typed_links_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TypedLinkSpecifiers = structure(list(structure(list(TypedLinkFacet = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), TypedLinkName = structure(logical(0), 
        shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$")), 
        shape = "TypedLinkSchemaAndFacetName", type = "structure"), 
        SourceObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), TargetObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), IdentityAttributeValues = structure(list(structure(list(AttributeName = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Value = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure")), 
            shape = "AttributeNameAndValue", type = "structure")), 
            shape = "AttributeNameAndValueList", type = "list")), 
        shape = "TypedLinkSpecifier", type = "structure")), shape = "TypedLinkSpecifierList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListOutgoingTypedLinksResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_policy_attachments_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), PolicyReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "NumberResults", type = "integer", min = 1L), 
        ConsistencyLevel = structure(logical(0), shape = "ConsistencyLevel", 
            location = "header", locationName = "x-amz-consistency-level", 
            type = "string")), shape = "ListPolicyAttachmentsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_policy_attachments_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ObjectIdentifiers = structure(list(structure(logical(0), 
        shape = "ObjectIdentifier", type = "string")), shape = "ObjectIdentifierList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListPolicyAttachmentsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_published_schema_arns_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "NumberResults", type = "integer", min = 1L)), 
        shape = "ListPublishedSchemaArnsRequest", type = "structure")
    return(populate(args, shape))
}

list_published_schema_arns_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string")), shape = "Arns", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "ListPublishedSchemaArnsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "Arn", type = "string"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "TagsNumberResults", type = "integer", min = 50L)), 
        shape = "ListTagsForResourceRequest", type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string"), Value = structure(logical(0), 
        shape = "TagValue", type = "string")), shape = "Tag", 
        type = "structure")), shape = "TagList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "ListTagsForResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_typed_link_facet_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), Name = structure(logical(0), shape = "TypedLinkName", 
        type = "string", pattern = "^[a-zA-Z0-9._-]*$"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "NumberResults", type = "integer", min = 1L)), 
        shape = "ListTypedLinkFacetAttributesRequest", type = "structure")
    return(populate(args, shape))
}

list_typed_link_facet_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Type = structure(logical(0), 
        shape = "FacetAttributeType", type = "string"), DefaultValue = structure(list(StringValue = structure(logical(0), 
        shape = "StringAttributeValue", type = "string"), BinaryValue = structure(logical(0), 
        shape = "BinaryAttributeValue", type = "blob"), BooleanValue = structure(logical(0), 
        shape = "BooleanAttributeValue", type = "boolean"), NumberValue = structure(logical(0), 
        shape = "NumberAttributeValue", type = "string"), DatetimeValue = structure(logical(0), 
        shape = "DatetimeAttributeValue", type = "timestamp")), 
        shape = "TypedAttributeValue", type = "structure"), IsImmutable = structure(logical(0), 
        shape = "Bool", type = "boolean"), Rules = structure(list(structure(list(Type = structure(logical(0), 
        shape = "RuleType", type = "string"), Parameters = structure(list(structure(logical(0), 
        shape = "RuleParameterValue", type = "string")), shape = "RuleParameterMap", 
        type = "map")), shape = "Rule", type = "structure")), 
        shape = "RuleMap", type = "map"), RequiredBehavior = structure(logical(0), 
        shape = "RequiredAttributeBehavior", type = "string")), 
        shape = "TypedLinkAttributeDefinition", type = "structure")), 
        shape = "TypedLinkAttributeDefinitionList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "ListTypedLinkFacetAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_typed_link_facet_names_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "NumberResults", type = "integer", min = 1L)), 
        shape = "ListTypedLinkFacetNamesRequest", type = "structure")
    return(populate(args, shape))
}

list_typed_link_facet_names_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FacetNames = structure(list(structure(logical(0), 
        shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$")), 
        shape = "TypedLinkNameList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "ListTypedLinkFacetNamesResponse", 
        type = "structure")
    return(populate(args, shape))
}

lookup_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), ObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "NumberResults", type = "integer", min = 1L)), 
        shape = "LookupPolicyRequest", type = "structure")
    return(populate(args, shape))
}

lookup_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyToPathList = structure(list(structure(list(Path = structure(logical(0), 
        shape = "PathString", type = "string"), Policies = structure(list(structure(list(PolicyId = structure(logical(0), 
        shape = "ObjectIdentifier", type = "string"), ObjectIdentifier = structure(logical(0), 
        shape = "ObjectIdentifier", type = "string"), PolicyType = structure(logical(0), 
        shape = "PolicyType", type = "string")), shape = "PolicyAttachment", 
        type = "structure")), shape = "PolicyAttachmentList", 
        type = "list")), shape = "PolicyToPath", type = "structure")), 
        shape = "PolicyToPathList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "LookupPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

publish_schema_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DevelopmentSchemaArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), Version = structure(logical(0), shape = "Version", 
        type = "string", max = 10L, min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), 
        MinorVersion = structure(logical(0), shape = "Version", 
            type = "string", max = 10L, min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), 
        Name = structure(logical(0), shape = "SchemaName", type = "string", 
            max = 32L, min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), 
        shape = "PublishSchemaRequest", type = "structure")
    return(populate(args, shape))
}

publish_schema_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PublishedSchemaArn = structure(logical(0), 
        shape = "Arn", type = "string")), shape = "PublishSchemaResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_schema_from_json_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), Document = structure(logical(0), shape = "SchemaJsonDocument", 
        type = "string")), shape = "PutSchemaFromJsonRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_schema_from_json_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "Arn", 
        type = "string")), shape = "PutSchemaFromJsonResponse", 
        type = "structure")
    return(populate(args, shape))
}

remove_facet_from_object_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), SchemaFacet = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), FacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$")), shape = "SchemaFacet", 
        type = "structure"), ObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure")), shape = "RemoveFacetFromObjectRequest", 
        type = "structure")
    return(populate(args, shape))
}

remove_facet_from_object_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RemoveFacetFromObjectResponse", 
        type = "structure")
    return(populate(args, shape))
}

tag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "Arn", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string"), Value = structure(logical(0), 
        shape = "TagValue", type = "string")), shape = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "TagResourceRequest", type = "structure")
    return(populate(args, shape))
}

tag_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "TagResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

untag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "Arn", type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "TagKey", type = "string")), shape = "TagKeyList", 
        type = "list")), shape = "UntagResourceRequest", type = "structure")
    return(populate(args, shape))
}

untag_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UntagResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_facet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), Name = structure(logical(0), shape = "FacetName", 
        type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), 
        AttributeUpdates = structure(list(structure(list(Attribute = structure(list(Name = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), AttributeDefinition = structure(list(Type = structure(logical(0), 
            shape = "FacetAttributeType", type = "string"), DefaultValue = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure"), 
            IsImmutable = structure(logical(0), shape = "Bool", 
                type = "boolean"), Rules = structure(list(structure(list(Type = structure(logical(0), 
                shape = "RuleType", type = "string"), Parameters = structure(list(structure(logical(0), 
                shape = "RuleParameterValue", type = "string")), 
                shape = "RuleParameterMap", type = "map")), shape = "Rule", 
                type = "structure")), shape = "RuleMap", type = "map")), 
            shape = "FacetAttributeDefinition", type = "structure"), 
            AttributeReference = structure(list(TargetFacetName = structure(logical(0), 
                shape = "FacetName", type = "string", max = 64L, 
                min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), TargetAttributeName = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 64L, 
                min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "FacetAttributeReference", 
                type = "structure"), RequiredBehavior = structure(logical(0), 
                shape = "RequiredAttributeBehavior", type = "string")), 
            shape = "FacetAttribute", type = "structure"), Action = structure(logical(0), 
            shape = "UpdateActionType", type = "string")), shape = "FacetAttributeUpdate", 
            type = "structure")), shape = "FacetAttributeUpdateList", 
            type = "list"), ObjectType = structure(logical(0), 
            shape = "ObjectType", type = "string")), shape = "UpdateFacetRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_facet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateFacetResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_link_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), TypedLinkSpecifier = structure(list(TypedLinkFacet = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), TypedLinkName = structure(logical(0), 
        shape = "TypedLinkName", type = "string", pattern = "^[a-zA-Z0-9._-]*$")), 
        shape = "TypedLinkSchemaAndFacetName", type = "structure"), 
        SourceObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), TargetObjectReference = structure(list(Selector = structure(logical(0), 
            shape = "SelectorObjectReference", type = "string")), 
            shape = "ObjectReference", type = "structure"), IdentityAttributeValues = structure(list(structure(list(AttributeName = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Value = structure(list(StringValue = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            BinaryValue = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), BooleanValue = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean"), 
            NumberValue = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), DatetimeValue = structure(logical(0), 
                shape = "DatetimeAttributeValue", type = "timestamp")), 
            shape = "TypedAttributeValue", type = "structure")), 
            shape = "AttributeNameAndValue", type = "structure")), 
            shape = "AttributeNameAndValueList", type = "list")), 
        shape = "TypedLinkSpecifier", type = "structure"), AttributeUpdates = structure(list(structure(list(AttributeKey = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), FacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
        type = "structure"), AttributeAction = structure(list(AttributeActionType = structure(logical(0), 
        shape = "UpdateActionType", type = "string"), AttributeUpdateValue = structure(list(StringValue = structure(logical(0), 
        shape = "StringAttributeValue", type = "string"), BinaryValue = structure(logical(0), 
        shape = "BinaryAttributeValue", type = "blob"), BooleanValue = structure(logical(0), 
        shape = "BooleanAttributeValue", type = "boolean"), NumberValue = structure(logical(0), 
        shape = "NumberAttributeValue", type = "string"), DatetimeValue = structure(logical(0), 
        shape = "DatetimeAttributeValue", type = "timestamp")), 
        shape = "TypedAttributeValue", type = "structure")), 
        shape = "LinkAttributeAction", type = "structure")), 
        shape = "LinkAttributeUpdate", type = "structure")), 
        shape = "LinkAttributeUpdateList", type = "list")), shape = "UpdateLinkAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_link_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateLinkAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_object_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), ObjectReference = structure(list(Selector = structure(logical(0), 
        shape = "SelectorObjectReference", type = "string")), 
        shape = "ObjectReference", type = "structure"), AttributeUpdates = structure(list(structure(list(ObjectAttributeKey = structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), FacetName = structure(logical(0), 
        shape = "FacetName", type = "string", max = 64L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$"), Name = structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeKey", 
        type = "structure"), ObjectAttributeAction = structure(list(ObjectAttributeActionType = structure(logical(0), 
        shape = "UpdateActionType", type = "string"), ObjectAttributeUpdateValue = structure(list(StringValue = structure(logical(0), 
        shape = "StringAttributeValue", type = "string"), BinaryValue = structure(logical(0), 
        shape = "BinaryAttributeValue", type = "blob"), BooleanValue = structure(logical(0), 
        shape = "BooleanAttributeValue", type = "boolean"), NumberValue = structure(logical(0), 
        shape = "NumberAttributeValue", type = "string"), DatetimeValue = structure(logical(0), 
        shape = "DatetimeAttributeValue", type = "timestamp")), 
        shape = "TypedAttributeValue", type = "structure")), 
        shape = "ObjectAttributeAction", type = "structure")), 
        shape = "ObjectAttributeUpdate", type = "structure")), 
        shape = "ObjectAttributeUpdateList", type = "list")), 
        shape = "UpdateObjectAttributesRequest", type = "structure")
    return(populate(args, shape))
}

update_object_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ObjectIdentifier = structure(logical(0), 
        shape = "ObjectIdentifier", type = "string")), shape = "UpdateObjectAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_schema_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), Name = structure(logical(0), shape = "SchemaName", 
        type = "string", max = 32L, min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), 
        shape = "UpdateSchemaRequest", type = "structure")
    return(populate(args, shape))
}

update_schema_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", type = "string")), shape = "UpdateSchemaResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_typed_link_facet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaArn = structure(logical(0), 
        shape = "Arn", location = "header", locationName = "x-amz-data-partition", 
        type = "string"), Name = structure(logical(0), shape = "TypedLinkName", 
        type = "string", pattern = "^[a-zA-Z0-9._-]*$"), AttributeUpdates = structure(list(structure(list(Attribute = structure(list(Name = structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$"), Type = structure(logical(0), 
        shape = "FacetAttributeType", type = "string"), DefaultValue = structure(list(StringValue = structure(logical(0), 
        shape = "StringAttributeValue", type = "string"), BinaryValue = structure(logical(0), 
        shape = "BinaryAttributeValue", type = "blob"), BooleanValue = structure(logical(0), 
        shape = "BooleanAttributeValue", type = "boolean"), NumberValue = structure(logical(0), 
        shape = "NumberAttributeValue", type = "string"), DatetimeValue = structure(logical(0), 
        shape = "DatetimeAttributeValue", type = "timestamp")), 
        shape = "TypedAttributeValue", type = "structure"), IsImmutable = structure(logical(0), 
        shape = "Bool", type = "boolean"), Rules = structure(list(structure(list(Type = structure(logical(0), 
        shape = "RuleType", type = "string"), Parameters = structure(list(structure(logical(0), 
        shape = "RuleParameterValue", type = "string")), shape = "RuleParameterMap", 
        type = "map")), shape = "Rule", type = "structure")), 
        shape = "RuleMap", type = "map"), RequiredBehavior = structure(logical(0), 
        shape = "RequiredAttributeBehavior", type = "string")), 
        shape = "TypedLinkAttributeDefinition", type = "structure"), 
        Action = structure(logical(0), shape = "UpdateActionType", 
            type = "string")), shape = "TypedLinkFacetAttributeUpdate", 
        type = "structure")), shape = "TypedLinkFacetAttributeUpdateList", 
        type = "list"), IdentityAttributeOrder = structure(list(structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "^[a-zA-Z0-9._-]*$")), shape = "AttributeNameList", 
        type = "list")), shape = "UpdateTypedLinkFacetRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_typed_link_facet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateTypedLinkFacetResponse", 
        type = "structure")
    return(populate(args, shape))
}

upgrade_applied_schema_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PublishedSchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), DirectoryArn = structure(logical(0), 
        shape = "Arn", type = "string"), DryRun = structure(logical(0), 
        shape = "Bool", type = "boolean")), shape = "UpgradeAppliedSchemaRequest", 
        type = "structure")
    return(populate(args, shape))
}

upgrade_applied_schema_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UpgradedSchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), DirectoryArn = structure(logical(0), 
        shape = "Arn", type = "string")), shape = "UpgradeAppliedSchemaResponse", 
        type = "structure")
    return(populate(args, shape))
}

upgrade_published_schema_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DevelopmentSchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), PublishedSchemaArn = structure(logical(0), 
        shape = "Arn", type = "string"), MinorVersion = structure(logical(0), 
        shape = "Version", type = "string", max = 10L, min = 1L, 
        pattern = "^[a-zA-Z0-9._-]*$"), DryRun = structure(logical(0), 
        shape = "Bool", type = "boolean")), shape = "UpgradePublishedSchemaRequest", 
        type = "structure")
    return(populate(args, shape))
}

upgrade_published_schema_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UpgradedSchemaArn = structure(logical(0), 
        shape = "Arn", type = "string")), shape = "UpgradePublishedSchemaResponse", 
        type = "structure")
    return(populate(args, shape))
}
