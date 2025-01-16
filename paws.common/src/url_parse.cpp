#include <Rcpp.h>
#include "encoding.h"

#include <string>
#include <vector>
#include <algorithm>
#include <sstream>

using namespace Rcpp;

/**
 * @brief Parses a query string into a list of key-value pairs.
 *
 * @param query The query string to parse. It may start with a '?'.
 *
 * @return
 * A list where each element is a key-value pair from the query string.
 * If the query string is empty, an empty list is returned.
 *
 * @example
 * parse_query_string("?key1=value1&key2=value2")
 * // Returns: list(key1 = "value1", key2 = "value2")
 */
//' @useDynLib paws.common _paws_common_parse_query_string
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
List parse_query_string(std::string query)
{
  // Remove leading '?' if present
  if (!query.empty() && query[0] == '?')
  {
    query.erase(0, 1);
  }

  // Return an empty list if the query is empty
  if (query.empty())
  {
    return List::create();
  }

  std::vector<std::pair<std::string, std::string>> result_vector;
  size_t start = 0, end = 0;
  std::string key, value;

  while (start < query.length())
  {
    end = query.find('=', start);
    if (end == std::string::npos || query[end] == '&')
    {
      // Handle case where there is no '=' or it's part of an empty key-value pair
      key = query.substr(start, query.find('&', start) - start);
      value = "";
      start = query.find('&', start);
      if (start == std::string::npos)
      {
        start = query.length();
      }
      else
      {
        ++start;
      }
    }
    else
    {
      key = query.substr(start, end - start);
      start = end + 1;
      end = query.find('&', start);
      if (end == std::string::npos)
      {
        value = query.substr(start);
        start = query.length();
      }
      else
      {
        value = query.substr(start, end - start);
        start = end + 1;
      }
    }
    result_vector.push_back({internal_url_unencode(key), internal_url_unencode(value)});
  }

  List result(result_vector.size());
  CharacterVector names(result_vector.size());
  for (size_t i = 0; i < result_vector.size(); ++i)
  {
    names[i] = result_vector[i].first;
    result[i] = result_vector[i].second;
  }
  result.attr("names") = names;

  return result;
}

/**
 * @brief Encodes a list of key-value pairs into a query string.
 *
 * @param params A list where each element is a key-value pair to be encoded.
 *
 * @return A query string representing the key-value pairs.
 *
 * @example
 * decode_query_string(list(bar = "baz", foo = "qux"))
 * // Returns: "bar=baz&foo=qux"
 */
std::string decode_query_string(List params)
{
  if (params.size() == 0)
  {
    return "";
  }
  std::string query;
  std::vector<std::string> nv = params.names();
  for (int i = 0; i < params.size(); ++i)
  {
    std::string key = internal_url_encode(nv[i], "");
    std::string value = internal_url_encode(params[i], "");
    if (!query.empty())
    {
      query += "&";
    }
    query += key + "=" + value;
  }
  return query;
}

class URL
{
public:
  std::string scheme;
  std::string user;
  std::string password;
  std::string host;
  std::string port;
  std::string raw_path;
  std::string path;
  std::string raw_query;
  std::string fragment;

  // Method to recreate the URL string from components
  std::string toString() const
  {
    if (scheme.empty() && host.empty())
    {
      return "";
    }

    std::ostringstream url;
    if (!scheme.empty())
    {
      url << scheme << "://";
    }
    if (!user.empty() || !password.empty())
    {
      url << user;
      if (!password.empty())
      {
        url << ":" << password;
      }
      url << "@";
    }
    url << host;
    if (!port.empty())
    {
      url << ":" << port;
    }
    if (!raw_path.empty())
    {
      // Ensure the raw_path starts with a '/'
      if (raw_path[0] != '/')
      {
        url << "/";
      }
      url << raw_path;
    }
    else
    {
      url << path;
    }
    if (!raw_query.empty())
    {
      url << "?" << raw_query;
    }
    if (!fragment.empty())
    {
      url << "#" << fragment;
    }
    return url.str();
  }
};

