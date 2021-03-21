# VideoParser

CLI app/package to extract metadata from a movie or TV show name.

## Usage

```bash
video-parser -p "Dawn.Of.The.Planet.of.The.Apes.2014.1080p.WEB-DL.DD51.H264-RARBG
```

Result
```json
{
   "name": "Dawn Of The Planet of The Apes",
   "year": 2014,
   "resolution": "1080p",
   "codec": "h264",
   "source": "web-dl",
   "audio": "DD"
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
