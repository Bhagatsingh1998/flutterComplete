import 'package:flutter/material.dart';

  // to output something on screen, 'MyApp' widget should be executed from main function
void main() {
  // runApp : ita normal dunction but written by flutter in materoal.dart file
  // it takes a arg and that arg is core/root widget name and it will be executed like a function else it will take it as a type.
    // eg from basics.dart: var p = Person()
  // thus object will be instantiated automatically and it will run.
  // thus, MyApp will call its own constructor and at the end we will get an object which will be passed to 'runApp' and this object will be passed to 'build' method
  // hence, like this our app is getting rendered.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext ctx) {
    return MaterialApp(home: Text('Hello to flutter'));
  }
}