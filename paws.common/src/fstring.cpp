#include <Rcpp.h>
#include <string>
#include <unordered_map>

/**
 * @brief Convert SEXP (R objects) to a string in a safe manner.
 *
 * This helper function provides a fast conversion from various R object types
 * (such as character strings, integers, real numbers, and logical values)
 * to a standard C++ string. It handles exceptions silently by providing a
 * default case that converts unsupported types to string.
 *
 * @param x A SEXP object to be converted to a string.
 * @return A std::string representation of the input SEXP object.
*/
inline std::string sexp_to_string(SEXP x) {
  switch(TYPEOF(x)) {
  case STRSXP:
    return Rcpp::as<std::string>(x);
  case INTSXP:
    return std::to_string(INTEGER(x)[0]);
  case REALSXP:
    return std::to_string(REAL(x)[0]);
  case LGLSXP:
    return INTEGER(x)[0] ? "TRUE" : "FALSE";
  default: {
      Rcpp::CharacterVector tmp = Rcpp::as<Rcpp::CharacterVector>(Rcpp::wrap(x));
      return Rcpp::as<std::string>(tmp[0]);
    }
  }
}

/**
 * @brief Format a string using a template and variables from a list.
 *
 * The `fstring` function allows you to create a formatted string by
 * replacing placeholders in a given template string with values from an
 * R list. Placeholders should be enclosed in curly braces, for example:
 * "{variableName}". The values are retrieved from the variables list using
 * their names, and if a placeholder does not have a corresponding variable,
 * it will be left as is.
 *
 * @param templateStr A string containing placeholders (e.g., "{name}")
 *                    that should be replaced with corresponding values.
 * @param variables A list where names correspond to placeholders in
 *                  `templateStr` and whose values will replace those
 *                  placeholders in the final string.
 * @return A formatted string with placeholders replaced by actual values
 *         from the variables list.
 */
//' @useDynLib paws.common _paws_common_fstring
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
std::string fstring(const std::string& templateStr, Rcpp::List variables) {
  // Get the names of the variables
  Rcpp::CharacterVector names = variables.names();
  const size_t len = variables.size();

  std::unordered_map<std::string, std::string> varMap;
  varMap.reserve(len);

  // Populate unordered_map efficiently
  for (size_t j = 0; j < len; ++j) {
    std::string key = Rcpp::as<std::string>(names[j]);
    varMap.emplace(key, sexp_to_string(variables[j]));
  }

  std::string result;
  result.reserve(templateStr.size() + len * 8); // Heuristic extra room

  size_t i = 0, n = templateStr.size();
  while (i < n) {
    if (templateStr[i] == '{') {
      size_t start = i + 1;
      size_t end = start;
      // Find closing brace
      while (end < n && templateStr[end] != '}') ++end;
      if (end < n && templateStr[end] == '}') {
        std::string key = templateStr.substr(start, end - start);
        auto it = varMap.find(key);
        if (it != varMap.end()) {
          result.append(it->second);
        } else {
          result.append("{").append(key).append("}");
        }
        i = end + 1;
      } else {
        // Lone opening brace, treat as literal
        result += '{';
        ++i;
      }
    } else {
      // Copy contiguous non-brace characters for better performance
      size_t next = templateStr.find('{', i);
      result.append(templateStr, i, next == std::string::npos ? n - i : next - i);
      i = (next == std::string::npos) ? n : next;
    }
  }

  return result;
}
