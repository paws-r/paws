#' @include RcppExports.R

IDEMPOTENCY_TOKEN_FILL_TAG <- "idempotencyToken"

# Return whether the idempotency token can be automatically set.
can_set_idempotency_token <- function(value) {
  return(length(value) == 0 && tag_get(value, IDEMPOTENCY_TOKEN_FILL_TAG) != "")
}

# Return a randomly-generated idempotency token.
get_idempotency_token <- function() {
  return(uuid_v4(1))
}
