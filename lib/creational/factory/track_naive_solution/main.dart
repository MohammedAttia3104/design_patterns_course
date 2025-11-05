import 'package:design_patterns_course/creational/factory/track_naive_solution/transport_processor.dart';
import 'package:design_patterns_course/creational/factory/track_naive_solution/transport_way_type.dart';

void main() {
  TransportProcessor processor = TransportProcessor();

  processor.processTransport(TransportWayType.land);
  processor.processTransport(TransportWayType.sea);

  /// This will throw UnimplementedError
  // processor.processTransport(TransportWayType.air);
}
