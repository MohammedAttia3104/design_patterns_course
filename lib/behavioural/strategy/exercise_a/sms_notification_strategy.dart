import 'package:design_patterns_course/behavioural/strategy/exercise_a/notification_strategy.dart';
import 'package:design_patterns_course/behavioural/strategy/exercise_a/user.dart';

class SmsNotificationStrategy implements NotificationStrategy{
  @override
  void sendNotification(User user, String message) {
    print("${user.name} send SMS notification with message: $message\n");
  }
}