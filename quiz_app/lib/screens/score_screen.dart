import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    final score = arguments['score'] as int;
    final total = arguments['total'] as int;

    return Scaffold(
      appBar: AppBar(title: Text("Résultat")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Votre score :", style: TextStyle(fontSize: 24)),
            Text(
              "$score / $total",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed:
                  () => Navigator.popUntil(context, ModalRoute.withName('/')),
              child: Text("Retour à l'accueil"),
            ),
          ],
        ),
      ),
    );
  }
}
