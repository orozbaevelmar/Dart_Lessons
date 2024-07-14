void main() {
  // Maps! Key/Value Pairs
  var toppings = {"John": "Pepperoni", "Mary": "Cheese"};
  print(toppings);
  print(toppings["John"]);

  // Show Values
  print(toppings.values);

  // Show Keys
  print(toppings.keys);

  // Show length
  print(toppings.length);

  // Add Something
  toppings["Tim"] = "Sausage";
  print(toppings);

  // Add many things
  toppings.addAll({"Tina": "Bacon", "Steve": "Supreme"});
  print(toppings);

  // Remove something
  toppings.remove("Steve");
  print(toppings);

  // Remove Eveything
  toppings.clear();
  print("After Clear:   $toppings");
}
