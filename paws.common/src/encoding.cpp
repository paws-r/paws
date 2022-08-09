#include <Rcpp.h>
using namespace Rcpp;

// This encoder has been modified from the excellent urltools R package
// https://github.com/Ironholds/urltools/blob/master/src/encoding.cpp

std::string to_hex(char x){

  //Holding objects and output
  char digit_1 = (x&0xF0)>>4;
  char digit_2 = x&0x0F;
  std::string output;

  //Convert
  if(0 <= digit_1 && digit_1 <= 9){
    digit_1 += 48;
  } else if(10 <= digit_1 && digit_1 <=15){
    // ASCII values for upper case alphabets (A-Z):65 - 92
    digit_1 += 65-10;
  }
  if(0 <= digit_2 && digit_2 <= 9){
    digit_2 += 48;
  } else if(10 <= digit_2 && digit_2 <= 15){
    // ASCII values for upper case alphabets (A-Z):65 - 92
    digit_2 += 65-10;
  }
  output.append(&digit_1, 1);
  output.append(&digit_2, 1);
  return output;
}

std::string internal_url_encode(std::string url, std::string safe){

  //Base unreserved characters
  std::string unreserved_chars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ._~-";
  //Add any extra characters
  unreserved_chars.append(safe);

  //create unreserved characters map..
  std::unordered_set<char> unreserved_chars_map;
  for(int i=0; i < (signed) unreserved_chars.length(); i++){
    unreserved_chars_map.insert(unreserved_chars[i]);
  }

  //create an output string
  std::string output = "";
  //For each character..
  for(int i=0; i < (signed) url.length(); i++){

    //If it's in the list of reserved ones, just pass it through
    if (unreserved_chars_map.find(url[i]) != unreserved_chars_map.end()) {
      output.append(&url[i], 1);
      //Otherwise, append in an encoded form.
    } else {
      output.append("%");
      output.append(to_hex(url[i]));
    }
  }

  //Return
  return output;
}

// Escape characters for use in URLs.
// param urls A character vector to be encoded
// param safe A characters of extra that should not be encoded
//' @useDynLib paws.common _paws_common_paws_url_encoder
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
CharacterVector paws_url_encoder(CharacterVector urls, CharacterVector safe = ""){

  //Measure size, create output object and holding objects
  int input_size = urls.size();
  CharacterVector output(input_size);
  std::string safe_pattern = Rcpp::as<std::string>(safe);
  std::string holding;
  size_t scheme_start;
  size_t first_slash;

  //For each string..
  for (int i = 0; i < input_size; ++i){

    //Check for user interrupts.
    if((i % 10000) == 0){
      Rcpp::checkUserInterrupt();
    }

    if(urls[i] == NA_STRING){
      output[i] = NA_STRING;
    } else {
      holding = Rcpp::as<std::string>(urls[i]);

      //Extract the protocol. If you can't find it, just encode the entire thing.
      scheme_start = holding.find("://");
      if(scheme_start == std::string::npos){
        output[i] = internal_url_encode(holding, safe_pattern);
      } else {
        //Otherwise, split out the protocol and encode !protocol.
        first_slash = holding.find("/", scheme_start+3);
        if(first_slash == std::string::npos){
          output[i] = holding.substr(0,scheme_start+3) + internal_url_encode(holding.substr(scheme_start+3), safe_pattern);
        } else {
          output[i] = holding.substr(0,first_slash+1) + internal_url_encode(holding.substr(first_slash+1), safe_pattern);
        }
      }
    }
  }

  //Return
  return output;
}
