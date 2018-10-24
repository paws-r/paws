add_tags_to_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*"), Value = structure(logical(0), 
            shape = "TagValue", type = "string", max = 256L, 
            min = 0L, pattern = "[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list", max = 50L, min = 1L)), shape = "AddTagsToCertificateRequest", 
        type = "structure")
    return(populate(args, shape))
}

add_tags_to_certificate_output <- function () 
{
    return(list())
}

delete_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*")), 
        shape = "DeleteCertificateRequest", type = "structure")
    return(populate(args, shape))
}

delete_certificate_output <- function () 
{
    return(list())
}

describe_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*")), 
        shape = "DescribeCertificateRequest", type = "structure")
    return(populate(args, shape))
}

describe_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Certificate = structure(list(CertificateArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*"), 
        DomainName = structure(logical(0), shape = "DomainNameString", 
            type = "string", max = 253L, min = 1L, pattern = "^(\\*\\.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"), 
        SubjectAlternativeNames = structure(list(structure(logical(0), 
            shape = "DomainNameString", type = "string", max = 253L, 
            min = 1L, pattern = "^(\\*\\.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$")), 
            shape = "DomainList", type = "list", max = 100L, 
            min = 1L), DomainValidationOptions = structure(list(structure(list(DomainName = structure(logical(0), 
            shape = "DomainNameString", type = "string", max = 253L, 
            min = 1L, pattern = "^(\\*\\.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"), 
            ValidationEmails = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "ValidationEmailList", 
                type = "list"), ValidationDomain = structure(logical(0), 
                shape = "DomainNameString", type = "string", 
                max = 253L, min = 1L, pattern = "^(\\*\\.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"), 
            ValidationStatus = structure(logical(0), shape = "DomainStatus", 
                type = "string"), ResourceRecord = structure(list(Name = structure(logical(0), 
                shape = "String", type = "string"), Type = structure(logical(0), 
                shape = "RecordType", type = "string"), Value = structure(logical(0), 
                shape = "String", type = "string")), shape = "ResourceRecord", 
                type = "structure"), ValidationMethod = structure(logical(0), 
                shape = "ValidationMethod", type = "string")), 
            shape = "DomainValidation", type = "structure")), 
            shape = "DomainValidationList", type = "list", max = 1000L, 
            min = 1L), Serial = structure(logical(0), shape = "String", 
            type = "string"), Subject = structure(logical(0), 
            shape = "String", type = "string"), Issuer = structure(logical(0), 
            shape = "String", type = "string"), CreatedAt = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), IssuedAt = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), ImportedAt = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Status = structure(logical(0), 
            shape = "CertificateStatus", type = "string"), RevokedAt = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), RevocationReason = structure(logical(0), 
            shape = "RevocationReason", type = "string"), NotBefore = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), NotAfter = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), KeyAlgorithm = structure(logical(0), 
            shape = "KeyAlgorithm", type = "string"), SignatureAlgorithm = structure(logical(0), 
            shape = "String", type = "string"), InUseBy = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "InUseList", 
            type = "list"), FailureReason = structure(logical(0), 
            shape = "FailureReason", type = "string"), Type = structure(logical(0), 
            shape = "CertificateType", type = "string"), RenewalSummary = structure(list(RenewalStatus = structure(logical(0), 
            shape = "RenewalStatus", type = "string"), DomainValidationOptions = structure(list(structure(list(DomainName = structure(logical(0), 
            shape = "DomainNameString", type = "string", max = 253L, 
            min = 1L, pattern = "^(\\*\\.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"), 
            ValidationEmails = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "ValidationEmailList", 
                type = "list"), ValidationDomain = structure(logical(0), 
                shape = "DomainNameString", type = "string", 
                max = 253L, min = 1L, pattern = "^(\\*\\.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"), 
            ValidationStatus = structure(logical(0), shape = "DomainStatus", 
                type = "string"), ResourceRecord = structure(list(Name = structure(logical(0), 
                shape = "String", type = "string"), Type = structure(logical(0), 
                shape = "RecordType", type = "string"), Value = structure(logical(0), 
                shape = "String", type = "string")), shape = "ResourceRecord", 
                type = "structure"), ValidationMethod = structure(logical(0), 
                shape = "ValidationMethod", type = "string")), 
            shape = "DomainValidation", type = "structure")), 
            shape = "DomainValidationList", type = "list", max = 1000L, 
            min = 1L)), shape = "RenewalSummary", type = "structure"), 
        KeyUsages = structure(list(structure(list(Name = structure(logical(0), 
            shape = "KeyUsageName", type = "string")), shape = "KeyUsage", 
            type = "structure")), shape = "KeyUsageList", type = "list"), 
        ExtendedKeyUsages = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ExtendedKeyUsageName", type = "string"), 
            OID = structure(logical(0), shape = "String", type = "string")), 
            shape = "ExtendedKeyUsage", type = "structure")), 
            shape = "ExtendedKeyUsageList", type = "list"), CertificateAuthorityArn = structure(logical(0), 
            shape = "Arn", type = "string", max = 2048L, min = 20L, 
            pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*"), 
        RenewalEligibility = structure(logical(0), shape = "RenewalEligibility", 
            type = "string"), Options = structure(list(CertificateTransparencyLoggingPreference = structure(logical(0), 
            shape = "CertificateTransparencyLoggingPreference", 
            type = "string")), shape = "CertificateOptions", 
            type = "structure")), shape = "CertificateDetail", 
        type = "structure")), shape = "DescribeCertificateResponse", 
        type = "structure")
    return(populate(args, shape))
}

