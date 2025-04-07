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
  }) : super(name, cityOfOrigin, age, height);
  
  String get secretKey => _secretKey;
}
