// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   var questionIndex = 0;

//   void answerQuestion() {
//     questionIndex = questionIndex + 1;
//     print(questionIndex);
//   }

//   @override
//   Widget build(BuildContext ctx) {
//     var questions = [
//       'What\'s the use of JavaScipt?',
//       'Which programming language is used in web development?',
//     ];

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My First App'),
//         ),
//         body: Column(
//           children: <Widget>[
//             Text(
//               questions[0],
//             ),
//             RaisedButton(
//               onPressed: answerQuestion,
//               child: Text('Answer1'),
//             ),
//             RaisedButton(
//               onPressed: answerQuestion,
//               child: Text('Answer 2'),
//             ),
//             RaisedButton(
//               onPressed: answerQuestion,
//               child: Text('Answer3'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// changing stateless to stateful


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// 'StatefulWidget' :it is also present inside material.dart.
// StatefulWidget is not one class but a combination of 2 classes 
// 1st inhertance
class MyApp extends StatefulWidget {
  // we will put override as 'createState' is the method which is already in 'StatefulWidget'. 
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

// 2nd inhertance
// State : it is also a class present from material.dart. its a generic class.
class MyAppState extends State<MyApp> {

  var questionIndex = 0;

  void answerQuestion() {
    // it takes a function which no args and it will warp the code which is changing the state.
    setState(() {
      questionIndex = questionIndex + 1;
    });
    // now once the index reaches 2, we will get an error as our list is having last index as 1.
    print(questionIndex);
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
              // making the index dynamic
              questions[questionIndex],
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('Answer1'),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('Answer3'),
            ),
          ],
        ),
      ),
    );
  }
}

