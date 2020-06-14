import 'package:flutter/cupertino.dart';

/////////////////////////////////////////////////////////
////////////////2.12. Class Constructors & Named Arguments 
/////////////////////////////////////////////////////////

// // return MaterialApp(home: Text('Hello to flutter'));
// // 'MaterialApp' and 'Text' are classes and not functions and in these classes we are passing the arguments.

// // 1. positional aguments

// class Person {
//   String name;
//   int age;

//   // creating constructor. in dart constructure is the class name. Constructor is method which gets executed whenever the objcet is craeted for the class. As it is a method, it can accepts areguments
//   Person(String inputName, int age) {
//     name = inputName;
//     // this.age : reffering to class variable
//     this.age = age;
//   }
// }
// void main() {
// //  passing the values 
//   var p = Person('Max', 20);
//   var p1 = Person('Bob', 30);
// //  var p1 = Person(30, 'Alex'); //Error: we are passing positional agruments so we have to pass values in order ie first the value of type String and then the value of type integer.
// print(p.name);
// print(p1.name);
// }

////////////////////////////////////////////////////////////////////////////

// // 2. named arguments

// class Person {
//   String name;
//   int age;
//   // wrapping the arguments in "{}" curly brackets makes the argument optional. 
//   Person({String inputName, int age}) {
//     name = inputName;
//     this.age = age;
//   }
// }
// void main() {
//   // to pass the named arguments, we need to pass as key: value pair . 
//   var p = Person(inputName:'Max', age: 20);
//   var p1 = Person(inputName: 'Bob', age: 30);
//   // thus, order of passing values doesnt matter 
//   var p2 = Person(age: 30, inputName: 'Alex');
//   print(p.name);
//   print(p1.name);
//   print(p2.name);
// }

// // why to use named arguments?
// // it is useful for the function which taks lots of arguments and if use normal postional agruments tehn we have to rember which type of value will be places at which argument number.


/////////////////////////////////////////////////////////////////////////////

// // 3.

// class Person {
//   String name;
//   int age;
//   // we can even pass the default values if the value is not supplied while creating the object. thus, like this our code will not break
//   // but if we dont want put some default value and need a value compulasary while we call the function. at that time '@required' keyword will be used before the datatype of the arg  
//   // '@required' : iif we dont provide the inputName value while creating the object fro the class, we will get an error
//   Person({@required String inputName, int age = 30}) {
//     name = inputName;
//     this.age = age;
//   }
// }
// void main() {
//   var p = Person(inputName:'Max', age: 20);
//   var p1 = Person(inputName: 'Bob');
//   var p2 = Person(age: 30,inputName: 'Alex');
//   // var p3 = Person(age: 30); //Error.. inputName value is not defined. 
//   print(p.name);
//   print(p1.name);
//   print(p1.age);
//   print(p2.name);
// }

// // NOTE: @required is not buildin feature of Dart, but its a feature of flutter and hence it will be used in flutter apps.


////////////////////////////////////////////////////////////////////////

// 4.

// if we want to store the values which are passed in constructor in the varaiables which are declared. we can do in two ways:
class Person {
  String name;
  int age;
  // 1 way
  // Person({String inputName, int age = 30}) {
  //   name = inputName;
  //   this.age = age;
  // }

  // 2. way
  Person({@required String this.name, int this.age = 30});
}
void main() {
  // passing values for 1way
  // var p = Person(inputName:'Max', age: 20);
  // var p1 = Person(inputName: 'Bob');
  // var p2 = Person(age: 30,inputName: 'Alex');

  // passing values for 2way
  // here we have to make sure that key name should same as that of varaiable declared in the class
  // changing 'inputName' -> 'name'
  var p = Person(name:'Max', age: 20);
  var p1 = Person(name: 'Bob');
  var p2 = Person(age: 30,name: 'Alex');
  print(p.name);
  print(p1.name);
  print(p1.age);
  print(p2.name);
}



///////////////////////////////////////////////////////////////////////
////////////////    2.7. More Dart Basics 
//////////////////////////////////////////////////////////////////////

// // 5.
// double addNumber(int num1, double num2) {
//   print(num1 + num2);
//   return num1 + num2;
// }

// void main() {
//   // declaring a varaiable
//   var funResult;
//   // inilizing the variable
//   funResult = addNumber(10, 20);
//   print(funResult);

//   // but if we want to be more specific on what type of data varaiable should hold, specify the data type
//   double funResult1 = addNumber(10, .5);
//   print(funResult1);

//   // data type of string : "String" not 'string'
//   String name = 'Bob';
// }

///////////////////////////////////////////////////////////
// // 6.
// // dart is object oriented programing
// // class defines the blueprint for objects

// // class <className> {
// //   // code
// //   // className is capatilized.
// //   //  PascalCase is a naming convention in which the first letter of each word in a compound word is capitalized.
// // }


// class Person {
//   // varaiable inside class are known as properties.
//   String name = 'Max';
//   int age = 20;
// }

// void main() {
//   // creating the instance of the class
//   // var <varName> = <className>();
//   var p = Person();
//   // in 'Dart 2'(2nd version of dart) : no need to call 'new' keyword while creating the object aas we do in other prog. languages
//   // var p1 = new Person(); // Not required

//   // using the instance of the class
//   print(p);
//   // accessing teh class properties
//   print(p.name);
//   print(p.age); 
  

//   // creating other instances of the class
//   var p2 = Person();
//   // modifying the properties of the class for particular instances.
//   p2.name = 'Bob';
//   print('p2');
//   print(p2.name);
//   print(p2.age);
// }

////////////////////////////////////////////////////////////////////////
///////////// 2.6. Dart Basics
///////////////////////////////////////////////////////////////////////


// // 1.
// // dart is types language which simply means that everything in dart has a type.

// void main() {
//   for(int i = 0; i < 5; i++) {
//     print('Hello ${i + 1}');
//   }
// }


// // main() is special function
// // everything in dart is an object

///////////////////////////////////////////////////////////
// // 2.
// // function body
// // if we dont know what data type value will be retured by the function, we will not specify.
// addNumber(num1, num2) {
//   print(num1 + num2);
// }

// void main() {
//   // function call
//   addNumber(10, 20);
// }

///////////////////////////////////////////////////////////
// // 3.

// // we can restrict the user pass the specific data tpe values
// void addNumber(int num1, int num2) {
//   print(num1 + num2);
// }

// void main() {
//   // function call
//   addNumber(10, 20);
//   // print(addNumber(10, 20)); // Error
//   // addNumber(10, 20.6); //Error
// }


//////////////////////////////////////////////////////////
// //  4.

// // changing void -> double as we are return the value
// double addNumber(int num1, double num2) {
//   print(num1 + num2);
//   return num1 + num2;
// }

// void main() {
//   addNumber(10, 20);
//   print(addNumber(10, 0.8));
// }
