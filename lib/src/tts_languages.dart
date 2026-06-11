/// Supported languages for text-to-speech synthesis.
///
/// Supertonic TTS supports 31 languages with native pronunciation and proper
/// accent handling for each language, plus a language-agnostic mode (`na`)
/// for input whose language is unknown.
///
/// Supported languages: English (en), Korean (ko), Japanese (ja),
/// Arabic (ar), Bulgarian (bg), Czech (cs), Danish (da), German (de),
/// Greek (el), Spanish (es), Estonian (et), Finnish (fi), French (fr),
/// Hindi (hi), Croatian (hr), Hungarian (hu), Indonesian (id), Italian (it),
/// Lithuanian (lt), Latvian (lv), Dutch (nl), Polish (pl), Portuguese (pt),
/// Romanian (ro), Russian (ru), Slovak (sk), Slovenian (sl), Swedish (sv),
/// Turkish (tr), Ukrainian (uk), Vietnamese (vi).
///
/// Example:
/// ```dart
/// // Get language info
/// final lang = TTSLanguage.fromCode('en');
/// print(lang.name);       // 'English'
/// print(lang.nativeName); // 'English'
///
/// // List all languages
/// for (final lang in TTSLanguage.all) {
///   print('${lang.code}: ${lang.nativeName}');
/// }
/// ```
///
/// See also:
/// - [TTSTestStrings] for sample text in each language
class TTSLanguage {
  final String code;
  final String name;
  final String nativeName;

  const TTSLanguage({
    required this.code,
    required this.name,
    required this.nativeName,
  });

  /// English - Standard American English pronunciation. Code: `en`
  static const english =
      TTSLanguage(code: 'en', name: 'English', nativeName: 'English');

  /// Korean - Native Korean with Hangul Jamo decomposition. Code: `ko`
  static const korean =
      TTSLanguage(code: 'ko', name: 'Korean', nativeName: '한국어');

  /// Japanese - Native Japanese with kana and kanji support. Code: `ja`
  static const japanese =
      TTSLanguage(code: 'ja', name: 'Japanese', nativeName: '日本語');

  /// Arabic - Modern Standard Arabic. Code: `ar`
  static const arabic =
      TTSLanguage(code: 'ar', name: 'Arabic', nativeName: 'العربية');

  /// Bulgarian - Standard Bulgarian with Cyrillic script. Code: `bg`
  static const bulgarian =
      TTSLanguage(code: 'bg', name: 'Bulgarian', nativeName: 'Български');

  /// Czech - Standard Czech with diacritic support. Code: `cs`
  static const czech =
      TTSLanguage(code: 'cs', name: 'Czech', nativeName: 'Čeština');

  /// Danish - Standard Danish. Code: `da`
  static const danish =
      TTSLanguage(code: 'da', name: 'Danish', nativeName: 'Dansk');

  /// German - Standard German with umlaut support. Code: `de`
  static const german =
      TTSLanguage(code: 'de', name: 'German', nativeName: 'Deutsch');

  /// Greek - Modern Greek. Code: `el`
  static const greek =
      TTSLanguage(code: 'el', name: 'Greek', nativeName: 'Ελληνικά');

  /// Spanish - Standard Spanish with accent handling. Code: `es`
  static const spanish =
      TTSLanguage(code: 'es', name: 'Spanish', nativeName: 'Español');

  /// Estonian - Standard Estonian. Code: `et`
  static const estonian =
      TTSLanguage(code: 'et', name: 'Estonian', nativeName: 'Eesti');

  /// Finnish - Standard Finnish. Code: `fi`
  static const finnish =
      TTSLanguage(code: 'fi', name: 'Finnish', nativeName: 'Suomi');

  /// French - Standard French with comprehensive accentuation. Code: `fr`
  static const french =
      TTSLanguage(code: 'fr', name: 'French', nativeName: 'Français');

  /// Hindi - Standard Hindi with Devanagari script. Code: `hi`
  static const hindi =
      TTSLanguage(code: 'hi', name: 'Hindi', nativeName: 'हिन्दी');

  /// Croatian - Standard Croatian. Code: `hr`
  static const croatian =
      TTSLanguage(code: 'hr', name: 'Croatian', nativeName: 'Hrvatski');

  /// Hungarian - Standard Hungarian. Code: `hu`
  static const hungarian =
      TTSLanguage(code: 'hu', name: 'Hungarian', nativeName: 'Magyar');

  /// Indonesian - Standard Indonesian. Code: `id`
  static const indonesian = TTSLanguage(
      code: 'id', name: 'Indonesian', nativeName: 'Bahasa Indonesia');

  /// Italian - Standard Italian. Code: `it`
  static const italian =
      TTSLanguage(code: 'it', name: 'Italian', nativeName: 'Italiano');

