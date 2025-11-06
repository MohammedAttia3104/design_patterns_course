import 'package:design_patterns_course/creational/prototype/exercise/button.dart';

class CircularButton extends Button {
  CircularButton({
    required super.label,
    required super.color,
    required super.xPosition,
    required super.yPosition,
  });

  @override
  CircularButton clone() {
    return CircularButton(
      label: label,
      color: color,
      xPosition: xPosition,
      yPosition: yPosition,
    );
  }
}
