import 'package:flutter/material.dart';
import 'package:quiz_app/models/category.dart';
import 'package:quiz_app/screens/quiz_screen.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailedView(category: category),
          ),
        );
      },
      child: Card(
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                category.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                color: Colors.black.withValues(alpha: .6),
                child: Center(
                  child: Text(
                    category.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
