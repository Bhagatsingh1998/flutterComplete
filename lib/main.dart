import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    var questions = [
      'What\'s the use of JavaScipt?',
      'Which programming language is used in web development?',
    ];

    // creating the function for onPressed
    void answerQuestion() {
      print('Answer choosen!!!');
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text('The question'),
            // to make button enable, we have to link onPressed with a function. thus function can be defined in 2 ways
              // outside of class -> wrong
              // inside the class and this is because all the compoents of widget should go in same class so that widget is stand alone unit
            // onPressed : it takes a function with no arguments and returns nothing. (hint: hover over onPressed)
            RaisedButton(
              // linking function
              // onPressed: answerQuestion(), //Error
              // error : "This expression has a type of 'void' so its value can't be used." this is becasue
              // we are executing answerQuestion() when button is pressed.
              // wkt, dart parses the file from top to bottom, left to right. while parsing it encounters answerQuestion() and executes this function before button is pressed and it passes nothing as the value to the onPressed
              // as the button is pressed, onPressed expects an function but as function is already executes its having the value(nothing)
              // eg: tv and remote
              // hece, we will pass the name of the function only
              onPressed: answerQuestion,
              child: Text('Answer1'),
            ),
            RaisedButton(
              // above we have use named function ie, we have defined a function(head(fun name)+body)
              // we can use anonymous function:
              // 1 way
              onPressed: () => print('Answer 2 pressed'),
              child: Text('Answer 2'),
            ),
            RaisedButton(
              // we can use anonymous function:
              // 2nd way
              onPressed: () {
                print('Answer 3 pressed!!!');
              },
              child: Text('Answer3'),
            ),
          ],
        ),
      ),
    );
  }
}
