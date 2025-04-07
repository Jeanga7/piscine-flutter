class Person {
  String? surname;
  String name, cityOfOrigin;
  int age, height;

  Person(
    this.name,
    this.cityOfOrigin,
    this.age,
    this.height, {
    this.surname,
  });
}