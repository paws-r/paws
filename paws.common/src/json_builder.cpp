// json_builder.cpp
#include <Rcpp.h>
#include <string>
#include <vector>
#include <unordered_set>
#include <algorithm> // For std::sort

// Include headers for utility functions
#include "utils.h"
#include "json_escape.h"

using namespace Rcpp;

// -------------------- Cached lookups --------------------
// Cache for frequently accessed symbols and strings
struct SymbolCache
{
  SEXP tags_sym;
  SEXP names_sym;

  SymbolCache()
  {
    tags_sym = Rf_install("tags");
    names_sym = R_NamesSymbol;
    R_PreserveObject(tags_sym); // Ensure symbol is not garbage collected
  }
};

static SymbolCache symbol_cache;

// Cache for string constants to avoid repeated allocations
static const std::unordered_set<std::string> skip_tags = {
    "json", "location", "ignore"};

static const std::unordered_set<std::string> special_types = {
    "blob", "boolean", "integer", "float", "double", "long",
    "string", "timestamp", "structure", "list", "map"};

// -------------------- Optimized Helpers --------------------
inline std::string tag_get(SEXP object, const char *tag)
{
  SEXP tags = Rf_getAttrib(object, symbol_cache.tags_sym);
  // Check if tags is NULL or not a list (VECSXP)
  if (Rf_isNull(tags) || TYPEOF(tags) != VECSXP)
  {
    return "";
  }

  SEXP names = Rf_getAttrib(tags, symbol_cache.names_sym);
  if (Rf_isNull(names))
  {
    return "";
  }

  R_xlen_t n = Rf_length(tags);
  for (R_xlen_t i = 0; i < n; i++)
  {
    // Compare tag name
    if (strcmp(CHAR(STRING_ELT(names, i)), tag) == 0)
    {
      SEXP val = VECTOR_ELT(tags, i);
      if (Rf_isNull(val))
        return "";

      switch (TYPEOF(val))
      {
      case STRSXP:
        if (Rf_length(val) > 0)
        {
          return std::string(CHAR(STRING_ELT(val, 0)));
        }
        break;
      case LGLSXP:
        if (Rf_length(val) > 0)
        {
          int logical_val = LOGICAL(val)[0];
          return (logical_val == TRUE) ? "TRUE" : (logical_val == FALSE) ? "FALSE"
                                                                         : "";
        }
        break;
      }
      return ""; // Return empty for unsupported types or empty values
    }
  }
  return ""; // Tag not found
}

inline bool is_atomic(SEXP x)
{
  if (Rf_isNull(x))
    return true;
  int type = TYPEOF(x);
  return (type == INTSXP || type == REALSXP || type == LGLSXP ||
          type == STRSXP || type == RAWSXP);
}

// FIX: Correctly classify RAWSXP as scalar
std::string guess_type(SEXP object)
{
  // If it has names, it's a structure (e.g., named list, data.frame)
  if (!Rf_isNull(Rf_getAttrib(object, symbol_cache.names_sym)))
  {
    return "structure";
  }

  // Explicitly handle raw vectors as scalar, regardless of length
  if (TYPEOF(object) == RAWSXP)
  {
    return "scalar";
  }

  // If it's an atomic vector of length 1, it's a scalar
  if (is_atomic(object) && Rf_length(object) == 1)
  {
    return "scalar";
  }

  // Otherwise, assume it's a list (e.g., unnamed list, vector of length > 1)
  return "list";
}

std::string type(SEXP object)
{
  std::string type_tag = tag_get(object, "type");
  if (!type_tag.empty() && special_types.count(type_tag))
  {
    // If a special type tag is present and valid, use it for structure/list/map,
    // otherwise treat as scalar.
    return (type_tag == "structure" || type_tag == "list" || type_tag == "map")
               ? type_tag
               : "scalar";
  }
  // Fallback to guessing the type if no special tag or tag is not recognized
  return guess_type(object);
}

// -------------------- Forward declaration --------------------
// This function will be defined later and called recursively
std::string json_build_any(SEXP values);

// -------------------- Helper function to safely convert to string --------------------
// This function converts an SEXP to a string representation, handling various R types.
std::string safe_as_string(SEXP x)
{
  if (Rf_isNull(x) || Rf_length(x) == 0)
  {
    return "";
  }

  int type = TYPEOF(x);
  switch (type)
  {
  case STRSXP:
    // Directly return string for character SEXPs
    return std::string(CHAR(STRING_ELT(x, 0)));
  case INTSXP:
  case REALSXP:
  case LGLSXP:
  case RAWSXP:
    // Coerce to character and then return string for numeric, logical, raw
    return std::string(CHAR(STRING_ELT(Rf_coerceVector(x, STRSXP), 0)));
  default:
    // Coerce any other type to character as a fallback
    return std::string(CHAR(STRING_ELT(Rf_coerceVector(x, STRSXP), 0)));
  }
}

// -------------------- Optimized JSON building functions --------------------

