big_endian <- function(vec, dtype) {
  switch(
    dtype,
    "int64" = c(
      vec[8:1], vec[16:9], vec[24:17], vec[32:25], vec[40:33], vec[48:41], vec[56:49], vec[64:57]
    ),
    "int32" = c(vec[8:1], vec[16:9], vec[24:17], vec[32:25]),
    "int16" = c(vec[8:1], vec[16:9]),
    "int8" = vec[8:1]
  )
}

int_to_uint <- function (x, adjustment=2^32) {
  if (sign(x) < 0) {
    return(x + adjustment)
  }
  return(x)
}

# Convert raw vector into integers with big-endian
int64 <- function(x) {
  bits <- as.integer(big_endian(rawToBits(x), "int64"))
  sum(bits[-1] * 2^(62:0)) - bits[[1]] * 2^63
}

int32 <- function(x) {
  bits <- as.integer(big_endian(rawToBits(x), "int32"))
  sum(bits[-1] * 2^(30:0)) - bits[[1]] * 2^31
}

int16 <- function(x) {
  bits <- as.integer(big_endian(rawToBits(x), "int16"))
  sum(bits[-1] * 2^(14:0)) - bits[[1]] * 2^15
}

int8 <- function(x) {
  bits <- as.integer(big_endian(rawToBits(x), "int8"))
  sum(bits[-1] * 2^(6:0)) - bits[[1]] * 2^7
}

# Converts raw vector into unsigned integers with big-endian
uint64 <- function(x) {
  int_to_uint(int64(x), 2^64)
}

uint32 <- function(x) {
  int_to_uint(readBin(x, "integer", n=length(x), size = 4, endian = "big"))
}

uint16 <- function(x) {
  readBin(x, "integer", n=length(x), size=2, signed = F, endian = "big")
}

uint8 <- function(x) {
  readBin(x, "integer", n=length(x), size=1, signed = F, endian = "big")
}



###############

unpack <- function(data, length_byte_size){
  uint <- switch(as.character(length_byte_size),
                 "1" = uint8,
                 "2" = uint16,
                 "4" = uint32
  )
  uint(data)
}

unpack_byte_array <- function(data, length_byte_size=2){
  length <- unpack(data[1:length_byte_size], length_byte_size)
  bytes_end <- length + length_byte_size
  array_bytes <- data[length_byte_size:bytes_end]
  return(list(array_bytes, bytes_end))
}

unpack_utf8_string <- function(data, length_byte_size = 2) {
  info <- unpack_byte_array(data, length_byte_size)
  return(list(paws.common:::raw_to_utf8(info[[1]]), info[[2]]))
}

parse_header <- function(data) {
  info <- parse_name(data)
  return(parse_value(info[[1]]))
}

parse_name <- function(data) {
  info <- unpack_utf8_string(data, 1)
  data <- advance_data(data, info[[2]])
  return(list(data, info[[1]]))
}

parse_type <- function(data) {
  type <- uint8(data[1])
  data <- advance_data(data, 1)
  return(list(data, type))
}

parse_value <- function(data) {
  info <- parse_type(data)
  value_unpacker <- HEADER_TYPE_MAP[[as.character(info[[2]])]]
  info <- value_unpacker(data)
  data <- advance_data(info[[1]], info[[2]])
  return(list(data, info[[2]]))
}

unpack_uuid <- function(data) {
  return(list(data[1:16], 16))
}

unpack_prelude <- function(data) {
  return(c(uint32(data[1:4]), uint32(data[5:8]), uint32(data[9:12])))
}

advance_data <- function(data, consumed) {
  return(data[(consumed + 1): length(data)])
}

HEADER_TYPE_MAP = list(
  # boolean_true
  "0"= function(data) list(T, 0),
  # boolean_false
  "1"= function(data) list(F, 0),
  # byte
  "2"= function(data) list(int8(data[1]), 1),
  # short
  "3"= function(data) list(int16(data[1:2]), 2),
  # integer
  "4"= function(data) list(int32(data[1:4]), 4),
  # long
  "5"= function(data) list(int64(data[1:8]), 8),
  # byte_array
  "6"= unpack_byte_array,
  # string
  "7"= unpack_utf8_string,
  # timestamp
  "8"= function(data) list(int64(data[1:8]), 8),
  # uuid
  "9"= unpack_uuid
)





