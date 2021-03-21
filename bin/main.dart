import 'dart:io';
import 'dart:convert';
import 'package:args/args.dart';
import 'package:video_parser/parseName.dart';

final packageVersion = '1.0.0';

void main(List<String> arguments) {
  var parser = ArgParser();

  parser.addOption('parse',
      abbr: 'p', help: 'String with the name of the show/movie');
  parser.addOption('indent',
      abbr: 'i', help: 'Pretty print the object with the given numeric indent');
  parser.addFlag('version',
      abbr: 'v', help: 'Current version', negatable: false);

  var args = parser.parse(arguments);
  var name = args['parse'];
  var indent = args['indent'];
  var version = args['version'];

  if (version) {
    print('v$packageVersion');
    exit(0);
  }

  if (name != null) {
    var encoder = indent != null
        ? JsonEncoder.withIndent(' ' * int.parse(indent))
        : JsonEncoder();
    print(encoder.convert(parseName(name)));
  } else {
    print(parser.usage);
  }
}
