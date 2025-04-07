import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/choose_category_title.dart';
import 'package:quiz_app/widgets/categories_grid.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quiz App',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [ChooseCategoryTitle(), CategoriesGrid()],
          ),
        ),
      ),
    );
  }
}
