/// Clenas any dots or empty spaces from a string
String clean(String str) {
  return str.replaceAll('\.', ' ').trim();
}
