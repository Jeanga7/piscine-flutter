class Person {
  String? surname;
  String name, cityOfOrigin;
  int age, height;

  Person({
    required this.name,
    required this.cityOfOrigin,
    required this.age,
    required this.height,
    this.surname,
  });
}

