import 'package:design_patterns_course/creational/factory/track_enhanced_solution/transport_processor.dart';
import 'package:design_patterns_course/creational/factory/track_enhanced_solution/transport_way_type.dart';

void main() {
  TransportProcessor processor = TransportProcessor();
  processor.processTransport(TransportWayType.air);
}
