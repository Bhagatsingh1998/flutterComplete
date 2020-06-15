// shortcut: press 'st' and editor will give options.

// importing
import 'package:flutter/material.dart';

// giving name to class
class Question extends StatelessWidget {
  // to display the question in Text widget, we can add the questions list here but along with that we have move the questionIndex logic and so on. and this will be tedious.
  // 2 way : we knoe we can pass the data to class thriugh constructor.

  // var questionText;

  // to be more specific, 
  // String questionText;
  
  // Warrning: "This class (or a class that this class inherits from) is marked as '@immutable', but one or more of its instance fields aren't final: "
  // its a good practice to make the property 'final' which means that once the inilization is done for this property, value of it should not change
  final String questionText; 

  // its a postional argument as we are not wrapping agr within curly braces. 
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    
    return Text(questionText);
  }
}