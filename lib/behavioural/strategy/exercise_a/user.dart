import 'package:design_patterns_course/behavioural/strategy/exercise_a/notification_strategy.dart';

class User {
  final String name;
  final String age;
  NotificationStrategy? notificationStrategy;

  User(this.name, this.age);

  void setNotificationStrategy(NotificationStrategy strategy) {
    notificationStrategy = strategy;
  }

  void notify({required String message}) {
    if (notificationStrategy != null) {
      notificationStrategy!.sendNotification(this, message);
    } else {
      print("No notification strategy set for $name\n");
    }
  }
}
