import 'package:args/args.dart';
import 'package:video_parser/parseName.dart';

void main(List<String> arguments) {
  var parser = ArgParser();

  parser.addOption('parse',
      abbr: 'p', help: 'String with the full name of the show or movie');

  var args = parser.parse(arguments);
  var name = args['parse'];

  if (name != null) {
    print(parseName(name));
  } else {
    print(parser.usage);
  }
}
