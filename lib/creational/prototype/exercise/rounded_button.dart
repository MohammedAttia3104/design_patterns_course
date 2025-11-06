import 'package:design_patterns_course/creational/prototype/exercise/button.dart';

class RoundedButton extends Button {
  RoundedButton({
    required super.label,
    required super.color,
    required super.xPosition,
    required super.yPosition,
  });

  @override
  RoundedButton clone() {
    return RoundedButton(
      label: label,
      color: color,
      xPosition: xPosition,
      yPosition: yPosition,
    );
  }
}
