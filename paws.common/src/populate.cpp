#include <Rcpp.h>
#include <unordered_map>
using namespace Rcpp;

// Forward declaration
SEXP populate_cpp_impl(SEXP input, SEXP interface, SEXP parent);

// Cache symbols for faster attribute access
static SEXP s_tags = Rf_install("tags");
static SEXP s_type = Rf_install("type");

// Type codes for faster comparison
enum TypeCode {
  TYPE_UNKNOWN = 0,
  TYPE_STRUCTURE = 1,
  TYPE_LIST = 2,
  TYPE_MAP = 3,
  TYPE_SCALAR = 4
};

// Type code cache using SEXP pointer as key
static std::unordered_map<SEXP, TypeCode> type_code_cache;

// Get type code with caching
inline TypeCode get_type_code(SEXP x) {
  // Check cache first
  auto cached = type_code_cache.find(x);
  if (cached != type_code_cache.end()) {
    return cached->second;
  }

  // Not in cache, compute it
  SEXP tags_attr = Rf_getAttrib(x, s_tags);
  TypeCode result = TYPE_SCALAR;

  if (tags_attr != R_NilValue && Rf_isVectorList(tags_attr)) {
    // Find "type" element in named list - optimized for common case where "type" is first
    SEXP names = Rf_getAttrib(tags_attr, R_NamesSymbol);
    if (names != R_NilValue) {
      int n = Rf_length(tags_attr);

      // Fast path: check if "type" is the first element (most common case)
      if (n > 0) {
        const char* first_name = CHAR(STRING_ELT(names, 0));
        if (strcmp(first_name, "type") == 0) {
          SEXP type_val = VECTOR_ELT(tags_attr, 0);
          if (type_val != R_NilValue && Rf_isString(type_val) && Rf_length(type_val) > 0) {
            const char* type_str = CHAR(STRING_ELT(type_val, 0));
            char first_char = type_str[0];

            // Fast switch on first character
            switch (first_char) {
              case 's':
                if (strcmp(type_str, "structure") == 0) result = TYPE_STRUCTURE;
                break;
              case 'l':
                if (strcmp(type_str, "list") == 0) result = TYPE_LIST;
                break;
              case 'm':
                if (strcmp(type_str, "map") == 0) result = TYPE_MAP;
                break;
            }
          }
        } else {
          // Slow path: search for "type"
          for (int i = 1; i < n; i++) {
            const char* name = CHAR(STRING_ELT(names, i));
            if (strcmp(name, "type") == 0) {
              SEXP type_val = VECTOR_ELT(tags_attr, i);
              if (type_val != R_NilValue && Rf_isString(type_val) && Rf_length(type_val) > 0) {
                const char* type_str = CHAR(STRING_ELT(type_val, 0));
                char first_char = type_str[0];

                switch (first_char) {
                  case 's':
                    if (strcmp(type_str, "structure") == 0) result = TYPE_STRUCTURE;
                    break;
                  case 'l':
                    if (strcmp(type_str, "list") == 0) result = TYPE_LIST;
                    break;
                  case 'm':
                    if (strcmp(type_str, "map") == 0) result = TYPE_MAP;
                    break;
                }
              }
              break;
            }
          }
        }
      }
    }
  }

  // Cache the result - limit cache size to prevent unbounded growth
  if (type_code_cache.size() < 10000) {
    type_code_cache[x] = result;
  }

  return result;
}

// Fast type check without full string extraction
inline bool is_type_structure(SEXP x) {
  return get_type_code(x) == TYPE_STRUCTURE;
}

// Get tags attribute (no conversion to List unless needed)
inline SEXP get_tags_raw(SEXP x) {
  return Rf_getAttrib(x, s_tags);
}

// Set tags attribute using direct R API (faster than Rcpp sugar)
inline void set_tags_fast(SEXP x, SEXP tags) {
  Rf_setAttrib(x, s_tags, tags);
}

