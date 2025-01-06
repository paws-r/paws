#include <cstdio>
#include <cstdlib>
#include <vector>
#include <string>
#include <iostream>
#include <algorithm> // for std::isspace, std::remove_if
#include <cctype>
#include <Rcpp.h>

using namespace Rcpp;

// Function to process a line and check if it should be included
bool processLine(std::string &line)
{
  // Trim trailing whitespace
  line.erase(std::find_if_not(line.rbegin(), line.rend(), [](unsigned char ch)
                              { return std::isspace(ch); })
                 .base(),
             line.end());

  // Trim leading whitespace
  auto start = std::find_if_not(line.begin(), line.end(), [](unsigned char ch)
                                { return std::isspace(ch); });

  // Line is empty or only whitespace
  if (start == line.end())
  {
    return false;
  }

  // Check for ';' or '#'
  return !(*start == ';' || *start == '#');
}

/**
 * @brief Reads an INI file and returns a vector of non-comment, non-empty lines.
 *
 * This function opens the specified INI file, reads it line by line, and processes each line to remove
 * leading and trailing whitespace. Lines that are empty or start with a comment character (';' or '#')
 * are excluded from the result.
 *
 * @param filename The path to the INI file to be read.
 *
 * @return A vector of strings containing the non-comment, non-empty lines from the INI file.
 *
 * @throws Rcpp::exception if the file cannot be opened.
 */
//' @useDynLib paws.common _paws_common_scan_ini_file
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
std::vector<std::string> scan_ini_file(const std::string &filename)
{
  FILE *file = fopen(filename.c_str(), "r");
  if (!file)
  {
    Rcpp::stop("Unable to find file: " + filename);
  }

  std::vector<std::string> lines;
  char buffer[256];
  while (fgets(buffer, sizeof(buffer), file))
  {
    std::string line(buffer);
    // Remove the newline character at the end, if it exists
    if (!line.empty() && line.back() == '\n')
    {
      line.erase(line.length() - 1);
    }
    // Process the line to check if it should be included
    if (processLine(line))
    {
      lines.emplace_back(line);
    }
  }

  fclose(file);
  return lines;
}

// Helper function to trim leading and trailing whitespace characters from a string
std::string trim(const std::string &str)
{
  size_t start = 0;
  size_t end = str.size();

  // Find the first non-whitespace character
  while (start < end && std::isspace(str[start]))
  {
    ++start;
  }

  // Find the last non-whitespace character
  while (end > start && std::isspace(str[end - 1]))
  {
    --end;
  }

  return str.substr(start, end - start);
}

// Function to remove square brackets and all outer whitespaces
std::string removeBracketsAndTrim(const std::string &str)
{
  size_t start = 0;
  size_t end = str.size();

  // Skip leading whitespace
  while (start < end && std::isspace(str[start]))
  {
    ++start;
  }

  // Skip trailing whitespace
  while (end > start && std::isspace(str[end - 1]))
  {
    --end;
  }

  // Remove square brackets if present
  if (start < end && str[start] == '[')
  {
    ++start;
  }
  if (end > start && str[end - 1] == ']')
  {
    --end;
  }

  // Trim the internal whitespace again
  return trim(str.substr(start, end - start));
}

/**
 * @brief Processes a vector of strings to remove square brackets and trim whitespace.
 *
 * This function takes a vector of strings, removes any leading and trailing whitespace,
 * and removes square brackets ('[' and ']') from each string. The processed strings are
 * returned in a new vector.
 *
 * @param vec A vector of strings to be processed.
 *
 * @return A vector of strings with square brackets removed and whitespace trimmed.
 */
//' @useDynLib paws.common _paws_common_process_profile_name
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
std::vector<std::string> process_profile_name(const std::vector<std::string> &vec)
{
  std::vector<std::string> modifiedVec;
  modifiedVec.reserve(vec.size());

  for (const auto &str : vec)
  {
    std::string modified = removeBracketsAndTrim(str);
    modifiedVec.push_back(modified);
  }

  return modifiedVec;
}
