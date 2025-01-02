#include <iostream>
#include <vector>
#include <string>
#include <fstream>
#include <Rcpp.h>
#include <cctype>
#include <algorithm> // for std::isspace, std::remove_if

using namespace Rcpp;

// Helper function to trim trailing and leading whitespace and check if a line starts with the unwanted pattern
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

// Function to read an ini file using standard file I/O and return its contents as a vector of strings
// [[Rcpp::export]]
std::vector<std::string> scan_ini_file(const std::string &filename)
{
  std::vector<std::string> fileLines;

  // Open the file
  std::ifstream file(filename);
  if (!file.is_open())
  {
    Rcpp::stop("Unable to find file: " + filename);
  }

  // Reserve space for lines to minimize reallocations (assuming an average line length of 80 characters)
  fileLines.reserve(100); // Adjust this value based on the expected number of lines

  // Read the file line by line
  std::string line;
  while (std::getline(file, line))
  {
    if (processLine(line))
    {
      fileLines.push_back(line);
    }
  }

  // Close the file
  file.close();

  return fileLines;
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
