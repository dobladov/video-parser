# VideoParser

CLI app/package to extract metadata from a movie or TV show name.

### Arguments
```
-p, --parse      String with the name of the show/movie
-i, --indent     Pretty print the object with the given numeric indent
-v, --version    Current version
```

## Usage

```bash
video-parser -p "Dawn.Of.The.Planet.of.The.Apes.2014.1080p.WEB-DL.AAC5.1.H264-RARBG" -i 2
```

Result
```json
{
  "name": "Dawn Of The Planet of The Apes",
  "year": "2014",
  "resolution": "1080p",
  "codec": "h264",
  "source": "web-dl",
  "audio": "AAC5.1",
  "group": "RARBG"
}
```

### Build

```bash
mkdir build
./tool/build.sh
## video-parser should be available in build/
```

## License

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Todo

- [ ] Publish the package
   - [ ] Make possible to integrate it as a package
