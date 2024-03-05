#include <Rcpp.h>
#include <regex>
using namespace Rcpp;

// Return logical vector for global region pattern
// param endpoint list containing region pattern, endpoint url and global status
//' @useDynLib paws.common _paws_common_check_global
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
LogicalVector check_global(List endpoint) {
  int n = endpoint.size();
  CharacterVector names = endpoint.names();
  LogicalVector output(n);

  for(int i=0; i<n; ++i){
    if (is<List>(endpoint[i])) {
      List ll = endpoint[i];
      output[i] = ll["global"];
    } else {
      output[i] = false;
    }
  }
  output.attr("names") = names;
  return output;
}

// Unescape endpoint
// param endpoint AWS escaped endpoint
// param service AWS service
// param region AWS region
//' @useDynLib paws.common _paws_common_endpoint_unescape
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
std::string endpoint_unescape(std::string endpoint, const std::string& service, const std::string& region) {
  size_t pos = 0;
  if ((pos = endpoint.find("{service}", pos)) != std::string::npos) {
    endpoint.replace(pos, 9, service);
  };

  if ((pos = endpoint.find("{region}", 0)) != std::string::npos) {
    endpoint.replace(pos, 8, region);
  };
 return endpoint;
}

// Get region pattern based on region
// param region_pattern AWS escaped endpoint
// param region AWS region
//' @useDynLib paws.common _paws_common_get_region_pattern
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
CharacterVector get_region_pattern(CharacterVector region_pattern, const std::string& region) {
  int n = region_pattern.size();
  CharacterVector region_match;
  NumericVector pattern_lens;

  size_t pos = 0;
  for(int i=0; i<n; ++i){
    String cur = region_pattern[i];
    std::string safe_pattern = cur;
    // convert region pattern to regex pattern i.e.
    // "*" -> ".*",  "cn-*" -> "cn-.*"
    if ((pos = safe_pattern.find("*", 0)) != std::string::npos) {
      safe_pattern.replace(pos, 1, ".*");
    };
    const std::regex re(safe_pattern);
    if (std::regex_search(region, re)) {
      region_match.push_back(region_pattern[i]);
      pattern_lens.push_back(region_pattern[i].size());
    };
  };
  NumericVector pattern_sort = clone(pattern_lens);
  pattern_lens.sort(true);
  CharacterVector output;

  // return longest region pattern
  for (int i=0; i<region_match.length(); ++i){
    if (pattern_sort[0] == pattern_lens[i]) {
      output.push_back(region_match[i]);
      break;
    };
  };
  return output;
}
