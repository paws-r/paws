#ifndef ENCODING_H
#define ENCODING_H

#include <unordered_set>
#include <vector>
#include <bitset>
#include <string>

// Precomputed hex conversion lookup table
extern const char hex_chars[];

// Precomputed unreserved characters lookup table
extern const std::bitset<256> unreserved_chars_map;

// Function to convert a hex character to its decimal value
inline int from_hex(char ch)
{
    if ('0' <= ch && ch <= '9')
        return ch - '0';
    if ('a' <= ch && ch <= 'f')
        return ch - 'a' + 10;
    if ('A' <= ch && ch <= 'F')
        return ch - 'A' + 10;
    return -1; // Invalid hex character
}

// Function to convert a character to its hex representation
inline std::string to_hex(char x)
{
    std::string output;
    output.push_back(hex_chars[(x & 0xF0) >> 4]);
    output.push_back(hex_chars[x & 0x0F]);
    return output;
}

// Function to escape a URL-encoded string
std::string internal_url_encode(const std::string &url, const std::string &safe);

// Function to unescape a URL-encoded string
std::string internal_url_unencode(const std::string &url);

#endif // ENCODING_H