  /// Lithuanian - Standard Lithuanian. Code: `lt`
  static const lithuanian =
      TTSLanguage(code: 'lt', name: 'Lithuanian', nativeName: 'Lietuvių');

  /// Latvian - Standard Latvian. Code: `lv`
  static const latvian =
      TTSLanguage(code: 'lv', name: 'Latvian', nativeName: 'Latviešu');

  /// Dutch - Standard Dutch. Code: `nl`
  static const dutch =
      TTSLanguage(code: 'nl', name: 'Dutch', nativeName: 'Nederlands');

  /// Polish - Standard Polish. Code: `pl`
  static const polish =
      TTSLanguage(code: 'pl', name: 'Polish', nativeName: 'Polski');

  /// Portuguese - Brazilian Portuguese with accent support. Code: `pt`
  static const portuguese =
      TTSLanguage(code: 'pt', name: 'Portuguese', nativeName: 'Português');

  /// Romanian - Standard Romanian. Code: `ro`
  static const romanian =
      TTSLanguage(code: 'ro', name: 'Romanian', nativeName: 'Română');

  /// Russian - Standard Russian with Cyrillic script. Code: `ru`
  static const russian =
      TTSLanguage(code: 'ru', name: 'Russian', nativeName: 'Русский');

  /// Slovak - Standard Slovak. Code: `sk`
  static const slovak =
      TTSLanguage(code: 'sk', name: 'Slovak', nativeName: 'Slovenčina');

  /// Slovenian - Standard Slovenian. Code: `sl`
  static const slovenian =
      TTSLanguage(code: 'sl', name: 'Slovenian', nativeName: 'Slovenščina');

  /// Swedish - Standard Swedish. Code: `sv`
  static const swedish =
      TTSLanguage(code: 'sv', name: 'Swedish', nativeName: 'Svenska');

  /// Turkish - Standard Turkish. Code: `tr`
  static const turkish =
      TTSLanguage(code: 'tr', name: 'Turkish', nativeName: 'Türkçe');

  /// Ukrainian - Standard Ukrainian with Cyrillic script. Code: `uk`
  static const ukrainian =
      TTSLanguage(code: 'uk', name: 'Ukrainian', nativeName: 'Українська');

  /// Vietnamese - Standard Vietnamese. Code: `vi`
  static const vietnamese =
      TTSLanguage(code: 'vi', name: 'Vietnamese', nativeName: 'Tiếng Việt');

  /// Language-agnostic mode. Code: `na`
  ///
  /// Use this when the language of the input text is unknown — Supertonic
  /// handles the input without an explicit language tag.
  ///
  /// Example:
  /// ```dart
  /// await tts.synthesize('Bonjour and 안녕하세요!', language: 'na');
  /// ```
  static const languageAgnostic =
      TTSLanguage(code: 'na', name: 'Language-agnostic', nativeName: 'Auto');

  /// List of all supported languages, in the order used by the
  /// upstream Supertonic 3 release (31 languages plus [languageAgnostic]).
  ///
  /// Example:
  /// ```dart
  /// for (final lang in TTSLanguage.all) {
  ///   print('${lang.code}: ${lang.nativeName}');
  /// }
  /// ```
  static const all = [
    english,
    korean,
    japanese,
    arabic,
    bulgarian,
    czech,
    danish,
    german,
    greek,
    spanish,
    estonian,
    finnish,
    french,
    hindi,
    croatian,
    hungarian,
    indonesian,
    italian,
    lithuanian,
    latvian,
    dutch,
    polish,
    portuguese,
    romanian,
    russian,
    slovak,
    slovenian,
    swedish,
    turkish,
    ukrainian,
    vietnamese,
    languageAgnostic,
  ];

  /// Retrieves a language by its code.
  ///
  /// If the code is not found, returns [english] as the default.
  ///
  /// Example:
  /// ```dart
  /// final lang = TTSLanguage.fromCode('es');
  /// print(lang.nativeName); // 'Español'
  ///
  /// // Invalid code returns default (English)
  /// final invalid = TTSLanguage.fromCode('xx');
  /// print(invalid.code); // 'en'
  /// ```
  static TTSLanguage fromCode(String code) {
    return all.firstWhere(
      (lang) => lang.code == code,
      orElse: () => english,
    );
  }

  @override
  String toString() => code;
}

