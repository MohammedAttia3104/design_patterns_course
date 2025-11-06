
/// Abstract Builder Interface
abstract class GameBuilder {
  GameBuilder setGraphicsQuality(String quality);
  GameBuilder setSoundEnabled(bool enabled);
  GameBuilder setControlScheme(String scheme);
  GameBuilder setDifficultyLevel(int level);
  GameBuilder setSubtitlesEnabled(bool enabled);
  GameBuilder setTheme(String theme);
  GameBuilder setLanguage(String language);
}

