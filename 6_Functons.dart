void main() {
  // Functions

  myFunc(String name1, {name2}) {
    // print("Hello Functions";)
    return "Hello $name1 and $name2";
  }

  var thing = myFunc("ABC", name2: "Bill");
  print(thing);
}
