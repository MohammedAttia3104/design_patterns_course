import 'package:design_patterns_course/creational/builder/game_configuration.dart';

/// ---------------------------
/// Questions:
/// We can apply the Builder pattern with nested classes in Java.so why not in Dart?
/// Why dart doesn't support nested classes?
/// ---------------------------
/// Builder Coding Exercise
/// Certainly! Let's consider a scenario where you're working on a configuration manager for a game engine.
/// The game can have various settings, including graphics quality, sound options, control preferences, and more.
/// You need to create a configuration manager that allows users to set and customize various game settings
/// ---------------------------


void main() {
  print('Builder Pattern in Dart\n');

  GameConfiguration config = GameConfigurationBuilder()
      .setGraphicsQuality('High')
      .setSoundEnabled(true)
      .setControlScheme('Gamepad')
      .setDifficultyLevel(3)
      .setSubtitlesEnabled(true)
      .setTheme('Dark')
      .setLanguage('English')
      .build();

  print('Custom Config - Graphics Quality: ${config.getGraphicsQuality()}');
  print('Custom Config - Sound Enabled: ${config.isSoundEnabled()}');
}
