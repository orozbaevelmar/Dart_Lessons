void main() {
  Person p1 = Person();
  p1.showData();

  //Add addData
  p1.addData("Mary", "Female", 29);
  p1.showData();
}

class Person {
  String? name, sex;
  int? age;

  // Method
  void addData(String name, sex, int age) {
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
