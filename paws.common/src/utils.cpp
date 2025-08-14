#include <Rcpp.h>
#include <random>
#include <array>
#include <cstdio>

#include "utils.h"

using namespace Rcpp;

/**
 * @brief Sort character vector
 *
 * @param str A character vector to be sorted
 */
//' @useDynLib paws.common _paws_common_char_sort
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
CharacterVector char_sort(CharacterVector str)
{
  IntegerVector idx = seq_along(str) - 1;
  std::sort(idx.begin(), idx.end(), [&](int i, int j)
            { return str[i] < str[j]; });
  return str[idx];
}

// Optimized UUID v4 generator function
std::string generate_uuid_v4()
{
  // Singleton random engine and distribution to avoid reinitialization overhead
  static thread_local std::random_device rd;  // Seed for random number generator
  static thread_local std::mt19937 gen(rd()); // Mersenne twister engine
  static thread_local std::uniform_int_distribution<uint32_t> dis(0, 0xFFFFFFFF);

  // Generate the random numbers
  uint32_t a = dis(gen);
  uint16_t b = dis(gen) & 0xFFFF;
  uint16_t c = (dis(gen) & 0x0FFF) | 0x4000; // Set version to 4
  uint16_t d = (dis(gen) & 0x3FFF) | 0x8000; // Set variant to 10
  uint32_t e = dis(gen);
  uint32_t f = dis(gen);

  // Use a fixed-size character array for the UUID string
  std::array<char, 42> uuid;

  // Format the UUID components into the character array
  std::snprintf(uuid.data(), uuid.size(),
                "%08x-%04x-%04x-%04x-%04x%04x%08x",
                a, b, c, d, (e >> 16), (e & 0xFFFF), f);
  // Correctly create the string with 36 characters
  return std::string(uuid.data(), 36);
}

/**
 * @brief Generate UUID v4
 *
 * This function generates one or more UUID v4 strings.
 *
 * @param n An integer specifying the number of UUID v4 strings to generate. Default is 1.
 *
 * @return
 * A character vector containing the generated UUID v4 strings.
 *
 * @example
 * uuid_v4() # Generate a single UUID v4
 * uuid_v4(5) # Generate five UUID v4 strings
 */
//' @useDynLib paws.common _paws_common_uuid_v4
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
CharacterVector uuid_v4(size_t n = 1)
{
  CharacterVector uuids(n);

  for (size_t i = 0; i < n; ++i)
  {
    uuids[i] = generate_uuid_v4();
  }

  return uuids;
}

// -------------------- Base64 --------------------
static const std::string base64_chars =
  "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  "abcdefghijklmnopqrstuvwxyz"
  "0123456789+/";

std::string base64_encode(const Rcpp::RawVector& bytes) {
  const size_t len = bytes.size();
  if (len == 0) return "";
  
  const size_t output_len = ((len + 2) / 3) * 4;
  std::string ret(output_len, '\0');
  char* out = &ret[0];
  
  const unsigned char* in = bytes.begin();
  const unsigned char* end = in + len;
  
  // Process groups of 3 bytes at a time
  while (in + 2 < end) {
    const uint32_t val = (static_cast<uint32_t>(in[0]) << 16) |
                        (static_cast<uint32_t>(in[1]) << 8) |
                         static_cast<uint32_t>(in[2]);
    
    out[0] = base64_chars[val >> 18];
    out[1] = base64_chars[(val >> 12) & 0x3F];
    out[2] = base64_chars[(val >> 6) & 0x3F];
    out[3] = base64_chars[val & 0x3F];
    
    in += 3;
    out += 4;
  }
  
  // Handle remaining 1 or 2 bytes
  if (in < end) {
    uint32_t val = static_cast<uint32_t>(in[0]) << 16;
    if (in + 1 < end) {
      val |= static_cast<uint32_t>(in[1]) << 8;
    }
    
    out[0] = base64_chars[val >> 18];
    out[1] = base64_chars[(val >> 12) & 0x3F];
    out[2] = (in + 1 < end) ? base64_chars[(val >> 6) & 0x3F] : '=';
    out[3] = '=';
  }
  
  return ret;
}
