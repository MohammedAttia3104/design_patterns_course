import 'package:design_patterns_course/creational/builder/exercise_with_director/game_configuration.dart';
import 'package:design_patterns_course/creational/builder/exercise_with_director/game_configuration_director.dart';

/// Builder Pattern with Director
///
/// Components:
/// - Product: GameConfiguration (immutable complex object)
/// - Builder: GameConfigurationBuilder (step-by-step construction)
/// - Director: GameConfigurationDirector (orchestrates common presets)

void main() {
  print('Builder Pattern with Director\n');

  final director = GameConfigurationDirector();

  final builder = GameConfigurationBuilder();

  /// Mobile config via director
  print('Mobile Configuration: \n');
  final mobileConfig = director.buildMobileConfig(builder);
  print(
    'Mobile Config - Graphics Quality: ${mobileConfig.getGraphicsQuality()}',
  );
  print('Mobile Config - Theme: ${mobileConfig.getTheme()}');
  print('=' * 50);

  /// Beginner-friendly config
  print('Beginner Configuration: \n');
  builder.reset();
  final beginnerConfig = director.buildBeginnerConfig(builder);
  print(
    'Beginner-friendly Config - Graphics Quality: ${beginnerConfig.getGraphicsQuality()}',
  );
  print('Beginner-friendly Config - Theme: ${beginnerConfig.getTheme()}');
  print('=' * 50);

  /// Competitive/esports config
  print('Competitive Configuration: \n');
  builder.reset();
  final competitiveConfig = director.buildCompetitiveConfig(builder);
  print(
    'Competitive Config - Graphics Quality: ${competitiveConfig.getGraphicsQuality()}',
  );
  print('Competitive Config - Theme: ${competitiveConfig.getTheme()}');

  print('=' * 50);

  /// Custom build without director
  print('Custom Configuration (Manual Build): \n');
  builder.reset();
  final customConfig = GameConfigurationBuilder()
      .setGraphicsQuality('Medium')
      .setSoundEnabled(true)
      .setControlScheme('Gamepad')
      .setDifficultyLevel(3)
      .setSubtitlesEnabled(false)
      .setTheme('Cyberpunk')
      .setLanguage('Spanish')
      .build();

  print(
    'Custom Config - Graphics Quality: ${customConfig.getGraphicsQuality()}',
  );
  print('Custom Config - Theme: ${customConfig.getTheme()}');

  print('=' * 50);
}
