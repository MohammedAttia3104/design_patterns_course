import 'package:design_patterns_course/creational/factory/track_enhanced_solution/ship.dart';
import 'package:design_patterns_course/creational/factory/track_enhanced_solution/track.dart';
import 'package:design_patterns_course/creational/factory/track_enhanced_solution/transport.dart';
import 'package:design_patterns_course/creational/factory/track_enhanced_solution/transport_way_type.dart';

class TransportFactory {
  Transport createTransport(TransportWayType transportType) {
    switch (transportType) {
      case TransportWayType.land:
        return Track(
          title: 'Highway to Hell',
          artist: 'AC/DC',
          duration: Duration(minutes: 3, seconds: 28),
        );
      case TransportWayType.sea:
        return Ship(
          title: 'Ocean Waves',
          artist: 'Sea Sounds',
          duration: Duration(minutes: 45),
        );
    }
  }
}
