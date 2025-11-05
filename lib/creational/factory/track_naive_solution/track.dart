import 'package:design_patterns_course/creational/factory/track_naive_solution/transport.dart';

class Track implements Transport{
  final String title;
  final String artist;
  final Duration duration;
  Track({
    required this.title,
    required this.artist,
    required this.duration,
  });

  @override
  void deliver() {
    print('Delivering by land with track: "$title" by $artist, duration: ${duration.inMinutes} minutes.');
  }
}