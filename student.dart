import 'dart-intro/person.dart';

class Student extends Person {
  int batch, level;
  String _secretKey = "01";

  Student(
    String name,
    String cityOfOrigin,
    int age,
    int height,
    this.batch,
    this.level,
  ) : super(name, cityOfOrigin, age, height);
  
  String get secretKey => _secretKey;
}
