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
 * @param endpoint AWS escaped endpoint
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

/**
 * @brief Get region pattern based on region
 *
 * @param region_pattern AWS escaped endpoint
 * @param region AWS region
 */
//' @useDynLib paws.common _paws_common_get_region_pattern
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
std::string get_region_pattern(CharacterVector region_pattern, const std::string &region)
{
  int n = region_pattern.size();
  std::string safe_pattern;
  for (int i = 0; i < n; ++i)
  {
    String cur = region_pattern[i];
    safe_pattern = cur;

    const std::regex re(safe_pattern);
    if (std::regex_search(region, re))
    {
      break;
    };
  };
  return safe_pattern;
}
