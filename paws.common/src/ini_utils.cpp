#include <Rcpp.h>
#include <string>

using namespace Rcpp;

// Function to trim trailing whitespace from a string
std::string rtrim(const std::string& s) {
  size_t end = s.find_last_not_of(" \t\n\r\f\v");
  return (end == std::string::npos) ? "" : s.substr(0, end + 1);
}

// [[Rcpp::export]]
Rcpp::CharacterVector rtrim_whitespace(Rcpp::CharacterVector vec) {
  Rcpp::CharacterVector result(vec.size());

  for (size_t i = 0; i < vec.size(); ++i) {
    std::string line = Rcpp::as<std::string>(vec[i]);
    result[i] = rtrim(line);
  }

  return result;
}

// Function to check if a line starts with specified patterns
bool startsWithPattern(const std::string& line) {
  size_t i = 0;
  // Skip leading whitespace
  while (i < line.size() && std::isspace(line[i])) {
    i++;
  }
  // Check for specific patterns
  return (i < line.size() && (line[i] == ';' || line[i] == '#'));
}


// [[Rcpp::export]]
Rcpp::LogicalVector identify_comments(Rcpp::CharacterVector vec) {
  Rcpp::LogicalVector result(vec.size());

  for (size_t i = 0; i < vec.size(); ++i) {
    std::string line = Rcpp::as<std::string>(vec[i]);
    result[i] = startsWithPattern(line);
  }

  return result;
}

// Function to trim leading and trailing whitespace characters
std::string trim(const std::string& str) {
  size_t start = 0;
  // Find the first non-whitespace character
  while (start < str.size() && std::isspace(str[start])) {
    ++start;
  }

  // If the string is entirely whitespace, return an empty string
  if (start == str.size()) {
    return "";
  }

  size_t end = str.size() - 1;
  // Find the last non-whitespace character
  while (end > start && std::isspace(str[end])) {
    --end;
  }

  // Return the substring that excludes leading and trailing whitespace
  return str.substr(start, end - start + 1);
}

// Function to remove square brackets and all outer whitespaces
std::string removeBracketsAndTrim(const std::string& str) {
  std::string result;
  result.reserve(str.size()); // Reserve space to avoid multiple allocations

  for (char ch : str) {
    // Check if the character is not a square bracket
    if (ch != '[' && ch != ']') {
      result += ch;
    }
  }

  // Trim leading and trailing whitespace from the result
  return trim(result);
}

// [[Rcpp::export]]
std::vector<std::string> process_profile_name(const std::vector<std::string>& vec) {
  std::vector<std::string> modifiedVec;
  modifiedVec.reserve(vec.size());

  for (const auto& str : vec) {
    std::string modified = removeBracketsAndTrim(str);
    modifiedVec.push_back(modified);
  }

  return modifiedVec;
}