/// Test strings for each language to verify TTS functionality.
///
/// Provides sample text in each supported language for testing
/// pronunciation and synthesis quality.
///
/// Example:
/// ```dart
/// // Get full test string
/// final text = TTSTestStrings.forLanguage('en');
/// await tts.synthesize(text, language: 'en');
///
/// // Get short test string
/// final short = TTSTestStrings.shortForLanguage('ko');
/// await tts.synthesize(short, language: 'ko');
/// ```
class TTSTestStrings {
  static const Map<String, String> _strings = {
    'en':
        'Hello, this is a test of the Supertonic text-to-speech system. The quick brown fox jumps over the lazy dog.',
    'ko': '안녕하세요, 이것은 슈퍼토닉 텍스트 음성 변환 시스템 테스트입니다. 빠른 갈색 여우가 게으른 개를 뛰어넘습니다.',
    'ja': 'こんにちは、これはスーパートニック音声合成システムのテストです。素早い茶色のキツネがのろまな犬を飛び越えます。',
    'ar': 'مرحباً، هذا اختبار لنظام سوبرتونيك لتحويل النص إلى كلام. الثعلب البني السريع يقفز فوق الكلب الكسول.',
    'de':
        'Hallo, dies ist ein Test des Supertonic Sprachsynthese-Systems. Der schnelle braune Fuchs springt über den faulen Hund.',
    'es':
        'Hola, esta es una prueba del sistema de síntesis de voz Supertonic. El rápido zorro marrón salta sobre el perro perezoso.',
    'fr':
        'Bonjour, ceci est un test du système de synthèse vocale Supertonic. Le rapide renard brun saute par-dessus le chien paresseux.',
    'hi':
        'नमस्ते, यह सुपरटॉनिक टेक्स्ट-टू-स्पीच प्रणाली का परीक्षण है। तेज़ भूरी लोमड़ी आलसी कुत्ते के ऊपर से कूदती है।',
    'it':
        'Ciao, questo è un test del sistema di sintesi vocale Supertonic. La rapida volpe marrone salta sopra il cane pigro.',
    'pt':
        'Olá, este é um teste do sistema de síntese de voz Supertonic. A rápida raposa marrom salta sobre o cachorro preguiçoso.',
    'ru':
        'Здравствуйте, это тест системы синтеза речи Супертоник. Быстрая коричневая лиса перепрыгивает через ленивую собаку.',
  };

  /// Gets a full test string for the specified language.
  ///
  /// Returns a comprehensive test sentence that includes various sounds
  /// and pronunciations specific to each language.
  ///
  /// If no full test string exists for [langCode], falls back to the short
  /// test string, then to the English test string.
  ///
  /// Example:
  /// ```dart
  /// final text = TTSTestStrings.forLanguage('en');
  /// // "Hello, this is a test of the Supertonic text-to-speech system..."
  /// ```
  static String forLanguage(String langCode) {
    return _strings[langCode] ?? _shortStrings[langCode] ?? _strings['en']!;
  }

  static const Map<String, String> _shortStrings = {
    'en': 'Hello, this is a test.',
    'ko': '안녕하세요, 이것은 테스트입니다.',
    'ja': 'こんにちは、これはテストです。',
    'ar': 'مرحباً، هذا اختبار.',
    'bg': 'Здравейте, това е тест.',
    'cs': 'Dobrý den, toto je test.',
    'da': 'Hej, dette er en test.',
    'de': 'Hallo, das ist ein Test.',
    'el': 'Γεια σας, αυτό είναι μια δοκιμή.',
    'es': 'Hola, esta es una prueba.',
    'et': 'Tere, see on test.',
    'fi': 'Hei, tämä on testi.',
    'fr': 'Bonjour, ceci est un test.',
    'hi': 'नमस्ते, यह एक परीक्षण है।',
    'hr': 'Pozdrav, ovo je test.',
    'hu': 'Üdvözlöm, ez egy teszt.',
    'id': 'Halo, ini adalah tes.',
    'it': 'Ciao, questo è un test.',
    'lt': 'Sveiki, tai yra testas.',
    'lv': 'Sveiki, šis ir tests.',
    'nl': 'Hallo, dit is een test.',
    'pl': 'Cześć, to jest test.',
    'pt': 'Olá, este é um teste.',
    'ro': 'Bună ziua, acesta este un test.',
    'ru': 'Здравствуйте, это тест.',
    'sk': 'Dobrý deň, toto je test.',
    'sl': 'Pozdravljeni, to je test.',
    'sv': 'Hej, det här är ett test.',
    'tr': 'Merhaba, bu bir testtir.',
    'uk': 'Привіт, це тест.',
    'vi': 'Xin chào, đây là một bài kiểm tra.',
    'na': 'Hello, this is a test.',
  };

  /// Gets a short test string for the specified language.
  ///
  /// Returns a brief, simple sentence ideal for quick tests or previews.
  ///
  /// If [langCode] is not found, returns the English short test string.
  ///
  /// Example:
  /// ```dart
  /// final text = TTSTestStrings.shortForLanguage('ko');
  /// // "안녕하세요, 이것은 테스트입니다."
  ///
  /// // Use in a quick test
  /// await tts.synthesize(
  ///   TTSTestStrings.shortForLanguage('es'),
  ///   language: 'es',
  /// );
  /// ```
  static String shortForLanguage(String langCode) {
    return _shortStrings[langCode] ?? _shortStrings['en']!;
  }
}
