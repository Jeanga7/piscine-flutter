import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    final score = arguments['score'] as int;
    final total = arguments['total'] as int;

    final percentage = (score / total) * 100;
    String message;
    Color messageColor;

    if (percentage >= 70) {
      message = "Bravo !";
      messageColor = Colors.green;
    } else {
      message = "Continuez !";
      messageColor = Colors.orange;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Résultat"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Text(
                        message,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: messageColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Votre score :",
                        style: TextStyle(fontSize: 24),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "$score / $total",
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),

              ElevatedButton(
                onPressed:
                    () => Navigator.popUntil(context, ModalRoute.withName('/')),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 12,
                  ),
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Retour à l'accueil",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
