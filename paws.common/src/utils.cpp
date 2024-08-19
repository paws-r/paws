#include <Rcpp.h>
#include "uuid.h"
using namespace Rcpp;

// Sort character vector
// param str A character vector to be sorted
//' @useDynLib paws.common _paws_common_char_sort
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
CharacterVector char_sort(CharacterVector str) {
 IntegerVector idx = seq_along(str) - 1;
 std::sort(idx.begin(), idx.end(), [&](int i, int j){return str[i] < str[j];});
 return str[idx];
}


// Creates uuid v4
// Developed from: https://github.com/rkg82/uuid-v4
// param n A integer, number of uuid v4 to generate.
//' @useDynLib paws.common _paws_common_uuid_v4
//' @importFrom Rcpp evalCpp
//  [[Rcpp::export]]
CharacterVector uuid_v4(size_t n = 1) {
  CharacterVector uuids(n);

  for (size_t i = 0; i < n; ++i) {
    std::string s = uuid::v4::UUID::New().String();
    uuids[i] = s;
  }

  return uuids;
}