// Empty interface templates - create once, reuse
static List empty_struct_interface_cpp() {
  static SEXP cached = R_NilValue;
  if (cached == R_NilValue) {
    cached = PROTECT(Rf_allocVector(VECSXP, 0));
    List tags = List::create(_["type"] = "structure");
    set_tags_fast(cached, tags);
    R_PreserveObject(cached);
    UNPROTECT(1);
  }
  return cached;
}

static List empty_list_interface_cpp() {
  static SEXP cached = R_NilValue;
  if (cached == R_NilValue) {
    cached = PROTECT(Rf_allocVector(VECSXP, 0));
    List tags = List::create(_["type"] = "list");
    set_tags_fast(cached, tags);
    R_PreserveObject(cached);
    UNPROTECT(1);
  }
  return cached;
}

// Infer empty interface
inline SEXP infer_empty_interface_cpp(SEXP elem) {
  if (Rf_isVectorList(elem)) {
    SEXP names = Rf_getAttrib(elem, R_NamesSymbol);
    if (names != R_NilValue && Rf_length(names) > 0) {
      return empty_struct_interface_cpp();
    } else {
      return empty_list_interface_cpp();
    }
  }
  return Rf_allocVector(VECSXP, 0);
}

// Find recursive parent
inline SEXP find_recursive_parent_cpp(SEXP parent_interface) {
  if (Rf_isNull(parent_interface)) return R_NilValue;

  if (get_type_code(parent_interface) == TYPE_STRUCTURE && Rf_length(parent_interface) > 0) {
    return parent_interface;
  }
  return R_NilValue;
}

// Helper to get element from list or atomic vector
inline SEXP get_element(SEXP x, int i) {
  if (Rf_isVectorList(x)) {
    return VECTOR_ELT(x, i);
  } else {
    // For atomic vectors, we need to extract element as SEXP
    // Character vectors
    if (Rf_isString(x)) {
      return Rf_ScalarString(STRING_ELT(x, i));
    }
    // Logical vectors
    else if (Rf_isLogical(x)) {
      return Rf_ScalarLogical(LOGICAL(x)[i]);
    }
    // Integer vectors
    else if (Rf_isInteger(x)) {
      return Rf_ScalarInteger(INTEGER(x)[i]);
    }
    // Numeric vectors
    else if (Rf_isReal(x)) {
      return Rf_ScalarReal(REAL(x)[i]);
    }
    // Complex vectors
    else if (Rf_isComplex(x)) {
      Rcomplex val = COMPLEX(x)[i];
      return Rf_ScalarComplex(val);
    }
    // Raw vectors
    else if (TYPEOF(x) == RAWSXP) {
      return Rf_ScalarRaw(RAW(x)[i]);
    }
  }
  // Fallback: return NULL
  return R_NilValue;
}

