import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // return MyAppState();
    // 
    return _MyAppState();
  }
}

// if we want MyAppState class should not be used from other files ie only MyApp class can access it as both classes are in same file.
// to indicate this, we add "_" underscore before the name(class name, variable name or function name). its a special syntax in dart which converts public class into private class 
// class MyAppState extends State<MyApp> {
class _MyAppState extends State<MyApp> {
  // making variable private
  // var questionIndex = 0;
  var _questionIndex = 0;
  // making changes at other places

  // making method private
  // void answerQuestion() {
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext ctx) {
    var questions = [
      'What\'s the use of JavaScipt?',
      'Which programming language is used in web development?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text(
              questions[_questionIndex],
            ),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text('Answer1'),
            ),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text('Answer3'),
            ),
          ],
        ),
      ),
    );
  }
}

