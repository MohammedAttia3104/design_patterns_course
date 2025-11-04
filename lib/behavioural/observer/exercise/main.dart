/// ---------------------------------
/// Observer Coding Exercise
// You are developing a newsletter for an author who wants to notify his subscribers about
// each new blog post or newsletter weekly.
// Considering that subscribers might want to get notifications for each blog post, newsletter, or both of them,.
/// ---------------------------------


///analysis
/// Define the necessary classes and interfaces to implement the Observer design pattern for this scenario.
/// Create a Publisher class that maintains a list of subscribers and notifies them based on their preferences.
/// Implement Subscriber classes that can subscribe to blog posts, newsletters, or both.
/// Use an enumeration to define the types of publications (blog post, newsletter).
/// Demonstrate the functionality by creating an author, adding subscribers with different preferences,

library;

import 'package:design_patterns_course/behavioural/observer/exercise/author.dart';
import 'package:design_patterns_course/behavioural/observer/exercise/publish_type.dart';
import 'package:design_patterns_course/behavioural/observer/exercise/publisher.dart';
import 'package:design_patterns_course/behavioural/observer/exercise/user.dart';



void main() {
  ///(subscribers)
  User ali = User('Ali');
  User mohamed = User('Mohamed');
  User sara = User('Sara');
  User john = User('John');

  /// Publisher (central notification system)
  Publisher publisher = Publisher();

  /// users subscribe to different publication types
  print('=== Setting up subscriptions ===');
  publisher.subscribe(PublishType.BLOG, ali);
  publisher.subscribe(PublishType.NEWS, mohamed);
  publisher.subscribe(PublishType.NEWS_AND_BLOG, sara);
  publisher.subscribe(PublishType.BLOG, john);
  publisher.subscribe(PublishType.PODCAST, mohamed);

  /// Authors
  Author drAhmed = Author('Dr. Ahmed', publisher);
  Author profSalma = Author('Prof. Salma', publisher);

  /// Authors publish content
  print('\n\n=== Publishing content ===');
  drAhmed.publishBlogPost('10 Tips for Better Code');

  profSalma.publishNewsletter('Weekly Tech News - November 2025');

  drAhmed.publishBlogPost('Understanding Design Patterns');

  profSalma.publishPodcast('The Future of AI');

  /// unsubscribe
  print('\n\n=== Unsubscribing Ali from BLOG ===');
  publisher.unsubscribe(PublishType.BLOG, ali);

  profSalma.publishBlogPost('Advanced Dart Programming');
}