#include <Rcpp.h>
using namespace Rcpp;
#include "json_escape.h"

// Developed from:
// https://stackoverflow.com/questions/25609174/fast-escaping-deparsing-of-character-vectors-in-r
std::string json_escape(std::string x)
{
  std::string out = "\"";

  int n = x.size();
  for (int i = 0; i < n; ++i)
  {
    char cur = x[i];

    switch (cur)
    {
    case '\\':
      out += "\\\\";
      break;
    case '"':
      out += "\\\"";
      break;
    case '\n':
      out += "\\n";
      break;
    case '\r':
      out += "\\r";
      break;
    case '\t':
      out += "\\t";
      break;
    case '\b':
      out += "\\b";
      break;
    case '\f':
      out += "\\f";
      break;
    case '\001':
      out += "\\u0001";
      break;
    case '\002':
      out += "\\u0002";
      break;
    case '\003':
      out += "\\u0003";
      break;
    case '\004':
      out += "\\u0004";
      break;
    case '\005':
      out += "\\u0005";
      break;
    case '\006':
      out += "\\u0006";
      break;
    case '\a':
      out += "\\u0007";
      break;
    case '\v':
      out += "\\u000b";
      break;
    case '\016':
      out += "\\u000e";
      break;
    case '\017':
      out += "\\u000f";
      break;
    case '\020':
      out += "\\u0010";
      break;
    case '\021':
      out += "\\u0011";
      break;
    case '\022':
      out += "\\u0012";
      break;
    case '\023':
      out += "\\u0013";
      break;
    case '\024':
      out += "\\u0014";
      break;
    case '\025':
      out += "\\u0015";
      break;
    case '\026':
      out += "\\u0016";
      break;
    case '\027':
      out += "\\u0017";
      break;
    case '\030':
      out += "\\u0018";
      break;
    case '\031':
      out += "\\u0019";
      break;
    case '\032':
      out += "\\u001a";
      break;
    case '\033':
      out += "\\u001b";
      break;
    case '\034':
      out += "\\u001c";
      break;
    case '\035':
      out += "\\u001d";
      break;
    case '\036':
      out += "\\u001e";
      break;
    case '\037':
      out += "\\u001f";
      break;
    default:
      out += cur;
    }
  }

  out += '"';

  return out;
}


/**
 * @brief Escapes Json string
 *
 * @param x A character vector to be escaped
 *
 * @return a string for a JSON value, with special characters escaped.
 */
//' @useDynLib paws.common _paws_common_json_convert_string
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
CharacterVector json_convert_string(CharacterVector x)
{
  int n = x.size();
  CharacterVector out(n);

  for (int i = 0; i < n; ++i)
  {
    String cur = x[i];
    out[i] = json_escape(cur);
  }
  return out;
}
