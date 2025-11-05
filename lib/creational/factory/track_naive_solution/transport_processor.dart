import 'package:design_patterns_course/creational/factory/track_naive_solution/ship.dart';
import 'package:design_patterns_course/creational/factory/track_naive_solution/track.dart';
import 'package:design_patterns_course/creational/factory/track_naive_solution/transport.dart';
import 'package:design_patterns_course/creational/factory/track_naive_solution/transport_way_type.dart';

class TransportProcessor {
  void processTransport(TransportWayType transportType) {
    Transport transport;
    switch (transportType) {
      case TransportWayType.land:
        transport = Track(
          title: 'Imagine',
          artist: 'John Lennon',
          duration: Duration(minutes: 3, seconds: 1),
        );
        break;
      case TransportWayType.sea:
        transport = Ship(
          title: 'Bohemian Rhapsody',
          artist: 'Queen',
          duration: Duration(minutes: 5, seconds: 55),
        );
        break;
      case TransportWayType.air:
        throw UnimplementedError();
    }
    transport.deliver();
  }
}
