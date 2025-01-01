#include <iostream>
#include <vector>
#include <string>
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <Rcpp.h>
#include <cctype>

using namespace Rcpp;

// Helper function to trim trailing whitespace from a string
std::string rtrim(const std::string& s)
{
  size_t end = s.find_last_not_of(" \t\n\r\f\v");
  return (end == std::string::npos) ? "" : s.substr(0, end + 1);
}

// Helper function to check if a line starts with the unwanted pattern
bool startsWithPattern(const std::string& line)
{
  // Skip leading whitespace
  size_t start = line.find_first_not_of(" \t");
  if (start == std::string::npos)
  {
    return false; // Line is empty or only whitespace
  }
  // Check for ';' or '#'
  return (line[start] == ';' || line[start] == '#');
}

// Function to read an ini file using memory-mapped files and return its contents as a vector of strings
// [[Rcpp::export]]
std::vector<std::string> scan_ini_file(const std::string &filename)
{
  std::vector<std::string> fileLines;

  // Open the file
  int fd = open(filename.c_str(), O_RDONLY);
  if (fd == -1)
  {
    Rcpp::stop("Unable to find file: " + filename);
  }

  // Get the file size
  struct stat sb;
  if (fstat(fd, &sb) == -1)
  {
    close(fd);
    Rcpp::stop("Unable to get the file size");
  }

  // Map the file into memory
  char *fileContent = static_cast<char *>(mmap(nullptr, sb.st_size, PROT_READ, MAP_PRIVATE, fd, 0));
  if (fileContent == MAP_FAILED)
  {
    close(fd);
    return fileLines; // Return empty vector for empty files
  }

  // Close the file descriptor as it is no longer needed
  close(fd);

  // Reserve space for lines to minimize reallocations
  fileLines.reserve(sb.st_size / 80); // Assuming an average line length of 80 characters

  // Split the file content into lines, trim trailing whitespace, and store them in the vector
  const char *start = fileContent;
  const char *end = fileContent + sb.st_size;
  for (const char *ptr = start; ptr != end; ++ptr)
  {
    if (*ptr == '\n')
    {
      if (start != ptr) // Check if the line is not empty
      {
        std::string line(start, ptr - start);
        line = rtrim(line);
        // Check if the line matches the unwanted pattern
        if (!startsWithPattern(line))
        {
          fileLines.emplace_back(line);
        }
      }
      start = ptr + 1;
    }
  }
  // Add the last line if the file doesn't end with a newline and is not empty
  if (start < end && start != end)
  {
    std::string line(start, end - start);
    line = rtrim(line);
    // Check if the line matches the unwanted pattern
    if (!startsWithPattern(line))
    {
      fileLines.emplace_back(line);
    }
  }

  // Unmap the file from memory
  if (munmap(fileContent, sb.st_size) == -1)
  {
    Rcpp::stop("Unable to unmap file: " + filename);
  }

  return fileLines;
}

// Helper function to trim leading and trailing whitespace characters from a string
std::string trim(const std::string& str) {
  size_t start = 0;
  size_t end = str.size();

  // Find the first non-whitespace character
  while (start < end && std::isspace(str[start])) {
    ++start;
  }

  // Find the last non-whitespace character
  while (end > start && std::isspace(str[end - 1])) {
    --end;
  }

  return str.substr(start, end - start);
}

// Function to remove square brackets and all outer whitespaces
std::string removeBracketsAndTrim(const std::string& str) {
  size_t start = 0;
  size_t end = str.size();

  // Skip leading whitespace
  while (start < end && std::isspace(str[start])) {
    ++start;
  }

  // Skip trailing whitespace
  while (end > start && std::isspace(str[end - 1])) {
    --end;
  }

  // Remove square brackets if present
  if (start < end && str[start] == '[') {
    ++start;
  }
  if (end > start && str[end - 1] == ']') {
    --end;
  }

  // Trim the internal whitespace again
  return trim(str.substr(start, end - start));
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
