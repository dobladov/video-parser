import 'package:video_parser/helpers.dart';

final regex = {
  'name': r'(?<name>.*)((?=s\d)|(?=\dx\d)|(?=\W\d{4}\W))',
  'year': r'\(?(?<year>\d{4})[^\w]',
  'season': r'S(?<season>\d+)E\d+',
  'seasonV2': r'\W(?<seasonV2>\d+)x\d+\W',
  'episode': r'S\d+E(?<episode>\d+)',
  'episodeV2': r'\W\d+x(?<episodeV2>\d+)\W',
  'episodeAnime': r'\WE(?<episodeAnime>\d+\W)',
  // Complete language using: https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
  'language':
      r'\W(?<language>(eng|rus|esp|fra|deu|chi|jap|kor|ara|por|hin|ita|vie|tur))\W',
  'resolution': r'(?<resolution>4k|\d{3,4}(p|i))',
  'codec': r'(?<codec>(xvid|HEVC|(x|h)(264|265)))',
  'size': r'(?<size>\d+(mb|gb))',
  'source':
      r'(?<source>(HDCam|CamRip|BDRip|HDTV|DVDRIP|DVD\WRip|(DVD(scr)?)|Netflix|WebRip|Blueray|bluray|HDRip|WEBRip|brrip|AMZN|WEB-DL|WEB\WDL))',
  'audio': r'(?<audio>(VoRbis|AC3|AAC|DD)(\W)?(\d\W\d)?)',
  'color': r'(?<color>(\d+bit|HDR)\W)',
  'format': r'(?<format>(mkv|mp4|avi|matroska))',
  'group': r'\W(\[|\{)?(?<group>(\w|\d){3,})(\]|\})?$'
};

RegExp createRegExp(String re) {
  return RegExp(
    re,
    caseSensitive: false,
  );
}

Map<String, String> parseName(String name) {
  final results = <String, String>{};

  regex.forEach((key, re) {
    var result = createRegExp(re).firstMatch(name)?.namedGroup(key);
    if (result != null) {
      if (key == 'language' || key == 'codec' || key == 'source') {
        result = result.toLowerCase();
      }
      if (key == 'seasonV2') {
        results['season'] = result;
      }
      if (key == 'episodeV2') {
        results['episode'] = result;
      }
      // Avoid cleaning the . from 5.1
      if (key == 'audio' || key == 'codec') {
        results[key] = result;
      } else {
        results[key] = clean(result);
      }
    }
  });
  return results;
}
