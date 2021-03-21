import 'package:main/helpers.dart';

final regex = {
  'name': r"(?<name>.*)((?=s\d)|(?=\dx\d)|(?=\W\d{4}\W))",
  'year': r"\(?(?<year>\d{4})[^\w]",
};

RegExp createRegExp(String re) {
  return RegExp(
    re,
    caseSensitive: false,
    multiLine: false,
  );
}

Map<String, String> parseName(String name) {
  final results = <String, String>{};

  regex.forEach((key, re) {
    final result = createRegExp(re).firstMatch(name)?.namedGroup(key);

    if (result != null) {
      results[key] = clean(result);
    }
  });
  print(results);
  return results;
}
