class Person {
  String? surname;
  String name;
  String cityOfOrigin;
  int age;
  int height;

  Person({
    required this.name,
    this.surname,
    required this.cityOfOrigin,
    required this.age,
    required this.height,
  });
}