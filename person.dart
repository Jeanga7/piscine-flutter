class Person {
  String? surname;
  String name;
  String cityOfOrigin;
  int age;
  int height;

  Person(
    this.name,
    this.cityOfOrigin,
    this.age,
    this.height,
    [this.surname],
  );
}

