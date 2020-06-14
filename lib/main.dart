import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // we want question list index automatcally get updated when button is pressed. this function in written outside of build method
  // this is because build method gets executed whenever something is changed in the app. and hence everything is reseted and rendered again. and we dont want index of question should again reseted to 0, once the answer button is cliecked.
  // thus, add the functionoutside of build which will be not reseted even if something is changed in app
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext ctx) {
    var questions = [
      'What\'s the use of JavaScipt?',
      'Which programming language is used in web development?',
    ];

    // void answerQuestion() {
    //   print('Answer choosen!!!');
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            // accesing the question from list
            // 1st way
            // Text(
            //   // "0" is the index and it has to integer. Index of list starts from zero
            //   questions.elementAt(0),
            // ),
            // 2nd way
            Text(
              questions[0],
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('Answer1'),
            ),
            RaisedButton(
              // onPressed: () => print('Answer 2 pressed'),
              onPressed: answerQuestion,
              child: Text('Answer 2'),
            ),
            RaisedButton(
              // onPressed: () {
              //   print('Answer 3 pressed!!!');
              // },
              onPressed: answerQuestion,
              child: Text('Answer3'),
            ),
          ],
        ),
      ),
    );
  }
}
