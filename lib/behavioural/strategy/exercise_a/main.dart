import 'package:design_patterns_course/behavioural/strategy/exercise_a/notification_strategy.dart';
import 'package:design_patterns_course/behavioural/strategy/exercise_a/slack_notification_strategy.dart';
import 'package:design_patterns_course/behavioural/strategy/exercise_a/sms_notification_strategy.dart';
import 'package:design_patterns_course/behavioural/strategy/exercise_a/user.dart';

import 'facebook_notification_strategy.dart';

void main() {
  User mohamed = User('mohamed', '20');
  User ali = User('ali', '20');
  User ahmed = User('ahmed', '20');

  NotificationStrategy smsStrategy = SmsNotificationStrategy();
  NotificationStrategy facebookStrategy = FacebookNotificationStrategy();
  NotificationStrategy slackStrategy = SlackNotificationStrategy();

  mohamed.setNotificationStrategy(smsStrategy);
  ali.setNotificationStrategy(facebookStrategy);
  ahmed.setNotificationStrategy(slackStrategy);

  mohamed.notify(message: "Hello from SMS");
  ali.notify(message: "Hello from Facebook");
  ahmed.notify(message: "Hello from Slack");
}
