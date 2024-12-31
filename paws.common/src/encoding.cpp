// This encoder has been modified from the excellent urltools R package
// https://github.com/Ironholds/urltools/blob/master/src/encoding.cpp

#include <Rcpp.h>
#include <unordered_set>
#include <string_view>
#include <vector>
#include <bitset>

using namespace Rcpp;

// Precomputed hex conversion lookup table
const char hex_chars[] = "0123456789ABCDEF";

// Precomputed unreserved characters lookup table
const std::bitset<256> unreserved_chars_map = [] {
  std::bitset<256> bitset;
  std::string unreserved_chars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ._~-";
  for (char ch : unreserved_chars) {
    bitset.set(static_cast<unsigned char>(ch));
  }
  return bitset;
}();

inline std::string to_hex(char x) {
  std::string output;
  output.push_back(hex_chars[(x & 0xF0) >> 4]);
  output.push_back(hex_chars[x & 0x0F]);
  return output;
}

std::string internal_url_encode(std::string_view url, std::string_view safe) {
  // Create a bitset for additional safe characters
  std::bitset<256> safe_chars_map = unreserved_chars_map;
  for (char ch : safe) {
    safe_chars_map.set(static_cast<unsigned char>(ch));
  }

  // Create an output string with preallocated memory
  std::string output;
  output.reserve(url.size() * 3); // Assume worst case where all characters are encoded

  // For each character
  for (char ch : url) {
    // If it's in the list of unreserved ones, just pass it through
    if (safe_chars_map.test(static_cast<unsigned char>(ch))) {
      output.push_back(ch);
    } else {
      // Otherwise, append in an encoded form
      output.push_back('%');
      output.append(to_hex(ch));
    }
  }

  // Return
  return output;
}

// Escape characters for use in URLs.
// param urls A character vector to be encoded
// param safe A characters of extra that should not be encoded
//' @useDynLib paws.common _paws_common_paws_url_encoder
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
CharacterVector paws_url_encoder(CharacterVector urls, CharacterVector safe = "") {
 // Measure size, create output object and holding objects
 int input_size = urls.size();
 CharacterVector output(input_size);
 std::string safe_pattern = Rcpp::as<std::string>(safe);

 // For each string
 for (int i = 0; i < input_size; ++i) {
   // Check for user interrupts
   if ((i % 10000) == 0) {
     Rcpp::checkUserInterrupt();
   }

   if (urls[i] == NA_STRING) {
     output[i] = NA_STRING;
   } else {
     std::string holding = Rcpp::as<std::string>(urls[i]);
     output[i] = internal_url_encode(holding, safe_pattern);
   }
 }

 // Return
 return output;
}
