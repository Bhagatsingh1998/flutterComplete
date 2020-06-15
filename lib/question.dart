// import 'package:flutter/material.dart';

// class Question extends StatelessWidget {
//   final String questionText;

//   Question(this.questionText);

//   @override
//   Widget build(BuildContext context) {
//     // Text widget takes postional agument but it takes named argument also after the first postional arg.
//     // style : its accepts TextStyle object. its a normal object based on TextStyle class. thus instaticating the class 'TextStyle()'
//     // TextStyle: it takes named arguments
//     return Text(
//       questionText,
//       style: TextStyle(fontSize: 28),
//       // another named arg to make text center
//       // either we can use TextAlign() and set our custom style. nut we can use the default style of this class by help of dot operator.
//       // TextAlign : it is known as enum which is the list of predefined values. enum is basically like a list ehere elements have index starting from zero. but enum have labels for all the values which is quite usefull to understand.
//       // to more, open the docs
//       // still the text is not aligned in center. this bec, fullter allocated the space to Text widget as much as the text, ie it doesnt provide the whole width of the screen.
//       // and this can be retificed by enclosing whole Text widget into Container widget
//       textAlign: TextAlign.center,
//     );
//   }
// }

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    // warping the Text widget into Container widget. container takes named arguments
    // 'child': will take Text widget
    return Container(
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
      // making the width as much as the screen size
      width: double.infinity,
      // making space around the container
      // margin: it can take different types of classes and passing the values in constructor of that class. 
      // EdgeInsets.all(value) : margin in all directions. and value taken as double data type
      // EdgeInsets.only() : tagert specific direction 
      margin: EdgeInsets.all(10),
    );
  }
}

// difference between EdgeInsets.all() and EdgeInsets.all(10)
// EdgeInsets: its a class which has multiple constructors to help passing different types of values.thus, creting objects in different varients and this we can see by puting the "." after EdgeInsets(class name) 
