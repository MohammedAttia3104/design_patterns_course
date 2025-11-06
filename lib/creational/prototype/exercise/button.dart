import 'package:design_patterns_course/creational/prototype/exercise/button_clone.dart';

abstract class Button implements ButtonClone{
  String _label;
  String _color;
  double _xPosition;
  double _yPosition;

  Button({
    required String label,
    required String color,
    required double xPosition,
    required double yPosition,
  }) : _label = label,
       _color = color,
       _xPosition = xPosition,
       _yPosition = yPosition;

  String get label => _label;

  set label(String value) => _label = value;

  String get color => _color;

  set color(String value) => _color = value;

  double get xPosition => _xPosition;

  set xPosition(double value) => _xPosition = value;

  double get yPosition => _yPosition;

  set yPosition(double value) => _yPosition = value;

  @override
  Button clone();

  void printConfig() {
    print("Show Button Configuration: ");
    print("Label: $_label");
    print("Color: $_color");
    print("X Position: $_xPosition");
    print("Y Position: $_yPosition");
    print("-----------------------");
  }
}
