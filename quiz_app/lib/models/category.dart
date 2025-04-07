import 'question.dart';

class Category {
  final String name, imageUrl;
  final List<Question> questions;

  Category(this.name, this.imageUrl, this.questions);
}
