// we know that our code will start excuting from main() function and it will be automatically executed by flutter when our app start.
// now we need to output something onto the screen and for that we need to output widget.
// flutter is all about widgets : it is bunch of widgets, everything whatever we see id a widget
// thus, we need to create a widget. to create a widget, we need to create a class because widget is special type of object. and we need to class to create object.

// void main() {

// }

// to print something on screen, we dont need to control to all the pixels of the screen, only the pixel which we need to display bec rest of the pixels will be controlled by fultter own it own. thus, for this our class uses feature called 'inheritance'
// which means... it buils on the base class, gets all the features of base class and only adds new new features to it.
// NOTE: we can only extend one class at a time.
// we will extend the flutter class but we have only one dart file. but in 'pubspec.yaml' file we have one dependency 'flutter' whose files are stored in your pc. and pubspec.yaml makes a connection to those file and we can use those files.

// importing the file (3rd party)
// import 'package:<packageName>/.../<fileName in that package>';

import 'package:flutter/material.dart';
// material.dart : this file has the base class (StatelessWidget) which we need
// variable inside class is called a property and function inside a class is known as method.
// after extending we get an error "Missing concrete implementation of 'StatelessWidget.build'." .
  // here build, 'build' is the method

class MyApp extends StatelessWidget {
  // thus implementing a build method which will be called by flutter automtically
  // it takes one argument which is special type of object and will be passed automtaically when this method will be called.
    // this arg holds the soem metadata aout our app and about the widget we are building
    // datatype of this arg is 'BuildContext' which is a class in 'material.dart'
  
  // build methof will be called by flutter when it tries to draw something on to the screen. thus, it should return a widget which can be displayed
  // 'Widget' is a class which is also a type provided by 'material.dart' 
  Widget build(BuildContext ctx) {
    // it should return the widget. rn, a special widget provided by material.dart 
    // MaterialApp :  it does some base setup to turn combination of widgets into real app that can be rendered
    // it takes number of agrs and these args are called named argruments.
      // till now we have only done postional aguments ie if 2 values are passed in the function then 1st value will be passed to first arg and 2nd value will be passed to 2nd arg. thus, we cant interchange the values of args else will get wrong result.
    // postional agrument : we simply dont pass value, we taget the value by its name.
      // eg: as this MaterialApp excepts lots of arguments to set which are all optional
    // home : it is a core widget which flutter brings on to screen when this entire app is mounted.
    // within 'home', we can use another widgetlike 'Text' widget.
    return MaterialApp(home: Text('Hello to flutter'),);
  }

}