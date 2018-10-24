create_certificate_authority_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityConfiguration = structure(list(KeyAlgorithm = structure(logical(0), 
        shape = "KeyAlgorithm", type = "string"), SigningAlgorithm = structure(logical(0), 
        shape = "SigningAlgorithm", type = "string"), Subject = structure(list(Country = structure(logical(0), 
        shape = "CountryCodeString", type = "string", pattern = "[A-Za-z]{2}"), 
        Organization = structure(logical(0), shape = "String64", 
            type = "string", max = 64L, min = 0L), OrganizationalUnit = structure(logical(0), 
            shape = "String64", type = "string", max = 64L, min = 0L), 
        DistinguishedNameQualifier = structure(logical(0), shape = "DistinguishedNameQualifierString", 
            type = "string", max = 64L, min = 0L, pattern = "[a-zA-Z0-9'()+-.?:/= ]*"), 
        State = structure(logical(0), shape = "String128", type = "string", 
            max = 128L, min = 0L), CommonName = structure(logical(0), 
            shape = "String64", type = "string", max = 64L, min = 0L), 
        SerialNumber = structure(logical(0), shape = "String64", 
            type = "string", max = 64L, min = 0L), Locality = structure(logical(0), 
            shape = "String128", type = "string", max = 128L, 
            min = 0L), Title = structure(logical(0), shape = "String64", 
            type = "string", max = 64L, min = 0L), Surname = structure(logical(0), 
            shape = "String40", type = "string", max = 40L, min = 0L), 
        GivenName = structure(logical(0), shape = "String16", 
            type = "string", max = 16L, min = 0L), Initials = structure(logical(0), 
            shape = "String5", type = "string", max = 5L, min = 0L), 
        Pseudonym = structure(logical(0), shape = "String128", 
            type = "string", max = 128L, min = 0L), GenerationQualifier = structure(logical(0), 
            shape = "String3", type = "string", max = 3L, min = 0L)), 
        shape = "ASN1Subject", type = "structure")), shape = "CertificateAuthorityConfiguration", 
        type = "structure"), RevocationConfiguration = structure(list(CrlConfiguration = structure(list(Enabled = structure(logical(0), 
        shape = "Boolean", box = TRUE, type = "boolean"), ExpirationInDays = structure(logical(0), 
        shape = "Integer1To5000", box = TRUE, type = "integer", 
        max = 5000L, min = 1L), CustomCname = structure(logical(0), 
        shape = "String253", type = "string", max = 253L, min = 0L), 
        S3BucketName = structure(logical(0), shape = "String3To255", 
            type = "string", max = 255L, min = 3L)), shape = "CrlConfiguration", 
        type = "structure")), shape = "RevocationConfiguration", 
        type = "structure"), CertificateAuthorityType = structure(logical(0), 
        shape = "CertificateAuthorityType", type = "string"), 
        IdempotencyToken = structure(logical(0), shape = "IdempotencyToken", 
            type = "string", max = 36L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]*")), 
        shape = "CreateCertificateAuthorityRequest", type = "structure")
    return(populate(args, shape))
}

create_certificate_authority_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 200L, min = 5L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        shape = "CreateCertificateAuthorityResponse", type = "structure")
    return(populate(args, shape))
}

create_certificate_authority_audit_report_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 200L, min = 5L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"), 
        S3BucketName = structure(logical(0), shape = "String", 
            type = "string"), AuditReportResponseFormat = structure(logical(0), 
            shape = "AuditReportResponseFormat", type = "string")), 
        shape = "CreateCertificateAuthorityAuditReportRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_certificate_authority_audit_report_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuditReportId = structure(logical(0), 
        shape = "AuditReportId", type = "string", max = 36L, 
        min = 36L, pattern = "[a-z0-9]{8}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{12}"), 
        S3Key = structure(logical(0), shape = "String", type = "string")), 
        shape = "CreateCertificateAuthorityAuditReportResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_certificate_authority_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 200L, min = 5L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"), 
        PermanentDeletionTimeInDays = structure(logical(0), shape = "PermanentDeletionTimeInDays", 
            type = "integer", max = 30L, min = 7L)), shape = "DeleteCertificateAuthorityRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_certificate_authority_output <- function () 
{
    return(list())
}

describe_certificate_authority_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 200L, min = 5L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        shape = "DescribeCertificateAuthorityRequest", type = "structure")
    return(populate(args, shape))
}

