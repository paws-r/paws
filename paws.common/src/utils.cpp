#include <Rcpp.h>
#include <random>
#include <array>
#include <cstdio>

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
