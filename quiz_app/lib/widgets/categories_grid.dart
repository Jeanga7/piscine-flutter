import 'package:flutter/material.dart';
import 'package:quiz_app/models/category_data.dart';
import 'package:quiz_app/widgets/category_card.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: categories.map((cat) {
        return CategoryCard(category: cat);
      }).toList(),
    );
  }
}