describe_certificate_authority_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthority = structure(list(Arn = structure(logical(0), 
        shape = "Arn", type = "string", max = 200L, min = 5L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"), 
        CreatedAt = structure(logical(0), shape = "TStamp", type = "timestamp"), 
        LastStateChangeAt = structure(logical(0), shape = "TStamp", 
            type = "timestamp"), Type = structure(logical(0), 
            shape = "CertificateAuthorityType", type = "string"), 
        Serial = structure(logical(0), shape = "String", type = "string"), 
        Status = structure(logical(0), shape = "CertificateAuthorityStatus", 
            type = "string"), NotBefore = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), NotAfter = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), FailureReason = structure(logical(0), 
            shape = "FailureReason", type = "string"), CertificateAuthorityConfiguration = structure(list(KeyAlgorithm = structure(logical(0), 
            shape = "KeyAlgorithm", type = "string"), SigningAlgorithm = structure(logical(0), 
            shape = "SigningAlgorithm", type = "string"), Subject = structure(list(Country = structure(logical(0), 
            shape = "CountryCodeString", type = "string", pattern = "[A-Za-z]{2}"), 
            Organization = structure(logical(0), shape = "String64", 
                type = "string", max = 64L, min = 0L), OrganizationalUnit = structure(logical(0), 
                shape = "String64", type = "string", max = 64L, 
                min = 0L), DistinguishedNameQualifier = structure(logical(0), 
                shape = "DistinguishedNameQualifierString", type = "string", 
                max = 64L, min = 0L, pattern = "[a-zA-Z0-9'()+-.?:/= ]*"), 
            State = structure(logical(0), shape = "String128", 
                type = "string", max = 128L, min = 0L), CommonName = structure(logical(0), 
                shape = "String64", type = "string", max = 64L, 
                min = 0L), SerialNumber = structure(logical(0), 
                shape = "String64", type = "string", max = 64L, 
                min = 0L), Locality = structure(logical(0), shape = "String128", 
                type = "string", max = 128L, min = 0L), Title = structure(logical(0), 
                shape = "String64", type = "string", max = 64L, 
                min = 0L), Surname = structure(logical(0), shape = "String40", 
                type = "string", max = 40L, min = 0L), GivenName = structure(logical(0), 
                shape = "String16", type = "string", max = 16L, 
                min = 0L), Initials = structure(logical(0), shape = "String5", 
                type = "string", max = 5L, min = 0L), Pseudonym = structure(logical(0), 
                shape = "String128", type = "string", max = 128L, 
                min = 0L), GenerationQualifier = structure(logical(0), 
                shape = "String3", type = "string", max = 3L, 
                min = 0L)), shape = "ASN1Subject", type = "structure")), 
            shape = "CertificateAuthorityConfiguration", type = "structure"), 
        RevocationConfiguration = structure(list(CrlConfiguration = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", box = TRUE, type = "boolean"), 
            ExpirationInDays = structure(logical(0), shape = "Integer1To5000", 
                box = TRUE, type = "integer", max = 5000L, min = 1L), 
            CustomCname = structure(logical(0), shape = "String253", 
                type = "string", max = 253L, min = 0L), S3BucketName = structure(logical(0), 
                shape = "String3To255", type = "string", max = 255L, 
                min = 3L)), shape = "CrlConfiguration", type = "structure")), 
            shape = "RevocationConfiguration", type = "structure"), 
        RestorableUntil = structure(logical(0), shape = "TStamp", 
            type = "timestamp")), shape = "CertificateAuthority", 
        type = "structure")), shape = "DescribeCertificateAuthorityResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_certificate_authority_audit_report_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 200L, min = 5L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"), 
        AuditReportId = structure(logical(0), shape = "AuditReportId", 
            type = "string", max = 36L, min = 36L, pattern = "[a-z0-9]{8}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{12}")), 
        shape = "DescribeCertificateAuthorityAuditReportRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_certificate_authority_audit_report_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuditReportStatus = structure(logical(0), 
        shape = "AuditReportStatus", type = "string"), S3BucketName = structure(logical(0), 
        shape = "String", type = "string"), S3Key = structure(logical(0), 
        shape = "String", type = "string"), CreatedAt = structure(logical(0), 
        shape = "TStamp", type = "timestamp")), shape = "DescribeCertificateAuthorityAuditReportResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 200L, min = 5L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"), 
        CertificateArn = structure(logical(0), shape = "Arn", 
            type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        shape = "GetCertificateRequest", type = "structure")
    return(populate(args, shape))
}

