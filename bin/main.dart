import 'package:args/args.dart';
import 'package:main/parseName.dart';

void main(List<String> arguments) {
  var parser = ArgParser();

  parser.addOption('parse',
      abbr: 'p', help: 'String with the full name of the show or movie');
  var args = parser.parse(arguments);
  var name = args['parse'];

  if (name != null) {
    parseName(name);
  } else {
    print(parser.usage);
  }
}
