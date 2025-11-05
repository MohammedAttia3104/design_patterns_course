import 'package:design_patterns_course/behavioural/observer/exercise/publish_type.dart';
import 'package:design_patterns_course/behavioural/observer/exercise/subscriber.dart';

class User implements Subscriber {
  final String name;

  User(this.name);

  @override
  void notify(PublishType type, String message) {
    print('$name received notification [${type.name}]: $message');
  }

  @override
  String toString() => name;
}