get_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Certificate = structure(logical(0), 
        shape = "CertificateBody", type = "string"), CertificateChain = structure(logical(0), 
        shape = "CertificateChain", type = "string")), shape = "GetCertificateResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_certificate_authority_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 200L, min = 5L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        shape = "GetCertificateAuthorityCertificateRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_certificate_authority_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Certificate = structure(logical(0), 
        shape = "CertificateBody", type = "string"), CertificateChain = structure(logical(0), 
        shape = "CertificateChain", type = "string")), shape = "GetCertificateAuthorityCertificateResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_certificate_authority_csr_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 200L, min = 5L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        shape = "GetCertificateAuthorityCsrRequest", type = "structure")
    return(populate(args, shape))
}

get_certificate_authority_csr_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Csr = structure(logical(0), shape = "CsrBody", 
        type = "string")), shape = "GetCertificateAuthorityCsrResponse", 
        type = "structure")
    return(populate(args, shape))
}

import_certificate_authority_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 200L, min = 5L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"), 
        Certificate = structure(logical(0), shape = "CertificateBodyBlob", 
            type = "blob", max = 32768L, min = 1L), CertificateChain = structure(logical(0), 
            shape = "CertificateChainBlob", type = "blob", max = 2097152L, 
            min = 0L)), shape = "ImportCertificateAuthorityCertificateRequest", 
        type = "structure")
    return(populate(args, shape))
}

import_certificate_authority_certificate_output <- function () 
{
    return(list())
}

issue_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 200L, min = 5L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"), 
        Csr = structure(logical(0), shape = "CsrBlob", type = "blob", 
            max = 32768L, min = 1L), SigningAlgorithm = structure(logical(0), 
            shape = "SigningAlgorithm", type = "string"), Validity = structure(list(Value = structure(logical(0), 
            shape = "PositiveLong", box = TRUE, type = "long", 
            min = 1L), Type = structure(logical(0), shape = "ValidityPeriodType", 
            type = "string")), shape = "Validity", type = "structure"), 
        IdempotencyToken = structure(logical(0), shape = "IdempotencyToken", 
            type = "string", max = 36L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]*")), 
        shape = "IssueCertificateRequest", type = "structure")
    return(populate(args, shape))
}

issue_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 200L, min = 5L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        shape = "IssueCertificateResponse", type = "structure")
    return(populate(args, shape))
}

list_certificate_authorities_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 500L, min = 1L), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 1000L, min = 1L)), shape = "ListCertificateAuthoritiesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_certificate_authorities_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorities = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "Arn", type = "string", max = 200L, min = 5L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"), 
        CreatedAt = structure(logical(0), shape = "TStamp", type = "timestamp"), 
        LastStateChangeAt = structure(logical(0), shape = "TStamp", 
            type = "timestamp"), Type = structure(logical(0), 
            shape = "CertificateAuthorityType", type = "string"), 
        Serial = structure(logical(0), shape = "String", type = "string"), 
        Status = structure(logical(0), shape = "CertificateAuthorityStatus", 
            type = "string"), NotBefore = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), NotAfter = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), FailureReason = structure(logical(0), 
            shape = "FailureReason", type = "string"), CertificateAuthorityConfiguration = structure(list(KeyAlgorithm = structure(logical(0), 
            shape = "KeyAlgorithm", type = "string"), SigningAlgorithm = structure(logical(0), 
            shape = "SigningAlgorithm", type = "string"), Subject = structure(list(Country = structure(logical(0), 
            shape = "CountryCodeString", type = "string", pattern = "[A-Za-z]{2}"), 
            Organization = structure(logical(0), shape = "String64", 
                type = "string", max = 64L, min = 0L), OrganizationalUnit = structure(logical(0), 
                shape = "String64", type = "string", max = 64L, 
                min = 0L), DistinguishedNameQualifier = structure(logical(0), 
                shape = "DistinguishedNameQualifierString", type = "string", 
                max = 64L, min = 0L, pattern = "[a-zA-Z0-9'()+-.?:/= ]*"), 
            State = structure(logical(0), shape = "String128", 
                type = "string", max = 128L, min = 0L), CommonName = structure(logical(0), 
                shape = "String64", type = "string", max = 64L, 
                min = 0L), SerialNumber = structure(logical(0), 
                shape = "String64", type = "string", max = 64L, 
                min = 0L), Locality = structure(logical(0), shape = "String128", 
                type = "string", max = 128L, min = 0L), Title = structure(logical(0), 
                shape = "String64", type = "string", max = 64L, 
                min = 0L), Surname = structure(logical(0), shape = "String40", 
                type = "string", max = 40L, min = 0L), GivenName = structure(logical(0), 
                shape = "String16", type = "string", max = 16L, 
                min = 0L), Initials = structure(logical(0), shape = "String5", 
                type = "string", max = 5L, min = 0L), Pseudonym = structure(logical(0), 
                shape = "String128", type = "string", max = 128L, 
                min = 0L), GenerationQualifier = structure(logical(0), 
                shape = "String3", type = "string", max = 3L, 
                min = 0L)), shape = "ASN1Subject", type = "structure")), 
            shape = "CertificateAuthorityConfiguration", type = "structure"), 
        RevocationConfiguration = structure(list(CrlConfiguration = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", box = TRUE, type = "boolean"), 
            ExpirationInDays = structure(logical(0), shape = "Integer1To5000", 
                box = TRUE, type = "integer", max = 5000L, min = 1L), 
            CustomCname = structure(logical(0), shape = "String253", 
                type = "string", max = 253L, min = 0L), S3BucketName = structure(logical(0), 
                shape = "String3To255", type = "string", max = 255L, 
                min = 3L)), shape = "CrlConfiguration", type = "structure")), 
            shape = "RevocationConfiguration", type = "structure"), 
        RestorableUntil = structure(logical(0), shape = "TStamp", 
            type = "timestamp")), shape = "CertificateAuthority", 
        type = "structure")), shape = "CertificateAuthorities", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string", max = 500L, min = 1L)), shape = "ListCertificateAuthoritiesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 200L, min = 5L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 500L, min = 1L), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", max = 1000L, 
            min = 1L)), shape = "ListTagsRequest", type = "structure")
    return(populate(args, shape))
}

