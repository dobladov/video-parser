/// Cleans any dots or empty spaces from a string
String clean(String str) {
  return str.replaceAll('\.', ' ').trim();
}

// Creates a regex with the given string pattern
RegExp createRegExp(String re) {
  return RegExp(
    re,
    caseSensitive: false,
  );
}
