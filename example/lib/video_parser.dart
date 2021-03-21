import 'package:video_parser/video_parser.dart';

void main() {
  final result = parseName(
      'Dawn.Of.The.Planet.of.The.Apes.2014.1080p.WEB-DL.AAC5.1.H264-RARBG');

  // {name: Dawn Of The Planet of The Apes, year: 2014, resolution: 1080p, codec: h264, source: web-dl, audio: AAC5.1, group: RARBG}
  print(result);
}
