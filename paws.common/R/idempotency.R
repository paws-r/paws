IDEMPOTENCY_TOKEN_FILL_TAG <- "idempotencyToken"
IDEMPOTENCY_RAND_FN <- function(len) sample(0:(2^8 - 1), len, replace = TRUE)

# Return whether the idempotency token can be automatically set.
can_set_idempotency_token <- function(value) {
  return(length(value) == 0 && tag_get(value, IDEMPOTENCY_TOKEN_FILL_TAG) != "")
}

# Return a randomly-generated idempotency token.
get_idempotency_token <- function() {
  rand <- getOption("idempotency_rand_fn", default = IDEMPOTENCY_RAND_FN)
  return(uuid(rand(16)))
}

# Return a UUID version 4 based on the given `bytes`.
uuid <- function(bytes) {
  bytes[7] <- bitwAnd(bitwOr(bytes[7], 0x40), 0x4F)
  bytes[9] <- bitwAnd(bitwOr(bytes[9], 0x80), 0xBF)
  h <- sprintf("%02X", bytes)
  p <- function(x) paste(x, collapse = "")
  u <- sprintf(
    "%s-%s-%s-%s-%s",
    p(h[1:4]), p(h[5:6]), p(h[7:8]), p(h[9:10]), p(h[11:16])
  )
  return(u)
}
