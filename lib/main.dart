// packages import
import 'package:flutter/material.dart';
// own file import
// importing the question widget, use realtive path
import './question.dart';
// thus, whatever is there in questions file will be avaiable in this class unless anything is marked with underscore

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // return MyAppState();
    // 
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

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
            // instaed of displaying the question, passingthe question into question widget
            // Text(
            //   questions[_questionIndex],
            // ),
            Question(questions[_questionIndex]),
            // this practice will be helpful in complex app 
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

