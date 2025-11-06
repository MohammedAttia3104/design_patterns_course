import 'package:design_patterns_course/creational/builder/exercise_with_director/game_configuration.dart';


class GameConfigurationDirector {

  /// Build a configuration optimized for mobile devices
  GameConfiguration buildMobileConfig(GameConfigurationBuilder builder) {
    return builder
        .setGraphicsQuality('Low')
        .setSoundEnabled(false)
        .setControlScheme('Touch')
        .setDifficultyLevel(2)
        .setSubtitlesEnabled(true)
        .setTheme('Light')
        .setLanguage('English')
        .build();
  }

  /// Build a configuration optimized for desktop gaming
  GameConfiguration buildDesktopConfig(GameConfigurationBuilder builder) {
    return builder
        .setGraphicsQuality('Ultra')
        .setSoundEnabled(true)
        .setControlScheme('Keyboard')
        .setDifficultyLevel(4)
        .setSubtitlesEnabled(false)
        .setTheme('Dark')
        .setLanguage('English')
        .build();
  }


  /// Build a configuration for first-time users (beginner mode)
  GameConfiguration buildBeginnerConfig(GameConfigurationBuilder builder) {
    return builder
        .setGraphicsQuality('Medium')
        .setSoundEnabled(true)
        .setControlScheme('Touch')
        .setDifficultyLevel(1)
        .setSubtitlesEnabled(true)
        .setTheme('Light')
        .setLanguage('English')
        .build();
  }


  /// Build a configuration optimized for competitive/esports play
  GameConfiguration buildCompetitiveConfig(GameConfigurationBuilder builder) {
    return builder
        .setGraphicsQuality('Low')
        .setSoundEnabled(true)
        .setControlScheme('Keyboard')
        .setDifficultyLevel(5)
        .setSubtitlesEnabled(false)
        .setTheme('Dark')
        .setLanguage('English')
        .build();
  }
}

