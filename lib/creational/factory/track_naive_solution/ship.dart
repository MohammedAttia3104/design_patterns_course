import 'package:design_patterns_course/creational/factory/track_naive_solution/transport.dart';

class Ship implements Transport{
  final String title;
  final String artist;
  final Duration duration;
  Ship({
    required this.title,
    required this.artist,
    required this.duration,
  });

  @override
  void deliver() {
    print('Delivering by sea with track: "$title" by $artist, duration: ${duration.inMinutes} minutes.');
  }
}