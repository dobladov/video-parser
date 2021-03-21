import 'package:test/test.dart';
import 'package:video_parser/parseName.dart';

void main() {
  group('Parse names', () {
    test('for Attack.on.Titan.Shingeki.no.Kyojin.S04E10.E68.Eng.Sub.1080p.x264',
        () {
      final res = parseName(
          'Attack.on.Titan.Shingeki.no.Kyojin.S04E10.E68.Eng.Sub.1080p.x264');
      expect(res['name'], 'Attack on Titan Shingeki no Kyojin');
      expect(res['season'], '04');
      expect(res['episode'], '10');
      expect(res['episodeAnime'], '68');
      expect(res['language'], 'eng');
      expect(res['resolution'], '1080p');
      expect(res['codec'], 'x264');
    });
    test('for Hercules.2014.Extended.Cut.HDRip.XViD-juggs[ETRG]', () {
      final res =
          parseName('Hercules.2014.Extended.Cut.HDRip.XViD-juggs[ETRG]');
      expect(res['name'], 'Hercules');
      expect(res['year'], '2014');
      expect(res['codec'], 'xvid');
      expect(res['source'], 'hdrip');
      expect(res['group'], 'ETRG');
    });
    test('for The Purge: Election Year (2016) HC - 720p HDRiP - 900MB - ShAaNi',
        () {
      final res = parseName(
          'The Purge: Election Year (2016) HC - 720p HDRiP - 900MB - ShAaNi');
      expect(res['name'], 'The Purge: Election Year');
      expect(res['year'], '2016');
      expect(res['resolution'], '720p');
      expect(res['source'], 'hdrip');
      expect(res['group'], 'ShAaNi');
    });
    test('for The.Walking.Dead.S05E03.1080p.WEB-DL.DD5.1.H.264-Cyphanix[rartv]',
        () {
      final res = parseName(
          'The.Walking.Dead.S05E03.1080p.WEB-DL.DD5.1.H.264-Cyphanix[rartv]');
      expect(res['name'], 'The Walking Dead');
      expect(res['season'], '05');
      expect(res['episode'], '03');
      expect(res['resolution'], '1080p');
      expect(res['source'], 'web-dl');
      expect(res['audio'], 'DD5.1');
      expect(res['group'], 'rartv');
    });
    test('for Joker.2019.2160p.4K.BluRay.x265.10bit.HDR.AAC5.1', () {
      final res = parseName('Joker.2019.2160p.4K.BluRay.x265.10bit.HDR.AAC5.1');
      expect(res['name'], 'Joker');
      expect(res['year'], '2019');
      expect(res['resolution'], '2160p');
      expect(res['source'], 'bluray');
      expect(res['resolution'], '2160p');
      expect(res['codec'], 'x265');
    });
    test('for Guardians of the Galaxy (2014) Dual Audio DVDRip AVI', () {
      final res =
          parseName('Guardians of the Galaxy (2014) Dual Audio DVDRip AVI');
      expect(res['name'], 'Guardians of the Galaxy');
      expect(res['year'], '2014');
      expect(res['source'], 'dvdrip');
      expect(res['format'], 'AVI');
    });
  });
}
