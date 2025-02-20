#include <Rcpp.h>
#include <regex>
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
 * @brief Unescape endpoint
 *
 * @param endpoint AWS escaped endpoint vendor aws botocore
 * @param service AWS service
 * @param region AWS region
 */
//' @useDynLib paws.common _paws_common_endpoint_unescape
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
std::string endpoint_unescape(std::string endpoint, const std::string &region)
{
  size_t pos = 0;
  if ((pos = endpoint.find("{region}", 0)) != std::string::npos)
  {
    endpoint.replace(pos, 8, region);
  };
  return endpoint;
}

// Unescape endpoint
// param endpoint AWS escaped endpoint
// param service AWS service
// param region AWS region

/**
 * @brief Unescape endpoint using vendor aws js sdk
 *
 * @param endpoint AWS escaped endpoint
 * @param service AWS service
 * @param region AWS region
 */
//' @useDynLib paws.common _paws_common_endpoint_unescape_js
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
std::string endpoint_unescape_js(std::string endpoint, const std::string& service, const std::string& region) {
 size_t pos = 0;
 if ((pos = endpoint.find("{service}", pos)) != std::string::npos) {
   endpoint.replace(pos, 9, service);
 };

 if ((pos = endpoint.find("{region}", 0)) != std::string::npos) {
   endpoint.replace(pos, 8, region);
 };
 return endpoint;
}


const std::map<std::string, std::string> partitions = {
  {"aws", "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$"},
  {"aws-cn", "^cn\\-\\w+\\-\\d+$"},
  {"aws-us-gov", "^us\\-gov\\-\\w+\\-\\d+$"},
  {"aws-iso", "^us\\-iso\\-\\w+\\-\\d+$"},
  {"aws-iso-b", "^us\\-isob\\-\\w+\\-\\d+$"},
  {"aws-iso-e", "^eu\\-isoe\\-\\w+\\-\\d+$"},
  {"aws-iso-f", "^us\\-isof\\-\\w+\\-\\d+$"}
};

/**
 * @brief Determines the partition for a given AWS region.
 *
 * This function iterates over a predefined list of partitions and uses regular expressions
 * to check if the input region matches any of the partition patterns. If a match is found,
 * the corresponding partition is returned. If no match is found, the function defaults to
 * returning "aws".
 *
 * @param region The AWS region for which the partition needs to be determined.
 * @return A string representing the partition corresponding to the input region.
 *         Defaults to "aws" if no match is found.
 *
 * @note The partition patterns are predefined in the `partitions` variable.
 * @note This function references the logic used in the botocore library:
 *       https://github.com/boto/botocore/blob/develop/botocore/client.py#L638-L647
 */
//' @useDynLib paws.common _paws_common_set_partition
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
std::string set_partition(const std::string &region)
{
 for (const auto &partition : partitions)
 {
   std::regex re(partition.second);
   if (std::regex_search(region, re))
   {
     return partition.first;
   }
 }
 // If no match was found, default to partition aws
 // https://github.com/boto/botocore/blob/develop/botocore/client.py#L638-L647
 return "aws";
}

/**
 * @brief Get region pattern based on region using aws botocore vendor
 *
 * @param region_pattern AWS escaped endpoint
 * @param region AWS region
 */
//' @useDynLib paws.common _paws_common_get_region_pattern
//' @importFrom Rcpp evalCpp
 // [[Rcpp::export]]
 Rcpp::List get_region_pattern(const Rcpp::List &endpoints, const std::string &region, const std::string &partition_name = "") {
   const Rcpp::CharacterVector region_pattern = endpoints.names();
   const int n = region_pattern.size();
   Rcpp::List result;

   bool matched = false;

   // if partition name is known
   if (!partition_name.empty()) {
     for (const auto &partition : partitions) {
       if (partition_name == partition.first) {
         result = endpoints[partition.second];
         matched = true;
         break;
       }
     }
   } else {
     // Match region to partition endpoint regex
     for (int i = 0; i < n; ++i) {
       const std::string cur = Rcpp::as<std::string>(region_pattern[i]);
       const std::regex re(cur);
       if (std::regex_search(region, re)) {
         result = endpoints[i];
         matched = true;
         break; // Exit on first match
       }
     }
   }

   // If no match was found, default to partition aws
   // https://github.com/boto/botocore/blob/develop/botocore/client.py#L638-L647
   if (!matched) {
     result = endpoints["^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$"];
   }

   // Check if signing_region exists in the result
   if (!result.containsElementNamed("signing_region")) {
     result["signing_region"] = region; // Add signing_region if it's not present
   }

   return result;
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
