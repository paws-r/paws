#include <Rcpp.h>
#include <iostream>
#include <string>
#include <vector>

using namespace Rcpp;

std::map<std::string, std::string> partitions = {
  {"aws", std::string("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$")},
  {"aws-cn", std::string("^cn\\-\\w+\\-\\d+$")},
  {"aws-us-gov", std::string("^us\\-gov\\-\\w+\\-\\d+$")},
  {"aws-iso", std::string("^us\\-iso\\-\\w+\\-\\d+$")},
  {"aws-iso-b", std::string("^us\\-isob\\-\\w+\\-\\d+$")},
  {"aws-iso-e", std::string("^eu\\-isoe\\-\\w+\\-\\d+$")},
  {"aws-iso-f", std::string("^us\\-isof\\-\\w+\\-\\d+$")}
};

// Helper function to check if a string matches a given pattern
bool matchPattern(const std::string& text, const std::string& pattern) {
  if (pattern == "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$") {
    if (text.size() < 5) return false;
    std::string region = text.substr(0, 2);
    if (region != "us" && region != "eu" && region != "ap" && region != "sa" &&
        region != "ca" && region != "me" && region != "af" && region != "il" &&
        region != "mx") return false;
    if (text[2] != '-') return false;
    size_t pos = text.find('-', 3);
    if (pos == std::string::npos || pos == text.size() - 1) return false;
    for (size_t i = 3; i < pos; ++i) {
      if (!isalnum(text[i]) && text[i] != '-') return false;
    }
    for (size_t i = pos + 1; i < text.size(); ++i) {
      if (!isdigit(text[i])) return false;
    }
    return true;
  } else if (pattern == "^cn\\-\\w+\\-\\d+$") {
    if (text.size() < 4) return false;
    if (text.substr(0, 2) != "cn") return false;
    if (text[2] != '-') return false;
    size_t pos = text.find('-', 3);
    if (pos == std::string::npos || pos == text.size() - 1) return false;
    for (size_t i = 3; i < pos; ++i) {
      if (!isalnum(text[i]) && text[i] != '-') return false;
    }
    for (size_t i = pos + 1; i < text.size(); ++i) {
      if (!isdigit(text[i])) return false;
    }
    return true;
  } else if (pattern == "^us\\-gov\\-\\w+\\-\\d+$") {
    if (text.size() < 7) return false;
    if (text.substr(0, 6) != "us-gov") return false;
    if (text[6] != '-') return false;
    size_t pos = text.find('-', 7);
    if (pos == std::string::npos || pos == text.size() - 1) return false;
    for (size_t i = 7; i < pos; ++i) {
      if (!isalnum(text[i]) && text[i] != '-') return false;
    }
    for (size_t i = pos + 1; i < text.size(); ++i) {
      if (!isdigit(text[i])) return false;
    }
    return true;
  } else if (pattern == "^us\\-iso\\-\\w+\\-\\d+$") {
    if (text.size() < 7) return false;
    if (text.substr(0, 6) != "us-iso") return false;
    if (text[6] != '-') return false;
    size_t pos = text.find('-', 7);
    if (pos == std::string::npos || pos == text.size() - 1) return false;
    for (size_t i = 7; i < pos; ++i) {
      if (!isalnum(text[i]) && text[i] != '-') return false;
    }
    for (size_t i = pos + 1; i < text.size(); ++i) {
      if (!isdigit(text[i])) return false;
    }
    return true;
  } else if (pattern == "^us\\-isob\\-\\w+\\-\\d+$") {
    if (text.size() < 8) return false;
    if (text.substr(0, 7) != "us-isob") return false;
    if (text[7] != '-') return false;
    size_t pos = text.find('-', 8);
    if (pos == std::string::npos || pos == text.size() - 1) return false;
    for (size_t i = 8; i < pos; ++i) {
      if (!isalnum(text[i]) && text[i] != '-') return false;
    }
    for (size_t i = pos + 1; i < text.size(); ++i) {
      if (!isdigit(text[i])) return false;
    }
    return true;
  } else if (pattern == "^eu\\-isoe\\-\\w+\\-\\d+$") {
    if (text.size() < 8) return false;
    if (text.substr(0, 7) != "eu-isoe") return false;
    if (text[7] != '-') return false;
    size_t pos = text.find('-', 8);
    if (pos == std::string::npos || pos == text.size() - 1) return false;
    for (size_t i = 8; i < pos; ++i) {
      if (!isalnum(text[i]) && text[i] != '-') return false;
    }
    for (size_t i = pos + 1; i < text.size(); ++i) {
      if (!isdigit(text[i])) return false;
    }
    return true;
  } else if (pattern == "^us\\-isof\\-\\w+\\-\\d+$") {
    if (text.size() < 8) return false;
    if (text.substr(0, 7) != "us-isof") return false;
    if (text[7] != '-') return false;
    size_t pos = text.find('-', 8);
    if (pos == std::string::npos || pos == text.size() - 1) return false;
    for (size_t i = 8; i < pos; ++i) {
      if (!isalnum(text[i]) && text[i] != '-') return false;
    }
    for (size_t i = pos + 1; i < text.size(); ++i) {
      if (!isdigit(text[i])) return false;
    }
    return true;
  }
  return false;
}

/**
 * @brief Determines the partition for a given AWS region.
 *
 * This function iterates over a predefined list of partitions and uses regular expressions
 * to check if the input region matches any of the partition patterns. If a match is found,
 * the corresponding partition is returned. If no match is found, the function defaults to
 * returning "".
 *
 * @param region The AWS region for which the partition needs to be determined.
 * @return A string representing the partition corresponding to the input region.
 *         Defaults to "" if no match is found.
 *
 */
//' @useDynLib paws.common _paws_common_set_partition_name
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
std::string set_partition_name(const std::string &region) {
  for (const auto& partition : partitions) {
    if (matchPattern(region, partition.second)) {
      return partition.first; // Returning the name of the matching pattern as a string
    }
  }
  return ""; // Return empty string if no match found
}
