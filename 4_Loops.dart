import 'dart:io';

void main() {
  // For Loop
  var num = 5;
  for (var i = num; i >= 1; i--) {
    stdout.write("$i, ");
  }
  print("");

  //For In Loop
  var names = ["John", "Tina", "Steeve"];
  for (var name in names) {
    stdout.write("$name, ");
  }

  // While Loop
  while (num >= 1) {
    print(num);
    num--;
  }
}
