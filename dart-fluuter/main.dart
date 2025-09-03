// Imports
// import 'dart:core';=> default package
import 'dart:core'; 
import 'dart:io';//=> std input and output
// Importing core libraries
// import 'dart:math';
// // Importing libraries from external packages
// import 'package:test/test.dart';
// // Importing files
// import 'path/to/my_other_file.dart';

class Spacecraft {

  String name;
  final String? test; //u can intialize it at run time from constructor
  // const String test2;// const variable must be initialized at declaration time
  DateTime? launchDate;
   int? get launchYear => launchDate?.year;// => int or null 
  //  default constructor
  //  Spacecraft ([name = "Unnamed Spacecraft", launchDate]) {
  //    this.name = name;
  //    this.launchDate = launchDate;
  //  }
  //  Spacecraft ([this.name = "Unnamed Spacecraft", this.launchDate]) {
  //  }
   // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate,[this.test=null]);//this.name=name , this.launchDate=launchDate;
  //  {
  //   // Initialization code goes here.
  // }
  // named constructor chaining to default constructor
    Spacecraft.unlaunched(String name) : this(name, null);

    String toString() {
  //   return 'vihecle: $name, type: $type, launchYear: ${launchYear ?? "Unknown"}';
  // }
}
}
class vihecle extends Spacecraft {
  String? type;
  vihecle(String name, DateTime? launchDate, this.type) : super(name, launchDate);
  
//     String toString() {
//   //   return 'vihecle: $name, type: $type, launchYear: ${launchYear ?? "Unknown"}';
//   // super.toString(); //to calll parent class method
//   // }
// }
  // @override
  // String toString() {
  //   return 'vihecle: $name, type: $type, launchYear: ${launchYear ?? "Unknown"}';
  // }

}
void main() {
  
  // static Typed Language 
  //  compiled Langauge 
  // Aot => Ahead of Time => production
  // JIT just in time  => dev on the fly 
  // stdin.readLineSync(); // to read input from the console import 'dart:io';//=> std input and output
  // comments 
  // // /* */ """ Documentation  """
  //evrey thing in dart is an object


Spacecraft newobj = Spacecraft.unlaunched("Voyager I");

print (newobj.name);
print (newobj.launchYear);


// variables
// types  int - double - string- bool -null 
// var-dynamic   => type infrence declare the type based on value also in run time 
// var cannot change the type after intilization 
// dynamic u can change the type
// const - final 
//   var name = 'Voyager I';
// var year = 1977;
// var antennaDiameter = 3.7;
// var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
// var image = {
//   'tags': ['saturn'],
//   'url': '//path/to/saturn.jpg',
// };
// List name = ["value","value"];
// List name = const ["value","value"]; fixed array
// const List name = [1,2,3,4,5];
// print(name);
// List name2 = name; // reference to the same object => shallow copy 
// to make deep copy use spread operator 
// List name2 = [...name]; // spread operator differant references same values
// Set unique list values  collection of items 
// Set name = {"value1","value2"}
// Set name = <Strings>{"value1","value2"}
// Set <Strings> name = {"value1","value2"}
// Set name = {} => empty set 
// Map => collection of key value pairs 
// Map name = {1:"value1",2:"value2"}
// Map name = {"key1":"value1","key2":"value2"}
// Map<String, String> name = {"key1":"value1","key2":"value2"}
// var name = map(); => emty map 
// name[1]



// null Aware Operator
// ?. //if not null || give null instead of error 
// ?? // default value  if the value is null 
// number = value ?? 2; as default value 
// ??= // if null then assign the value after it to the variable

// Explict converting
  // 100.toString()
  // 100.toStringAsFixed(2)
  // 100.toDouble();
  // 100.toInt();
  // int.parse('100');
  // .runtimeType
  //  if (x is int)



// #Control flow statements
// for (final object in flybyObjects) {
//   // object.values
//   // object.keys
//   print(object);
// }
// break continue 
// for (int month = 1; month <= 12; month++) {
//   print(month);
// }
// do{}
// while (year < 2016) {
//   year += 1;
// }
// list.forEach`((object) {
//   print(object);
// }); 
// name(element){
// print(element)};
// list.forEach(name); => as anonymys function
// list.forEach( element=> print(element)); => arrow Funvtion
// if (year >= 2001) {
//   print('21st century');
// } else if (year >= 1901) {
//   print('20th century');
// }
// switch (variable) {
//   case value: => if true 
//     print('21st century');
//     break;
//   case 1901:
//     print('20th century');
//     break;
//   default:
//     print('Unknown century'); => if no match
// }

// Functions
// type fibonacci(int n) {
//   if (n == 0 || n == 1) return n;
//   return fibonacci(n - 1) + fibonacci(n - 2);
// }
// var result = fibonacci(20);
// A shorthand => (arrow) syntax is handy for functions that contain a single statement. This syntax is 
//especially useful when passing anonymous functions as arguments:
// flybyObjects.where((name) => name.contains('turn')) => iterable .toList() to convert it 
// .forEach(print);
// defiened function
// name(element){
// print(element)};
// list.forEach(name); => as anonymys function
// list.forEach( element=> print(element)); => arrow Funvtion
// Optional parameters
// void printMessage(String message, [String? sender]) {
//   print('Message: $message');
//   if (sender != null) {
//     print('Sender: $sender');
//   }
// }
// Named parameters
// void printMessage(String message, {String? sender}) {
//   print('Message: $message');
//   if (sender != null) {
//     print('Sender: $sender');
//   }
// }
// printMessage(sender:"asdasd" )
  // print('Welcome to Dart & Flutter!');
  // print('This is the entry point of your application.');

// try {
//     // Create an instance of the spacecraft class
//     vihecle voyager = vihecle("Voyager I", DateTime(1977, 9, 5), "Spacecraft");
//     // Print the spacecraft details
//     print(voyager);
//   }
//   on FormatException catch (e) {
//     print('Format error: $e');}  
//    catch (e) {
//     print('An error occurred: $e');
//   }
//   finally{

//   }
  // Example of using a constant variable
  const String appName = 'Dart & Flutter App';
  print('App Name: $appName');

}