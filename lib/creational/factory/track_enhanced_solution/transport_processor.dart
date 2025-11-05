import 'package:design_patterns_course/creational/factory/track_enhanced_solution/transport.dart';
import 'package:design_patterns_course/creational/factory/track_enhanced_solution/transport_factory.dart';
import 'package:design_patterns_course/creational/factory/track_enhanced_solution/transport_way_type.dart';

class TransportProcessor {
  final TransportFactory _factory;

  TransportProcessor() : _factory = TransportFactory();

  void processTransport(TransportWayType transportType) {
    Transport transport = _factory.createTransport(transportType);
    transport.deliver();
  }
}
