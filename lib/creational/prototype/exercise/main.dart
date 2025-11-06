import 'package:design_patterns_course/creational/prototype/exercise/circular_button.dart';
import 'package:design_patterns_course/creational/prototype/exercise/rounded_button.dart';

/// ---------------------------------
///Prototype Coding Exercise
/// You are developing a GUI button component that is asked to be re-used within the application
/// because it wastes time re-creating it every time and just to change little fields.
/// The button has several fields, like color, content, xPosition, and yPosition.
/// ---------------------------------


void main() {
  CircularButton c1 = CircularButton(
    label: "Submit",
    color: "Blue",
    xPosition: 50.0,
    yPosition: 100.0,
  );

  CircularButton c2 = c1.clone();
  c2.label = "OK";


  c1.printConfig();
  c2.printConfig();


  RoundedButton r1 = RoundedButton(
    label: "Cancel",
    color: "Red",
    xPosition: 150.0,
    yPosition: 200.0,
  );

  RoundedButton r2 = r1.clone();
  r2.color = "Green";
  r2.xPosition = 175.0;

  r1.printConfig();
  r2.printConfig();
}