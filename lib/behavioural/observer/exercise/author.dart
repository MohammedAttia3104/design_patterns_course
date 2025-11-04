import 'package:design_patterns_course/behavioural/observer/exercise/publish_type.dart';
import 'package:design_patterns_course/behavioural/observer/exercise/publisher.dart';

class Author {
  final String name;
  final Publisher publisher;

  Author(this.name, this.publisher);

  void publishBlogPost(String content) {
    print('\n$name is publishing a BLOG post: "$content"');
    publisher.notifySubscribers(PublishType.BLOG, 'New blog post by $name: $content');
  }

  void publishNewsletter(String content) {
    print('\n$name is publishing a NEWSLETTER: "$content"');
    publisher.notifySubscribers(PublishType.NEWS, 'New newsletter by $name: $content');
  }
}