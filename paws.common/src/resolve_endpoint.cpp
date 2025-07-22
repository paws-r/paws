#include <Rcpp.h>
#include <regex>
#include <string>
#include <vector>
using namespace Rcpp;

/**
 * @brief Return logical vector for global region pattern
 *
 * @param endpoint list containing region pattern, endpoint url and global status
 */
//' @useDynLib paws.common _paws_common_check_global
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
LogicalVector check_global(List endpoint)
{
  int n = endpoint.size();
  CharacterVector names = endpoint.names();
  LogicalVector output(n);

  for (int i = 0; i < n; ++i)
  {
    if (is<List>(endpoint[i]))
    {
      List ll = endpoint[i];
      output[i] = ll["global"];
    }
    else
    {
      output[i] = false;
    }
  }
  output.attr("names") = names;
  return output;
}

/**
 * @brief Get region pattern based on region using aws js sdk vendor
 *
 * @param region_pattern AWS escaped endpoint
 * @param region AWS region
 */
//' @useDynLib paws.common _paws_common_get_region_pattern_js
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
CharacterVector get_region_pattern_js(CharacterVector region_pattern, const std::string& region) {
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
