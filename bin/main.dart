import 'package:args/args.dart';
import 'package:main/parseName.dart';

void main(List<String> arguments) {
  var parser = ArgParser();

  parser.addOption('parse',
      abbr: 'p', help: 'String with the full name of the show or movie');
  parser.addOption('language',
      abbr: 'l', help: 'Target language for the subtitles');

  var args = parser.parse(arguments);
  var name = args['parse'];
  var language = args['language'];

  if (name != null) {
    print(parseName(name));

    if (language != null) {
      // Validate the language with the supported ones
      // Search for subtitles in all provides
    }
  } else {
    print(parser.usage);
  }
}
