# make.paws

## Pandoc

You must install Pandoc for `make.paws` to work. On Windows, download it from
pandoc.org.

## Roxygen

Roxygen documentation is turned off for the `make.paws` package. `make.paws`
makes code files for Paws using templated strings containing Roxygen directives,
which Roxygen tries to interpret. This will fail or cause unintended side
effects in `make.paws`.

Because Roxygen is turned off, this means that you must manually update the
NAMESPACE file if you change any `@import`s or `@export`s, and the Collate field
in the DESCRIPTION file if you change any `@include`s within the package.