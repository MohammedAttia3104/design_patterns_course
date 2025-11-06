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
  GameConfigurationBuilder setControlScheme(String controlScheme) {
    this.controlScheme = controlScheme;
    return this;
  }

  @override
  GameConfigurationBuilder setDifficultyLevel(int difficultyLevel) {
    this.difficultyLevel = difficultyLevel;
    return this;
  }

  @override
  GameConfigurationBuilder setGraphicsQuality(String graphicsQuality) {
    this.graphicsQuality = graphicsQuality;
    return this;
  }

  @override
  GameConfigurationBuilder setSoundEnabled(bool soundEnabled) {
    this.soundEnabled = soundEnabled;
    return this;
  }

  @override
  GameConfigurationBuilder setSubtitlesEnabled(bool subtitlesEnabled) {
    this.subtitlesEnabled = subtitlesEnabled;
    return this;
  }

  GameConfigurationBuilder setTheme(String theme) {
    this.theme = theme;
    return this;
  }

  GameConfigurationBuilder setLanguage(String language) {
    this.language = language;
    return this;
  }

  GameConfiguration build() {
    return GameConfiguration._(this);
  }
}
