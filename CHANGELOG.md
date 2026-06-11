## 2.0.0

- Upgraded to [Supertonic 3](https://huggingface.co/Supertone/supertonic-3) models (~401 MB, downloaded from `Supertone/supertonic-3`)
- Expanded language support from 5 to 31 languages, plus a language-agnostic mode (`language: 'na'`) for input whose language is unknown
- Documented expression tag support: simple inline tags such as `<laugh>`, `<breath>`, and `<sigh>` add natural expression to synthesized speech
- Japanese text now uses the same 120-character chunking limit as Korean (matches upstream)
- Model cache moved to a versioned `supertonic_models_v3` directory; stale Supertonic 2 caches are deleted automatically on first use

## 1.0.0

- Auto-download model files from HuggingFace when not bundled as assets
- Three-strategy model loading: local cache → bundled Flutter assets → network download
- Added `SupertonicTTS.preDownloadModels()` for explicit model pre-downloading with progress callback
- Added `SupertonicTTS.modelsReady()` to check if models are available locally
- Added `DownloadProgressCallback` typedef for download progress reporting
- Bundled assets still supported — no code changes needed for existing setups

## 0.1.5

- Added Web platform support
- Added web plugin registration (`SupertonicFlutterWebPlugin`)
- Reworked ONNX model loading to use asset-based session creation across platforms
- Added Web setup instructions for loading `onnxruntime-web` in `web/index.html`
- Fixed Web TTS inference for `tensor(int64)` model inputs
- Updated audio playback to in-memory byte source for better cross-platform compatibility

## 0.1.4

- Added Linux desktop support
- Migrated from just_audio to audioplayers for cross-platform audio playback

## 0.1.3

- Removed verbose logs at init

## 0.1.2

- Added comprehensive inline documentation for all public APIs
  - Enhanced TTSConfig with detailed parameter documentation including quality/speed trade-offs
  - Added detailed voice style descriptions for all 10 voices (M1-M5, F1-F5)
  - Documented all supported languages with examples
  - Added usage examples throughout the API
- Removed redundant `gender` field from `TTSVoiceStyle` (gender is indicated by voice code prefix)
- Improved code documentation for better IDE hover tooltips
- Updated example app to include silence duration slider, making all TTSConfig parameters adjustable from UI

## 0.1.1

- Minor README improvements

## 0.1.0

- Initial release of supertonic_flutter
- Support for multiple languages: English, Korean, Spanish, Portuguese, and French
- Multiple voice styles for each language
- Cross-platform support: Android, iOS, and macOS
- ONNX-based text-to-speech engine
- Configurable speech rate, pitch, and volume
- Audio playback with pause, resume, and stop controls
- Stream-based audio generation
