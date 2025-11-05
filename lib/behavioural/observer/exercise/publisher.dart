import 'package:design_patterns_course/behavioural/observer/exercise/publish_type.dart';
import 'package:design_patterns_course/behavioural/observer/exercise/subscriber.dart';

class Publisher {
  final Map<PublishType, List<Subscriber>> _subscribers = {
    PublishType.NEWS: [],
    PublishType.BLOG: [],
    PublishType.NEWS_AND_BLOG: [],
    PublishType.PODCAST: [],
  };

  void subscribe(PublishType type, Subscriber subscriber) {
    if (!_subscribers[type]!.contains(subscriber)) {
      _subscribers[type]!.add(subscriber);
      print('$subscriber subscribed to ${type.name}');
    }
  }

  void unsubscribe(PublishType type, Subscriber subscriber) {
    _subscribers[type]!.remove(subscriber);
    print('$subscriber unsubscribed from ${type.name}');
  }

  void notifySubscribers(PublishType type, String message) {
    print('\n--- Notifying ${type.name} subscribers ---');

    for (var subscriber in _subscribers[type]!) {
      subscriber.notify(type, message);
    }

    if (type == PublishType.NEWS || type == PublishType.BLOG) {
      for (var subscriber in _subscribers[PublishType.NEWS_AND_BLOG]!) {
        subscriber.notify(type, message);
      }
    }
  }
}