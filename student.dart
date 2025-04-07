import 'dart-intro/person.dart';

class Student extends Person {
  int batch, level;
  String _secretKey = "01";

  Student({
    required String name,
    required String cityOfOrigin,
    required int age,
    required int height,
    required this.batch,
    required this.level,
  }) : super(name: name, cityOfOrigin: cityOfOrigin, age: age, height: height);
  
  String get secretKey => _secretKey;
}
