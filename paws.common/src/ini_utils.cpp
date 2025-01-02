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

// [[Rcpp::export]]
std::vector<std::string> scan_ini_file(const std::string &filename)
{
  FILE *file = fopen(filename.c_str(), "r");
  if (!file)
  {
    Rcpp::stop("Can't load the INI file: " + filename);
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
