import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    // implementing list of string data. grouping all the data into one varaiable
    var questions = [
      // "\'" : "\" is escape sequnce character
      'What\'s the use of JavaScipt?',
      'Which programming language is used in web development?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        // there is always one body and so, within body there will be only one widget. thus, we cant have 2 text widgets with our body
        // body: Text('Hello Flutter'), Text('Hey') //Error

        // thus, we need to warp our widgets into one invisble widget
        // column widget : if we need widgets one below the another
        // row widget : if we need widgets beside each other
        // both these widgets takes children as named arg.
        // children: <Widget>[] :
        // [] : its a list data type, its a group of data
        // <Widget>  : its called a generic type, it a annotation to tell the type of the list.
        // thus, it tell dart that it will hold the list of widgets
        body: Column(
          children: <Widget>[
            Text('The question'),
            // onPress : itsa function.
            // null : it means nothing, its not a data type. (void: also means nothing but its a data type)
            RaisedButton(
              onPressed: null,
              child: Text('Answer1'),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('Answer2'),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('Answer3'),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('Answer4'),
            ),
            // "onPressed: null" : buttons are disabled
          ],
        ),
      ),
    );
  }
}
