#include <Rcpp.h>
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