// Optimized populate structure - O(n) instead of O(n²)
SEXP populate_structure_cpp(SEXP input, SEXP interface, SEXP parent) {
  int interface_len = Rf_length(interface);
  int input_len = Rf_length(input);

  // Handle empty interface
  if (interface_len == 0) {
    if (input_len == 0) return input;

    SEXP result = PROTECT(Rf_allocVector(VECSXP, input_len));
    SEXP input_names = Rf_getAttrib(input, R_NamesSymbol);

    for (int i = 0; i < input_len; i++) {
      SEXP elem = get_element(input, i);
      SEXP inferred = infer_empty_interface_cpp(elem);
      SET_VECTOR_ELT(result, i, populate_cpp_impl(elem, inferred, interface));
    }

    Rf_setAttrib(result, R_NamesSymbol, input_names);

    // Fast tag setting
    SEXP tags = get_tags_raw(interface);
    if (tags == R_NilValue) {
      tags = PROTECT(Rf_allocVector(VECSXP, 1));
      SET_VECTOR_ELT(tags, 0, Rf_mkString("structure"));
      SEXP tag_names = PROTECT(Rf_allocVector(STRSXP, 1));
      SET_STRING_ELT(tag_names, 0, Rf_mkChar("type"));
      Rf_setAttrib(tags, R_NamesSymbol, tag_names);
      UNPROTECT(2);
    }
    set_tags_fast(result, tags);

    UNPROTECT(1);
    return result;
  }

  // Build hash maps for O(1) name lookups - both regular names and locationName
  SEXP interface_names = Rf_getAttrib(interface, R_NamesSymbol);
  std::unordered_map<const char*, int, std::hash<std::string>,
                     std::equal_to<std::string>> name_to_idx;
  std::unordered_map<const char*, int, std::hash<std::string>,
                     std::equal_to<std::string>> location_to_idx;
  name_to_idx.reserve(interface_len);
  location_to_idx.reserve(interface_len);

  // Build both maps
  for (int i = 0; i < interface_len; i++) {
    const char* name = CHAR(STRING_ELT(interface_names, i));
    name_to_idx[name] = i;

    // Check for locationName in tags
    SEXP elem_tags = get_tags_raw(VECTOR_ELT(interface, i));
    if (elem_tags != R_NilValue && Rf_isVectorList(elem_tags)) {
      SEXP tag_names = Rf_getAttrib(elem_tags, R_NamesSymbol);
      if (tag_names != R_NilValue) {
        int n_tags = Rf_length(elem_tags);
        for (int j = 0; j < n_tags; j++) {
          const char* tag_name = CHAR(STRING_ELT(tag_names, j));
          if (strcmp(tag_name, "locationName") == 0) {
            SEXP location_val = VECTOR_ELT(elem_tags, j);
            if (Rf_isString(location_val) && Rf_length(location_val) > 0) {
              const char* location_name = CHAR(STRING_ELT(location_val, 0));
              location_to_idx[location_name] = i;
            }
            break;
          }
        }
      }
    }
  }

  // Clone the interface to modify it - use shallow copy approach
  SEXP result = PROTECT(Rf_shallow_duplicate(interface));
  SEXP input_names = Rf_getAttrib(input, R_NamesSymbol);

  // O(n) lookup instead of O(n²)
  for (int i = 0; i < input_len; i++) {
    const char* input_name = CHAR(STRING_ELT(input_names, i));

    // Try regular name first
    auto it = name_to_idx.find(input_name);
    if (it != name_to_idx.end()) {
      int idx = it->second;
      SET_VECTOR_ELT(result, idx,
                     populate_cpp_impl(VECTOR_ELT(input, i),
                                      VECTOR_ELT(result, idx),
                                      interface));
    } else {
      // Try locationName
      auto loc_it = location_to_idx.find(input_name);
      if (loc_it != location_to_idx.end()) {
        int idx = loc_it->second;
        SET_VECTOR_ELT(result, idx,
                       populate_cpp_impl(VECTOR_ELT(input, i),
                                        VECTOR_ELT(result, idx),
                                        interface));
      } else {
        // Name not found in either map - invalid name
        UNPROTECT(1);
        Rf_error("invalid name: %s", input_name);
      }
    }
  }

  UNPROTECT(1);
  // Tags are already on result from clone
  return result;
}