class URLParser
{
public:
  static URL parse(const std::string &url)
  {
    URL result;
    std::string::const_iterator it = url.begin();
    std::string::const_iterator end = url.end();

    // Parse scheme
    static const std::string scheme_delim = "://";
    auto scheme_end = std::search(it, end, scheme_delim.begin(), scheme_delim.end());
    if (scheme_end != end)
    {
      result.scheme = std::string(it, scheme_end);
      it = scheme_end + scheme_delim.size(); // Skip "://"
    }

    // Parse host (including port if present)
    auto host_end = std::find_if(it, end, [](char ch)
                                 { return ch == '/' || ch == '?' || ch == '#'; });
    std::string host_port = std::string(it, host_end);

    // Use rfind to locate the last occurrence of ':' in host_port
    // Use find to locate '@' in host_port
    auto colon_pos = host_port.rfind(':');
    auto at_pos = host_port.find('@');

    if (colon_pos != std::string::npos)
    {
      if (at_pos != std::string::npos)
      {
        if (colon_pos > at_pos)
        {
          // contains: <user>:<password>@<host>:<port>
          result.host = host_port.substr(0, colon_pos);
          result.port = host_port.substr(colon_pos + 1);

          // split user, password and host
          auto user_col_pos = result.host.find(':');
          if (user_col_pos != std::string::npos)
          {
            result.user = result.host.substr(0, user_col_pos);
            result.password = result.host.substr(user_col_pos + 1, at_pos - user_col_pos - 1);
            result.host = result.host.substr(at_pos + 1);
          }
          else
          {
            // assume user when ":" can't be found
            result.user = result.host.substr(0, at_pos);
            result.host = result.host.substr(at_pos + 1);
          }
        }
        else
        {
          // contains: <user>:<pass>@<host>
          result.user = host_port.substr(0, colon_pos);
          result.password = host_port.substr(colon_pos + 1, at_pos - colon_pos - 1);
          result.host = host_port.substr(at_pos + 1);
        }
      }
      else
      {
        // contains: <host>:<port>
        result.host = host_port.substr(0, colon_pos);
        result.port = host_port.substr(colon_pos + 1);
      }
    }
    else if (at_pos != std::string::npos)
    {
      // contains: <user>@<host>
      result.user = host_port.substr(0, at_pos);
      result.host = host_port.substr(at_pos + 1);
    }
    else
    {
      // contains: <host>
      result.host = host_port;
    }

    it = host_end;

    // Parse path
    if (it != end && *it == '/')
    {
      auto path_end = std::find_if(it, end, [](char ch)
                                   { return ch == '?' || ch == '#'; });
      result.path = std::string(it, path_end);
      it = path_end;
    }

    // Parse raw_query
    if (it != end && *it == '?')
    {
      auto query_end = std::find(it, end, '#');
      result.raw_query = std::string(it + 1, query_end); // Skip '?'
      it = query_end;
    }

    // Parse fragment
    if (it != end && *it == '#')
    {
      result.fragment = std::string(it + 1, end); // Skip '#'
    }

    return result;
  }
};

/**
 * Parses a URL string into its components.
 *
 * @param url The URL string to parse.
 *
 * @return
 * A list containing the components of the URL: scheme, user, password, host, path, raw_path, force_query, raw_query, and fragment.
 *
 * @example
 * parse_url("https://user:pass@host.com/path?query#fragment")
 * // Returns: list(scheme = "https", user = "user", password = "pass", host = "host.com", path = "/path", raw_path = "", force_query = false, raw_query = "query", fragment = "fragment")
 */
//' @useDynLib paws.common _paws_common_parse_url
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
Rcpp::List parse_url(const std::string &url)
{
  URL parsed_url = URLParser::parse(url);
  std::string raw_path = parsed_url.path;
  std::string path = internal_url_unencode(raw_path);
  std::string escaped_path = internal_url_encode(raw_path, "$&+,/;:=@");

  if (escaped_path == raw_path)
  {
    raw_path = "";
  }

  std::string raw_query = decode_query_string(parse_query_string(parsed_url.raw_query));

  Rcpp::List result = Rcpp::List::create(
      Rcpp::Named("scheme") = parsed_url.scheme,
      Rcpp::Named("opaque") = "",
      Rcpp::Named("user") = parsed_url.user,
      Rcpp::Named("password") = parsed_url.password,
      Rcpp::Named("host") = parsed_url.port.empty() ? parsed_url.host : parsed_url.host + ":" + parsed_url.port,
      Rcpp::Named("path") = path.empty() ? "/" : path,
      Rcpp::Named("raw_path") = raw_path,
      Rcpp::Named("force_query") = false,
      Rcpp::Named("raw_query") = raw_query,
      Rcpp::Named("fragment") = parsed_url.fragment);

  result.attr("class") = "struct";
  return result;
}

/**
 * @brief Builds a URL string from its components.
 *
 * @param url_components A list containing the components of the URL: scheme, user, password, host, path, raw_path, raw_query, and fragment.
 *
 * @return A URL string constructed from the provided components
 *
 * @example
 * build_url(list(scheme = "https", user = "user", password = "pass", host = "host.com", path = "/path", raw_path = "", raw_query = "query", fragment = "fragment"))
 * // Returns: "https://user:pass@host.com/path?query#fragment"
 */
//' @useDynLib paws.common _paws_common_build_url
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
std::string build_url(const Rcpp::List &url_components)
{
  URL url;
  url.scheme = Rcpp::as<std::string>(url_components["scheme"]);
  url.user = Rcpp::as<std::string>(url_components["user"]);
  url.password = Rcpp::as<std::string>(url_components["password"]);
  url.host = Rcpp::as<std::string>(url_components["host"]);
  url.raw_path = Rcpp::as<std::string>(url_components["raw_path"]);
  url.path = Rcpp::as<std::string>(url_components["path"]);
  url.raw_query = Rcpp::as<std::string>(url_components["raw_query"]);
  url.fragment = Rcpp::as<std::string>(url_components["fragment"]);
  return url.toString();
}
