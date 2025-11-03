import 'package:design_patterns_course/behavioural/strategy/exercise_a/user.dart';

abstract class NotificationStrategy {
  void sendNotification(User user, String message);
}