// Builds JSON for scalar types (single values like numbers, strings, booleans, blobs)
std::string json_build_scalar(SEXP values)
{
  R_xlen_t len = Rf_length(values);
  if (len == 0)
  {
    // Handle special cases for empty lists, structures, or maps tagged as such
    std::string type_tag = tag_get(values, "type");
    return (type_tag == "list") ? "[]" : (type_tag == "structure" || type_tag == "map") ? "{}"
                                                                                        : "";
  }

  // For scalar, we only care about the first element (or the value itself if not a vector)
  // This logic is safe because `guess_type` now ensures `values` is actually scalar-like
  // when `json_build_scalar` is called.
  SEXP first_element = values; // Simplification, as `values` should already be the scalar SEXP

  std::string t = tag_get(first_element, "type"); // Get type tag if available

  // Handle specific types based on 'type' tag
  if (t == "blob")
  {
    // Blobs (raw vectors) are base64 encoded
    return (TYPEOF(first_element) == RAWSXP) ? "\"" + base64_encode(Rcpp::as<Rcpp::RawVector>(first_element)) + "\"" : "\"\"";
  }

  if (t == "boolean")
  {
    // Convert R logical to JSON boolean
    return Rcpp::as<bool>(first_element) ? "true" : "false";
  }

  if (t == "integer" || t == "float" || t == "double" || t == "long")
  {
    // Numeric types can be directly converted to string
    return safe_as_string(first_element);
  }

  if (t == "string")
  {
    // Strings need JSON escaping
    return json_escape(safe_as_string(first_element));
  }

  if (t == "timestamp")
  {
    // Timestamps are typically represented as numbers (e.g., Unix epoch)
    return std::to_string(static_cast<long long>(Rcpp::as<double>(first_element)));
  }

  // Default handling if no special type tag or unhandled tag
  int type = TYPEOF(first_element);
  switch (type)
  {
  case STRSXP:
    return json_escape(safe_as_string(first_element));
  case NILSXP:
    return "[]"; // Represent R NULL as JSON []
  case LGLSXP:
    return Rcpp::as<bool>(first_element) ? "true" : "false";
  case RAWSXP:
    // Default raw handling if not explicitly tagged as "blob" but is raw
    return "\"" + base64_encode(Rcpp::as<Rcpp::RawVector>(first_element)) + "\"";
  case INTSXP:
  case REALSXP:
    // Numeric types as default
    return safe_as_string(first_element);
  default:
    // Fallback for any other type (e.g., complex, vector of length > 1 for atomic types
    // that somehow slipped through `guess_type` and ended up here).
    // Coerce to string and then escape if it's a string, otherwise just stringify.
    return json_escape(safe_as_string(first_element));
  }
}

// Builds JSON for list types (R lists that map to JSON arrays)
std::string json_build_list(SEXP values)
{
  R_xlen_t n = Rf_length(values);
  if (n == 0)
    return "[]"; // Empty list is an empty JSON array

  std::vector<std::string> elems;
  elems.reserve(n); // Pre-allocate for efficiency

  for (R_xlen_t i = 0; i < n; i++)
  {
    // Recursively build JSON for each element
    std::string elem_json = json_build_any(VECTOR_ELT(values, i));
    // Only add non-empty elements, excluding "empty" JSON array/object strings
    if (!elem_json.empty() && elem_json != "[]" && elem_json != "{}")
    {
      elems.push_back(std::move(elem_json)); // Use move for efficiency
    }
  }

  if (elems.empty())
    return "[]"; // If all elements were empty or filtered out

  // Build the final JSON array string
  size_t total_size = 2; // for []
  for (const auto &elem : elems)
  {
    total_size += elem.size() + 1; // +1 for comma
  }

  std::string result;
  result.reserve(total_size);
  result += '[';

  for (size_t i = 0; i < elems.size(); ++i)
  {
    if (i > 0)
      result += ','; // Add comma separator
    result += elems[i];
  }
  result += ']';

  return result;
}

