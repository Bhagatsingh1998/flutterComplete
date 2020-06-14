import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// OR

// if we have only one expresstion in a function, dart provide us with shorthand notation with help of arrow operator.
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // adding an imp annotation '@override'
  // although it not req, our app is working fine.
  // '@override' : its a decorartor, provided by dart .
    // it is just to make our code bit more cleaner and clearer.
    // it tells that we delibrately overriding the build method which is provided by SatelessWidget. we overriding with our own implemenation and flutter forces us to override

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(home: Text('Hello to flutter'));
  }
  // thus, if we have one function used at morethan one place, we can override and tell that we intentially overridring the previous function functianlity and not bymistake.
}