import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    // rn our app looking weird because as 'MaterialApp' doesnt provide default stlying and we know we that flutter controls all the pixels of our app.
    // Scaffold : its a widget in material.dart file.
    // it has a job for creating base page design for app. thus it gives basic design and structure and color schema gives UI for a regular app
    // it also has couple of named arguments
    // ctrl + space : autocompletion within a widget to see which all named argumenst we can use
    return MaterialApp(
      home: Scaffold(
        // in our app we can have appbar and then the body
        // "{PreferredSizeWidget appBar}" : its a special kind of widget. thus either we can create our own appBar or there is inbuild 'AppBar' widget which we can use.
        // AppBar : it again takes configration/ named agruments
        // title: its a named argument which again take a widget
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Text('Hello Flutter'),
      ),
    );
  }
}
// note : always add comma after the closing bracket as vscode can indent the code in better way. format teh code ctrl + alt + r