import 'package:flutter/material.dart';

class ChooseCategoryTitle extends StatelessWidget {
  const ChooseCategoryTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 32),
      child: Center(
        child: Text(
          'Choisissez une catégorie',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
