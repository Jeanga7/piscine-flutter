import 'package:flutter/material.dart';
import 'package:quiz_app/models/category_data.dart';
import 'quiz_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select a Category')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children:
            categories.map((cat) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => QuizScreen(category: cat),
                    ),
                  ); // :contentReference[oaicite:1]{index=1}
                },
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(cat.imageUrl, fit: BoxFit.cover),
                    ),
                    SizedBox(height: 8),
                    Text(cat.name, style: TextStyle(fontSize: 18)),
                  ],
                ),
              );
            }).toList(),
      ),
    );
  }
}
