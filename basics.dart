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

/////////////////////////////////////////////////////////
////////////////2.7. More Dart Basics ///////////////////
/////////////////////////////////////////////////////////

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
// 6.
// dart is object oriented programing
// class defines the blueprint for objects

// class <className> {
//   // code
//   // className is capatilized.
//   //  PascalCase is a naming convention in which the first letter of each word in a compound word is capitalized.
// }


class Person {
  // varaiable inside class are known as properties.
  String name = 'Max';
  int age = 20;
}

void main() {
  // creating the instance of the class
  // var <varName> = <className>();
  var p = Person();
  // in 'Dart 2'(2nd version of dart) : no need to call 'new' keyword while creating the object aas we do in other prog. languages
  // var p1 = new Person(); // Not required

  // using the instance of the class
  print(p);
  // accessing teh class properties
  print(p.name);
  print(p.age); 
  

  // creating other instances of the class
  var p2 = Person();
  // modifying the properties of the class for particular instances.
  p2.name = 'Bob';
  print('p2');
  print(p2.name);
  print(p2.age);
}
