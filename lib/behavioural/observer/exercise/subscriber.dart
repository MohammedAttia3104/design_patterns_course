import 'package:design_patterns_course/behavioural/observer/exercise/publish_type.dart';

abstract class Subscriber {
  void notify(PublishType type, String message);
}