list_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*"), Value = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 0L, 
        pattern = "[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*")), shape = "Tag", 
        type = "structure")), shape = "TagList", type = "list", 
        max = 50L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 500L, min = 1L)), 
        shape = "ListTagsResponse", type = "structure")
    return(populate(args, shape))
}

restore_certificate_authority_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 200L, min = 5L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        shape = "RestoreCertificateAuthorityRequest", type = "structure")
    return(populate(args, shape))
}

restore_certificate_authority_output <- function () 
{
    return(list())
}

revoke_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 200L, min = 5L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"), 
        CertificateSerial = structure(logical(0), shape = "String128", 
            type = "string", max = 128L, min = 0L), RevocationReason = structure(logical(0), 
            shape = "RevocationReason", type = "string")), shape = "RevokeCertificateRequest", 
        type = "structure")
    return(populate(args, shape))
}

revoke_certificate_output <- function () 
{
    return(list())
}

tag_certificate_authority_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 200L, min = 5L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*"), Value = structure(logical(0), 
            shape = "TagValue", type = "string", max = 256L, 
            min = 0L, pattern = "[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list", max = 50L, min = 1L)), shape = "TagCertificateAuthorityRequest", 
        type = "structure")
    return(populate(args, shape))
}

tag_certificate_authority_output <- function () 
{
    return(list())
}

untag_certificate_authority_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 200L, min = 5L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*"), Value = structure(logical(0), 
            shape = "TagValue", type = "string", max = 256L, 
            min = 0L, pattern = "[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list", max = 50L, min = 1L)), shape = "UntagCertificateAuthorityRequest", 
        type = "structure")
    return(populate(args, shape))
}

untag_certificate_authority_output <- function () 
{
    return(list())
}

update_certificate_authority_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 200L, min = 5L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"), 
        RevocationConfiguration = structure(list(CrlConfiguration = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", box = TRUE, type = "boolean"), 
            ExpirationInDays = structure(logical(0), shape = "Integer1To5000", 
                box = TRUE, type = "integer", max = 5000L, min = 1L), 
            CustomCname = structure(logical(0), shape = "String253", 
                type = "string", max = 253L, min = 0L), S3BucketName = structure(logical(0), 
                shape = "String3To255", type = "string", max = 255L, 
                min = 3L)), shape = "CrlConfiguration", type = "structure")), 
            shape = "RevocationConfiguration", type = "structure"), 
        Status = structure(logical(0), shape = "CertificateAuthorityStatus", 
            type = "string")), shape = "UpdateCertificateAuthorityRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_certificate_authority_output <- function () 
{
    return(list())
}
