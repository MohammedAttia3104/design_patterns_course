library;

import 'game_builder.dart';

part 'game_configuration_builder.dart';

class GameConfiguration {
  final String graphicsQuality;
  final bool soundEnabled;
  final String controlScheme;
  final int difficultyLevel;
  final bool subtitlesEnabled;
  final String theme;
  final String language;

  GameConfiguration._(GameConfigurationBuilder builder)
      : graphicsQuality = builder.getGraphicsQuality!,
        soundEnabled = builder.isSoundEnabled!,
        controlScheme = builder.getControlScheme!,
        difficultyLevel = builder.getDifficultyLevel!,
        subtitlesEnabled = builder.isSubtitlesEnabled!,
        theme = builder.getTheme!,
        language = builder.getLanguage!;

  String getGraphicsQuality() => graphicsQuality;

  bool isSoundEnabled() => soundEnabled;

  String getControlScheme() => controlScheme;

  int getDifficultyLevel() => difficultyLevel;

  bool isSubtitlesEnabled() => subtitlesEnabled;

  String getTheme() => theme;

  String getLanguage() => language;
}
