void main() {
  // Create Person Class
  Person p1 = Person("John", "Male", 44);
  //p1.showData();
  print(p1.name);
  print(p1.sex);
  print(p1.age);

  // Create a second person
  Person p2 = Person("Mary", "Female", 29);
  p2.showData();
}

class Person {
  String? name, sex;
  int? age;

  // Constructors
  Person(String name, sex, int age) {
    this.name = name;
    this.sex = sex;
    this.age = age;
  }

  // Method
  void showData() {
    print('Name = $name');
    print('Sex = $sex');
    print('Age = $age');

    print("This person's name is $name, they are $sex, and $age years old");
  }
}
