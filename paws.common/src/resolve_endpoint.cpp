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

  for(int i=0; i< endpoint.length(); ++i){
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
std::string endpoint_unescape(String endpoint, std::string service, std::string region) {
  endpoint.replace_all("{service}", service);
  endpoint.replace_all("{region}", region);
  return endpoint;
}

// Get region pattern based on region
// param region_pattern AWS escaped endpoint
// param region AWS region
//' @useDynLib paws.common _paws_common_get_region_pattern
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
CharacterVector get_region_pattern(StringVector region_pattern, std::string region) {
 int n = region_pattern.size();
 CharacterVector region_match;
 NumericVector pattern_lens;

 for(int i=0; i<n; ++i){
   String cur = region_pattern[i];
   // convert region pattern to regex pattern i.e.
   // "*" -> ".*",  "cn-*" -> "cn-.*"
   cur.replace_first("*", ".*");
   std::string safe_pattern = cur;
   const std::regex re(safe_pattern);
   if (std::regex_search(region, re)) {
     region_match.push_back(region_pattern[i]);
     pattern_lens.push_back(region_pattern[i].size());
   }
 }
 NumericVector pattern_sort = clone(pattern_lens);
 pattern_lens.sort(true);
 CharacterVector output;

 // return longest region pattern
 for (int i=0; i<region_match.length(); ++i){
   if (pattern_sort[0] == pattern_lens[i]) {
     output.push_back(region_match[i]);
     break;
   }
 }

 return output;
}
