#ifndef JSON_ESCAPE_H
#define JSON_ESCAPE_H

#include <Rcpp.h>
#include <string>

using namespace Rcpp;

/**
 * @brief Escapes special characters in a string for JSON format
 * 
 * @param x The input string to be escaped
 * @return std::string The escaped string wrapped in quotes, suitable for JSON
 */
std::string json_escape(std::string x);

#endif // JSON_ESCAPE_H