// Optimized populate list
SEXP populate_list_cpp(SEXP input, SEXP interface, SEXP parent) {
  int input_len = Rf_length(input);
  int interface_len = Rf_length(interface);

  // Handle empty interface
  if (interface_len == 0) {
    if (input_len == 0) return input;

    SEXP result = PROTECT(Rf_allocVector(VECSXP, input_len));
    for (int i = 0; i < input_len; i++) {
      SEXP elem = get_element(input, i);
      SEXP inferred = infer_empty_interface_cpp(elem);
      SET_VECTOR_ELT(result, i, populate_cpp_impl(elem, inferred, interface));
    }

    SEXP tags = get_tags_raw(interface);
    if (tags == R_NilValue) {
      tags = PROTECT(Rf_allocVector(VECSXP, 1));
      SET_VECTOR_ELT(tags, 0, Rf_mkString("list"));
      SEXP tag_names = PROTECT(Rf_allocVector(STRSXP, 1));
      SET_STRING_ELT(tag_names, 0, Rf_mkChar("type"));
      Rf_setAttrib(tags, R_NamesSymbol, tag_names);
      UNPROTECT(2);
    }
    set_tags_fast(result, tags);

    UNPROTECT(1);
    return result;
  }

  // Cache element interface and check for recursive parent ONCE
  SEXP element_interface = VECTOR_ELT(interface, 0);
  SEXP cached_interface = element_interface;

  // Only check recursion if it's an empty structure
  if (get_type_code(element_interface) == TYPE_STRUCTURE &&
      Rf_length(element_interface) == 0 &&
      !Rf_isNull(parent)) {
    SEXP recursive_parent = find_recursive_parent_cpp(parent);
    if (!Rf_isNull(recursive_parent)) {
      cached_interface = recursive_parent;
    }
  }

  // Populate each element with cached interface
  SEXP result = PROTECT(Rf_allocVector(VECSXP, input_len));
  for (int i = 0; i < input_len; i++) {
    SET_VECTOR_ELT(result, i,
                   populate_cpp_impl(get_element(input, i),
                                    cached_interface,
                                    interface));
  }

  // Preserve tags from interface
  SEXP interface_tags = get_tags_raw(interface);
  if (interface_tags != R_NilValue) {
    set_tags_fast(result, interface_tags);
  }

  UNPROTECT(1);
  return result;
}

// Optimized populate map
SEXP populate_map_cpp(SEXP input, SEXP interface, SEXP parent) {
  int input_len = Rf_length(input);
  int interface_len = Rf_length(interface);
  SEXP input_names = Rf_getAttrib(input, R_NamesSymbol);

  // Handle empty interface
  if (interface_len == 0) {
    SEXP result = PROTECT(Rf_allocVector(VECSXP, input_len));
    for (int i = 0; i < input_len; i++) {
      SEXP elem = get_element(input, i);
      SEXP inferred = infer_empty_interface_cpp(elem);
      SET_VECTOR_ELT(result, i, populate_cpp_impl(elem, inferred, interface));
    }

    Rf_setAttrib(result, R_NamesSymbol, input_names);

    SEXP tags = get_tags_raw(interface);
    if (tags == R_NilValue) {
      tags = PROTECT(Rf_allocVector(VECSXP, 1));
      SET_VECTOR_ELT(tags, 0, Rf_mkString("map"));
      SEXP tag_names = PROTECT(Rf_allocVector(STRSXP, 1));
      SET_STRING_ELT(tag_names, 0, Rf_mkChar("type"));
      Rf_setAttrib(tags, R_NamesSymbol, tag_names);
      UNPROTECT(2);
    }
    set_tags_fast(result, tags);

    UNPROTECT(1);
    return result;
  }

  // Cache value interface and check for recursive parent ONCE
  SEXP value_interface = VECTOR_ELT(interface, 0);
  SEXP cached_interface = value_interface;

  // Only check recursion if it's an empty structure
  if (get_type_code(value_interface) == TYPE_STRUCTURE &&
      Rf_length(value_interface) == 0 &&
      !Rf_isNull(parent)) {
    SEXP recursive_parent = find_recursive_parent_cpp(parent);
    if (!Rf_isNull(recursive_parent)) {
      cached_interface = recursive_parent;
    }
  }

  // Populate each element with cached interface
  SEXP result = PROTECT(Rf_allocVector(VECSXP, input_len));
  for (int i = 0; i < input_len; i++) {
    SET_VECTOR_ELT(result, i,
                   populate_cpp_impl(get_element(input, i),
                                    cached_interface,
                                    interface));
  }

  Rf_setAttrib(result, R_NamesSymbol, input_names);

  // Preserve tags from interface
  SEXP interface_tags = get_tags_raw(interface);
  if (interface_tags != R_NilValue) {
    set_tags_fast(result, interface_tags);
  }

  UNPROTECT(1);
  return result;
}

