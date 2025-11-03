import 'package:design_patterns_course/behavioural/strategy/exercise_a/notification_strategy.dart';
import 'package:design_patterns_course/behavioural/strategy/exercise_a/user.dart';

class SlackNotificationStrategy implements NotificationStrategy {
  @override
  void sendNotification(User user, String message) {
    print("${user.name} send notification from slack with message: $message\n");
  }
}
