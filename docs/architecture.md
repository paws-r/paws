# Paws Architecture

- [Overview](#overview)
- [The packages](#the-packages)
  - [`paws`](#paws)
  - [`paws.<category>`](#pawscategory)
  - [`paws.common`](#pawscommon)
- [How a request is handled](#how-a-request-is-handled)
- [Why it's split up this way](#why-its-split-up-this-way)

---

## Overview

Paws is not one package but a family of packages that build on top of each
other. At the top, you install `paws` (or just the one `paws.<category>`
package you need) and create a service client, e.g. `paws::s3()`. Everything
below that — turning your R function call into a signed HTTP request and
turning the response back into an R list — is shared runtime code:

```
┌─────────────────────────────────────────────────────────┐
│ paws                                                     │
│   loads every paws.<category> package and re-exports     │
│   their service constructors (s3(), ec2(), dynamodb()…)  │
└───────────────────────────┬───────────────────────────────┘
                            │ Imports
        ┌───────────────────┼───────────────────┐
        ▼                   ▼                   ▼
┌───────────────┐   ┌────────────────┐   ┌──────────────────┐
│ paws.storage   │   │ paws.compute   │   │ paws.<category>…  │
│ (S3, Glacier…) │   │ (EC2, Lambda…) │   │ (12 more)          │
└───────┬────────┘   └───────┬────────┘   └─────────┬──────────┘
        │                   │                       │
        └───────────────────┴───────────┬───────────┘
                                        │ Imports
                                        ▼
                        ┌───────────────────────────────┐
                        │ paws.common                   │
                        │ credentials · config · HTTP   │
                        │ client · SigV4/bearer signing │
                        │ · (de)serialization · retries │
                        └───────────────────────────────┘
```

---

## The packages

### `paws`

The package most users install from CRAN. It has almost no code of its own —
its job is to depend on every `paws.<category>` package and re-export their
service constructors, so that `library(paws)` gives you `s3()`, `ec2()`,
`dynamodb()`, and every other AWS service in one place.

If you only use one or two services, you can install just the relevant
`paws.<category>` package instead of all of `paws`; see
[Installation](installation.md).

`paws` also directly re-exports a handful of helpers from `paws.common` for
convenience, e.g. `paginate()` and the `config()`/`credentials()`/`creds()`
config-builder functions, so you don't need to `library(paws.common)`
separately to use them.

### `paws.<category>`

The code for each AWS service lives in one of fourteen category packages
(`paws.storage`, `paws.compute`, `paws.database`, `paws.networking`,
`paws.security.identity`, `paws.machine.learning`, `paws.management`,
`paws.analytics`, `paws.application.integration`, `paws.cost.management`,
`paws.customer.engagement`, `paws.developer.tools`,
`paws.end.user.computing`). Services are grouped this way, rather than one
package per service or one package for everything, because a single package
containing every AWS service would be far over CRAN's package size limit.

Each category package provides a constructor per service (e.g. `s3()`) and
one function per operation on the returned client (e.g. `svc$get_object()`).
A small amount of service-specific behavior that doesn't fit the generic
request pipeline — e.g. S3's ARN-based access points, flexible checksums,
path- vs. virtual-host-style addressing — lives in `paws.common` instead, so
it applies uniformly rather than being special-cased per service.

### `paws.common`

The runtime that every `paws.<category>` package depends on. It has no
knowledge of individual AWS services — it just knows how to turn a populated
request object into a signed HTTP call and turn the HTTP response back into an
R list. This is where credential resolution ([credentials.md](credentials.md)),
region/endpoint resolution (including [dualstack endpoints](credentials.md#service-settings)),
SigV4 and [bearer token](bearer_tokens.md) signing, [checksums](checksums.md),
[streaming](streaming.md), [pagination](paginators.md), and [retries](retries.md) all live.

Because it's the single shared dependency, a fix or feature added to
`paws.common` (e.g. IPv6 IMDS support, dualstack endpoints) is immediately
available to every AWS service across every category package.

---

## How a request is handled

Every call like `svc$put_object(...)` is built from a shared request pipeline
in `paws.common`, split into named stages (`validate`, `build`, `sign`,
`send`, `validate_response`, `unmarshal`, `unmarshal_error`, `retry`,
`complete`). Each AWS service only customizes which handlers are attached to
each stage (e.g. "serialize this as JSON", "sign with SigV4", "parse this as
XML") — the pipeline itself, the HTTP client, and the retry logic are the same
for every service, because they all come from `paws.common`.

```
your R call
    │
    ▼
validate ─▶ build ─▶ sign ─▶ send (HTTP) ─▶ unmarshal ─▶ complete
    │          │        │                      │
  check      serialize  SigV4 /            parse response
  params     body/URL   bearer token       into an R list
```

---

## Why it's split up this way

* **`paws` vs. `paws.<category>`** — lets you install only the AWS services
  you actually use, instead of every service's code.
* **`paws.<category>` vs. `paws.common`** — keeps request handling, signing,
  and credential logic in one place, so it's fixed once and every service
  benefits, instead of being duplicated per service or per category package.