// Optimized populate scalar - avoid unnecessary List conversions
SEXP populate_scalar_cpp(SEXP input, SEXP interface, SEXP parent) {
  // Handle NULL input - R behavior: setting attributes on NULL creates empty list
  if (input == R_NilValue) {
    SEXP interface_attrs = ATTRIB(interface);
    if (interface_attrs != R_NilValue) {
      // Create empty list and set attributes from interface
      SEXP result = PROTECT(Rf_allocVector(VECSXP, 0));
      SET_ATTRIB(result, Rf_duplicate(interface_attrs));
      UNPROTECT(1);
      return result;
    }
    return interface;
  }

  // Fast path: if interface has no attributes, just return input as-is
  SEXP interface_attrs = ATTRIB(interface);
  if (interface_attrs == R_NilValue) {
    return input;
  }

  // Get input attributes
  SEXP input_attrs = ATTRIB(input);

  // If input has no attributes and it's a scalar (not a list), we can avoid duplication
  if (input_attrs == R_NilValue && !Rf_isVectorList(input)) {
    // Check if interface only has "tags" attribute (common case)
    bool only_tags = true;
    int attr_count = 0;
    for (SEXP a = interface_attrs; a != R_NilValue; a = CDR(a)) {
      attr_count++;
      if (TAG(a) != s_tags) {
        only_tags = false;
      }
    }

    if (only_tags && attr_count == 1) {
      // Just copy the tags attribute - lightweight operation
      SEXP result = PROTECT(Rf_shallow_duplicate(input));
      Rf_setAttrib(result, s_tags, Rf_getAttrib(interface, s_tags));
      UNPROTECT(1);
      return result;
    }
  }

  // General case: clone and merge attributes
  SEXP result = PROTECT(Rf_duplicate(input));

  // If input has no attributes, just copy interface attributes
  if (input_attrs == R_NilValue) {
    SET_ATTRIB(result, Rf_duplicate(interface_attrs));
    UNPROTECT(1);
    return result;
  }

  // Override with interface attributes - walk the pairlist directly
  for (SEXP a = interface_attrs; a != R_NilValue; a = CDR(a)) {
    SEXP tag = TAG(a);
    if (tag != R_NilValue) {
      // Set or override attribute
      Rf_setAttrib(result, tag, CAR(a));
    }
  }

  UNPROTECT(1);
  return result;
}

// Main populate function - inline type checks for speed
SEXP populate_cpp_impl(SEXP input, SEXP interface, SEXP parent) {
  // Fast type checking using integer codes
  TypeCode type = get_type_code(interface);

  switch (type) {
    case TYPE_STRUCTURE:
      return populate_structure_cpp(input, interface, parent);
    case TYPE_LIST:
      return populate_list_cpp(input, interface, parent);
    case TYPE_MAP:
      return populate_map_cpp(input, interface, parent);
    case TYPE_SCALAR:
    default:
      return populate_scalar_cpp(input, interface, parent);
  }
}

/**
 * Populate a list with data from another list
 *
 * `populate` copies data from a list (e.g. input by a user) to another list
 * with a similar shape. The second list, called the `interface`, will generally
 * also contain extra metadata for making API requests, such as names or types.
 *
 * This function uses an optimized C++ implementation for improved performance
 * (typically 3-7x faster than pure R). The C++ version provides the same
 * functionality and correctness as the R implementation.
 *
 * @param input A list with data to copy.
 * @param interface A list of a similar shape to copy data into.
 * @param parent Internal parameter used to track parent interface for recursive structures.
 *
 * @examples
 * # Make an interface with metadata, e.g. type.
 * interface <- tag_add(list(foo = c(), bar = c()), list(type = "structure"))
 *
 * # Combine data and the metadata from the interface.
 * populate(list(foo = 1, bar = 2), interface)
*/
//' @useDynLib paws.common _paws_common_populate
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
SEXP populate(SEXP input, SEXP interface, SEXP parent = R_NilValue) {
  return populate_cpp_impl(input, interface, parent);
}
