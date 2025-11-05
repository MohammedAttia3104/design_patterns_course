import 'package:design_patterns_course/creational/factory/track_enhanced_solution/transport.dart';

class CargoPlane implements Transport {
  final String title;
  final String artist;
  final Duration duration;

  CargoPlane({
    required this.title,
    required this.artist,
    required this.duration,
  });

  @override
  void deliver() {
    print(
      'Delivering by air with track: "$title" by $artist, duration: ${duration.inMinutes} minutes.',
    );
  }
}
