#ifndef UUID_GENERATOR_H
#define UUID_GENERATOR_H

#include <string>

std::string generate_uuid_v4();
std::string base64_encode(const Rcpp::RawVector& bytes);

#endif // UUID_GENERATOR_H