// Builds JSON for structure types (R named lists that map to JSON objects)
std::string json_build_structure(SEXP values)
{
  // Handle 'payload' tag
  std::string payload_name = tag_get(values, "payload");
  if (!payload_name.empty())
  {
    // Get the names of the R object 'values'
    SEXP names_sexp = Rf_getAttrib(values, symbol_cache.names_sym);

    // If 'values' is not a named list, or if it's empty, we can't subset it by name
    if (Rf_isNull(names_sexp) || Rf_length(names_sexp) == 0)
    {
      return "{}";
    }

    SEXP payload_val = R_NilValue; // Initialize to R_NilValue
    bool found_payload = false;

    // Iterate through the names to find the index of payload_name
    for (R_xlen_t i = 0; i < Rf_length(names_sexp); ++i)
    {
      if (strcmp(CHAR(STRING_ELT(names_sexp, i)), payload_name.c_str()) == 0)
      {
        payload_val = VECTOR_ELT(values, i); // Get the actual SEXP element
        found_payload = true;
        break;
      }
    }

    // If payload_name was not found as a key, or if its value is NULL/empty
    if (!found_payload || Rf_isNull(payload_val) || Rf_length(payload_val) == 0)
    {
      return "{}";
    }

    // Recursively build JSON for the payload's value
    return json_build_any(payload_val);
  }

  SEXP names = Rf_getAttrib(values, symbol_cache.names_sym);
  if (Rf_isNull(names) || Rf_length(names) == 0)
  {
    return "{}"; // Empty structure is an empty JSON object
  }

  R_xlen_t n = Rf_length(values);
  std::vector<std::string> fields;
  fields.reserve(n); // Pre-allocate

  for (R_xlen_t i = 0; i < n; i++)
  {
    SEXP val = VECTOR_ELT(values, i); // Get the element from the list

    // Skip fields based on specific tags
    if (tag_get(val, "json") == "-" ||       // Tag to explicitly skip
        !tag_get(val, "location").empty() || // For HTTP location
        !tag_get(val, "ignore").empty())
    { // General ignore tag
      continue;
    }

    // Handle idempotency token generation if the field is empty and tagged
    if (!tag_get(val, "idempotencyToken").empty() && Rf_length(val) == 0)
    {
      std::string uuid_str = generate_uuid_v4(); // Generate UUID
      SEXP uuid_val = Rf_allocVector(STRSXP, 1);
      SET_STRING_ELT(uuid_val, 0, Rf_mkChar(uuid_str.c_str()));
      Rf_copyMostAttrib(val, uuid_val); // Copy attributes from original (empty) field
      val = uuid_val;                   // Use the newly created UUID SEXP
    }

    std::string key = CHAR(STRING_ELT(names, i));         // Get the field name
    std::string loc_name = tag_get(val, "locationName");  // Check for locationName tag
    std::string name = loc_name.empty() ? key : loc_name; // Use locationName if present

    std::string json_val = json_build_any(val); // Recursively build JSON for field value
    // Only add non-empty fields, excluding "empty" JSON array/object strings
    if (!json_val.empty() && json_val != "[]" && json_val != "{}")
    {
      fields.push_back(json_escape(name) + ":" + json_val); // Add "key":value pair
    }
  }

  if (fields.empty())
    return "{}"; // If no valid fields remain

  // Build the final JSON object string
  size_t total_size = 2; // for {}
  for (const auto &field : fields)
  {
    total_size += field.size() + 1; // +1 for comma
  }

  std::string result;
  result.reserve(total_size);
  result += '{';

  for (size_t i = 0; i < fields.size(); ++i)
  {
    if (i > 0)
      result += ','; // Add comma separator
    result += fields[i];
  }
  result += '}';

  return result;
}

// Builds JSON for map types (R lists treated as JSON objects with sorted keys)
inline std::string json_build_map(SEXP values)
{
  if (Rf_length(values) == 0)
  {
    return "{}"; // Empty map is an empty JSON object
  }

  SEXP names_sexp = Rf_getAttrib(values, symbol_cache.names_sym);
  // Ensure the SEXP has names and the number of names matches the number of elements.
  if (Rf_isNull(names_sexp) || Rf_length(names_sexp) != Rf_length(values))
  {
    return "{}";
  }

  // Create a vector of pairs to hold the key (name) and the value (SEXP)
  std::vector<std::pair<std::string, SEXP>> named_elements;
  R_xlen_t n = Rf_length(values);
  named_elements.reserve(n);

  // Populate the vector with key-value pairs from the R object
  for (R_xlen_t i = 0; i < n; ++i)
  {
    std::string key = CHAR(STRING_ELT(names_sexp, i));
    SEXP val = VECTOR_ELT(values, i);
    named_elements.push_back({key, val});
  }

  // Sort the vector based on the string key in each pair
  std::sort(named_elements.begin(), named_elements.end(),
            [](const auto &a, const auto &b)
            {
              return a.first < b.first;
            });

  std::vector<std::string> json_pairs;
  json_pairs.reserve(n);

  // Iterate through the sorted key-value pairs to build JSON
  for (const auto &element : named_elements)
  {
    std::string key = element.first;
    SEXP val = element.second;

    // Recursively build JSON for the value
    std::string json_val = json_build_any(val);

    // Only add non-empty pairs to the final JSON string
    if (!json_val.empty() && json_val != "[]" && json_val != "{}")
    {
      json_pairs.push_back(json_escape(key) + ":" + json_val);
    }
  }

  if (json_pairs.empty())
  {
    return "{}";
  }

  // Combine pairs into a final JSON string
  std::string result = "{";
  for (size_t i = 0; i < json_pairs.size(); ++i)
  {
    if (i > 0)
      result += ',';
    result += json_pairs[i];
  }
  result += '}';

  return result;
}

/**
 * @brief Build Json Strings Using AWS Attributes for JSON Template
 *
 * @param object A list to be parsed into JSON string
 *
 * @return a JSON String
 */
//' @useDynLib paws.common _paws_common_json_build_any
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
std::string json_build_any(SEXP values)
{
  // Determine the effective type of the R object for JSON building
  std::string t = type(values);

  // Dispatch to the appropriate JSON building function based on the determined type
  if (t == "structure")
    return json_build_structure(values);
  if (t == "list")
    return json_build_list(values);
  if (t == "map")
    return json_build_map(values);
  // Default to scalar if none of the above, or if `type` returns "scalar"
  return json_build_scalar(values);
}
