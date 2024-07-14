void main() {
  // Lists
  var myList = [1, 2, 3];
  print(myList);
  print(myList[0]);
  print("");

  // Change an item
  myList[0] = 41;
  print(myList);

  // create an empty List
  var emptyList = [];
  print("empty List :  $emptyList");

  // Add to empty List
  emptyList.add(41);
  print(emptyList);

  // Add multiple to empty List
  emptyList.addAll([1, 2, 3, 4]);
  print(emptyList);

  // Insert at specific position (position, item);
  myList.insert(3, 900);
  print(myList);

  //  Insertmany
  myList.insertAll(1, [99, 98, 97]);
  print(myList);

  // Mixed Lists
  var mixedList = [123, 2, 3, "John", "Bob"];
  print(mixedList);

  // Remove From List
  mixedList.remove("John");
  print(mixedList);

  // Remove from specific location(When in List two "JONES")
  print("");
  mixedList.add("John");
  mixedList.add("Jonh");
  print(mixedList);
  mixedList.removeAt(4);
  print(mixedList);
}
