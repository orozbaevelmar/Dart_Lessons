import 'dart:io';

void main() {
  // User Input Type Conversion
  print("Enter Your Name: ");

  //Get User Input
  String? name = stdin.readLineSync();

  print('Your name is : $name');

  // left-click of mouse, click on "Open in Integrated Terminal"
  // Write dart (name of File).dart
  // FOR EX.  dart 9_Input.dart

  print("Enter A Number: ");
  var nummy = stdin.readLineSync();
  var nummy2 = int.parse(nummy ?? '0') + 10;
  print("$nummy + 10 = $nummy2");
  
}
