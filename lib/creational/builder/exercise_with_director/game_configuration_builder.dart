part of 'game_configuration.dart';

class GameConfigurationBuilder implements GameBuilder {
  String? graphicsQuality;
  bool? soundEnabled;
  String? controlScheme;
  int? difficultyLevel;
  bool? subtitlesEnabled;
  String? theme;
  String? language;

  ///Getters
  String? get getGraphicsQuality => graphicsQuality;

  bool? get isSoundEnabled => soundEnabled;

  String? get getControlScheme => controlScheme;

  int? get getDifficultyLevel => difficultyLevel;

  bool? get isSubtitlesEnabled => subtitlesEnabled;

  String? get getTheme => theme;

  String? get getLanguage => language;

  @override
  GameConfigurationBuilder setGraphicsQuality(String quality) {
    graphicsQuality = quality;
    return this;
  }

  @override
  GameConfigurationBuilder setSoundEnabled(bool enabled) {
    soundEnabled = enabled;
    return this;
  }

  @override
  GameConfigurationBuilder setControlScheme(String scheme) {
    controlScheme = scheme;
    return this;
  }

  @override
  GameConfigurationBuilder setDifficultyLevel(int level) {
    difficultyLevel = level;
    return this;
  }

  @override
  GameConfigurationBuilder setSubtitlesEnabled(bool enabled) {
    subtitlesEnabled = enabled;
    return this;
  }

  @override
  GameConfigurationBuilder setTheme(String theme) {
    this.theme = theme;
    return this;
  }

  @override
  GameConfigurationBuilder setLanguage(String language) {
    this.language = language;
    return this;
  }


  GameConfiguration build() {
    return GameConfiguration._(this);
  }

  /// Reset the builder to reuse it for building another configuration
  void reset() {
    graphicsQuality = null;
    soundEnabled = null;
    controlScheme = null;
    difficultyLevel = null;
    subtitlesEnabled = null;
    theme = null;
    language = null;
  }
}

