class Person {
  String name, surname, cityOfOrigin;
  int age, height;

  Person({
    required this.name,
    this.surname = '',
    required this.cityOfOrigin,
    required this.age,
    required this.height,
  });

}