export_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*"), 
        Passphrase = structure(logical(0), shape = "PassphraseBlob", 
            type = "blob", max = 128L, min = 4L, sensitive = TRUE)), 
        shape = "ExportCertificateRequest", type = "structure")
    return(populate(args, shape))
}

export_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Certificate = structure(logical(0), 
        shape = "CertificateBody", type = "string", max = 32768L, 
        min = 1L, pattern = "-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}(\\u000D?\\u000A)?"), 
        CertificateChain = structure(logical(0), shape = "CertificateChain", 
            type = "string", max = 2097152L, min = 1L, pattern = "(-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}\\u000D?\\u000A)*-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}(\\u000D?\\u000A)?"), 
        PrivateKey = structure(logical(0), shape = "PrivateKey", 
            type = "string", max = 524288L, min = 1L, pattern = "-{5}BEGIN PRIVATE KEY-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END PRIVATE KEY-{5}(\\u000D?\\u000A)?", 
            sensitive = TRUE)), shape = "ExportCertificateResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*")), 
        shape = "GetCertificateRequest", type = "structure")
    return(populate(args, shape))
}

get_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Certificate = structure(logical(0), 
        shape = "CertificateBody", type = "string", max = 32768L, 
        min = 1L, pattern = "-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}(\\u000D?\\u000A)?"), 
        CertificateChain = structure(logical(0), shape = "CertificateChain", 
            type = "string", max = 2097152L, min = 1L, pattern = "(-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}\\u000D?\\u000A)*-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}(\\u000D?\\u000A)?")), 
        shape = "GetCertificateResponse", type = "structure")
    return(populate(args, shape))
}

import_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*"), 
        Certificate = structure(logical(0), shape = "CertificateBodyBlob", 
            type = "blob", max = 32768L, min = 1L), PrivateKey = structure(logical(0), 
            shape = "PrivateKeyBlob", type = "blob", max = 524288L, 
            min = 1L, sensitive = TRUE), CertificateChain = structure(logical(0), 
            shape = "CertificateChainBlob", type = "blob", max = 2097152L, 
            min = 1L)), shape = "ImportCertificateRequest", type = "structure")
    return(populate(args, shape))
}

import_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*")), 
        shape = "ImportCertificateResponse", type = "structure")
    return(populate(args, shape))
}

list_certificates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateStatuses = structure(list(structure(logical(0), 
        shape = "CertificateStatus", type = "string")), shape = "CertificateStatuses", 
        type = "list"), Includes = structure(list(ExtendedKeyUsage = structure(list(structure(logical(0), 
        shape = "ExtendedKeyUsageName", type = "string")), shape = "ExtendedKeyUsageFilterList", 
        type = "list", locationName = "extendedKeyUsage"), KeyUsage = structure(list(structure(logical(0), 
        shape = "KeyUsageName", type = "string")), shape = "KeyUsageFilterList", 
        type = "list", locationName = "keyUsage"), KeyTypes = structure(list(structure(logical(0), 
        shape = "KeyAlgorithm", type = "string")), shape = "KeyAlgorithmList", 
        type = "list", locationName = "keyTypes")), shape = "Filters", 
        type = "structure"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]*"), 
        MaxItems = structure(logical(0), shape = "MaxItems", 
            type = "integer", max = 1000L, min = 1L)), shape = "ListCertificatesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_certificates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 320L, min = 1L, 
        pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]*"), 
        CertificateSummaryList = structure(list(structure(list(CertificateArn = structure(logical(0), 
            shape = "Arn", type = "string", max = 2048L, min = 20L, 
            pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*"), 
            DomainName = structure(logical(0), shape = "DomainNameString", 
                type = "string", max = 253L, min = 1L, pattern = "^(\\*\\.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$")), 
            shape = "CertificateSummary", type = "structure")), 
            shape = "CertificateSummaryList", type = "list")), 
        shape = "ListCertificatesResponse", type = "structure")
    return(populate(args, shape))
}

list_tags_for_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*")), 
        shape = "ListTagsForCertificateRequest", type = "structure")
    return(populate(args, shape))
}

list_tags_for_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*"), Value = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 0L, 
        pattern = "[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*")), shape = "Tag", 
        type = "structure")), shape = "TagList", type = "list", 
        max = 50L, min = 1L)), shape = "ListTagsForCertificateResponse", 
        type = "structure")
    return(populate(args, shape))
}

remove_tags_from_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*"), Value = structure(logical(0), 
            shape = "TagValue", type = "string", max = 256L, 
            min = 0L, pattern = "[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list", max = 50L, min = 1L)), shape = "RemoveTagsFromCertificateRequest", 
        type = "structure")
    return(populate(args, shape))
}

remove_tags_from_certificate_output <- function () 
{
    return(list())
}

request_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainNameString", type = "string", max = 253L, 
        min = 1L, pattern = "^(\\*\\.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"), 
        ValidationMethod = structure(logical(0), shape = "ValidationMethod", 
            type = "string"), SubjectAlternativeNames = structure(list(structure(logical(0), 
            shape = "DomainNameString", type = "string", max = 253L, 
            min = 1L, pattern = "^(\\*\\.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$")), 
            shape = "DomainList", type = "list", max = 100L, 
            min = 1L), IdempotencyToken = structure(logical(0), 
            shape = "IdempotencyToken", type = "string", max = 32L, 
            min = 1L, pattern = "\\w+"), DomainValidationOptions = structure(list(structure(list(DomainName = structure(logical(0), 
            shape = "DomainNameString", type = "string", max = 253L, 
            min = 1L, pattern = "^(\\*\\.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"), 
            ValidationDomain = structure(logical(0), shape = "DomainNameString", 
                type = "string", max = 253L, min = 1L, pattern = "^(\\*\\.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$")), 
            shape = "DomainValidationOption", type = "structure")), 
            shape = "DomainValidationOptionList", type = "list", 
            max = 100L, min = 1L), Options = structure(list(CertificateTransparencyLoggingPreference = structure(logical(0), 
            shape = "CertificateTransparencyLoggingPreference", 
            type = "string")), shape = "CertificateOptions", 
            type = "structure"), CertificateAuthorityArn = structure(logical(0), 
            shape = "Arn", type = "string", max = 2048L, min = 20L, 
            pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*")), 
        shape = "RequestCertificateRequest", type = "structure")
    return(populate(args, shape))
}

request_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*")), 
        shape = "RequestCertificateResponse", type = "structure")
    return(populate(args, shape))
}

resend_validation_email_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*"), 
        Domain = structure(logical(0), shape = "DomainNameString", 
            type = "string", max = 253L, min = 1L, pattern = "^(\\*\\.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"), 
        ValidationDomain = structure(logical(0), shape = "DomainNameString", 
            type = "string", max = 253L, min = 1L, pattern = "^(\\*\\.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$")), 
        shape = "ResendValidationEmailRequest", type = "structure")
    return(populate(args, shape))
}

resend_validation_email_output <- function () 
{
    return(list())
}

update_certificate_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 2048L, min = 20L, 
        pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*"), 
        Options = structure(list(CertificateTransparencyLoggingPreference = structure(logical(0), 
            shape = "CertificateTransparencyLoggingPreference", 
            type = "string")), shape = "CertificateOptions", 
            type = "structure")), shape = "UpdateCertificateOptionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_certificate_options_output <- function () 
{
    return(list())
}
